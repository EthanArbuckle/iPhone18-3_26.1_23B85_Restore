uint64_t CellularPlanListModelLocal::getSlotForIccid_sync(void *a1, uint64_t a2)
{
  v2 = a2;
  v5 = a1[18];
  v4 = a1[19];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v32 = *(a2 + 16);
  }

  v6 = HIBYTE(v32);
  if (v5 == v4)
  {
    v4 = v5;
LABEL_22:
    if (v6 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v32 >= 0)
    {
      v7 = HIBYTE(v32);
    }

    else
    {
      v7 = __p[1];
    }

    if (v32 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = v5 + 18;
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
      if (v13 == v4)
      {
        goto LABEL_22;
      }
    }

    v4 = v9 - 18;
    if (v6 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v4 == a1[19] || (v14 = *v4, !v14))
  {
    v18 = a1[15];
    v19 = a1[16];
    if (v18 != v19)
    {
      v20 = *(v2 + 23);
      if (v20 >= 0)
      {
        v21 = *(v2 + 23);
      }

      else
      {
        v21 = v2[1];
      }

      if (v20 >= 0)
      {
        v22 = v2;
      }

      else
      {
        v22 = *v2;
      }

      do
      {
        if (*(v18 + 80) == 1 && *(v18 + 12) == 3)
        {
          v24 = *(v18 + 56);
          v25 = *(v18 + 64);
          while (v24 != v25)
          {
            v26 = *(v24 + 39);
            v27 = v26;
            if ((v26 & 0x80u) != 0)
            {
              v26 = *(v24 + 24);
            }

            if (v26 == v21)
            {
              v28 = v27 >= 0 ? (v24 + 16) : *(v24 + 16);
              if (!memcmp(v28, v22, v21))
              {
                v14 = *(v18 + 4);
                if (!v14)
                {
                  break;
                }

                goto LABEL_56;
              }
            }

            v24 += 216;
          }
        }

        v18 += 88;
      }

      while (v18 != v19);
    }

    v14 = 0;
LABEL_56:
    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v29 = subscriber::asString();
      *buf = 136315394;
      v34 = v2;
      v35 = 2080;
      v36 = v29;
      v17 = "#I vinyl info slot for ICCID [%s] : %s";
      goto LABEL_60;
    }
  }

  else
  {
    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v16 = subscriber::asString();
      *buf = 136315394;
      v34 = v2;
      v35 = 2080;
      v36 = v16;
      v17 = "#I sim info slot for ICCID [%s] : %s";
LABEL_60:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  return v14;
}

uint64_t CellularPlanListModelLocal::isActivePrivateNetworkSim(uint64_t a1, int a2)
{
  v8 = a2;
  v2 = a1 + 232;
  v3 = *(a1 + 232);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = a1 + 224;
  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    v6 = *sub_1000A8C4C(v4, &v8);
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t CellularPlanListModelLocal::isSwitchBetweenBoundSims_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v5)
  {
    if (sub_10016FA58(a1 + 200, a2))
    {
      v8 = sub_1000E20F0(a1 + 200, a2);
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = *(v8 + 23);
      }

      else
      {
        v10 = *(v8 + 8);
      }

      v11 = *(a3 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a3[1];
      }

      if (v10 == v11)
      {
        if (v9 < 0)
        {
          v8 = *v8;
        }

        if (v12 >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        return memcmp(v8, v13, v10) == 0;
      }
    }

    else
    {
      result = sub_10016FA58(a1 + 200, a3);
      if (!result)
      {
        return result;
      }

      v8 = sub_1000E20F0(a1 + 200, a3);
      v15 = *(v8 + 23);
      if (v15 >= 0)
      {
        v10 = *(v8 + 23);
      }

      else
      {
        v10 = *(v8 + 8);
      }

      v16 = *(a2 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a2 + 8);
      }

      if (v10 == v16)
      {
        if (v15 < 0)
        {
          v8 = *v8;
        }

        if (v17 >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        return memcmp(v8, v13, v10) == 0;
      }
    }
  }

  return 0;
}

void CellularPlanListModelLocal::dumpState_sync(CellularPlanListModelLocal *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(this, &v47);
    v3 = v47;
    v50[0] = ",";
    v50[1] = 1;
    memset(&v49, 0, sizeof(v49));
    if (v47 != v48)
    {
      v4 = *sub_1000E20F0(this + 784, (v47 + 32));
      if (*(v3 + 55) >= 0)
      {
        v5 = *(v3 + 55);
      }

      else
      {
        v5 = v3[5];
      }

      if (v4)
      {
        v6 = 6;
      }

      else
      {
        v6 = 7;
      }

      memset(&v57, 0, sizeof(v57));
      sub_1000677C4(&v57, v5 + v6);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v57;
      }

      else
      {
        v7 = v57.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if (*(v3 + 55) >= 0)
        {
          v8 = (v3 + 4);
        }

        else
        {
          v8 = v3[4];
        }

        memmove(v7, v8, v5);
      }

      if (v4)
      {
        v9 = "(true)";
      }

      else
      {
        v9 = "(false)";
      }

      if (v4)
      {
        v10 = 6;
      }

      else
      {
        v10 = 7;
      }

      memcpy(v7 + v5, v9, v6);
      v7->__r_.__value_.__s.__data_[v5 + v10] = 0;
      v11 = v3[1];
      v49 = v57;
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      if (v12 != v48)
      {
        do
        {
          sub_100074CFC(v50, &v57);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v57;
          }

          else
          {
            v14 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          std::string::append(&v49, v14, size);
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          v16 = *sub_1000E20F0(this + 784, v12 + 4);
          if (*(v12 + 55) >= 0)
          {
            v17 = *(v12 + 55);
          }

          else
          {
            v17 = v12[5];
          }

          if (v16)
          {
            v18 = 6;
          }

          else
          {
            v18 = 7;
          }

          memset(&v57, 0, sizeof(v57));
          sub_1000677C4(&v57, v17 + v18);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v57;
          }

          else
          {
            v19 = v57.__r_.__value_.__r.__words[0];
          }

          if (v17)
          {
            if (*(v12 + 55) >= 0)
            {
              v20 = (v12 + 4);
            }

            else
            {
              v20 = v12[4];
            }

            memmove(v19, v20, v17);
          }

          if (v16)
          {
            v21 = "(true)";
          }

          else
          {
            v21 = "(false)";
          }

          if (v16)
          {
            v22 = 6;
          }

          else
          {
            v22 = 7;
          }

          memcpy(v19 + v17, v21, v18);
          v19->__r_.__value_.__s.__data_[v17 + v22] = 0;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v57;
          }

          else
          {
            v23 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v57.__r_.__value_.__l.__size_;
          }

          std::string::append(&v49, v23, v24);
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          v25 = v12[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v12[2];
              v13 = *v26 == v12;
              v12 = v26;
            }

            while (!v13);
          }

          v12 = v26;
        }

        while (v26 != v48);
      }
    }

    v27 = v49.__r_.__value_.__r.__words[0];
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v49;
    }

    v28 = (this + 864);
    if (*(this + 887) < 0)
    {
      v28 = *v28;
    }

    v29 = (this + 832);
    if (*(this + 855) < 0)
    {
      v29 = *v29;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v27;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v28;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *v52 = v29;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User Selections: Profles %s, User Data [%s], Default Voice [%s]", &buf, 0x20u);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    sub_100009970(&v47, v48[0]);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(this + 118), (this + 952), ",", 1, &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    LODWORD(v57.__r_.__value_.__l.__data_) = 136315138;
    *(v57.__r_.__value_.__r.__words + 4) = p_buf;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Usable ICCIDs: %s", &v57, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v31 = (this + 896);
    if (*(this + 919) < 0)
    {
      v31 = *v31;
    }

    v32 = (this + 920);
    if (*(this + 943) < 0)
    {
      v32 = *v32;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I System Selections: Profile [%s], User Data [%s]", &buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(this + 33);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v33;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cellular plan Map size: %lu", &buf, 0xCu);
  }

  v34 = *(this + 31);
  if (v34 != (this + 256))
  {
    do
    {
      v35 = *(this + 5);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = (v34 + 32);
        if (*(v34 + 55) < 0)
        {
          v36 = *v36;
        }

        v37 = (v34 + 56);
        if (*(v34 + 79) < 0)
        {
          v37 = *v37;
        }

        v38 = (v34 + 80);
        if (*(v34 + 103) < 0)
        {
          v38 = *v38;
        }

        v39 = (v34 + 104);
        if (*(v34 + 127) < 0)
        {
          v39 = *v39;
        }

        v40 = "";
        if (*(v34 + 208) == 1)
        {
          v40 = v34 + 184;
          if (*(v34 + 207) < 0)
          {
            v40 = *v40;
          }
        }

        v41 = *(v34 + 44);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
        *(buf.__r_.__value_.__r.__words + 4) = v36;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v37;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v52 = v41;
        *&v52[4] = 2080;
        *&v52[6] = v38;
        v53 = 2080;
        v54 = v39;
        v55 = 2080;
        v56 = v40;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I  iccid: [%s]: carrier: [%s], uuid: [%u] mcc: [%s] mnc: [%s] country code: [%s]", &buf, 0x3Au);
      }

      v42 = *(v34 + 1);
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = *(v34 + 2);
          v13 = *v43 == v34;
          v34 = v43;
        }

        while (!v13);
      }

      v34 = v43;
    }

    while (v43 != (this + 256));
  }

  v44 = *(this + 5);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = (this + 808);
    if (*(this + 831) < 0)
    {
      v45 = *v45;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v45;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I User disabled physical SIM [%s]", &buf, 0xCu);
    v44 = *(this + 5);
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    sub_10064AB14(this + 121, &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &buf;
    }

    else
    {
      v46 = buf.__r_.__value_.__r.__words[0];
    }

    LODWORD(v57.__r_.__value_.__l.__data_) = 136315138;
    *(v57.__r_.__value_.__r.__words + 4) = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Source device user preferences: %s", &v57, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100165F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::submitProfileSwitchMetric_sync(uint64_t a1, void *a2, void *a3)
{
  v13 = a1;
  v4 = *(a1 + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      if (v9)
      {
        v12 = *(a1 + 320) < 2u;
        sub_1001660C4(&v13, a2, v11);
        sub_1001660C4(&v13, a3, v10);
        (*(*v9 + 80))(v9, &v12, v11, v10);
        v14 = v10;
        sub_10003CA58(&v14);
        v10[0] = v11;
        sub_10003CA58(v10);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100166084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v15 - 56) = v14;
  sub_10003CA58((v15 - 56));
  a10 = &a13;
  sub_10003CA58(&a10);
  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

void sub_1001660C4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v5 = (a2 + 1);
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    v7 = v4 + 256;
    v37 = (a2 + 1);
    do
    {
      memset(&v51, 0, sizeof(v51));
      v8 = sub_100007A6C(v4 + 248, v6 + 4);
      if (v7 != v8)
      {
        std::string::operator=(&v51, (v8 + 56));
      }

      sGetProfileDetails();
      if (v53 == 1)
      {
        isEsimCapable = 1;
        v10 = v52[89];
      }

      else
      {
        v11 = v7;
        v12 = *(v4 + 144);
        v13 = *(v4 + 152);
        if (v12 == v13)
        {
          isEsimCapable = 0;
        }

        else
        {
          isEsimCapable = 0;
          do
          {
            v50 = 0;
            v48 = 0u;
            *__p = 0u;
            *v46 = 0u;
            *v47 = 0u;
            *v44 = 0u;
            v45 = 0u;
            memset(v43, 0, sizeof(v43));
            v41 = 0u;
            *v42 = 0u;
            sub_100032BFC(&v41, v12);
            if (v45 >= 0)
            {
              v14 = HIBYTE(v45);
            }

            else
            {
              v14 = v45;
            }

            v15 = *(v6 + 55);
            v16 = v15;
            if (v15 < 0)
            {
              v15 = v6[5];
            }

            if (v14 == v15)
            {
              v17 = v45 >= 0 ? &v44[1] : v44[1];
              v18 = v16 >= 0 ? v6 + 4 : v6[4];
              if (!memcmp(v17, v18, v14))
              {
                isEsimCapable = subscriber::isEsimCapable();
              }
            }

            if (SHIBYTE(v50) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[1]);
            }

            if (SHIBYTE(v47[0]) < 0)
            {
              operator delete(v46[0]);
            }

            if (SHIBYTE(v45) < 0)
            {
              operator delete(v44[1]);
            }

            __dst.__r_.__value_.__r.__words[0] = v43 + 8;
            sub_100034D1C(&__dst);
            if (v42[0])
            {
              v42[1] = v42[0];
              operator delete(v42[0]);
            }

            v12 += 168;
          }

          while (v12 != v13);
        }

        v10 = 0;
        v7 = v11;
        v5 = v37;
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__dst, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = v51;
      }

      v39 = v10;
      v40 = isEsimCapable;
      v19 = *(a3 + 8);
      v20 = *(a3 + 16);
      if (v19 >= v20)
      {
        v22 = (v19 - *a3) >> 5;
        v23 = v22 + 1;
        if ((v22 + 1) >> 59)
        {
          sub_1000CE3D4();
        }

        v24 = v20 - *a3;
        if (v24 >> 4 > v23)
        {
          v23 = v24 >> 4;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        *&v43[0] = a3;
        if (v25)
        {
          sub_10016FB1C(a3, v25);
        }

        v26 = 32 * v22;
        v27 = *&__dst.__r_.__value_.__l.__data_;
        *(v26 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v26 = v27;
        memset(&__dst, 0, sizeof(__dst));
        *(v26 + 24) = v39;
        *(v26 + 25) = v40;
        v28 = 32 * v22 + 32;
        v29 = *(a3 + 8) - *a3;
        v30 = 32 * v22 - v29;
        memcpy((v26 - v29), *a3, v29);
        v31 = *a3;
        *a3 = v30;
        *(a3 + 8) = v28;
        v32 = *(a3 + 16);
        *(a3 + 16) = 0;
        v42[0] = v31;
        v42[1] = v32;
        *&v41 = v31;
        *(&v41 + 1) = v31;
        sub_1000D512C(&v41);
        v33 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        *(a3 + 8) = v28;
        if (v33 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v21 = *&__dst.__r_.__value_.__l.__data_;
        *(v19 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v19 = v21;
        memset(&__dst, 0, sizeof(__dst));
        *(v19 + 24) = v39;
        *(v19 + 25) = v40;
        *(a3 + 8) = v19 + 32;
      }

      if (v53 == 1)
      {
        sub_100E3A5D4(v52);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v34 = v6[1];
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
          v35 = v6[2];
          v36 = *v35 == v6;
          v6 = v35;
        }

        while (!v36);
      }

      v6 = v35;
    }

    while (v35 != v5);
  }
}

void sub_100166478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a72 == 1)
  {
    sub_100E3A5D4(&a45);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_10003CA58(&__p);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::supportsOnDevicePlanConversion_sync(CellularPlanListModelLocal *this, const BasicSimInfo *a2)
{
  v34 = 0;
  v35 = 0;
  (***(this + 7))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  v32 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v32);
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
  (*(*v12 + 8))(&v34, v12, *a2);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v34)
  {
    v32 = 0;
    v33 = 0;
    (*(*v34 + 64))(&v32);
    if (v32)
    {
      v31 = 0;
      sub_100A83764(v32, @"SupportPhysicalSIMtoESIMTransfer", &v29);
      sub_10002FE1C(&v30, &v29);
      v14 = v30;
      *buf = v31;
      v30 = 0;
      v31 = v14;
      sub_100045C8C(buf);
      sub_100045C8C(&v30);
      sub_10000A1EC(&v29);
      buf[0] = 0;
      ctu::cf::assign(buf, v31, v15);
      if (buf[0] & 1) != 0 && (sub_100A83764(v32, @"SupportsOnDevicePhysicalSIMConvert", &v29), sub_10002FE1C(&v30, &v29), v16 = v30, *buf = v31, v30 = 0, v31 = v16, sub_100045C8C(buf), sub_100045C8C(&v30), sub_10000A1EC(&v29), buf[0] = 0, ctu::cf::assign(buf, v31, v17), (buf[0]) && ((sub_100A83764(v32, @"AllowCellularPlanTransferTarget", &v29), sub_10002FE1C(&v30, &v29), v18 = v30, *buf = v31, v30 = 0, v31 = v18, sub_100045C8C(buf), sub_100045C8C(&v30), sub_10000A1EC(&v29), !v31) || (buf[0] = 0, ctu::cf::assign(buf, v31, v19), buf[0] == 1)))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      sub_100045C8C(&v31);
    }

    else
    {
      v22 = *(this + 5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_1000714D8(8);
        v25 = subscriber::asString();
        v28 = *(a2 + 9);
        v27 = a2 + 72;
        v26 = v28;
        if (v27[23] >= 0)
        {
          v26 = v27;
        }

        *buf = 136315650;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = v25;
        v37 = 2080;
        v38 = v26;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No CarrierEntitlements settings for task %s at slot:%s, iccid:%s", buf, 0x20u);
      }

      v20 = 0;
    }

    if (v33)
    {
      sub_100004A34(v33);
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      v21 = subscriber::asString();
      sub_101762A28(v21, a2, buf);
    }

    v20 = 0;
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  return v20;
}

void sub_1001668CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_10000A1EC(&a10);
  sub_100045C8C(&a12);
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanListModelLocal::supportsCrossPlatformTransfer_sync(CellularPlanListModelLocal *this, const BasicSimInfo *a2)
{
  v30 = 0;
  v31 = 0;
  (***(this + 7))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  v28 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v28);
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
  (*(*v12 + 8))(&v30, v12, *a2);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v30)
  {
    v28 = 0;
    v29 = 0;
    (*(*v30 + 64))(&v28);
    if (v28)
    {
      v27 = 0;
      sub_100A83764(v28, @"SupportCrossPlatformSIMTransfer", &v25);
      sub_10002FE1C(&v26, &v25);
      v14 = v26;
      *buf = v27;
      v26 = 0;
      v27 = v14;
      sub_100045C8C(buf);
      sub_100045C8C(&v26);
      sub_10000A1EC(&v25);
      if (v27)
      {
        buf[0] = 0;
        ctu::cf::assign(buf, v27, v15);
        if (buf[0])
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 1;
      }

      sub_100045C8C(&v27);
    }

    else
    {
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_1000714D8(8);
        v21 = subscriber::asString();
        v24 = *(a2 + 9);
        v23 = a2 + 72;
        v22 = v24;
        if (v23[23] >= 0)
        {
          v22 = v23;
        }

        *buf = 136315650;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v21;
        v33 = 2080;
        v34 = v22;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No CarrierEntitlements settings for task %s at slot:%s, iccid:%s", buf, 0x20u);
      }

      v16 = 0;
    }

    if (v29)
    {
      sub_100004A34(v29);
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      v17 = subscriber::asString();
      sub_101762A28(v17, a2, buf);
    }

    v16 = 0;
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  return v16;
}

void sub_100166C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::isPasscodeRequiredForCrossPlatformTransfer_sync(CellularPlanListModelLocal *this, const BasicSimInfo *a2)
{
  theDict = 0;
  (***(this + 7))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  value = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &value);
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
  (*(*v12 + 80))(&v24, v12, *a2, 1, @"PhoneAccountTransfer", 0, 0);
  sub_100010180(&theDict, &v24);
  sub_10000A1EC(&v24);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (!theDict)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      v20 = subscriber::asString();
      sub_101762A74(v20, &buf);
    }

    goto LABEL_25;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(theDict, @"RequiresPasscodeForCrossPlatformTransfer", &value))
  {
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I kRequiresPasscodeForCrossPlatformTransfer not found in bundle. slot:%s", &buf, 0xCu);
    }

    goto LABEL_25;
  }

  v14 = value;
  LOBYTE(buf) = 1;
  if (value)
  {
    v15 = CFGetTypeID(value);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v14, v16);
      if ((buf & 1) == 0)
      {
LABEL_25:
        v19 = 1;
        goto LABEL_26;
      }
    }
  }

  v17 = *(this + 5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = subscriber::asString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I kRequiresPasscodeForCrossPlatformTransfer value true. slot:%s", &buf, 0xCu);
  }

  v19 = 2;
LABEL_26:
  sub_10001021C(&theDict);
  return v19;
}

void sub_100166FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::activateProfile_sync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6[4] = a1;
  v7 = *a4;
  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(__p, *(a4 + 2), *(a4 + 3));
  }

  else
  {
    *__p = a4[1];
    __p[2] = *(a4 + 4);
  }

  v9 = *(a4 + 40);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_1001671F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::deactivateProfile_sync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6[4] = a1;
  v7 = *a4;
  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(__p, *(a4 + 2), *(a4 + 3));
  }

  else
  {
    *__p = a4[1];
    __p[2] = *(a4 + 4);
  }

  v9 = *(a4 + 40);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_10016738C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::monitorModeCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void CellularPlanListModelLocal::notifyBackoffTimerExpiry(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void CellularPlanListModelLocal::evaluateNewDefaultSelection_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_10016FCA8(&v18, a3[2]);
  v8 = *a3;
  v9 = *a2;
  v24 = a3 + 1;
  v25 = v8;
  v22 = (a2 + 8);
  v23 = v9;
  v21 = v18;
  sub_10016FD4C(&v25, &v24, &v23, &v22, &v21);
  sub_100167844(&v18, 0xAAAAAAAAAAAAAAABLL * ((v10 - v18) >> 3));
  if (v19 - v18 == 24)
  {
    if (SHIBYTE(v18->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(a4, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = *&v18->__r_.__value_.__l.__data_;
      *(a4 + 16) = *(&v18->__r_.__value_.__l + 2);
      *a4 = v11;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v12 = *(a1 + 144);
    v13 = *(a1 + 152);
    if (v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v14 = 0;
      do
      {
        if (sub_10016FA58(a3, (v12 + 72)) && (*(a1 + 320) != 1 || subscriber::isSimReady()) && (!v14 || v14 > *(v12 + 4)))
        {
          std::string::operator=(a4, (v12 + 72));
          v14 = *(v12 + 4);
        }

        v12 += 168;
      }

      while (v12 != v13);
      v15 = *(a4 + 23);
      if (*(a4 + 23) < 0)
      {
        v15 = *(a4 + 8);
      }

      v16 = v15 == 0;
    }

    if (v16 && a3[2] == 1)
    {
      std::string::operator=(a4, (*a3 + 32));
    }
  }

  v26 = &v18;
  sub_1000087B4(&v26);
}

void sub_100167808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  *(v10 - 56) = &a9;
  sub_1000087B4((v10 - 56));
  _Unwind_Resume(a1);
}

void sub_100167844(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10016FF8C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

uint64_t CellularPlanListModelLocal::evaluateCurrentSelections_sync(uint64_t a1, const void ***a2, const void ***a3)
{
  if (a3[2])
  {
    v6 = (a1 + 864);
    if (sub_10016FA58(a3, (a1 + 864)))
    {
      v7 = 0;
      goto LABEL_31;
    }

    memset(__p, 0, sizeof(__p));
    if (*(a1 + 887) < 0)
    {
      sub_100005F2C(__p, *(a1 + 864), *(a1 + 872));
    }

    else
    {
      *__p = *v6;
      __p[2] = *(a1 + 880);
    }

    CellularPlanListModelLocal::evaluateNewDefaultSelection_sync(a1, a2, a3, v33);
    if (*(a1 + 887) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *v33;
    *(a1 + 880) = *&v33[16];
    v10 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v10 = __p[1];
    }

    if (v10)
    {
      if ((*(a1 + 887) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 872))
        {
          goto LABEL_22;
        }
      }

      else if (*(a1 + 887))
      {
LABEL_22:
        v7 = CellularPlanListModelLocal::isSwitchBetweenBoundSims_sync(a1, __p, (a1 + 864)) ^ 1;
LABEL_25:
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 887) < 0)
          {
            v6 = *v6;
          }

          v12 = asString(v7);
          *v33 = 136315394;
          *&v33[4] = v6;
          *&v33[12] = 2080;
          *&v33[14] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Applying new default data selection (%s), dataUpdated: %s", v33, 0x16u);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_31:
        (***(a1 + 56))(v33);
        Registry::getTelephonyCapabilities(__p, *v33);
        if ((*(*__p[0] + 16))(__p[0]))
        {
          v13 = (a1 + 832);
          v14 = sub_10016FA58(a3, (a1 + 832));
          if (__p[1])
          {
            sub_100004A34(__p[1]);
          }

          if (*&v33[8])
          {
            sub_100004A34(*&v33[8]);
          }

          if (!v14)
          {
            v15 = *(a1 + 855);
            if (v15 < 0)
            {
              v15 = *(a1 + 840);
            }

            CellularPlanListModelLocal::evaluateNewDefaultSelection_sync(a1, a2, a3, __p);
            if (*(a1 + 855) < 0)
            {
              operator delete(*v13);
            }

            *v13 = *__p;
            *(a1 + 848) = __p[2];
            if (v15)
            {
              v16 = *(a1 + 887);
              if (v16 < 0)
              {
                v16 = *(a1 + 872);
              }

              if (v16)
              {
                *(a1 + 856) = 0;
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            v31 = *(a1 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a1 + 855) < 0)
              {
                v13 = *v13;
              }

              v32 = asString(v15);
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = v13;
              WORD2(__p[1]) = 2080;
              *(&__p[1] + 6) = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#N Applying new default voice selection (%s), voiceUpdated: %s", __p, 0x16u);
            }

LABEL_51:
            v17 = a2[2];
            if (a3[2] == 1 && v17 == 1)
            {
              v18 = *a2;
              if (*a2 != (a2 + 1))
              {
                v19 = *a3;
                while (sub_100022D3C(__p, v18 + 4, v19 + 4))
                {
                  v20 = v18[1];
                  v21 = v18;
                  if (v20)
                  {
                    do
                    {
                      v18 = v20;
                      v20 = *v20;
                    }

                    while (v20);
                  }

                  else
                  {
                    do
                    {
                      v18 = v21[2];
                      v22 = *v18 == v21;
                      v21 = v18;
                    }

                    while (!v22);
                  }

                  v23 = v19[1];
                  if (v23)
                  {
                    do
                    {
                      v24 = v23;
                      v23 = *v23;
                    }

                    while (v23);
                  }

                  else
                  {
                    do
                    {
                      v24 = v19[2];
                      v22 = *v24 == v19;
                      v19 = v24;
                    }

                    while (!v22);
                  }

                  v19 = v24;
                  if (v18 == (a2 + 1))
                  {
                    v17 = a2[2];
                    goto LABEL_68;
                  }
                }

                v29 = *(a1 + 40);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__p[0]) = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Single SIM -> Single SIM case : no pop up required", __p, 2u);
                }

                return v7 | v15;
              }
            }

            else
            {
LABEL_68:
              if (!v17)
              {
                return v7 | v15;
              }
            }

            if (v7 | v15)
            {
              v25 = *(a1 + 80);
              if (v25)
              {
                v26 = std::__shared_weak_count::lock(v25);
                if (v26)
                {
                  v27 = v26;
                  v28 = *(a1 + 72);
                  if (v28)
                  {
                    (*(*v28 + 64))(v28, v7, v15);
                  }

                  sub_100004A34(v27);
                }
              }
            }

            return v7 | v15;
          }
        }

        else
        {
          if (__p[1])
          {
            sub_100004A34(__p[1]);
          }

          if (*&v33[8])
          {
            sub_100004A34(*&v33[8]);
          }
        }

        v15 = 0;
        goto LABEL_51;
      }
    }

    v7 = 0;
    goto LABEL_25;
  }

  LODWORD(v8) = *(a1 + 887);
  if ((v8 & 0x80000000) != 0)
  {
    v8 = *(a1 + 872);
    if (v8)
    {
      **(a1 + 864) = 0;
      *(a1 + 872) = 0;
      if (*(a1 + 887) < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        if (*(a1 + 855) < 0)
        {
          **(a1 + 832) = 0;
          *(a1 + 840) = 0;
        }

        else
        {
          *(a1 + 832) = 0;
          *(a1 + 855) = 0;
        }

        LODWORD(v8) = 1;
      }

      goto LABEL_87;
    }
  }

  else if (*(a1 + 887))
  {
    LODWORD(v8) = 0;
    *(a1 + 864) = 0;
    *(a1 + 887) = 0;
LABEL_87:
    v9 = 1;
    return v9 | v8;
  }

  v9 = 0;
  return v9 | v8;
}

void CellularPlanListModelLocal::calculateProvisioningPlanProperties_sync(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  memset(&v20, 0, sizeof(v20));
  if ((*(a1 + 447) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 447))
    {
      goto LABEL_14;
    }

LABEL_5:
    v6 = *(a1 + 80);
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = std::__shared_weak_count::lock(v6);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *(a1 + 72);
    if (!v9)
    {
      v11 = 1;
      goto LABEL_30;
    }

    (*(*v9 + 96))(&v21);
    if (v25 == 1)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (v23 == 1)
        {
          std::string::operator=(&v20, &v24);
        }

        else if ((v22 & 1) == 0)
        {
          std::string::operator=(&v20, (a1 + 424));
          v11 = 0;
LABEL_28:
          if (v25 == 1)
          {
            sub_1002813D0(&v21);
          }

LABEL_30:
          sub_100004A34(v8);
          v18 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = v20.__r_.__value_.__l.__size_;
          }

          if (v18)
          {
            goto LABEL_33;
          }

          goto LABEL_15;
        }
      }
    }

    v11 = 1;
    goto LABEL_28;
  }

  if (*(a1 + 432))
  {
    goto LABEL_5;
  }

LABEL_14:
  v11 = 1;
LABEL_15:
  v14 = *a2;
  v12 = a2 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    while (!CellularPlanListModelLocal::isOffloadSim(a1, v13 + 4))
    {
      v15 = v13[1];
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
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
      if (v16 == v12)
      {
        goto LABEL_33;
      }
    }

    std::string::operator=(&v20, (v13 + 4));
  }

LABEL_33:
  *a3 = v11;
  v19 = (a3 + 8);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v19, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v19 = v20;
  }
}

void sub_100168078(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, ...)
{
  va_start(va, a8);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v8);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::getUsableSimCarrierSettings(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  sGetProfileDetails();
  v7 = *(a1 + 144);
  v6 = *(a1 + 152);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v42 = *(a2 + 2);
  }

  v8 = HIBYTE(v42);
  if (v7 == v6)
  {
    v6 = v7;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v42 >= 0)
    {
      v9 = HIBYTE(v42);
    }

    else
    {
      v9 = *(&__p + 1);
    }

    if (v42 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v11 = v7 + 72;
    while (1)
    {
      v12 = *(v11 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      if (v9 == v12)
      {
        v14 = v13 >= 0 ? v11 : *v11;
        if (!memcmp(p_p, v14, v9))
        {
          break;
        }
      }

      v15 = v11 + 96;
      v11 += 168;
      if (v15 == v6)
      {
        if (v8 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    v6 = v11 - 72;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_26:
  operator delete(__p);
LABEL_21:
  if (v6 == *(a1 + 152))
  {
LABEL_37:
    *a3 = 0;
    return;
  }

  if ((*(v6 + 119) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 104))
    {
      goto LABEL_24;
    }
  }

  else if (*(v6 + 119))
  {
LABEL_24:
    v16 = *(a1 + 56);
    BasicSimInfo::createBundleCriteria(&v40, v6);
    (*(*v16 + 224))(v16, &v40);
    sub_10001021C(&v40);
    return;
  }

  if (!sub_10016FA58(a1 + 248, a2))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101762AB8();
    }

    goto LABEL_37;
  }

  v17 = sub_1000E20F0(a1 + 248, a2);
  v18 = sub_1000E20F0(a1 + 248, a2);
  v19 = sub_1000E20F0(a1 + 248, a2);
  v20 = sub_1000E20F0(a1 + 248, a2);
  *v39 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v22 = *v39;
    *v39 = Mutable;
    *&v48 = v22;
    sub_1000296E0(&v48);
  }

  sub_100168A48((v17 + 24), (v18 + 48), v36);
  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(&__dst, v36[0], v36[1]);
  }

  else
  {
    __dst = *v36;
    v45 = v37;
  }

  v43 = 0;
  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(&v48, __dst, *(&__dst + 1));
  }

  else
  {
    v48 = __dst;
    *&v49 = v45;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v23 = v43;
    v43 = v46;
    v47 = v23;
    sub_100005978(&v47);
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  v38 = v43;
  v43 = 0;
  sub_100005978(&v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v39, kCTPostponementInfoIMSI, v38);
  sub_100005978(&v38);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (*(v19 + 95) < 0)
  {
    sub_100005F2C(v34, *(v19 + 72), *(v19 + 80));
  }

  else
  {
    *v34 = *(v19 + 72);
    v35 = *(v19 + 88);
  }

  if (SHIBYTE(v35) < 0)
  {
    sub_100005F2C(&__dst, v34[0], v34[1]);
  }

  else
  {
    __dst = *v34;
    v45 = v35;
  }

  v43 = 0;
  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(&v48, __dst, *(&__dst + 1));
  }

  else
  {
    v48 = __dst;
    *&v49 = v45;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v24 = v43;
    v43 = v46;
    v47 = v24;
    sub_100005978(&v47);
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  v38 = v43;
  v43 = 0;
  sub_100005978(&v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v39, @"GID1", v38);
  sub_100005978(&v38);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (*(v20 + 119) < 0)
  {
    sub_100005F2C(v32, *(v20 + 96), *(v20 + 104));
  }

  else
  {
    *v32 = *(v20 + 96);
    v33 = *(v20 + 112);
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_100005F2C(&__dst, v32[0], v32[1]);
  }

  else
  {
    __dst = *v32;
    v45 = v33;
  }

  v43 = 0;
  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(&v48, __dst, *(&__dst + 1));
  }

  else
  {
    v48 = __dst;
    *&v49 = v45;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v25 = v43;
    v43 = v46;
    v47 = v25;
    sub_100005978(&v47);
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  v38 = v43;
  v43 = 0;
  sub_100005978(&v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v39, @"GID2", v38);
  sub_100005978(&v38);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v30, *a2, *(a2 + 1));
  }

  else
  {
    *v30 = *a2;
    v31 = *(a2 + 2);
  }

  if (SHIBYTE(v31) < 0)
  {
    sub_100005F2C(&__dst, v30[0], v30[1]);
  }

  else
  {
    __dst = *v30;
    v45 = v31;
  }

  v43 = 0;
  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(&v48, __dst, *(&__dst + 1));
  }

  else
  {
    v48 = __dst;
    *&v49 = v45;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v26 = v43;
    v43 = v46;
    v47 = v26;
    sub_100005978(&v47);
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  v27 = v43;
  v38 = v43;
  v43 = 0;
  sub_100005978(&v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v39, kCTPostponementInfoICCID, v27);
  sub_100005978(&v38);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v28 = *(a1 + 56);
  sub_100010180(&v29, v39);
  (*(*v28 + 224))(v28, &v29);
  sub_10001021C(&v29);
  sub_1000296E0(v39);
}

void sub_10016885C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_100005978(&a37);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1000296E0(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_100168A48@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1000677C4(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void CellularPlanListModelLocal::maybeApplySourcePlanPreferences_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 56))(&v16);
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
    (*(*v14 + 440))(v14, a2, a3);
    goto LABEL_14;
  }

  if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_FAULT))
  {
LABEL_14:
    if (v15)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_101762B20();
  if (v15)
  {
    return;
  }

LABEL_15:
  sub_100004A34(v13);
}

void sub_100168CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::isColdPhysicalSimDetected_sync(uint64_t a1, _BYTE *a2)
{
  if (a2[1280] != 1)
  {
    return 0;
  }

  memset(&v6, 0, sizeof(v6));
  if (a2[904])
  {
    v3 = 880;
  }

  else
  {
    if (a2[1] != 12)
    {
      goto LABEL_8;
    }

    v3 = 432;
  }

  std::string::operator=(&v6, &a2[v3]);
LABEL_8:
  isIccidForPhySlot_sync = CellularPlanListModelLocal::isIccidForPhySlot_sync(a1, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return isIccidForPhySlot_sync;
}

void sub_100168D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168D80(uint64_t *a1, void **a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (v3)
  {
    v7 = *a1;
    v8 = *(*a1 + 40);
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

      v10 = *a3;
      if (v4 >= 0)
      {
        v10 = a3;
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Mark both [%s] and [%s] - as setup", buf, 0x16u);
    }

    (***(v7 + 56))(&v31);
    ServiceMap = Registry::getServiceMap(v31);
    v12 = ServiceMap;
    v14 = v13;
    if (v13 < 0)
    {
      v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    *buf = v14;
    v18 = sub_100009510(&v12[1].__m_.__sig, buf);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v12);
    v19 = 0;
    v21 = 1;
LABEL_19:
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, a2[1]);
    }

    else
    {
      *buf = *a2;
      *&buf[16] = a2[2];
    }

    (*(*v20 + 248))(v20, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (v21)
      {
LABEL_25:
        if (v32)
        {
          sub_100004A34(v32);
        }

        (***(v7 + 56))(&v31);
        v22 = Registry::getServiceMap(v31);
        v23 = v22;
        if (v13 < 0)
        {
          v24 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
          v25 = 5381;
          do
          {
            v13 = v25;
            v26 = *v24++;
            v25 = (33 * v25) ^ v26;
          }

          while (v26);
        }

        std::mutex::lock(v22);
        *buf = v13;
        v27 = sub_100009510(&v23[1].__m_.__sig, buf);
        if (v27)
        {
          v29 = v27[3];
          v28 = v27[4];
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v23);
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v28);
            v30 = 0;
            goto LABEL_37;
          }
        }

        else
        {
          v29 = 0;
        }

        std::mutex::unlock(v23);
        v28 = 0;
        v30 = 1;
LABEL_37:
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(buf, *a3, *(a3 + 8));
        }

        else
        {
          *buf = *a3;
          *&buf[16] = *(a3 + 16);
        }

        (*(*v29 + 248))(v29, buf, 1);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (v30)
          {
LABEL_43:
            if (v32)
            {
              sub_100004A34(v32);
            }

            return;
          }
        }

        else if (v30)
        {
          goto LABEL_43;
        }

        sub_100004A34(v28);
        goto LABEL_43;
      }
    }

    else if (v21)
    {
      goto LABEL_25;
    }

    sub_100004A34(v19);
    goto LABEL_25;
  }
}

void sub_100169114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::saveLocalTransferredPlans(CellularPlanListModelLocal *this)
{
  (***(this + 7))(&__p);
  ServiceMap = Registry::getServiceMap(__p.__r_.__value_.__l.__data_);
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
  buf.__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &buf);
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
  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  if (v10)
  {
    v24 = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, *(this + 95), &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v13 = v24;
      v24 = Mutable;
      __p.__r_.__value_.__r.__words[0] = v13;
      sub_1000279DC(&__p.__r_.__value_.__l.__data_);
    }

    v14 = *(this + 93);
    v15 = (this + 752);
    if (v14 != (this + 752))
    {
      do
      {
        v23 = 0;
        if (v14[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_100005F2C(&v22, v14[1].__r_.__value_.__l.__size_, v14[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = *(v14 + 32);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = v22;
        }

        v25 = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = buf;
        }

        v27 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v25;
          v25 = v27;
          v28 = v16;
          sub_100005978(&v28);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v23 = v25;
        v25 = 0;
        sub_100005978(&v25);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        CFArrayAppendValue(v24, v23);
        sub_100005978(&v23);
        size = v14->__r_.__value_.__l.__size_;
        if (size)
        {
          do
          {
            v18 = size;
            size = size->__r_.__value_.__r.__words[0];
          }

          while (size);
        }

        else
        {
          do
          {
            v18 = v14->__r_.__value_.__r.__words[2];
            v19 = v18->__r_.__value_.__r.__words[0] == v14;
            v14 = v18;
          }

          while (!v19);
        }

        v14 = v18;
      }

      while (v18 != v15);
    }

    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_100074B94(*(this + 93), v15, ",", 1, &__p);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I save local transferred plans: [%s], %@", &buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(*v10 + 16))(v10, @"kLocalTransferredPlans", v24, @"com.apple.commcenter.cellular_plan", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v10 + 48))(v10, @"com.apple.commcenter.cellular_plan", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000279DC(&v24);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1001695B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1000279DC(&a17);
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(a1);
}

std::string *sub_100169660(std::string *a1, char *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_100016890(a1, a2);
  }

  else
  {
    sub_10000501C(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

std::string *sub_1001696A4(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

uint64_t sub_100169714(uint64_t a1)
{
  if (*(a1 + 328) == 1)
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

    sub_100E3A5D4(a1);
  }

  return a1;
}

void sub_100169790(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1001698EC(a1);
    if (a4 <= 0x186186186186186)
    {
      v9 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
      {
        v10 = 0x186186186186186;
      }

      else
      {
        v10 = v9;
      }

      sub_1000B21B0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xCF3CF3CF3CF3CF3DLL * (v11 >> 3) >= a4)
  {
    sub_10016992C(&v14, a2, a3, v8);
    sub_1000B2BD4(a1, v12);
  }

  else
  {
    sub_10016992C(&v13, a2, a2 + v11, v8);
    a1[1] = sub_1000B22B4(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_1001698EC(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000B2BD4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10016992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 24;
  do
  {
    v7 = v6 - 24;
    *a4 = *(v6 - 24);
    if (a4 != v6 - 24)
    {
      sub_1000B26FC((a4 + 16), *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 2);
      sub_1000B2828((a4 + 40), *(v6 + 16), *(v6 + 24), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 24) - *(v6 + 16)) >> 3));
    }

    v8 = *(v6 + 40);
    *(a4 + 68) = *(v6 + 44);
    *(a4 + 64) = v8;
    std::string::operator=((a4 + 72), (v6 + 48));
    std::string::operator=((a4 + 96), (v6 + 72));
    std::string::operator=((a4 + 120), (v6 + 96));
    std::string::operator=((a4 + 144), (v6 + 120));
    a4 += 168;
    v6 += 168;
  }

  while (v7 + 168 != v5);
  return v5;
}

uint64_t sub_100169A18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    return *(a2 + 80) ^ 1u;
  }

  if (!*(a2 + 80))
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v5 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v2 - v3 == v4 - v5)
  {
    if (v3 == v2)
    {
      return v5 == v4;
    }

    v6 = 0;
    while (1)
    {
      v7 = v5 + v6;
      if (v5 + v6 == v4)
      {
        break;
      }

      v8 = v3 + v6;
      v9 = *(v3 + v6 + 39);
      if (v9 >= 0)
      {
        v10 = *(v3 + v6 + 39);
      }

      else
      {
        v10 = *(v3 + v6 + 24);
      }

      v11 = *(v7 + 39);
      v12 = v11;
      v13 = *(v7 + 24);
      if ((v11 & 0x80u) == 0)
      {
        v13 = v11;
      }

      if (v10 == v13)
      {
        v14 = v5 + v6;
        v17 = *(v8 + 16);
        v15 = v8 + 16;
        v16 = v17;
        v18 = (v9 >= 0 ? v15 : v16);
        v21 = *(v14 + 16);
        v20 = v14 + 16;
        v19 = v21;
        v22 = (v12 >= 0 ? v20 : v19);
        v23 = memcmp(v18, v22, v10);
        if (!v23 && (capabilities::ct::defaultVinylCardTypeToGSMA(v23) & 1) == 0)
        {
          v24 = v3 + v6;
          v25 = v5 + v6;
          if (*(v3 + v6 + 90) != *(v5 + v6 + 90))
          {
            if (v4 - v5 != v2 - v3)
            {
              return 0;
            }

            if (v24 != v2)
            {
              v27 = 0;
              v28 = v3 + v6;
              while (1)
              {
                if (v24 == v28)
                {
LABEL_49:
                  v38 = 0;
                  v39 = (v28 + 16);
                  v40 = v25;
                  do
                  {
                    v41 = *(v28 + 39);
                    if (v41 >= 0)
                    {
                      v42 = *(v28 + 39);
                    }

                    else
                    {
                      v42 = *(v28 + 24);
                    }

                    v43 = *(v40 + 39);
                    v44 = v43;
                    if ((v43 & 0x80u) != 0)
                    {
                      v43 = *(v40 + 24);
                    }

                    if (v42 != v43 || (v41 >= 0 ? (v45 = (v28 + 16)) : (v45 = *v39), v44 >= 0 ? (v46 = (v40 + 16)) : (v46 = *(v40 + 16)), (v47 = memcmp(v45, v46, v42), v47) || (capabilities::ct::defaultVinylCardTypeToGSMA(v47) & 1) != 0 || *(v28 + 90) == *(v40 + 90)))
                    {
                      ++v38;
                    }

                    v40 += 216;
                  }

                  while (v40 != v4);
                  if (!v38)
                  {
                    return 0;
                  }

                  v48 = v28 + 216;
                  v49 = 1;
                  while (v48 != v2)
                  {
                    v50 = *(v28 + 39);
                    if (v50 >= 0)
                    {
                      v51 = *(v28 + 39);
                    }

                    else
                    {
                      v51 = *(v28 + 24);
                    }

                    v52 = *(v48 + 39);
                    v53 = v52;
                    if ((v52 & 0x80u) != 0)
                    {
                      v52 = *(v48 + 24);
                    }

                    if (v51 != v52 || (v50 >= 0 ? (v54 = (v28 + 16)) : (v54 = *v39), v53 >= 0 ? (v55 = (v48 + 16)) : (v55 = *(v48 + 16)), (v56 = memcmp(v54, v55, v51), v56) || (capabilities::ct::defaultVinylCardTypeToGSMA(v56) & 1) != 0 || *(v28 + 90) == *(v48 + 90)))
                    {
                      ++v49;
                    }

                    v48 += 216;
                  }

                  if (v49 != v38)
                  {
                    return 0;
                  }
                }

                else
                {
                  v29 = (v24 + 90);
                  v30 = v27;
                  while (1)
                  {
                    v31 = *(v29 - 51);
                    if (v31 >= 0)
                    {
                      v32 = *(v29 - 51);
                    }

                    else
                    {
                      v32 = *(v29 - 66);
                    }

                    v33 = *(v28 + 39);
                    v34 = v33;
                    if ((v33 & 0x80u) != 0)
                    {
                      v33 = *(v28 + 24);
                    }

                    if (v32 != v33)
                    {
                      break;
                    }

                    v35 = v31 >= 0 ? v29 - 74 : *(v29 - 74);
                    v36 = v34 >= 0 ? (v28 + 16) : *(v28 + 16);
                    v37 = memcmp(v35, v36, v32);
                    if (v37 || (capabilities::ct::defaultVinylCardTypeToGSMA(v37) & 1) != 0 || *v29 == *(v28 + 90))
                    {
                      break;
                    }

                    v29 += 216;
                    v30 -= 216;
                    if (!v30)
                    {
                      goto LABEL_49;
                    }
                  }
                }

                v28 += 216;
                v27 += 216;
                result = 1;
                if (v28 == v2)
                {
                  return result;
                }
              }
            }

            return 1;
          }
        }
      }

      v6 += 216;
      if (v3 + v6 == v2)
      {
        v5 += v6;
        return v5 == v4;
      }
    }
  }

  return 0;
}

void sub_100169D44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_100169EC0(a1);
    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
      {
        v10 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100169F28(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 3) >= a4)
  {
    sub_10016A000(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 88;
        sub_1001120CC(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_10016A000(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = sub_100169F78(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void sub_100169EC0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 88;
        sub_1001120CC(v3);
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

void sub_100169F28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_10011DBFC(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100169F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100F11B6C(a4, v6);
      v6 += 88;
      a4 += 88;
      v7 -= 88;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100169FD8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 88;
    do
    {
      sub_1001120CC(v4);
      v4 -= 88;
      v2 += 88;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    std::string::operator=((a4 + 32), (v5 + 32));
    sub_1001148D8(a4 + 56, v5 + 56);
    a4 += 88;
    v5 += 88;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_10016A078(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
  }

  if (*(a2 + 159) < 0)
  {
    sub_100005F2C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v9 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v9;
  }

  if (*(a2 + 183) < 0)
  {
    sub_100005F2C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v10 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v10;
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

void sub_10016A1DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10016A270(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10016A310(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074920(a1, a2);
  sub_100074920(v4 + 3, a2 + 24);
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  sub_1000E0918((a1 + 96), a2 + 96);
  sub_10016A45C((a1 + 120), a2 + 120);
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
  }

  return a1;
}

void sub_10016A3D8(_Unwind_Exception *a1)
{
  sub_10016A798(v1 + 120, *(v1 + 128));
  sub_1000DD0AC(v1 + 96, *(v1 + 104));
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  sub_100009970(v1 + 24, *(v1 + 32));
  sub_100009970(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_10016A45C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10016A4B4(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10016A4B4(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10016A53C(v5, (v5 + 1), v4 + 4);
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
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10016A53C(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10016A5CC();
  }

  return result;
}

void sub_10016A644(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10016A6D8(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10016A660(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100FB5048((__dst + 3), a2 + 24);
  return __dst;
}

void sub_10016A6BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016A6D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 183) < 0)
    {
      operator delete(__p[20]);
    }

    if (*(__p + 159) < 0)
    {
      operator delete(__p[17]);
    }

    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    if (*(__p + 111) < 0)
    {
      operator delete(__p[11]);
    }

    if (*(__p + 80) == 1 && *(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

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

void sub_10016A798(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10016A798(a1, *a2);
    sub_10016A798(a1, *(a2 + 1));
    if (a2[183] < 0)
    {
      operator delete(*(a2 + 20));
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[80] == 1 && a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_10016A858(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 88) == 1)
    {
      v3 = (a1 + 64);
      sub_100112120(&v3);
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *a1 = 0;
  }

  return a1;
}

_BYTE *sub_10016A8C0(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10016A938(__dst + 24, (a2 + 24));
  return __dst;
}

void sub_10016A91C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016A938(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  *(__dst + 30) = *(a2 + 30);
  sub_10006F264((__dst + 128), a2 + 8);
  v9 = a2[10];
  *(__dst + 88) = *(a2 + 88);
  *(__dst + 10) = v9;
  sub_10016AB14(__dst + 184, a2 + 184);
  sub_10016B058(__dst + 392, a2 + 392);
  return __dst;
}

void sub_10016AA64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10016AB14(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[200] = 0;
  if (*(a2 + 200) == 1)
  {
    sub_10016AB7C(a1, a2);
    a1[200] = 1;
  }

  return a1;
}

void sub_10016AB5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 200) == 1)
  {
    sub_10016AFCC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016AB7C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  *(a1 + 112) = *(a2 + 112);
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
  }

  v9 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_10004EFD0(a1 + 152, *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_10016AD54(a1 + 176, *(a2 + 176), *(a2 + 184), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 184) - *(a2 + 176)) >> 3));
  return a1;
}

void sub_10016ACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 111) < 0)
  {
    operator delete(*(v11 + 88));
  }

  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016AD54(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10016ADDC(result, a4);
  }

  return result;
}

void sub_10016ADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000E2794(&a9);
  _Unwind_Resume(a1);
}

void sub_10016ADDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_10016AE28(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10016AE28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10016AE80(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      *v4 = *(v6 - 1);
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C((v4 + 16), *v6, *(v6 + 1));
        v4 = v13;
      }

      else
      {
        v7 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v7;
      }

      v8 = v6 - 1;
      v4 += 40;
      v13 = v4;
      v6 = (v6 + 40);
    }

    while ((v8 + 40) != a3);
  }

  LOBYTE(v11) = 1;
  sub_10016AF4C(v10);
  return v4;
}

uint64_t sub_10016AF4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10016AF84(a1);
  }

  return a1;
}

void sub_10016AF84(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_10016AFCC(uint64_t a1)
{
  v3 = (a1 + 176);
  sub_1000E2794(&v3);
  v3 = (a1 + 152);
  sub_1000087B4(&v3);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

_BYTE *sub_10016B058(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[192] = 0;
  if (*(a2 + 192) == 1)
  {
    sub_10016A078(a1, a2);
    a1[192] = 1;
  }

  return a1;
}

void sub_10016B0A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 192) == 1)
  {
    sub_10011289C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016B0C0(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v3 = (a1 + 176);
    sub_1000E2794(&v3);
    v3 = (a1 + 152);
    sub_1000087B4(&v3);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_10016B158(uint64_t a1)
{
  sub_10016B194(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10016B194(uint64_t a1)
{
  if (*(a1 + 584) == 1)
  {
    sub_10011289C(a1 + 392);
  }

  if (*(a1 + 384) == 1)
  {
    v3 = (a1 + 360);
    sub_1000E2794(&v3);
    v3 = (a1 + 336);
    sub_1000087B4(&v3);
    if (*(a1 + 327) < 0)
    {
      operator delete(*(a1 + 304));
    }

    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    if (*(a1 + 263) < 0)
    {
      operator delete(*(a1 + 240));
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

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

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10016B2AC(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_10016B30C(uint64_t a1, __int128 *a2)
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

  v21 = a1;
  if (v6)
  {
    sub_100005348(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1000054E0(&v17);
  return v11;
}

void sub_10016B438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000054E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B44C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1000CE3D4();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10016B594(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  sub_10016AB7C(200 * v2, a2);
  v15 = 200 * v2 + 200;
  v7 = a1[1];
  v8 = 200 * v2 + *a1 - v7;
  sub_10016B5F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10016B888(&v13);
  return v12;
}

void sub_10016B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016B888(va);
  _Unwind_Resume(a1);
}

void sub_10016B594(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10016B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      *(a4 + 80) = *(v7 + 80);
      v11 = *(v7 + 88);
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 88) = v11;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 88) = 0;
      *(a4 + 112) = *(v7 + 112);
      v12 = *(v7 + 120);
      *(a4 + 136) = *(v7 + 136);
      *(a4 + 120) = v12;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = 0;
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 152) = 0;
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 168) = *(v7 + 168);
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = *(v7 + 176);
      *(a4 + 192) = *(v7 + 192);
      *(v7 + 176) = 0;
      *(v7 + 184) = 0;
      *(v7 + 192) = 0;
      v7 += 200;
      a4 += 200;
    }

    while (v7 != a3);
    v17 = a4;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_10016B774(a1, v5);
      v5 += 200;
    }
  }

  return sub_10016B7FC(v14);
}

void sub_10016B774(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 176);
  sub_1000E2794(&v3);
  v3 = (a2 + 152);
  sub_1000087B4(&v3);
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_10016B7FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10016B834(a1);
  }

  return a1;
}

void sub_10016B834(uint64_t *a1)
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
      v3 -= 200;
      sub_10016B774(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10016B888(uint64_t a1)
{
  sub_10016B8C0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10016B8C0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 200;
    sub_10016B774(v5, v4 - 200);
  }
}

uint64_t sub_10016B908(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10016B990(result, a4);
  }

  return result;
}

void sub_10016B970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000E2698(&a9);
  _Unwind_Resume(a1);
}

void sub_10016B990(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    sub_10016B594(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_10016B9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_10016AB7C(v4, v6);
      v6 += 200;
      v4 = v11 + 200;
      v11 += 200;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10016B7FC(v8);
  return v4;
}

char *sub_10016BA80(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10006F264((__dst + 24), (a2 + 24));
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C(__dst + 56, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
    *(__dst + 9) = *(a2 + 9);
    *(__dst + 56) = v5;
  }

  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  sub_10004EFD0((__dst + 80), *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  sub_10016BBB8(__dst + 104, (a2 + 104));
  return __dst;
}

void sub_10016BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 48) == 1 && *(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016BBB8(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[64] = 0;
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    v5 = *(a2 + 3);
    *(__dst + 29) = *(a2 + 29);
    *(__dst + 3) = v5;
    if (*(a2 + 63) < 0)
    {
      sub_100005F2C(__dst + 40, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v6 = *(a2 + 40);
      *(__dst + 7) = *(a2 + 7);
      *(__dst + 40) = v6;
    }

    __dst[64] = 1;
  }

  return __dst;
}

void sub_10016BC5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 64) == 1)
  {
    sub_10015E2C8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016BC94(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v2 = v1 + 1;
  if (v1 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v4 = 0x155555555555555;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_10016BDCC(a1, v4);
  }

  v5 = 192 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 185) = 1;
  *&v14 = 192 * v1 + 192;
  v6 = a1[1];
  v7 = 192 * v1 + *a1 - v6;
  sub_10016BE24(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10016BF3C(&v12);
  return v11;
}

void sub_10016BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016BF3C(va);
  _Unwind_Resume(a1);
}

void sub_10016BDCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10016BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(a4 + 56) = *(v6 + 56);
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v9;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = 0;
      v10 = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 88) = v10;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 88) = 0;
      v11 = *(v6 + 112);
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 112) = v11;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 136);
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 136) = v12;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      v13 = *(v6 + 160);
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 160) = v13;
      *(v6 + 160) = 0;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(a4 + 184) = *(v6 + 184);
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_10011289C(v5) + 192;
    }
  }
}

uint64_t sub_10016BF3C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_10011289C(i - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10016BF8C(void ***a1)
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
        v4 = sub_10011289C(v4 - 192);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10016C010(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 7);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x49249249249249)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 7) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 7);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 7)) >= 0x24924924924924)
  {
    v4 = 0x49249249249249;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_10016C27C(a1, v4);
  }

  v11 = 0;
  v12 = 896 * v1;
  bzero((896 * v1), 0x380uLL);
  sub_100A59330(896 * v1);
  v13 = (896 * v1 + 896);
  v5 = a1[1];
  v6 = 896 * v1 + *a1 - v5;
  sub_10016C2D8(a1, *a1, v5, v12 + *a1 - v5);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_10016C4D0(&v11);
  return v10;
}

void sub_10016C140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016C4D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C154(uint64_t result)
{
  if (*result == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v3 = result;
    v4[0] = (result + 400);
    sub_1000E2794(v4);
    v4[0] = (v3 + 376);
    sub_1000087B4(v4);
    if (*(v3 + 367) < 0)
    {
      operator delete(*(v3 + 344));
    }

    if (*(v3 + 335) < 0)
    {
      operator delete(*(v3 + 312));
    }

    if (*(v3 + 303) < 0)
    {
      operator delete(*(v3 + 280));
    }

    if (*(v3 + 255) < 0)
    {
      operator delete(*(v3 + 232));
    }

    result = sub_100E3A5D4(v3 + 8);
    *v3 = 0;
  }

  return result;
}

void sub_10016C1F8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }
}

void sub_10016C27C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4924924924924ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10016C2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_100A595A4(a4, v8);
      v8 += 896;
      a4 += 896;
      v7 -= 896;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_100A5987C(v6);
      v6 += 896;
    }
  }

  return result;
}

void sub_10016C358(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 896;
    do
    {
      v4 = sub_100A5987C(v4) - 896;
      v2 += 896;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016C37C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  return __dst;
}

void sub_10016C46C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016C4D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 896;
    sub_100A5987C(i - 896);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10016C520(uint64_t a1)
{
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

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10016C594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10016C5E8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_10016C5E8(const void **result, const void **a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 2;
      sub_100005978(v4 - 1);
      result = sub_100005978(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  v3[1] = a2;
  return result;
}

void sub_10016C644(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10016C698(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10016C698(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 16) == 1 && *(v3 - 17) < 0)
      {
        operator delete(*(v3 - 5));
      }

      if (*(v3 - 48) == 1 && *(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      v4 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 12;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

std::string *sub_10016C728(_BYTE *a1, const std::string *a2)
{
  v4 = *a1;
  result = (a1 + 8);
  if (v4 == 1)
  {

    return std::string::operator=(result, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      result = sub_100005F2C(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&a2->__r_.__value_.__l.__data_;
      result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&result->__r_.__value_.__l.__data_ = v5;
    }

    *a1 = 1;
  }

  return result;
}

void sub_10016C7A0(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10016C940(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_10016ADDC(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 16), (v6 + 1));
        v8 += 40;
        v6 = (v6 + 40);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
      }

      v11 -= 40;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 16), (v6 + 1));
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_10016AE80(a1, v12, a3, v11);
  }
}

void sub_10016C940(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000E27E8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10016C980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    sub_10016CA30(&v11, &v10);
    v5 = v11 + 896;
    v6 = v10 + 896;
    v10 = v6;
    v11 += 896;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        sub_10016CA30(&v11, &v10);
        v7 = v11 + 896;
        v8 = v10 + 896;
        v10 = v8;
        v11 += 896;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

uint64_t sub_10016CA30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  bzero(v5, 0x380uLL);
  sub_10016CCC4(v5, v2);
  sub_10016CAE4(v2, v3);
  sub_10016CAE4(v3, v5);
  return sub_100A5987C(v5);
}

uint64_t sub_10016CAE4(uint64_t a1, uint64_t a2)
{
  sub_10016D110(a1, a2);
  sub_10016D2A4((a1 + 128), (a2 + 128));
  v4 = *(a2 + 560);
  *(a1 + 573) = *(a2 + 573);
  *(a1 + 560) = v4;
  v5 = (a1 + 584);
  if (*(a1 + 607) < 0)
  {
    operator delete(*v5);
  }

  v6 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *v5 = v6;
  *(a2 + 607) = 0;
  *(a2 + 584) = 0;
  v7 = (a1 + 608);
  if (*(a1 + 631) < 0)
  {
    operator delete(*v7);
  }

  v8 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *v7 = v8;
  *(a2 + 631) = 0;
  *(a2 + 608) = 0;
  v9 = (a1 + 632);
  if (*(a1 + 655) < 0)
  {
    operator delete(*v9);
  }

  v10 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *v9 = v10;
  *(a2 + 655) = 0;
  *(a2 + 632) = 0;
  *(a1 + 656) = *(a2 + 656);
  v11 = (a1 + 664);
  if (*(a1 + 687) < 0)
  {
    operator delete(*v11);
  }

  v12 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *v11 = v12;
  *(a2 + 687) = 0;
  *(a2 + 664) = 0;
  v13 = (a1 + 688);
  if (*(a1 + 711) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *v13 = v14;
  *(a2 + 711) = 0;
  *(a2 + 688) = 0;
  v15 = (a1 + 712);
  if (*(a1 + 735) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *v15 = v16;
  *(a2 + 735) = 0;
  *(a2 + 712) = 0;
  std::string::operator=((a1 + 736), (a2 + 736));
  std::string::operator=((a1 + 760), (a2 + 760));
  std::string::operator=((a1 + 784), (a2 + 784));
  *(a1 + 808) = *(a2 + 808);
  std::string::operator=((a1 + 816), (a2 + 816));
  std::string::operator=((a1 + 840), (a2 + 840));
  std::string::operator=((a1 + 864), (a2 + 864));
  *(a1 + 888) = *(a2 + 888);
  return a1;
}

uint64_t sub_10016CCC4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  if (*a2 == 1)
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *a1 = 1;
  }

  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    sub_10016CF40(a1 + 128, a2 + 136);
  }

  v9 = *(a2 + 560);
  *(a1 + 573) = *(a2 + 573);
  *(a1 + 560) = v9;
  v10 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 584) = v10;
  *(a2 + 592) = 0u;
  *(a2 + 584) = 0;
  v11 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v11;
  *(a2 + 616) = 0u;
  *(a2 + 608) = 0;
  v12 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v12;
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a1 + 656) = *(a2 + 656);
  v13 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 664) = v13;
  *(a2 + 680) = 0;
  *(a2 + 672) = 0;
  *(a2 + 664) = 0;
  v14 = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 688) = v14;
  *(a2 + 704) = 0;
  *(a2 + 696) = 0;
  *(a2 + 688) = 0;
  v15 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 712) = v15;
  *(a2 + 728) = 0;
  *(a2 + 720) = 0;
  *(a2 + 712) = 0;
  sub_100DFECD0(a1 + 736, a2 + 736);
  *(a1 + 888) = *(a2 + 888);
  return a1;
}

void sub_10016CEBC(_Unwind_Exception *a1)
{
  if (v1[735] < 0)
  {
    operator delete(*v8);
  }

  if (v1[711] < 0)
  {
    operator delete(*v7);
  }

  if (v1[687] < 0)
  {
    operator delete(*v6);
  }

  if (v1[655] < 0)
  {
    operator delete(*v5);
  }

  if (v1[631] < 0)
  {
    operator delete(*v4);
  }

  if (v1[607] < 0)
  {
    operator delete(*v3);
  }

  sub_10016C154(v2);
  sub_10016C1F8(v1);
  _Unwind_Resume(a1);
}

__n128 sub_10016CF40(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  v2 = *(a2 + 16);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 24) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v3 = *(a2 + 40);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 48) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v4 = *(a2 + 64);
  *(a1 + 88) = *(a2 + 80);
  *(a1 + 72) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v5 = *(a2 + 88);
  *(a1 + 100) = *(a2 + 92);
  *(a1 + 96) = v5;
  v6 = *(a2 + 96);
  *(a1 + 120) = *(a2 + 112);
  *(a1 + 104) = v6;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v7 = *(a2 + 120);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 128) = v7;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v8 = *(a2 + 144);
  *(a1 + 168) = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v9 = *(a2 + 168);
  *(a1 + 192) = *(a2 + 184);
  *(a1 + 176) = v9;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v10 = *(a2 + 192);
  *(a1 + 216) = *(a2 + 208);
  *(a1 + 200) = v10;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 224) = *(a2 + 216);
  v11 = *(a2 + 224);
  *(a1 + 248) = *(a2 + 240);
  *(a1 + 232) = v11;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 224) = 0;
  v12 = *(a2 + 248);
  *(a1 + 272) = *(a2 + 264);
  *(a1 + 256) = v12;
  v13 = *(a2 + 272);
  *(a1 + 296) = *(a2 + 288);
  *(a1 + 280) = v13;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 304) = *(a2 + 296);
  v14 = *(a2 + 304);
  *(a1 + 328) = *(a2 + 320);
  *(a1 + 312) = v14;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 304) = 0;
  *(a1 + 336) = *(a2 + 328);
  v15 = *(a2 + 336);
  *(a1 + 360) = *(a2 + 352);
  *(a1 + 344) = v15;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 336) = 0;
  *(a1 + 368) = *(a2 + 360);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 376) = *(a2 + 368);
  *(a1 + 392) = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  result = *(a2 + 392);
  *(a1 + 400) = result;
  *(a1 + 416) = *(a2 + 408);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 392) = 0;
  *(a1 + 424) = *(a2 + 416);
  *a1 = 1;
  return result;
}

void sub_10016D110(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_10016D1B8(a1, (a2 + 8));
    }

    else
    {
      sub_10016C1F8(a1);
    }
  }

  else if (*a2)
  {
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v3 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    v6 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v6;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *a1 = 1;
  }
}

__n128 sub_10016D1B8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 5);
  *(a1 + 32) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = a2[3];
  *(a1 + 72) = *(a2 + 8);
  *(a1 + 56) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v7 = *(a2 + 72);
  *(a1 + 96) = *(a2 + 11);
  *(a1 + 80) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  result = a2[6];
  *(a1 + 120) = *(a2 + 14);
  *(a1 + 104) = result;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  return result;
}

void sub_10016D2A4(_BYTE *a1, _BYTE *a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_100F11BEC((a1 + 8), (a2 + 8));
      sub_10016D348((a1 + 224), (a2 + 224));
      a1[424] = a2[424];
    }

    else
    {

      sub_10016C154(a1);
    }
  }

  else if (*a2)
  {
    v4 = (a2 + 8);

    sub_10016CF40(a1, v4);
  }
}

uint64_t sub_10016D348(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  *(a1 + 112) = *(a2 + 112);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  *(a1 + 144) = *(a2 + 144);
  sub_100071A6C(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  sub_10016C940((a1 + 176));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  return a1;
}

uint64_t sub_10016D48C(uint64_t result, uint64_t a2)
{
  if (*(result + 1280) == *(a2 + 1280))
  {
    if (*(result + 1280))
    {

      return sub_1007CC0DC(result, a2);
    }
  }

  else if (*(result + 1280))
  {
    result = sub_1002813D0(result);
    *(result + 1280) = 0;
  }

  else
  {
    result = sub_1002939FC(result, a2);
    *(result + 1280) = 1;
  }

  return result;
}

double sub_10016D4E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152) == *(a2 + 152))
  {
    if (*(a1 + 152))
    {

      sub_10016D5E4(a1, a2);
    }
  }

  else if (*(a1 + 152))
  {
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v4 = a1;
    sub_10016C644(&v4);
    *(a1 + 152) = 0;
  }

  else
  {

    *&result = sub_10016D688(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_10016D5E4(uint64_t a1, uint64_t a2)
{
  sub_10016D77C(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10016A270(a1 + 24, (a2 + 24));
  sub_10016A270(a1 + 56, (a2 + 56));
  sub_10016A270(a1 + 88, (a2 + 88));
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v4 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v4;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  return a1;
}

__n128 sub_10016D688(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  *a1 = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[1].n128_u8[8] = 0;
  a1[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    v2 = *(a2 + 24);
    a1[2].n128_u64[1] = *(a2 + 40);
    *(a1 + 24) = v2;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    a1[3].n128_u8[0] = 1;
  }

  a1[3].n128_u8[8] = 0;
  a1[5].n128_u8[0] = 0;
  if (*(a2 + 80) == 1)
  {
    v3 = *(a2 + 56);
    a1[4].n128_u64[1] = *(a2 + 72);
    *(a1 + 56) = v3;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    a1[5].n128_u8[0] = 1;
  }

  a1[5].n128_u8[8] = 0;
  a1[7].n128_u8[0] = 0;
  if (*(a2 + 112) == 1)
  {
    v4 = *(a2 + 88);
    a1[6].n128_u64[1] = *(a2 + 104);
    *(a1 + 88) = v4;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    a1[7].n128_u8[0] = 1;
  }

  a1[7].n128_u32[2] = *(a2 + 120);
  result = *(a2 + 128);
  a1[9].n128_u64[0] = *(a2 + 144);
  a1[8] = result;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  a1[9].n128_u8[8] = 1;
  return result;
}

void sub_10016D77C(uint64_t a1)
{
  if (*a1)
  {
    sub_10016C698(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

double sub_10016D7BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == *(a2 + 160))
  {
    if (*(a1 + 160))
    {

      sub_10016D8AC(a1, a2);
    }
  }

  else if (*(a1 + 160))
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 160) = 0;
  }

  else
  {

    *&result = sub_10016D95C(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_10016D8AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_10016A270(a1 + 8, (a2 + 8));
  sub_10016A270(a1 + 40, (a2 + 40));
  sub_10016A270(a1 + 72, (a2 + 72));
  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  return a1;
}

__n128 sub_10016D95C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v3 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = 1;
  }

  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = 1;
  return result;
}

__n128 sub_10016DA50(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
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
      v5 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v5;
      result = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v8;
      *(a1 + 72) = v7;
      *(a1 + 56) = result;
    }
  }

  else if (*(a1 + 120))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 120) = 0;
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    result = *(a2 + 56);
    v11 = *(a2 + 72);
    v12 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v12;
    *(a1 + 72) = v11;
    *(a1 + 56) = result;
    *(a1 + 120) = 1;
  }

  return result;
}

uint64_t sub_10016DB50(uint64_t a1, uint64_t a2)
{
  sub_10016DBD4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10016DBD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10016DC58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      std::string::operator=((a1 + 16), (a2 + 16));
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    sub_10016DCE0(a1, a2);
    *(a1 + 48) = 1;
  }
}

uint64_t sub_10016DCE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_10016DD40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_10016DD88(&v4);
  return a1;
}

void sub_10016DD88(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10016DDDC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10016DDDC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      if (*(v3 - 73) < 0)
      {
        operator delete(*(v3 - 12));
      }

      v4 = v3 - 15;
      if (*(v3 - 97) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 15;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_10016DE74(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  return sub_100E3A5D4(a1);
}

uint64_t sub_10016DEB8(uint64_t a1, uint64_t a2)
{
  sub_100F11F00(a1, a2);
  if (*(a2 + 239) < 0)
  {
    sub_100005F2C((a1 + 216), *(a2 + 216), *(a2 + 224));
  }

  else
  {
    v4 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v4;
  }

  *(a1 + 240) = *(a2 + 240);
  sub_100074920((a1 + 248), a2 + 248);
  if (*(a2 + 295) < 0)
  {
    sub_100005F2C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v5 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v5;
  }

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  sub_10004EFD0(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 3));
  return a1;
}

void sub_10016DF78(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 248, *(v1 + 256));
  sub_10016DE74(v1);
  _Unwind_Resume(a1);
}

void sub_10016DFC8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 336) == *(a2 + 336))
  {
    if (*(a1 + 336))
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
      sub_10016E2FC(a1 + 24, (a2 + 24));
      if (*(a1 + 279) < 0)
      {
        operator delete(*(a1 + 256));
      }

      v5 = a2[16];
      *(a1 + 272) = *(a2 + 34);
      *(a1 + 256) = v5;
      *(a2 + 279) = 0;
      *(a2 + 256) = 0;
      sub_10016E3EC(a1 + 280, a2 + 280);

      sub_10016E48C(a1 + 312, a2 + 39);
    }
  }

  else if (*(a1 + 336))
  {

    sub_10016E274(a1);
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v8;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a1 + 96) = 0;
    if (*(a2 + 96) == 1)
    {
      v9 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 104) = v9;
      *(a2 + 14) = 0;
      *(a2 + 15) = 0;
      *(a2 + 13) = 0;
      *(a1 + 96) = 1;
    }

    *(a1 + 128) = 0;
    if (*(a2 + 128) == 1)
    {
      v10 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 136) = v10;
      *(a2 + 18) = 0;
      *(a2 + 19) = 0;
      *(a2 + 17) = 0;
      *(a1 + 128) = 1;
    }

    *(a1 + 160) = 0;
    if (*(a2 + 160) == 1)
    {
      v11 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 168) = v11;
      *(a2 + 22) = 0;
      *(a2 + 23) = 0;
      *(a2 + 21) = 0;
      *(a1 + 160) = 1;
    }

    *(a1 + 192) = *(a2 + 24);
    *(a1 + 200) = 0;
    if (*(a2 + 200) == 1)
    {
      v12 = a2[13];
      *(a1 + 224) = *(a2 + 28);
      *(a1 + 208) = v12;
      *(a2 + 27) = 0;
      *(a2 + 28) = 0;
      *(a2 + 26) = 0;
      *(a1 + 200) = 1;
    }

    v13 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 62);
    *(a1 + 232) = v13;
    v14 = a2[16];
    *(a1 + 272) = *(a2 + 34);
    *(a1 + 256) = v14;
    *(a2 + 33) = 0;
    *(a2 + 34) = 0;
    *(a2 + 32) = 0;
    *(a1 + 280) = 0;
    if (*(a2 + 280) == 1)
    {
      v15 = a2[18];
      *(a1 + 304) = *(a2 + 38);
      *(a1 + 288) = v15;
      *(a2 + 37) = 0;
      *(a2 + 38) = 0;
      *(a2 + 36) = 0;
      *(a1 + 280) = 1;
    }

    *(a1 + 312) = *(a2 + 39);
    v16 = a1 + 320;
    v17 = *(a2 + 40);
    v18 = *(a2 + 41);
    *(a1 + 320) = v17;
    *(a1 + 328) = v18;
    if (v18)
    {
      *(v17 + 16) = v16;
      *(a2 + 39) = a2 + 20;
      *(a2 + 40) = 0;
      *(a2 + 41) = 0;
    }

    else
    {
      *(a1 + 312) = v16;
    }

    *(a1 + 336) = 1;
  }
}

void sub_10016E274(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    sub_1000DD0AC(a1 + 312, *(a1 + 320));
    if (*(a1 + 280) == 1)
    {
      if (*(a1 + 311) < 0)
      {
        operator delete(*(a1 + 288));
      }

      *(a1 + 280) = 0;
    }

    if (*(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    sub_10016E570(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 336) = 0;
  }
}

uint64_t sub_10016E2FC(uint64_t a1, __int128 *a2)
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
  sub_100071A6C(a1 + 48);
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_10016E3EC(a1 + 72, a2 + 72);
  sub_10016E3EC(a1 + 104, a2 + 104);
  sub_10016E3EC(a1 + 136, a2 + 136);
  *(a1 + 168) = *(a2 + 21);
  sub_10016E3EC(a1 + 176, (a2 + 11));
  v6 = a2[13];
  *(a1 + 224) = *(a2 + 56);
  *(a1 + 208) = v6;
  return a1;
}

void sub_10016E3EC(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a1 = 1;
  }
}

void sub_10016E48C(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_1000DD0AC(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t sub_10016E4F8(uint64_t a1)
{
  sub_1000DD0AC(a1 + 312, *(a1 + 320));
  if (*(a1 + 280) == 1)
  {
    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    *(a1 + 280) = 0;
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  sub_10016E570(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10016E570(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    *(a1 + 176) = 0;
  }

  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    *(a1 + 136) = 0;
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 104) = 0;
  }

  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 72) = 0;
  }

  v3 = (a1 + 48);
  sub_1000087B4(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10016E64C(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    sub_1000DD0AC(a1 + 312, *(a1 + 320));
    if (*(a1 + 280) == 1)
    {
      if (*(a1 + 311) < 0)
      {
        operator delete(*(a1 + 288));
      }

      *(a1 + 280) = 0;
    }

    if (*(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    sub_10016E570(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10016E6D0(_BYTE *a1, uint64_t a2)
{
  if (a1[336] == *(a2 + 336))
  {
    if (a1[336])
    {

      sub_10016E72C(a1, a2);
    }
  }

  else if (a1[336])
  {

    sub_10016E274(a1);
  }

  else
  {
    sub_10016E8B8(a1, a2)[336] = 1;
  }
}

uint64_t sub_10016E72C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  if (a1 != a2)
  {
    sub_100008234((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  }

  sub_10016E810(a1 + 96, a2 + 96);
  sub_10016E810(a1 + 128, a2 + 128);
  sub_10016E810(a1 + 160, a2 + 160);
  *(a1 + 192) = *(a2 + 192);
  sub_10016E810(a1 + 200, a2 + 200);
  v4 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v4;
  std::string::operator=((a1 + 256), (a2 + 256));
  sub_10016E810(a1 + 280, a2 + 280);
  if (a1 != a2)
  {
    sub_1001732FC((a1 + 312), *(a2 + 312), (a2 + 320));
  }

  return a1;
}

void sub_10016E810(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v3 = (a1 + 8);
      v4 = (a2 + 8);

      std::string::operator=(v3, v4);
    }

    else
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    *a1 = 1;
  }
}

_BYTE *sub_10016E8B8(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10016EA28(__dst + 24, (a2 + 24));
  if (*(a2 + 279) < 0)
  {
    sub_100005F2C(__dst + 256, *(a2 + 32), *(a2 + 33));
  }

  else
  {
    v5 = a2[16];
    *(__dst + 34) = *(a2 + 34);
    *(__dst + 16) = v5;
  }

  sub_10016E9C0((__dst + 280), a2 + 280);
  sub_1000E0918(__dst + 39, a2 + 312);
  return __dst;
}

void sub_10016E954(_Unwind_Exception *a1)
{
  sub_10016E570(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016E9C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v3 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v3;
    }

    *a1 = 1;
  }

  return a1;
}

char *sub_10016EA28(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_10004EFD0((__dst + 48), *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  sub_10016E9C0((__dst + 72), a2 + 72);
  sub_10016E9C0((__dst + 104), a2 + 104);
  sub_10016E9C0((__dst + 136), a2 + 136);
  *(__dst + 21) = *(a2 + 21);
  sub_10016E9C0((__dst + 176), (a2 + 11));
  v6 = a2[13];
  *(__dst + 56) = *(a2 + 56);
  *(__dst + 13) = v6;
  return __dst;
}

void sub_10016EB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016EBE4(uint64_t result, uint64_t a2)
{
  if (*(result + 344) == *(a2 + 344))
  {
    if (*(result + 344))
    {

      return sub_10016EC40(result, a2);
    }
  }

  else if (*(result + 344))
  {
    result = sub_10016F298(result);
    *(result + 344) = 0;
  }

  else
  {
    result = sub_10016F4C4(result, a2);
    *(result + 344) = 1;
  }

  return result;
}

uint64_t sub_10016EC40(uint64_t a1, uint64_t a2)
{
  sub_10016E810(a1, a2);
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  if (a1 != a2)
  {
    sub_10016ED40((a1 + 80), *(a2 + 80), *(a2 + 88), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  }

  *(a1 + 104) = *(a2 + 104);
  std::string::operator=((a1 + 112), (a2 + 112));
  sub_10016E810(a1 + 136, a2 + 136);
  sub_10016E810(a1 + 168, a2 + 168);
  std::string::operator=((a1 + 200), (a2 + 200));
  if (a1 != a2)
  {
    sub_10016ED40((a1 + 224), *(a2 + 224), *(a2 + 232), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 232) - *(a2 + 224)) >> 3));
  }

  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  sub_10016E810(a1 + 280, a2 + 280);
  sub_10016E810(a1 + 312, a2 + 312);
  return a1;
}

void sub_10016ED40(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10016EE9C(a1);
    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
      {
        v10 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10016EEDC(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 3) >= a4)
  {
    sub_10016F124(&v14, __str, a3, v8);
    sub_10016F1A0(a1, v12);
  }

  else
  {
    sub_10016F124(&v13, __str, (__str + v11), v8);
    a1[1] = sub_10016EF2C(a1, (__str + v11), a3, a1[1]);
  }
}

void sub_10016EE9C(uint64_t a1)
{
  if (*a1)
  {
    sub_10016F1A0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_10016EEDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_10016F23C(a1, a2);
  }

  sub_1000CE3D4();
}

void *sub_10016EF2C(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
      }

      sub_10016E9C0((v4 + 3), v6 + 24);
      sub_10016E9C0((v4 + 7), v6 + 56);
      v6 = (v6 + 88);
      v4 = v12 + 88;
      v12 += 88;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_10016F040(v9);
  return v4;
}

uint64_t sub_10016F040(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10016F08C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_10016F08C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 32) == 1)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
        }

        *(v6 - 32) = 0;
      }

      if (*(v6 - 64) == 1)
      {
        if (*(v6 - 33) < 0)
        {
          operator delete(*(v6 - 7));
        }

        *(v6 - 64) = 0;
      }

      v7 = v6 - 11;
      if (*(v6 - 65) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 11;
    }

    while (v7 != a5);
  }
}

std::string *sub_10016F124(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_10016E810(&this[1], &v5[1]);
    sub_10016E810(&this[2].__r_.__value_.__l.__size_, &v5[2].__r_.__value_.__l.__size_);
    this = (this + 88);
    v5 = (v5 + 88);
  }

  while (v5 != v6);
  return v6;
}

void sub_10016F1A0(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 32) == 1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        *(v4 - 32) = 0;
      }

      if (*(v4 - 64) == 1)
      {
        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        *(v4 - 64) = 0;
      }

      v5 = v4 - 11;
      if (*(v4 - 65) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 11;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_10016F23C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10016F298(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    *(a1 + 312) = 0;
  }

  if (*(a1 + 280) == 1)
  {
    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    *(a1 + 280) = 0;
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v3 = (a1 + 224);
  sub_10016F470(&v3);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 199) < 0)
    {
      operator delete(*(a1 + 176));
    }

    *(a1 + 168) = 0;
  }

  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    *(a1 + 136) = 0;
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 80);
  sub_10016F470(&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10016F3D4(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 24);
  sub_10016F470(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10016F470(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10016F1A0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10016F4C4(uint64_t a1, uint64_t a2)
{
  sub_10016E9C0(a1, a2);
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  sub_10016F578((a1 + 56), (a2 + 56));
  sub_10016F578((a1 + 200), (a2 + 200));
  return a1;
}

void sub_10016F530(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_1017628BC(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016F578(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_10016F6C4((__dst + 24), *(a2 + 3), *(a2 + 4), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  __dst[48] = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C(__dst + 56, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
    *(__dst + 9) = *(a2 + 9);
    *(__dst + 56) = v5;
  }

  sub_10016E9C0((__dst + 80), (a2 + 5));
  sub_10016E9C0((__dst + 112), (a2 + 7));
  return __dst;
}

void sub_10016F654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10016F470(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016F6C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10016EEDC(result, a4);
  }

  return result;
}

void sub_10016F72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10016F470(&a9);
  _Unwind_Resume(a1);
}

void *sub_10016F74C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 12);
  *(__dst + 26) = *(a2 + 26);
  *(__dst + 12) = v5;
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    __dst[6] = *(a2 + 6);
    *(__dst + 2) = v6;
  }

  sub_10016F858(__dst + 56, a2 + 56);
  sub_10016F8C0(__dst + 400, (a2 + 25));
  sub_10006F264((__dst + 94), a2 + 47);
  return __dst;
}

void sub_10016F7F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10016F858(_BYTE *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[336] = 0;
  if (*(a2 + 336) == 1)
  {
    sub_10016E8B8(__dst, a2);
    __dst[336] = 1;
  }

  return __dst;
}

void sub_10016F8A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 336) == 1)
  {
    sub_10016E4F8(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10016F8C0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[344] = 0;
  if (*(a2 + 344) == 1)
  {
    sub_10016F4C4(a1, a2);
    a1[344] = 1;
  }

  return a1;
}

void sub_10016F908(_Unwind_Exception *exception_object)
{
  if (*(v1 + 344) == 1)
  {
    sub_10016F298(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F928(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10016BDCC(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  sub_10016A078(192 * v2, a2);
  v15 = 192 * v2 + 192;
  v7 = a1[1];
  v8 = 192 * v2 + *a1 - v7;
  sub_10016BE24(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10016BF3C(&v13);
  return v12;
}

void sub_10016FA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016BF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016FA58(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_1000068BC(a2, v2 + 4) & 0x80) == 0)
      {
        if ((sub_1000068BC(v2 + 4, a2) & 0x80) == 0)
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

uint64_t sub_10016FAC0(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    sub_1000DD0AC(a1 + 8, *(a1 + 16));
  }

  return a1;
}

void sub_10016FB1C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10016FB64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008E2D0(result, a4);
  }

  return result;
}

void sub_10016FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000087B4(&a9);
  _Unwind_Resume(a1);
}

char *sub_10016FBEC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1000083D4(v9);
  return v4;
}

void *sub_10016FCA8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10008E2D0(result, a2);
  }

  return result;
}

void *sub_10016FD4C(uint64_t a1, void **a2, void ***a3, void ***a4, std::string **a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 == *a2)
  {
LABEL_31:
    v9 = v8;
    return sub_10016FF00(&v26, v8, v9, *a5);
  }

  v11 = *a3;
  if (*a3 != *a4)
  {
    while (1)
    {
      if ((sub_1000068BC(v8 + 4, v11 + 4) & 0x80) != 0)
      {
        std::string::operator=(*a5, (*a1 + 32));
        v20 = *a1;
        v21 = *(*a1 + 8);
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
            v22 = v20[2];
            v16 = *v22 == v20;
            v20 = v22;
          }

          while (!v16);
        }

        *a1 = v22;
        ++*a5;
      }

      else
      {
        if ((sub_1000068BC(*a3 + 4, (*a1 + 32)) & 0x80) != 0)
        {
          v23 = *a3;
          v24 = (*a3)[1];
          if (v24)
          {
            do
            {
              v19 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v19 = v23[2];
              v16 = *v19 == v23;
              v23 = v19;
            }

            while (!v16);
          }
        }

        else
        {
          v13 = *a1;
          v14 = *(*a1 + 8);
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v13[2];
              v16 = *v15 == v13;
              v13 = v15;
            }

            while (!v16);
          }

          *a1 = v15;
          v17 = *a3;
          v18 = (*a3)[1];
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
              v19 = v17[2];
              v16 = *v19 == v17;
              v17 = v19;
            }

            while (!v16);
          }
        }

        *a3 = v19;
      }

      v8 = *a1;
      v9 = *a2;
      if (*a1 == *a2)
      {
        break;
      }

      v11 = *a3;
      if (*a3 == *a4)
      {
        return sub_10016FF00(&v26, v8, v9, *a5);
      }
    }

    goto LABEL_31;
  }

  return sub_10016FF00(&v26, v8, v9, *a5);
}

void *sub_10016FF00(int a1, void *a2, void *a3, std::string *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::string::operator=(this, (v5 + 4));
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

      ++this;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_10016FF8C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_100005348(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1000054E0(v18);
  }
}

__n128 sub_1001700F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == *(a2 + 216))
  {
    if (*(a1 + 216))
    {

      sub_100F11BEC(a1, a2);
    }
  }

  else if (*(a1 + 216))
  {
    *(sub_100E3A5D4(a1) + 216) = 0;
  }

  else
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v7 = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
    *(a1 + 88) = v7;
    v8 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v8;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v9;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v10 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v10;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v11 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v11;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    result = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = result;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a1 + 216) = 1;
  }

  return result;
}

uint64_t sub_100170224(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1001702C8();
  }

  return result;
}

void sub_100170364(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100170380(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100170380(a1, *a2);
    sub_100170380(a1, *(a2 + 1));
    if (a2[119] < 0)
    {
      operator delete(*(a2 + 12));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_100170404(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100170404(a1, *a2);
    sub_100170404(a1, a2[1]);
    sub_100170460((a2 + 4));

    operator delete(a2);
  }
}

void sub_100170460(uint64_t a1)
{
  sub_10016B194(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1001704B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001704B0(a1, *a2);
    sub_1001704B0(a1, a2[1]);
    sub_10017050C((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10017050C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001705A0(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100170654();
  }

  return v2;
}

uint64_t sub_1001706E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100170460(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_10017072C(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  bzero(__dst + 24, 0x250uLL);
  *(__dst + 47) = 3;
  __dst[408] = 0;
  __dst[608] = 0;
  *(__dst + 24) = 0;
  *(__dst + 100) = 0;
  return __dst;
}

uint64_t **sub_1001707A0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_100170928((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1001709A4(&v13);
  }

  if (a2 != a3)
  {
    sub_1001709FC();
  }

  return result;
}

uint64_t sub_100170928(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  return a1;
}

uint64_t sub_1001709A4(uint64_t a1)
{
  sub_1001704B0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1001704B0(*a1, v2);
  }

  return a1;
}

void sub_1001709FC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_100170A84();
}

void sub_100170A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100170AFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100170AFC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10017050C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100170B48(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100DFECD0((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100170BA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100170BC0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100170D08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2CB60;
  a2[1] = v2;
  return result;
}

void sub_100170D34(uint64_t a1, uint64_t a2)
{
  sub_100170F8C(v4, a2);
  v5 = *(a1 + 8);
  v3 = v5;
  sub_100171838(v6, v4);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (v3 + 8));
  operator new();
}

void sub_100170F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001718A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100170F40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100170F8C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    *a1 = *a2;
    v2 = (a2 + 8);
    v3 = *(a2 + 8);
    *(a1 + 8) = v3;
    v4 = a1 + 8;
    v5 = *(a2 + 16);
    *(a1 + 16) = v5;
    if (v5)
    {
      *(v3 + 16) = v4;
      *a2 = v2;
      *v2 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *a1 = v4;
    }

    *(a1 + 24) = *(a2 + 24);
    v6 = (a2 + 32);
    v7 = *(a2 + 32);
    *(a1 + 32) = v7;
    v8 = a1 + 32;
    v9 = *(a2 + 40);
    *(a1 + 40) = v9;
    if (v9)
    {
      *(v7 + 16) = v8;
      *(a2 + 24) = v6;
      *v6 = 0;
      *(a2 + 40) = 0;
    }

    else
    {
      *(a1 + 24) = v8;
    }

    v10 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v10;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    v11 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v11;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = *(a2 + 96);
    v12 = (a2 + 104);
    v13 = *(a2 + 104);
    *(a1 + 104) = v13;
    v14 = a1 + 104;
    v15 = *(a2 + 112);
    *(a1 + 112) = v15;
    if (v15)
    {
      *(v13 + 16) = v14;
      *(a2 + 96) = v12;
      *v12 = 0;
      *(a2 + 112) = 0;
    }

    else
    {
      *(a1 + 96) = v14;
    }

    *(a1 + 120) = *(a2 + 120);
    v16 = (a2 + 128);
    v17 = *(a2 + 128);
    *(a1 + 128) = v17;
    v18 = a1 + 128;
    v19 = *(a2 + 136);
    *(a1 + 136) = v19;
    if (v19)
    {
      *(v17 + 16) = v18;
      *(a2 + 120) = v16;
      *v16 = 0;
      *(a2 + 136) = 0;
    }

    else
    {
      *(a1 + 120) = v18;
    }

    result = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = result;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  return result;
}

uint64_t *sub_1001710D4(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v3 = *(v1 + 176);
  v4 = *(*v1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Loading user data", buf, 2u);
    }

    *buf = 0;
    v32 = 0;
    v33 = 0;
    sub_100074920(buf, v1 + 8);
    sub_100158EF4(buf, 1, &v37);
    v6 = v2 + 792;
    sub_100009970(v2 + 784, *(v2 + 792));
    size = v37.__r_.__value_.__l.__size_;
    *(v2 + 784) = v37.__r_.__value_.__r.__words[0];
    *(v2 + 792) = size;
    v8 = v37.__r_.__value_.__r.__words[2];
    *(v2 + 800) = *(&v37.__r_.__value_.__l + 2);
    if (v8)
    {
      *(size + 16) = v6;
      v37.__r_.__value_.__r.__words[0] = &v37.__r_.__value_.__l.__size_;
      *&v37.__r_.__value_.__r.__words[1] = 0uLL;
      size = 0;
    }

    else
    {
      *(v2 + 784) = v6;
    }

    sub_100009970(&v37, size);
    if (CellularPlanListModelLocal::isPartialActiveSupported_sync(v2))
    {
      CellularPlanListModelLocal::setUsableIccids(v2, v1 + 32, v1 + 8);
    }

    if ((*(v1 + 79) & 0x8000000000000000) != 0)
    {
      if (*(v1 + 64))
      {
        goto LABEL_13;
      }
    }

    else if (*(v1 + 79))
    {
LABEL_13:
      std::string::operator=((v2 + 864), (v1 + 56));
      goto LABEL_20;
    }

    v9 = *(v2 + 772) != 1 || v33 == 0;
    if (!v9)
    {
      std::string::operator=((v2 + 864), (*buf + 32));
    }

LABEL_20:
    (***(v2 + 56))(v34);
    Registry::getTelephonyCapabilities(&v37, *&v34[0]);
    v10 = (*(*v37.__r_.__value_.__l.__data_ + 16))(v37.__r_.__value_.__r.__words[0]);
    if (v37.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v37.__r_.__value_.__l.__size_);
    }

    if (*(&v34[0] + 1))
    {
      sub_100004A34(*(&v34[0] + 1));
    }

    if (v10)
    {
      std::string::operator=((v2 + 832), (v1 + 80));
    }

    v11 = *(v1 + 104);
    if (v11 != (v1 + 112))
    {
      do
      {
        v37.__r_.__value_.__r.__words[0] = (v11 + 4);
        v12 = sub_1001705A0(v2 + 248, v11 + 4);
        std::string::operator=((v12 + 56), (v11 + 7));
        v13 = v11[1];
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
            v14 = v11[2];
            v9 = *v14 == v11;
            v11 = v14;
          }

          while (!v9);
        }

        v11 = v14;
      }

      while (v14 != (v1 + 112));
    }

    v15 = *(v1 + 128);
    if (v15 != (v1 + 136))
    {
      do
      {
        v37.__r_.__value_.__r.__words[0] = (v15 + 4);
        v16 = sub_1001705A0(v2 + 248, v15 + 4);
        std::string::operator=((v16 + 80), (v15 + 11));
        v37.__r_.__value_.__r.__words[0] = (v15 + 4);
        v17 = sub_1001705A0(v2 + 248, v15 + 4);
        std::string::operator=((v17 + 104), (v15 + 14));
        v37.__r_.__value_.__r.__words[0] = (v15 + 4);
        v18 = sub_1001705A0(v2 + 248, v15 + 4);
        std::string::operator=((v18 + 128), (v15 + 17));
        v37.__r_.__value_.__r.__words[0] = (v15 + 4);
        v19 = sub_1001705A0(v2 + 248, v15 + 4);
        std::string::operator=((v19 + 152), (v15 + 20));
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v15[2];
            v9 = *v21 == v15;
            v15 = v21;
          }

          while (!v9);
        }

        v15 = v21;
      }

      while (v21 != (v1 + 136));
    }

    if ((*(v1 + 175) & 0x8000000000000000) != 0)
    {
      if (!*(v1 + 160))
      {
LABEL_45:
        v22 = *(v2 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(v2, v34);
          sub_100074B94(*&v34[0], (v34 + 8), ",", 1, &v37);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v37;
          }

          else
          {
            v23 = v37.__r_.__value_.__r.__words[0];
          }

          *v35 = 136315138;
          v36 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Last known user enabled sims (%s)", v35, 0xCu);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          sub_100009970(v34, *(&v34[0] + 1));
          v22 = *(v2 + 40);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(*(v2 + 944), (v2 + 952), ",", 1, &v37);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v37;
          }

          else
          {
            v24 = v37.__r_.__value_.__r.__words[0];
          }

          LODWORD(v34[0]) = 136315138;
          *(v34 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Last known limited service sims (%s)", v34, 0xCu);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          v22 = *(v2 + 40);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v25 = (v2 + 864);
          if (*(v2 + 887) < 0)
          {
            v25 = *v25;
          }

          LODWORD(v37.__r_.__value_.__l.__data_) = 136315138;
          *(v37.__r_.__value_.__r.__words + 4) = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Last known user data sim (%s)", &v37, 0xCu);
          v22 = *(v2 + 40);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v26 = (v2 + 832);
          if (*(v2 + 855) < 0)
          {
            v26 = *v26;
          }

          LODWORD(v37.__r_.__value_.__l.__data_) = 136315138;
          *(v37.__r_.__value_.__r.__words + 4) = v26;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Last known user voice sim (%s)", &v37, 0xCu);
          v22 = *(v2 + 40);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v27 = (v2 + 808);
          if (*(v2 + 831) < 0)
          {
            v27 = *v27;
          }

          LODWORD(v37.__r_.__value_.__l.__data_) = 136315138;
          *(v37.__r_.__value_.__r.__words + 4) = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Last known disabled physical sim (%s)", &v37, 0xCu);
        }

        sub_100009970(buf, v32);
        goto LABEL_72;
      }
    }

    else if (!*(v1 + 175))
    {
      goto LABEL_45;
    }

    std::string::operator=((v2 + 808), (v1 + 152));
    goto LABEL_45;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I No user data found", buf, 2u);
  }

LABEL_72:
  sub_100171784(&v30);
  return sub_1000049E0(&v29);
}

void sub_1001716FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12)
{
  sub_100009970(&a11, a12);
  sub_100171784(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100171784(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 176) == 1)
    {
      if (*(v1 + 175) < 0)
      {
        operator delete(*(v1 + 152));
      }

      sub_10016A798(v1 + 128, *(v1 + 136));
      sub_1000DD0AC(v1 + 104, *(v1 + 112));
      if (*(v1 + 103) < 0)
      {
        operator delete(*(v1 + 80));
      }

      if (*(v1 + 79) < 0)
      {
        operator delete(*(v1 + 56));
      }

      sub_100009970(v1 + 32, *(v1 + 40));
      sub_100009970(v1 + 8, *(v1 + 16));
    }

    operator delete();
  }

  return result;
}

_BYTE *sub_100171838(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[168] = 0;
  if (*(a2 + 168) == 1)
  {
    sub_10016A310(a1, a2);
    a1[168] = 1;
  }

  return a1;
}

void sub_100171880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 168) == 1)
  {
    sub_1001589C8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001718A0(uint64_t a1)
{
  if (*(a1 + 168) == 1)
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
  }

  return a1;
}