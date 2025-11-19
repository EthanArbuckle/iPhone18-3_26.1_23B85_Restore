void CellularPlanListModelLocal::setAssignedSimLabels_sync(std::__shared_weak_count **this, uint64_t **a2)
{
  v3 = (this + 37);
  if (*(a2 + 24) == 1 && v3 != a2)
  {
    sub_1001707A0(v3, *a2, a2 + 1);
  }

  CellularPlanListModelLocal::persistMultiSimUserPreferences_sync(this);
  CellularPlanListModelLocal::notifyLocalPlanInfoUpdate(this);
  v5 = this[10];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = this[9];
      if (v8)
      {
        (v8->__vftable[1].__on_zero_shared)(v8);
      }

      sub_100004A34(v7);
    }
  }
}

void CellularPlanListModelLocal::persistMultiSimUserPreferences_sync(CellularPlanListModelLocal *this)
{
  v2 = (*(**(this + 7) + 40))(*(this + 7));
  if ((v2 & 1) == 0 && *(this + 80) >= 2u)
  {
    v28 = 0;
    v29 = 0;
    v27 = &v28;
    v3 = *(this + 98);
    if (v3 != (this + 792))
    {
      while ((CellularPlanListModelLocal::hasIccid_sync(v2, v3 + 32, this + 18) & 1) != 0)
      {
        memset(&v21, 0, sizeof(v21));
        if (*(v3 + 55) < 0)
        {
          sub_100005F2C(__p, *(v3 + 4), *(v3 + 5));
        }

        else
        {
          *__p = *(v3 + 2);
          v17 = *(v3 + 6);
        }

        v4 = sub_100007A6C(this + 296, __p);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        if ((this + 304) != v4)
        {
          std::string::operator=(&v21, (v4 + 136));
        }

        v2 = sub_100174FC8(&v27, v3 + 4);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v5 = *(v3 + 1);
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
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
        if (v6 == (this + 792))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_53;
    }

LABEL_20:
    (*(**(this + 13) + 200))(&v21);
    if (v26 == 1 && v21.__r_.__value_.__r.__words[2] > v29)
    {
      v8 = v21.__r_.__value_.__r.__words[0];
      if (v21.__r_.__value_.__l.__data_ == &v21.__r_.__value_.__r.__words[1])
      {
LABEL_47:
        if (v26 == 1)
        {
          if (v25 < 0)
          {
            operator delete(v24);
          }

          if (v23 < 0)
          {
            operator delete(v22);
          }

          sub_1000DD0AC(&v21, v21.__r_.__value_.__l.__size_);
        }

LABEL_53:
        sub_1000DD0AC(&v27, v28);
        return;
      }

      while (1)
      {
        if (*(v8 + 55) < 0)
        {
          sub_100005F2C(__p, *(v8 + 32), *(v8 + 40));
        }

        else
        {
          *__p = *(v8 + 32);
          v17 = *(v8 + 48);
        }

        v9 = sub_10016FA58(this + 296, __p);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v9)
        {
          break;
        }

        v10 = *(v8 + 8);
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = v10->__r_.__value_.__r.__words[0];
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = *(v8 + 16);
            v7 = v11->__r_.__value_.__r.__words[0] == v8;
            v8 = v11;
          }

          while (!v7);
        }

        v8 = v11;
        if (v11 == &v21.__r_.__value_.__r.__words[1])
        {
          goto LABEL_47;
        }
      }
    }

    __p[1] = 0;
    v17 = 0;
    __p[0] = &__p[1];
    *v18 = 0u;
    *v19 = 0u;
    v20 = 0u;
    sub_1001732FC(__p, v27, &v28);
    std::string::operator=(v18, this + 36);
    std::string::operator=(&v19[1], (this + 832));
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064AB14(__p, v14);
      v13 = v15 >= 0 ? v14 : v14[0];
      *buf = 136315138;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Persist multi SIM preferences: %s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    (*(**(this + 13) + 192))(*(this + 13), __p);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      operator delete(v18[0]);
    }

    sub_1000DD0AC(__p, __p[1]);
    goto LABEL_47;
  }
}

void sub_10014E3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10014C84C(&__p);
  sub_1001510E4(&a25);
  sub_1000DD0AC(v30 - 120, *(v30 - 112));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::notifyLocalPlanInfoUpdate(CellularPlanListModelLocal *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 9);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanListModelLocal::calculateLaunchSimSetupForLabels_sync(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  v88 = 0;
  v90 = 0u;
  v89 = &v90;
  v2 = *(this + 18);
  v3 = *(this + 19);
  if (v2 == v3)
  {
LABEL_113:
    v41 = v88;
    goto LABEL_116;
  }

  v79 = 0;
  v80 = this + 304;
  v5 = (a2 + 16);
  while (1)
  {
    (***(this + 7))(buf);
    *__p = *buf;
    memset(buf, 0, sizeof(buf));
    if (!subscriber::isValidSimSlot())
    {
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_16;
    }

    isSimReady = subscriber::isSimReady();
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (isSimReady)
    {
      v7 = (v2 + 72);
      if (*(v2 + 95) < 0)
      {
        v8 = *(v2 + 80);
        if (!v8)
        {
LABEL_25:
          v10 = *(this + 5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = subscriber::asString();
            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I empty iccid for %s", __p, 0xCu);
          }

          goto LABEL_16;
        }

        sub_100005F2C(__p, *v7, v8);
      }

      else
      {
        if (!*(v2 + 95))
        {
          goto LABEL_25;
        }

        *__p = *v7;
        v92[0] = *(v2 + 88);
      }

      v9 = sub_100007A6C(this + 296, __p);
      if (SHIBYTE(v92[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v80 == v9)
      {
        v40 = *(this + 5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v2 + 95) < 0)
          {
            v7 = *v7;
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v7;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I No label for (%s) - force wait update", __p, 0xCu);
        }

LABEL_109:
        LOBYTE(v88) = 0;
        goto LABEL_110;
      }

      if (*(v2 + 95) < 0)
      {
        sub_100005F2C(__dst, *(v2 + 72), *(v2 + 80));
      }

      else
      {
        *__dst = *v7;
        v87 = *(v2 + 88);
      }

      isBootstrapProfile_sync = CellularPlanListModelLocal::isBootstrapProfile_sync(this, __dst);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(__dst[0]);
      }

      if (isBootstrapProfile_sync)
      {
        goto LABEL_109;
      }

      if (CellularPlanListModelLocal::isOffloadSim(this, (v2 + 72)))
      {
        v45 = *(this + 5);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = (v2 + 72);
          if (*(v2 + 95) < 0)
          {
            v46 = *v7;
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Do not launch SIMSetup with offload sim present, marking [%s] as setup", __p, 0xCu);
        }

        (***(this + 7))(buf);
        ServiceMap = Registry::getServiceMap(*buf);
        v48 = ServiceMap;
        v50 = v49;
        if ((v49 & 0x8000000000000000) != 0)
        {
          v51 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
          v52 = 5381;
          do
          {
            v50 = v52;
            v53 = *v51++;
            v52 = (33 * v52) ^ v53;
          }

          while (v53);
        }

        std::mutex::lock(ServiceMap);
        __p[0] = v50;
        v54 = sub_100009510(&v48[1].__m_.__sig, __p);
        if (v54)
        {
          v56 = v54[3];
          v55 = v54[4];
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v48);
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v55);
            v57 = 0;
            goto LABEL_132;
          }
        }

        else
        {
          v56 = 0;
        }

        std::mutex::unlock(v48);
        v55 = 0;
        v57 = 1;
LABEL_132:
        if (*(v2 + 95) < 0)
        {
          sub_100005F2C(__p, *(v2 + 72), *(v2 + 80));
        }

        else
        {
          *__p = *v7;
          v92[0] = *(v2 + 88);
        }

        (*(*v56 + 248))(v56, __p, 1);
        if (SHIBYTE(v92[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        v78 = v5;
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v58 = *(this + 25);
        if (v58 != (this + 208))
        {
          while (2)
          {
            v59 = *(v2 + 95);
            if (v59 >= 0)
            {
              v60 = *(v2 + 95);
            }

            else
            {
              v60 = *(v2 + 80);
            }

            v61 = *(v58 + 79);
            v62 = v61;
            if ((v61 & 0x80u) != 0)
            {
              v61 = *(v58 + 8);
            }

            if (v60 == v61)
            {
              v63 = v59 >= 0 ? (v2 + 72) : *v7;
              v64 = v62 >= 0 ? v58 + 56 : *(v58 + 7);
              if (!memcmp(v63, v64, v60))
              {
                (***(this + 7))(buf);
                v65 = Registry::getServiceMap(*buf);
                v66 = v65;
                v67 = v49;
                if ((v49 & 0x8000000000000000) != 0)
                {
                  v68 = 5381;
                  v69 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
                  do
                  {
                    v67 = v68;
                    v70 = *v69++;
                    v68 = (33 * v68) ^ v70;
                  }

                  while (v70);
                }

                std::mutex::lock(v65);
                __p[0] = v67;
                v71 = sub_100009510(&v66[1].__m_.__sig, __p);
                if (v71)
                {
                  v73 = v71[3];
                  v72 = v71[4];
                  if (v72)
                  {
                    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::mutex::unlock(v66);
                    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v72);
                    v74 = 0;
                    goto LABEL_163;
                  }
                }

                else
                {
                  v73 = 0;
                }

                std::mutex::unlock(v66);
                v72 = 0;
                v74 = 1;
LABEL_163:
                if (*(v58 + 55) < 0)
                {
                  sub_100005F2C(__p, *(v58 + 4), *(v58 + 5));
                }

                else
                {
                  *__p = *(v58 + 2);
                  v92[0] = *(v58 + 6);
                }

                (*(*v73 + 248))(v73, __p, 1);
                if (SHIBYTE(v92[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                if ((v74 & 1) == 0)
                {
                  sub_100004A34(v72);
                }

                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }
              }
            }

            v75 = *(v58 + 1);
            if (v75)
            {
              do
              {
                v76 = v75;
                v75 = *v75;
              }

              while (v75);
            }

            else
            {
              do
              {
                v76 = *(v58 + 2);
                v18 = *v76 == v58;
                v58 = v76;
              }

              while (!v18);
            }

            v58 = v76;
            if (v76 == (this + 208))
            {
              break;
            }

            continue;
          }
        }

        *a2 = 0;
        *v78 = 0;
        v78[1] = 0;
        *(a2 + 8) = v78;
        goto LABEL_119;
      }

      if ((*(v9 + 128) & 1) == 0)
      {
        break;
      }
    }

LABEL_16:
    v2 += 168;
    if (v2 == v3)
    {
      goto LABEL_110;
    }
  }

  v13 = *(this + 18);
  v14 = *(this + 19);
  if (v13 != v14)
  {
    v15 = v13 + 168;
    do
    {
      isEsimCapable = subscriber::isEsimCapable();
      if (*(v15 - 104) == 5)
      {
        v17 = 0;
      }

      else
      {
        v17 = isEsimCapable;
      }

      if (v17)
      {
        break;
      }

      v18 = v15 == v14;
      v15 += 168;
    }

    while (!v18);
    if (v17)
    {
      if (CellularPlanListModelLocal::isMonitorModeIccid(this, v2 + 72))
      {
        goto LABEL_16;
      }

      v95 = 0u;
      *v96 = 0u;
      v93 = 0u;
      *v94 = 0u;
      *__p = 0u;
      *v92 = 0u;
      CellularPlanListModelLocal::getPhoneNumberForSlot_sync(this, *v2, __p);
      if ((v96[1] & 1) != 0 || CellularPlanListModelLocal::isDataOnlyPlan_sync(this, v2))
      {
        v19 = 0;
        v20 = 1;
      }

      else
      {
        v21 = *(this + 5);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I empty phone number for (%s)", buf, 0xCu);
        }

        v20 = 0;
        v19 = 2;
      }

      if (LOBYTE(v96[1]) == 1)
      {
        if (SHIBYTE(v95) < 0)
        {
          operator delete(v94[1]);
        }

        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92[1]);
        }

        if (SHIBYTE(v92[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((v20 & 1) == 0)
      {
LABEL_100:
        if (v19)
        {
          goto LABEL_103;
        }

        goto LABEL_16;
      }
    }
  }

  memset(buf, 0, sizeof(buf));
  v102 = 0;
  CellularPlanListModelLocal::getIccidIfSameCellularPlanDetected_sync(this, (v2 + 72), *v2, buf);
  v23 = HIBYTE(v102);
  if (v102 < 0)
  {
    v23 = *&buf[8];
  }

  if (v23)
  {
    *a2 = v88;
    v24 = v90;
    *(a2 + 8) = v89;
    *(a2 + 16) = v24;
    v25 = *(&v90 + 1);
    *(a2 + 24) = *(&v90 + 1);
    if (v25)
    {
      *(v24 + 16) = v5;
      v89 = &v90;
      v19 = 1;
      v90 = 0uLL;
    }

    else
    {
      *(a2 + 8) = v5;
      v19 = 1;
    }

    goto LABEL_99;
  }

  v26 = *(this + 5);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = (v2 + 72);
    if (*(v2 + 95) < 0)
    {
      v27 = *v7;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I plan [%s] is marked to launch setup", __p, 0xCu);
  }

  v28 = (v2 + 72);
  if (*(v2 + 95) < 0)
  {
    v28 = *v7;
  }

  __p[0] = v2;
  v29 = sub_100170BC0(&v89, v2);
  sub_100016890((v29 + 5), v28);
  v100 = 0;
  v98 = 0u;
  *v99 = 0u;
  *v96 = 0u;
  *v97 = 0u;
  *v94 = 0u;
  v95 = 0u;
  *v92 = 0u;
  v93 = 0u;
  *__p = 0u;
  (***(this + 7))(&v84);
  v30 = Registry::getServiceMap(v84);
  v31 = v30;
  if (v32 < 0)
  {
    v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
    v34 = 5381;
    do
    {
      v32 = v34;
      v35 = *v33++;
      v34 = (33 * v34) ^ v35;
    }

    while (v35);
  }

  std::mutex::lock(v30);
  v82[0] = v32;
  v36 = sub_100009510(&v31[1].__m_.__sig, v82);
  v77 = v5;
  if (!v36)
  {
    v37 = 0;
    goto LABEL_76;
  }

  v37 = v36[3];
  v38 = v36[4];
  if (!v38)
  {
LABEL_76:
    std::mutex::unlock(v31);
    v38 = 0;
    v39 = 1;
    goto LABEL_77;
  }

  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v31);
  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v38);
  v39 = 0;
LABEL_77:
  if (*(v2 + 95) < 0)
  {
    sub_100005F2C(v82, *(v2 + 72), *(v2 + 80));
  }

  else
  {
    *v82 = *v7;
    v83 = *(v2 + 88);
  }

  (*(*v37 + 192))(__p, v37, v82);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82[0]);
  }

  if ((v39 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  if (v85)
  {
    sub_100004A34(v85);
  }

  v5 = v77;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99[0]);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97[1]);
  }

  if (SHIBYTE(v97[0]) < 0)
  {
    operator delete(v96[0]);
  }

  if (SBYTE7(v95) < 0)
  {
    operator delete(v94[0]);
  }

  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92[1]);
  }

  if (SHIBYTE(v92[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = 0;
  ++v79;
LABEL_99:
  if ((SHIBYTE(v102) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(*buf);
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_103:
  if (v19 != 2)
  {
    goto LABEL_119;
  }

LABEL_110:
  if (v79 == 1)
  {
    v41 = 8;
  }

  else
  {
    if (v79 != 2)
    {
      goto LABEL_113;
    }

    v41 = 1;
  }

  LOBYTE(v88) = v41;
LABEL_116:
  *a2 = v41;
  v42 = v90;
  *(a2 + 8) = v89;
  *(a2 + 16) = v42;
  v43 = a2 + 16;
  v44 = *(&v90 + 1);
  *(a2 + 24) = *(&v90 + 1);
  if (v44)
  {
    *(v42 + 16) = v43;
    v89 = &v90;
    v90 = 0uLL;
  }

  else
  {
    *(a2 + 8) = v43;
  }

LABEL_119:
  sub_100077CD4(&v89, v90);
}

void sub_10014F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, char *a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_10014F8E0(&__p);
  sub_100077CD4(&a34, a35);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::calculateLaunchSimSetupForPreferences_sync(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 8) = a2 + 16;
  v4 = *(this + 18);
  v5 = *(this + 19);
  while (v4 != v5)
  {
    if (CellularPlanListModelLocal::isOffloadSim(this, (v4 + 72)))
    {
      v13 = *(this + 5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Do not launch SIMSetup for Preferences with offload sim present, return empty flow info", buf, 2u);
      }

      return;
    }

    v4 += 168;
  }

  v23 = 0;
  CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(this, v15);
  CellularPlanListModelLocal::getUserPreferencesBasedOnSourceDevice_sync(this, &v23 + 1, &v23, v15, buf);
  sub_100009970(v15, v15[1]);
  if ((v23 & 0x100) != 0)
  {
    if (v23)
    {
      if (v22 == 1)
      {
        CellularPlanListModelLocal::applySourceDeviceUserPreferences_sync(this, buf);
        v6 = *(this + 887);
        if (v6 < 0)
        {
          v6 = *(this + 109);
        }

        if (v6)
        {
          v7 = *(this + 10);
          if (v7)
          {
            v8 = std::__shared_weak_count::lock(v7);
            if (v8)
            {
              v9 = v8;
              v10 = *(this + 9);
              if (v10)
              {
                v11 = CellularPlanListModelLocal::calculateLegacySlot(this, this + 108);
                (*(*v10 + 32))(v10, v11, this + 864);
              }

              sub_100004A34(v9);
            }
          }
        }

        CellularPlanListModelLocal::notifyUpdateInstanceBasedPreferences_sync(this);
      }

      else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101761F54();
      }
    }

    else
    {
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I need to launch SIMSetup to setup preferences other than labels", v15, 2u);
      }

      *a2 = 1;
    }
  }

  else
  {
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I source device preferences unknown, do not launch SIMSetup", v15, 2u);
    }
  }

  if (v22 == 1)
  {
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    sub_1000DD0AC(buf, v17);
  }
}

void sub_10014F420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100004A34(v6);
  sub_1001510E4(va);
  sub_100077CD4(v5, *v7);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::isBootstrapProfile_sync(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  CellularPlanListModelLocal::getProfileDetailsForIccid_sync(a1, __p, v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v7[89];
  sub_100E3A5D4(v7);
  return v3;
}

uint64_t CellularPlanListModelLocal::isOffloadSim(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 200);
  v5 = (a1 + 208);
  if (v4 == (a1 + 208))
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v4 + 79);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[8];
    }

    if (v7 == v3)
    {
      v9 = v8 >= 0 ? v4 + 7 : v4[7];
      if (!memcmp(v9, v6, v3))
      {
        break;
      }
    }

    v10 = v4[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v4[2];
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
    }

    v4 = v11;
    if (v11 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10014F618(Registry *a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  *a2 = v11;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

uint64_t CellularPlanListModelLocal::isMonitorModeIccid(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 72);
  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v10 = *(a2 + 16);
    }

    v7 = (*(*v7 + 208))(v7, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100004A34(v6);
  return v7;
}

char *CellularPlanListModelLocal::getPhoneNumberForSlot_sync@<X0>(char *result@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v10 = a2;
  v4 = result + 176;
  v5 = *(result + 22);
  if (!v5)
  {
    goto LABEL_8;
  }

  result += 168;
  v6 = v4;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 == v4 || *(v6 + 8) > a2)
  {
    goto LABEL_8;
  }

  if ((v6[119] & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 13))
    {
      goto LABEL_14;
    }

LABEL_17:
    v9 = sub_100007DEC(result, &v10);
    result = sub_1000480F0(a3, v9);
    v7 = 1;
    goto LABEL_9;
  }

  if (v6[119])
  {
    goto LABEL_17;
  }

LABEL_14:
  v8 = v6[87];
  if (v8 < 0)
  {
    v8 = *(v6 + 9);
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_8:
  v7 = 0;
  *a3 = 0;
LABEL_9:
  a3[88] = v7;
  return result;
}

uint64_t sub_10014F8E0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void CellularPlanListModelLocal::getIccidIfSameCellularPlanDetected_sync(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 72);
      if (v11)
      {
        (*(*v11 + 96))(&v58);
        if (v68 == 1 && CellularPlanListModelLocal::isColdPhysicalSimDetected_sync(a1, &v58))
        {
          v12 = 432;
          if (v67)
          {
            v12 = 880;
          }

          std::string::operator=(a4, (&v58 + v12));
          sub_100168D80(&v27, a2, a4);
          v13 = *(a1 + 40);
          v14 = 0;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a4 + 23) >= 0)
            {
              v15 = a4;
            }

            else
            {
              v15 = *a4;
            }

            buf.var0 = 136315138;
            *&buf.var1 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Cold SIM (%s) is moved over after transfer", &buf, 0xCu);
            v14 = 0;
          }
        }

        else
        {
          v14 = 1;
        }

        if (v68 == 1)
        {
          sub_1002813D0(&v58);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v10);
          return;
        }
      }

      sub_100004A34(v10);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  *v55 = 0u;
  *v52 = 0u;
  *v53 = 0u;
  CellularPlanListModelLocal::getPhoneNumberForSlot_sync(a1, a3, v52);
  if ((BYTE8(v57) & 1) == 0 || (v17 = *(a1 + 144), v16 = *(a1 + 152), v17 == v16))
  {
LABEL_88:
    sub_10000501C(&__dst, "");
  }

  else
  {
    while (1)
    {
      if (*v17 != a3)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        *v49 = 0u;
        *v46 = 0u;
        *v47 = 0u;
        CellularPlanListModelLocal::getPhoneNumberForSlot_sync(a1, *v17, v46);
        if (BYTE8(v51))
        {
          *v65 = 0u;
          v66 = 0u;
          *v63 = 0u;
          v64 = 0u;
          *v61 = 0u;
          v62 = 0u;
          *v59 = 0u;
          v60 = 0u;
          memset(&v58, 0, sizeof(v58));
          CSIPhoneNumber::CSIPhoneNumber();
          v85 = 0u;
          *v84 = 0u;
          v83 = 0u;
          *v82 = 0u;
          v81 = 0u;
          *v80 = 0u;
          v79 = 0u;
          *v78 = 0u;
          memset(&buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          *v44 = 0u;
          v45 = 0u;
          *v42 = 0u;
          v43 = 0u;
          *v40 = 0u;
          v41 = 0u;
          *v38 = 0u;
          v39 = 0u;
          memset(&v37, 0, sizeof(v37));
          CSIPhoneNumber::CSIPhoneNumber();
          *__p = 0u;
          v36 = 0u;
          *v33 = 0u;
          v34 = 0u;
          *v31 = 0u;
          v32 = 0u;
          *v29 = 0u;
          v30 = 0u;
          memset(&v28, 0, sizeof(v28));
          CSIPhoneNumber::CSIPhoneNumber();
          if ((CSIPhoneNumber::isOriginalNumberSame(&v58, &buf) & 1) != 0 || (CSIPhoneNumber::isOriginalNumberSame(&v37, &v28) & 1) != 0 || (CSIPhoneNumber::isOriginalNumberSame(&v58, &v28) & 1) != 0 || CSIPhoneNumber::isOriginalNumberSame(&v37, &buf))
          {
            v18 = *(a1 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = a2;
              v20 = subscriber::asString();
              v21 = subscriber::asString();
              if (v50 >= 0)
              {
                v22 = &v49[1];
              }

              else
              {
                v22 = v49[1];
              }

              if (v48 >= 0)
              {
                v23 = &v47[1];
              }

              else
              {
                v23 = v47[1];
              }

              *v69 = 136315906;
              v70 = v20;
              v71 = 2080;
              v72 = v21;
              v73 = 2080;
              v74 = v22;
              v75 = 2080;
              v76 = v23;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Slot %s and %s have same phone number - trusted# (%s) qualified# (%s)", v69, 0x2Au);
              a2 = v19;
            }

            if (*(v17 + 95) < 0)
            {
              sub_100005F2C(&__dst, *(v17 + 72), *(v17 + 80));
              v24 = 0;
            }

            else
            {
              v24 = 0;
              __dst = *(v17 + 72);
              v26 = *(v17 + 88);
            }
          }

          else
          {
            v24 = 1;
          }

          if (SBYTE7(v36) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33[1]);
          }

          if (SBYTE7(v32) < 0)
          {
            operator delete(v31[0]);
          }

          if (SBYTE7(v30) < 0)
          {
            operator delete(v29[0]);
          }

          if (*(&v28.var2.__rep_.__l + 23) < 0)
          {
            operator delete(v28.var2.__rep_.__l.__data_);
          }

          if (SBYTE7(v45) < 0)
          {
            operator delete(v44[0]);
          }

          if (SHIBYTE(v43) < 0)
          {
            operator delete(v42[1]);
          }

          if (SBYTE7(v41) < 0)
          {
            operator delete(v40[0]);
          }

          if (SBYTE7(v39) < 0)
          {
            operator delete(v38[0]);
          }

          if (*(&v37.var2.__rep_.__l + 23) < 0)
          {
            operator delete(v37.var2.__rep_.__l.__data_);
          }

          if (SBYTE7(v85) < 0)
          {
            operator delete(v84[0]);
          }

          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82[1]);
          }

          if (SBYTE7(v81) < 0)
          {
            operator delete(v80[0]);
          }

          if (SBYTE7(v79) < 0)
          {
            operator delete(v78[0]);
          }

          if (*(&buf.var2.__rep_.__l + 23) < 0)
          {
            operator delete(buf.var2.__rep_.__l.__data_);
          }

          if (SBYTE7(v66) < 0)
          {
            operator delete(v65[0]);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(v63[1]);
          }

          if (SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
          }

          if (SBYTE7(v60) < 0)
          {
            operator delete(v59[0]);
          }

          if (*(&v58.var2.__rep_.__l + 23) < 0)
          {
            operator delete(v58.var2.__rep_.__l.__data_);
          }

          if (BYTE8(v51))
          {
            if (SHIBYTE(v50) < 0)
            {
              operator delete(v49[1]);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[1]);
            }

            if (SHIBYTE(v47[0]) < 0)
            {
              operator delete(v46[0]);
            }
          }

          if (!v24)
          {
            break;
          }
        }
      }

      v17 += 168;
      if (v17 == v16)
      {
        goto LABEL_88;
      }
    }
  }

  if (BYTE8(v57) == 1)
  {
    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55[1]);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[1]);
    }

    if (SHIBYTE(v53[0]) < 0)
    {
      operator delete(v52[0]);
    }
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = __dst;
  *(a4 + 16) = v26;
  sub_100168D80(&v27, a2, a4);
}

void sub_10014FF50(_Unwind_Exception *a1)
{
  if (STACK[0x730])
  {
    sub_1002813D0(&STACK[0x230]);
  }

  sub_100004A34(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::getUserPreferencesBasedOnSourceDevice_sync(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 320) <= 1u)
  {
    *a5 = 0;
    *(a5 + 72) = 0;
    return;
  }

  v7 = *(a1 + 80);
  if (!v7)
  {
    v12 = 0;
    goto LABEL_47;
  }

  v11 = std::__shared_weak_count::lock(v7);
  v12 = v11;
  if (!v11 || (v13 = *(a1 + 72)) == 0)
  {
LABEL_47:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101761F88();
    }

    *a5 = 0;
    *(a5 + 72) = 0;
    if (!v12)
    {
      return;
    }

    goto LABEL_50;
  }

  v14 = *(a1 + 984);
  if (!v14)
  {
    *a5 = 0;
    *(a5 + 72) = 0;
    goto LABEL_50;
  }

  v75[0] = 0;
  v75[1] = 0;
  v74.__r_.__value_.__r.__words[2] = v75;
  v73 = &v74;
  *&v74.__r_.__value_.__l.__data_ = 0uLL;
  v62 = v11;
  v15 = *a4;
  v63 = (a4 + 8);
  if (*a4 == a4 + 8)
  {
LABEL_28:
    if (v14 != *(a4 + 16))
    {
      goto LABEL_62;
    }

    *a2 = 1;
    v71 = 0;
    v72[0] = 0;
    v72[1] = 0;
    sub_1000E0918(&v71, a1 + 968);
    v70[0] = 0;
    v70[1] = 0;
    v69.__r_.__value_.__r.__words[2] = v70;
    v68.__r_.__value_.__r.__words[2] = &v69;
    *&v69.__r_.__value_.__l.__data_ = 0uLL;
    *&v68.__r_.__value_.__l.__data_ = 0uLL;
    v67 = &v68;
    v22 = v71;
    if (v71 == v72)
    {
      size = 0;
    }

    else
    {
      do
      {
        (*(*v13 + 96))(&__p, v13, v22 + 4);
        if (v85 != 1)
        {
          goto LABEL_35;
        }

        v23 = v84;
        if ((v84 & 0x80u) != 0)
        {
          v23 = v83[1];
        }

        if (v23)
        {
          sub_10017518C(&v69.__r_.__value_.__r.__words[2], v22 + 4);
          sub_100005BA0(&v68.__r_.__value_.__r.__words[2], v83);
        }

        else
        {
LABEL_35:
          sub_10017518C(&v69.__r_.__value_.__r.__words[2], v22 + 4);
          sub_100005BA0(&v68.__r_.__value_.__r.__words[2], v22 + 4);
        }

        sub_100005BA0(&v67, v22 + 7);
        if (v85 == 1)
        {
          sub_1002813D0(&__p);
        }

        v24 = v22[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v22[2];
            v21 = *v25 == v22;
            v22 = v25;
          }

          while (!v21);
        }

        v22 = v25;
      }

      while (v25 != v72);
      size = v69.__r_.__value_.__l.__size_;
    }

    v12 = v62;
    if (*(a4 + 16) == size)
    {
      v29 = *a4;
      if (*a4 == v63)
      {
        v31 = 1;
      }

      else
      {
        v30 = v68.__r_.__value_.__r.__words[2];
        do
        {
          v31 = sub_100022D3C(&__p, &v29[1].__r_.__value_.__l.__size_, v30 + 4);
          if (!v31)
          {
            break;
          }

          v32 = v29->__r_.__value_.__l.__size_;
          v33 = v29;
          if (v32)
          {
            do
            {
              v29 = v32;
              v32 = v32->__r_.__value_.__r.__words[0];
            }

            while (v32);
          }

          else
          {
            do
            {
              v29 = v33->__r_.__value_.__r.__words[2];
              v21 = v29->__r_.__value_.__r.__words[0] == v33;
              v33 = v29;
            }

            while (!v21);
          }

          v34 = v30[1];
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v30[2];
              v21 = *v35 == v30;
              v30 = v35;
            }

            while (!v21);
          }

          v30 = v35;
        }

        while (v29 != v63);
      }
    }

    else
    {
      v31 = 0;
    }

    v36 = *(a1 + 40);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = "no";
      if (v31)
      {
        v37 = "yes";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I device has same active equivalent iccids as source device: %s", &__p, 0xCu);
    }

    v38 = sub_10092D094(&v73, &v67);
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = "no";
      if (v38)
      {
        v40 = "yes";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I device has same phone numbers as source device: %s", &__p, 0xCu);
    }

    memset(&__str, 0, sizeof(__str));
    memset(&v65, 0, sizeof(v65));
    if (v31)
    {
      __p.__r_.__value_.__r.__words[0] = a1 + 992;
      v41 = sub_100173F08(&v69.__r_.__value_.__r.__words[2], (a1 + 992));
      std::string::operator=(&__str, (v41 + 56));
      __p.__r_.__value_.__r.__words[0] = a1 + 1016;
      v42 = sub_100173F08(&v69.__r_.__value_.__r.__words[2], (a1 + 1016));
    }

    else
    {
      if (!v38)
      {
        v53 = *(a1 + 40);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(v68.__r_.__value_.__r.__words[2], &v69, ",", 1, &__p);
          v54 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v55 = __p.__r_.__value_.__r.__words[0];
          sub_100074B94(*a4, v63, ",", 1, &v64);
          p_p = &__p;
          if (v54 < 0)
          {
            p_p = v55;
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v64;
          }

          else
          {
            v57 = v64.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v77 = p_p;
          v78 = 2080;
          v79 = v57;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I source iccids: [%s], device iccids: [%s]", buf, 0x16u);
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

          v12 = v62;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v53 = *(a1 + 40);
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(v67, &v68, ",", 1, &__p);
          v58 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v59 = __p.__r_.__value_.__r.__words[0];
          sub_100074B94(v73, &v74, ",", 1, &v64);
          v60 = &__p;
          if (v58 < 0)
          {
            v60 = v59;
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = &v64;
          }

          else
          {
            v61 = v64.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v77 = v60;
          v78 = 2080;
          v79 = v61;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I source phone numbers: [%s], device phone numbers: [%s]", buf, 0x16u);
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_95;
      }

      __p.__r_.__value_.__r.__words[0] = a1 + 992;
      __p.__r_.__value_.__r.__words[0] = sub_100173F08(&v71, (a1 + 992)) + 56;
      v43 = sub_100173F08(&v74.__r_.__value_.__r.__words[2], __p.__r_.__value_.__l.__data_);
      std::string::operator=(&__str, (v43 + 56));
      __p.__r_.__value_.__r.__words[0] = a1 + 1016;
      __p.__r_.__value_.__r.__words[0] = sub_100173F08(&v71, (a1 + 1016)) + 56;
      v42 = sub_100173F08(&v74.__r_.__value_.__r.__words[2], __p.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v65, (v42 + 56));
LABEL_95:
    v44 = *(a1 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v46 = &v65;
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v65.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = p_str;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I based on source, data sim should be [%s], voice sim should be [%s]", &__p, 0x16u);
    }

    v47 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v47 = __str.__r_.__value_.__l.__size_;
    }

    if (!v47)
    {
      goto LABEL_109;
    }

    v48 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v65.__r_.__value_.__l.__size_;
    }

    if (v48)
    {
      *a3 = 1;
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      v81 = 0u;
      memset(v82, 0, 32);
      std::string::operator=(&v81, &__str);
      std::string::operator=(&v82[1], &v65);
      v49 = __p.__r_.__value_.__l.__size_;
      *a5 = __p.__r_.__value_.__r.__words[0];
      *(a5 + 8) = v49;
      v50 = a5 + 8;
      v51 = __p.__r_.__value_.__r.__words[2];
      *(a5 + 16) = *(&__p.__r_.__value_.__l + 2);
      if (v51)
      {
        *(v49 + 16) = v50;
        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      }

      else
      {
        *a5 = v50;
      }

      *(a5 + 24) = v81;
      *(a5 + 40) = v82[0];
      v81 = 0uLL;
      *(a5 + 48) = *&v82[1];
      *(a5 + 64) = v82[3];
      memset(v82, 0, 32);
      *(a5 + 72) = 1;
      sub_10014C84C(&__p);
    }

    else
    {
LABEL_109:
      v52 = *(a1 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I source device preferences not matching", &__p, 2u);
      }

      *a5 = 0;
      *(a5 + 72) = 0;
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_100009970(&v67, v68.__r_.__value_.__l.__data_);
    sub_100009970(&v68.__r_.__value_.__r.__words[2], v69.__r_.__value_.__l.__data_);
    sub_1000DD0AC(&v69.__r_.__value_.__r.__words[2], v70[0]);
    sub_1000DD0AC(&v71, v72[0]);
    goto LABEL_140;
  }

  while (1)
  {
    p_size = &v15[1].__r_.__value_.__l.__size_;
    if (v15[2].__r_.__value_.__s.__data_[7] < 0)
    {
      sub_100005F2C(&__p, v15[1].__r_.__value_.__l.__size_, v15[1].__r_.__value_.__r.__words[2]);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *p_size;
      __p.__r_.__value_.__r.__words[2] = v15[2].__r_.__value_.__r.__words[0];
    }

    v17 = sub_100007A6C(a1 + 296, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a1 + 304 == v17)
    {
      v27 = *(a1 + 40);
      v12 = v62;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      if (v15[2].__r_.__value_.__s.__data_[7] < 0)
      {
        p_size = *p_size;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = p_size;
      v28 = "#I plan [%s] doesn't have a label assigned yet";
      goto LABEL_61;
    }

    v18 = *(v17 + 127);
    if (v18 < 0)
    {
      v18 = *(v17 + 112);
    }

    if (!v18)
    {
      break;
    }

    if ((*(v17 + 159) & 0x8000000000000000) == 0)
    {
      if (!*(v17 + 159))
      {
        goto LABEL_21;
      }

LABEL_20:
      sub_10017518C(&v74.__r_.__value_.__r.__words[2], (v17 + 136));
      sub_100005BA0(&v73, (v17 + 136));
      goto LABEL_21;
    }

    if (*(v17 + 144))
    {
      goto LABEL_20;
    }

LABEL_21:
    v19 = v15->__r_.__value_.__l.__size_;
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = v19->__r_.__value_.__r.__words[0];
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = v15->__r_.__value_.__r.__words[2];
        v21 = v20->__r_.__value_.__r.__words[0] == v15;
        v15 = v20;
      }

      while (!v21);
    }

    v15 = v20;
    if (v20 == v63)
    {
      v14 = *(a1 + 984);
      v12 = v62;
      goto LABEL_28;
    }
  }

  v27 = *(a1 + 40);
  v12 = v62;
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_62;
  }

  if (v15[2].__r_.__value_.__s.__data_[7] < 0)
  {
    p_size = *p_size;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
  *(__p.__r_.__value_.__r.__words + 4) = p_size;
  v28 = "#I plan [%s] doesn't have a valid label";
LABEL_61:
  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &__p, 0xCu);
LABEL_62:
  *a5 = 0;
  *(a5 + 72) = 0;
LABEL_140:
  sub_100009970(&v73, v74.__r_.__value_.__l.__data_);
  sub_1000DD0AC(&v74.__r_.__value_.__r.__words[2], v75[0]);
  if (v12)
  {
LABEL_50:
    sub_100004A34(v12);
  }
}

void sub_100150AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_100009970(&a29, a30);
  sub_100009970(&a32, a33);
  sub_1000DD0AC(&a35, a36);
  sub_1000DD0AC(&a38, a39);
  sub_100009970(&a41, a42);
  sub_1000DD0AC(&a44, a45);
  sub_100004A34(a12);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::applySourceDeviceUserPreferences_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 24);
    if (*(a2 + 47) >= 0)
    {
      v5 = a2 + 24;
    }

    v6 = a2 + 48;
    if (*(a2 + 71) < 0)
    {
      v6 = *(a2 + 48);
    }

    v21 = 136315394;
    v22 = v5;
    v23 = 2080;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Applying new preferences: Data (%s) Voice (%s)", &v21, 0x16u);
  }

  v7 = *(a2 + 47);
  if (v7 >= 0)
  {
    v8 = *(a2 + 47);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v8)
  {
    v9 = *(a1 + 887);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 872);
    }

    if (v9 != v8 || (v10 >= 0 ? (v11 = (a1 + 864)) : (v11 = *(a1 + 864)), v7 >= 0 ? (v12 = (a2 + 24)) : (v12 = *(a2 + 24)), memcmp(v11, v12, v8)))
    {
      std::string::operator=((a1 + 864), (a2 + 24));
    }
  }

  v13 = *(a2 + 71);
  if (v13 >= 0)
  {
    v14 = *(a2 + 71);
  }

  else
  {
    v14 = *(a2 + 56);
  }

  if (v14)
  {
    v15 = (a2 + 48);
    v16 = *(a1 + 855);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a1 + 840);
    }

    if (v16 != v14 || (v17 >= 0 ? (v18 = (a1 + 832)) : (v18 = *(a1 + 832)), v13 >= 0 ? (v19 = v15) : (v19 = v15->__r_.__value_.__r.__words[0]), memcmp(v18, v19, v14)))
    {
      std::string::operator=((a1 + 832), v15);
      *(a1 + 856) = 0;
    }
  }

  return CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(a1);
}

uint64_t CellularPlanListModelLocal::calculateLegacySlot(void *a1, const void **a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (v3)
  {
    v4 = a1[15];
    v5 = a1[16];
    if (v4 == v5 || a1[18] == a1[19])
    {
      return 0;
    }

    do
    {
      VinylInfo::findProfile();
      if (v27)
      {
        sub_100E3A5D4(&v25);
        return *(v4 + 4);
      }

      v4 += 88;
    }

    while (v4 != v5);
    v7 = a1[18];
    v8 = a1[19];
    if (v7 != v8)
    {
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v10 = a2[1];
      }

      if (v9 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = v7 + 72;
      while (1)
      {
        v13 = *(v12 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v12 + 8);
        }

        if (v13 == v10)
        {
          v15 = v14 >= 0 ? v12 : *v12;
          if (!memcmp(v15, v11, v10))
          {
            break;
          }
        }

        v16 = v12 + 96;
        v12 += 168;
        if (v16 == v8)
        {
          goto LABEL_24;
        }
      }

      v24 = *(v12 - 68);
      if (v24 < 4)
      {
        return dword_1017D5390[v24];
      }

      return 0;
    }

LABEL_24:
    v17 = a1[5];
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    v25 = 136315138;
    v26 = v19;
    v20 = "#I Unknown ICCID (%s)";
    v21 = v17;
    v22 = 12;
  }

  else
  {
    v23 = a1[5];
    result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v25) = 0;
    v20 = "#I Empty ICCID - default to unknown slot";
    v21 = v23;
    v22 = 2;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v25, v22);
  return 0;
}

void CellularPlanListModelLocal::notifyUpdateInstanceBasedPreferences_sync(std::__shared_weak_count **this)
{
  CellularPlanListModelLocal::calculateDefaultVoiceSelection_sync(this);
  v2 = *(this + 943);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = this[116];
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v15 = 0;
  v3 = v2 == 0;
  v4 = 115;
  if (v3)
  {
    v4 = 108;
  }

  v5 = &this[v4];
  if (*(v5 + 23) < 0)
  {
    sub_100005F2C(__dst, *v5, v5[1]);
  }

  else
  {
    *__dst = *v5;
    v15 = v5[2];
  }

  v6 = CellularPlanListModelLocal::calculateLegacySlot(this, __dst);
  if (v6 != *(this + 222))
  {
    *(this + 222) = v6;
    v7 = this[10];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = this[9];
        if (v10)
        {
          v11 = *(this + 222);
          sub_10000501C(__p, "");
          (v10->__on_zero_shared_weak)(v10, v11, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100004A34(v9);
      }
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1001510A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001510E4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    sub_1000DD0AC(a1, *(a1 + 8));
  }

  return a1;
}

uint64_t CellularPlanListModelLocal::doneLaunchSimSetup_sync(void (****this)(Registry **__return_ptr))
{
  (**this[7])(&v15);
  ServiceMap = Registry::getServiceMap(v15);
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
  __p[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, __p);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  (*(*v10 + 248))(v10, __p, 1);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(__p[0]);
  if ((v11 & 1) == 0)
  {
LABEL_11:
    sub_100004A34(v9);
  }

LABEL_12:
  if (v16)
  {
    sub_100004A34(v16);
  }

  return CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(this);
}

void sub_1001512AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(uint64_t this)
{
  if (*(this + 772) != 1)
  {
    v16 = v1;
    v17 = v2;
    v3 = this;
    v4 = *(this + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I clearing source device user preferences", &v11, 2u);
    }

    v12 = 0;
    v13 = 0;
    v11 = &v12;
    v5 = v3 + 976;
    *__p = 0u;
    memset(v15, 0, sizeof(v15));
    sub_1000DD0AC(v3 + 968, *(v3 + 976));
    v6 = v12;
    *(v3 + 968) = v11;
    *(v3 + 976) = v6;
    v7 = v13;
    *(v3 + 984) = v13;
    if (v7)
    {
      v6[2] = v5;
      v11 = &v12;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      *(v3 + 968) = v5;
    }

    v8 = (v3 + 992);
    if (*(v3 + 1015) < 0)
    {
      operator delete(*v8);
    }

    *v8 = *__p;
    *(v3 + 1008) = *&v15[0];
    BYTE7(v15[0]) = 0;
    LOBYTE(__p[0]) = 0;
    v9 = (v3 + 1016);
    if (*(v3 + 1039) < 0)
    {
      operator delete(*v9);
      v10 = SBYTE7(v15[0]);
      *v9 = *(v15 + 8);
      *(v3 + 1032) = *(&v15[1] + 1);
      HIBYTE(v15[1]) = 0;
      BYTE8(v15[0]) = 0;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *v9 = *(v15 + 8);
      *(v3 + 1032) = *(&v15[1] + 1);
      HIBYTE(v15[1]) = 0;
      BYTE8(v15[0]) = 0;
    }

    sub_1000DD0AC(&v11, v12);
    return (*(**(v3 + 104) + 208))(*(v3 + 104), v3 + 968, 1);
  }

  return this;
}

void CellularPlanListModelLocal::loadUserData_sync(CellularPlanListModelLocal *this)
{
  CellularPlanListModelLocal::loadLocalTransferredPlans(this);
  v2 = *(this + 13);
  v29[0] = off_101E2CB60;
  v29[1] = this;
  v29[3] = v29;
  (*(*v2 + 32))(v2, v29);
  sub_100171930(v29);
  v3 = *(this + 13);
  v28[0] = off_101E2CBF0;
  v28[1] = this;
  v28[3] = v28;
  (*(*v3 + 64))(v3, v28);
  sub_100171E70(v28);
  (***(this + 7))(&__p);
  ServiceMap = Registry::getServiceMap(__p.__r_.__value_.__l.__data_);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  if (v12)
  {
    (***(this + 7))(&buf);
    Registry::getTelephonyCapabilities(&__p, buf);
    v14 = (*(*__p.__r_.__value_.__l.__data_ + 16))(__p.__r_.__value_.__r.__words[0]);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_100004A34(__p.__r_.__value_.__l.__size_);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v14)
    {
      memset(&__p, 0, sizeof(__p));
      (*(*v12 + 56))(&__p, v12);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v17 = *(this + 5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          p_p = __p.__r_.__value_.__r.__words[0];
          if (v16 >= 0)
          {
            p_p = &__p;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = p_p;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I user selected default voice iccid found, (%s)", &buf, 0xCu);
        }

        std::string::operator=((this + 832), &__p);
        LOBYTE(v16) = *(&__p.__r_.__value_.__s + 23);
      }

      if ((v16 & 0x80) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    memset(&__p, 0, sizeof(__p));
    (*(*v12 + 64))(&__p, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        v20 = *(this + 5);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v21 = __p.__r_.__value_.__r.__words[0];
LABEL_36:
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I user selected default data iccid found, (%s)", &buf, 0xCu);
LABEL_37:
        std::string::operator=(this + 36, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v13)
          {
            goto LABEL_40;
          }
        }

        else if (v13)
        {
LABEL_40:
          v22 = *(this + 13);
          *&__p.__r_.__value_.__r.__words[1] = 0uLL;
          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
          *v24 = 0u;
          *v25 = 0u;
          v26 = 0u;
          (*(*v22 + 192))(v22, &__p);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[1]);
          }

          if (SHIBYTE(v25[0]) < 0)
          {
            operator delete(v24[0]);
          }

          sub_1000DD0AC(&__p, __p.__r_.__value_.__l.__size_);
          return;
        }

        sub_100004A34(v11);
        goto LABEL_40;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      v20 = *(this + 5);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v21 = &__p;
      goto LABEL_36;
    }
  }

  else
  {
    v19 = *(this + 5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I SimSetupProxyInterface not found", &__p, 2u);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  CellularPlanListModelLocal::maybeLoadUserPreferencesFromSource_sync(this);
}

void sub_100151980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::loadLocalTransferredPlans(CellularPlanListModelLocal *this)
{
  (***(this + 7))(&buf);
  ServiceMap = Registry::getServiceMap(buf.__r_.__value_.__l.__data_);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
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
  __p.__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  if (buf.__r_.__value_.__l.__size_)
  {
    sub_100004A34(buf.__r_.__value_.__l.__size_);
  }

  if (v10)
  {
    (*(*v10 + 48))(v10, @"com.apple.commcenter.cellular_plan", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theArray = 0;
    (*(*v10 + 40))(&buf, v10, @"kLocalTransferredPlans", @"com.apple.commcenter.cellular_plan", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_10006DD00(&theArray, &buf.__r_.__value_.__l.__data_);
    sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          memset(&__p, 0, sizeof(__p));
          CFArrayGetValueAtIndex(theArray, i);
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          size = buf.__r_.__value_.__l.__size_;
          v15 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          if (size)
          {
            sub_10017695C(this + 744, &__p.__r_.__value_.__l.__data_);
            v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v15 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v16 = *(this + 5);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_100074B94(*(this + 93), (this + 752), ",", 1, &buf);
        v17 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Local transferred plans: [%s]", &__p, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I No local transferred plans.", &buf, 2u);
      }
    }

    sub_100010250(&theArray);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100151D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100010250(&a10);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::maybeLoadUserPreferencesFromSource_sync(CellularPlanListModelLocal *this)
{
  (*(**(this + 13) + 216))(&v16);
  if (v21 == 1)
  {
    if ((this + 968) != &v17)
    {
      sub_1001732FC(this + 121, v17, &v18);
    }

    std::string::operator=((this + 992), &v19);
    std::string::operator=((this + 1016), &v20);
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064AB14(this + 121, &__p);
      v3 = v11 >= 0 ? &__p : __p;
      *buf = 136315138;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I previously cached user preferences from source device: %s", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }
    }

LABEL_30:
    v8 = *(this + 13);
    v10 = 0;
    v11 = 0;
    __p = &v10;
    *v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    (*(*v8 + 192))(v8, &__p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*(&v13 + 1));
    }

    if (SBYTE7(v13) < 0)
    {
      operator delete(v12[0]);
    }

    sub_1000DD0AC(&__p, v10);
    goto LABEL_35;
  }

  if (v16)
  {
    goto LABEL_30;
  }

  (*(**(this + 13) + 200))(&__p);
  v4 = v15;
  if (v15 == 1)
  {
    if ((this + 968) != &__p)
    {
      sub_1001732FC(this + 121, __p, &v10);
    }

    std::string::operator=((this + 992), v12);
    std::string::operator=((this + 1016), (&v13 + 8));
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064AB14(this + 121, buf);
      v6 = v23 >= 0 ? buf : *buf;
      *v24 = 136315138;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I user preferences from backup: %s", v24, 0xCu);
      if (v23 < 0)
      {
        operator delete(*buf);
      }
    }

    (*(**(this + 13) + 208))(*(this + 13), this + 968, 1);
  }

  else
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I any known user preferences not found", buf, 2u);
    }
  }

  if (v15 == 1)
  {
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*(&v13 + 1));
    }

    if (SBYTE7(v13) < 0)
    {
      operator delete(v12[0]);
    }

    sub_1000DD0AC(&__p, v10);
  }

  if (v4)
  {
    goto LABEL_30;
  }

LABEL_35:
  if (v21 == 1)
  {
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    sub_1000DD0AC(&v17, v18);
  }
}

void sub_1001521E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1001510E4(va);
  sub_10016FAC0(va1);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::handleEsimActivationFlagSetChanged_sync(CellularPlanListModelLocal *this)
{
  if (capabilities::ct::supportsHydra(this) && ((*(**(this + 7) + 32))(*(this + 7)) & 1) == 0 && *(this + 100) >= 2uLL)
  {
    v2 = *(this + 98);
    if (v2 == (this + 792))
    {
LABEL_12:
      v9[0] = 0;
      v9[1] = 0;
      v8 = v9;
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Hydra is not supported, need to disable non-user data plans", buf, 2u);
      }

      if (sub_10016FA58(this + 784, this + 108))
      {
        v7 = *sub_1000E20F0(this + 784, this + 108);
        *buf = this + 864;
        *(sub_100170224(&v8, this + 108) + 56) = v7;
      }

      else if (*(this + 100))
      {
        if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
        {
          sub_101761FBC();
        }

        *buf = *(this + 98) + 32;
        *(sub_100170224(&v8, *buf) + 56) = 1;
      }

      CellularPlanListModelLocal::setEnabledIccids_sync(this, &v8, 1, 0);
      sub_100009970(&v8, v9[0]);
    }

    else
    {
      while (sIsProfileInstalled())
      {
        v3 = *(v2 + 1);
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = *(v2 + 2);
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
        if (v4 == (this + 792))
        {
          goto LABEL_12;
        }
      }
    }
  }
}

uint64_t CellularPlanListModelLocal::setEnabledIccids_sync(capabilities::ct *a1, void *a2, char a3, int a4)
{
  v7 = a1;
  *&v134.__r_.__value_.__l.__data_ = 0uLL;
  v133 = &v134;
  v9 = (a2 + 1);
  v8 = *a2;
  if (*a2 == a2 + 1)
  {
    goto LABEL_11;
  }

  do
  {
    a1 = sub_100005BA0(&v133, v8 + 4);
    v10 = v8[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    v8 = v11;
  }

  while (v11 != v9);
  if (!v134.__r_.__value_.__l.__size_)
  {
LABEL_11:
    v13 = capabilities::ct::supportsGemini(a1);
    if ((v13 & 1) == 0)
    {
      v14 = capabilities::ct::supportsDynamicSID(v13);
      if ((v14 & 1) == 0 && (capabilities::ct::dataOnlySingleSIMDevice(v14) & 1) == 0)
      {
        if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176203C();
        }

        goto LABEL_15;
      }
    }
  }

  if (v134.__r_.__value_.__l.__size_ <= *(v7 + 772))
  {
    if (*(v7 + 736) == 1)
    {
      CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
      if (v134.__r_.__value_.__l.__size_ == *&__p[16])
      {
        v17 = v133;
        if (v133 == &v134)
        {
LABEL_66:
          sub_100009970(__p, *&__p[8]);
LABEL_303:
          v16 = 0;
          LODWORD(v15) = 0;
          goto LABEL_304;
        }

        v18 = *__p;
        while (sub_100022D3C(buf, &v17[1].__r_.__value_.__l.__size_, v18 + 4))
        {
          size = v17->__r_.__value_.__l.__size_;
          v20 = v17;
          if (size)
          {
            do
            {
              v17 = size;
              size = size->__r_.__value_.__r.__words[0];
            }

            while (size);
          }

          else
          {
            do
            {
              v17 = v20->__r_.__value_.__r.__words[2];
              v12 = v17->__r_.__value_.__r.__words[0] == v20;
              v20 = v17;
            }

            while (!v12);
          }

          v21 = v18[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v18[2];
              v12 = *v22 == v18;
              v18 = v22;
            }

            while (!v12);
          }

          v18 = v22;
          if (v17 == &v134)
          {
            goto LABEL_66;
          }
        }
      }

      if (*(v7 + 672) != v134.__r_.__value_.__l.__size_)
      {
LABEL_67:
        sub_100009970(__p, *&__p[8]);
        v37 = *(v7 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(v133, &v134, ",", 1, __p);
          v38 = __p[23] >= 0 ? __p : *__p;
          *buf = 136315138;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Attempting to add plans into (%s) provisioning placeholder.", buf, 0xCu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        CellularPlanListModelLocal::updatePlaceholderEnabledIccids_sync(v7, &v133, a4);
        goto LABEL_303;
      }

      v31 = *(v7 + 656);
      if (v31 != (v7 + 664))
      {
        v32 = v133;
        while (sub_100022D3C(buf, v31 + 4, &v32[1].__r_.__value_.__l.__size_))
        {
          v33 = v31[1];
          v34 = v31;
          if (v33)
          {
            do
            {
              v31 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v31 = v34[2];
              v12 = *v31 == v34;
              v34 = v31;
            }

            while (!v12);
          }

          v35 = v32->__r_.__value_.__l.__size_;
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = v35->__r_.__value_.__r.__words[0];
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = v32->__r_.__value_.__r.__words[2];
              v12 = *v36 == v32;
              v32 = v36;
            }

            while (!v12);
          }

          v32 = v36;
          if (v31 == (v7 + 664))
          {
            goto LABEL_66;
          }
        }

        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if ((a3 & 1) == 0)
    {
      CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
      if (v134.__r_.__value_.__l.__size_ == *&__p[16])
      {
        v23 = v133;
        if (v133 == &v134)
        {
          sub_100009970(__p, *&__p[8]);
          goto LABEL_178;
        }

        v24 = *__p;
        do
        {
          v25 = sub_100022D3C(buf, &v23[1].__r_.__value_.__l.__size_, v24 + 4);
          if (!v25)
          {
            goto LABEL_76;
          }

          v26 = v25;
          v27 = v23->__r_.__value_.__l.__size_;
          v28 = v23;
          if (v27)
          {
            do
            {
              v23 = v27;
              v27 = v27->__r_.__value_.__r.__words[0];
            }

            while (v27);
          }

          else
          {
            do
            {
              v23 = v28->__r_.__value_.__r.__words[2];
              v12 = v23->__r_.__value_.__r.__words[0] == v28;
              v28 = v23;
            }

            while (!v12);
          }

          v29 = v24[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v24[2];
              v12 = *v30 == v24;
              v24 = v30;
            }

            while (!v12);
          }

          v24 = v30;
        }

        while (v23 != &v134);
        sub_100009970(__p, *&__p[8]);
        if (v26)
        {
LABEL_178:
          v82 = *(v7 + 40);
          hasIccid_sync = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
          if (hasIccid_sync)
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Enabled ICCIDs already set", __p, 2u);
          }

          for (i = *(v7 + 144); i != *(v7 + 152); i += 168)
          {
            if (!*(i + 12))
            {
              goto LABEL_194;
            }
          }

          v85 = *(v7 + 944);
          if (v85 != v7 + 952)
          {
            do
            {
              hasIccid_sync = CellularPlanListModelLocal::hasIccid_sync(hasIccid_sync, v85 + 32, (v7 + 144));
              if (hasIccid_sync)
              {
                v86 = *(v85 + 8);
                if (v86)
                {
                  do
                  {
                    v87 = v86;
                    v86 = *v86;
                  }

                  while (v86);
                }

                else
                {
                  do
                  {
                    v87 = *(v85 + 16);
                    v12 = *v87 == v85;
                    v85 = v87;
                  }

                  while (!v12);
                }
              }

              else
              {
                CellularPlanListModelLocal::removeManagedPersonality(v7, v85 + 32, 1);
                v87 = sub_100075658((v7 + 944), v85);
                CellularPlanListModelLocal::persistUserData_sync(v7);
              }

              v85 = v87;
            }

            while (v87 != (v7 + 952));
          }

LABEL_194:
          CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
          LODWORD(v15) = CellularPlanListModelLocal::evaluateCurrentSelections_sync(v7, __p, &v133);
          sub_100009970(__p, *&__p[8]);
          if (v15)
          {
            v88 = *(v7 + 80);
            if (v88)
            {
              v89 = std::__shared_weak_count::lock(v88);
              if (v89)
              {
                v90 = v89;
                v91 = *(v7 + 72);
                if (v91)
                {
                  *(v7 + 888) = CellularPlanListModelLocal::calculateLegacySlot(v7, (v7 + 864));
                  CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
                  (*(*v91 + 152))(v91, __p, v7 + 864);
                  sub_100009970(__p, *&__p[8]);
                }

                sub_100004A34(v90);
              }
            }

            CellularPlanListModelLocal::persistUserData_sync(v7);
            goto LABEL_303;
          }

          goto LABEL_305;
        }
      }

      else
      {
LABEL_76:
        sub_100009970(__p, *&__p[8]);
      }
    }

    v123 = a2;
    v39 = v133;
    if (v133 != &v134)
    {
      v40 = 0;
      while (1)
      {
        p_size = &v39[1].__r_.__value_.__l.__size_;
        v42 = *(v7 + 144);
        v43 = *(v7 + 152);
        if (v42 != v43)
        {
          v44 = v39[2].__r_.__value_.__s.__data_[7];
          if (v44 >= 0)
          {
            v45 = v39[2].__r_.__value_.__s.__data_[7];
          }

          else
          {
            v45 = v39[1].__r_.__value_.__r.__words[2];
          }

          v46 = v42 + 72;
          while (1)
          {
            v47 = *(v46 + 23);
            v48 = v47;
            if ((v47 & 0x80u) != 0)
            {
              v47 = *(v46 + 8);
            }

            if (v47 == v45)
            {
              v49 = v48 >= 0 ? v46 : *v46;
              v50 = v44 >= 0 ? &v39[1].__r_.__value_.__r.__words[1] : *p_size;
              if (!memcmp(v49, v50, v45))
              {
                break;
              }
            }

            v51 = v46 + 96;
            v46 += 168;
            if (v51 == v43)
            {
              goto LABEL_99;
            }
          }

          v42 = v46 - 72;
        }

        if (v42 != v43)
        {
          v40 += subscriber::isEsimCapable();
          goto LABEL_108;
        }

LABEL_99:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        memset(__p, 0, sizeof(__p));
        sGetProfileDetails();
        if (BYTE8(v152) != 1)
        {
          v52 = *(v7 + 40);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            if (v39[2].__r_.__value_.__s.__data_[7] < 0)
            {
              p_size = *p_size;
            }

            *buf = 136315138;
            *&buf[4] = p_size;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "ICCID (%s) unknown - aborting", buf, 0xCu);
          }

          goto LABEL_104;
        }

        if (BYTE9(v144) == 1)
        {
          break;
        }

        isHydraSupported_sync = CellularPlanListModelLocal::isHydraSupported_sync(v7);
        if (++v40 < 2)
        {
          v57 = 1;
        }

        else
        {
          v57 = isHydraSupported_sync;
        }

        if ((v57 & 1) == 0)
        {
          if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101762070(&v129, v130);
          }

          goto LABEL_104;
        }

        v53 = 1;
LABEL_105:
        if (BYTE8(v152) == 1)
        {
          sub_100E3A5D4(__p);
        }

        if ((v53 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_108:
        v54 = v39->__r_.__value_.__l.__size_;
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = v54->__r_.__value_.__r.__words[0];
          }

          while (v54);
        }

        else
        {
          do
          {
            v55 = v39->__r_.__value_.__r.__words[2];
            v12 = v55->__r_.__value_.__r.__words[0] == v39;
            v39 = v55;
          }

          while (!v12);
        }

        v39 = v55;
        if (v55 == &v134)
        {
          goto LABEL_125;
        }
      }

      if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017620A4(&v131, v132);
      }

LABEL_104:
      v53 = 0;
      goto LABEL_105;
    }

LABEL_125:
    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
    if (v134.__r_.__value_.__l.__size_ == *&__p[16])
    {
      v58 = v133;
      if (v133 == &v134)
      {
LABEL_140:
        sub_100009970(__p, *&__p[8]);
        goto LABEL_170;
      }

      v59 = *__p;
      while (sub_100022D3C(buf, &v58[1].__r_.__value_.__l.__size_, v59 + 4))
      {
        v60 = v58->__r_.__value_.__l.__size_;
        v61 = v58;
        if (v60)
        {
          do
          {
            v58 = v60;
            v60 = v60->__r_.__value_.__r.__words[0];
          }

          while (v60);
        }

        else
        {
          do
          {
            v58 = v61->__r_.__value_.__r.__words[2];
            v12 = v58->__r_.__value_.__r.__words[0] == v61;
            v61 = v58;
          }

          while (!v12);
        }

        v62 = v59[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v59[2];
            v12 = *v63 == v59;
            v59 = v63;
          }

          while (!v12);
        }

        v59 = v63;
        if (v58 == &v134)
        {
          goto LABEL_140;
        }
      }
    }

    sub_100009970(__p, *&__p[8]);
    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
    CellularPlanListModelLocal::submitProfileSwitchMetric_sync(v7, __p, &v133);
    sub_100009970(__p, *&__p[8]);
    v64 = *(v7 + 144);
    v65 = *(v7 + 152);
    if (v64 != v65)
    {
      v66 = (v7 + 808);
      v67 = v64 + 72;
      do
      {
        if ((*(v67 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v67 + 8))
          {
LABEL_149:
            if (CellularPlanListModelLocal::isIccidForPhySlot_sync(v7, v67))
            {
              if (sub_10016FA58(&v133, v67))
              {
                v68 = *(v7 + 831);
                if (v68 >= 0)
                {
                  v69 = *(v7 + 831);
                }

                else
                {
                  v69 = *(v7 + 816);
                }

                v70 = *(v67 + 23);
                v71 = v70;
                if ((v70 & 0x80u) != 0)
                {
                  v70 = *(v67 + 8);
                }

                if (v69 == v70)
                {
                  v72 = *v66;
                  v73 = v68 >= 0 ? (v7 + 808) : *v66;
                  v74 = v71 >= 0 ? v67 : *v67;
                  if (!memcmp(v73, v74, v69))
                  {
                    if (v68 < 0)
                    {
                      *v72 = 0;
                      *(v7 + 816) = 0;
                    }

                    else
                    {
                      *(v7 + 808) = 0;
                      *(v7 + 831) = 0;
                    }
                  }
                }
              }

              else
              {
                std::string::operator=((v7 + 808), v67);
              }
            }
          }
        }

        else if (*(v67 + 23))
        {
          goto LABEL_149;
        }

        v75 = v67 + 96;
        v67 += 168;
      }

      while (v75 != v65);
    }

LABEL_170:
    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
    CellularPlanListModelLocal::evaluateCurrentSelections_sync(v7, __p, &v133);
    sub_100009970(__p, *&__p[8]);
    if ((v7 + 784) != v123)
    {
      sub_1001741DC((v7 + 784), *v123, v9);
    }

    v76 = *(v7 + 40);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = *(v7 + 800);
      CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, &v126);
      v78 = v126;
      v134.__r_.__value_.__r.__words[2] = ",";
      v135 = 1;
      memset(&v128, 0, sizeof(v128));
      if (v126 == v127)
      {
        v81 = &v128;
      }

      else
      {
        v79 = (v126 + 32);
        memset(__p, 0, 24);
        v80 = *(v126 + 55);
        if (v80 < 0)
        {
          sub_100005F2C(__p, *(v126 + 32), *(v126 + 40));
          LOBYTE(v80) = *(v78 + 55);
        }

        else
        {
          *__p = *v79;
          *&__p[16] = *(v126 + 48);
        }

        v92 = v80;
        if ((v80 & 0x80u) == 0)
        {
          v93 = v80;
        }

        else
        {
          v93 = v78[5];
        }

        v94 = *(v7 + 887);
        v95 = v94;
        if ((v94 & 0x80u) != 0)
        {
          v94 = *(v7 + 872);
        }

        if (v93 == v94)
        {
          v96 = v92 >= 0 ? v78 + 4 : *v79;
          v97 = v95 >= 0 ? (v7 + 864) : *(v7 + 864);
          if (!memcmp(v96, v97, v93))
          {
            std::string::append(__p, "*", 1uLL);
          }
        }

        v98 = *__p;
        *buf = *&__p[8];
        *&buf[7] = *&__p[15];
        v99 = __p[23];
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        v128.__r_.__value_.__r.__words[0] = v98;
        v128.__r_.__value_.__l.__size_ = *buf;
        *(&v128.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
        *(&v128.__r_.__value_.__s + 23) = v99;
        v100 = v78[1];
        if (v100)
        {
          do
          {
            v101 = v100;
            v100 = *v100;
          }

          while (v100);
        }

        else
        {
          do
          {
            v101 = v78[2];
            v12 = *v101 == v78;
            v78 = v101;
          }

          while (!v12);
        }

        if (v101 != v127)
        {
          do
          {
            sub_100074CFC(&v134.__r_.__value_.__r.__words[2], __p);
            if (__p[23] >= 0)
            {
              v102 = __p;
            }

            else
            {
              v102 = *__p;
            }

            if (__p[23] >= 0)
            {
              v103 = __p[23];
            }

            else
            {
              v103 = *&__p[8];
            }

            std::string::append(&v128, v102, v103);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            v104 = v101 + 4;
            memset(__p, 0, 24);
            if (*(v101 + 55) < 0)
            {
              sub_100005F2C(__p, v101[4], v101[5]);
              v105 = *(v101 + 55);
            }

            else
            {
              v105 = *(v101 + 55);
              *__p = *v104;
              *&__p[16] = v101[6];
            }

            v106 = v105;
            if ((v105 & 0x80u) == 0)
            {
              v107 = v105;
            }

            else
            {
              v107 = v101[5];
            }

            v108 = *(v7 + 887);
            v109 = v108;
            if ((v108 & 0x80u) != 0)
            {
              v108 = *(v7 + 872);
            }

            if (v107 == v108)
            {
              v110 = v106 >= 0 ? v101 + 4 : *v104;
              v111 = v109 >= 0 ? (v7 + 864) : *(v7 + 864);
              if (!memcmp(v110, v111, v107))
              {
                std::string::append(__p, "*", 1uLL);
              }
            }

            v154 = *&__p[16];
            *buf = *__p;
            if (__p[23] >= 0)
            {
              v112 = buf;
            }

            else
            {
              v112 = *buf;
            }

            if (__p[23] >= 0)
            {
              v113 = HIBYTE(*&__p[16]);
            }

            else
            {
              v113 = *&buf[8];
            }

            std::string::append(&v128, v112, v113);
            if (SHIBYTE(v154) < 0)
            {
              operator delete(*buf);
            }

            v114 = v101[1];
            if (v114)
            {
              do
              {
                v115 = v114;
                v114 = *v114;
              }

              while (v114);
            }

            else
            {
              do
              {
                v115 = v101[2];
                v12 = *v115 == v101;
                v101 = v115;
              }

              while (!v12);
            }

            v101 = v115;
          }

          while (v115 != v127);
          v99 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
          v98 = v128.__r_.__value_.__r.__words[0];
        }

        v81 = &v128;
        if (v99 < 0)
        {
          v81 = v98;
        }
      }

      *v136 = 134218242;
      v137 = v77;
      v138 = 2080;
      v139 = v81;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I Enabling %lu SIMs (%s)", v136, 0x16u);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      sub_100009970(&v126, v127[0]);
    }

    v116 = CellularPlanListModelLocal::enableUserSelectedProfiles_sync(v7, *(v7 + 800) == 0);
    if (v116 && (*(v7 + 772) > 1u || *(v7 + 800)))
    {
      CellularPlanListModelLocal::persistUserData_sync(v7);
    }

    if ((*(v7 + 919) & 0x8000000000000000) != 0)
    {
      if (!*(v7 + 904))
      {
        goto LABEL_285;
      }
    }

    else if (!*(v7 + 919))
    {
      goto LABEL_285;
    }

    if (CellularPlanListModelLocal::hasIccid_sync(v116, v7 + 896, (v7 + 144)))
    {
      goto LABEL_303;
    }

    if (*(v7 + 919) < 0)
    {
      **(v7 + 896) = 0;
      *(v7 + 904) = 0;
    }

    else
    {
      *(v7 + 896) = 0;
      *(v7 + 919) = 0;
    }

    if (*(v7 + 943) < 0)
    {
      **(v7 + 920) = 0;
      *(v7 + 928) = 0;
    }

    else
    {
      *(v7 + 920) = 0;
      *(v7 + 943) = 0;
    }

    atomic_store(0, (v7 + 768));
LABEL_285:
    if (*(v7 + 152) - *(v7 + 144) == 168)
    {
      if (!subscriber::isEsimCapable())
      {
        goto LABEL_303;
      }

      v117 = *(v7 + 80);
      if (!v117)
      {
        goto LABEL_303;
      }

      v15 = std::__shared_weak_count::lock(v117);
      if (v15)
      {
        v118 = *(v7 + 72);
        if (!v118)
        {
          goto LABEL_302;
        }

        CellularPlanListModelLocal::calculateHomeCountryList_sync(v7, v125);
        CellularPlanListModelLocal::getSubscriberDataIdInfo_sync(v7, __p);
        (*(*v118 + 72))(v118, v125, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v125[24] != 1)
        {
          goto LABEL_302;
        }

        v119 = v125;
LABEL_301:
        *__p = v119;
        sub_1000087B4(__p);
LABEL_302:
        sub_100004A34(v15);
        goto LABEL_303;
      }
    }

    else
    {
      v120 = *(v7 + 80);
      if (!v120)
      {
        goto LABEL_303;
      }

      v15 = std::__shared_weak_count::lock(v120);
      if (v15)
      {
        v121 = *(v7 + 72);
        if (!v121)
        {
          goto LABEL_302;
        }

        *(v7 + 888) = CellularPlanListModelLocal::calculateLegacySlot(v7, (v7 + 864));
        CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v7, __p);
        (*(*v121 + 152))(v121, __p, v7 + 864);
        sub_100009970(__p, *&__p[8]);
        CellularPlanListModelLocal::calculateHomeCountryList_sync(v7, v124);
        CellularPlanListModelLocal::getSubscriberDataIdInfo_sync(v7, __p);
        (*(*v121 + 72))(v121, v124, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v124[24] != 1)
        {
          goto LABEL_302;
        }

        v119 = v124;
        goto LABEL_301;
      }
    }

LABEL_305:
    v16 = 0;
    goto LABEL_304;
  }

  if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017620D8();
  }

LABEL_15:
  LODWORD(v15) = 1;
  v16 = 6;
LABEL_304:
  sub_100009970(&v133, v134.__r_.__value_.__l.__data_);
  return v16 | (v15 << 8);
}

void sub_100153404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  sub_100009970(&__p, a40);
  sub_100004A34(v40);
  sub_100009970(&a30, a31);
  _Unwind_Resume(a1);
}

uint64_t **CellularPlanListModelLocal::setEntitlements_sync(CellularPlanListModelLocal *this, CellularPlanListModelLocal *a2, void *a3)
{
  v5 = (a3 + 1);
  v6 = *a3;
  if (*a3 != a3 + 1)
  {
    v7 = 0;
    while (1)
    {
      if ((*(v6 + 55) & 0x8000000000000000) != 0)
      {
        if (v6[5])
        {
LABEL_7:
          v8 = sub_1001705A0(this + 248, v6 + 4);
          v9 = *(v6 + 14);
          if (*(v8 + 220) != v9)
          {
            *(sub_1001705A0(this + 248, v6 + 4) + 220) = v9;
            v7 = 1;
          }
        }
      }

      else if (*(v6 + 55))
      {
        goto LABEL_7;
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = 0;
LABEL_17:
  v13 = *(this + 18);
  v14 = *(this + 19);
  while (v13 != v14)
  {
    if (!*(sub_1001705A0(this + 248, (v13 + 72)) + 216))
    {
      if ((*(v13 + 95) & 0x8000000000000000) != 0)
      {
        if (*(v13 + 80))
        {
LABEL_25:
          if (subscriber::isSimReady() && *v13)
          {
            CellularPlanListModelLocal::updateOnDeviceConversion_sync(this, *v13);
            CellularPlanListModelLocal::updateSupportCrossPlatformTransfer_sync(this, *v13);
            v7 |= *(sub_1001705A0(this + 248, (v13 + 72)) + 216) != 0;
          }
        }
      }

      else if (*(v13 + 95))
      {
        goto LABEL_25;
      }
    }

    v13 += 168;
  }

  if (v7)
  {
    v15 = *(this + 10);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = v16;
        v18 = *(this + 9);
        if (v18)
        {
          (*(*v18 + 40))(v18);
        }

        sub_100004A34(v17);
      }
    }
  }

  CellularPlanListModelLocal::evaluateLocalTransferCompletion(this);
  result = (this + 272);
  if ((this + 272) != a2)
  {
    return sub_100171EF0(result, *a2, a2 + 1);
  }

  return result;
}

void CellularPlanListModelLocal::evaluateLocalTransferCompletion(CellularPlanListModelLocal *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 9);
      if (v5)
      {
        v6 = *(this + 31);
        if (v6 != (this + 256))
        {
          v7 = 0;
          v8 = v50;
          do
          {
            if (*(v6 + 55) == 2)
            {
              v9 = (v6 + 32);
              bzero(&v46, 0x508uLL);
              (*(*v5 + 96))(&v46, v5, v6 + 32);
              if (v52)
              {
                if ((v51 & 0x80u) == 0)
                {
                  v10 = v51;
                }

                else
                {
                  v10 = v50[1];
                }

                v11 = *(v6 + 55);
                v12 = v11;
                if ((v11 & 0x80u) != 0)
                {
                  v11 = *(v6 + 5);
                }

                if (v10 == v11)
                {
                  v13 = (v51 & 0x80u) == 0 ? v8 : v50[0];
                  v14 = v12 >= 0 ? v6 + 32 : *v9;
                  if (!memcmp(v13, v14, v10) && v47 == 1 && !sub_10016FA58(this + 744, v48))
                  {
                    v15 = *(this + 5);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v49 >= 0)
                      {
                        v16 = v48;
                      }

                      else
                      {
                        v16 = v48[0];
                      }

                      v17 = v6 + 32;
                      if (*(v6 + 55) < 0)
                      {
                        v17 = *v9;
                      }

                      *buf = 136315394;
                      *&buf[4] = v16;
                      *&buf[12] = 2080;
                      *&buf[14] = v17;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I local transfer %s -> %s complete.", buf, 0x16u);
                    }

                    v39 = v4;
                    sub_100073EE8(this + 744, v48);
                    CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(this, 0, v48, 0);
                    v38 = v8;
                    v18 = *(this + 18);
                    v19 = *(this + 19);
                    if (v18 == v19)
                    {
                      v20 = 0;
                    }

                    else
                    {
                      v20 = 0;
                      v21 = *(v6 + 55);
                      if (v21 >= 0)
                      {
                        v22 = *(v6 + 55);
                      }

                      else
                      {
                        v22 = *(v6 + 5);
                      }

                      v23 = v18 + 9;
                      do
                      {
                        v24 = *(v23 + 23);
                        v25 = v24;
                        if (v24 < 0)
                        {
                          v24 = v23[1];
                        }

                        if (v22 == v24)
                        {
                          if (v21 >= 0)
                          {
                            v26 = v6 + 32;
                          }

                          else
                          {
                            v26 = *v9;
                          }

                          if (v25 >= 0)
                          {
                            v27 = v23;
                          }

                          else
                          {
                            v27 = *v23;
                          }

                          if (!memcmp(v26, v27, v22))
                          {
                            v20 = *(v23 - 18);
                          }

                          else
                          {
                            v20 = v20;
                          }
                        }

                        v28 = v23 + 12;
                        v23 += 21;
                      }

                      while (v28 != v19);
                    }

                    v29 = HIDWORD(v46);
                    if (HIDWORD(v46) == v20)
                    {
                      v7 = 1;
                      v8 = v38;
                      v4 = v39;
                    }

                    else
                    {
                      v4 = v39;
                      (***(this + 7))(&v44);
                      v8 = v38;
                      *buf = v44;
                      v44 = 0uLL;
                      isValidSimSlot = subscriber::isValidSimSlot();
                      if (*&buf[8])
                      {
                        sub_100004A34(*&buf[8]);
                      }

                      if (*(&v44 + 1))
                      {
                        sub_100004A34(*(&v44 + 1));
                      }

                      if (isValidSimSlot)
                      {
                        (***(this + 7))(&v44);
                        *buf = v44;
                        v44 = 0uLL;
                        v31 = subscriber::isValidSimSlot();
                        if (*&buf[8])
                        {
                          sub_100004A34(*&buf[8]);
                        }

                        if (*(&v44 + 1))
                        {
                          sub_100004A34(*(&v44 + 1));
                        }

                        v32 = *(this + 5);
                        if (v31)
                        {
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                          {
                            v33 = subscriber::asString();
                            v34 = subscriber::asString();
                            *buf = 136315394;
                            *&buf[4] = v33;
                            *&buf[12] = 2080;
                            *&buf[14] = v34;
                            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I apply preference from %s -> %s", buf, 0x16u);
                          }

                          CellularPlanListModelLocal::maybeApplySourcePlanPreferences_sync(this, v29, v20);
                        }

                        else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                        {
                          sub_101762140(&v40, v41);
                        }
                      }

                      else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
                      {
                        sub_10176210C(&v42, v43);
                      }

                      v7 = 1;
                    }
                  }
                }
              }

              if (v52 == 1)
              {
                sub_1002813D0(&v46);
              }
            }

            v35 = *(v6 + 1);
            if (v35)
            {
              do
              {
                v36 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v36 = *(v6 + 2);
                v37 = *v36 == v6;
                v6 = v36;
              }

              while (!v37);
            }

            v6 = v36;
          }

          while (v36 != (this + 256));
          if (v7)
          {
            CellularPlanListModelLocal::saveLocalTransferredPlans(this);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_100153C98(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (LOBYTE(STACK[0x578]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(a3);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::handleDataOnlyPlansChange_sync(std::__shared_weak_count **this, uint64_t a2)
{
  v4 = (this + 130);
  if (v4 != a2)
  {
    sub_1001730B8(v4, *a2, (a2 + 8));
  }

  if (*(a2 + 16))
  {
    v9 = 0u;
    v10 = 0u;
    CellularPlanListModelLocal::calculateLaunchSimSetup_sync(this, &v9);
    if (v9)
    {
      v5 = this[10];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = this[9];
          if (v8)
          {
            (v8->__vftable[1].__on_zero_shared)(v8);
          }

          sub_100004A34(v7);
        }
      }
    }

    sub_100077CD4(&v9 + 8, v10);
  }
}

void sub_100153DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_100004A34(v11);
  sub_100077CD4(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t **CellularPlanListModelLocal::offloadSimsUpdated_sync(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 200);
  if (result != a2)
  {
    return sub_1001732FC(result, *a2, a2 + 1);
  }

  return result;
}

uint64_t **CellularPlanListModelLocal::privateNetworkSimsActiveUpdated_sync(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 224);
  if (result != a2)
  {
    return sub_10017355C(result, *a2, a2 + 1);
  }

  return result;
}

void CellularPlanListModelLocal::setSimInfo_sync(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (0xCF3CF3CF3CF3CF3DLL * ((v5 - *a2) >> 3) < *(a1 + 772) || (isSimInTransientState = capabilities::ct::supportsDynamicSID(a1), v4 = *a2, v5 = a2[1], isSimInTransientState) && 0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3) <= 1)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = 0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3);
      v7 = "#I Not enough SIMs (%lu) - wait";
      goto LABEL_4;
    }

    return;
  }

  if (v4 != v5)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      isSimInTransientState = subscriber::isSimInTransientState();
      if (isSimInTransientState)
      {
        v27 = *(a1 + 40);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v28 = subscriber::asString();
        v29 = subscriber::asString();
        *buf = 136315394;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = v29;
        v7 = "#I SIM hardware slot %s in an %s state - wait";
        v8 = v27;
        v9 = 22;
        goto LABEL_5;
      }

      v15 = *(v4 + 95);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v4 + 80);
      }

      if (!v15)
      {
        isSimInTransientState = subscriber::isSimPresentAndValid();
        if (isSimInTransientState)
        {
          v6 = *(a1 + 40);
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v50 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v50;
          v7 = "#I Detected SIM hardware slot %s with no ICCID - wait";
          goto LABEL_4;
        }

        if (*(v4 + 12) == 2)
        {
          isSimInTransientState = subscriber::isEsimCapable();
          if ((isSimInTransientState & 1) == 0)
          {
            isSimInTransientState = capabilities::ct::supportsVinylTestMode(isSimInTransientState);
            if ((isSimInTransientState & 1) == 0)
            {
              v6 = *(a1 + 40);
              if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              v69 = subscriber::asString();
              *buf = 136315138;
              *&buf[4] = v69;
              v7 = "#I 4FF SIM inserted on slot %s and ICCID is still unknown - wait";
LABEL_4:
              v8 = v6;
              v9 = 12;
LABEL_5:
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
              return;
            }
          }
        }
      }

      if (*(a1 + 772) >= 2u)
      {
        isSimReady = subscriber::isSimReady();
        if (*(v4 + 12) == 1)
        {
          v17 = isSimReady;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          v6 = *(a1 + 40);
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v40 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v40;
          v7 = "#I SIM %s 'ready', but tray indicates 'absent' - wait";
          goto LABEL_4;
        }

        isSimInTransientState = subscriber::isEsimCapable();
        if ((isSimInTransientState & 1) == 0)
        {
          break;
        }
      }

LABEL_48:
      v4 += 168;
      if (v4 == v5)
      {
        v4 = *a2;
        v5 = a2[1];
        v23 = v13 ^ 1;
        v24 = v14 ^ 1;
        goto LABEL_51;
      }
    }

    isSimInTransientState = subscriber::isSimInserted();
    v18 = *(v4 + 12);
    if (v18 == 2)
    {
      v19 = isSimInTransientState;
    }

    else
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      v6 = *(a1 + 40);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v51 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v51;
      v7 = "#I Physical SIM %s 'absent', but tray indicates 'inserted' - wait";
      goto LABEL_4;
    }

    if ((v13 & 1) == 0)
    {
      v14 = v18 == 1;
LABEL_47:
      v13 = 1;
      goto LABEL_48;
    }

    if (*(a1 + 800) <= 1uLL)
    {
      if ((*(a1 + 831) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 816))
        {
          goto LABEL_46;
        }
      }

      else if (!*(a1 + 831))
      {
        goto LABEL_46;
      }
    }

    if (((v14 ^ 1) & 1) == 0 && v18 != 1)
    {
      v20 = *(a1 + 40);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Detected dual physical with mismatching SIM tray state - wait", buf, 2u);
      }

      goto LABEL_44;
    }

    if (((v14 ^ 1) & (v18 == 1)) == 1)
    {
      v22 = *(a1 + 40);
      v21 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Detected dual physical with mismatching SIM tray state - wait", buf, 2u);
      }

LABEL_44:
      isSimInTransientState = capabilities::ct::supportsDualPhysicalSIM(v21);
      if (isSimInTransientState)
      {
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    v14 = v14 & (v18 == 1);
    goto LABEL_47;
  }

  v23 = 1;
  v24 = 1;
LABEL_51:
  v26 = *(a1 + 144);
  v25 = (a1 + 144);
  if (v5 - v4 != *(a1 + 152) - v26)
  {
    goto LABEL_58;
  }

  while (v4 != v5)
  {
    isSimInTransientState = BasicSimInfo::operator==();
    if (!isSimInTransientState)
    {
      goto LABEL_58;
    }

    v4 += 168;
    v26 += 168;
  }

  if ((a3 & 1) == 0)
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#I No SIM changes, re-evaluation not required";
      v8 = v39;
      v9 = 2;
      goto LABEL_5;
    }
  }

  else
  {
LABEL_58:
    if (*(a1 + 120) == *(a1 + 128) && capabilities::ct::supportedVinylSlotCount(isSimInTransientState))
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Vinyl info not ready - wait", buf, 2u);
      }

      if (v25 != a2)
      {
        sub_100169790(v25, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
      }
    }

    else
    {
      v30 = *a2;
      v31 = a2[1];
      if (*a2 == v31)
      {
        v34 = *a2;
LABEL_72:
        v36 = *(a1 + 144);
        v37 = *(a1 + 152);
        if (v37 - v36 != v34 - v30)
        {
          goto LABEL_85;
        }

        while (v36 != v37)
        {
          if (!BasicSimInfo::operator==())
          {
            goto LABEL_85;
          }

          v36 += 168;
          v30 += 168;
        }

        if (a3)
        {
LABEL_85:
          if (v25 != a2)
          {
            sub_100169790((a1 + 144), *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
          }

          v41 = *(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I No SIMs inserted", buf, 2u);
          }

          hasIccid_sync = *(a1 + 80);
          if (hasIccid_sync && (hasIccid_sync = std::__shared_weak_count::lock(hasIccid_sync)) != 0)
          {
            v43 = hasIccid_sync;
            v44 = *(a1 + 72);
            if (v44)
            {
              (*(*v44 + 16))(*(a1 + 72), 0);
              if (a3)
              {
                goto LABEL_97;
              }

              v45 = *(a1 + 831);
              if (v45 < 0)
              {
                v45 = *(a1 + 816);
              }

              if (v45 || *(a1 + 772) == 1)
              {
LABEL_97:
                *&buf[8] = 0uLL;
                *buf = &buf[8];
                sub_10000501C(&__p, "");
                (*(*v44 + 152))(v44, buf, &__p);
                if (SHIBYTE(v71) < 0)
                {
                  operator delete(__p);
                }

                sub_100009970(buf, *&buf[8]);
                sub_100009970(a1 + 784, *(a1 + 792));
                *(a1 + 784) = a1 + 792;
                *(a1 + 792) = 0u;
                LOBYTE(v44) = *(a1 + 772) == 1;
              }

              else
              {
                LOBYTE(v44) = 0;
              }
            }

            sub_100004A34(v43);
          }

          else
          {
            LOBYTE(v44) = 0;
          }

          for (i = *(a1 + 144); i != *(a1 + 152); i += 168)
          {
            if (*(i + 12) != 3)
            {
              goto LABEL_115;
            }
          }

          v47 = *(a1 + 944);
          while (v47 != (a1 + 952))
          {
            hasIccid_sync = CellularPlanListModelLocal::hasIccid_sync(hasIccid_sync, (v47 + 4), (a1 + 144));
            if (hasIccid_sync)
            {
              v48 = v47[1];
              if (v48)
              {
                do
                {
                  v47 = v48;
                  v48 = *v48;
                }

                while (v48);
              }

              else
              {
                do
                {
                  v49 = v47;
                  v47 = v47[2];
                }

                while (*v47 != v49);
              }
            }

            else
            {
              CellularPlanListModelLocal::removeManagedPersonality(a1, (v47 + 4), 1);
              hasIccid_sync = sub_100075658((a1 + 944), v47);
              v47 = hasIccid_sync;
              LOBYTE(v44) = 1;
            }
          }

LABEL_115:
          if (v44)
          {
            CellularPlanListModelLocal::persistUserData_sync(a1);
          }
        }
      }

      else
      {
        while (1)
        {
          isVirtualEsim = subscriber::isVirtualEsim();
          v33 = *(v30 + 8) == 1 ? 1 : isVirtualEsim;
          if ((v33 & 1) == 0)
          {
            break;
          }

          v30 += 168;
          if (v30 == v31)
          {
            v30 = *a2;
            v34 = a2[1];
            goto LABEL_72;
          }
        }

        if ((a3 & 1) != 0 || (*(a1 + 772) < 2u) | (v23 | v24) & 1)
        {
          memset(buf, 0, sizeof(buf));
          CellularPlanListModelLocal::recalculateSelections_sync(a1, a2, a3, buf);
          CellularPlanListModelLocal::maybeDisableSourceIccid_sync(a1, buf, &__p);
          sub_100009970(buf, *&buf[8]);
          v38 = v71;
          *buf = __p;
          *&buf[8] = v71;
          if (*(&v71 + 1))
          {
            *(v71 + 16) = &buf[8];
            __p = &v71;
            v71 = 0uLL;
            v38 = 0;
          }

          else
          {
            *buf = &buf[8];
          }

          sub_100009970(&__p, v38);
          if (*&buf[16])
          {
            CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(a1, &__p);
            v52 = *&buf[16] == *(&v71 + 1) && sub_1001737D4(*buf, &buf[8], __p);
            v53 = !v52;
            sub_100009970(&__p, v71);
          }

          else
          {
            v53 = 0;
          }

          if (v25 != a2)
          {
            sub_100169790((a1 + 144), *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
          }

          if (*&buf[16] == 2)
          {
            CellularPlanListModelLocal::maybeApplySourceDeviceUserPreferences_sync(a1, buf);
          }

          CellularPlanListModelLocal::updateCarrierNames_sync(a1, 3);
          v71 = 0uLL;
          __p = &v71;
          v65 = *buf;
          if (*buf != &buf[8])
          {
            do
            {
              CellularPlanEnablementTypeForIccid_sync = CellularPlanListModelLocal::getCellularPlanEnablementTypeForIccid_sync(a1, v65 + 4);
              v72 = v65 + 32;
              *(sub_100170224(&__p, v65 + 4) + 56) = CellularPlanEnablementTypeForIccid_sync;
              v67 = *(v65 + 1);
              if (v67)
              {
                do
                {
                  v68 = v67;
                  v67 = *v67;
                }

                while (v67);
              }

              else
              {
                do
                {
                  v68 = *(v65 + 2);
                  v59 = *v68 == v65;
                  v65 = v68;
                }

                while (!v59);
              }

              v65 = v68;
            }

            while (v68 != &buf[8]);
          }

          CellularPlanListModelLocal::setEnabledIccids_sync(a1, &__p, a3, 0);
          CellularPlanListModelLocal::notifyUpdateInstanceBasedPreferences_sync(a1);
          CellularPlanListModelLocal::simVinylInfoUpdated_sync(a1, v53);
          sub_100009970(&__p, v71);
          sub_100009970(buf, *&buf[8]);
        }

        else
        {
          v54 = *(a1 + 40);
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
          if (v55)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Tray absence detected, do not evaluate selection", buf, 2u);
          }

          if (v25 != a2)
          {
            sub_100169790((a1 + 144), *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
          }

          v56 = *(a1 + 784);
          if (v56 != a1 + 792)
          {
            do
            {
              v57 = (v56 + 32);
              if (CellularPlanListModelLocal::hasIccid_sync(v55, v56 + 32, (a1 + 144)))
              {
                v58 = *(v56 + 8);
                if (v58)
                {
                  do
                  {
                    v55 = v58;
                    v58 = *v58;
                  }

                  while (v58);
                }

                else
                {
                  do
                  {
                    v55 = *(v56 + 16);
                    v59 = *v55 == v56;
                    v56 = v55;
                  }

                  while (!v59);
                }
              }

              else
              {
                v60 = *(a1 + 40);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v56 + 55) < 0)
                  {
                    v57 = *v57;
                  }

                  *buf = 136315138;
                  *&buf[4] = v57;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I Removing ICCID from cache (%s)", buf, 0xCu);
                }

                v55 = sub_100075658((a1 + 784), v56);
              }

              v56 = v55;
            }

            while (v55 != (a1 + 792));
          }

          v61 = *(a1 + 80);
          if (v61)
          {
            v62 = std::__shared_weak_count::lock(v61);
            if (v62)
            {
              v63 = v62;
              v64 = *(a1 + 72);
              if (v64)
              {
                (*(*v64 + 16))(v64, 0);
              }

              sub_100004A34(v63);
            }
          }
        }
      }
    }
  }
}

void CellularPlanListModelLocal::removeManagedPersonality(uint64_t a1, uint64_t a2, int a3)
{
  (***(a1 + 56))(&v18);
  ServiceMap = Registry::getServiceMap(v18);
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  (*(*v14 + 88))(v14, __p);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if ((v15 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v13);
  }

LABEL_15:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (a3)
  {
    CellularPlanListModelLocal::erasePnrStatus(a1, a2);
  }
}

void sub_100154BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::recalculateSelections_sync(uint64_t ProfileDetails@<X0>, unsigned int **a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v5 = ProfileDetails;
  v6 = a4;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v127 = (a4 + 8);
  *a4 = a4 + 8;
  if (!*(ProfileDetails + 800))
  {
    if (!a3)
    {
      goto LABEL_92;
    }

    v19 = a2[1];
    if (*a2 == v19)
    {
      goto LABEL_92;
    }

    v20 = (*a2 + 18);
    while (1)
    {
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        if (!*(v20 + 8))
        {
          goto LABEL_85;
        }
      }

      else if (!*(v20 + 23))
      {
        goto LABEL_85;
      }

      v22 = *(v5 + 831);
      if (v22 >= 0)
      {
        v23 = *(v5 + 831);
      }

      else
      {
        v23 = *(v5 + 816);
      }

      if (v21 >= 0)
      {
        v24 = *(v20 + 23);
      }

      else
      {
        v24 = *(v20 + 8);
      }

      if (v23 == v24)
      {
        v25 = v22 >= 0 ? (v5 + 808) : *(v5 + 808);
        v26 = v21 >= 0 ? v20 : *v20;
        ProfileDetails = memcmp(v25, v26, v23);
        if (!ProfileDetails)
        {
          goto LABEL_85;
        }
      }

      v27 = *(v5 + 919);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v5 + 904);
      }

      if (v27 == v24)
      {
        v29 = v28 >= 0 ? (v5 + 896) : *(v5 + 896);
        v30 = v21 >= 0 ? v20 : *v20;
        ProfileDetails = memcmp(v29, v30, v24);
        if (!ProfileDetails)
        {
          goto LABEL_85;
        }
      }

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      memset(__p, 0, sizeof(__p));
      *v137 = 0u;
      *v135 = 0u;
      memset(v136, 0, sizeof(v136));
      *__dst = 0u;
      v134 = 0u;
      ProfileDetails = sGetProfileDetails();
      if (BYTE8(v144) != 1)
      {
        goto LABEL_72;
      }

      if (BYTE1(v137[1]))
      {
        goto LABEL_67;
      }

      if (BYTE2(v137[1]) == 1)
      {
        if (*(v5 + 772) != 1)
        {
          ProfileDetails = sub_100005BA0(v6, v20);
LABEL_67:
          v31 = 0;
          v32 = 3;
          goto LABEL_73;
        }

        if (*(v20 + 23) < 0)
        {
          sub_100005F2C(buf, *v20, *(v20 + 8));
        }

        else
        {
          v33 = *v20;
          v132[0] = *(v20 + 16);
          *buf = v33;
        }

        ProfileDetails = sub_100176728(v6, buf, &v132[1]);
        if (SHIBYTE(v132[0]) < 0)
        {
          operator delete(*buf);
        }

        v31 = 0;
        v32 = 2;
      }

      else
      {
LABEL_72:
        v32 = 0;
        v31 = 1;
      }

LABEL_73:
      if (BYTE8(v144) == 1)
      {
        ProfileDetails = sub_100E3A5D4(__dst);
      }

      if (v31)
      {
        (***(v5 + 56))(buf);
        *__dst = *buf;
        memset(buf, 0, sizeof(buf));
        isValidSimSlot = subscriber::isValidSimSlot();
        v6 = a4;
        if (*&__dst[8])
        {
          sub_100004A34(*&__dst[8]);
        }

        ProfileDetails = *&buf[8];
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (isValidSimSlot)
        {
          ProfileDetails = subscriber::isSimAbsent();
          if ((ProfileDetails & 1) == 0)
          {
            ProfileDetails = sub_100005BA0(a4, v20);
          }
        }
      }

      else
      {
        v6 = a4;
        if (v32 != 3 && v32)
        {
          goto LABEL_92;
        }
      }

LABEL_85:
      v35 = v20 + 96;
      v20 += 168;
      if (v35 == v19)
      {
        goto LABEL_92;
      }
    }
  }

  v7 = *(ProfileDetails + 784);
  v8 = (ProfileDetails + 792);
  if (v7 != (ProfileDetails + 792))
  {
    do
    {
      ProfileDetails = CellularPlanListModelLocal::hasIccid_sync(ProfileDetails, (v7 + 4), a2);
      if (ProfileDetails)
      {
        v9 = *(v5 + 831);
        if (v9 >= 0)
        {
          v10 = *(v5 + 831);
        }

        else
        {
          v10 = *(v5 + 816);
        }

        v11 = *(v7 + 55);
        v12 = v11;
        if (v11 < 0)
        {
          v11 = v7[5];
        }

        if (v10 == v11)
        {
          v13 = v9 >= 0 ? (v5 + 808) : *(v5 + 808);
          v14 = v12 >= 0 ? v7 + 4 : v7[4];
          if (!memcmp(v13, v14, v10))
          {
            v16 = *(v5 + 40);
            ProfileDetails = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
            if (ProfileDetails)
            {
              *__dst = 136315138;
              *&__dst[4] = v13;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "UserDisabledPhySimIccid (%s) set as user enabled profile - removing", __dst, 0xCu);
            }

            goto LABEL_25;
          }
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        memset(__p, 0, sizeof(__p));
        *v137 = 0u;
        *v135 = 0u;
        memset(v136, 0, sizeof(v136));
        *__dst = 0u;
        v134 = 0u;
        sGetProfileDetails();
        if (BYTE8(v144) == 1)
        {
          if (BYTE1(v137[1]) == 1)
          {
            v15 = *(v5 + 40);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) || (*buf = 0, _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Bootstrap set as user enabled profile - removing", buf, 2u), (BYTE8(v144) & 1) != 0))
            {
              ProfileDetails = sub_100E3A5D4(__dst);
            }

            goto LABEL_25;
          }

          sub_100E3A5D4(__dst);
        }

        ProfileDetails = sub_100005BA0(v6, v7 + 4);
      }

LABEL_25:
      v17 = v7[1];
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
          v18 = v7[2];
          v39 = *v18 == v7;
          v7 = v18;
        }

        while (!v39);
      }

      v7 = v18;
    }

    while (v18 != v8);
  }

LABEL_92:
  v36 = (v5 + 808);
  if ((CellularPlanListModelLocal::hasIccid_sync(ProfileDetails, v5 + 808, a2) & 1) == 0)
  {
    v37 = *a2;
    v38 = a2[1];
    while (v37 != v38)
    {
      if ((subscriber::isEsimCapable() & 1) == 0)
      {
        v39 = *(v5 + 772) == 1 && v37[1] == 1;
        if (!v39)
        {
          if (!subscriber::isSimInserted())
          {
            goto LABEL_113;
          }

          if (subscriber::isSimSettled())
          {
            v40 = *(v37 + 95);
            if ((v40 & 0x80u) != 0)
            {
              v40 = *(v37 + 10);
            }

            if (!v40)
            {
              goto LABEL_113;
            }
          }
        }
      }

      v37 += 42;
    }

    v41 = *(v5 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = (v5 + 808);
      if (*(v5 + 831) < 0)
      {
        v42 = *v36;
      }

      *__dst = 136315138;
      *&__dst[4] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Clearing disabled ICCID (%s)", __dst, 0xCu);
    }

    if (*(v5 + 831) < 0)
    {
      **(v5 + 808) = 0;
      *(v5 + 816) = 0;
    }

    else
    {
      *(v5 + 808) = 0;
      *(v5 + 831) = 0;
    }
  }

LABEL_113:
  v43 = *(v5 + 772);
  if (*(a4 + 16) < v43)
  {
    v44 = *(v5 + 80);
    if (!v44)
    {
      return;
    }

    v45 = std::__shared_weak_count::lock(v44);
    if (!v45)
    {
      return;
    }

    v46 = v45;
    v126 = *(v5 + 72);
    if (v126)
    {
      v125 = v45;
      v47 = *a2;
      v48 = a2[1];
      if (*a2 != v48)
      {
        do
        {
          if ((subscriber::isEsimCapable() & 1) == 0)
          {
            v49 = *(v47 + 95);
            if (v49 < 0)
            {
              if (*(v47 + 10))
              {
LABEL_123:
                v50 = (v47 + 18);
                v51 = *(v5 + 831);
                if (v51 >= 0)
                {
                  v52 = *(v5 + 831);
                }

                else
                {
                  v52 = *(v5 + 816);
                }

                v53 = *(v47 + 10);
                if (v49 >= 0)
                {
                  v53 = *(v47 + 95);
                }

                if (v52 == v53)
                {
                  v54 = (v51 >= 0 ? v5 + 808 : *v36);
                  v55 = v49 >= 0 ? v47 + 18 : *v50;
                  if (!memcmp(v54, v55, v52))
                  {
                    goto LABEL_190;
                  }
                }

                (***(v5 + 56))(__dst);
                ServiceMap = Registry::getServiceMap(*__dst);
                v57 = ServiceMap;
                if (v58 < 0)
                {
                  v59 = (v58 & 0x7FFFFFFFFFFFFFFFLL);
                  v60 = 5381;
                  do
                  {
                    v58 = v60;
                    v61 = *v59++;
                    v60 = (33 * v60) ^ v61;
                  }

                  while (v61);
                }

                std::mutex::lock(ServiceMap);
                *buf = v58;
                v62 = sub_100009510(&v57[1].__m_.__sig, buf);
                if (v62)
                {
                  v63 = v62[3];
                  v64 = v62[4];
                  if (v64)
                  {
                    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::mutex::unlock(v57);
                    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v64);
                    v65 = 0;
LABEL_144:
                    if (*&__dst[8])
                    {
                      sub_100004A34(*&__dst[8]);
                    }

                    if ((*(*v63 + 320))(v63, v47 + 18))
                    {
                      v66 = *(v5 + 40);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                      {
                        *__dst = 0;
                        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I SKIP auto enable abandoned 4FF", __dst, 2u);
                      }
                    }

                    else
                    {
                      sub_100005BA0(a4, v47 + 9);
                      if (v67)
                      {
                        v68 = *(v5 + 40);
                        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                        {
                          v69 = v47 + 18;
                          if (*(v47 + 95) < 0)
                          {
                            v69 = *v50;
                          }

                          *__dst = 136315138;
                          *&__dst[4] = v69;
                          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I 4FF Inserted (%s)", __dst, 0xCu);
                        }
                      }

                      if (v47[2] == 2 && (*(*v126 + 240))(v126, v47 + 18, 0))
                      {
                        v70 = *(v5 + 40);
                        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                        {
                          *__dst = 0;
                          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Handle travel 4FF", __dst, 2u);
                        }

                        memset(v132, 0, sizeof(v132));
                        *buf = 0u;
                        sub_100A34BC8(buf);
                        memset(__p, 0, sizeof(__p));
                        *v137 = 0u;
                        *v135 = 0u;
                        memset(v136, 0, sizeof(v136));
                        *__dst = 0u;
                        v134 = 0u;
                        if (*(v47 + 95) < 0)
                        {
                          sub_100005F2C(__dst, *(v47 + 9), *(v47 + 10));
                        }

                        else
                        {
                          *__dst = *v50;
                          *&v134 = *(v47 + 11);
                        }

                        BYTE8(v134) = 1;
                        if (SHIBYTE(v132[0]) < 0)
                        {
                          sub_100005F2C(v135, *buf, *&buf[8]);
                        }

                        else
                        {
                          *v135 = *buf;
                          v136[0] = v132[0];
                        }

                        if (SHIBYTE(v132[3]) < 0)
                        {
                          sub_100005F2C(&v136[1], v132[1], v132[2]);
                        }

                        else
                        {
                          *&v136[1] = *&v132[1];
                          v136[3] = v132[3];
                        }

                        if (*(v47 + 143) < 0)
                        {
                          sub_100005F2C(v137, *(v47 + 15), *(v47 + 16));
                        }

                        else
                        {
                          *v137 = *(v47 + 30);
                          __p[0] = *(v47 + 17);
                        }

                        if (*(v47 + 167) < 0)
                        {
                          sub_100005F2C(&__p[1], *(v47 + 18), *(v47 + 19));
                        }

                        else
                        {
                          *&__p[1] = *(v47 + 9);
                          __p[3] = *(v47 + 20);
                        }

                        CellularPlanListModelLocal::handleSimLabelsForTravel_sync(v5, __dst, *v47 | &_mh_execute_header);
                        CellularPlanListModelLocal::launchPreferencesURL(v5, (v47 + 18), 0);
                        if (SHIBYTE(__p[3]) < 0)
                        {
                          operator delete(__p[1]);
                        }

                        if (SHIBYTE(__p[0]) < 0)
                        {
                          operator delete(v137[0]);
                        }

                        if (SHIBYTE(v136[3]) < 0)
                        {
                          operator delete(v136[1]);
                        }

                        if (SHIBYTE(v136[0]) < 0)
                        {
                          operator delete(v135[0]);
                        }

                        if (BYTE8(v134) == 1 && SBYTE7(v134) < 0)
                        {
                          operator delete(*__dst);
                        }

                        if (SHIBYTE(v132[3]) < 0)
                        {
                          operator delete(v132[1]);
                        }

                        if (SHIBYTE(v132[0]) < 0)
                        {
                          operator delete(*buf);
                        }
                      }
                    }

                    if ((v65 & 1) == 0)
                    {
                      sub_100004A34(v64);
                    }

                    goto LABEL_190;
                  }
                }

                else
                {
                  v63 = 0;
                }

                std::mutex::unlock(v57);
                v64 = 0;
                v65 = 1;
                goto LABEL_144;
              }
            }

            else if (*(v47 + 95))
            {
              goto LABEL_123;
            }
          }

LABEL_190:
          v47 += 42;
        }

        while (v47 != v48);
      }

      v71 = *(v5 + 772) == 1 && *(a4 + 16) == 0;
      v46 = v125;
      if (!v71)
      {
        goto LABEL_353;
      }

      v72 = *(v5 + 831);
      if (v72 < 0)
      {
        v72 = *(v5 + 816);
      }

      if (v72)
      {
        sub_100073EE8(a4, (v5 + 808));
      }

      v73 = *(v5 + 120);
      v74 = *(v5 + 128);
      while (v73 != v74)
      {
        if (*(v73 + 80) == 1)
        {
          v75 = *(v73 + 56);
          v76 = *(v73 + 64);
          while (1)
          {
            if (v75 == v76)
            {
              goto LABEL_213;
            }

            if (*(v75 + 90) == 1)
            {
              break;
            }

            if (*v73 == 1 && *(v5 + 152) - *(v5 + 144) == 168)
            {
              if (*(a4 + 16))
              {
                v116 = *(v5 + 40);
                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                {
                  *__dst = 0;
                  v115 = "#I Multiple user profiles detected - not selecting anything";
LABEL_314:
                  _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, v115, __dst, 2u);
                }

LABEL_315:
                sub_100009970(a4, *(a4 + 8));
                *(a4 + 8) = 0;
                *(a4 + 16) = 0;
                *a4 = v127;
                goto LABEL_316;
              }

              goto LABEL_207;
            }

LABEL_212:
            v75 += 216;
          }

          if (*(v75 + 89) == 1)
          {
            v116 = *(v5 + 40);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              *__dst = 0;
              v115 = "#I Bootstrap active - not selecting anything";
              goto LABEL_314;
            }

            goto LABEL_315;
          }

LABEL_207:
          sub_100005BA0(a4, (v75 + 16));
          goto LABEL_212;
        }

LABEL_213:
        v73 += 88;
      }

      if (sub_10016FA58(a4, (v5 + 808)))
      {
        v114 = *(v5 + 40);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v5 + 831) < 0)
          {
            v36 = *v36;
          }

          *__dst = 136315138;
          *&__dst[4] = v36;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I No eSIMs available - physical SIM present, enabling: (%s)", __dst, 0xCu);
        }

        if (*(v5 + 831) < 0)
        {
          **(v5 + 808) = 0;
          *(v5 + 816) = 0;
        }

        else
        {
          *(v5 + 808) = 0;
          *(v5 + 831) = 0;
        }

        goto LABEL_316;
      }

LABEL_353:
      sub_100004A34(v46);
      goto LABEL_354;
    }

LABEL_316:
    sub_100004A34(v46);
    return;
  }

  if (v43 != 1)
  {
    v92 = *(v5 + 80);
    if (!v92)
    {
      return;
    }

    v93 = std::__shared_weak_count::lock(v92);
    if (!v93)
    {
      return;
    }

    v46 = v93;
    v94 = *(v5 + 72);
    if (!v94)
    {
      goto LABEL_316;
    }

    v95 = a2[1];
    if (*a2 == v95)
    {
      goto LABEL_353;
    }

    v96 = *a2 + 167;
    v97 = v93;
    while (1)
    {
      if ((*(v96 - 72) & 0x8000000000000000) != 0)
      {
        if (!*(v96 - 87))
        {
          goto LABEL_291;
        }
      }

      else if (!*(v96 - 72))
      {
        goto LABEL_291;
      }

      if ((subscriber::isEsimCapable() & 1) == 0)
      {
        v98 = v96 - 95;
        v99 = *(v5 + 831);
        if (v99 >= 0)
        {
          v100 = *(v5 + 831);
        }

        else
        {
          v100 = *(v5 + 816);
        }

        v101 = *(v96 - 72);
        v102 = v101;
        if ((v101 & 0x80u) != 0)
        {
          v101 = *(v96 - 87);
        }

        if (v100 != v101 || (v99 >= 0 ? (v103 = (v5 + 808)) : (v103 = *v36), v102 >= 0 ? (v104 = v96 - 95) : (v104 = *v98), memcmp(v103, v104, v100)))
        {
          if (!sub_10016FA58(a4, (v96 - 95)))
          {
            if (*(v96 - 159) == 2 && (*(*v94 + 240))(v94, v96 - 95, 0))
            {
              v118 = *(v5 + 40);
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                v119 = v96 - 95;
                if (*(v96 - 72) < 0)
                {
                  v119 = *v98;
                }

                *__dst = 136315138;
                *&__dst[4] = v119;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I Handle travel 4FF (%s)", __dst, 0xCu);
              }

              memset(v132, 0, sizeof(v132));
              *buf = 0u;
              sub_100A34BC8(buf);
              memset(__p, 0, sizeof(__p));
              *v137 = 0u;
              *v135 = 0u;
              memset(v136, 0, sizeof(v136));
              *__dst = 0u;
              v134 = 0u;
              if (*(v96 - 72) < 0)
              {
                sub_100005F2C(__dst, *(v96 - 95), *(v96 - 87));
              }

              else
              {
                v120 = *v98;
                *&v134 = *(v96 - 79);
                *__dst = v120;
              }

              BYTE8(v134) = 1;
              if (SHIBYTE(v132[0]) < 0)
              {
                sub_100005F2C(v135, *buf, *&buf[8]);
              }

              else
              {
                *v135 = *buf;
                v136[0] = v132[0];
              }

              if (SHIBYTE(v132[3]) < 0)
              {
                sub_100005F2C(&v136[1], v132[1], v132[2]);
              }

              else
              {
                *&v136[1] = *&v132[1];
                v136[3] = v132[3];
              }

              if (*(v96 - 24) < 0)
              {
                sub_100005F2C(v137, *(v96 - 47), *(v96 - 39));
              }

              else
              {
                v121 = *(v96 - 47);
                __p[0] = *(v96 - 31);
                *v137 = v121;
              }

              if (*v96 < 0)
              {
                sub_100005F2C(&__p[1], *(v96 - 23), *(v96 - 15));
              }

              else
              {
                v122 = *(v96 - 23);
                __p[3] = *(v96 - 7);
                *&__p[1] = v122;
              }

              CellularPlanListModelLocal::handleSimLabelsForTravel_sync(v5, __dst, *(v96 - 167) | &_mh_execute_header);
              CellularPlanListModelLocal::launchPreferencesURL(v5, (v96 - 95), 0);
              if (SHIBYTE(__p[3]) < 0)
              {
                operator delete(__p[1]);
              }

              if (SHIBYTE(__p[0]) < 0)
              {
                operator delete(v137[0]);
              }

              if (SHIBYTE(v136[3]) < 0)
              {
                operator delete(v136[1]);
              }

              if (SHIBYTE(v136[0]) < 0)
              {
                operator delete(v135[0]);
              }

              if (BYTE8(v134) == 1 && SBYTE7(v134) < 0)
              {
                operator delete(*__dst);
              }

              if (SHIBYTE(v132[3]) < 0)
              {
                operator delete(v132[1]);
              }

              if (SHIBYTE(v132[0]) < 0)
              {
                operator delete(*buf);
              }

              goto LABEL_353;
            }

            v105 = *(v5 + 40);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v106 = v96 - 95;
              if (*(v96 - 72) < 0)
              {
                v106 = *v98;
              }

              *__dst = 136315138;
              *&__dst[4] = v106;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I New 4FF Inserted (%s)", __dst, 0xCu);
            }

            v46 = v97;
            if (*(v5 + 800) == *(v5 + 772) && CellularPlanListModelLocal::isHydraSupported_sync(v5))
            {
              CellularPlanListModelLocal::launchPreferencesURL(v5, (v96 - 95), 1);
              goto LABEL_353;
            }

            if (*(v96 - 72) < 0)
            {
              sub_100005F2C(__dst, *(v96 - 95), *(v96 - 87));
            }

            else
            {
              v107 = *v98;
              *&v134 = *(v96 - 79);
              *__dst = v107;
            }

            v108 = sub_100007A6C(v5 + 296, __dst);
            if (SBYTE7(v134) < 0)
            {
              operator delete(*__dst);
            }

            if (v5 + 304 == v108)
            {
              goto LABEL_317;
            }

            v109 = *(v108 + 127);
            if (v109 < 0)
            {
              v109 = *(v108 + 112);
            }

            if (!v109)
            {
LABEL_317:
              (*(*v94 + 56))(v94);
              goto LABEL_353;
            }
          }
        }
      }

LABEL_291:
      v110 = v96 + 1;
      v96 += 168;
      if (v110 == v95)
      {
        goto LABEL_353;
      }
    }
  }

  v77 = *(v5 + 144);
  v78 = *(v5 + 152);
  while (1)
  {
    if (v77 == v78)
    {
      goto LABEL_354;
    }

    if ((subscriber::isEsimCapable() & 1) == 0)
    {
      v79 = a2[1];
      if (*a2 != v79)
      {
        break;
      }
    }

LABEL_249:
    v77 += 168;
  }

  v80 = (*a2 + 18);
  while (1)
  {
    v81 = *(v80 + 23);
    if (v81 < 0)
    {
      break;
    }

    if (*(v80 + 23))
    {
      goto LABEL_224;
    }

LABEL_248:
    v91 = v80 + 96;
    v80 += 168;
    if (v91 == v79)
    {
      goto LABEL_249;
    }
  }

  if (!*(v80 + 8))
  {
    goto LABEL_248;
  }

LABEL_224:
  if (*(v77 + 4) != *(v80 - 68))
  {
    goto LABEL_248;
  }

  if (v81 >= 0)
  {
    v82 = *(v80 + 23);
  }

  else
  {
    v82 = *(v80 + 8);
  }

  v83 = *(v77 + 95);
  v84 = v83;
  if ((v83 & 0x80u) != 0)
  {
    v83 = *(v77 + 80);
  }

  if (v82 == v83)
  {
    v85 = v81 >= 0 ? v80 : *v80;
    v86 = v84 >= 0 ? (v77 + 72) : *(v77 + 72);
    if (!memcmp(v85, v86, v82))
    {
      goto LABEL_248;
    }
  }

  v87 = *(v5 + 831);
  v88 = v87;
  if ((v87 & 0x80u) != 0)
  {
    v87 = *(v5 + 816);
  }

  if (v87 == v82)
  {
    v89 = (v88 >= 0 ? v5 + 808 : *v36);
    v90 = v81 >= 0 ? v80 : *v80;
    if (!memcmp(v89, v90, v82))
    {
      goto LABEL_248;
    }
  }

  v111 = *(v5 + 40);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    v112 = v80;
    if ((v81 & 0x80000000) != 0)
    {
      v112 = *v80;
    }

    *__dst = 136315138;
    *&__dst[4] = v112;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I New 4FF Detected (%s)", __dst, 0xCu);
    LOBYTE(v81) = *(v80 + 23);
  }

  if ((v81 & 0x80) != 0)
  {
    sub_100005F2C(__dst, *v80, *(v80 + 8));
  }

  else
  {
    v113 = *v80;
    *&v134 = *(v80 + 16);
    *__dst = v113;
  }

  sub_100176728(a4, __dst, (&v134 + 8));
  if (SBYTE7(v134) < 0)
  {
    operator delete(*__dst);
  }

LABEL_354:
  if (*(a4 + 16) > *(v5 + 772) && os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_100074B94(*a4, v127, ",", 1, __dst);
    sub_101762174(__dst);
  }

  if (*(v5 + 400) == 1)
  {
    v123 = *(v5 + 40);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = (v5 + 368);
      if (*(v5 + 391) < 0)
      {
        v124 = *v124;
      }

      *v129 = 136315138;
      v130 = v124;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I Deletion ongoing, donot enable iccid: %s", v129, 0xCu);
    }

    sub_1000727F0(a4, (v5 + 368));
  }
}

void sub_100155F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(a25);
  }

  sub_1000D6F38(&a19);
  sub_100004A34(v49);
  sub_100009970(a16, *(a16 + 8));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::maybeDisableSourceIccid_sync(void *a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_100074920(a3, a2);
  v6 = a1[10];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[9];
      if (v9)
      {
        v12 = *a2;
        v10 = (a2 + 1);
        v11 = v12;
        if (v12 != v10)
        {
          while (1)
          {
            if ((CellularPlanListModelLocal::isIccidForPhySlot_sync(a1, (v11 + 4)) & 1) == 0)
            {
              goto LABEL_28;
            }

            (*(*v9 + 96))(v31, v9, v11 + 4);
            if ((v34 & 1) == 0)
            {
LABEL_23:
              v21 = 3;
              goto LABEL_24;
            }

            v13 = SHIBYTE(v33);
            v14 = *(&__src + 1);
            if (v33 >= 0)
            {
              v15 = HIBYTE(v33);
            }

            else
            {
              v15 = *(&__src + 1);
            }

            v16 = *(v11 + 55);
            v17 = v16;
            if (v16 < 0)
            {
              v16 = v11[5];
            }

            if (v15 == v16)
            {
              if (v33 >= 0)
              {
                p_src = &__src;
              }

              else
              {
                p_src = __src;
              }

              if (v17 >= 0)
              {
                v19 = v11 + 4;
              }

              else
              {
                v19 = v11[4];
              }

              v20 = memcmp(p_src, v19, v15) && LOBYTE(v31[0]) == 7;
              if (!v20)
              {
                goto LABEL_23;
              }
            }

            else if (LOBYTE(v31[0]) != 7)
            {
              goto LABEL_23;
            }

            if (v13 < 0)
            {
              sub_100005F2C(__p, __src, v14);
            }

            else
            {
              *__p = __src;
              v29 = v33;
            }

            v30 = 1;
            v24 = (*(*v9 + 200))(v9, __p);
            if (v30 == 1 && SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

            if (v24)
            {
              break;
            }

            if (sub_10064A7B0(v31))
            {
              v26 = a1[5];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *v27 = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Monitor mode was successfully completed", v27, 2u);
              }

              sub_1000727F0(a3, v11 + 4);
LABEL_49:
              v21 = 2;
              goto LABEL_24;
            }

            v21 = 0;
LABEL_24:
            if (v34 == 1)
            {
              sub_1002813D0(v31);
            }

            if (v21 != 3 && v21)
            {
              goto LABEL_51;
            }

LABEL_28:
            v22 = v11[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v11[2];
                v20 = *v23 == v11;
                v11 = v23;
              }

              while (!v20);
            }

            v11 = v23;
            if (v23 == v10)
            {
              goto LABEL_51;
            }
          }

          v25 = a1[5];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            v21 = 2;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Monitor mode is in progress", v27, 2u);
            goto LABEL_24;
          }

          goto LABEL_49;
        }
      }

LABEL_51:
      sub_100004A34(v8);
    }
  }
}

void sub_1001564B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a10 == 1 && a9 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x538]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v12);
  sub_100009970(v11, *(v11 + 8));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::maybeApplySourceDeviceUserPreferences_sync(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  CellularPlanListModelLocal::getUserPreferencesBasedOnSourceDevice_sync(a1, &v10 + 1, &v10, a2, v3);
  if (HIBYTE(v10) == 1 && v10 == 1 && v9 == 1)
  {
    CellularPlanListModelLocal::applySourceDeviceUserPreferences_sync(a1, v3);
  }

  if (v9 == 1)
  {
    if (v8 < 0)
    {
      operator delete(__p);
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }

    sub_1000DD0AC(v3, v4);
  }
}

void sub_1001565C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001510E4(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::getCellularPlanEnablementTypeForIccid_sync(uint64_t a1, void **a2)
{
  if (sub_10016FA58(a1 + 784, a2))
  {
    v4 = *sub_1000E20F0(a1 + 784, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void CellularPlanListModelLocal::simVinylInfoUpdated_sync(CellularPlanListModelLocal *this, uint64_t a2)
{
  CellularPlanListModelLocal::maybeUpdateItemUuids_sync(this);
  v4 = *(this + 10);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 9);
      if (v7)
      {
        (*(*v7 + 16))(*(this + 9), a2);
        CellularPlanListModelLocal::calculateLaunchSimSetup_sync(this, v9);
        v8 = v9[0];
        sub_100077CD4(v10, v10[1]);
        if (v8)
        {
          (*(*v7 + 56))(v7);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void CellularPlanListModelLocal::setVinylInfo_sync(CellularPlanListModelLocal *this, uint64_t *a2)
{
  v2 = a2;
  v5 = *a2;
  v4 = a2[1];
  v6 = *(this + 15);
  v29 = (this + 120);
  v7 = *(this + 16);
  v8 = v4 - *a2;
  v9 = v7 - v6;
  if (v8 == v7 - v6)
  {
    while (1)
    {
      if (v5 == v4)
      {
        if (v6 == v7)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }

      if (v6 == v7)
      {
        goto LABEL_27;
      }

      if (!sub_100169A18(v5, v6))
      {
        break;
      }

      v5 += 88;
      v6 += 88;
      v8 -= 88;
      v9 -= 88;
    }

    if (v9 == v8)
    {
      if (v5 != v4)
      {
        v12 = 0;
        v13 = v5;
        v30 = v2;
        do
        {
          v14 = v12;
          v15 = v5;
          if (v5 == v13)
          {
LABEL_17:
            v16 = 0;
            v17 = v6;
            do
            {
              v16 += sub_100169A18(v13, v17);
              v17 += 88;
            }

            while (v17 != v7);
            if (!v16)
            {
              goto LABEL_27;
            }

            v18 = v13 + 88;
            v19 = 1;
            while (v18 != v4)
            {
              v19 += sub_100169A18(v13, v18);
              v18 += 88;
            }

            v20 = v19 == v16;
            v2 = v30;
            if (!v20)
            {
              goto LABEL_27;
            }
          }

          else
          {
            while ((sub_100169A18(v15, v13) & 1) == 0)
            {
              v15 += 88;
              v14 -= 88;
              if (!v14)
              {
                goto LABEL_17;
              }
            }
          }

          v13 += 88;
          v12 += 88;
        }

        while (v13 != v4);
      }

LABEL_7:
      if (v29 != v2)
      {
        sub_100169D44(v29, *v2, v2[1], 0x2E8BA2E8BA2E8BA3 * ((v2[1] - *v2) >> 3));
      }

      v10 = *(this + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I No change in profiles - skip";
        goto LABEL_69;
      }

      return;
    }
  }

LABEL_27:
  v21 = *v2;
  v31 = v2[1];
  if (*v2 != v31)
  {
    v22 = this + 256;
    while (*(v21 + 80) != 1)
    {
LABEL_62:
      v21 += 88;
      if (v21 == v31)
      {
        goto LABEL_63;
      }
    }

    v24 = *(v21 + 56);
    v23 = *(v21 + 64);
    while (1)
    {
      if (v24 == v23)
      {
        goto LABEL_62;
      }

      if ((*(**(this + 7) + 152))(*(this + 7)))
      {
        if ((*(v24 + 39) & 0x8000000000000000) != 0)
        {
          if (!*(v24 + 24))
          {
            goto LABEL_36;
          }

LABEL_35:
          CellularPlanListModelLocal::updateCountryCode(this, v24 + 96, v24 + 120, v24 + 144, v24 + 168, v24 + 16);
          goto LABEL_36;
        }

        if (*(v24 + 39))
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      if ((*(v24 + 89) & 1) == 0)
      {
        v25 = sub_100007A6C(this + 248, (v24 + 16));
        v26 = v25;
        if (v22 == v25 || (*(v25 + 640) & 1) == 0)
        {
          if ((*(**(this + 7) + 184))(*(this + 7), v24 + 96, v24 + 120, v24 + 144, v24 + 168, v24 + 16))
          {
            v43 = 0u;
            v44 = 0u;
            memset(v42, 0, sizeof(v42));
            v41 = 0u;
            *v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            *v38 = 0u;
            v35 = 0u;
            *v36 = 0u;
            *buf = 0u;
            BYTE9(v44) = 1;
            std::string::operator=(v36, (v24 + 16));
            (*(**(this + 7) + 200))(&v32);
            if (SHIBYTE(v42[3]) < 0)
            {
              operator delete(v42[1]);
            }

            *&v42[1] = v32;
            v42[3] = v33;
            *&v32 = v36;
            v27 = sub_1001705A0(this + 248, v36);
            sub_100156E08(v27 + 448, buf);
            if (SBYTE7(v44) < 0)
            {
              operator delete(v43);
            }

            if (SHIBYTE(v42[3]) < 0)
            {
              operator delete(v42[1]);
            }

            if (SHIBYTE(v42[0]) < 0)
            {
              operator delete(v41);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[1]);
            }

            if (SHIBYTE(v39[0]) < 0)
            {
              operator delete(v38[0]);
            }

            if (SBYTE7(v37) < 0)
            {
              operator delete(v36[0]);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(*&buf[8]);
            }
          }

          if (v22 == v26)
          {
            goto LABEL_58;
          }
        }

        if ((v26[233] & 1) == 0)
        {
LABEL_58:
          v28 = (*(**(this + 7) + 208))(*(this + 7), v24 + 96, v24 + 120, v24 + 144, v24 + 168, v24 + 16);
          *buf = v24 + 16;
          *(sub_1001705A0(this + 248, (v24 + 16)) + 232) = v28 | 0x100;
        }
      }

      v24 += 216;
    }
  }

LABEL_63:
  if (v29 != v2)
  {
    sub_100169D44(v29, *v2, v2[1], 0x2E8BA2E8BA2E8BA3 * ((v2[1] - *v2) >> 3));
  }

  CellularPlanListModelLocal::maybeApplySourceDeviceEsimLabels_sync(this);
  if (*(this + 19) == *(this + 18))
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "#I No SIM info present - wait";
LABEL_69:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else
  {
    CellularPlanListModelLocal::setSimInfo_sync(this, this + 18, 1);
  }
}

void sub_100156C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10011289C(va);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::updateCountryCode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(**(a1 + 56) + 152))(*(a1 + 56)))
  {
    v10 = *(a6 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a6 + 8);
    }

    if (v10)
    {
      v11 = *(a2 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a2 + 8);
      }

      if (v11)
      {
        v12 = *(a3 + 23);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a3 + 8);
        }

        if (v12)
        {
          v16 = a6;
          if ((*(sub_1001705A0(a1 + 248, a6) + 208) & 1) == 0)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            (*(**(a1 + 56) + 136))(&v16);
            if (v18)
            {
              v13 = v16;
              v19 = a6;
              v14 = sub_1001705A0(a1 + 248, a6);
              sub_1001696A4((v14 + 184), (v13 + 32));
            }

            else
            {
              v19 = a6;
              v15 = sub_1001705A0(a1 + 248, a6);
              sub_100169660((v15 + 184), "");
            }

            sub_100009970(&v16, v17);
          }
        }
      }
    }
  }
}

uint64_t sub_100156E08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 192) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 64), (a2 + 64));
    std::string::operator=((a1 + 88), (a2 + 88));
    std::string::operator=((a1 + 112), (a2 + 112));
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    *(a1 + 184) = *(a2 + 184);
  }

  else
  {
    sub_10016A078(a1, a2);
    *(a1 + 192) = 1;
  }

  return a1;
}

void CellularPlanListModelLocal::maybeApplySourceDeviceEsimLabels_sync(CellularPlanListModelLocal *this)
{
  if (((*(**(this + 7) + 40))(*(this + 7)) & 1) == 0)
  {
    v2 = *(this + 15);
    v3 = *(this + 16);
    while (v2 != v3)
    {
      if (*(v2 + 12) == 3 && *(v2 + 80) == 1)
      {
        v4 = *(v2 + 56);
        v5 = *(v2 + 64);
        while (v4 != v5)
        {
          if ((*(v4 + 89) & 1) == 0)
          {
            CellularPlanListModelLocal::setupSimLabelForNewPlan_sync(this, (v4 + 16), *(v2 + 4));
          }

          v4 += 216;
        }
      }

      v2 += 88;
    }
  }
}

void CellularPlanListModelLocal::setBuddyState_sync(CellularPlanListModelLocal *a1, int a2)
{
  *(a1 + 80) = a2;
  CellularPlanListModelLocal::maybeApplySourceDeviceEsimLabels_sync(a1);

  CellularPlanListModelLocal::persistMultiSimUserPreferences_sync(a1);
}

uint64_t **CellularPlanListModelLocal::setKnownAuthState_sync(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 328);
  if (result != a2)
  {
    return sub_10017389C(result, *a2, a2 + 1);
  }

  return result;
}

void CellularPlanListModelLocal::setPhoneNumbers_sync(CellularPlanListModelLocal *this, uint64_t **a2)
{
  v4 = (this + 168);
  if (v4 != a2)
  {
    sub_100173B6C(v4, *a2, a2 + 1);
  }

  CellularPlanListModelLocal::notifyLocalPlanInfoUpdate(this);
  v5 = *(this + 10);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 9);
      if (v8)
      {
        LOBYTE(__p) = 0;
        v28 = 0;
        v9 = (*(*v8 + 200))(v8, &__p);
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if ((v9 & 1) != 0 || !CellularPlanListModelLocal::arePhoneNumbersSameForBothSlots(this, a2))
        {
          (*(*v8 + 56))(v8);
        }

        else
        {
          SlotToDisable = CellularPlanListModelLocal::getSlotToDisable(this, a2);
          if ((SlotToDisable & 0x100000000) != 0)
          {
            *v24 = 0u;
            v25 = 0u;
            CellularPlanListModelLocal::getActiveIccidForSlot_sync(this, SlotToDisable, v24);
            v11 = BYTE8(v25);
            if ((BYTE8(v25) & 1) == 0)
            {
LABEL_38:
              if ((v11 & 1) != 0 && SBYTE7(v25) < 0)
              {
                operator delete(v24[0]);
              }

              goto LABEL_22;
            }

            *v22 = 0u;
            v23 = 0u;
            if (SlotToDisable == 1)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            CellularPlanListModelLocal::getActiveIccidForSlot_sync(this, v12, v22);
            if ((CellularPlanListModelLocal::isOffloadSim(this, v24) & 1) != 0 || CellularPlanListModelLocal::isOffloadSim(this, v22))
            {
              v13 = *(this + 5);
              if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_34;
              }

              *buf = 0;
              v14 = "#I Do not disable offload SIM";
              v15 = v13;
              v16 = 2;
            }

            else
            {
              CellularPlanEnablementTypeForIccid_sync = CellularPlanListModelLocal::getCellularPlanEnablementTypeForIccid_sync(this, v24);
              v18 = *(this + 5);
              v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              if (!CellularPlanEnablementTypeForIccid_sync)
              {
                if (v19)
                {
                  v21 = v24;
                  if (SBYTE7(v25) < 0)
                  {
                    v21 = v24[0];
                  }

                  *buf = 136315138;
                  v30 = v21;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Disable SIM with iccid [%s].", buf, 0xCu);
                }

                CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(this, 0, v24, 0);
                CellularPlanListModelLocal::forceTransferSimLabel(this, v24, v22, 0);
                goto LABEL_34;
              }

              if (!v19)
              {
LABEL_34:
                if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
                {
                  operator delete(v22[0]);
                }

                v11 = BYTE8(v25);
                goto LABEL_38;
              }

              v20 = v24;
              if (SBYTE7(v25) < 0)
              {
                v20 = v24[0];
              }

              *buf = 136315138;
              v30 = v20;
              v14 = "#I Iccid [%s] is explicitly enabled by user and do not disable it";
              v15 = v18;
              v16 = 12;
            }

            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
            goto LABEL_34;
          }
        }
      }

LABEL_22:
      sub_100004A34(v7);
    }
  }
}

void sub_1001572D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  sub_100004A34(v29);
  _Unwind_Resume(a1);
}

BOOL CellularPlanListModelLocal::arePhoneNumbersSameForBothSlots(void *a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  v3 = *(*a2 + 32);
  *v13 = 0u;
  v14 = 0u;
  CellularPlanListModelLocal::getActiveIccidForSlot_sync(a1, v3, v13);
  if (BYTE8(v14) != 1)
  {
    v6 = 0;
    if ((BYTE8(v14) & 1) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  CellularPlanListModelLocal::getIccidIfSameCellularPlanDetected_sync(a1, v13, v3, &__p);
  v4 = HIBYTE(v12);
  v5 = HIBYTE(v12);
  if (v12 < 0)
  {
    v4 = v11;
  }

  v6 = v4 != 0;
  if (!v4)
  {
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cannot find a matching phone number to disable and early return", v9, 2u);
      v5 = HIBYTE(v12);
    }
  }

  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (BYTE8(v14))
  {
LABEL_14:
    if (SBYTE7(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  return v6;
}

void sub_100157474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CellularPlanListModelLocal::getSlotToDisable(void *a1, uint64_t a2)
{
  if (*(a2 + 16) == 2 && (v3 = a1[10]) != 0 && (v4 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v5 = v4;
    v6 = a1[9];
    if (v6)
    {
      subscriber::makeSimSlotRange();
      v7 = v14;
      if (v14 == v15)
      {
        goto LABEL_23;
      }

      do
      {
        if (v16(*v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != v15);
      if (v7 == v15)
      {
        goto LABEL_23;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*&v6->magic + 184);
        if (*v7 == 1)
        {
          v8 = v10(v6, 1);
        }

        else
        {
          v9 = v10(v6, 2);
        }

        do
        {
          ++v7;
        }

        while (v7 != v15 && (v16(*v7) & 1) == 0);
      }

      while (v7 != v15);
      if (((v9 ^ v8) & 1) == 0)
      {
LABEL_23:
        v13 = a1[5];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Both slots have same registration status", &v14, 2u);
        }

        v11 = 0;
        v6 = 0;
      }

      else
      {
        if (v8)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        v6 = &_mh_execute_header;
      }
    }

    else
    {
      v11 = 0;
    }

    sub_100004A34(v5);
  }

  else
  {
    v6 = 0;
    v11 = 0;
  }

  return v11 | v6;
}

void CellularPlanListModelLocal::getActiveIccidForSlot_sync(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1017621E0(a2, v5);
    }

LABEL_11:
    v9 = 0;
    *a3 = 0;
    goto LABEL_14;
  }

  v6 = a1[18];
  v7 = a1[19];
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      v6 += 168;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v7)
  {
    goto LABEL_11;
  }

  if (*(v6 + 95) < 0)
  {
    sub_100005F2C(a3, *(v6 + 72), *(v6 + 80));
  }

  else
  {
    v8 = *(v6 + 72);
    *(a3 + 16) = *(v6 + 88);
    *a3 = v8;
  }

  v9 = 1;
LABEL_14:
  *(a3 + 24) = v9;
}

uint64_t CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(CellularPlanListModelLocal *this, int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(this);
    v8 = *(this + 10);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(this + 9);
        if (v11)
        {
          if (*(a3 + 23) < 0)
          {
            sub_100005F2C(__p, *a3, *(a3 + 8));
          }

          else
          {
            *__p = *a3;
            v76 = *(a3 + 16);
          }

          (*(*v11 + 216))(v11, __p);
          if (SHIBYTE(v76) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100004A34(v10);
      }
    }

    if (a2 == 2)
    {
      v12 = *(this + 10);
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          v14 = *(this + 9);
          if (v14)
          {
            if ((*(*v14 + 168))(*(this + 9), a3))
            {
              if (((*(**(this + 7) + 40))(*(this + 7)) & 1) == 0)
              {
                v15 = *(this + 5);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v16 = a3;
                  }

                  else
                  {
                    v16 = *a3;
                  }

                  *buf = 136315138;
                  *&buf[4] = v16;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I User re-enabled ICCID (%s) on source!", buf, 0xCu);
                }

                v74[0] = 0;
                v74[1] = 0;
                v73 = v74;
                v91[0] = 0;
                (*(*v14 + 224))(v14, &v73, a3, v91, 1);
                if (v91[0] == 1)
                {
                  if (v94[24] == 1)
                  {
                    *buf = v94;
                    sub_100112120(buf);
                  }

                  if (v93 < 0)
                  {
                    operator delete(v92);
                  }

                  v91[0] = 0;
                }

                sub_100009970(&v73, v74[0]);
              }

              goto LABEL_30;
            }

            (***(this + 7))(buf);
            ServiceMap = Registry::getServiceMap(*buf);
            v26 = ServiceMap;
            if (v27 < 0)
            {
              v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
              v29 = 5381;
              do
              {
                v27 = v29;
                v30 = *v28++;
                v29 = (33 * v29) ^ v30;
              }

              while (v30);
            }

            std::mutex::lock(ServiceMap);
            v70 = v27;
            v31 = sub_100009510(&v26[1].__m_.__sig, &v70);
            if (v31)
            {
              v33 = v31[3];
              v32 = v31[4];
              if (v32)
              {
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v26);
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v32);
                v34 = 0;
LABEL_163:
                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                if (v33 && (*(*v33 + 320))(v33, a3))
                {
                  v58 = *(this + 5);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(a3 + 23) >= 0)
                    {
                      v59 = a3;
                    }

                    else
                    {
                      v59 = *a3;
                    }

                    *buf = 136315138;
                    *&buf[4] = v59;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Out of band transferred and unmark SIM (%s) from abandon", buf, 0xCu);
                  }

                  (*(*v33 + 312))(v33, a3);
                }

                if ((v34 & 1) == 0)
                {
                  sub_100004A34(v32);
                }

                goto LABEL_30;
              }
            }

            else
            {
              v33 = 0;
            }

            std::mutex::unlock(v26);
            v32 = 0;
            v34 = 1;
            goto LABEL_163;
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_30:
      v17 = *(a3 + 23);
      if (v17 >= 0)
      {
        v18 = *(a3 + 23);
      }

      else
      {
        v18 = *(a3 + 8);
      }

      v19 = *(this + 1087);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(this + 134);
      }

      if (v18 == v19)
      {
        v21 = (this + 1064);
        v22 = v17 >= 0 ? a3 : *a3;
        v23 = *v21;
        v24 = v20 >= 0 ? (this + 1064) : *v21;
        if (!memcmp(v22, v24, v18))
        {
          if (v20 < 0)
          {
            *v23 = 0;
            *(this + 134) = 0;
          }

          else
          {
            *(this + 1064) = 0;
            *(this + 1087) = 0;
          }
        }
      }

      if (v13)
      {
        sub_100004A34(v13);
      }
    }
  }

  v35 = *(a3 + 23);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(a3 + 8);
  }

  if (v35)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          if (!sub_10016FA58(this + 784, a3) || sub_10016FA58(this + 944, a3))
          {
            v71 = 0;
            v72 = 0;
            v70 = &v71;
            if (sub_1000727F0(this + 118, a3))
            {
              CellularPlanListModelLocal::removeManagedPersonality(this, a3, 0);
            }

            v36 = *(this + 193);
            if (v36 == 1)
            {
              goto LABEL_184;
            }

            if (*(this + 100) < v36)
            {
              if (CellularPlanListModelLocal::isHydraSupported_sync(this) || CellularPlanListModelLocal::isIccidForPhySlot_sync(this, a3))
              {
                if (&v70 != (this + 784))
                {
                  sub_1001741DC(&v70, *(this + 98), this + 99);
                }
              }

              else
              {
                v60 = *(this + 98);
                if (v60 != (this + 792))
                {
                  do
                  {
                    if (CellularPlanListModelLocal::isIccidForPhySlot_sync(this, v60 + 32))
                    {
                      CellularPlanEnablementTypeForIccid_sync = CellularPlanListModelLocal::getCellularPlanEnablementTypeForIccid_sync(this, v60 + 4);
                      *buf = v60 + 32;
                      *(sub_100170224(&v70, v60 + 4) + 56) = CellularPlanEnablementTypeForIccid_sync;
                    }

                    v62 = *(v60 + 1);
                    if (v62)
                    {
                      do
                      {
                        v63 = v62;
                        v62 = *v62;
                      }

                      while (v62);
                    }

                    else
                    {
                      do
                      {
                        v63 = *(v60 + 2);
                        v64 = *v63 == v60;
                        v60 = v63;
                      }

                      while (!v64);
                    }

                    v60 = v63;
                  }

                  while (v63 != (this + 792));
                }
              }

LABEL_184:
              *buf = a3;
              *(sub_100170224(&v70, a3) + 56) = a4;
              goto LABEL_185;
            }

            if (*(this + 736) == 1)
            {
              v46 = *(this + 447);
              if (v46 >= 0)
              {
                v47 = *(this + 447);
              }

              else
              {
                v47 = *(this + 54);
              }

              v48 = *(a3 + 23);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = *(a3 + 8);
              }

              if (v47 == v48)
              {
                v50 = v46 >= 0 ? (this + 424) : *(this + 53);
                v51 = v49 >= 0 ? a3 : *a3;
                if (!memcmp(v50, v51, v47))
                {
                  sub_10000501C(v68, "");
                  CellularPlanListModelLocal::calculatePlaceholderEnabledIccids_sync(this, v68, a3, buf);
                  sub_100173768(this + 656, buf);
                  sub_100009970(buf, *&buf[8]);
                  if (v69 < 0)
                  {
                    operator delete(v68[0]);
                  }

                  goto LABEL_143;
                }
              }
            }

            if (CellularPlanListModelLocal::isHydraSupported_sync(this))
            {
              CellularPlanListModelLocal::launchPreferencesURL(this, a3, 1);
              goto LABEL_143;
            }

            *buf = a3;
            *(sub_100170224(&v70, a3) + 56) = a4;
            v53 = *(this + 18);
            v54 = *(this + 19);
            if (v53 == v54)
            {
LABEL_185:
              v65 = CellularPlanListModelLocal::setEnabledIccids_sync(this, &v70, 0, a4);
              v38 = v65;
              v37 = HIBYTE(v65);
              goto LABEL_186;
            }

            v55 = v53 + 64;
            while (1)
            {
              if ((*(v55 + 31) & 0x8000000000000000) != 0)
              {
                if (*(v55 + 16))
                {
LABEL_157:
                  if ((subscriber::isEsimCapable() & 1) == 0)
                  {
                    v56 = CellularPlanListModelLocal::getCellularPlanEnablementTypeForIccid_sync(this, (v55 + 8));
                    *buf = v55 + 8;
                    *(sub_100170224(&v70, (v55 + 8)) + 56) = v56;
                  }
                }
              }

              else if (*(v55 + 31))
              {
                goto LABEL_157;
              }

              v57 = v55 + 104;
              v55 += 168;
              if (v57 == v54)
              {
                goto LABEL_185;
              }
            }
          }

          goto LABEL_90;
        }

LABEL_77:
        v71 = 0;
        v72 = 0;
        v70 = &v71;
        if (*(this + 100) == 1)
        {
          if ((*(this + 831) & 0x8000000000000000) != 0)
          {
            if (!*(this + 102))
            {
              goto LABEL_94;
            }
          }

          else if (!*(this + 831))
          {
            goto LABEL_94;
          }

          if (CellularPlanListModelLocal::isIccidForPhySlot_sync(this, a3) && !sub_100071DF8(this + 101, a3))
          {
            if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
            {
              sub_1017622A8();
            }

            v37 = 1;
            v38 = 6;
            goto LABEL_186;
          }
        }

LABEL_94:
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
        *buf = 0u;
        v78 = 0u;
        sGetProfileDetails();
        if (BYTE8(v90) == 1 && BYTE12(v82) == 1)
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101762310();
          }
        }

        else
        {
          if (*(this + 193) != 1 || (CellularPlanListModelLocal::isMonitorModeIccid(this, a3) & 1) != 0)
          {
            if (sub_10016FA58(this + 944, a3))
            {
              v40 = *(a3 + 23);
              if (v40 >= 0)
              {
                v41 = *(a3 + 23);
              }

              else
              {
                v41 = *(a3 + 8);
              }

              v42 = *(this + 831);
              v43 = v42;
              if ((v42 & 0x80u) != 0)
              {
                v42 = *(this + 102);
              }

              if (v41 == v42)
              {
                v44 = v40 >= 0 ? a3 : *a3;
                v45 = v43 >= 0 ? (this + 808) : *(this + 101);
                if (!memcmp(v44, v45, v41))
                {
                  for (i = *(this + 18); i != *(this + 19); i += 168)
                  {
                    if (*(i + 12) == 1)
                    {
                      v67 = *(this + 5);
                      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v68[0]) = 0;
                        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Attempt to disable while SIM tray removed", v68, 2u);
                      }

                      goto LABEL_121;
                    }
                  }
                }
              }
            }

            if (&v70 != (this + 784))
            {
              sub_1001741DC(&v70, *(this + 98), this + 99);
            }

            if (sub_1000727F0(&v70, a3) || !sub_1000727F0(this + 118, a3))
            {
              CellularPlanListModelLocal::erasePnrStatus(this, a3);
              if (BYTE8(v90) == 1)
              {
                sub_100E3A5D4(buf);
              }

              goto LABEL_185;
            }

            CellularPlanListModelLocal::removeManagedPersonality(this, a3, 1);
            CellularPlanListModelLocal::persistUserData_sync(this);
            CellularPlanListModelLocal::enableUserSelectedProfiles_sync(this, v72 == 0);
LABEL_121:
            v38 = 0;
            v37 = 0;
LABEL_125:
            if (BYTE8(v90) == 1)
            {
              sub_100E3A5D4(buf);
            }

            goto LABEL_186;
          }

          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_1017622DC();
          }
        }

        v37 = 1;
        v38 = 43;
        goto LABEL_125;
      }

      if (sub_10016FA58(this + 784, a3) || !sub_10016FA58(this + 944, a3))
      {
        v71 = 0;
        v72 = 0;
        v70 = &v71;
        if ((CellularPlanListModelLocal::isPartialActiveSupported_sync(this) & 1) == 0)
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            v39 = asString();
            sub_101762264(v39, buf);
          }

          v37 = 1;
          v38 = 17;
          goto LABEL_186;
        }

        sub_100005BA0(this + 944, a3);
        if (&v70 != (this + 784))
        {
          sub_1001741DC(&v70, *(this + 98), this + 99);
        }

        if (sub_1000727F0(&v70, a3))
        {
          goto LABEL_185;
        }

        CellularPlanListModelLocal::persistUserData_sync(this);
        CellularPlanListModelLocal::enableUserSelectedProfiles_sync(this, v72 == 0);
LABEL_143:
        v38 = 0;
        v37 = 0;
LABEL_186:
        sub_100009970(&v70, v71);
        return v38 | (v37 << 8);
      }
    }

    else if (sub_10016FA58(this + 784, a3) || sub_10016FA58(this + 944, a3))
    {
      goto LABEL_77;
    }

LABEL_90:
    v38 = 0;
    v37 = 0;
    return v38 | (v37 << 8);
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101762344();
  }

  v37 = 1;
  v38 = 6;
  return v38 | (v37 << 8);
}

void sub_100158300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a16, a17);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::forceTransferSimLabel(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 80);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = v9;
      if (*(a1 + 72))
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        *v41 = 0u;
        memset(buf, 0, sizeof(buf));
        SlotForIccid_sync = CellularPlanListModelLocal::getSlotForIccid_sync(a1, a2);
        CellularPlanListModelLocal::getPhoneNumberForSlot_sync(a1, SlotForIccid_sync, buf);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        *v36 = 0u;
        *v33 = 0u;
        *v34 = 0u;
        v12 = CellularPlanListModelLocal::getSlotForIccid_sync(a1, a3);
        CellularPlanListModelLocal::getPhoneNumberForSlot_sync(a1, v12, v33);
        v13 = HIBYTE(v40);
        if (v40 < 0)
        {
          v13 = v40;
        }

        if (BYTE8(v43))
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = HIBYTE(v35);
        if (v35 < 0)
        {
          v15 = v35;
        }

        if (BYTE8(v38))
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        CellularPlanListModelLocal::getCarrierNameForIccid_sync(a1, a2, v31);
        CellularPlanListModelLocal::getCarrierNameForIccid_sync(a1, a3, __p);
        if (a4)
        {
          CellularPlanListModelLocal::sendCAEvent(a1, v31, v14, __p, v16, 1);
        }

        else
        {
          CellularPlanListModelLocal::sendCAEvent(a1, v31, v14, __p, v16, 2);
        }

        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }

        if (BYTE8(v38) == 1)
        {
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[1]);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[1]);
          }

          if (SHIBYTE(v34[0]) < 0)
          {
            operator delete(v33[0]);
          }
        }

        if (BYTE8(v43) != 1)
        {
          goto LABEL_34;
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[1]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(*&buf[24]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
          if ((a4 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_34:
          if ((a4 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_59:
        sub_100004A34(v10);
        return;
      }

LABEL_35:
      sub_100004A34(v10);
    }
  }

  (***(a1 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v18 = ServiceMap;
  if (v19 < 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(ServiceMap);
  v33[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, v33);
  if (v23)
  {
    v24 = v23[3];
    v10 = v23[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v25 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v18);
  v10 = 0;
  v25 = 1;
LABEL_44:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      *buf = 136315394;
      *&buf[4] = v27;
      *&buf[12] = 2080;
      *&buf[14] = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Force transferring SIM label from: %s to: %s", buf, 0x16u);
    }

    (*(*v24 + 304))(v24, a2);
    if ((*(*v24 + 288))(v24, a2, a3))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101762378();
      }
    }
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_59;
  }
}

void sub_100158830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10014F8E0(&a21);
  sub_10014F8E0(&a33);
  sub_100004A34(v34);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::isPartialActiveSupported_sync(void (****this)(Registry **__return_ptr))
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  (**this[7])(&v4);
  Registry::getTelephonyCapabilities(&v6, v4);
  v2 = (*(*v6 + 16))(v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_10015899C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001589C8(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  sub_10016A798(a1 + 120, *(a1 + 128));
  sub_1000DD0AC(a1 + 96, *(a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_100009970(a1 + 24, *(a1 + 32));
  sub_100009970(a1, *(a1 + 8));
  return a1;
}

void CellularPlanListModelLocal::setUsableIccids(CellularPlanListModelLocal *this, uint64_t a2, uint64_t a3)
{
  v6 = (this + 944);
  v7 = *(this + 118);
  v8 = (this + 952);
  if (v7 != (this + 952))
  {
    v9 = a2 + 8;
    do
    {
      if (v9 == sub_100007A6C(a2, v7 + 4))
      {
        v10 = sub_10016FA58(a3, v7 + 4) == 0;
        CellularPlanListModelLocal::removeManagedPersonality(this, (v7 + 4), v10);
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  if (v6 != a2)
  {
    sub_1001730B8(v6, *a2, (a2 + 8));
  }

  CellularPlanListModelLocal::getEnabledIccids(this, 0, &v17);
  v14 = v17;
  if (v17 != v18)
  {
    do
    {
      if (a2 + 8 == sub_100007A6C(a2, v14 + 4) && a3 + 8 == sub_100007A6C(a3, v14 + 4))
      {
        CellularPlanListModelLocal::erasePnrStatus(this, v14 + 4);
      }

      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v13 = *v16 == v14;
          v14 = v16;
        }

        while (!v13);
      }

      v14 = v16;
    }

    while (v16 != v18);
  }

  sub_100009970(&v17, v18[0]);
}

void CellularPlanListModelLocal::erasePnrStatus(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Unsetting PNR status for:%s", buf, 0xCu);
  }

  (***(a1 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v16 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v16);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_14:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(buf, *a2, a2[1]);
  }

  else
  {
    *buf = *a2;
    v18 = a2[2];
  }

  (*(*v14 + 56))(v14, buf, 0);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
    if (v15)
    {
      return;
    }
  }

  else
  {
LABEL_21:
    if (v15)
    {
      return;
    }
  }

  sub_100004A34(v13);
}

void sub_100158DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::setEnabledIccids(CellularPlanListModelLocal *a1, uint64_t a2, uint64_t a3)
{
  if (CellularPlanListModelLocal::isPartialActiveSupported_sync(a1))
  {
    CellularPlanListModelLocal::setUsableIccids(a1, a3, a2);
  }

  sub_100158EF4(a2, 1, v8);
  v6 = CellularPlanListModelLocal::setEnabledIccids_sync(a1, v8, 0, 1);
  sub_100009970(v8, v8[1]);
  return v6;
}

uint64_t sub_100158EF4@<X0>(uint64_t result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = (result + 8);
  v5 = *result;
  if (*result != result + 8)
  {
    do
    {
      result = sub_100170224(a3, v5 + 4);
      *(result + 56) = a2;
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return result;
}

uint64_t CellularPlanListModelLocal::isHydraSupported_sync(CellularPlanListModelLocal *this)
{
  result = (*(**(this + 7) + 32))(*(this + 7));
  if (result)
  {
    v4 = *(this + 18);
    v3 = *(this + 19);
    if (v4 == v3)
    {
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SIM info empty", v9, 2u);
      }

      return 1;
    }

    else
    {
      v5 = v4 + 168;
      do
      {
        v6 = *(v5 - 104);
        result = v6 == 4;
        v7 = v6 == 4 || v5 == v3;
        v5 += 168;
      }

      while (!v7);
    }
  }

  return result;
}

uint64_t CellularPlanListModelLocal::isIccidForPhySlot_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v5 = HIBYTE(v15);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 72;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v9 == v6)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v11, v7, v6))
        {
          break;
        }
      }

      v12 = v8 + 96;
      v8 += 168;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 72;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(a1 + 152))
  {
    return 0;
  }

  sGetProfileDetails();
  if (v16[216] == 1)
  {
    sub_100E3A5D4(v16);
    return 0;
  }

  return subscriber::isEsimCapable() ^ 1;
}

void CellularPlanListModelLocal::getUsableIccids(CellularPlanListModelLocal *this@<X0>, void *a2@<X8>)
{
  if ((*(this + 919) & 0x8000000000000000) != 0)
  {
    if (*(this + 113))
    {
LABEL_3:
      a2[2] = 0;
      a2[1] = 0;
      *a2 = a2 + 1;
      v4 = *(this + 118);
      v5 = this + 952;
      if (v4 != (this + 952))
      {
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v16 = 0;
          if (*(v4 + 55) < 0)
          {
            sub_100005F2C(__p, v4[4], v4[5]);
          }

          else
          {
            *__p = *(v4 + 2);
            v16 = v4[6];
          }

          v6 = HIBYTE(v16);
          if (v16 >= 0)
          {
            v7 = HIBYTE(v16);
          }

          else
          {
            v7 = __p[1];
          }

          v8 = *(this + 919);
          v9 = v8;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(this + 113);
          }

          if (v7 != v8 || (v16 >= 0 ? (v10 = __p) : (v10 = __p[0]), v9 >= 0 ? (v11 = this + 896) : (v11 = *(this + 112)), memcmp(v10, v11, v7)))
          {
            sub_100005BA0(a2, __p);
            v6 = HIBYTE(v16);
          }

          if (v6 < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v4[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v4[2];
              v14 = *v13 == v4;
              v4 = v13;
            }

            while (!v14);
          }

          v4 = v13;
        }

        while (v13 != v5);
      }

      return;
    }
  }

  else if (*(this + 919))
  {
    goto LABEL_3;
  }

  sub_100074920(a2, this + 944);
}

void CellularPlanListModelLocal::calculatePlaceholderEnabledIccids_sync(CellularPlanListModelLocal *this@<X0>, void **a2@<X1>, uint64_t a3@<X2>, std::string **a4@<X8>)
{
  *&v29.__r_.__value_.__r.__words[1] = 0uLL;
  v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
  if (*(this + 193) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v8 = *(a3 + 8);
      if (v8)
      {
        sub_100005F2C(&__p, *a3, v8);
        goto LABEL_7;
      }
    }

    else if (*(a3 + 23))
    {
      __p = *a3;
LABEL_7:
      sub_10011C9B0(a4, &__p.__r_.__value_.__l.__data_, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      size = v29.__r_.__value_.__l.__size_;
      goto LABEL_62;
    }
  }

  if (*(this + 736) == 1 && (v10 = (this + 656), sub_10016FA58(this + 656, a3)))
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Placeholder enabled ICCID includes [%s] already", &__p, 0xCu);
    }

    if (&v29 != v10)
    {
      sub_1001730B8(&v29, *(this + 82), this + 83);
    }
  }

  else
  {
    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(this, &__p);
    sub_100009970(&v29, v29.__r_.__value_.__l.__size_);
    v13 = __p.__r_.__value_.__l.__size_;
    v29 = __p;
    if (__p.__r_.__value_.__r.__words[2])
    {
      *(__p.__r_.__value_.__l.__size_ + 16) = &v29.__r_.__value_.__l.__size_;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      v13 = 0;
    }

    else
    {
      v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
    }

    sub_100009970(&__p, v13);
  }

  sub_100005BA0(&v29, a3);
  sub_1000727F0(&v29, a2);
  if ((CellularPlanListModelLocal::isHydraSupported_sync(this) & 1) == 0)
  {
    v14 = v29.__r_.__value_.__r.__words[0];
    if (v29.__r_.__value_.__l.__data_ != &v29.__r_.__value_.__r.__words[1])
    {
      while (1)
      {
        if ((CellularPlanListModelLocal::isIccidForPhySlot_sync(this, v14 + 32) & 1) == 0)
        {
          v15 = *(v14 + 55);
          if (v15 >= 0)
          {
            v16 = *(v14 + 55);
          }

          else
          {
            v16 = *(v14 + 40);
          }

          v17 = *(a3 + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(a3 + 8);
          }

          if (v16 != v17)
          {
            break;
          }

          v19 = v15 >= 0 ? (v14 + 32) : *(v14 + 32);
          v20 = v18 >= 0 ? a3 : *a3;
          if (memcmp(v19, v20, v16))
          {
            break;
          }
        }

        v21 = *(v14 + 8);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = v21->__r_.__value_.__r.__words[0];
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v14 + 16);
            v23 = v22->__r_.__value_.__r.__words[0] == v14;
            v14 = v22;
          }

          while (!v23);
        }

        v14 = v22;
        if (v22 == &v29.__r_.__value_.__r.__words[1])
        {
          goto LABEL_47;
        }
      }

      sub_1000727F0(&v29, (v14 + 32));
    }
  }

LABEL_47:
  v24 = v29.__r_.__value_.__r.__words[2];
  if (v29.__r_.__value_.__r.__words[2] <= *(this + 193))
  {
    v25 = v29.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_1017623E0();
    }

    sub_100009970(&v29, v29.__r_.__value_.__l.__size_);
    v24 = 0;
    *&v29.__r_.__value_.__r.__words[1] = 0uLL;
    v25 = &v29.__r_.__value_.__r.__words[1];
    v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
  }

  v26 = *(this + 5);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(v25, &v29.__r_.__value_.__r.__words[1], ",", 1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v31 = p_p;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Placeholder ICCIDs: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25 = v29.__r_.__value_.__r.__words[0];
    v24 = v29.__r_.__value_.__r.__words[2];
  }

  *a4 = v25;
  size = v29.__r_.__value_.__l.__size_;
  a4[1] = v29.__r_.__value_.__l.__size_;
  v28 = (a4 + 1);
  a4[2] = v24;
  if (v24)
  {
    *(size + 16) = v28;
    v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
    *&v29.__r_.__value_.__r.__words[1] = 0uLL;
    size = 0;
  }

  else
  {
    *a4 = v28;
  }

LABEL_62:
  sub_100009970(&v29, size);
}