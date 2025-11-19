BOOL CellularPlanListModelLocal::launchPreferencesURL(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      if (!v9 || (a3 & 1) == 0 && ((*(*v9 + 256))(v9) & 1) != 0)
      {
        goto LABEL_26;
      }

      v10 = *(a2 + 23);
      if (v10 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = *(a1 + 919);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a1 + 904);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? a2 : *a2;
        v15 = v13 >= 0 ? (a1 + 896) : *(a1 + 896);
        if (!memcmp(v14, v15, v11))
        {
LABEL_26:
          v26 = 0;
LABEL_44:
          sub_100004A34(v8);
          return v26;
        }
      }

      (***(a1 + 56))(&__p);
      ServiceMap = Registry::getServiceMap(__p);
      v17 = ServiceMap;
      if (v18 < 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(ServiceMap);
      *buf = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, buf);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
          v25 = 0;
LABEL_29:
          if (v34)
          {
            sub_100004A34(v34);
          }

          v26 = v24 != 0;
          if (v24)
          {
            v36 = 0;
            v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
            v28 = dispatch_queue_create("cp.l.list.ui", v27);
            v29 = *(a1 + 40);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              sub_100160214(&__p);
              v30 = v35 >= 0 ? &__p : __p;
              *buf = 136315138;
              *&buf[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Launching Preferences URL (%s)", buf, 0xCu);
              if (v35 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100160214(&__p);
            v32[3] = v28;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v32, *a2, *(a2 + 8));
            }

            else
            {
              *v32 = *a2;
              v32[2] = *(a2 + 16);
            }

            v37 = 0;
            operator new();
          }

          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          goto LABEL_44;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
      goto LABEL_29;
    }
  }

  return 0;
}

void sub_100159BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  operator delete(v27);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::enableUserSelectedProfiles_sync(CellularPlanListModelLocal *this, int a2)
{
  v66 = 0;
  v67[0] = 0;
  v67[1] = 0;
  CellularPlanListModelLocal::getEnabledIccids(this, a2, &v66);
  v4 = v66;
  if (v66 != v67)
  {
    do
    {
      hasIccid_sync = CellularPlanListModelLocal::hasIccid_sync(hasIccid_sync, &v4[1].__r_.__value_.__l.__size_, this + 18);
      if (!hasIccid_sync)
      {
        if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
        {
          sub_100074B94(v66, v67, ",", 1, &buf);
          sub_101762414(&buf);
        }

        v37 = 0;
        goto LABEL_135;
      }

      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        do
        {
          v6 = size;
          size = *size;
        }

        while (size);
      }

      else
      {
        do
        {
          v6 = v4->__r_.__value_.__r.__words[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v67);
  }

  v8 = *(this + 15);
  v9 = *(this + 16);
  if (v8 == v9)
  {
    goto LABEL_49;
  }

  do
  {
    if (*(v8 + 12) != 3)
    {
      goto LABEL_48;
    }

    *(&__dst + 1) = 0;
    v73 = 0;
    *&__dst = &__dst + 8;
    *(&v70 + 1) = 0;
    v71 = 0;
    *&v70 = &v70 + 8;
    if (*(v8 + 80) != 1)
    {
      goto LABEL_47;
    }

    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    while (v10 != v11)
    {
      if (sub_10016FA58(&v66, (v10 + 16)))
      {
        p_dst = &__dst;
LABEL_31:
        sub_100005BA0(p_dst, (v10 + 16));
        goto LABEL_32;
      }

      if (sub_10016FA58(this + 944, (v10 + 16)))
      {
        v13 = *(this + 919);
        if (v13 >= 0)
        {
          v14 = *(this + 919);
        }

        else
        {
          v14 = *(this + 113);
        }

        v15 = *(v10 + 39);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v10 + 24);
        }

        if (v14 != v15 || (v13 >= 0 ? (v17 = this + 896) : (v17 = *(this + 112)), v16 >= 0 ? (v18 = (v10 + 16)) : (v18 = *(v10 + 16)), memcmp(v17, v18, v14)))
        {
          p_dst = &v70;
          goto LABEL_31;
        }
      }

LABEL_32:
      v10 += 216;
    }

    v19 = *(this + 10);
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v21 = v20;
        v22 = *(this + 9);
        if (v22)
        {
          v23 = *(this + 5);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v60 = v73;
            v61 = v23;
            sub_100074B94(__dst, (&__dst + 8), ",", 1, &v65);
            v24 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
            v25 = v65.__r_.__value_.__r.__words[0];
            sub_100074B94(v70, (&v70 + 8), ",", 1, &__p);
            v26 = &v65;
            if (v24 < 0)
            {
              v26 = v25;
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 134218498;
            *(buf.__r_.__value_.__r.__words + 4) = v60;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v26;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v69 = p_p;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Activating (%lu) profiles [%s], usable [%s]", &buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }
          }

          (*(*v22 + 144))(v22, v8 + 16, &__dst, &v70);
        }

        sub_100004A34(v21);
      }
    }

LABEL_47:
    sub_100009970(&v70, *(&v70 + 1));
    sub_100009970(&__dst, *(&__dst + 1));
LABEL_48:
    v8 += 88;
  }

  while (v8 != v9);
LABEL_49:
  if (CellularPlanListModelLocal::isPartialActiveSupported_sync(this))
  {
    (***(this + 7))(&buf);
    ServiceMap = Registry::getServiceMap(buf.__r_.__value_.__l.__data_);
    v29 = ServiceMap;
    if (v30 < 0)
    {
      v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
      v32 = 5381;
      do
      {
        v30 = v32;
        v33 = *v31++;
        v32 = (33 * v32) ^ v33;
      }

      while (v33);
    }

    std::mutex::lock(ServiceMap);
    *&__dst = v30;
    v34 = sub_100009510(&v29[1].__m_.__sig, &__dst);
    if (v34)
    {
      v36 = v34[3];
      v35 = v34[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v29);
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v35);
        v62 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v36 = 0;
    }

    std::mutex::unlock(v29);
    v35 = 0;
    v62 = 1;
LABEL_61:
    v38 = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    v63 = v35;
    if (v36)
    {
      v39 = *(this + 118);
      v40 = (this + 952);
      if (v39 != (this + 952))
      {
        do
        {
          v41 = (v39 + 32);
          v42 = *(this + 919);
          if (v42 >= 0)
          {
            v43 = *(this + 919);
          }

          else
          {
            v43 = *(this + 113);
          }

          v44 = *(v39 + 55);
          v45 = v44;
          v46 = *(v39 + 40);
          if ((v44 & 0x80u) != 0)
          {
            v44 = *(v39 + 40);
          }

          if (v43 == v44 && (v42 >= 0 ? (v47 = this + 896) : (v47 = *(this + 112)), v45 >= 0 ? (v48 = (v39 + 32)) : (v48 = *v41), v38 = memcmp(v47, v48, v43), !v38))
          {
            v50 = *(v39 + 8);
            if (v50)
            {
              do
              {
                v51 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v51 = *(v39 + 16);
                v7 = *v51 == v39;
                v39 = v51;
              }

              while (!v7);
            }
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
            if (v45 < 0)
            {
              v38 = sub_100005F2C(&buf, *v41, v46);
            }

            else
            {
              *&buf.__r_.__value_.__l.__data_ = *v41;
              buf.__r_.__value_.__r.__words[2] = *(v39 + 48);
            }

            if (CellularPlanListModelLocal::hasIccid_sync(v38, v39 + 32, this + 18))
            {
              __dst = 0uLL;
              (**v36)(&__dst, v36, &buf);
              if (!__dst || *(__dst + 49) != 3)
              {
                LOBYTE(v70) = 3;
                (*(*v36 + 80))(v36, &buf, &v70);
              }

              (*(*v36 + 112))(&v70, v36, &buf);
              v49 = v70;
              sub_10001021C(&v70);
              if (!v49)
              {
                v65.__r_.__value_.__r.__words[0] = 0;
                CellularPlanListModelLocal::getUsableSimCarrierSettings(this, (v39 + 32), &v65);
                if (v65.__r_.__value_.__r.__words[0])
                {
                  (*(*v36 + 104))(v36, &buf);
                }

                else
                {
                  v52 = *(this + 5);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    if (*(v39 + 55) < 0)
                    {
                      v41 = *v41;
                    }

                    LODWORD(v70) = 136315138;
                    *(&v70 + 4) = v41;
                    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Missing Usable Carrier Settings for (%s)", &v70, 0xCu);
                  }
                }

                sub_10001021C(&v65.__r_.__value_.__l.__data_);
              }

              (*(*v36 + 96))(v36, &buf, 1);
              v53 = *(v39 + 8);
              if (v53)
              {
                do
                {
                  v51 = v53;
                  v53 = *v53;
                }

                while (v53);
              }

              else
              {
                do
                {
                  v51 = *(v39 + 16);
                  v7 = *v51 == v39;
                  v39 = v51;
                }

                while (!v7);
              }

              v38 = *(&__dst + 1);
              if (*(&__dst + 1))
              {
                sub_100004A34(*(&__dst + 1));
              }
            }

            else
            {
              __dst = 0uLL;
              v73 = 0;
              if (*(v39 + 55) < 0)
              {
                sub_100005F2C(&__dst, *(v39 + 32), *(v39 + 40));
              }

              else
              {
                __dst = *v41;
                v73 = *(v39 + 48);
              }

              v51 = sub_100075658(this + 118, v39);
              CellularPlanListModelLocal::removeManagedPersonality(this, &__dst, 1);
              if (SHIBYTE(v73) < 0)
              {
                operator delete(__dst);
              }
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          v39 = v51;
        }

        while (v51 != v40);
      }

      v54 = v66;
      if (v66 != v67)
      {
        do
        {
          if (v40 == sub_100007A6C(this + 944, &v54[1].__r_.__value_.__l.__size_) && (*(*v36 + 328))(v36, &v54[1].__r_.__value_.__l.__size_))
          {
            v55 = *(this + 5);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              p_size = &v54[1].__r_.__value_.__l.__size_;
              if (v54[2].__r_.__value_.__s.__data_[7] < 0)
              {
                p_size = v54[1].__r_.__value_.__l.__size_;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = p_size;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Limited Use sim found:%s", &buf, 0xCu);
            }

            CellularPlanListModelLocal::removeManagedPersonality(this, &v54[1].__r_.__value_.__l.__size_, 0);
          }

          v56 = v54->__r_.__value_.__l.__size_;
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v54->__r_.__value_.__r.__words[2];
              v7 = *v57 == v54;
              v54 = v57;
            }

            while (!v7);
          }

          v54 = v57;
        }

        while (v57 != v67);
      }
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10176247C();
    }

    if ((v62 & 1) == 0)
    {
      sub_100004A34(v63);
    }
  }

  v37 = 1;
LABEL_135:
  sub_100009970(&v66, v67[0]);
  return v37;
}

void CellularPlanListModelLocal::setUserActiveDataSelectionChangeIccid_sync(CellularPlanListModelLocal *this, std::string *a2, int a3)
{
  if (a3)
  {
    CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(this);
  }

  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (*(this + 193) > 1u)
    {
      v8 = *(this + 887);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(this + 109);
      }

      if (v8 != size || (v9 >= 0 ? (v10 = this + 864) : (v10 = *(this + 108)), v5 >= 0 ? (v11 = a2) : (v11 = a2->__r_.__value_.__r.__words[0]), memcmp(v10, v11, size)))
      {
        if (*(this + 736) == 1)
        {
          v12 = *(this + 447);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(this + 54);
          }

          if (v12 == size && (v13 >= 0 ? (v14 = this + 424) : (v14 = *(this + 53)), v5 >= 0 ? (v15 = a2) : (v15 = a2->__r_.__value_.__r.__words[0]), !memcmp(v14, v15, size)) || sub_10016FA58(this + 784, &a2->__r_.__value_.__l.__data_))
          {
            v16 = *(this + 5);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = a2;
              }

              else
              {
                v17 = a2->__r_.__value_.__r.__words[0];
              }

              v25 = 136315138;
              v26[0] = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I setting placeholder active user data %s", &v25, 0xCu);
            }

            std::string::operator=((this + 680), a2);
          }

          else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101762518();
          }
        }

        else
        {
          v18 = sub_10016FA58(this + 784, &a2->__r_.__value_.__l.__data_);
          v19 = *(this + 5);
          if (v18)
          {
            if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
            {
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = a2->__r_.__value_.__r.__words[0];
              }

              v25 = 136315138;
              v26[0] = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Setting user data selection (%s)", &v25, 0xCu);
            }

            std::string::operator=(this + 36, a2);
            CellularPlanListModelLocal::persistUserData_sync(this);
            v21 = *(this + 10);
            if (v21)
            {
              v22 = std::__shared_weak_count::lock(v21);
              if (v22)
              {
                v23 = v22;
                v24 = *(this + 9);
                if (v24)
                {
                  *(this + 222) = CellularPlanListModelLocal::calculateLegacySlot(this, this + 108);
                  CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(this, &v25);
                  (*(*v24 + 152))(v24, &v25, this + 864);
                  sub_100009970(&v25, *(v26 + 4));
                  (*(*v24 + 40))(v24);
                }

                sub_100004A34(v23);
              }
            }
          }

          else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_1017624B0();
          }
        }
      }
    }

    else
    {
      v7 = *(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Cannot set active data ICCID on single stack device", &v25, 2u);
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10176254C();
  }
}

void sub_10015AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  sub_100009970(&a9, a10);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::isNoSimState_sync(CellularPlanListModelLocal *this)
{
  for (i = *(this + 15); ; i += 88)
  {
    if (i == *(this + 16))
    {
      v5 = *(this + 18);
      v6 = *(this + 19);
      while (1)
      {
        if (v5 == v6)
        {
          return 1;
        }

        if (*(v5 + 95) < 0)
        {
          v7 = *(v5 + 80);
          if (!v7)
          {
            goto LABEL_21;
          }

          sub_100005F2C(__p, *(v5 + 72), v7);
        }

        else
        {
          if (!*(v5 + 95))
          {
            goto LABEL_21;
          }

          *__p = *(v5 + 72);
          v12 = *(v5 + 88);
        }

        isBootstrapProfile_sync = CellularPlanListModelLocal::isBootstrapProfile_sync(this, __p);
        v9 = isBootstrapProfile_sync;
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        else if (!isBootstrapProfile_sync)
        {
          return 0;
        }

LABEL_21:
        v5 += 168;
      }
    }

    if (*(i + 80) == 1)
    {
      v3 = *(i + 56);
      v4 = *(i + 64);
      if (v3 != v4)
      {
        while (*(v3 + 89) == 1)
        {
          v3 += 216;
          if (v3 == v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (v3 != v4)
      {
        break;
      }
    }

LABEL_9:
    ;
  }

  return 0;
}

void sub_10015AB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::handleSimStateAndLabelsForTravel_sync(os_log_t *a1, uint64_t a2, int a3)
{
  if (a1 + 32 == sub_100007A6C((a1 + 31), a2))
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101762580();
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    *v14 = 0u;
    *v12 = 0u;
    memset(v13, 0, sizeof(v13));
    *v10 = 0u;
    v11 = 0u;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v10, *a2, *(a2 + 8));
    }

    else
    {
      *v10 = *a2;
      *&v11 = *(a2 + 16);
    }

    BYTE8(v11) = 1;
    v16 = a2;
    v6 = sub_1001705A0((a1 + 31), a2);
    if (*(v6 + 103) < 0)
    {
      sub_100005F2C(v12, *(v6 + 80), *(v6 + 88));
    }

    else
    {
      *v12 = *(v6 + 80);
      v13[0] = *(v6 + 96);
    }

    v16 = a2;
    v7 = sub_1001705A0((a1 + 31), a2);
    if (*(v7 + 127) < 0)
    {
      sub_100005F2C(&v13[1], *(v7 + 104), *(v7 + 112));
    }

    else
    {
      *&v13[1] = *(v7 + 104);
      v13[3] = *(v7 + 120);
    }

    v16 = a2;
    v8 = sub_1001705A0((a1 + 31), a2);
    if (*(v8 + 151) < 0)
    {
      sub_100005F2C(v14, *(v8 + 128), *(v8 + 136));
    }

    else
    {
      *v14 = *(v8 + 128);
      __p[0] = *(v8 + 144);
    }

    v16 = a2;
    v9 = sub_1001705A0((a1 + 31), a2);
    if (*(v9 + 175) < 0)
    {
      sub_100005F2C(&__p[1], *(v9 + 152), *(v9 + 160));
    }

    else
    {
      *&__p[1] = *(v9 + 152);
      __p[3] = *(v9 + 168);
    }

    CellularPlanListModelLocal::handleSimLabelsForTravel_sync(a1, v10, 0);
    if (a3)
    {
      CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(a1, 0, a2, 0);
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v13[3]) < 0)
    {
      operator delete(v13[1]);
    }

    if (SHIBYTE(v13[0]) < 0)
    {
      operator delete(v12[0]);
    }

    if (BYTE8(v11) == 1 && SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_10015ADD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::handleSimLabelsForTravel_sync(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 24) != 1)
  {
    return;
  }

  (***(a1 + 56))(&v41);
  ServiceMap = Registry::getServiceMap(v41);
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
  *&buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &buf);
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
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_10:
  if (*(&v41 + 1))
  {
    sub_100004A34(*(&v41 + 1));
  }

  __dst = 0uLL;
  v52 = 0;
  if ((*(a2 + 24) & 1) == 0)
  {
    sub_1000D1644();
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v52 = *(a2 + 2);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  (*(*v14 + 192))(&v41, v14, &__dst);
  v16 = BYTE7(v45);
  if (SBYTE7(v45) < 0)
  {
    v16 = *(&v44 + 1);
  }

  if (v16)
  {
    goto LABEL_19;
  }

  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_51;
  }

  v21 = *(a1 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I SIM label is not valid for 4FF (%s)", &buf, 0xCu);
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  buf = 0u;
  (*(*v14 + 224))(&buf, v14, &__dst, a3);
  v23 = BYTE7(v57);
  if (SBYTE7(v57) < 0)
  {
    v23 = *(&v56 + 1);
  }

  if (v23)
  {
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(*(&v59 + 1));
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(v58);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(*(&v54 + 1));
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(buf);
    }

LABEL_19:
    v38 = 0;
    v39 = 0;
    v40 = 0;
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_1000D1644();
    }

    (*(**(a1 + 56) + 160))(&v38);
    v37 = 0;
    CellularPlanListModelLocal::getLocalizedString_sync(a1, @"TRAVEL_SIM_LABEL_PREFIX", &v37);
    buf = 0uLL;
    *&v54 = 0;
    ctu::cf::assign();
    *&v36.__r_.__value_.__l.__data_ = buf;
    v36.__r_.__value_.__r.__words[2] = v54;
    v17 = v39;
    if (v40 >= 0)
    {
      v17 = HIBYTE(v40);
    }

    if (v17)
    {
      std::operator+<char>();
      v18 = (SBYTE7(v54) & 0x80u) == 0 ? &buf : buf;
      v19 = (SBYTE7(v54) & 0x80u) == 0 ? BYTE7(v54) : *(&buf + 1);
      std::string::append(&v36, v18, v19);
      if (SBYTE7(v54) < 0)
      {
        operator delete(buf);
      }
    }

    sub_10000501C(&buf, "");
    (*(*v14 + 232))(&v24, v14, &__dst, &v36, &buf, 1);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v37);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v20 = v38;
    goto LABEL_49;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017625B4();
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(*(&v59 + 1));
  }

  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

  if (SBYTE7(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(*(&v54 + 1));
  }

  if ((SBYTE7(v54) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  v20 = buf;
LABEL_49:
  operator delete(v20);
LABEL_51:
  CellularPlanListModelLocal::resolveSimLabelsForUserEnabledIccids_sync(a1);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(v46);
  }

  if (SBYTE7(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    if (v15)
    {
      return;
    }

    goto LABEL_65;
  }

  operator delete(__dst);
  if ((v15 & 1) == 0)
  {
LABEL_65:
    sub_100004A34(v13);
  }
}

void sub_10015B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_100FB0A00(&a37);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if ((v63 & 1) == 0)
  {
    sub_100004A34(v62);
  }

  _Unwind_Resume(a1);
}

void sub_10015B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (!a38)
  {
    JUMPOUT(0x10015B548);
  }

  JUMPOUT(0x10015B544);
}

void CellularPlanListModelLocal::getCachedCarrierDescriptors_sync(CellularPlanListModelLocal *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 31);
  v4 = this + 256;
  if (v3 != (this + 256))
  {
    do
    {
      bzero(__dst, 0x268uLL);
      sub_10016A8C0(__dst, v3 + 2);
      v5 = HIBYTE(v28);
      v6 = HIBYTE(v28);
      if (v28 < 0)
      {
        v5 = *(&v27 + 1);
      }

      if (v5)
      {
        v7 = HIBYTE(v30);
        if (v30 < 0)
        {
          v7 = *(&v29 + 1);
        }

        if (v7)
        {
          if (SHIBYTE(v25) < 0)
          {
            sub_100005F2C(v13, __dst[0], __dst[1]);
            v6 = HIBYTE(v28);
          }

          else
          {
            *v13 = *__dst;
            v14 = v25;
          }

          v15 = 1;
          if (v6 < 0)
          {
            sub_100005F2C(&v16, v27, *(&v27 + 1));
          }

          else
          {
            v16 = v27;
            v17 = v28;
          }

          if (SHIBYTE(v30) < 0)
          {
            sub_100005F2C(&v18, v29, *(&v29 + 1));
          }

          else
          {
            v18 = v29;
            v19 = v30;
          }

          if (SHIBYTE(v32) < 0)
          {
            sub_100005F2C(&__p, v31, *(&v31 + 1));
          }

          else
          {
            __p = v31;
            v21 = v32;
          }

          if (SHIBYTE(v34) < 0)
          {
            sub_100005F2C(&v22, v33, *(&v33 + 1));
          }

          else
          {
            v22 = v33;
            v23 = v34;
          }

          v35 = __dst;
          v8 = sub_100174060(a2, __dst);
          sub_10016A270(v8 + 56, v13);
          if (*(v8 + 111) < 0)
          {
            operator delete(*(v8 + 88));
          }

          *(v8 + 104) = v17;
          *(v8 + 88) = v16;
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
          if (*(v8 + 135) < 0)
          {
            operator delete(*(v8 + 112));
          }

          *(v8 + 128) = v19;
          *(v8 + 112) = v18;
          HIBYTE(v19) = 0;
          LOBYTE(v18) = 0;
          if (*(v8 + 159) < 0)
          {
            operator delete(*(v8 + 136));
          }

          *(v8 + 152) = v21;
          *(v8 + 136) = __p;
          HIBYTE(v21) = 0;
          LOBYTE(__p) = 0;
          if (*(v8 + 183) < 0)
          {
            operator delete(*(v8 + 160));
            v9 = SHIBYTE(v21);
            *(v8 + 160) = v22;
            *(v8 + 176) = v23;
            HIBYTE(v23) = 0;
            LOBYTE(v22) = 0;
            if (v9 < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            *(v8 + 160) = v22;
            *(v8 + 176) = v23;
            HIBYTE(v23) = 0;
            LOBYTE(v22) = 0;
          }

          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18);
          }

          if (SHIBYTE(v17) < 0)
          {
            operator delete(v16);
          }

          if (v15 == 1 && SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }
        }
      }

      sub_10016B194(&v26);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst[0]);
      }

      v10 = *(v3 + 1);
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
          v11 = *(v3 + 2);
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }
}

void sub_10015B870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  sub_10016B158(&a38);
  sub_10016A798(v38, *(v38 + 8));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::setUserActiveDataSelectionChangeSlot_sync(CellularPlanListModelLocal *a1, uint64_t a2, int a3)
{
  *__p = 0u;
  v7 = 0u;
  CellularPlanListModelLocal::getActiveIccidForSlot_sync(a1, a2, __p);
  v5 = BYTE8(v7);
  if (BYTE8(v7) == 1)
  {
    CellularPlanListModelLocal::setUserActiveDataSelectionChangeIccid_sync(a1, __p, a3);
    v5 = BYTE8(v7);
  }

  if ((v5 & 1) != 0 && SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10015B988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::setDefaultVoiceSelectionChangeIccid_sync(CellularPlanListModelLocal *this, uint64_t a2, int a3)
{
  if (a3)
  {
    CellularPlanListModelLocal::clearSourceDeviceUserPreferences_sync(this);
  }

  (***(this + 7))(&v17);
  Registry::getTelephonyCapabilities(buf, v17);
  v5 = (*(**buf + 16))(*buf);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      v8 = *(this + 855);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(this + 105);
      }

      if (v8 != v7 || (v9 >= 0 ? (v10 = this + 832) : (v10 = *(this + 104)), v6 >= 0 ? (v11 = a2) : (v11 = *a2), memcmp(v10, v11, v7)))
      {
        if (*(this + 736) != 1)
        {
          goto LABEL_46;
        }

        v12 = *(this + 447);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(this + 54);
        }

        if (v12 == v7 && (v13 >= 0 ? (v14 = this + 424) : (v14 = *(this + 53)), v6 >= 0 ? (v15 = a2) : (v15 = *a2), !memcmp(v14, v15, v7)))
        {
          *(this + 704) = 1;
          v16 = *(this + 5);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I setting placeholder default voice", buf, 2u);
          }
        }

        else
        {
LABEL_46:
          if (sub_10016FA58(this + 784, a2))
          {
            std::string::operator=((this + 832), a2);
            *(this + 214) = 0;
            CellularPlanListModelLocal::persistUserData_sync(this);
            CellularPlanListModelLocal::calculateDefaultVoiceSelection_sync(this);
          }

          else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_1017624B0();
          }
        }
      }
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10176261C();
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_1017625E8();
  }
}

void sub_10015BC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void CellularPlanListModelLocal::calculateDefaultVoiceSelection_sync(CellularPlanListModelLocal *this)
{
  if (*(this + 855) < 0)
  {
    v5 = *(this + 105);
    if (!v5)
    {
      return;
    }

    v2 = (this + 152);
    v3 = *(this + 19);
    v4 = *(this + 18);
    sub_100005F2C(__p, *(this + 104), v5);
  }

  else
  {
    if (!*(this + 855))
    {
      return;
    }

    v2 = (this + 152);
    v3 = *(this + 19);
    v4 = *(this + 18);
    *__p = *(this + 52);
    v20 = *(this + 106);
  }

  v6 = HIBYTE(v20);
  if (v4 != v3)
  {
    if (v20 >= 0)
    {
      v7 = HIBYTE(v20);
    }

    else
    {
      v7 = __p[1];
    }

    if (v20 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = v4 + 18;
    while (1)
    {
      v10 = *(v9 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 1);
      }

      if (v10 == v7)
      {
        v12 = v11 >= 0 ? v9 : *v9;
        if (!memcmp(v12, v8, v7))
        {
          break;
        }
      }

      v13 = v9 + 24;
      v9 += 42;
      if (v13 == v3)
      {
        v4 = v3;
        goto LABEL_23;
      }
    }

    v4 = v9 - 18;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (v6 < 0)
  {
LABEL_24:
    operator delete(__p[0]);
  }

LABEL_25:
  if (v4 != *v2)
  {
    v14 = *v4;
    if (*(this + 214) != *v4)
    {
      *(this + 214) = v14;
      if (v14)
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
              (*(*v18 + 48))(v18, this + 856);
            }

            sub_100004A34(v17);
          }
        }
      }
    }
  }
}

void CellularPlanListModelLocal::setDefaultVoiceSelectionChangeSlot_sync(CellularPlanListModelLocal *a1, uint64_t a2, int a3)
{
  *__p = 0u;
  v7 = 0u;
  CellularPlanListModelLocal::getActiveIccidForSlot_sync(a1, a2, __p);
  v5 = BYTE8(v7);
  if (BYTE8(v7) == 1)
  {
    CellularPlanListModelLocal::setDefaultVoiceSelectionChangeIccid_sync(a1, __p, a3);
    v5 = BYTE8(v7);
  }

  if ((v5 & 1) != 0 && SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10015BE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::applyRemapSelection_sync(os_log_t *a1, uint64_t a2)
{
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (*(a2 + 39) < 0)
  {
    a1 = sub_100005F2C(__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    *__p = *(a2 + 16);
    v35 = *(a2 + 32);
  }

  v4 = HIBYTE(v35);
  if (v35 < 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    if (os_log_type_enabled(v3[5], OS_LOG_TYPE_ERROR))
    {
      sub_101762650();
    }

    goto LABEL_49;
  }

  if ((CellularPlanListModelLocal::hasIccid_sync(a1, __p, v3 + 18) & 1) == 0)
  {
    v20 = v3[5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __p;
      if (v35 < 0)
      {
        v21 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Drop placeholder iccid: [%s]", buf, 0xCu);
    }

    (*v3[7]->isa)(&v32);
    ServiceMap = Registry::getServiceMap(v32);
    v23 = ServiceMap;
    if (v24 < 0)
    {
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(ServiceMap);
    *buf = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, buf);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_43:
        sub_10000501C(buf, "");
        (*(*v30 + 280))(v30, __p, buf);
        if (v37 < 0)
        {
          operator delete(*buf);
        }

        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        if (v33)
        {
          sub_100004A34(v33);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
    goto LABEL_43;
  }

  v5 = *(a2 + 304);
  v6 = *(a2 + 312);
  if (v5 != v6)
  {
    while (1)
    {
      v7 = v3[5];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5;
        if (*(v5 + 23) < 0)
        {
          v8 = *v5;
        }

        v9 = __p;
        if (v35 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Applying Remap from: [%s] to: [%s]", buf, 0x16u);
      }

      (*v3[7]->isa)(buf);
      v10 = Registry::getServiceMap(*buf);
      v11 = v10;
      if (v12 < 0)
      {
        v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
        v14 = 5381;
        do
        {
          v12 = v14;
          v15 = *v13++;
          v14 = (33 * v14) ^ v15;
        }

        while (v15);
      }

      std::mutex::lock(v10);
      v32 = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &v32);
      if (!v16)
      {
        break;
      }

      v18 = v16[3];
      v17 = v16[4];
      if (!v17)
      {
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
LABEL_23:
      (*(*v18 + 280))(v18, v5, __p);
      if ((v19 & 1) == 0)
      {
        sub_100004A34(v17);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v5 += 3;
      if (v5 == v6)
      {
        goto LABEL_49;
      }
    }

    v18 = 0;
LABEL_22:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_23;
  }

LABEL_49:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10015C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::remapSimLabelForPlaceHolder_sync(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  if (*(a1 + 736) == 1)
  {
    v4 = *(a1 + 720);
    v5 = *(a1 + 728);
    v6 = (a1 + 712);
    if (v4 >= v5)
    {
      v7 = sub_10016B30C(v6, a2);
    }

    else
    {
      sub_10016B2AC(v6, a2);
      v7 = v4 + 24;
    }

    *(a1 + 720) = v7;
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v11 = 136315138;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Adding remap from iccid: %s", &v11, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101762684(v2, v8, v9);
    }
  }
}

void CellularPlanListModelLocal::setSystemSelectionChange_sync(uint64_t a1, uint64_t a2, const std::string *a3)
{
  if (CellularPlanListModelLocal::hasIccid_sync(a1, a2, (a1 + 144)))
  {
    v6 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v8 = *(a2 + 23);
    if (size)
    {
      v9 = *(a2 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v10 = *(a2 + 8);
      }

      if (v10 != size || ((v8 & 0x80u) == 0 ? (v11 = a2) : (v11 = *a2), v6 >= 0 ? (v12 = a3) : (v12 = a3->__r_.__value_.__r.__words[0]), memcmp(v11, v12, size)))
      {
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          if ((v8 & 0x80u) == 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          v15 = a3->__r_.__value_.__r.__words[0];
          if (v6 >= 0)
          {
            v15 = a3;
          }

          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = v14;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = v15;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid system selection - system data ICCID (%s) must match system selected ICCID (%s)", buf, 0x16u);
        }

        return;
      }
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v16 = v8;
    v17 = *(a1 + 919);
    if (v17 >= 0)
    {
      v18 = *(a1 + 919);
    }

    else
    {
      v18 = *(a1 + 904);
    }

    if ((v8 & 0x80u) == 0)
    {
      v19 = v8;
    }

    else
    {
      v19 = v9;
    }

    v20 = (a1 + 896);
    if (v18 != v19 || (v17 >= 0 ? (v21 = (a1 + 896)) : (v21 = *(a1 + 896)), v16 >= 0 ? (v22 = a2) : (v22 = *a2), !memcmp(v21, v22, v18) ? (v23 = v18 == size) : (v23 = 0), !v23 || (v6 >= 0 ? (v24 = a3) : (v24 = a3->__r_.__value_.__r.__words[0]), memcmp(v21, v24, size))))
    {
      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = a1 + 896;
        if (v17 < 0)
        {
          v26 = *v20;
        }

        v27 = *a2;
        if (v16 >= 0)
        {
          v27 = a2;
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v26;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Updating system selection (%s) -> (%s)", buf, 0x16u);
      }

      if (sub_10016FA58(a1 + 944, a2))
      {
        CellularPlanListModelLocal::removeManagedPersonality(a1, a2, 1);
      }

      std::string::operator=((a1 + 896), a2);
      std::string::operator=((a1 + 920), a3);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      sGetProfileDetails();
      atomic_store(BYTE8(v61) & BYTE9(v53), (a1 + 768));
      v28 = *(a1 + 80);
      if (v28)
      {
        v29 = std::__shared_weak_count::lock(v28);
        if (v29)
        {
          v30 = v29;
          v31 = *(a1 + 72);
          if (v31)
          {
            memset(&v51, 0, sizeof(v51));
            v32 = *(a1 + 943);
            if (v32 < 0)
            {
              v32 = *(a1 + 928);
            }

            if (v32)
            {
              if (!capabilities::ct::supportsGemini(v29))
              {
                goto LABEL_68;
              }

              v33 = atomic_load((a1 + 768));
              if ((v33 & 1) == 0)
              {
                goto LABEL_68;
              }

              v34 = (a1 + 864);
              v35 = *(a1 + 887);
              if (v35 < 0)
              {
                v35 = *(a1 + 872);
              }

              if (!v35)
              {
LABEL_68:
                v34 = (a1 + 896);
              }
            }

            else
            {
              v34 = (a1 + 864);
            }

            std::string::operator=(&v51, v34);
            *(a1 + 888) = CellularPlanListModelLocal::calculateLegacySlot(a1, &v51.__r_.__value_.__l.__data_);
            CellularPlanListModelLocal::getEnabledIccids(a1, 1, __p);
            (*(*v31 + 152))(v31, __p, &v51);
            sub_100009970(__p, __p[1]);
            v36 = *(a1 + 919);
            if (v36 < 0)
            {
              v36 = *(a1 + 904);
            }

            CellularPlanListModelLocal::enableUserSelectedProfiles_sync(a1, v36 != 0);
            v37 = *(a1 + 919);
            if (v37 < 0)
            {
              v37 = *(a1 + 904);
            }

            if (v37)
            {
              v38 = *(a1 + 144);
              v39 = *(a1 + 152);
              if (v38 != v39)
              {
                v40 = v38 + 72;
                while (1)
                {
                  v41 = *(v40 + 23);
                  if (v41 >= 0)
                  {
                    v42 = *(v40 + 23);
                  }

                  else
                  {
                    v42 = *(v40 + 8);
                  }

                  v43 = *(a1 + 919);
                  v44 = v43;
                  if ((v43 & 0x80u) != 0)
                  {
                    v43 = *(a1 + 904);
                  }

                  if (v42 == v43)
                  {
                    v45 = v41 >= 0 ? v40 : *v40;
                    v46 = (v44 >= 0 ? a1 + 896 : *v20);
                    if (!memcmp(v45, v46, v42) && (subscriber::isSimSettled() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v47 = v40 + 96;
                  v40 += 168;
                  if (v47 == v39)
                  {
                    goto LABEL_92;
                  }
                }

                v39 = v40 - 72;
LABEL_92:
                v38 = v39;
                v39 = *(a1 + 152);
              }

              if (v38 != v39)
              {
                (*(*v31 + 16))(v31, 0);
              }
            }

            else
            {
              CellularPlanListModelLocal::calculateHomeCountryList_sync(a1, v50);
              CellularPlanListModelLocal::getSubscriberDataIdInfo_sync(a1, __p);
              (*(*v31 + 72))(v31, v50, __p);
              if (v49 < 0)
              {
                operator delete(__p[0]);
              }

              if (v50[24] == 1)
              {
                __p[0] = v50;
                sub_1000087B4(__p);
              }
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }
          }

          sub_100004A34(v30);
        }
      }

      if (BYTE8(v61) == 1)
      {
        sub_100E3A5D4(buf);
      }
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101762700();
  }
}

void sub_10015C9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a20 == 1)
  {
    __p = &a17;
    sub_1000087B4(&__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_100004A34(v54);
  if (a54 == 1)
  {
    sub_100E3A5D4(&a27);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::calculateHomeCountryList_sync(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(**(this + 7) + 40))(*(this + 7)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(this + 100);
  if (v4 >= 2)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_1017627EC();
    }

LABEL_12:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  if (!v4)
  {
    v6 = *(this + 919);
    if (v6 < 0)
    {
      v6 = *(this + 113);
    }

    if (v6)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *&v32 = 0;
      v31 = 0uLL;
      *(a2 + 24) = 1;
      __dst[0] = &v31;
      sub_1000087B4(__dst);
      return;
    }

    goto LABEL_12;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v27 = 0;
  v5 = *(this + 98);
  if (*(v5 + 55) < 0)
  {
    sub_100005F2C(__dst, *(v5 + 32), *(v5 + 40));
  }

  else
  {
    *__dst = *(v5 + 32);
    v27 = *(v5 + 48);
  }

  v7 = sub_100007A6C(this + 248, __dst);
  if ((this + 256) != v7 && *(v7 + 440) == 1)
  {
    v8 = *(v7 + 392);
    v9 = *(v7 + 400);
    if (v8 != v9)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_10004EFD0(a2, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
      *(a2 + 24) = 1;
      goto LABEL_54;
    }
  }

  v10 = *(this + 919);
  if (v10 < 0)
  {
    v10 = *(this + 113);
  }

  if (v10)
  {
    v38 = 0u;
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    sGetProfileDetails();
    if (BYTE8(v38) != 1)
    {
LABEL_51:
      *a2 = 0;
      *(a2 + 24) = 0;
LABEL_52:
      if (BYTE8(v38) == 1)
      {
        sub_100E3A5D4(&v31);
      }

      goto LABEL_54;
    }

    (***(this + 7))(v24);
    ServiceMap = Registry::getServiceMap(v24[0]);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    *&v22 = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &v22);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_32:
    if (v24[1])
    {
      sub_100004A34(v24[1]);
    }

    if (!v19)
    {
LABEL_49:
      if ((v20 & 1) == 0)
      {
        sub_100004A34(v18);
      }

      goto LABEL_51;
    }

    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    (*(*v19 + 24))(v24, v19, v37);
    if (SHIBYTE(v25) < 0)
    {
      if (v24[1])
      {
        sub_100005F2C(__p, v24[0], v24[1]);
        goto LABEL_40;
      }
    }

    else if (HIBYTE(v25))
    {
      *__p = *v24;
      v29 = v25;
LABEL_40:
      v22 = 0uLL;
      v23 = 0;
      sub_10016FB64(&v22, __p, &v30, 1uLL);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      *a2 = v22;
      *(a2 + 16) = v23;
      v22 = 0uLL;
      v23 = 0;
      *(a2 + 24) = 1;
      __p[0] = &v22;
      sub_1000087B4(__p);
      v21 = 0;
      goto LABEL_46;
    }

    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101762774();
    }

    v21 = 1;
LABEL_46:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if ((v21 & 1) == 0)
    {
      if ((v20 & 1) == 0)
      {
        sub_100004A34(v18);
      }

      goto LABEL_52;
    }

    goto LABEL_49;
  }

  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_54:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10015CE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v60 & 1) == 0)
  {
    sub_100004A34(v59);
  }

  if (a59 == 1)
  {
    sub_100E3A5D4(&a32);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::getSubscriberDataIdInfo_sync@<X0>(const std::string *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::string::operator=(a2, this + 36);
  result = CellularPlanListModelLocal::isIccidForPhySlot_sync(this, &this[36]);
  *(a2 + 24) = result ^ 1;
  *(a2 + 28) = 1;
  return result;
}

void sub_10015CF84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::setDisplaySubscriptionInfo_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      __p = (v4 + 8);
      v6 = sub_1001705A0(a1 + 248, (v4 + 8));
      sub_10015D2DC(v6 + 240, v4);
      v4 += 200;
    }

    while (v4 != v5);
  }

  CellularPlanListModelLocal::updateCarrierNames_sync(a1, 3);
  if (*a2 != a2[1])
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    v7 = *(a1 + 248);
    if (v7 == (a1 + 256))
    {
      v8 = 0;
      v12 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        if (*(v7 + 440) == 1)
        {
          if (v8 >= v21)
          {
            v8 = sub_10016B44C(&__p, (v7 + 30));
          }

          else
          {
            sub_10016AB7C(v8, (v7 + 30));
            v8 += 200;
          }

          v20 = v8;
        }

        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 256));
      v12 = __p;
    }

    v13 = *(a1 + 104);
    memset(v23, 0, sizeof(v23));
    sub_10016B908(v23, v12, v8, 0x8F5C28F5C28F5C29 * ((v8 - v12) >> 3));
    (*(*v13 + 40))(v13, v23);
    p_p = v23;
    sub_1000E2698(&p_p);
    p_p = &__p;
    sub_1000E2698(&p_p);
  }

  if ((*(a1 + 919) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 904))
    {
LABEL_22:
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N System selecction enabled", &__p, 2u);
      }

      return;
    }
  }

  else if (*(a1 + 919))
  {
    goto LABEL_22;
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 72);
      if (v18)
      {
        CellularPlanListModelLocal::calculateHomeCountryList_sync(a1, v22);
        CellularPlanListModelLocal::getSubscriberDataIdInfo_sync(a1, &__p);
        (*(*v18 + 72))(v18, v22, &__p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        if (v22[24] == 1)
        {
          __p = v22;
          sub_1000087B4(&__p);
        }
      }

      sub_100004A34(v17);
    }
  }
}

void sub_10015D250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1)
  {
    __p = &a16;
    sub_1000087B4(&__p);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10015D2DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    std::string::operator=((a1 + 56), (a2 + 56));
    *(a1 + 80) = *(a2 + 80);
    std::string::operator=((a1 + 88), (a2 + 88));
    *(a1 + 112) = *(a2 + 112);
    std::string::operator=((a1 + 120), (a2 + 120));
    *(a1 + 144) = *(a2 + 144);
    if (a1 != a2)
    {
      sub_100008234((a1 + 152), *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
      sub_10016C7A0((a1 + 176), *(a2 + 176), *(a2 + 184), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 184) - *(a2 + 176)) >> 3));
    }
  }

  else
  {
    sub_10016AB7C(a1, a2);
    *(a1 + 200) = 1;
  }

  return a1;
}

void CellularPlanListModelLocal::updateEntitlementSubscriptionInfo_sync(CellularPlanListModelLocal *this)
{
  memset(&__str, 0, sizeof(__str));
  CellularPlanListModelLocal::getUserSelectedIccid_sync(this, &__str);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      v2 = (this + 152);
      v3 = *(this + 19);
      v4 = *(this + 18);
      __p = __str;
      goto LABEL_6;
    }

LABEL_31:
    v13 = *(this + 5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v14 = "#I No user selected esim";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    goto LABEL_44;
  }

  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_31;
  }

  v2 = (this + 152);
  v3 = *(this + 19);
  v4 = *(this + 18);
  sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
LABEL_6:
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v4 == v3)
  {
LABEL_23:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = v4 + 18;
  while (1)
  {
    v9 = *(v8 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v8 + 1);
    }

    if (size == v9)
    {
      v11 = v10 >= 0 ? v8 : *v8;
      if (!memcmp(p_p, v11, size))
      {
        break;
      }
    }

    v12 = v8 + 24;
    v8 += 42;
    if (v12 == v3)
    {
      v4 = v3;
      goto LABEL_23;
    }
  }

  v4 = v8 - 18;
  if (v5 < 0)
  {
LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_25:
  if (v4 == *v2)
  {
    v13 = *(this + 5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v14 = "#I SimInfo not present";
    goto LABEL_43;
  }

  if (!*v4)
  {
    v13 = *(this + 5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v14 = "#I Sim is not active instance";
    goto LABEL_43;
  }

  if (v4[16] != 3)
  {
    v13 = *(this + 5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v14 = "#I Sim info not tape capable";
    goto LABEL_43;
  }

  if (v4[2] != 5)
  {
    v13 = *(this + 5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v14 = "#I Sim state not ready";
    goto LABEL_43;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __str;
  }

  CellularPlanListModelLocal::getProfileDetailsForIccid_sync(this, &__dst, buf);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v39 == 1)
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27[0]) = 0;
      v16 = "#I Vinyl bootstrap profile";
LABEL_53:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, v27, 2u);
    }
  }

  else
  {
    v17 = sub_100007A6C(this + 248, &v38);
    if ((this + 256) == v17 || *(v17 + 640) != 1 || (v18 = *(v17 + 448), v18 <= CFAbsoluteTimeGetCurrent()))
    {
      v30 = 0u;
      memset(v31, 0, sizeof(v31));
      v28 = 0u;
      v29 = 0u;
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, sizeof(v26));
      std::string::operator=(v26, &__str);
      sub_10015DBC4(&v31[8], v26);
      v35[1] = 0;
      v35[0] = 0;
      v36 = 0;
      CellularPlanListModelLocal::getCsnForIccid_sync(this, &__str, v35);
      if (v36 == 1)
      {
        ctu::hex(&v24, v35, 0x10, v19);
        if (v28 == 1)
        {
          if (SHIBYTE(v27[2]) < 0)
          {
            operator delete(*(&v27[1] + 1));
          }

          *(&v27[1] + 8) = v24;
          *(&v27[2] + 1) = v25;
        }

        else
        {
          *(&v27[1] + 8) = v24;
          *(&v27[2] + 1) = v25;
          LOBYTE(v28) = 1;
        }
      }

      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I fetching subscription account info", &v24, 2u);
      }

      v21 = *(this + 11);
      sub_10016BA80(v23, v27);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 0x40000000;
      v22[2] = sub_10015DED0;
      v22[3] = &unk_101E2CA78;
      v22[4] = this;
      (*(*v21 + 16))(v21, 1, v23, 1, v22);
      sub_10015E224(v23);
      sub_10015E2C8(v26);
      sub_10015E224(v27);
      goto LABEL_68;
    }

    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27[0]) = 0;
      v16 = "#I No updating SubscriptionAccountInfo, too early";
      goto LABEL_53;
    }
  }

LABEL_68:
  sub_100E3A5D4(buf);
LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10015D918(_Unwind_Exception *a1)
{
  sub_100E3A5D4(&STACK[0x260]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  _Unwind_Resume(a1);
}

_BYTE *CellularPlanListModelLocal::getUserSelectedIccid_sync@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 193) >= 2u || (v3 = this, v4 = *(this + 98), v5 = this + 792, v4 == (this + 792)))
  {
LABEL_10:

    return sub_10000501C(a2, "");
  }

  else
  {
    while (1)
    {
      this = CellularPlanListModelLocal::hasIccid_sync(this, (v4 + 4), v3 + 18);
      if (this)
      {
        break;
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_10;
      }
    }

    if (*(v4 + 55) < 0)
    {
      v10 = v4[4];
      v11 = v4[5];

      return sub_100005F2C(a2, v10, v11);
    }

    else
    {
      v9 = *(v4 + 2);
      *(a2 + 16) = v4[6];
      *a2 = v9;
    }
  }

  return this;
}

uint64_t CellularPlanListModelLocal::getProfileDetailsForIccid_sync@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 120);
  v5 = *(result + 128);
  if (v4 == v5)
  {
LABEL_19:
    *(a3 + 77) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0;
  }

  else
  {
    while (1)
    {
      if (*(v4 + 80) == 1)
      {
        v7 = *(v4 + 56);
        v8 = *(v4 + 64);
        if (v7 != v8)
        {
          break;
        }
      }

LABEL_18:
      v4 += 88;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }

    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    while (1)
    {
      v11 = *(v7 + 39);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 24);
      }

      if (v11 == v10)
      {
        v13 = v12 >= 0 ? (v7 + 16) : *(v7 + 16);
        v14 = v9 >= 0 ? a2 : *a2;
        result = memcmp(v13, v14, v10);
        if (!result)
        {
          break;
        }
      }

      v7 += 216;
      if (v7 == v8)
      {
        goto LABEL_18;
      }
    }

    return sub_100F11F00(a3, v7);
  }

  return result;
}

char *sub_10015DBC4(char *__dst, std::string *__str)
{
  if (__dst[64] == 1)
  {
    std::string::operator=(__dst, __str);
    v4 = *(__str[1].__r_.__value_.__r.__words + 5);
    *(__dst + 3) = __str[1].__r_.__value_.__l.__data_;
    *(__dst + 29) = v4;
    std::string::operator=((__dst + 40), (__str + 40));
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v5;
    }

    data = __str[1].__r_.__value_.__l.__data_;
    *(__dst + 29) = *(__str[1].__r_.__value_.__r.__words + 5);
    *(__dst + 3) = data;
    if (__str[2].__r_.__value_.__s.__data_[15] < 0)
    {
      sub_100005F2C(__dst + 40, __str[1].__r_.__value_.__r.__words[2], __str[2].__r_.__value_.__r.__words[0]);
    }

    else
    {
      v7 = *&__str[1].__r_.__value_.__r.__words[2];
      *(__dst + 7) = __str[2].__r_.__value_.__l.__size_;
      *(__dst + 40) = v7;
    }

    __dst[64] = 1;
  }

  return __dst;
}

void sub_10015DC8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::getCsnForIccid_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      v4 = (a1 + 128);
      v5 = *(a1 + 128);
      v6 = *(a1 + 120);
      *v13 = *a2;
      v14 = *(a2 + 16);
      goto LABEL_6;
    }

LABEL_34:
    v12 = 0;
    *a3 = 0;
    goto LABEL_35;
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_34;
  }

  v4 = (a1 + 128);
  v5 = *(a1 + 128);
  v6 = *(a1 + 120);
  sub_100005F2C(v13, *a2, v7);
LABEL_6:
  if (v6 != v5)
  {
    while (1)
    {
      if (*(v6 + 80))
      {
        v8 = *(v6 + 56);
        v9 = *(v6 + 64);
        if (SHIBYTE(v14) < 0)
        {
          sub_100005F2C(__dst, v13[0], v13[1]);
        }

        else
        {
          *__dst = *v13;
          v16 = v14;
        }

        if (v8 != v9)
        {
          while (1)
          {
            if (*(v8 + 39) < 0)
            {
              sub_100005F2C(v19, *(v8 + 16), *(v8 + 24));
            }

            else
            {
              *v19 = *(v8 + 16);
              v20 = *(v8 + 32);
            }

            if (SHIBYTE(v16) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v18 = v16;
            }

            v10 = sub_100922660(v19, __p);
            if (SHIBYTE(v18) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v20) < 0)
            {
              operator delete(v19[0]);
            }

            if (v10)
            {
              break;
            }

            v8 += 216;
            if (v8 == v9)
            {
              v8 = v9;
              break;
            }
          }
        }

        v11 = *(v6 + 64);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v8 != v11)
        {
          break;
        }
      }

      v6 += 88;
      if (v6 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v6 == *v4)
  {
    goto LABEL_34;
  }

  *a3 = *(v6 + 16);
  v12 = 1;
LABEL_35:
  a3[16] = v12;
}

void sub_10015DE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015DED0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 && (v4 = *a2) != 0)
  {
    if (*v4 == 6000)
    {
      v5 = *(v4 + 24);
      if (v5 && (*(v5 + 120) & 1) != 0)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v6 = *(v5 + 96);
        v7 = *(v5 + 104);
        if (v6 != v7)
        {
          v8 = v6 + 128;
          do
          {
            if (*(v8 - 40))
            {
              v9 = v23;
              if (v23 >= v24)
              {
                v10 = sub_10016BC94(&v22);
              }

              else
              {
                *(v23 + 160) = 0u;
                *(v9 + 176) = 0u;
                *(v9 + 128) = 0u;
                *(v9 + 144) = 0u;
                *(v9 + 96) = 0u;
                *(v9 + 112) = 0u;
                *(v9 + 64) = 0u;
                *(v9 + 80) = 0u;
                *(v9 + 32) = 0u;
                *(v9 + 48) = 0u;
                *v9 = 0u;
                *(v9 + 16) = 0u;
                v10 = v9 + 192;
                *(v9 + 185) = 1;
              }

              v23 = v10;
              ctu::hex(&v18, (*(v3 + 120) + 16), 0x10, a3);
              v11 = (v10 - 184);
              if (*(v10 - 161) < 0)
              {
                operator delete(*v11);
              }

              v12 = v18;
              *(v10 - 168) = v19;
              *v11 = v12;
              *(v10 - 192) = CFAbsoluteTimeGetCurrent() + 300.0;
              if ((*(v8 - 40) & 1) == 0)
              {
                sub_1000D1644();
              }

              std::string::operator=((v10 - 160), (v8 - 64));
              if (*(v8 + 4) == 1)
              {
                *(v10 - 135) = sub_100BFED0C(*v8);
              }

              if (*(v8 - 8) == 1)
              {
                if (*(v8 - 9) < 0)
                {
                  sub_100005F2C(__p, *(v8 - 32), *(v8 - 24));
                }

                else
                {
                  v13 = *(v8 - 32);
                  v17 = *(v8 - 16);
                  *__p = v13;
                }

                *(v10 - 136) = sub_100BFE9D0(__p);
                if (SHIBYTE(v17) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (*(v8 + 96) == 1)
              {
                std::string::operator=((v10 - 56), (v8 + 72));
                if (*(v8 + 128) == 1)
                {
                  std::string::operator=((v10 - 32), (v8 + 104));
                }
              }

              if (*(v8 + 32) == 1)
              {
                std::string::operator=((v10 - 128), (v8 + 8));
              }

              if (*(v8 + 4) == 1)
              {
                *(v10 - 135) = sub_100BFED0C(*v8);
              }

              v25 = v8 - 64;
              v14 = sub_1001705A0(v3 + 248, (v8 - 64));
              sub_100156E08(v14 + 448, v10 - 192);
            }

            else if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101762820(&v20, v21);
            }

            v15 = v8 + 136;
            v8 += 264;
          }

          while (v15 != v7);
        }

        CellularPlanListModelLocal::notifyLocalPlanInfoUpdate(v3);
        (*(**(v3 + 104) + 56))(*(v3 + 104), &v22);
        *&v18 = &v22;
        sub_10016BF8C(&v18);
      }

      else if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101762854();
      }
    }
  }

  else if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101762888();
  }
}

void sub_10015E1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  a15 = &a19;
  sub_10016BF8C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10015E224(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }
  }

  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10015E2C8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_10015E30C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = *(result + 7);
      return sub_100005F2C(a2, v4, v3);
    }
  }

  else if (result[79])
  {
    *a2 = *(result + 56);
    v2 = *(result + 9);
LABEL_9:
    *(a2 + 16) = v2;
    return result;
  }

  if ((result[47] & 0x80000000) == 0)
  {
    if (result[47])
    {
      *a2 = *(result + 24);
      v2 = *(result + 5);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v3 = *(result + 4);
  if (v3)
  {
    v4 = *(result + 3);
    return sub_100005F2C(a2, v4, v3);
  }

LABEL_13:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t CellularPlanListModelLocal::isThereAnyEsimUserProfileAvailable(CellularPlanListModelLocal *this)
{
  for (i = *(this + 15); i != *(this + 16); i += 88)
  {
    if (*(i + 80) == 1 && *(i + 12) == 3)
    {
      for (j = *(i + 56); j != *(i + 64); j += 216)
      {
        if ((*(j + 89) & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10015E3CC(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
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

uint64_t CellularPlanListModelLocal::getTransferSupportedOptionForPlanInfo_sync(uint64_t a1, void **a2, int a3, _DWORD *a4, char a5)
{
  (***(a1 + 56))(&v26);
  Registry::getTelephonyCapabilities(v29, v26);
  v10 = (*(*v29[0] + 80))(v29[0]);
  if (v29[1])
  {
    sub_100004A34(v29[1]);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  v11 = 0;
  if ((a5 & 1) == 0 && a4[41] == 2)
  {
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    if (a3)
    {
      sGetProfileDetails();
      sub_1001700F8(v29, &v26);
      if (v28 == 1)
      {
        sub_100E3A5D4(&v26);
      }

      v12 = a1 + 792 != sub_100007A6C(a1 + 784, a2);
    }

    else
    {
      v12 = 0;
    }

    (***(a1 + 56))(&v26);
    ServiceMap = Registry::getServiceMap(v26);
    v14 = ServiceMap;
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    v25 = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &v25);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
LABEL_20:
    if (v27)
    {
      sub_100004A34(v27);
    }

    if (v21)
    {
      v23 = (*(*v21 + 24))(v21);
      if (v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = 1;
      if (v22)
      {
LABEL_25:
        v11 = 0;
        if ((v12 & v10 & v23) == 1 && a4[42] == 2)
        {
          if (a4[43] == 2 && *(a1 + 324) != 1)
          {
            v11 = 0;
          }

          else
          {
            v11 = 4;
          }
        }

        if (*(a1 + 324) == 1)
        {
          v11 = _os_feature_enabled_impl() ? v11 | 2 : v11;
          if (a4[40] == 2)
          {
            v11 = v11 | CellularPlanListModelLocal::isVinylAvailable_sync(a1, 3);
          }
        }

        if (BYTE8(v30) == 1)
        {
          sub_100E3A5D4(v29);
        }

        return v11;
      }
    }

    sub_100004A34(v20);
    goto LABEL_25;
  }

  return v11;
}

void sub_10015E764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 == 1)
  {
    sub_100E3A5D4(&a39);
  }

  _Unwind_Resume(a1);
}

std::string *sub_10015E7F8@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (result->__r_.__value_.__s.__data_[0] == 1)
  {
    result = sub_10016C728(a2, &result->__r_.__value_.__r.__words[1]);
  }

  if (v2[5].__r_.__value_.__s.__data_[8] == 1)
  {
    return sub_10016C728(a2, (v2 + 152));
  }

  return result;
}

void sub_10015E854(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_1017628BC(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10015E874(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &off_101E2CD58;
    sub_100174488(&v2);
  }

  return a1 + 8;
}

uint64_t sub_10015E8F8(uint64_t a1)
{
  v3 = (a1 + 392);
  sub_1000E2794(&v3);
  v3 = (a1 + 368);
  sub_1000087B4(&v3);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  return sub_100E3A5D4(a1);
}

BOOL CellularPlanListModelLocal::updateDeleteProfile_sync(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 400);
  v5 = *(a1 + 40);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (result)
    {
      v8 = (a2 + 16);
      if (*(a2 + 39) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Deleting %s", buf, 0xCu);
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(a1 + 72);
        if (v12)
        {
          if (*(a2 + 39) < 0)
          {
            sub_100005F2C(__p, *(a2 + 16), *(a2 + 24));
          }

          else
          {
            *__p = *(a2 + 16);
            v23 = *(a2 + 32);
          }

          (*(*v12 + 216))(v12, __p);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100004A34(v11);
      }
    }

LABEL_20:
    sub_1013F05F4(buf);
    v13 = *(a1 + 400) == 1 && sub_1013F36E8(a1 + 352, buf);
    if (SBYTE7(v26) < 0)
    {
      operator delete(v25[0]);
      if (v13)
      {
LABEL_25:
        v14 = (*(**(a1 + 56) + 80))(*(a1 + 56));
        v15 = VinylSlotIdFromInt(v14);
        v16 = *(a1 + 120);
        v17 = *(a1 + 128);
        if (v16 != v17)
        {
          v18 = v15;
          do
          {
            v42 = 0;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            memset(v38, 0, sizeof(v38));
            sub_100F11B6C(v38, v16);
            v19 = v42;
            if (DWORD1(v38[0]) == v18 && (v42 & 1) != 0)
            {
              v20 = *(&v40 + 1);
              v21 = v41;
              while (v20 != v21)
              {
                v37 = 0;
                v35 = 0u;
                v36 = 0u;
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                *v25 = 0u;
                v26 = 0u;
                *buf = 0u;
                sub_100F11F00(buf, v20);
                if ((BYTE9(v29) & 1) == 0)
                {
                  sub_100174C7C((a1 + 248), v25);
                }

                if (sub_1000727F0((a1 + 944), v25))
                {
                  CellularPlanListModelLocal::removeManagedPersonality(a1, v25, 1);
                }

                sub_100E3A5D4(buf);
                v20 += 216;
              }

              CellularPlanListModelLocal::persistUserData_sync(a1);
              v19 = v42;
            }

            if (v19)
            {
              *buf = &v40 + 8;
              sub_100112120(buf);
            }

            if (SBYTE7(v40) < 0)
            {
              operator delete(v39);
            }

            v16 += 88;
          }

          while (v16 != v17);
        }

LABEL_49:
        sub_10016DC58(a1 + 352, a2);
        return 1;
      }
    }

    else if (v13)
    {
      goto LABEL_25;
    }

    if (*(a1 + 400) == 1 && (*(a2 + 48) & 1) == 0)
    {
      sub_100174C7C((a1 + 248), (a1 + 368));
      if (sub_1000727F0((a1 + 944), (a1 + 368)))
      {
        CellularPlanListModelLocal::removeManagedPersonality(a1, a1 + 368, 1);
      }

      CellularPlanListModelLocal::persistUserData_sync(a1);
    }

    goto LABEL_49;
  }

  if (result)
  {
    v7 = (a1 + 368);
    if (*(a1 + 391) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Profile already deleting: (%s)", buf, 0xCu);
    return 0;
  }

  return result;
}

void CellularPlanListModelLocal::maybeDisableColdPhysicalSim_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = (a2 + 8);
  sub_100174CD8(a4, *a2, (a2 + 8));
  memset(&v78, 0, sizeof(v78));
  v9 = *a2;
  if (v9 == v8)
  {
    return;
  }

  do
  {
    if (CellularPlanListModelLocal::isIccidForPhySlot_sync(a1, (v9 + 4)))
    {
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      v11 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        goto LABEL_165;
      }

      std::string::operator=(&v78, (v9 + 4));
    }

    v12 = v9[1];
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
        v13 = v9[2];
        v14 = *v13 == v9;
        v9 = v13;
      }

      while (!v14);
    }

    v9 = v13;
  }

  while (v13 != v8);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v78.__r_.__value_.__l.__size_)
    {
      goto LABEL_164;
    }

    memset(&__dst, 0, sizeof(__dst));
    sub_100005F2C(&__dst, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    if (!*(&v78.__r_.__value_.__s + 23))
    {
      return;
    }

    __dst = v78;
  }

  v15 = sub_100007A6C(a1 + 328, &__dst.__r_.__value_.__l.__data_);
  if (a1 + 336 == v15)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101762924();
    }
  }

  else if (*(v15 + 60))
  {
    v16 = *(v15 + 56);
    *v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    memset(&v73, 0, sizeof(v73));
    memset(&v72, 0, sizeof(v72));
    v17 = *(a1 + 144);
    v18 = *(a1 + 152);
    if (v17 != v18)
    {
      v19 = v17 + 6;
      do
      {
        v20 = SHIBYTE(v19[-3].__r_.__value_.__r.__words[2]);
        if (v20 >= 0)
        {
          v21 = HIBYTE(v19[-3].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v19[-3].__r_.__value_.__l.__size_;
        }

        v22 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = v78.__r_.__value_.__l.__size_;
        }

        if (v21 == v22)
        {
          v23 = v20 >= 0 ? &v19[-3] : v19[-3].__r_.__value_.__r.__words[0];
          v24 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v78 : v78.__r_.__value_.__r.__words[0];
          if (!memcmp(v23, v24, v21))
          {
            sub_100A34BC8(v80);
            sub_10015F6CC(v74, v80);
            if (SHIBYTE(v82) < 0)
            {
              operator delete(*(&v81 + 1));
            }

            if (SBYTE7(v81) < 0)
            {
              operator delete(v80[0]);
            }

            std::string::operator=(&v73, v19 - 1);
            std::string::operator=(&v72, v19);
          }
        }

        v25 = v19 + 1;
        v19 += 7;
      }

      while (v25 != v18);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *v80 = 0u;
    v81 = 0u;
    sGetProfileDetails();
    if (BYTE8(v93))
    {
      (*(**(a1 + 56) + 352))(&v68);
      v26 = v70;
      v27 = v70;
      if (v70 != v71)
      {
        v27 = v70;
        while (*v27 != v16)
        {
          if (++v27 == v71)
          {
            goto LABEL_150;
          }
        }
      }

      if (v27 != v71)
      {
        v28 = v68;
        v62 = v69;
        if (v68 != v69)
        {
          if (SHIBYTE(v75[0]) >= 0)
          {
            v29 = HIBYTE(v75[0]);
          }

          else
          {
            v29 = v74[1];
          }

          if (SHIBYTE(v75[0]) >= 0)
          {
            v30 = v74;
          }

          else
          {
            v30 = v74[0];
          }

          __s2 = v30;
          v31 = HIBYTE(v76);
          if (v76 < 0)
          {
            v31 = v76;
          }

          v32 = &v75[1];
          if (v76 < 0)
          {
            v32 = v75[1];
          }

          v59 = v32;
          v60 = v31;
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v33 = v73.__r_.__value_.__l.__size_;
          }

          v34 = &v73;
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v73.__r_.__value_.__r.__words[0];
          }

          v63 = v34;
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = v72.__r_.__value_.__l.__size_;
          }

          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v72;
          }

          else
          {
            v36 = v72.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v37 = *(v28 + 47);
            v38 = v37;
            if ((v37 & 0x80u) != 0)
            {
              v37 = *(v28 + 32);
            }

            if (v37 == v29)
            {
              v39 = v38 >= 0 ? (v28 + 24) : *(v28 + 24);
              if (!memcmp(v39, __s2, v29))
              {
                v40 = *(v28 + 71);
                v41 = v40;
                if ((v40 & 0x80u) != 0)
                {
                  v40 = *(v28 + 56);
                }

                if (v40 == v60)
                {
                  v42 = v41 >= 0 ? (v28 + 48) : *(v28 + 48);
                  if (!memcmp(v42, v59, v60))
                  {
                    if (!v33)
                    {
                      break;
                    }

                    v43 = *(v28 + 95);
                    if (v43 < 0)
                    {
                      v43 = *(v28 + 80);
                    }

                    if (!v43)
                    {
                      break;
                    }

                    v44 = 0;
                    while (v63->__r_.__value_.__s.__data_[v44] == 102)
                    {
                      if (v33 == ++v44)
                      {
                        goto LABEL_122;
                      }
                    }

                    if (v44 == -1)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v45 = *(v28 + 95);
            v46 = v45;
            if ((v45 & 0x80u) != 0)
            {
              v45 = *(v28 + 80);
            }

            if (v45 == v33)
            {
              v47 = v46 >= 0 ? (v28 + 72) : *(v28 + 72);
              if (!memcmp(v47, v63, v33))
              {
                if (!v35)
                {
                  break;
                }

                v48 = *(v28 + 119);
                if (v48 < 0)
                {
                  v48 = *(v28 + 104);
                }

                if (!v48)
                {
                  break;
                }

                v49 = 0;
                while (v36->__r_.__value_.__s.__data_[v49] == 102)
                {
                  if (v35 == ++v49)
                  {
                    goto LABEL_122;
                  }
                }

                if (v49 == -1)
                {
                  break;
                }
              }
            }

            v50 = *(v28 + 119);
            v51 = v50;
            if ((v50 & 0x80u) != 0)
            {
              v50 = *(v28 + 104);
            }

            if (v50 == v35)
            {
              v52 = v51 >= 0 ? (v28 + 96) : *(v28 + 96);
              if (!memcmp(v52, v36, v35))
              {
                break;
              }
            }

            v28 += 120;
            if (v28 == v62)
            {
              goto LABEL_150;
            }
          }

LABEL_122:
          v53 = *(a1 + 40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Disable blocked physical SIM!", &buf, 2u);
          }

          sub_1000727F0(a4, &v78.__r_.__value_.__l.__data_);
          v54 = *(a1 + 40);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = &v78;
            if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v55 = v78.__r_.__value_.__r.__words[0];
            }

            if (*(a3 + 23) >= 0)
            {
              v56 = a3;
            }

            else
            {
              v56 = *a3;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v55;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Mark both [%s] and [%s] - as setup", &buf, 0x16u);
          }

          (***(a1 + 56))(&v64);
          sub_10014F618(v64, &v66);
          v57 = v66;
          if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&buf, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = v78;
          }

          (*(*v57 + 248))(v57, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v67)
          {
            sub_100004A34(v67);
          }

          if (v65)
          {
            sub_100004A34(v65);
          }

          (***(a1 + 56))(&v64);
          sub_10014F618(v64, &v66);
          v58 = v66;
          if (*(a3 + 23) < 0)
          {
            sub_100005F2C(&buf, *a3, a3[1]);
          }

          else
          {
            buf = *a3;
          }

          (*(*v58 + 248))(v58, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v67)
          {
            sub_100004A34(v67);
          }

          if (v65)
          {
            sub_100004A34(v65);
          }

          v26 = v70;
        }
      }

LABEL_150:
      if (v26)
      {
        v71 = v26;
        operator delete(v26);
      }

      buf.__r_.__value_.__r.__words[0] = &v68;
      sub_10016DD88(&buf);
      if (BYTE8(v93))
      {
        sub_100E3A5D4(v80);
      }
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75[1]);
    }

    if (SHIBYTE(v75[0]) < 0)
    {
      operator delete(v74[0]);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017628F0();
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_164:
  v11 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
LABEL_165:
  if (v11 < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}

void sub_10015F5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10016DD40(&a19);
  if (LOBYTE(STACK[0x208]) == 1)
  {
    sub_100E3A5D4(&a59);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_1000D6F38(&a37);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  sub_100009970(v59, *(v59 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10015F6CC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void CellularPlanListModelLocal::sendCAEvent(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6)
{
  (***(a1 + 56))(&v37);
  ServiceMap = Registry::getServiceMap(v37);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v39 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v39);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_9:
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v19)
  {
    v39 = 0;
    v21 = xpc_dictionary_create(0, 0, 0);
    v22 = v21;
    if (v21)
    {
      v39 = v21;
    }

    else
    {
      v22 = xpc_null_create();
      v39 = v22;
      if (!v22)
      {
        v23 = xpc_null_create();
        v22 = 0;
        goto LABEL_19;
      }
    }

    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      xpc_retain(v22);
LABEL_20:
      xpc_release(v22);
      if (*(a2 + 23) >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      v35 = xpc_string_create(v24);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      v37 = &v39;
      v38 = "source_carrier_name";
      sub_10000F688(&v37, &v35, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v35);
      v35 = 0;
      if (*(a4 + 23) >= 0)
      {
        v25 = a4;
      }

      else
      {
        v25 = *a4;
      }

      v33 = xpc_string_create(v25);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      v37 = &v39;
      v38 = "target_carrier_name";
      sub_10000F688(&v37, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      v31 = xpc_int64_create(a3);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v37 = &v39;
      v38 = "source_phone_number_length";
      sub_10000F688(&v37, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      v29 = xpc_int64_create(a5);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v37 = &v39;
      v38 = "target_phone_number_length";
      sub_10000F688(&v37, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v27 = xpc_int64_create(a6);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v37 = &v39;
      v38 = "abandon_type";
      sub_10000F688(&v37, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v26 = v39;
      v27 = 0;
      if (v39)
      {
        xpc_retain(v39);
      }

      else
      {
        v26 = xpc_null_create();
      }

      (*(*v19 + 16))(v19, "commCenterCellularPlanAbandonOperationDetails", &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v39);
      goto LABEL_40;
    }

    v23 = xpc_null_create();
LABEL_19:
    v39 = v23;
    goto LABEL_20;
  }

LABEL_40:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_10015FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  xpc_release(object);
  xpc_release(*(v23 - 88));
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

_BYTE *CellularPlanListModelLocal::getCarrierNameForIccid_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100007A6C(a1 + 248, a2);
  if ((a1 + 256) == result)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Missing carrier name for %s", &v12, 0xCu);
    }

    return sub_10000501C(a3, "");
  }

  else if (result[79] < 0)
  {
    v10 = *(result + 7);
    v11 = *(result + 8);

    return sub_100005F2C(a3, v10, v11);
  }

  else
  {
    v7 = *(result + 56);
    *(a3 + 16) = *(result + 9);
    *a3 = v7;
  }

  return result;
}

void CellularPlanListModelLocal::getLocalizedString_sync(CellularPlanListModelLocal *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  (***(this + 7))(&v16);
  ServiceMap = Registry::getServiceMap(v16);
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
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
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v14)
  {
    (*(*v14 + 32))(v14, kCoreTelephonyBundleID, kCBMessageLocalizationTable, a2, 1);
    if (v15)
    {
      return;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101762958();
  }

  *a3 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v13);
  }
}

void sub_10015FE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::resolveSimLabelsForUserEnabledIccids_sync(CellularPlanListModelLocal *this)
{
  v1 = *(this + 98);
  v2 = this + 792;
  if (v1 != (this + 792))
  {
    v4 = this + 304;
    while (1)
    {
      v5 = v1 + 4;
      if (*(v1 + 55) < 0)
      {
        sub_100005F2C(__p, v1[4], v1[5]);
      }

      else
      {
        *__p = *v5;
        v24 = v1[6];
      }

      v6 = sub_100007A6C(this + 296, __p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (v4 == v6)
      {
        v17 = *(this + 5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 55) < 0)
          {
            v5 = *v5;
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v5;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No label for (%s)", __p, 0xCu);
        }

        goto LABEL_30;
      }

      if ((*(v6 + 128) & 1) == 0)
      {
        break;
      }

LABEL_30:
      v18 = v1[1];
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
          v19 = v1[2];
          v20 = *v19 == v1;
          v1 = v19;
        }

        while (!v20);
      }

      v1 = v19;
      if (v19 == v2)
      {
        return;
      }
    }

    (***(this + 7))(&v21);
    ServiceMap = Registry::getServiceMap(v21);
    v8 = ServiceMap;
    if (v9 < 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, __p);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
LABEL_22:
    if (*(v1 + 55) < 0)
    {
      sub_100005F2C(__p, v1[4], v1[5]);
    }

    else
    {
      *__p = *v5;
      v24 = v1[6];
    }

    (*(*v15 + 248))(v15, __p, 1);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
      if (v16)
      {
LABEL_28:
        if (v22)
        {
          sub_100004A34(v22);
        }

        goto LABEL_30;
      }
    }

    else if (v16)
    {
      goto LABEL_28;
    }

    sub_100004A34(v14);
    goto LABEL_28;
  }
}

void sub_1001601A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100160214@<X0>(_BYTE *a1@<X8>)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  *__src = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_10000C320(&v9);
  v2 = sub_10000C030(&v10);
  v3 = sub_10000C030(v2);
  sub_10000C030(v3);
  if ((BYTE8(v16) & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < __src[1])
    {
      *&v16 = __src[1];
      v5 = __src[1];
    }

    v6 = __src[0];
  }

  else
  {
    if ((BYTE8(v16) & 8) == 0)
    {
      v4 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v6 = *(&v11 + 1);
    v5 = *(&v12 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, v6, v4);
  }

LABEL_14:
  a1[v4] = 0;
  *&v10 = v7;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001604B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::updateProvisioningPlanInfo_sync(uint64_t a1, uint64_t a2)
{
  if (!CellularPlanListModelLocal::isVinylAvailable_sync(a1, 3))
  {
    sub_100161A70(a2);
  }

  memset(&v141, 0, sizeof(v141));
  memset(v140, 0, sizeof(v140));
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  memset(v134, 0, sizeof(v134));
  v133 = 0u;
  if (*(a2 + 240) == 1)
  {
    v133 = *a2;
    std::string::operator=(v134, (a2 + 16));
    std::string::operator=(&v134[1], (a2 + 40));
    std::string::operator=(&v135, (a2 + 64));
    DWORD2(v136) = *(a2 + 88);
    BYTE12(v136) = *(a2 + 92);
    std::string::operator=(&v137, (a2 + 96));
    std::string::operator=((&v138 + 8), (a2 + 120));
    std::string::operator=(v140, (a2 + 144));
    std::string::operator=(&v140[1], (a2 + 168));
    std::string::operator=(&v141, (a2 + 192));
    sGetProfileDetails();
    if (BYTE8(v121))
    {
      sub_100E3A5D4(buf);
      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if ((v134[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v5 = v134;
        }

        else
        {
          v5 = v134[0].__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I profile %s already exists, reset placeholder info", buf, 0xCu);
      }

      sub_100161A70(a2);
    }
  }

  v6 = (a1 + 408);
  if (*(a2 + 240) == 1)
  {
    if ((*(a1 + 736) & 1) == 0)
    {
      v128 = 0u;
      v123 = 0;
      v125 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      memset(v120, 0, sizeof(v120));
      memset(v118, 0, sizeof(v118));
      v117 = 0u;
      memset(buf, 0, sizeof(buf));
      memset(v129, 0, 24);
      v124 = &v125;
      __p = 0;
      *&v128 = 0;
      v127 = 0;
      BYTE8(v128) = 0;
      sub_100161ABC(a1 + 408, buf);
      *v97 = v129;
      sub_1000087B4(v97);
      if (SBYTE7(v128) < 0)
      {
        operator delete(__p);
      }

      sub_100009970(&v124, v125);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(*(&v121 + 1));
      }

      sub_100E3A5D4(buf);
      v7 = dword_101FB16F8++;
      *(a1 + 648) = v7;
    }

    size = HIBYTE(v134[0].__r_.__value_.__r.__words[2]);
    if ((v134[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v134[0].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (*(a2 + 240))
      {
        *v6 = *a2;
        std::string::operator=((a1 + 424), (a2 + 16));
        std::string::operator=((a1 + 448), (a2 + 40));
        std::string::operator=((a1 + 472), (a2 + 64));
        v9 = *(a2 + 88);
        *(a1 + 500) = *(a2 + 92);
        *(a1 + 496) = v9;
        std::string::operator=((a1 + 504), (a2 + 96));
        std::string::operator=((a1 + 528), (a2 + 120));
        std::string::operator=((a1 + 552), (a2 + 144));
        std::string::operator=((a1 + 576), (a2 + 168));
        std::string::operator=((a1 + 600), (a2 + 192));
        std::string::operator=((a1 + 624), (a2 + 216));
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if ((v134[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = v134;
          }

          else
          {
            v11 = v134[0].__r_.__value_.__r.__words[0];
          }

          v12 = a1 + 624;
          if (*(a1 + 647) < 0)
          {
            v12 = *(a1 + 624);
          }

          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I updated provisioning placeholder with iccid: (%s), source iccid %s", buf, 0x16u);
        }

        v13 = BYTE7(v136);
        if (SBYTE7(v136) < 0)
        {
          v13 = *(&v135 + 1);
        }

        if (!v13 || ((*(**(a1 + 56) + 168))(*(a1 + 56), &v137, &v138 + 8, v140, &v140[1], v134) & 1) == 0)
        {
          memset(buf, 0, 24);
          (*(**(a1 + 56) + 160))(buf);
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = buf;
            if (buf[23] < 0)
            {
              v15 = *buf;
            }

            *v97 = 136315138;
            *&v97[4] = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Metadata carrier name empty or not preferCarrierNameFromMetadata, using from CB: [%s]", v97, 0xCu);
          }

          v16 = buf[23];
          v17 = buf[23];
          if (buf[23] < 0)
          {
            v16 = *&buf[8];
          }

          if (v16)
          {
            std::string::operator=((a1 + 472), buf);
            v17 = buf[23];
          }

          if (v17 < 0)
          {
            operator delete(*buf);
          }
        }

        if ((*(**(a1 + 56) + 152))(*(a1 + 56)))
        {
          v18 = HIBYTE(v134[0].__r_.__value_.__r.__words[2]);
          if ((v134[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = v134[0].__r_.__value_.__l.__size_;
          }

          if (v18)
          {
            v19 = BYTE7(v138);
            if (SBYTE7(v138) < 0)
            {
              v19 = *(&v137 + 1);
            }

            if (v19)
            {
              v20 = HIBYTE(v139);
              if (v139 < 0)
              {
                v20 = v139;
              }

              if (v20)
              {
                CellularPlanListModelLocal::updateCountryCode(a1, &v137, &v138 + 8, v140, &v140[1], v134);
              }
            }
          }
        }

        v21 = sub_1000727F0((a1 + 656), (a1 + 624));
        v22 = *(a1 + 672);
        v23 = *(a1 + 772);
        if (v22 >= v23)
        {
          if (v22 == v23)
          {
            CellularPlanListModelLocal::replacePaddedAliasWithBase(v21, (a1 + 656), v134);
          }
        }

        else
        {
          sub_100073EE8(a1 + 656, &v134[0].__r_.__value_.__l.__data_);
          CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(a1, buf);
          CellularPlanListModelLocal::updatePlaceholderEnabledIccids_sync(a1, buf, 0);
          sub_100009970(buf, *&buf[8]);
          if (*(a1 + 672) > *(a1 + 772))
          {
            sub_1000727F0((a1 + 656), &v134[0].__r_.__value_.__l.__data_);
          }
        }

        v33 = *(a1 + 647);
        if (v33 >= 0)
        {
          v34 = *(a1 + 647);
        }

        else
        {
          v34 = *(a1 + 632);
        }

        v35 = *(a1 + 855);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(a1 + 840);
        }

        if (v34 == v35)
        {
          if (v33 >= 0)
          {
            v37 = (a1 + 624);
          }

          else
          {
            v37 = *(a1 + 624);
          }

          if (v36 >= 0)
          {
            v38 = (a1 + 832);
          }

          else
          {
            v38 = *(a1 + 832);
          }

          v39 = memcmp(v37, v38, v34) == 0;
        }

        else
        {
          v39 = 0;
        }

        *(a1 + 704) = v39;
        v40 = *(a1 + 887);
        v41 = v40;
        if ((v40 & 0x80u) != 0)
        {
          v40 = *(a1 + 872);
        }

        if (v34 == v40)
        {
          v42 = v33 >= 0 ? (a1 + 624) : *(a1 + 624);
          v43 = v41 >= 0 ? (a1 + 864) : *(a1 + 864);
          if (!memcmp(v42, v43, v34))
          {
            std::string::operator=((a1 + 680), v134);
          }
        }

        v44 = *(a1 + 80);
        if (!v44)
        {
          goto LABEL_145;
        }

        v45 = std::__shared_weak_count::lock(v44);
        if (!v45)
        {
          goto LABEL_145;
        }

        v46 = v45;
        v47 = *(a1 + 72);
        if (!v47 || ((*(*v47 + 96))(buf), v132 != 1))
        {
LABEL_144:
          sub_100004A34(v46);
LABEL_145:
          CellularPlanListModelLocal::setupSimLabelForNewPlan_sync(a1, (a1 + 424), 2);
          return sub_100E3A5D4(&v133);
        }

        if (buf[9] != 1)
        {
LABEL_143:
          sub_1002813D0(buf);
          goto LABEL_144;
        }

        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v130;
          if ((v131 & 0x80u) != 0)
          {
            v49 = v130[0];
          }

          *v97 = 136315138;
          *&v97[4] = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I mark %s as abandoned", v97, 0xCu);
        }

        (***(a1 + 56))(v97);
        ServiceMap = Registry::getServiceMap(*v97);
        v51 = ServiceMap;
        if (v52 < 0)
        {
          v53 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
          v54 = 5381;
          do
          {
            v52 = v54;
            v55 = *v53++;
            v54 = (33 * v54) ^ v55;
          }

          while (v55);
        }

        std::mutex::lock(ServiceMap);
        v92 = v52;
        v56 = sub_100009510(&v51[1].__m_.__sig, &v92);
        if (v56)
        {
          v58 = v56[3];
          v57 = v56[4];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v51);
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v57);
            v59 = 0;
            goto LABEL_138;
          }
        }

        else
        {
          v58 = 0;
        }

        std::mutex::unlock(v51);
        v57 = 0;
        v59 = 1;
LABEL_138:
        (*(*v58 + 304))(v58, v130);
        if ((v59 & 1) == 0)
        {
          sub_100004A34(v57);
        }

        if (*&v97[8])
        {
          sub_100004A34(*&v97[8]);
        }

        CellularPlanListModelLocal::forceTransferSimLabel(a1, v130, v134, 1);
        if ((v132 & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_143;
      }
    }

    else
    {
      if ((*(a1 + 447) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 432))
        {
          return sub_100E3A5D4(&v133);
        }
      }

      else if (*(a1 + 447))
      {
        return sub_100E3A5D4(&v133);
      }

      if (*(a2 + 240) == 1)
      {
        *v6 = *a2;
        std::string::operator=((a1 + 424), (a2 + 16));
        std::string::operator=((a1 + 448), (a2 + 40));
        std::string::operator=((a1 + 472), (a2 + 64));
        v61 = *(a2 + 88);
        *(a1 + 500) = *(a2 + 92);
        *(a1 + 496) = v61;
        std::string::operator=((a1 + 504), (a2 + 96));
        std::string::operator=((a1 + 528), (a2 + 120));
        std::string::operator=((a1 + 552), (a2 + 144));
        std::string::operator=((a1 + 576), (a2 + 168));
        std::string::operator=((a1 + 600), (a2 + 192));
        std::string::operator=((a1 + 624), (a2 + 216));
        return sub_100E3A5D4(&v133);
      }
    }

    sub_1000D1644();
  }

  if (!*(a1 + 736))
  {
    return sub_100E3A5D4(&v133);
  }

  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v103 = 0u;
  memset(v104, 0, sizeof(v104));
  v102 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  *v97 = 0u;
  sub_10016DEB8(v97, a1 + 408);
  if (*(a1 + 736) == 1)
  {
    *buf = a1 + 712;
    sub_1000087B4(buf);
    if (*(a1 + 703) < 0)
    {
      operator delete(*(a1 + 680));
    }

    sub_100009970(a1 + 656, *(a1 + 664));
    if (*(a1 + 647) < 0)
    {
      operator delete(*(a1 + 624));
    }

    sub_100E3A5D4(a1 + 408);
    *(a1 + 736) = 0;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I cleared provisioning placeholder", buf, 2u);
  }

  v25 = BYTE7(v99);
  if (SBYTE7(v99) < 0)
  {
    v25 = *(&v98 + 1);
  }

  if (!v25)
  {
    v60 = *(a1 + 40);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I provisioning iccid is empty. abort", buf, 2u);
    }

    goto LABEL_249;
  }

  v26 = *(a1 + 80);
  if (!v26)
  {
    goto LABEL_249;
  }

  v27 = std::__shared_weak_count::lock(v26);
  if (!v27)
  {
    goto LABEL_249;
  }

  v28 = v27;
  v29 = *(a1 + 72);
  if (!v29)
  {
    goto LABEL_248;
  }

  v30 = (*(*v29 + 248))(*(a1 + 72));
  if (v30)
  {
    v31 = *(a1 + 40);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if ((SBYTE7(v99) & 0x80u) == 0)
      {
        v32 = &v98;
      }

      else
      {
        v32 = v98;
      }

      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Plan install still in progress, not enabling the provisioned plan %s", buf, 0xCu);
    }

    goto LABEL_248;
  }

  if (!*(&v111 + 1))
  {
    (*(*v29 + 96))(buf, v29, &v98);
    if (v132 != 1)
    {
      goto LABEL_146;
    }

    v62 = v131;
    if ((v131 & 0x80u) != 0)
    {
      v62 = v130[1];
    }

    if (v62)
    {
      if ((buf[9] & 1) == 0 && (buf[8] & 1) == 0)
      {
        sub_1002813D0(buf);
        goto LABEL_248;
      }

      CellularPlanListModelLocal::calculatePlaceholderEnabledIccids_sync(a1, v130, &v98, &v92);
      sub_100173768(&v110 + 8, &v92);
      sub_100009970(&v92, v93);
    }

    else
    {
LABEL_146:
      sub_10000501C(v95, "");
      CellularPlanListModelLocal::calculatePlaceholderEnabledIccids_sync(a1, v95, &v98, &v92);
      sub_100173768(&v110 + 8, &v92);
      sub_100009970(&v92, v93);
      if (v96 < 0)
      {
        operator delete(*v95);
      }
    }

    if (v132 == 1)
    {
      v30 = sub_1002813D0(buf);
    }
  }

  v63 = *(&v110 + 1);
  if (*(&v110 + 1) == &v111)
  {
LABEL_178:
    v73 = 1;
    goto LABEL_179;
  }

  while (1)
  {
    v64 = (v63 + 32);
    if ((CellularPlanListModelLocal::hasIccid_sync(v30, v63 + 32, (a1 + 144)) & 1) == 0)
    {
      break;
    }

    v65 = *(v63 + 8);
    if (v65)
    {
      do
      {
        v30 = v65;
        v65 = *v65;
      }

      while (v65);
    }

    else
    {
      do
      {
        v30 = *(v63 + 16);
        v66 = *v30 == v63;
        v63 = v30;
      }

      while (!v66);
    }

LABEL_173:
    v63 = v30;
    if (v30 == &v111)
    {
      goto LABEL_178;
    }
  }

  v67 = *(v63 + 55);
  if (v67 >= 0)
  {
    v68 = *(v63 + 55);
  }

  else
  {
    v68 = *(v63 + 40);
  }

  v69 = BYTE7(v99);
  if (SBYTE7(v99) < 0)
  {
    v69 = *(&v98 + 1);
  }

  if (v68 != v69 || (v67 >= 0 ? (v70 = (v63 + 32)) : (v70 = *v64), (SBYTE7(v99) & 0x80u) == 0 ? (v71 = &v98) : (v71 = v98), memcmp(v70, v71, v68)))
  {
    v72 = *(a1 + 40);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      if (v67 < 0)
      {
        v64 = *v64;
      }

      *buf = 136315138;
      *&buf[4] = v64;
      _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "ICCID (%s) is removed during eSIM installation!", buf, 0xCu);
    }

    v30 = sub_100075658(&v110 + 1, v63);
    goto LABEL_173;
  }

  v91 = *(a1 + 40);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I Provisioning ICCID (%s) was not installed", buf, 0xCu);
  }

  sub_100075658(&v110 + 1, v63);
  v73 = 0;
LABEL_179:
  v92 = 0;
  v93 = 0;
  v94 = 0;
  CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(a1, &v92);
  if (v73)
  {
LABEL_198:
    if ((*(*v29 + 240))(v29, &v98, 1))
    {
      v79 = *(a1 + 40);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        if ((SBYTE7(v99) & 0x80u) == 0)
        {
          v80 = &v98;
        }

        else
        {
          v80 = v98;
        }

        *buf = 136315138;
        *&buf[4] = v80;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I User installed a travel eSIM (%s)", buf, 0xCu);
      }

      if (v94)
      {
        sub_1000727F0(&v110 + 1, &v98);
      }

      memset(v120, 0, 32);
      v119 = 0u;
      v117 = 0u;
      memset(v118, 0, sizeof(v118));
      memset(buf, 0, sizeof(buf));
      if (SBYTE7(v99) < 0)
      {
        sub_100005F2C(buf, v98, *(&v98 + 1));
      }

      else
      {
        *buf = v98;
        *&buf[16] = v99;
      }

      buf[24] = 1;
      if (SHIBYTE(v104[0]) < 0)
      {
        sub_100005F2C(&v117, v103, *(&v103 + 1));
      }

      else
      {
        v117 = v103;
        v118[0] = v104[0];
      }

      if (SHIBYTE(v104[3]) < 0)
      {
        sub_100005F2C(&v118[1], v104[1], v104[2]);
      }

      else
      {
        *&v118[1] = *&v104[1];
        v118[3] = v104[3];
      }

      if (SHIBYTE(v106[0]) < 0)
      {
        sub_100005F2C(&v119, v105, *(&v105 + 1));
      }

      else
      {
        v119 = v105;
        *&v120[0] = v106[0];
      }

      if (SHIBYTE(v106[3]) < 0)
      {
        sub_100005F2C(v120 + 8, v106[1], v106[2]);
      }

      else
      {
        *(v120 + 8) = *&v106[1];
        *(&v120[1] + 1) = v106[3];
      }

      CellularPlanListModelLocal::handleSimLabelsForTravel_sync(a1, buf, 0);
      sub_10028084C(buf);
    }

    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(a1, buf);
    if (*(&v111 + 1) == *&buf[16])
    {
      v81 = sub_1001737D4(*(&v110 + 1), &v111, *buf);
      sub_100009970(buf, *&buf[8]);
      if (v81)
      {
        v82 = *(a1 + 40);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Placeholder ICCIDs matches user enabled ICCIDs - skipping", buf, 2u);
        }

        goto LABEL_247;
      }
    }

    else
    {
      sub_100009970(buf, *&buf[8]);
    }

    v83 = BYTE7(v113);
    v84 = SBYTE7(v113);
    if (SBYTE7(v113) < 0)
    {
      v83 = *(&v112 + 1);
    }

    if (v83)
    {
      v85 = *(a1 + 40);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v112;
        if (v84 >= 0)
        {
          v86 = &v112;
        }

        *buf = 136315138;
        *&buf[4] = v86;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I Applying placeholder active user data iccid: [%s]", buf, 0xCu);
      }

      std::string::operator=((a1 + 864), &v112);
    }

    if (BYTE8(v113) == 1)
    {
      v87 = *(a1 + 40);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        if ((SBYTE7(v99) & 0x80u) == 0)
        {
          v88 = &v98;
        }

        else
        {
          v88 = v98;
        }

        *buf = 136315138;
        *&buf[4] = v88;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I Applying placeholder default voice iccid: [%s]", buf, 0xCu);
      }

      std::string::operator=((a1 + 832), &v98);
    }

    if (*(&v111 + 1) >= 2uLL)
    {
      CellularPlanListModelLocal::maybeDisableColdPhysicalSim_sync(a1, &v110 + 8, &v98, buf);
      sub_100173768(&v110 + 8, buf);
      sub_100009970(buf, *&buf[8]);
    }

    sub_100158EF4(&v110 + 8, 0, buf);
    CellularPlanListModelLocal::setEnabledIccids_sync(a1, buf, 0, 0);
    sub_100009970(buf, *&buf[8]);
    CellularPlanListModelLocal::applyRemapSelection_sync(a1, v97);
    v89 = sub_100007A6C(a1 + 248, &v98);
    if (a1 + 256 != v89)
    {
      *(v89 + 176) = v110;
    }
  }

  else
  {
    if (*(&v111 + 1))
    {
      v74 = *(&v110 + 1);
      if (*(&v110 + 1) != &v111)
      {
        do
        {
          if (!sub_10016FA58(&v92, v74 + 4))
          {
            sub_100005BA0(&v92, v74 + 4);
          }

          v75 = v74[1];
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
              v76 = v74[2];
              v66 = *v76 == v74;
              v74 = v76;
            }

            while (!v66);
          }

          v74 = v76;
        }

        while (v76 != &v111);
      }

      if (v94 <= *(a1 + 772))
      {
        sub_1001730B8(&v110 + 1, v92, &v93);
      }

      v77 = *(a1 + 40);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        sub_100074B94(*(&v110 + 1), &v111, ",", 1, buf);
        v78 = buf[23] >= 0 ? buf : *buf;
        *v95 = 136315138;
        *&v95[4] = v78;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I after restoring enabled ICCIDs (%s)", v95, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_198;
    }

    sub_1001730B8(&v110 + 1, v92, &v93);
  }

LABEL_247:
  sub_100009970(&v92, v93);
LABEL_248:
  sub_100004A34(v28);
LABEL_249:
  *buf = &v114;
  sub_1000087B4(buf);
  if (SBYTE7(v113) < 0)
  {
    operator delete(v112);
  }

  sub_100009970(&v110 + 8, v111);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(*(&v108 + 1));
  }

  sub_100E3A5D4(v97);
  return sub_100E3A5D4(&v133);
}

void sub_100161874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (LOBYTE(STACK[0x6A0]) == 1)
  {
    sub_1002813D0(&a61);
  }

  sub_100004A34(v61);
  sub_100161CFC(&a19);
  sub_100E3A5D4(&STACK[0x6B0]);
  _Unwind_Resume(a1);
}

uint64_t sub_100161A70(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    sub_100E3A5D4(a1);
    *(a1 + 240) = 0;
  }

  return a1;
}

uint64_t sub_100161ABC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) == 1)
  {
    sub_100F11BEC(a1, a2);
    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    v4 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v4;
    *(a2 + 239) = 0;
    *(a2 + 216) = 0;
    *(a1 + 240) = *(a2 + 240);
    sub_100173768(a1 + 248, (a2 + 248));
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    v5 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v5;
    *(a2 + 295) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = *(a2 + 296);
    sub_100071A6C(a1 + 304);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v9 = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
    *(a1 + 88) = v9;
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v12 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v12;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v13 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v13;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    v14 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v14;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    v15 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v15;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    v16 = a1 + 256;
    v17 = *(a2 + 256);
    v18 = *(a2 + 264);
    *(a1 + 256) = v17;
    *(a1 + 264) = v18;
    if (v18)
    {
      *(v17 + 16) = v16;
      *(a2 + 248) = a2 + 256;
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
    }

    else
    {
      *(a1 + 248) = v16;
    }

    v19 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v19;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 304) = 0;
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a1 + 328) = 1;
  }

  return a1;
}

uint64_t sub_100161CFC(uint64_t a1)
{
  v3 = (a1 + 304);
  sub_1000087B4(&v3);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  sub_100009970(a1 + 248, *(a1 + 256));
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  return sub_100E3A5D4(a1);
}

void CellularPlanListModelLocal::updatePlaceholderEnabledIccids_sync(uint64_t a1, void **a2, int a3)
{
  if (*(a1 + 736) == 1)
  {
    if (a3)
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_100074B94(*a2, (a2 + 1), ",", 1, __p);
        if ((SBYTE7(v17) & 0x80u) == 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I apply user selected enabled iccids [%s] to placeholder.", &buf, 0xCu);
        if (SBYTE7(v17) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((a1 + 656) != a2)
      {
        sub_1001730B8((a1 + 656), *a2, a2 + 1);
      }
    }

    else
    {
      *__p = 0u;
      v17 = 0u;
      CellularPlanListModelLocal::calculateProvisioningPlanProperties_sync(a1, a2, __p);
      isHydraSupported_sync = CellularPlanListModelLocal::isHydraSupported_sync(a1);
      if (isHydraSupported_sync)
      {
        sub_100074978((a1 + 656), *a2, a2 + 1);
      }

      else if (capabilities::ct::supportsGemini(isHydraSupported_sync))
      {
        sub_100009970(a1 + 656, *(a1 + 664));
        *(a1 + 656) = a1 + 664;
        *(a1 + 664) = 0u;
        v10 = *a2;
        v8 = (a2 + 1);
        v9 = v10;
        if (v10 != v8)
        {
          do
          {
            if ((CellularPlanListModelLocal::isIccidForPhySlot_sync(a1, &v9[1].__r_.__value_.__l.__size_) & 1) != 0 || (__p[0] & 1) == 0)
            {
              sub_100005BA0(a1 + 656, &v9[1].__r_.__value_.__l.__size_);
            }

            size = v9->__r_.__value_.__l.__size_;
            if (size)
            {
              do
              {
                v12 = size;
                size = size->__r_.__value_.__r.__words[0];
              }

              while (size);
            }

            else
            {
              do
              {
                v12 = v9->__r_.__value_.__r.__words[2];
                v13 = v12->__r_.__value_.__r.__words[0] == v9;
                v9 = v12;
              }

              while (!v13);
            }

            v9 = v12;
          }

          while (v12 != v8);
        }

        if (__p[0])
        {
          sub_100005BA0(a1 + 656, (a1 + 424));
        }
      }

      sub_1000727F0((a1 + 656), &__p[1]);
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_100074B94(*(a1 + 656), (a1 + 664), ",", 1, &buf);
        v15 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v19 = 136315138;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I placeholder iccids to enable [%s]", v19, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[1]);
      }
    }
  }
}

void sub_100162004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::replacePaddedAliasWithBase(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (v3 == 19)
  {
    v6 = 0;
    v11 = 18022;
    v7 = a2 + 1;
    while (1)
    {
      v8 = *(&v11 + v6);
      memset(&__p, 0, sizeof(__p));
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&__p, *a3, *(a3 + 8));
      }

      else
      {
        __p = *a3;
      }

      std::string::push_back(&__p, v8);
      v9 = sub_100007A6C(a2, &__p.__r_.__value_.__l.__data_);
      if (v7 != v9)
      {
        break;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v6 == 2)
      {
        return;
      }
    }

    sub_100075658(a2, v9);
    if (!sub_10016FA58(a2, a3))
    {
      sub_100005BA0(a2, a3);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10016214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::setupSimLabelForNewPlan_sync(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2 + 23;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  if (!v3)
  {
    return;
  }

  (***(a1 + 56))(&v60);
  ServiceMap = Registry::getServiceMap(v60);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&v42 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v42);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (*(&v60 + 1))
  {
    sub_100004A34(*(&v60 + 1));
  }

  __dst = 0uLL;
  v53 = 0;
  if (*v4 < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v53 = *(a2 + 2);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  (*(*v16 + 192))(&v42, v16, &__dst);
  if (BYTE8(v46))
  {
    goto LABEL_100;
  }

  v18 = BYTE7(v46);
  if (SBYTE7(v46) < 0)
  {
    v18 = *(&v45 + 1);
  }

  if (!v18)
  {
    v35 = *(a1 + 40);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v36 = a2;
      }

      else
      {
        v36 = *a2;
      }

      LODWORD(v60) = 136315138;
      *(&v60 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I create new sim label for plan [%s]", &v60, 0xCu);
    }

    v69[0] = 0;
    v67 = 0u;
    __p = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    (*(*v16 + 224))(&v60, v16, &__dst, a3);
    v37 = BYTE7(v64);
    if (SBYTE7(v64) < 0)
    {
      v37 = *(&v63 + 1);
    }

    if (!v37)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017629C0();
      }

      if (SHIBYTE(v69[0]) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(*(&v66 + 1));
      }

      if (SBYTE7(v66) < 0)
      {
        operator delete(v65);
      }

      if (SBYTE7(v64) < 0)
      {
        operator delete(v63);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(*(&v61 + 1));
      }

      if (SBYTE7(v61) < 0)
      {
        operator delete(v60);
      }

      goto LABEL_100;
    }

    if (SHIBYTE(v69[0]) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(*(&v66 + 1));
    }

    if (SBYTE7(v66) < 0)
    {
      operator delete(v65);
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(*(&v61 + 1));
    }

    if (SBYTE7(v61) < 0)
    {
      operator delete(v60);
    }
  }

  if (((*(**(a1 + 56) + 40))(*(a1 + 56)) & 1) == 0)
  {
    v19 = *(a1 + 80);
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v21 = *(a1 + 72);
        if (v21)
        {
          (*(*v21 + 96))(&v60);
          if ((v75 & 1) == 0)
          {
            goto LABEL_97;
          }

          v22 = v74;
          if ((v74 & 0x80u) == 0)
          {
            v23 = v74;
          }

          else
          {
            v23 = v73[1];
          }

          v24 = *(a1 + 40);
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v23)
          {
            if (v25)
            {
              v26 = v73[0];
              if (v22 >= 0)
              {
                v26 = v73;
              }

              if (*(a2 + 23) >= 0)
              {
                v27 = a2;
              }

              else
              {
                v27 = *a2;
              }

              *buf = 136315394;
              v55 = v26;
              v56 = 2080;
              v57 = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I attempt transfering sim label from source (%s) to new iccid (%s)", buf, 0x16u);
            }

            if ((*(*v16 + 288))(v16, v73, a2))
            {
              goto LABEL_97;
            }

            v28 = v72;
            v29 = v72;
            if ((v72 & 0x80u) != 0)
            {
              v28 = v71[1];
            }

            if (v28)
            {
              goto LABEL_44;
            }

            v30 = v70;
            if ((v70 & 0x80u) != 0)
            {
              v30 = v69[1];
            }

            if (v30)
            {
LABEL_44:
              v31 = *(a1 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v71[0];
                if (v29 >= 0)
                {
                  v32 = v71;
                }

                if ((v70 & 0x80u) == 0)
                {
                  v33 = v69;
                }

                else
                {
                  v33 = v69[0];
                }

                if (*(a2 + 23) >= 0)
                {
                  v34 = a2;
                }

                else
                {
                  v34 = *a2;
                }

                *buf = 136315650;
                v55 = v32;
                v56 = 2080;
                v57 = v33;
                v58 = 2080;
                v59 = v34;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I renaming to existing label (%s, %s) corresponding to the new iccid (%s)", buf, 0x20u);
              }

              (*(*v16 + 232))(v41, v16, &__dst, v69, v71, 0);
              sub_100FB0A00(v41);
              goto LABEL_97;
            }

            v40 = *(a1 + 40);
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
LABEL_97:
              if (v75 == 1)
              {
                sub_1002813D0(&v60);
              }

LABEL_99:
              sub_100004A34(v20);
              goto LABEL_100;
            }

            *buf = 0;
            v38 = "#I no known label from source plan, let user configure new plan from UI";
            v39 = v40;
          }

          else
          {
            if (!v25)
            {
              goto LABEL_97;
            }

            *buf = 0;
            v38 = "#I no known source iccid, let user configure new plan from UI";
            v39 = v24;
          }

          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
          goto LABEL_97;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176298C();
    }

    if (!v20)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_100:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(*(&v48 + 1));
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(v47);
  }

  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&v43 + 1));
  }

  if (SBYTE7(v43) < 0)
  {
    operator delete(v42);
  }

  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
    if (v17)
    {
      return;
    }

    goto LABEL_114;
  }

  operator delete(__dst);
  if ((v17 & 1) == 0)
  {
LABEL_114:
    sub_100004A34(v15);
  }
}

void sub_1001628A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (LOBYTE(STACK[0x680]) == 1)
  {
    sub_1002813D0(&a60);
  }

  sub_100004A34(v61);
  sub_100FB0A00(&a29);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if ((v62 & 1) == 0)
  {
    sub_100004A34(v60);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::isBootstrapActive_sync(CellularPlanListModelLocal *this, int a2)
{
  memset(&v30, 0, sizeof(v30));
  v4 = *(this + 15);
  v5 = *(this + 16);
  if (v4 == v5)
  {
    v17 = 0;
    v16 = 0;
LABEL_35:
    if ((v16 & 0x80u) == 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      v19 = a2 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19 || (v20 = *(this + 18), v21 = *(this + 19), v20 == v21))
    {
LABEL_55:
      v28 = 0;
      if ((v16 & 0x80) == 0)
      {
        return v28;
      }
    }

    else
    {
      if ((v16 & 0x80u) == 0)
      {
        v22 = &v30;
      }

      else
      {
        v22 = v30.__r_.__value_.__r.__words[0];
      }

      v23 = v20 + 72;
      while (1)
      {
        v24 = *(v23 + 23);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v23 + 8);
        }

        if (v24 == v18)
        {
          v26 = v25 >= 0 ? v23 : *v23;
          if (!memcmp(v26, v22, v18))
          {
            break;
          }
        }

        v27 = v23 + 96;
        v23 += 168;
        if (v27 == v21)
        {
          goto LABEL_55;
        }
      }

      v28 = 1;
      if ((v16 & 0x80) == 0)
      {
        return v28;
      }
    }

LABEL_58:
    operator delete(v30.__r_.__value_.__l.__data_);
    return v28;
  }

  v6 = (this + 896);
  while (1)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    memset(v32, 0, sizeof(v32));
    sub_100F11B6C(v32, v4);
    v7 = v36;
    if ((v36 & 1) == 0)
    {
      v15 = 3;
      goto LABEL_23;
    }

    v8 = *(&v34 + 1);
    v9 = v35;
    if (*(&v34 + 1) == v35)
    {
      v15 = 0;
      v7 = 1;
LABEL_23:
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_24:
      v31 = &v34 + 1;
      sub_100112120(&v31);
      goto LABEL_25;
    }

    while (1)
    {
      if (*(v8 + 89) == 1)
      {
        std::string::operator=(&v30, (v8 + 16));
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v30.__r_.__value_.__l.__size_;
        }

        v11 = *(this + 919);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(this + 113);
        }

        if (size == v11)
        {
          v13 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
          v14 = v12 >= 0 ? (this + 896) : *v6;
          if (!memcmp(v13, v14, size))
          {
            break;
          }
        }
      }

      v8 += 216;
      if (v8 == v9)
      {
        v15 = 0;
        goto LABEL_32;
      }
    }

    v15 = 1;
LABEL_32:
    if (v36)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (SBYTE7(v34) < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 != 3 && v15)
    {
      break;
    }

    v4 += 88;
    if (v4 == v5)
    {
      v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      v17 = v30.__r_.__value_.__l.__size_;
      goto LABEL_35;
    }
  }

  v28 = 1;
  if ((*(&v30.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_58;
  }

  return v28;
}

void sub_100162BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *CellularPlanListModelLocal::getBootstrapProfileIccid_sync@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  for (i = *(result + 15); i != *(result + 16); i += 88)
  {
    if (*(i + 4) == a2)
    {
      if ((*(i + 80) & 1) == 0)
      {
        return sub_10000501C(a3, "");
      }

      for (j = *(i + 56); j != *(i + 64); j += 216)
      {
        if (*(j + 89) == 1)
        {
          if (*(j + 39) < 0)
          {
            return sub_100005F2C(a3, *(j + 16), *(j + 24));
          }

          v5 = *(j + 16);
          *(a3 + 16) = *(j + 32);
          *a3 = v5;
          return result;
        }
      }
    }
  }

  return sub_10000501C(a3, "");
}

_BYTE *CellularPlanListModelLocal::getUserSelectedActiveDataIccid_sync@<X0>(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this + 864;
  result = CellularPlanListModelLocal::hasIccid_sync(this, this + 864, this + 18);
  if (result)
  {
    if (*(this + 887) < 0)
    {
      v6 = *(this + 108);
      v7 = *(this + 109);

      return sub_100005F2C(a2, v6, v7);
    }

    else
    {
      *a2 = *v4;
      *(a2 + 16) = *(v4 + 2);
    }
  }

  else
  {

    return sub_10000501C(a2, "");
  }

  return result;
}

_BYTE *CellularPlanListModelLocal::getUserSelectedActiveVoiceIccid_sync@<X0>(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this + 832;
  result = CellularPlanListModelLocal::hasIccid_sync(this, this + 832, this + 18);
  if (result)
  {
    if (*(this + 855) < 0)
    {
      v6 = *(this + 104);
      v7 = *(this + 105);

      return sub_100005F2C(a2, v6, v7);
    }

    else
    {
      *a2 = *v4;
      *(a2 + 16) = *(v4 + 2);
    }
  }

  else
  {

    return sub_10000501C(a2, "");
  }

  return result;
}

unint64_t CellularPlanListModelLocal::getSlotForCsn_sync(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  v6 = *a2;
  if (v2 != v3)
  {
    while (*(v2 + 16) != v6 || *(v2 + 24) != *(&v6 + 1))
    {
      v2 += 88;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 4) | &_mh_execute_header;
  }
}

unint64_t CellularPlanListModelLocal::getSlotForPhyIccid_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v5 = HIBYTE(v14);
  if (v3 != v4)
  {
    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = __p[1];
    }

    if (v14 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    while (1)
    {
      v8 = *(v3 + 95);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v3 + 10);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 + 18 : *(v3 + 9);
        if (!memcmp(v10, v7, v6) && v3[16] == 1)
        {
          break;
        }
      }

      v3 += 42;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 == *(a1 + 152))
  {
    return 0;
  }

  else
  {
    return *v3 | &_mh_execute_header;
  }
}

uint64_t CellularPlanListModelLocal::getCsnForSlot_sync@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *(result + 120);
  v4 = *(result + 128);
  if (v3 != v4)
  {
    while (*(v3 + 4) != a2)
    {
      v3 += 88;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 == v4 || *(v3 + 12) != 3)
  {
LABEL_8:
    v5 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = *(v3 + 16);
    v5 = 1;
  }

  a3[16] = v5;
  return result;
}

_BYTE *CellularPlanListModelLocal::getCardVersionForSlot_sync@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 15);
  v4 = *(result + 16);
  if (v3 != v4)
  {
    while (*(v3 + 4) != a2)
    {
      v3 += 88;
      if (v3 == v4)
      {
        return sub_10000501C(a3, "");
      }
    }
  }

  if (v3 == v4)
  {
    return sub_10000501C(a3, "");
  }

  if (*(v3 + 55) < 0)
  {
    return sub_100005F2C(a3, *(v3 + 32), *(v3 + 40));
  }

  v5 = *(v3 + 32);
  *(a3 + 16) = *(v3 + 48);
  *a3 = v5;
  return result;
}

BOOL CellularPlanListModelLocal::hasDisableNotAllowedProfile_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  if (v2 != v3)
  {
    while (*(v2 + 4) != a2)
    {
      v2 += 88;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3 || *(v2 + 80) != 1)
  {
    return 0;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v5 != v4)
  {
    while ((*(v5 + 92) & 1) == 0)
    {
      v5 += 216;
      if (v5 == v4)
      {
        v5 = v4;
        return v5 != v4;
      }
    }
  }

  return v5 != v4;
}

uint64_t CellularPlanListModelLocal::getWebsheetLaunchInfoForIccid_sync@<X0>(uint64_t a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100007A6C(a1 + 248, a2);
  if (a1 + 256 != result)
  {
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    v6 = 0u;
    result = sGetProfileDetails();
  }

  *a3 = 0;
  a3[784] = 0;
  return result;
}

void sub_100163440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_10016354C(&a55);
  if (*(v55 + 784) == 1)
  {
    sub_10016354C(v55);
  }

  if (LOBYTE(STACK[0x558]) == 1)
  {
    sub_100E3A5D4(&STACK[0x480]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001634BC(uint64_t a1, std::string *__str)
{
  if (*(a1 + 784) == 1)
  {
    std::string::operator=(a1, __str);
    v4 = __str[1].__r_.__value_.__s.__data_[2];
    *(a1 + 24) = __str[1].__r_.__value_.__l.__data_;
    *(a1 + 26) = v4;
    std::string::operator=((a1 + 32), (__str + 32));
    sub_10016E6D0((a1 + 56), &__str[2].__r_.__value_.__l.__size_);
    sub_10016EBE4(a1 + 400, &__str[16].__r_.__value_.__r.__words[2]);
    sub_10012BF3C((a1 + 752), (__str + 752));
  }

  else
  {
    sub_10016F74C(a1, __str);
    *(a1 + 784) = 1;
  }

  return a1;
}

uint64_t sub_10016354C(uint64_t a1)
{
  if (*(a1 + 776) == 1 && *(a1 + 775) < 0)
  {
    operator delete(*(a1 + 752));
  }

  if (*(a1 + 744) == 1)
  {
    sub_10016F298(a1 + 400);
  }

  if (*(a1 + 392) == 1)
  {
    sub_1000DD0AC(a1 + 368, *(a1 + 376));
    if (*(a1 + 336) == 1)
    {
      if (*(a1 + 367) < 0)
      {
        operator delete(*(a1 + 344));
      }

      *(a1 + 336) = 0;
    }

    if (*(a1 + 335) < 0)
    {
      operator delete(*(a1 + 312));
    }

    sub_10016E570(a1 + 80);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CellularPlanListModelLocal::getPhoneForUserSelectedPlan_sync(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(**(this + 7) + 64))(*(this + 7)) & 1) == 0)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "#N User select plans not supported";
      goto LABEL_7;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  if (*(this + 193) >= 2u)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "#N Multiple profiles could be enabled";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  memset(buf, 0, sizeof(buf));
  v13 = 0;
  CellularPlanListModelLocal::getUserSelectedIccid_sync(this, buf);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if (HIBYTE(v13))
    {
      *__p = *buf;
      v11 = v13;
      goto LABEL_15;
    }

LABEL_20:
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No user selection to get phone number", __p, 2u);
    }

    goto LABEL_22;
  }

  if (!*&buf[8])
  {
    goto LABEL_20;
  }

  sub_100005F2C(__p, *buf, *&buf[8]);
LABEL_15:
  v6 = sub_100007A6C(this + 296, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 304) != v6)
  {
    if (*(v6 + 159) < 0)
    {
      sub_100005F2C(a2, *(v6 + 136), *(v6 + 144));
    }

    else
    {
      v7 = *(v6 + 136);
      *(a2 + 16) = *(v6 + 152);
      *a2 = v7;
    }

    v9 = 1;
    goto LABEL_25;
  }

LABEL_22:
  v9 = 0;
  *a2 = 0;
LABEL_25:
  *(a2 + 24) = v9;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1001637FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::getCarrierNameForUserSelectedPlan_sync(CellularPlanListModelLocal *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(**(this + 7) + 64))(*(this + 7)) & 1) == 0)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "#N User select plans not supported";
      goto LABEL_7;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  if (*(this + 193) >= 2u)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "#N Multiple profiles could be enabled";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  *buf = 0;
  v11 = 0;
  v12 = 0;
  CellularPlanListModelLocal::getUserSelectedIccid_sync(this, buf);
  v6 = HIBYTE(v12);
  if (v12 < 0)
  {
    v6 = v11;
  }

  if (v6)
  {
    CellularPlanListModelLocal::getCarrierNameForIccid_sync(this, buf, &v8);
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
  }

  else
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No user selection to get phone number", &v8, 2u);
    }

    *a2 = 0;
    *(a2 + 24) = 0;
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1001639B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CellularPlanListModelLocal::isProvisioningIccid_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 736) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 447);
  if (v2 >= 0)
  {
    v3 = *(a1 + 447);
  }

  else
  {
    v3 = *(a1 + 432);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 424);
  }

  else
  {
    v6 = *(a1 + 424);
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

char *CellularPlanListModelLocal::getProvisioningPlanIccid_sync@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[736] == 1)
  {
    if (this[447] < 0)
    {
      return sub_100005F2C(a2, *(this + 53), *(this + 54));
    }

    else
    {
      *a2 = *(this + 424);
      *(a2 + 16) = *(this + 55);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

char *CellularPlanListModelLocal::getProvisioningPlanSourceIccid_sync@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[736] == 1)
  {
    if (this[647] < 0)
    {
      return sub_100005F2C(a2, *(this + 78), *(this + 79));
    }

    else
    {
      *a2 = *(this + 39);
      *(a2 + 16) = *(this + 80);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

_BYTE *CellularPlanListModelLocal::getProvisioningCarrierName_sync@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  if (this[736] != 1)
  {
    return sub_10000501C(a2, "");
  }

  if (this[495] < 0)
  {
    return sub_100005F2C(a2, *(this + 59), *(this + 60));
  }

  *a2 = *(this + 472);
  *(a2 + 16) = *(this + 61);
  return this;
}

void CellularPlanListModelLocal::getCarrierNamesAndDescriptorsForInstalledPlans_sync(CellularPlanListModelLocal *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v4 = *(this + 18);
  v5 = *(this + 19);
  if (v4 != v5)
  {
    v6 = this + 256;
    v7 = v4 + 64;
    do
    {
      if ((subscriber::isEsimCapable() & 1) == 0)
      {
        if ((*(v7 + 31) & 0x8000000000000000) != 0)
        {
          if (!*(v7 + 16))
          {
            goto LABEL_45;
          }
        }

        else if (!*(v7 + 31))
        {
          goto LABEL_45;
        }

        v8 = sub_100007A6C(this + 248, (v7 + 8));
        v9 = v8;
        if (v6 != v8)
        {
          if ((*(v8 + 79) & 0x8000000000000000) != 0)
          {
            if (*(v8 + 64))
            {
LABEL_13:
              if (*(v7 + 31) < 0)
              {
                sub_100005F2C(v22, *(v7 + 8), *(v7 + 16));
              }

              else
              {
                v10 = *(v7 + 8);
                v23 = *(v7 + 24);
                *v22 = v10;
              }

              v24 = 1;
              if (*(v9 + 103) < 0)
              {
                sub_100005F2C(&v25, *(v9 + 80), *(v9 + 88));
              }

              else
              {
                v25 = *(v9 + 80);
                v26 = *(v9 + 96);
              }

              if (*(v9 + 127) < 0)
              {
                sub_100005F2C(&v27, *(v9 + 104), *(v9 + 112));
              }

              else
              {
                v27 = *(v9 + 104);
                v28 = *(v9 + 120);
              }

              if (*(v9 + 151) < 0)
              {
                sub_100005F2C(&__p, *(v9 + 128), *(v9 + 136));
              }

              else
              {
                __p = *(v9 + 128);
                v30 = *(v9 + 144);
              }

              if (*(v9 + 175) < 0)
              {
                sub_100005F2C(&v31, *(v9 + 152), *(v9 + 160));
              }

              else
              {
                v31 = *(v9 + 152);
                v32 = *(v9 + 168);
              }

              v33 = v9 + 56;
              v11 = sub_100174060(a2, (v9 + 56));
              sub_10016A270(v11 + 56, v22);
              if (*(v11 + 111) < 0)
              {
                operator delete(*(v11 + 88));
              }

              *(v11 + 104) = v26;
              *(v11 + 88) = v25;
              HIBYTE(v26) = 0;
              LOBYTE(v25) = 0;
              if (*(v11 + 135) < 0)
              {
                operator delete(*(v11 + 112));
              }

              *(v11 + 128) = v28;
              *(v11 + 112) = v27;
              HIBYTE(v28) = 0;
              LOBYTE(v27) = 0;
              if (*(v11 + 159) < 0)
              {
                operator delete(*(v11 + 136));
              }

              *(v11 + 152) = v30;
              *(v11 + 136) = __p;
              HIBYTE(v30) = 0;
              LOBYTE(__p) = 0;
              if (*(v11 + 183) < 0)
              {
                operator delete(*(v11 + 160));
                v12 = SHIBYTE(v30);
                *(v11 + 160) = v31;
                *(v11 + 176) = v32;
                HIBYTE(v32) = 0;
                LOBYTE(v31) = 0;
                if (v12 < 0)
                {
                  operator delete(__p);
                }
              }

              else
              {
                *(v11 + 160) = v31;
                *(v11 + 176) = v32;
                HIBYTE(v32) = 0;
                LOBYTE(v31) = 0;
              }

              if (SHIBYTE(v28) < 0)
              {
                operator delete(v27);
              }

              if (SHIBYTE(v26) < 0)
              {
                operator delete(v25);
              }

              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22[0]);
              }
            }
          }

          else if (*(v8 + 79))
          {
            goto LABEL_13;
          }
        }
      }

LABEL_45:
      v13 = v7 + 104;
      v7 += 168;
    }

    while (v13 != v5);
  }

  v14 = *(this + 15);
  v15 = *(this + 16);
  if (v14 != v15)
  {
    while (*(v14 + 12) != 3 || *(v14 + 80) != 1)
    {
LABEL_94:
      v14 += 88;
      if (v14 == v15)
      {
        return;
      }
    }

    v17 = *(v14 + 56);
    v16 = *(v14 + 64);
    while (1)
    {
      if (v17 == v16)
      {
        goto LABEL_94;
      }

      if ((*(v17 + 39) & 0x8000000000000000) != 0)
      {
        if (!*(v17 + 24))
        {
          goto LABEL_93;
        }
      }

      else if (!*(v17 + 39))
      {
        goto LABEL_93;
      }

      if ((*(v17 + 89) & 1) == 0)
      {
        v18 = sub_100007A6C(this + 248, (v17 + 16));
        v19 = v18;
        if ((this + 256) != v18)
        {
          if ((*(v18 + 79) & 0x8000000000000000) != 0)
          {
            if (!*(v18 + 64))
            {
              goto LABEL_93;
            }
          }

          else if (!*(v18 + 79))
          {
            goto LABEL_93;
          }

          if (*(v17 + 39) < 0)
          {
            sub_100005F2C(v22, *(v17 + 16), *(v17 + 24));
          }

          else
          {
            *v22 = *(v17 + 16);
            v23 = *(v17 + 32);
          }

          v24 = 1;
          if (*(v19 + 103) < 0)
          {
            sub_100005F2C(&v25, *(v19 + 80), *(v19 + 88));
          }

          else
          {
            v25 = *(v19 + 80);
            v26 = *(v19 + 96);
          }

          if (*(v19 + 127) < 0)
          {
            sub_100005F2C(&v27, *(v19 + 104), *(v19 + 112));
          }

          else
          {
            v27 = *(v19 + 104);
            v28 = *(v19 + 120);
          }

          if (*(v19 + 151) < 0)
          {
            sub_100005F2C(&__p, *(v19 + 128), *(v19 + 136));
          }

          else
          {
            __p = *(v19 + 128);
            v30 = *(v19 + 144);
          }

          if (*(v19 + 175) < 0)
          {
            sub_100005F2C(&v31, *(v19 + 152), *(v19 + 160));
          }

          else
          {
            v31 = *(v19 + 152);
            v32 = *(v19 + 168);
          }

          v33 = v19 + 56;
          v20 = sub_100174060(a2, (v19 + 56));
          sub_10016A270(v20 + 56, v22);
          if (*(v20 + 111) < 0)
          {
            operator delete(*(v20 + 88));
          }

          *(v20 + 104) = v26;
          *(v20 + 88) = v25;
          HIBYTE(v26) = 0;
          LOBYTE(v25) = 0;
          if (*(v20 + 135) < 0)
          {
            operator delete(*(v20 + 112));
          }

          *(v20 + 128) = v28;
          *(v20 + 112) = v27;
          HIBYTE(v28) = 0;
          LOBYTE(v27) = 0;
          if (*(v20 + 159) < 0)
          {
            operator delete(*(v20 + 136));
          }

          *(v20 + 152) = v30;
          *(v20 + 136) = __p;
          HIBYTE(v30) = 0;
          LOBYTE(__p) = 0;
          if (*(v20 + 183) < 0)
          {
            operator delete(*(v20 + 160));
            v21 = SHIBYTE(v30);
            *(v20 + 160) = v31;
            *(v20 + 176) = v32;
            HIBYTE(v32) = 0;
            LOBYTE(v31) = 0;
            if (v21 < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            *(v20 + 160) = v31;
            *(v20 + 176) = v32;
            HIBYTE(v32) = 0;
            LOBYTE(v31) = 0;
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25);
          }

          if (v24 == 1 && SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }
        }
      }

LABEL_93:
      v17 += 216;
    }
  }
}

void sub_1001640B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  sub_10016A798(v33, *(v33 + 8));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::getIccidFromIccidHash_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 120);
  v20 = *(a1 + 128);
  if (v3 != v20)
  {
    while (*(v3 + 12) != 3 || *(v3 + 80) != 1)
    {
LABEL_38:
      v3 += 88;
      if (v3 == v20)
      {
        goto LABEL_39;
      }
    }

    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    while (1)
    {
      if (v5 == v6)
      {
        goto LABEL_38;
      }

      if ((*(v5 + 39) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 24))
        {
          goto LABEL_37;
        }
      }

      else if (!*(v5 + 39))
      {
        goto LABEL_37;
      }

      sub_10092CDF4(v5 + 16, __p);
      std::locale::locale(&v21);
      std::locale::locale(&v24, &v21);
      if (v23 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v23 >= 0)
      {
        v8 = v23;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = v8 == 0;
      if (v8 && v11)
      {
        v13 = v11 - 1;
        v14 = v8 - 1;
        v15 = v10;
        while (sub_1001DAECC(&v24, v7, v15))
        {
          ++v15;
          v12 = v14 == 0;
          if (v14)
          {
            ++v7;
            v16 = v13--;
            --v14;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        v17 = 0;
      }

      else
      {
        v15 = v10;
LABEL_30:
        v17 = v15 == &v10[v11] && v12;
      }

      std::locale::~locale(&v24);
      std::locale::~locale(&v21);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17)
      {
        if (*(v5 + 39) < 0)
        {
          sub_100005F2C(a3, *(v5 + 16), *(v5 + 24));
        }

        else
        {
          v18 = *(v5 + 16);
          *(a3 + 16) = *(v5 + 32);
          *a3 = v18;
        }

        return;
      }

LABEL_37:
      v5 += 216;
    }
  }

LABEL_39:
  sub_10000501C(a3, "");
}

void sub_10016434C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19)
{
  std::locale::~locale(&a19);
  std::locale::~locale(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::isIccidPresentOrInstalling_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v3 = *(a1 + 128);
  v53 = v3;
  while (v4 != v3)
  {
    if (*(v4 + 12) == 3 && *(v4 + 80) == 1)
    {
      v6 = *(v4 + 56);
      v5 = *(v4 + 64);
      for (i = v5; v6 != v5; v5 = i)
      {
        if ((*(v6 + 39) & 0x8000000000000000) != 0)
        {
          if (!*(v6 + 24))
          {
            goto LABEL_66;
          }
        }

        else if (!*(v6 + 39))
        {
          goto LABEL_66;
        }

        sub_10092CDF4(v6 + 16, &__p);
        std::locale::locale(&v59);
        std::locale::locale(&v56, &v59);
        v7 = v62;
        if (v62 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v62 < 0)
        {
          v7 = v61;
        }

        v9 = *(a2 + 23);
        if (v9 >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        if (v9 >= 0)
        {
          v11 = *(a2 + 23);
        }

        else
        {
          v11 = *(a2 + 8);
        }

        v12 = v7 == 0;
        if (v7 && v11)
        {
          v13 = v11 - 1;
          v14 = v7 - 1;
          v15 = v10;
          while (sub_1001DAECC(&v56, p_p, v15))
          {
            ++v15;
            v12 = v14 == 0;
            if (v14)
            {
              ++p_p;
              v16 = v13--;
              --v14;
              if (v16)
              {
                continue;
              }
            }

            goto LABEL_30;
          }

          std::locale::~locale(&v56);
        }

        else
        {
          v15 = v10;
LABEL_30:
          v17 = &v10[v11];
          std::locale::~locale(&v56);
          if (v12 && v15 == v17)
          {
            v19 = 1;
            goto LABEL_63;
          }
        }

        sub_10092CF84(v6 + 16, &v56);
        std::locale::locale(&v55);
        std::locale::locale(&v63, &v55);
        if (v58 >= 0)
        {
          locale = &v56;
        }

        else
        {
          locale = v56.__locale_;
        }

        if (v58 >= 0)
        {
          v21 = v58;
        }

        else
        {
          v21 = v57;
        }

        v22 = *(a2 + 23);
        if (v22 >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        if (v22 >= 0)
        {
          v24 = *(a2 + 23);
        }

        else
        {
          v24 = *(a2 + 8);
        }

        v25 = v21 == 0;
        if (v21 && v24)
        {
          v26 = v24 - 1;
          v27 = v21 - 1;
          v28 = v23;
          while (sub_1001DAECC(&v63, locale, v28))
          {
            ++v28;
            v25 = v27 == 0;
            if (v27)
            {
              ++locale;
              v29 = v26--;
              --v27;
              if (v29)
              {
                continue;
              }
            }

            goto LABEL_57;
          }

          v19 = 0;
        }

        else
        {
          v28 = v23;
LABEL_57:
          v19 = v28 == &v23[v24] && v25;
        }

        std::locale::~locale(&v63);
        std::locale::~locale(&v55);
        if (v58 < 0)
        {
          operator delete(v56.__locale_);
        }

LABEL_63:
        std::locale::~locale(&v59);
        if (v62 < 0)
        {
          operator delete(__p);
        }

        if (v19)
        {
          return 1;
        }

LABEL_66:
        v6 += 216;
      }
    }

    v4 += 88;
    v3 = v53;
  }

  if (*(a1 + 736) != 1)
  {
    return 0;
  }

  sub_10092CDF4(a1 + 424, &__p);
  std::locale::locale(&v59);
  std::locale::locale(&v56, &v59);
  v30 = v62;
  if (v62 >= 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p;
  }

  if (v62 < 0)
  {
    v30 = v61;
  }

  v32 = *(a2 + 23);
  if (v32 >= 0)
  {
    v33 = a2;
  }

  else
  {
    v33 = *a2;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = *(a2 + 8);
  }

  v35 = v30 == 0;
  if (v30 && v34)
  {
    v36 = v34 - 1;
    v37 = v30 - 1;
    v38 = v33;
    while (sub_1001DAECC(&v56, v31, v38))
    {
      ++v38;
      v35 = v37 == 0;
      if (v37)
      {
        ++v31;
        v39 = v36--;
        --v37;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_90;
    }

    std::locale::~locale(&v56);
LABEL_94:
    v41 = &v56;
    sub_10092CF84(a1 + 424, &v56);
    std::locale::locale(&v55);
    std::locale::locale(&v63, &v55);
    if (v58 < 0)
    {
      v41 = v56.__locale_;
    }

    if (v58 >= 0)
    {
      v42 = v58;
    }

    else
    {
      v42 = v57;
    }

    v43 = *(a2 + 23);
    if (v43 >= 0)
    {
      v44 = a2;
    }

    else
    {
      v44 = *a2;
    }

    if (v43 >= 0)
    {
      v45 = *(a2 + 23);
    }

    else
    {
      v45 = *(a2 + 8);
    }

    v46 = v42 == 0;
    if (v42 && v45)
    {
      v47 = v45 - 1;
      v48 = v42 - 1;
      v49 = v44;
      while (sub_1001DAECC(&v63, v41, v49))
      {
        ++v49;
        v46 = v48 == 0;
        if (v48)
        {
          ++v41;
          v50 = v47--;
          --v48;
          if (v50)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v40 = 0;
    }

    else
    {
      v49 = v44;
LABEL_113:
      v40 = v49 == &v44[v45] && v46;
    }

    std::locale::~locale(&v63);
    std::locale::~locale(&v55);
    if (v58 < 0)
    {
      operator delete(v56.__locale_);
    }

    goto LABEL_119;
  }

  v38 = v33;
LABEL_90:
  std::locale::~locale(&v56);
  if (!v35 || v38 != &v33[v34])
  {
    goto LABEL_94;
  }

  v40 = 1;
LABEL_119:
  std::locale::~locale(&v59);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  return v40;
}

void sub_1001647F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::locale a26)
{
  std::locale::~locale(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::updatePlanExpired(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v10 = a2;
    v4 = sub_1001705A0(a1 + 248, a2);
    if (v4[233] == 1 && v4[232] == 1 && v4[640] == 1)
    {
      v4[504] = 4;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v5 = *(a1 + 248);
      if (v5 != (a1 + 256))
      {
        v6 = 0;
        do
        {
          if (v5[80])
          {
            if (v6 >= v12)
            {
              v6 = sub_10016F928(&v10, (v5 + 56));
            }

            else
            {
              sub_10016A078(v6, (v5 + 56));
              v6 += 192;
            }

            v11 = v6;
          }

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

        while (v8 != (a1 + 256));
      }

      (*(**(a1 + 104) + 56))(*(a1 + 104), &v10);
      v13 = &v10;
      sub_10016BF8C(&v13);
    }
  }
}

void sub_1001649BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10016BF8C(&a12);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::maybeUpdateItemUuids_sync(uint64_t this)
{
  v1 = this;
  v2 = *(this + 144);
  v3 = *(this + 152);
  if (v2 != v3)
  {
    v4 = this + 256;
    v5 = v2 + 72;
    do
    {
      if ((*(v5 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 8))
        {
LABEL_7:
          this = sub_100007A6C(v1 + 248, v5);
          if (v4 == this)
          {
            v7 = dword_101FB16F8++;
            this = sub_1001705A0(v1 + 248, v5);
            *(this + 176) = v7;
          }

          else if (!*(this + 176))
          {
            v6 = dword_101FB16F8++;
            *(this + 176) = v6;
          }
        }
      }

      else if (*(v5 + 23))
      {
        goto LABEL_7;
      }

      v8 = v5 + 96;
      v5 += 168;
    }

    while (v8 != v3);
  }

  v9 = *(v1 + 120);
  v10 = *(v1 + 128);
  if (v9 != v10)
  {
    while (*(v9 + 80) != 1)
    {
LABEL_24:
      v9 += 88;
      if (v9 == v10)
      {
        return this;
      }
    }

    v11 = *(v9 + 56);
    v12 = *(v9 + 64);
    while (1)
    {
      if (v11 == v12)
      {
        goto LABEL_24;
      }

      if ((*(v11 + 39) & 0x8000000000000000) != 0)
      {
        if (!*(v11 + 24))
        {
          goto LABEL_23;
        }
      }

      else if (!*(v11 + 39))
      {
        goto LABEL_23;
      }

      this = sub_100007A6C(v1 + 248, (v11 + 16));
      if (v1 + 256 != this && !*(this + 176))
      {
        v13 = dword_101FB16F8++;
        *(this + 176) = v13;
      }

LABEL_23:
      v11 += 216;
    }
  }

  return this;
}

uint64_t CellularPlanListModelLocal::getNumProfiles_sync(uint64_t a1, int a2, char a3)
{
  v10 = 0;
  v11[0] = 0;
  v11[1] = 0;
  CellularPlanListModelLocal::getIccidsForSlot_sync(a1, a2, a3, &v10);
  v3 = v10;
  if (v10 == v11)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = v3[1];
      v6 = v3;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      v4 = v4 - 1431655765 * ((v3[7] - v3[6]) >> 3);
      v3 = v7;
    }

    while (v7 != v11);
  }

  sub_100175350(&v10, v11[0]);
  return v4;
}

void CellularPlanListModelLocal::getIccidsForSlot_sync(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v5 = *(a1 + 120);
  for (i = *(a1 + 128); v5 != i; v5 += 88)
  {
    v10 = *(v5 + 4) != a2 && a2 != 3 || *v5 == 0;
    if (!v10 && *(v5 + 80) == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = *(v5 + 56);
      v11 = *(v5 + 64);
      if (v12 != v11)
      {
        v13 = 0;
        do
        {
          if ((a3 & 1) != 0 || (*(v12 + 89) & 1) == 0)
          {
            if (v13 >= v18)
            {
              v13 = sub_1000053A0(&v16, (v12 + 16));
            }

            else
            {
              if (*(v12 + 39) < 0)
              {
                sub_100005F2C(v13, *(v12 + 16), *(v12 + 24));
              }

              else
              {
                v14 = *(v12 + 16);
                v13->__r_.__value_.__r.__words[2] = *(v12 + 32);
                *&v13->__r_.__value_.__l.__data_ = v14;
              }

              ++v13;
            }

            v17 = v13;
          }

          v12 += 216;
        }

        while (v12 != v11);
        if (v13 != v16)
        {
          v19 = v5 + 16;
          v15 = (sub_1001753B0(a4, (v5 + 16)) + 48);
          if (v15 != &v16)
          {
            sub_100008234(v15, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
          }
        }
      }

      v20 = &v16;
      sub_1000087B4(&v20);
    }
  }
}

void sub_100164D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_1000087B4(&a14);
  sub_100175350(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::hasIccid_sync(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 1;
  }

  v5 = a3[1];
  if (*a3 != v5)
  {
    v6 = *a3 + 64;
    do
    {
      v7 = *(v6 + 31);
      if (v7 >= 0)
      {
        v8 = *(v6 + 31);
      }

      else
      {
        v8 = *(v6 + 16);
      }

      v9 = *(a2 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      if (v8 == v9)
      {
        v11 = v7 >= 0 ? (v6 + 8) : *(v6 + 8);
        v12 = v10 >= 0 ? a2 : *a2;
        if (!memcmp(v11, v12, v8) && !subscriber::isEsimCapable())
        {
          return 1;
        }
      }

      v13 = v6 + 104;
      v6 += 168;
    }

    while (v13 != v5);
  }

  sGetProfileDetails();
  v14 = v17;
  if (v17 == 1)
  {
    sub_100E3A5D4(v16);
  }

  return v14;
}

double CellularPlanListModelLocal::getUserProfileCountsByCountryCode_sync@<D0>(CellularPlanListModelLocal *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((*(**(this + 7) + 152))(*(this + 7)))
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    v7 = *(this + 15);
    for (i = *(this + 16); v7 != i; v7 += 88)
    {
      if (*(v7 + 80) == 1 && *(v7 + 12) == 3)
      {
        v10 = *(v7 + 56);
        v11 = *(v7 + 64);
        if (v10 != v11)
        {
          v12 = v10 + 168;
          do
          {
            if ((*(v12 - 79) & 1) == 0)
            {
              __p[0] = 0;
              __p[1] = 0;
              *&v20[0] = 0;
              CellularPlanListModelLocal::getCountryCode(this, v12 - 72, v12 - 48, v12 - 152, __p);
              v16[0] = __p;
              v13 = sub_100175570(a3, __p);
              ++*(v13 + 10);
              if (SBYTE7(v20[0]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v14 = v12 + 48;
            v12 += 216;
          }

          while (v14 != v11);
        }
      }
    }

    if ((a2 & 1) != 0 && *(this + 736) == 1)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      *__p = 0u;
      memset(v20, 0, sizeof(v20));
      sub_100F11F00(__p, this + 408);
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
      CellularPlanListModelLocal::getCountryCode(this, v21, &v21[1] + 8, v20, v16);
      v18 = v16;
      v15 = sub_100175570(a3, v16);
      ++*(v15 + 10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      sub_100E3A5D4(__p);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
  }

  return result;
}

void sub_100165130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100E3A5D4(&a18);
  sub_1001754E8(v23);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::getCountryCode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if ((*(**(a1 + 56) + 152))(*(a1 + 56)))
  {
    if (*(sub_1000E20F0(a1 + 248, a4) + 152) == 1)
    {
      v10 = sub_1000E20F0(a1 + 248, a4);
      if ((*(v10 + 152) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (*(v10 + 151) < 0)
      {
        v15 = *(v10 + 128);
        v16 = *(v10 + 136);

        sub_100005F2C(a5, v15, v16);
      }

      else
      {
        *a5 = *(v10 + 128);
        *(a5 + 16) = *(v10 + 144);
      }

      return;
    }

    v11 = *(a4 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a4 + 8);
    }

    if (v11)
    {
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v12)
      {
        v13 = *(a3 + 23);
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a3 + 8);
        }

        if (v13)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          (*(**(a1 + 56) + 136))(&v17);
          if (v19)
          {
            if (*(v17 + 55) < 0)
            {
              sub_100005F2C(a5, *(v17 + 32), *(v17 + 40));
            }

            else
            {
              v14 = *(v17 + 32);
              *(a5 + 16) = *(v17 + 48);
              *a5 = v14;
            }
          }

          else
          {
            sub_10000501C(a5, "");
          }

          sub_100009970(&v17, v18);
          return;
        }
      }
    }
  }

  sub_10000501C(a5, "");
}