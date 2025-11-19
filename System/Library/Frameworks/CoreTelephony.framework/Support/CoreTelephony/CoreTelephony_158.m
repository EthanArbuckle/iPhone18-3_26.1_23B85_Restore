void sub_10138B674(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Location services status changed to %d", buf, 8u);
  }

  *(v2 + 169) = *(v1 + 8);
  operator delete();
}

uint64_t sub_10138B74C(uint64_t a1)
{
  *a1 = off_101F32C70;
  v3 = (a1 + 16);
  sub_1001E26C4(&v3);
  return a1;
}

void sub_10138B7A4(uint64_t a1)
{
  *a1 = off_101F32C70;
  v1 = (a1 + 16);
  sub_1001E26C4(&v1);
  operator delete();
}

uint64_t sub_10138B8A8(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = off_101F32C70;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return sub_1001E2A18((a2 + 2), a1[2], a1[3], 0xEEEEEEEEEEEEEEEFLL * ((a1[3] - a1[2]) >> 4));
}

void sub_10138B920(void **a1)
{
  v2 = a1 + 2;
  sub_1001E26C4(&v2);
  operator delete(a1);
}

void sub_10138B960(void *a1)
{
  v1 = a1[1];
  if ((*(v1 + 479) & 0x8000000000000000) != 0)
  {
    if (!*(v1 + 464))
    {
      goto LABEL_5;
    }
  }

  else if (!*(v1 + 479))
  {
LABEL_5:
    if ((*(v1 + 527) & 0x8000000000000000) != 0)
    {
      if (*(v1 + 512))
      {
        goto LABEL_7;
      }
    }

    else if (*(v1 + 527))
    {
      goto LABEL_7;
    }

    v14 = *(v1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cannot verify flight events because user's first name not available.", object, 2u);
    }

    return;
  }

LABEL_7:
  v2 = a1[2];
  v3 = a1[3];
  v18 = 0uLL;
  v17 = 0;
  if (v2 != v3)
  {
    do
    {
      v4 = *(v2 + 192);
      v5 = *(v2 + 200);
      if (v4 != v5)
      {
        while (!sub_101380E98(v4, (v1 + 456)) && !sub_101380E98(v4, (v1 + 504)))
        {
          v4 += 24;
          if (v4 == v5)
          {
            v4 = v5;
            break;
          }
        }

        v5 = *(v2 + 200);
      }

      if (v4 != v5)
      {
        v6 = v18;
        if (v18 >= *(&v18 + 1))
        {
          v8 = 0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4) + 1;
          if (v8 > 0x111111111111111)
          {
            sub_1000CE3D4();
          }

          if (0xDDDDDDDDDDDDDDDELL * ((*(&v18 + 1) - v17) >> 4) > v8)
          {
            v8 = 0xDDDDDDDDDDDDDDDELL * ((*(&v18 + 1) - v17) >> 4);
          }

          if (0xEEEEEEEEEEEEEEEFLL * ((*(&v18 + 1) - v17) >> 4) >= 0x88888888888888)
          {
            v9 = 0x111111111111111;
          }

          else
          {
            v9 = v8;
          }

          *&v23 = &v17;
          if (v9)
          {
            sub_1001E25E8(&v17, v9);
          }

          object[0] = 0;
          object[1] = (16 * ((v18 - v17) >> 4));
          v22 = object[1];
          sub_100FF0F78(object[1], v2);
          *&v22 = v22 + 240;
          v10 = (object[1] + v17 - v18);
          sub_1001E2878(&v17, v17, v18, v10);
          v11 = v17;
          v12 = *(&v18 + 1);
          v17 = v10;
          v15 = v22;
          v18 = v22;
          *&v22 = v11;
          *(&v22 + 1) = v12;
          object[0] = v11;
          object[1] = v11;
          sub_1001E29C8(object);
          v7 = v15;
        }

        else
        {
          sub_100FF0F78(v18, v2);
          v7 = v6 + 240;
        }

        *&v18 = v7;
      }

      v2 += 240;
    }

    while (v2 != v3);
    if (v17 != v18)
    {
      memset(v16, 0, sizeof(v16));
      sub_1001E2A18(v16, v17, v18, 0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4));
      v20[0] = off_101F32CE0;
      v20[1] = v1;
      v20[3] = v20;
      v19 = 0uLL;
      object[0] = "TravelHandler";
      sub_1001048A4();
    }
  }

  v13 = *(v1 + 56);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Passenger names in flight events do not match first names.", object, 2u);
  }

  object[0] = &v17;
  sub_1001E26C4(object);
}

void sub_10138C164(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138C37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138C438(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32CE0;
  a2[1] = v2;
  return result;
}

void sub_10138C464(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return;
  }

  v4 = *(a1 + 8);
  v53 = v4 + 256;
  v5 = &_mh_execute_header;
  while (1)
  {
    if ((*(v2 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 80))
      {
        goto LABEL_27;
      }
    }

    else if (!*(v2 + 95))
    {
      goto LABEL_27;
    }

    if ((*(v2 + 143) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 128))
      {
LABEL_27:
        v16 = *(v4 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v17 = v5;
          v18 = v16;
          v19 = "#I Empty country codes.";
LABEL_82:
          _os_log_impl(v17, v18, OS_LOG_TYPE_DEFAULT, v19, &buf, 2u);
          goto LABEL_83;
        }

        goto LABEL_83;
      }
    }

    else if (!*(v2 + 143))
    {
      goto LABEL_27;
    }

    sub_101372478();
    v6 = (v2 + 72);
    if (sub_100007A6C(&qword_101FCA968, (v2 + 120)) != &qword_101FCA970)
    {
      v20 = *(v4 + 56);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(v5, v20, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip notification", &buf, 2u);
      }

      sub_10000501C(&buf, "");
      sub_10000501C(v54, "");
      sub_10000501C(&__p, "deny listed country");
      sub_101372680(v4, v53, v2 + 72, v2 + 120, 0, &buf, v54, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_80;
    }

    memset(&buf, 0, sizeof(buf));
    sub_10136F470(&buf, v4, v2 + 72);
    v54[0] = 0;
    v54[1] = 0;
    *&v55 = 0;
    sub_10136F470(v54, v4, v2 + 120);
    v7 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_37;
    }

    v9 = BYTE7(v55);
    v10 = v54[1];
    if (SBYTE7(v55) < 0)
    {
      v9 = v54[1];
    }

    if (!v9)
    {
LABEL_37:
      v21 = *(v4 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(v5, v21, OS_LOG_TYPE_ERROR, "Failed to retrieve continent codes", &__p, 2u);
      }

      goto LABEL_39;
    }

    if (v9 == size)
    {
      v11 = v5;
      v12 = v54[0];
      if ((SBYTE7(v55) & 0x80u) == 0)
      {
        v13 = v54;
      }

      else
      {
        v13 = v54[0];
      }

      v52 = SBYTE7(v55);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (memcmp(v13, p_buf, size))
      {
        v15 = 1;
        v5 = v11;
        goto LABEL_55;
      }

      v51 = v12;
      if (v52 < 0)
      {
        v5 = v11;
        if (v10 != 1)
        {
          goto LABEL_54;
        }

        v22 = *v51;
      }

      else
      {
        v5 = v11;
        if (v52 != 1)
        {
          goto LABEL_54;
        }

        v22 = v51;
      }

      if (v22 == 50)
      {
        v23 = *(v4 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(v5, v23, OS_LOG_TYPE_DEFAULT, "#I Travel within EU and skip notification", &__p, 2u);
        }

        sub_10000501C(&__p, "");
        sub_10000501C(&v78, "");
        sub_10000501C(&v77, "EU Travel");
        sub_101372680(v4, v53, v2 + 72, v2 + 120, 0, &__p, &v78, &v77);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_39:
        v15 = 0;
        goto LABEL_55;
      }
    }

LABEL_54:
    v15 = 1;
LABEL_55:
    if ((SBYTE7(v55) & 0x80000000) == 0)
    {
      if (v7 < 0)
      {
        break;
      }

      goto LABEL_57;
    }

    operator delete(v54[0]);
    if (v7 < 0)
    {
      break;
    }

LABEL_57:
    if (v15)
    {
      goto LABEL_58;
    }

LABEL_80:
    v34 = *(v4 + 56);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v17 = v5;
      v18 = v34;
      v19 = "#I Failed country validation.";
      goto LABEL_82;
    }

LABEL_83:
    v2 += 240;
    if (v2 == v3)
    {
      return;
    }
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v15 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_58:
  v24 = *(v2 + 95);
  if (v24 >= 0)
  {
    v25 = *(v2 + 95);
  }

  else
  {
    v25 = *(v2 + 80);
  }

  v26 = *(v2 + 143);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v2 + 128);
  }

  if (v25 == v26)
  {
    v28 = (v24 >= 0 ? v2 + 72 : *v6);
    v29 = v27 >= 0 ? (v2 + 120) : *(v2 + 120);
    if (!memcmp(v28, v29, v25))
    {
      v36 = *(v4 + 56);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v17 = v5;
      v18 = v36;
      v19 = "#I Domestic flight.";
      goto LABEL_82;
    }
  }

  v30 = *(v4 + 279);
  if (v30 < 0)
  {
    v31 = *(v4 + 256);
    v30 = *(v4 + 264);
    if (v24 < 0)
    {
LABEL_73:
      v6 = *v6;
    }
  }

  else
  {
    v31 = (v4 + 256);
    if (v24 < 0)
    {
      goto LABEL_73;
    }
  }

  if (v30)
  {
    while (1)
    {
      v32 = *v6;
      v33 = __tolower(*v31);
      if (v33 != __tolower(v32))
      {
        break;
      }

      ++v31;
      v6 = (v6 + 1);
      if (!--v30)
      {
        goto LABEL_91;
      }
    }

    v35 = *(v4 + 56);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v17 = v5;
    v18 = v35;
    v19 = "#I Departure airport is not in home country.";
    goto LABEL_82;
  }

LABEL_91:
  v76 = 0;
  v74 = 0;
  v75 = 0u;
  v70[0] = 0;
  v70[1] = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *v54 = 0u;
  v69 = v70;
  *v71 = 0u;
  v72 = 0u;
  *v73 = 0u;
  sub_101381250(v54, v2);
  memset(&v77, 0, sizeof(v77));
  sub_101373BC0(&v77);
  std::operator+<char>();
  v37 = std::string::append(&v78, "-", 1uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v41 = *(v2 + 96);
  v40 = v2 + 96;
  v39 = v41;
  v42 = *(v40 + 23);
  if (v42 >= 0)
  {
    v43 = v40;
  }

  else
  {
    v43 = v39;
  }

  if (v42 >= 0)
  {
    v44 = *(v40 + 23);
  }

  else
  {
    v44 = *(v40 + 8);
  }

  v45 = std::string::append(&__p, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &buf;
  }

  else
  {
    v47 = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = buf.__r_.__value_.__l.__size_;
  }

  std::string::append(&v77, v47, v48);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v49 = *(v4 + 56);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = &v77;
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v77.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v50;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I result (%s)", &buf, 0xCu);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v77;
  }

  sub_1013810E0(v81, v54);
  sub_101375740(v4, &buf, 0);
  if (v85 < 0)
  {
    operator delete(v84);
  }

  if (v83 < 0)
  {
    operator delete(v82[3]);
  }

  sub_100009970(v82, v82[1]);
  sub_100FF11AC(v81);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1013751D4(v4);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73[1]) < 0)
  {
    operator delete(*(&v72 + 1));
  }

  if (SBYTE7(v72) < 0)
  {
    operator delete(v71[0]);
  }

  sub_100009970(&v69, v70[0]);
  sub_100FF11AC(v54);
}

void sub_10138CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (v74 < 0)
  {
    operator delete(a10);
  }

  if (v73 < 0)
  {
    operator delete(a73);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138CD80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10138CDCC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10138CE50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  sub_10000C320(&v53);
  v3 = sub_10000C030(&v54);
  v4 = asStringBool(*a1);
  strlen(v4);
  v5 = sub_10000C030(v3);
  v6 = sub_10000C030(v5);
  v7 = asString();
  strlen(v7);
  v8 = sub_10000C030(v6);
  v9 = sub_10000C030(v8);
  v10 = asString();
  strlen(v10);
  v11 = sub_10000C030(v9);
  v12 = sub_10000C030(v11);
  v13 = asStringBool(*(a1 + 9));
  strlen(v13);
  v14 = sub_10000C030(v12);
  v15 = sub_10000C030(v14);
  v16 = asString();
  strlen(v16);
  sub_10000C030(v15);
  sub_10000C030(&v54);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (v18 != v17)
  {
    do
    {
      v19 = sub_10000C030(&v54);
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      memset(v71, 0, sizeof(v71));
      v69 = 0u;
      sub_10000C320(&v69);
      v20 = subscriber::asString();
      strlen(v20);
      v21 = sub_10000C030(&v70);
      v22 = sub_10000C030(v21);
      v25 = *(v18 + 8);
      v24 = v18 + 8;
      v23 = v25;
      v26 = *(v24 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v24 + 8);
      }

      if (v27 >= 0)
      {
        v23 = v24;
      }

      if (v26)
      {
        v28 = v23;
      }

      else
      {
        v28 = "<invalid>";
      }

      strlen(v28);
      v29 = sub_10000C030(v22);
      v30 = sub_10000C030(v29);
      v31 = asString();
      strlen(v31);
      v32 = sub_10000C030(v30);
      v33 = sub_10000C030(v32);
      v34 = asStringBool(*(v24 + 28));
      strlen(v34);
      v35 = sub_10000C030(v33);
      v36 = sub_10000C030(v35);
      v37 = asStringBool(*(v24 + 29));
      strlen(v37);
      v38 = sub_10000C030(v36);
      v39 = sub_10000C030(v38);
      v40 = asStringBool(*(v24 + 30));
      strlen(v40);
      v41 = sub_10000C030(v39);
      v42 = sub_10000C030(v41);
      v43 = asStringBool(*(v24 + 31));
      strlen(v43);
      sub_10000C030(v42);
      sub_100061574(&v69, &v51);
      *&v69 = v50;
      *(&v69 + *(v50 - 24)) = v49;
      *&v70 = v48;
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*(&v72 + 1));
      }

      std::locale::~locale(v71);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v44 = sub_10000C030(v19);
      sub_10000C030(v44);
      if (v52 < 0)
      {
        operator delete(v51);
      }

      v18 = v24 + 32;
    }

    while (v18 != v17);
  }

  sub_10000C030(&v54);
  sub_100061574(&v53, a2);
  *&v54 = v45;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_10138D4F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a2 + 2);
  if (v3 - v2 != *(a2 + 3) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_10138CDF4(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 40;
    v4 += 40;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_10138D5C4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10138D750(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_10138D6F4(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  sub_10138D7A8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10052EEA4(&v13);
  return v12;
}

void sub_10138D6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10052EEA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10138D6F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_10138D750(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10138D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_10138D6F4(a4, v6);
      v6 += 40;
      a4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
    LOBYTE(v9) = 1;
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }

    while (v5 != a3);
  }

  return sub_10138D86C(v8);
}

uint64_t sub_10138D86C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10052EE5C(a1);
  }

  return a1;
}

void sub_10138D8A4(uint64_t *a1)
{
  if (*a1)
  {
    sub_10052EF8C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10138D8E4(uint64_t a1, unsigned __int8 a2)
{
  v2 = sub_10138D910(a2);

  return _AudioServicesStartSystemSound(v2);
}

uint64_t sub_10138D910(int a1)
{
  if ((a1 - 35) > 0x16)
  {
    return 0;
  }

  else
  {
    return dword_10195CA20[(a1 - 35)];
  }
}

uint64_t sub_10138D938(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = sub_10138D910(a2);

  return _AudioServicesStopSystemSound(v4, a3);
}

void sub_10138D994(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F32DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10138DA14(CallAudioServiceInterface *a1)
{
  CallAudioServiceInterface::~CallAudioServiceInterface(a1);

  operator delete();
}

uint64_t sub_10138DA4C()
{
  if ((atomic_load_explicit(&qword_101FCA990, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_101FCA990);
    if (v1)
    {
      v2 = capabilities::ct::supportsGemini(v1);
      v3 = 1;
      if (v2)
      {
        v3 = 2;
      }

      qword_101FCA988 = v3;
      __cxa_guard_release(&qword_101FCA990);
    }
  }

  return qword_101FCA988;
}

uint64_t sub_10138DACC(uint64_t a1)
{
  *a1 = off_101F32E60;
  *(a1 + 48) = off_101F32FF0;
  sub_1013B34AC(*(a1 + 1304));
  std::mutex::~mutex((a1 + 1232));
  v2 = *(a1 + 1224);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 1208);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 1192);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  sub_1000DD0AC(a1 + 1136, *(a1 + 1144));
  sub_1001B1588(a1 + 1112, *(a1 + 1120));
  sub_1013B0664(a1 + 1048);
  std::mutex::~mutex((a1 + 984));
  if (*(a1 + 976) == 1 && *(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  sub_1001704B0(a1 + 928, *(a1 + 936));
  sub_1001704B0(a1 + 904, *(a1 + 912));
  sub_1001704B0(a1 + 880, *(a1 + 888));
  sub_1013B0730(a1 + 832);
  v5 = *(a1 + 824);
  *(a1 + 824) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 816);
  *(a1 + 816) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1013B3458(*(a1 + 800));
  sub_1013B08F4(a1 + 744);
  std::mutex::~mutex((a1 + 680));
  v7 = *(a1 + 664);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 648);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100009970(a1 + 616, *(a1 + 624));
  sub_100E27210(*(a1 + 592));
  sub_100009970(a1 + 560, *(a1 + 568));
  sub_100009970(a1 + 536, *(a1 + 544));
  sub_100009970(a1 + 512, *(a1 + 520));
  sub_100009970(a1 + 488, *(a1 + 496));
  sub_100009970(a1 + 464, *(a1 + 472));
  sub_1013B33DC(*(a1 + 448));
  v18 = (a1 + 416);
  sub_100F75FA4(&v18);
  v9 = *(a1 + 392);
  if (v9)
  {
    *(a1 + 400) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 368);
  if (v10)
  {
    *(a1 + 376) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    *(a1 + 352) = v11;
    operator delete(v11);
  }

  if (*(a1 + 336) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1008441A8(a1 + 288, *(a1 + 296));
  sub_1000D6F38(a1 + 240);
  sub_1002B7314(a1 + 216, *(a1 + 224));
  sub_1000DD0AC(a1 + 184, *(a1 + 192));
  v18 = (a1 + 160);
  sub_100112048(&v18);
  v18 = (a1 + 136);
  sub_1000B2AF8(&v18);
  v12 = *(a1 + 128);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    dispatch_release(v16);
  }

  PersonalityShop::~PersonalityShop(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10138DDD8(uint64_t a1)
{
  sub_10138DACC(a1);

  operator delete();
}

void sub_10138DE10(uint64_t a1)
{
  sub_10138DACC(a1 - 48);

  operator delete();
}

void sub_10138E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

void sub_10138E770(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    dispatch_barrier_async_f(v2[3], v2, sub_1013B3598);
    __cxa_rethrow();
  }

  JUMPOUT(0x10138EB38);
}

void sub_10138E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, char **a10, char **a11)
{
  sub_1013B34AC(*(v11 + 1304));
  std::mutex::~mutex((v11 + 1232));
  v18 = *(v11 + 1224);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(v11 + 1208);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(v11 + 1192);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(v11 + 1183) < 0)
  {
    operator delete(*v16);
  }

  sub_1000DD0AC(v11 + 1136, *(v11 + 1144));
  sub_1001B1588(v11 + 1112, *(v11 + 1120));
  sub_1013B0664(v11 + 1048);
  std::mutex::~mutex((v11 + 984));
  if (*(v11 + 976) == 1 && *(v11 + 975) < 0)
  {
    operator delete(*(v11 + 952));
  }

  v21 = (v11 + 816);
  sub_1001704B0(v11 + 928, *(v11 + 936));
  sub_1001704B0(v11 + 904, *(v11 + 912));
  sub_1001704B0(v11 + 880, *(v11 + 888));
  sub_1013B0730(v11 + 832);
  v22 = *(v11 + 824);
  *(v11 + 824) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_1013B3458(*(v11 + 800));
  sub_1013B08F4(v11 + 744);
  std::mutex::~mutex((v11 + 680));
  v24 = *(v11 + 664);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v11 + 648);
  if (v25)
  {
    sub_100004A34(v25);
  }

  sub_100009970(v11 + 616, *v14);
  sub_100E27210(*v13);
  sub_100009970(v11 + 560, *v12);
  sub_100009970(v11 + 536, *a9);
  sub_100009970(v11 + 512, *v15);
  sub_100009970(v11 + 488, *a10);
  sub_100009970(v11 + 464, *v17);
  sub_1013B33DC(*a11);
  JUMPOUT(0x10138EA20);
}

void sub_10138E940(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, dispatch_object_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a19)
  {
    dispatch_release(a19);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10138EAF0);
}

void sub_10138E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544((v11 + 8));
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x10138EB20);
}

void sub_10138EB40(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10138EB38);
}

void sub_10138EB50(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "";
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinit", buf, 0x16u);
  }

  v3 = a1[3];
  v9 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1;
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v6 + 48;
      if (!v6)
      {
        v8 = 0;
      }

      *v10 = v8;
      v11 = v7;
      sub_1011A2764((v5 + 8), &v9);
    }
  }

  sub_100013CC4();
}

void sub_101391214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_101393148(&a70);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a55);
  if (a67)
  {
    sub_100004A34(a67);
  }

  if (a59)
  {
    sub_100004A34(a59);
  }

  sub_100010250(&a44);
  sub_100010250(&a52);
  _Unwind_Resume(a1);
}

void sub_101391968(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101391A34(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101391BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a26);
  sub_10001021C(&a19);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10139256C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

void sub_1013925E8(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a1 = 0;
  a1[1] = 0;
  if (*a4 == 3)
  {
    sub_101391C0C();
  }

  operator new();
}

BOOL sub_101392780(uint64_t a1)
{
  if (sub_100071DF8((*a1 + 24), &kEmergencyPersonalityId))
  {
    return 1;
  }

  v3 = (*a1 + 24);

  return sub_100071DF8(v3, &kEmergency2PersonalityId);
}

uint64_t sub_1013927E8(capabilities::ct *a1, void **a2)
{
  v3 = capabilities::ct::supportsCellRadio(a1);
  if (v3)
  {
    v4 = **a2;
    v5 = (*a2)[1];
    if (v4 != v5)
    {
      while (*(*v4 + 49) || *(*v4 + 52) != 1)
      {
        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_13;
        }
      }
    }

    if (v4 == v5)
    {
      goto LABEL_13;
    }

    v6 = *v4;
    v7 = v4[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v6)
    {
LABEL_13:
      sub_101391C0C();
    }

    if (capabilities::ct::supportsGemini(v3))
    {
      v9 = **a2;
      v10 = (*a2)[1];
      if (v9 != v10)
      {
        while (*(*v9 + 49) || *(*v9 + 52) != 2)
        {
          v9 += 2;
          if (v9 == v10)
          {
            goto LABEL_29;
          }
        }
      }

      if (v9 == v10)
      {
        goto LABEL_29;
      }

      v11 = *v9;
      v12 = v9[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v11)
      {
LABEL_29:
        sub_101391C0C();
      }

      if (v12)
      {
        sub_100004A34(v12);
      }
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  return 0;
}

void sub_101392D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_101393148(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void *sub_101392E50(void *result, void *a2, void *a3, int a4)
{
  if (a2 != a3)
  {
    while (*(*a2 + 49) || *(*a2 + 52) != a4)
    {
      a2 += 2;
      if (a2 == a3)
      {
        goto LABEL_10;
      }
    }
  }

  if (a2 == a3)
  {
LABEL_10:
    *result = 0;
    result[1] = 0;
  }

  else
  {
    v4 = a2[1];
    *result = *a2;
    result[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_101392EAC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10009A550(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_101392F88(uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      sub_1013B0A18(v10);
    }

    v19 = 0;
    v20 = 48 * v7;
    v22 = 0;
    sub_1013B09B4((48 * v7), a2);
    v6 = 48 * v7 + 48;
    v21 = v6;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 - v12;
    v14 = v20 + v13;
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = *a1;
      v17 = (v20 + v13);
      do
      {
        sub_1013B0A70(v17, v16);
        v16 += 3;
        v17 += 6;
        v15 -= 48;
      }

      while (v16 != v12);
      do
      {
        sub_1013B08A0(v11);
        v11 += 48;
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    a1[1] = v6;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = sub_1013B0AE0(&v19);
  }

  else
  {
    result = sub_1013B09B4(a1[1], a2);
    v6 = v4 + 48;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_101393104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1013B0AE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101393148(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_101393188(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, int a5)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  sub_10000C320(&v32);
  if (a2[2])
  {
    v31 = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v27 = a3;
    if (Mutable)
    {
      v11 = v31;
      v31 = Mutable;
      *buf = v11;
      sub_1000279DC(buf);
    }

    v14 = *a2;
    v13 = a2 + 1;
    v12 = v14;
    if (v14 != v13)
    {
      v15 = 0;
      while (1)
      {
        v16 = v31;
        if (*(v12 + 55) < 0)
        {
          sub_100005F2C(__p, v12[4], v12[5]);
        }

        else
        {
          *__p = *(v12 + 2);
          v29 = v12[6];
        }

        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v50 = v29;
        }

        v48 = 0;
        if (SHIBYTE(v50) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v50;
        }

        v51 = 0;
        if (ctu::cf::convert_copy())
        {
          v17 = v48;
          v48 = v51;
          v52 = v17;
          sub_100005978(&v52);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v48;
        v48 = 0;
        sub_100005978(&v48);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(__dst);
        }

        CFArrayAppendValue(v16, value);
        sub_100005978(&value);
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p[0]);
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_26:
        sub_10000C030(&v33);
        v18 = v12[1];
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
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        ++v15;
        v12 = v19;
        if (v19 == v13)
        {
          goto LABEL_32;
        }
      }

      if (!v15)
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_10000C030(&v33);
      goto LABEL_26;
    }

LABEL_32:
    if (a5)
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }

    sub_10071C318(*(a1 + 104), v27, v31, 0, v21, 0, 0);
    sub_1000279DC(&v31);
  }

  else
  {
    if (a5)
    {
      v22 = 0;
    }

    else
    {
      v22 = 2;
    }

    sub_10071C340(*(a1 + 104), a3, 0, v22);
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v32, &__dst);
    v24 = v50 >= 0 ? &__dst : __dst;
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v54 = a4;
    v55 = 2080;
    v56 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s updated with: [%s]", buf, 0x2Au);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__dst);
    }
  }

  *&v33 = v25;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

const void **sub_1013936EC(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, int a5)
{
  v38 = 0;
  v8 = *(a1 + 104);
  if (a5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  sub_10071C330(v8, a3, 0, v9, &v37);
  *buf = v37;
  if (v37)
  {
    CFRetain(v37);
  }

  __p = 0;
  *&v21 = 0;
  sub_10006DD00(&v21, buf);
  if (v21)
  {
    sub_1002F5980(&__p, &v21);
  }

  sub_100010250(&v21);
  v38 = __p;
  __p = 0;
  sub_100010250(&__p);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v37);
  if (v38)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    v21 = 0u;
    sub_10000C320(&v21);
    Count = CFArrayGetCount(v38);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        __p = 0;
        v19 = 0;
        v20 = 0;
        CFArrayGetValueAtIndex(v38, i);
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v12 = *buf;
        v17 = *&buf[16];
        HIBYTE(v17) = buf[19];
        if (buf[23] < 0)
        {
          sub_100005F2C(&__p, *buf, *&buf[8]);
          operator delete(v12);
        }

        else
        {
          __p = *buf;
          v19 = *&buf[8];
          LODWORD(v20) = v17;
          *(&v20 + 3) = *&buf[19];
          HIBYTE(v20) = buf[23];
        }

        sub_1013B6F4C(a2, &__p);
        if (i)
        {
          sub_10000C030(&v22);
        }

        sub_10000C030(&v22);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(&v21, &__p);
      v14 = v20 >= 0 ? &__p : __p;
      *buf = 136316162;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      v40 = Count;
      v41 = 2080;
      v42 = a4;
      v43 = 2080;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRecovered %zu %s: [%s]", buf, 0x34u);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }

    *&v22 = v15;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    std::locale::~locale(v23);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return sub_100010250(&v38);
}

void sub_101393B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10068C9D8(va);
  sub_100010250((v5 - 168));
  _Unwind_Resume(a1);
}

void sub_101393DCC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 680));
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

void sub_101393E20(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#D %s%sprocessSimStateChanged", &buf, 0x16u);
  }

  v142 = sub_101395874(v3);
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v6 = *a2;
  v5 = a2[1];
  buf.__r_.__value_.__r.__words[0] = &v153;
  if (v5 != v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
    buf.__r_.__value_.__l.__size_ = 0;
    if (v7 < 0x555555555555556)
    {
      sub_1013B0A18(v7);
    }

    sub_1000CE3D4();
  }

  v8 = 0;
  v9 = v5 != v6;
  v143 = v3 + 568;
  v151 = v3;
  while (v8 < sub_10138DA4C())
  {
    v11 = subscriber::instanceAsSimSlot(v8, v10);
    v12 = v11;
    v14 = *(v3 + 136);
    v13 = *(v3 + 144);
    if (v14 != v13)
    {
      while (*v14 != v11)
      {
        v14 += 168;
        if (v14 == v13)
        {
          v14 = *(v3 + 144);
          goto LABEL_15;
        }
      }
    }

    if (v14 == v13)
    {
LABEL_15:
      v152 = 0;
      memset(&__dst, 0, sizeof(__dst));
    }

    else
    {
      v152 = *(v14 + 8);
      memset(&__dst, 0, sizeof(__dst));
      if (*(v14 + 95) < 0)
      {
        sub_100005F2C(&__dst, *(v14 + 72), *(v14 + 80));
        v13 = *(v3 + 144);
      }

      else
      {
        __dst = *(v14 + 72);
      }
    }

    if (v14 == v13)
    {
      v19 = 0;
    }

    else
    {
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == v15)
      {
        v19 = 0;
      }

      else
      {
        v17 = v16 + 4;
        do
        {
          v18 = *(v17 - 4);
          v19 = v18 == 2;
          v20 = v18 == 2 || v17 == v15;
          v17 += 4;
        }

        while (!v20);
      }

      if (*(v14 + 64))
      {
        isEsimCapable = subscriber::isEsimCapable();
        v13 = *(v3 + 144);
        v149 = 256;
        v150 = isEsimCapable;
        goto LABEL_31;
      }
    }

    v149 = 0;
    v150 = 0;
LABEL_31:
    if (v14 == v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v14 + 12);
    }

    if (sub_101395904(v3, &__dst.__r_.__value_.__l.__data_) || v143 != sub_100007A6C(v3 + 560, &__dst.__r_.__value_.__l.__data_))
    {
      v23 = *(v3 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = subscriber::asString();
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v20 = size == 0;
        v27 = "<invalid>";
        if (!v20)
        {
          v27 = p_dst;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v164 = v24;
        v165 = 2080;
        v166 = v27;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: abandoned or limitedUse SIM %s in slot - suppressed", &buf, 0x2Au);
      }

      memset(&buf, 0, sizeof(buf));
      std::string::operator=(&__dst, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v152 = 1;
      v22 = 3;
    }

    if (v12 != 1 || !sub_101395968(v3) || subscriber::isSimPresent())
    {
      v28 = *(*(v3 + 392) + 4 * v8);
      v29 = *(*(v3 + 368) + 4 * v8);
      v30 = *(v3 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        log = v30;
        v147 = v9;
        v145 = subscriber::asString();
        v31 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = __dst.__r_.__value_.__l.__size_;
        }

        v32 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = __dst.__r_.__value_.__r.__words[0];
        }

        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = "<invalid>";
        }

        v34 = subscriber::asString();
        if (v29 == v152)
        {
          v144 = ":";
          v35 = "simstate unchanged";
        }

        else
        {
          v35 = subscriber::asString();
          v144 = "->";
        }

        v36 = subscriber::asString();
        if (v28 == v22)
        {
          v37 = ":";
          v38 = "unchanged";
        }

        else
        {
          v38 = subscriber::asString();
          v37 = "->";
        }

        v39 = subscriber::asString();
        LODWORD(buf.__r_.__value_.__l.__data_) = 136317698;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v164 = v145;
        v165 = 2080;
        v166 = v33;
        v167 = 2080;
        v168 = v34;
        v169 = 2080;
        v170 = v35;
        v171 = 2080;
        v172 = v144;
        v173 = 2080;
        v174 = v36;
        v175 = 2080;
        v176 = v38;
        v177 = 2080;
        v178 = v37;
        v179 = 2080;
        v180 = v39;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%s--> slot %s update: iccid:'%s' (%s) %s%s%s; tray %s%s%s", &buf, 0x70u);
        v9 = v147;
      }

      v3 = v151;
      v148 = v150 | v149 | v148 & 0xFFFFFFFFFFFF0000;
      v9 |= sub_1013959C0(v151, v12, &__dst, v152, v22, v19, v150 | v149);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    ++v8;
  }

  v40 = sub_101395874(v3);
  v41 = v40;
  v42 = *(v3 + 656);
  v43 = *(v42 + 24);
  if (v43 != v40)
  {
    *(v42 + 24) = v40;
    v44 = *(v3 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = asStringBool(v41);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v164 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sSettled state changed to %s", &buf, 0x20u);
    }
  }

  if (v142)
  {
    v161 = 0;
    v162 = 0;
    v160 = &v161;
    v46 = *(v3 + 512);
    if (v46 != (v3 + 520))
    {
      do
      {
        if (isReal())
        {
          if (v3 + 544 == sub_100007A6C(v151 + 536, v46 + 4))
          {
            (*(**(v151 + 120) + 16))(*(v151 + 120), v46 + 4, @"no_src", kCFBooleanTrue, @"info", 0, 0, 0);
            if (*(v46 + 55) < 0)
            {
              sub_100005F2C(__p, v46[4], v46[5]);
            }

            else
            {
              *__p = *(v46 + 2);
              v157 = v46[6];
            }

            v158 = 7;
            sub_101391C0C();
          }

          v47 = *(v151 + 40);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(v46 + 55);
            v49 = (v48 & 0x80u) != 0;
            if ((v48 & 0x80u) != 0)
            {
              v48 = v46[5];
            }

            if (v49)
            {
              v50 = v46[4];
            }

            else
            {
              v50 = (v46 + 4);
            }

            v20 = v48 == 0;
            v51 = "<invalid>";
            if (!v20)
            {
              v51 = v50;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v164 = v51;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%ssim %s hidden, keep", &buf, 0x20u);
          }
        }

        sub_1013B731C(&v160, v46 + 4);
        v52 = v46[1];
        if (v52)
        {
          do
          {
            v53 = v52;
            v52 = *v52;
          }

          while (v52);
        }

        else
        {
          do
          {
            v53 = v46[2];
            v20 = *v53 == v46;
            v46 = v53;
          }

          while (!v20);
        }

        v46 = v53;
      }

      while (v53 != (v3 + 520));
      v54 = v160;
      v3 = v151;
      if (v160 != &v161)
      {
        do
        {
          sub_1000727F0((v151 + 512), v54 + 4);
          v55 = *(v54 + 1);
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = *(v54 + 2);
              v20 = *v56 == v54;
              v54 = v56;
            }

            while (!v20);
          }

          v54 = v56;
        }

        while (v56 != &v161);
      }
    }

    sub_100009970(&v160, v161);
  }

  v57 = sub_1013927E8(v3, (v3 + 656)) | v9;
  if (v43 != v41 || (v57 & 1) != 0)
  {
    sub_101398148(v3, "processSimStateChanged", v57 & 1);
  }

  sub_101399254(v3);
  v59 = v153;
  if (v154 != v153)
  {
    v60 = 0;
    v61 = 0;
    do
    {
      sub_101399700(v3, v59 + v60);
      ++v61;
      v59 = v153;
      v60 += 48;
    }

    while (v61 < 0xAAAAAAAAAAAAAAABLL * ((v154 - v153) >> 4));
  }

  if (v142)
  {
    if (capabilities::ct::supportsGemini(v58))
    {
      v62 = *(v3 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "#D %s%sanalyzeRemovedSims", &buf, 0x16u);
      }

      memset(&__dst, 0, sizeof(__dst));
      sub_10139D0E0(&__dst.__r_.__value_.__l.__data_, v3);
      v63 = *(v3 + 40);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%s======== present", &buf, 0x16u);
      }

      v64 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
      {
        do
        {
          v65 = sub_100007A6C(v151 + 880, (v64 + 32));
          v66 = *(v151 + 40);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = *(v64 + 55);
            v68 = (v67 & 0x80u) != 0;
            if ((v67 & 0x80u) != 0)
            {
              v67 = *(v64 + 40);
            }

            if (v68)
            {
              v69 = *(v64 + 32);
            }

            else
            {
              v69 = (v64 + 32);
            }

            if (v67)
            {
              v70 = v69;
            }

            else
            {
              v70 = "<invalid>";
            }

            if (v151 + 888 == v65)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v164 = v70;
              v165 = 2080;
              v166 = "";
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
            }

            else
            {
              asString();
              if (v157 >= 0)
              {
                v71 = __p;
              }

              else
              {
                v71 = __p[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v164 = v70;
              v165 = 2080;
              v166 = v71;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              if (SHIBYTE(v157) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          v72 = *(v64 + 8);
          if (v72)
          {
            do
            {
              v73 = v72;
              v72 = v72->__r_.__value_.__r.__words[0];
            }

            while (v72);
          }

          else
          {
            do
            {
              v73 = *(v64 + 16);
              v20 = v73->__r_.__value_.__r.__words[0] == v64;
              v64 = v73;
            }

            while (!v20);
          }

          v64 = v73;
        }

        while (v73 != &__dst.__r_.__value_.__r.__words[1]);
      }

      v3 = v151;
      v74 = *(v151 + 512);
      v75 = (v151 + 520);
      if (v74 != (v151 + 520))
      {
        do
        {
          sub_1013B731C(v151 + 464, v74 + 4);
          v76 = v74[1];
          if (v76)
          {
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v77 = v74[2];
              v20 = *v77 == v74;
              v74 = v77;
            }

            while (!v20);
          }

          v74 = v77;
        }

        while (v77 != v75);
      }

      sub_100009970(v151 + 512, *(v151 + 520));
      *(v151 + 512) = v75;
      *v75 = 0u;
      v78 = (v151 + 464);
      if (*(v151 + 480))
      {
        __p[1] = 0;
        v157 = 0;
        __p[0] = &__p[1];
        v79 = *(v151 + 464);
        v80 = (v151 + 472);
        if (v79 != (v151 + 472))
        {
          do
          {
            if (&__dst.__r_.__value_.__r.__words[1] == sub_100007A6C(&__dst, v79 + 4))
            {
              v88 = sub_100007A6C(v151 + 880, v79 + 4);
              if (v151 + 888 == v88)
              {
                v96 = *(v151 + 40);
                if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_191;
                }

                v97 = *(v79 + 55);
                v98 = v97 < 0;
                if (v97 < 0)
                {
                  v97 = v79[5];
                }

                if (v98)
                {
                  v99 = v79[4];
                }

                else
                {
                  v99 = (v79 + 4);
                }

                v20 = v97 == 0;
                v100 = "<invalid>";
                if (!v20)
                {
                  v100 = v99;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v100;
                v86 = v96;
                v87 = "#I %s%sanalyzeRemovedSims. label for '%s' not found - skipping";
                goto LABEL_158;
              }

              if (sub_10139D330(v151, v88 + 56))
              {
                v89 = *(v151 + 40);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                {
                  v90 = *(v79 + 55);
                  v91 = v90 < 0;
                  if (v90 < 0)
                  {
                    v90 = v79[5];
                  }

                  if (v91)
                  {
                    v92 = v79[4];
                  }

                  else
                  {
                    v92 = (v79 + 4);
                  }

                  v20 = v90 == 0;
                  v93 = "<invalid>";
                  if (!v20)
                  {
                    v93 = v92;
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v164 = v93;
                  v94 = v89;
                  v95 = "#D %s%s%s has super label - ignored";
LABEL_189:
                  _os_log_debug_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, v95, &buf, 0x20u);
                }
              }

              else
              {
                if (!sub_101395904(v151, v79 + 4))
                {
                  sub_1013B731C(__p, v79 + 4);
                  goto LABEL_191;
                }

                v101 = *(v151 + 40);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                {
                  v102 = *(v79 + 55);
                  v103 = v102 < 0;
                  if (v102 < 0)
                  {
                    v102 = v79[5];
                  }

                  if (v103)
                  {
                    v104 = v79[4];
                  }

                  else
                  {
                    v104 = (v79 + 4);
                  }

                  v20 = v102 == 0;
                  v105 = "<invalid>";
                  if (!v20)
                  {
                    v105 = v104;
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v164 = v105;
                  v94 = v101;
                  v95 = "#D %s%s%s is abandoned - ignored";
                  goto LABEL_189;
                }
              }
            }

            else
            {
              v81 = *(v151 + 40);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = *(v79 + 55);
                v83 = v82 < 0;
                if (v82 < 0)
                {
                  v82 = v79[5];
                }

                if (v83)
                {
                  v84 = v79[4];
                }

                else
                {
                  v84 = (v79 + 4);
                }

                v20 = v82 == 0;
                v85 = "<invalid>";
                if (!v20)
                {
                  v85 = v84;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v85;
                v86 = v81;
                v87 = "#I %s%sanalyzeRemovedSims. SIM '%s' found within present - skipping";
LABEL_158:
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, v87, &buf, 0x20u);
              }
            }

LABEL_191:
            v106 = v79[1];
            if (v106)
            {
              do
              {
                v107 = v106;
                v106 = *v106;
              }

              while (v106);
            }

            else
            {
              do
              {
                v107 = v79[2];
                v20 = *v107 == v79;
                v79 = v107;
              }

              while (!v20);
            }

            v79 = v107;
          }

          while (v107 != v80);
        }

        v108 = *(v151 + 40);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v109 = *(v151 + 480);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v164 = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I %s%s======== removed raw %zu", &buf, 0x20u);
        }

        v110 = *v78;
        if (*v78 != v80)
        {
          do
          {
            v111 = sub_100007A6C(v151 + 880, v110 + 4);
            v112 = *(v151 + 40);
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              v113 = *(v110 + 55);
              v114 = (v113 & 0x80u) != 0;
              if ((v113 & 0x80u) != 0)
              {
                v113 = v110[5];
              }

              if (v114)
              {
                v115 = v110[4];
              }

              else
              {
                v115 = (v110 + 4);
              }

              if (v113)
              {
                v116 = v115;
              }

              else
              {
                v116 = "<invalid>";
              }

              if (v151 + 888 == v111)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v116;
                v165 = 2080;
                v166 = "";
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              }

              else
              {
                asString();
                v117 = &v160;
                if (v162 < 0)
                {
                  v117 = v160;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v116;
                v165 = 2080;
                v166 = v117;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
                if (SHIBYTE(v162) < 0)
                {
                  operator delete(v160);
                }
              }
            }

            v118 = v110[1];
            if (v118)
            {
              do
              {
                v119 = v118;
                v118 = *v118;
              }

              while (v118);
            }

            else
            {
              do
              {
                v119 = v110[2];
                v20 = *v119 == v110;
                v110 = v119;
              }

              while (!v20);
            }

            v110 = v119;
          }

          while (v119 != v80);
        }

        v120 = *(v151 + 40);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v164 = v157;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#I %s%s======== removed %zu", &buf, 0x20u);
        }

        v121 = __p[0];
        if (__p[0] != &__p[1])
        {
          do
          {
            v122 = sub_100007A6C(v151 + 880, v121 + 4);
            v123 = *(v151 + 40);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v124 = *(v121 + 55);
              v125 = v124 < 0;
              if (v124 < 0)
              {
                v124 = v121[5];
              }

              if (v125)
              {
                v126 = v121[4];
              }

              else
              {
                v126 = (v121 + 4);
              }

              if (v124)
              {
                v127 = v126;
              }

              else
              {
                v127 = "<invalid>";
              }

              if (v151 + 888 == v122)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v127;
                v165 = 2080;
                v166 = "";
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              }

              else
              {
                asString();
                v128 = &v160;
                if (v162 < 0)
                {
                  v128 = v160;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v164 = v127;
                v165 = 2080;
                v166 = v128;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
                if (SHIBYTE(v162) < 0)
                {
                  operator delete(v160);
                }
              }
            }

            v129 = v121[1];
            if (v129)
            {
              do
              {
                v130 = v129;
                v129 = *v129;
              }

              while (v129);
            }

            else
            {
              do
              {
                v130 = v121[2];
                v20 = *v130 == v121;
                v121 = v130;
              }

              while (!v20);
            }

            v121 = v130;
          }

          while (v130 != &__p[1]);
        }

        if (v78 != __p)
        {
          v131 = __p[0];
          if (*(v151 + 480))
          {
            v132 = *v78;
            *v78 = v80;
            *(*v80 + 16) = 0;
            *v80 = 0;
            *(v151 + 480) = 0;
            if (v132[1])
            {
              v133 = v132[1];
            }

            else
            {
              v133 = v132;
            }

            buf.__r_.__value_.__r.__words[0] = v151 + 464;
            buf.__r_.__value_.__l.__size_ = v133;
            buf.__r_.__value_.__r.__words[2] = v133;
            if (!v133 || (buf.__r_.__value_.__l.__size_ = sub_1000685CC(v133), v131 == &__p[1]))
            {
              v137 = v131;
            }

            else
            {
              do
              {
                std::string::operator=((v133 + 32), (v131 + 4));
                v134 = buf.__r_.__value_.__r.__words[2];
                v160 = 0;
                v135 = sub_1001355F4(v78, &v160, (buf.__r_.__value_.__r.__words[2] + 32));
                sub_1000070DC(v78, v160, v135, v134);
                v133 = buf.__r_.__value_.__l.__size_;
                buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
                if (buf.__r_.__value_.__l.__size_)
                {
                  buf.__r_.__value_.__l.__size_ = sub_1000685CC(buf.__r_.__value_.__l.__size_);
                }

                v136 = v131[1];
                if (v136)
                {
                  do
                  {
                    v137 = v136;
                    v136 = *v136;
                  }

                  while (v136);
                }

                else
                {
                  do
                  {
                    v137 = v131[2];
                    v20 = *v137 == v131;
                    v131 = v137;
                  }

                  while (!v20);
                }

                if (!v133)
                {
                  break;
                }

                v131 = v137;
              }

              while (v137 != &__p[1]);
            }

            sub_100173240(&buf);
            v131 = v137;
          }

          if (v131 != &__p[1])
          {
            memset(&buf, 0, sizeof(buf));
            sub_1013B73A8();
          }
        }

        sub_100009970(__p, __p[1]);
        v3 = v151;
      }

      if (__dst.__r_.__value_.__r.__words[2] >= 2)
      {
        if (*(v3 + 480))
        {
          v138 = *(v3 + 40);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = "";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "#I %s%sMore then 1 present SIM -> flush list of removed SIMs, cancel alert", &buf, 0x16u);
          }

          sub_100009970(v78, *(v3 + 472));
          *(v3 + 472) = 0;
          *(v3 + 480) = 0;
          *(v3 + 464) = v3 + 472;
        }

        (*(**(v3 + 1200) + 48))(*(v3 + 1200));
      }

      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      (*(**(v3 + 1200) + 56))(&buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        v139 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
        {
          do
          {
            if (sub_100071DF8((buf.__r_.__value_.__r.__words[0] + 152), &v139[1].__words[1]))
            {
              (*(**(v3 + 1200) + 48))(*(v3 + 1200));
            }

            v140 = v139->__words[1];
            if (v140)
            {
              do
              {
                v141 = v140;
                v140 = v140->__r_.__value_.__r.__words[0];
              }

              while (v140);
            }

            else
            {
              do
              {
                v141 = v139->__words[2];
                v20 = v141->__r_.__value_.__r.__words[0] == v139;
                v139 = v141;
              }

              while (!v20);
            }

            v139 = v141;
          }

          while (v141 != &__dst.__r_.__value_.__r.__words[1]);
        }
      }

      sub_10139D3B8(v3);
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }

      sub_100009970(&__dst, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      sub_100009970(v3 + 512, *(v3 + 520));
      *(v3 + 512) = v3 + 520;
      *(v3 + 520) = 0u;
    }

    sub_100009970(v3 + 488, *(v3 + 496));
    *(v3 + 496) = 0;
    *(v3 + 504) = 0;
    *(v3 + 488) = v3 + 496;
  }

  buf.__r_.__value_.__r.__words[0] = &v153;
  sub_1013B1D50(&buf);
}

void sub_1013956E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, char *a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100009970(&a40, a41);
  __p = &a28;
  sub_1013B1D50(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_101395874(capabilities::ct *a1)
{
  v1 = a1;
  v2 = *(a1 + 17);
  v3 = *(a1 + 18);
  while (v2 != v3)
  {
    if (*v2)
    {
      a1 = sub_101399DB8(v1, *v2, v2[2]);
      if (a1)
      {
        v4 = v2[3] == 0;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    else if (!v2[3])
    {
      return 0;
    }

    v2 += 42;
  }

  return !capabilities::ct::supportsCellRadio(a1) || *(v1 + 136) != *(v1 + 144);
}

BOOL sub_101395904(os_unfair_lock_s *a1, void **a2)
{
  os_unfair_lock_lock(a1 + 152);
  v4 = &a1[156] != sub_100007A6C(&a1[154], a2);
  os_unfair_lock_unlock(a1 + 152);
  return v4;
}

BOOL sub_101395968(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 448;
  do
  {
    if (*(v1 + 32) >= 1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < 1));
  }

  while (v1);
  return v2 != a1 + 448 && *(v2 + 32) <= 1 && *(v2 + 65) == 2;
}

uint64_t sub_1013959C0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, __int16 a7)
{
  v12 = *(a1 + 656);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (v13 != v14)
  {
    while (*(*v13 + 49) || *(*v13 + 52) != a2)
    {
      v13 += 2;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_12:
    v16 = 0;
LABEL_13:
    __dst[0] = 0;
    __dst[1] = 0;
    v114 = 0;
    goto LABEL_14;
  }

  v15 = *v13;
  v16 = v13[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v114 = 0;
  if (!v15)
  {
    goto LABEL_13;
  }

  if (*(v15 + 47) < 0)
  {
    sub_100005F2C(__dst, *(v15 + 24), *(v15 + 32));
  }

  else
  {
    *__dst = *(v15 + 24);
    v114 = *(v15 + 40);
  }

LABEL_14:
  v17 = subscriber::simSlotAsInstance();
  v18 = *(a1 + 368);
  v19 = a4;
  v111 = v17;
  if (*(v18 + 4 * v17) == a4 && *(*(a1 + 344) + 4 * v17) == a4 && *(*(a1 + 392) + 4 * v17) == a5)
  {
    v20 = *(a3 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (!v20 || sub_100071DF8(a3, __dst))
    {
LABEL_121:
      v82 = v111;
      goto LABEL_158;
    }

    v18 = *(a1 + 368);
    v19 = a4;
  }

  *(v18 + 4 * v111) = v19;
  v21 = *(a3 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a3 + 8);
  }

  v110 = a1;
  if (v21)
  {
    (*(**(a1 + 120) + 88))(*(a1 + 120), a3);
    v109 = a7;
    v22 = *(a1 + 656);
    v24 = *v22;
    v23 = v22[1];
    if (v24 != v23)
    {
      while (*(*v24 + 49) || *(*v24 + 13) != a2)
      {
        v24 += 2;
        if (v24 == v23)
        {
          goto LABEL_36;
        }
      }
    }

    if (v24 != v23)
    {
      if (!sub_100071DF8(*v24 + 3, a3))
      {
        v50 = *(a1 + 136);
        v49 = *(a1 + 144);
        if (v50 != v49)
        {
          v51 = *(*v24 + 47);
          if (v51 >= 0)
          {
            v52 = *(*v24 + 47);
          }

          else
          {
            v52 = *(*v24 + 4);
          }

          v53 = (*v24 + 24);
          v54 = v50 + 72;
          while (1)
          {
            v55 = *(v54 + 23);
            v56 = v55;
            if ((v55 & 0x80u) != 0)
            {
              v55 = *(v54 + 8);
            }

            if (v55 == v52)
            {
              v57 = v56 >= 0 ? v54 : *v54;
              v58 = v51 >= 0 ? v53 : *v53;
              if (!memcmp(v57, v58, v52) && *(v54 - 72) != a2)
              {
                break;
              }
            }

            v59 = v54 + 96;
            v54 += 168;
            if (v59 == v49)
            {
              goto LABEL_144;
            }
          }

          v50 = v54 - 72;
        }

        if (v50 != v49)
        {
          v86 = *(v110 + 40);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = *(*v24 + 14);
            v88 = PersonalityInfo::logPrefix(*v24);
            v89 = *(*v24 + 3);
            v90 = *(*v24 + 47);
            v91 = v90;
            if ((v90 & 0x80u) != 0)
            {
              v90 = *(*v24 + 4);
            }

            if (v91 >= 0)
            {
              v89 = *v24 + 24;
            }

            if (v90)
            {
              v92 = v89;
            }

            else
            {
              v92 = "<invalid>";
            }

            v93 = subscriber::asString();
            v94 = subscriber::asString();
            *buf = 136316674;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            v117 = 1024;
            *v118 = v87;
            *&v118[4] = 2080;
            *&v118[6] = v88;
            *&v118[14] = 2080;
            *&v118[16] = v92;
            v119[0] = 2080;
            *&v119[1] = v93;
            v120 = 2080;
            v121 = v94;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) relocated onto slot %s", buf, 0x44u);
          }
        }

LABEL_144:
        v95 = *(v110 + 40);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = *(*v24 + 14);
          v97 = PersonalityInfo::logPrefix(*v24);
          v98 = *v24 + 24;
          v99 = *v98;
          v100 = *(*v24 + 47);
          v101 = *(*v24 + 4);
          v102 = subscriber::asString();
          *buf = 136316418;
          *&buf[4] = "";
          if ((v100 & 0x80u) == 0)
          {
            v103 = v100;
          }

          else
          {
            v103 = v101;
          }

          *&buf[14] = "";
          v104 = "<invalid>";
          *&buf[12] = 2080;
          if ((v100 & 0x80u) == 0)
          {
            v105 = v98;
          }

          else
          {
            v105 = v99;
          }

          v117 = 1024;
          if (v103)
          {
            v104 = v105;
          }

          *v118 = v96;
          *&v118[4] = 2080;
          *&v118[6] = v97;
          *&v118[14] = 2080;
          *&v118[16] = v104;
          v119[0] = 2080;
          *&v119[1] = v102;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is detached", buf, 0x3Au);
        }

        v115 = 0uLL;
        sub_1004CA38C();
      }

      v25 = *v24;
      if (*(*v24 + 64) != 2)
      {
        v60 = *(a1 + 40);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v63 = *(v25 + 3);
          v61 = v25 + 24;
          v62 = v63;
          v64 = v61[23];
          v65 = *(v61 + 1);
          v66 = subscriber::asString();
          if ((v64 & 0x80u) == 0)
          {
            v67 = v64;
          }

          else
          {
            v67 = v65;
          }

          if ((v64 & 0x80u) == 0)
          {
            v68 = v61;
          }

          else
          {
            v68 = v62;
          }

          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          v117 = 2080;
          if (v67)
          {
            v69 = v68;
          }

          else
          {
            v69 = "<invalid>";
          }

          *v118 = v69;
          *&v118[8] = 2080;
          *&v118[10] = v66;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM is back for %s (%s) added", buf, 0x2Au);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_1004CA38C();
      }
    }

LABEL_36:
    v26 = *(a1 + 656);
    v28 = *v26;
    v27 = v26[1];
    if (*v26 != v27)
    {
      while (*(*v28 + 49) || !sub_100071DF8(*v28 + 3, a3))
      {
        v28 += 2;
        if (v28 == v27)
        {
          v28 = v27;
          break;
        }
      }

      v27 = *(*(a1 + 656) + 8);
    }

    if (v28 == v27)
    {
      goto LABEL_95;
    }

    v29 = *v28;
    if (*(*v28 + 13) != a2)
    {
      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v29 + 14);
        v32 = PersonalityInfo::logPrefix(v29);
        v33 = *v28 + 24;
        v34 = *v33;
        v35 = *(*v28 + 47);
        v36 = *(*v28 + 4);
        v37 = subscriber::asString();
        *buf = 136316418;
        *&buf[4] = "";
        if ((v35 & 0x80u) == 0)
        {
          v38 = v35;
        }

        else
        {
          v38 = v36;
        }

        *&buf[14] = "";
        v39 = "<invalid>";
        *&buf[12] = 2080;
        if ((v35 & 0x80u) == 0)
        {
          v40 = v33;
        }

        else
        {
          v40 = v34;
        }

        v117 = 1024;
        if (v38)
        {
          v39 = v40;
        }

        *v118 = v31;
        *&v118[4] = 2080;
        *&v118[6] = v32;
        *&v118[14] = 2080;
        *&v118[16] = v39;
        v119[0] = 2080;
        *&v119[1] = v37;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is detached", buf, 0x3Au);
        v30 = *(v110 + 40);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(*v28 + 14);
        v42 = PersonalityInfo::logPrefix(*v28);
        v43 = *(*v28 + 3);
        v44 = *(*v28 + 47);
        v45 = v44;
        if ((v44 & 0x80u) != 0)
        {
          v44 = *(*v28 + 4);
        }

        if (v45 >= 0)
        {
          v43 = *v28 + 24;
        }

        if (v44)
        {
          v46 = v43;
        }

        else
        {
          v46 = "<invalid>";
        }

        v47 = subscriber::asString();
        v48 = subscriber::asString();
        *buf = 136316674;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        v117 = 1024;
        *v118 = v41;
        *&v118[4] = 2080;
        *&v118[6] = v42;
        *&v118[14] = 2080;
        *&v118[16] = v46;
        v119[0] = 2080;
        *&v119[1] = v47;
        v120 = 2080;
        v121 = v48;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s moved from slot %s to slot %s", buf, 0x44u);
      }

      v115 = 0uLL;
      sub_1004CA38C();
    }

    if (v28 == v27)
    {
LABEL_95:
      (*(**(a1 + 120) + 32))(*(a1 + 120), a3, @"no_src", @"info", 0, 0);
      v115 = 0uLL;
      sub_101391C0C();
    }

    if (v109 & 0x100) != 0 && (v109)
    {
      v70 = *(a1 + 656);
      v71 = *v70;
      v72 = v70[1];
      if (*v70 != v72)
      {
        while (!sub_100071DF8((*v71 + 24), a3))
        {
          v71 += 16;
          if (v71 == v72)
          {
            v71 = v72;
            break;
          }
        }

        v72 = *(*(a1 + 656) + 8);
      }

      if (v71 != v72 && (*(*v71 + 61) & 1) == 0)
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1004CA38C();
      }
    }
  }

  if (!sub_101399DB8(a1, a2, a4))
  {
    goto LABEL_121;
  }

  v73 = *(a3 + 23);
  v74 = v73;
  v75 = *(a3 + 8);
  if ((v73 & 0x80u) == 0)
  {
    v76 = *(a3 + 23);
  }

  else
  {
    v76 = *(a3 + 8);
  }

  v77 = *(a1 + 344);
  if (v76 || *(v77 + 4 * v111) == 5)
  {
    v78 = a4;
    *(v77 + 4 * v111) = a4;
    v73 = *(a3 + 23);
    v75 = *(a3 + 8);
    v74 = *(a3 + 23);
  }

  else
  {
    v78 = a4;
  }

  if (v74 < 0)
  {
    v73 = v75;
  }

  if (v78 == 5 && v73)
  {
    v79 = *(a1 + 656);
    v81 = *v79;
    v80 = v79[1];
    if (*v79 != v80)
    {
      do
      {
        if (sub_100071DF8((*v81 + 24), a3))
        {
          break;
        }

        v81 += 16;
      }

      while (v81 != v80);
    }

    v115 = 0uLL;
    sub_1004CA38C();
  }

  v82 = v111;
  if (v78 != 5)
  {
    v83 = *(a1 + 656);
    v85 = *v83;
    v84 = v83[1];
    if (v85 != v84)
    {
      while (*(*v85 + 49) || *(*v85 + 52) != a2)
      {
        v85 += 16;
        if (v85 == v84)
        {
          goto LABEL_155;
        }
      }
    }

    if (v85 != v84 && isReal())
    {
      v115 = 0uLL;
      sub_1004CA38C();
    }

LABEL_155:
    v82 = v111;
    if (subscriber::isSimAbsent())
    {
      v106 = (*(a1 + 416) + 16 * v111);
      v107 = v106[1];
      *v106 = 0;
      v106[1] = 0;
      if (v107)
      {
        sub_100004A34(v107);
      }
    }
  }

LABEL_158:
  *(*(a1 + 392) + 4 * v82) = a5;
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return 0;
}

void sub_101397E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a51)
  {
    sub_100004A34(a51);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(exception_object);
}

void sub_101398148(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(*(a1 + 656) + 8) - **(a1 + 656)) >> 4;
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    *&buf[24] = v7;
    LOWORD(v107[0]) = 2080;
    *(v107 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%supdating personalities (%zu items) - %s", buf, 0x2Au);
  }

  if (a3 && (*(a1 + 96) & 1) == 0)
  {
    v8 = *(a1 + 656);
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%ssaving cache", buf, 0x16u);
    }

    v90 = 0;
    theArray = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = theArray;
      theArray = Mutable;
      *buf = v11;
      sub_1000279DC(buf);
    }

    v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v12)
    {
      v13 = v90;
      v90 = v12;
      *buf = v13;
      sub_1000279DC(buf);
    }

    v89 = 0;
    __p[0] = 0;
    *buf = time(0);
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, buf);
    if (v14)
    {
      v15 = __p[0];
      __p[0] = v14;
      *buf = v15;
      sub_100029A48(buf);
    }

    v89 = __p[0];
    __p[0] = 0;
    sub_100029A48(__p);
    for (i = 0; i < sub_10138DA4C(); i = (i + 1))
    {
      v19 = *v8;
      v18 = v8[1];
      if (*v8 != v18)
      {
        do
        {
          if (!*(*v19 + 49))
          {
            v20 = *(*v19 + 52);
            if (v20 == subscriber::instanceAsSimSlot(i, v17))
            {
              goto LABEL_20;
            }
          }

          v19 += 16;
        }

        while (v19 != v18);
        v19 = v18;
LABEL_20:
        v18 = v8[1];
      }

      if (v19 == v18 || sub_101392780(v19))
      {
        CFArrayAppendValue(theArray, &stru_101F6AFB8);
      }

      else
      {
        v21 = theArray;
        v22 = *v19;
        if (*(*v19 + 47) < 0)
        {
          sub_100005F2C(__dst, *(v22 + 24), *(v22 + 32));
        }

        else
        {
          *__dst = *(v22 + 24);
          v88 = *(v22 + 40);
        }

        if (SHIBYTE(v88) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v102 = v88;
        }

        v96 = 0;
        if (SHIBYTE(v102) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v102;
        }

        v98 = 0;
        if (ctu::cf::convert_copy())
        {
          v23 = v96;
          v96 = v98;
          v92[0] = v23;
          sub_100005978(v92);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value[0] = v96;
        v96 = 0;
        sub_100005978(&v96);
        if (SHIBYTE(v102) < 0)
        {
          operator delete(__p[0]);
        }

        CFArrayAppendValue(v21, value[0]);
        sub_100005978(value);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__dst[0]);
        }

        if (*(*v19 + 60))
        {
          v24 = kCFBooleanTrue;
        }

        else
        {
          v24 = kCFBooleanFalse;
        }

        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"ts", v89, @"info", 0, 0, 0);
        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"type", @"sim", @"info", 0, 0, 0);
        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"eap_aka", v24, @"info", 0, 0, 0);
      }
    }

    v25 = *(a1 + 104);
    if (CFArrayGetCount(theArray))
    {
      v26 = theArray;
    }

    else
    {
      v26 = 0;
    }

    sub_10071C318(v25, @"PersonalitySlots", v26, 0, 0, 0, 0);
    v27 = *v8;
    v28 = v8[1];
    if (*v8 != v28)
    {
      do
      {
        v29 = *v27;
        if (*(*v27 + 49) == 1)
        {
          v30 = v90;
          if (*(v29 + 47) < 0)
          {
            sub_100005F2C(value, *(v29 + 24), *(v29 + 32));
          }

          else
          {
            *value = *(v29 + 24);
            v86 = *(v29 + 40);
          }

          if (SHIBYTE(v86) < 0)
          {
            sub_100005F2C(__p, value[0], value[1]);
          }

          else
          {
            *__p = *value;
            v102 = v86;
          }

          v96 = 0;
          if (SHIBYTE(v102) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v102;
          }

          v98 = 0;
          if (ctu::cf::convert_copy())
          {
            v31 = v96;
            v96 = v98;
            v92[0] = v31;
            sub_100005978(v92);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v105 = v96;
          v96 = 0;
          sub_100005978(&v96);
          if (SHIBYTE(v102) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v30, v105);
          sub_100005978(&v105);
          if (SHIBYTE(v86) < 0)
          {
            operator delete(value[0]);
          }

          (*(**(a1 + 120) + 16))(*(a1 + 120), *v27 + 24, @"ts", v89, @"info", 0, 0, 0);
          (*(**(a1 + 120) + 16))(*(a1 + 120), *v27 + 24, @"type", @"cloud", @"info", 0, 0, 0);
        }

        v27 += 16;
      }

      while (v27 != v28);
    }

    v32 = *(a1 + 104);
    if (CFArrayGetCount(v90))
    {
      v33 = v90;
    }

    else
    {
      v33 = 0;
    }

    sub_10071C318(v32, @"PersonalityCloud", v33, 0, 0, 0, 0);
    v98 = 0;
    v99 = 0;
    v100 = 0;
    (*(**(a1 + 120) + 80))(&v98);
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3);
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "#D %s%sremoveOutdatedPersonalities. wallets: %zu", buf, 0x20u);
    }

    v36 = v98;
    v35 = v99;
    if (v99 != v98)
    {
      v37 = 0;
      while (1)
      {
        if (isReal())
        {
          if (a1 + 888 == sub_100007A6C(a1 + 880, &v98[3 * v37]))
          {
            ++v37;
            v35 = v99;
            goto LABEL_94;
          }

          v38 = *(a1 + 40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v44 = &v98[3 * v37];
            v45 = *(v44 + 23);
            v46 = (v45 & 0x80u) != 0;
            if ((v45 & 0x80u) != 0)
            {
              v45 = *(v44 + 1);
            }

            if (v46)
            {
              v44 = *v44;
            }

            if (!v45)
            {
              v44 = "<invalid>";
            }

            *buf = 136315650;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = v44;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "#D %s%s%s has label - cannot be deleted", buf, 0x20u);
          }

          p_data = &v99->__r_.__value_.__l.__data_;
          v35 = &v98[3 * v37];
          if (&v35[1] != v99)
          {
            do
            {
              std::string::operator=(v35, v35 + 1);
              ++v35;
            }

            while (&v35[1] != p_data);
            p_data = &v99->__r_.__value_.__l.__data_;
          }

          while (p_data != v35)
          {
            v40 = *(p_data - 1);
            p_data -= 3;
            if (v40 < 0)
            {
              operator delete(*p_data);
            }
          }
        }

        else
        {
          (*(**(a1 + 120) + 112))(*(a1 + 120), &v98[3 * v37]);
          v41 = &v99->__r_.__value_.__l.__data_;
          v35 = &v98[3 * v37];
          if (&v35[1] != v99)
          {
            do
            {
              std::string::operator=(v35, v35 + 1);
              ++v35;
            }

            while (&v35[1] != v41);
            v41 = &v99->__r_.__value_.__l.__data_;
          }

          while (v41 != v35)
          {
            v42 = *(v41 - 1);
            v41 -= 3;
            if (v42 < 0)
            {
              operator delete(*v41);
            }
          }
        }

        v99 = v35;
LABEL_94:
        v36 = v98;
        v43 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v98) >> 3);
        if (v37 >= v43)
        {
          goto LABEL_105;
        }
      }
    }

    v43 = 0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3);
LABEL_105:
    if (v43 > 5)
    {
      v96 = 0;
      v97 = 0uLL;
      if (v36 == v35)
      {
        v70 = 0;
        v69 = 0;
      }

      else
      {
        do
        {
          cf = 0;
          (*(**(a1 + 120) + 24))(&cf);
          v47 = cf;
          if (cf)
          {
            *buf = 0;
            v48 = CFGetTypeID(cf);
            if (v48 == CFNumberGetTypeID())
            {
              ctu::cf::assign(buf, v47, v49);
            }

            v50 = *buf;
          }

          else
          {
            v50 = 0;
          }

          if (*(v36 + 23) < 0)
          {
            sub_100005F2C(v92, *v36, v36[1]);
          }

          else
          {
            v51 = *v36;
            v93 = v36[2];
            *v92 = v51;
          }

          v94 = v50;
          v52 = v97;
          if (v97 >= *(&v97 + 1))
          {
            v54 = (v97 - v96) >> 5;
            if ((v54 + 1) >> 59)
            {
              sub_1000CE3D4();
            }

            v55 = (*(&v97 + 1) - v96) >> 4;
            if (v55 <= v54 + 1)
            {
              v55 = v54 + 1;
            }

            if (*(&v97 + 1) - v96 >= 0x7FFFFFFFFFFFFFE0uLL)
            {
              v56 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v55;
            }

            v107[0] = &v96;
            if (v56)
            {
              if (!(v56 >> 59))
              {
                operator new();
              }

              sub_100013D10();
            }

            *buf = 0;
            *&buf[8] = 32 * v54;
            *&buf[16] = 32 * v54;
            *&buf[24] = 0;
            if (SHIBYTE(v93) < 0)
            {
              sub_100005F2C((32 * v54), v92[0], v92[1]);
              v58 = *&buf[8];
              v59 = *&buf[16];
            }

            else
            {
              *(32 * v54) = *v92;
              *(32 * v54 + 0x10) = v93;
              v58 = 32 * v54;
              v59 = 32 * v54;
            }

            *(32 * v54 + 0x18) = v94;
            *&buf[16] = v59 + 32;
            v60 = v96;
            v61 = v97;
            __p[0] = &v96;
            __p[1] = &v104;
            v102 = &v105;
            v103 = 0;
            v62 = v96;
            v63 = &v96[v58 - v97];
            v104 = v63;
            v105 = v63;
            v64 = v63;
            if (v96 == v97)
            {
              LOBYTE(v103) = 1;
            }

            else
            {
              do
              {
                if (v62[23] < 0)
                {
                  sub_100005F2C(v64, *v62, *(v62 + 1));
                  v66 = v105;
                }

                else
                {
                  v65 = *v62;
                  *(v64 + 2) = *(v62 + 2);
                  *v64 = v65;
                  v66 = v64;
                }

                *(v64 + 3) = *(v62 + 3);
                v62 += 32;
                v64 = v66 + 32;
                v105 = v66 + 32;
              }

              while (v62 != v61);
              LOBYTE(v103) = 1;
              do
              {
                if (*(v60 + 23) < 0)
                {
                  operator delete(*v60);
                }

                v60 += 4;
              }

              while (v60 != v61);
            }

            sub_100F14C18(__p);
            v67 = v96;
            v68 = *(&v97 + 1);
            v96 = v63;
            v84 = *&buf[16];
            v97 = *&buf[16];
            *&buf[16] = v67;
            *&buf[24] = v68;
            *buf = v67;
            *&buf[8] = v67;
            sub_10003D0D4(buf);
            v57 = v84;
          }

          else
          {
            if (SHIBYTE(v93) < 0)
            {
              sub_100005F2C(v97, v92[0], v92[1]);
            }

            else
            {
              v53 = *v92;
              *(v97 + 16) = v93;
              *v52 = v53;
            }

            *(v52 + 24) = v94;
            v57 = v52 + 32;
          }

          *&v97 = v57;
          if (SHIBYTE(v93) < 0)
          {
            operator delete(v92[0]);
          }

          sub_10000A1EC(&cf);
          v36 += 3;
        }

        while (v36 != v35);
        v69 = v96;
        v70 = v97;
      }

      v71 = 126 - 2 * __clz((v70 - v69) >> 5);
      if (v70 == v69)
      {
        v72 = 0;
      }

      else
      {
        v72 = v71;
      }

      sub_1013B0B30(v69, v70, v72, 1);
      v73 = *(a1 + 40);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 1024;
        *&buf[24] = ((v97 - v96) >> 5) - 5;
        _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "#D %s%sSuppose to delete %d wallets", buf, 0x1Cu);
      }

      v74 = v96;
      if (v97 - v96 >= 0xA1uLL)
      {
        do
        {
          v75 = *(a1 + 40);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v78 = *(v74 + 20);
            v77 = v74 + 160;
            v76 = v78;
            v79 = v77[23];
            v80 = v79;
            if ((v79 & 0x80u) != 0)
            {
              v79 = *(v77 + 1);
            }

            if (v80 >= 0)
            {
              v76 = v77;
            }

            if (!v79)
            {
              v76 = "<invalid>";
            }

            *buf = 136315650;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = v76;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving outdated personality for %s", buf, 0x20u);
            v74 = v96;
          }

          (*(**(a1 + 120) + 112))(*(a1 + 120), v74 + 160);
          v81 = v97;
          v82 = (v96 + 160);
          if (v96 + 192 != v97)
          {
            do
            {
              std::string::operator=(v82, (v82 + 4));
              v82[3] = v82[7];
              v82 += 4;
            }

            while (v82 + 4 != v81);
            v81 = v97;
          }

          while (v81 != v82)
          {
            v83 = *(v81 - 9);
            v81 -= 4;
            if (v83 < 0)
            {
              operator delete(*v81);
            }
          }

          *&v97 = v82;
          v74 = v96;
        }

        while ((v82 - v96) > 0xA0);
      }

      *buf = &v96;
      sub_1013B1CC4(buf);
    }

    *buf = &v98;
    sub_10005AAF8(buf);
    sub_100029A48(&v89);
    sub_1000279DC(&v90);
    sub_1000279DC(&theArray);
  }

  sub_101393BA4();
}

void sub_10139909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, __int16 *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  a45 = &a37;
  sub_1013B1CC4(&a45);
  a45 = &a42;
  sub_10005AAF8(&a45);
  sub_100029A48(&a24);
  sub_1000279DC(&a25);
  sub_1000279DC(&a26);
  _Unwind_Resume(a1);
}

void sub_101399254(void *a1)
{
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v2 = a1[82];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = a1 + 111;
    v6 = a1 + 117;
    do
    {
      if (!*(*v3 + 49) && !sub_101392780(v3))
      {
        subscriber::simSlotAsInstance();
        if (subscriber::isSimInserted())
        {
          if (v5 == sub_100007A6C((a1 + 110), (*v3 + 24)) && v6 == sub_100007A6C((a1 + 116), (*v3 + 24)))
          {
            sub_1013B731C(&v43, (*v3 + 24));
          }
        }
      }

      v3 += 16;
    }

    while (v3 != v4);
    if (v45)
    {
      sub_1013A6030(&v31, a1, &v43);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }
  }

  if (!a1[63])
  {
    goto LABEL_66;
  }

  v29 = 0;
  v30[0] = 0;
  v30[1] = 0;
  sub_10139D0E0(&v29, a1);
  *v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  *v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  *v19 = 0u;
  *v20 = 0u;
  v7 = a1[82];
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    goto LABEL_52;
  }

  while (1)
  {
    if (*(*v8 + 49) || v30 == sub_100007A6C(&v29, (*v8 + 24)))
    {
      goto LABEL_26;
    }

    v10 = sub_100007A6C((a1 + 110), (*v8 + 24));
    if ((BYTE8(v28) & 1) == 0)
    {
      sub_100DFECD0(v19, v10 + 56);
      BYTE8(v28) = 1;
      goto LABEL_26;
    }

    if (SimLabel::sameLabelName())
    {
      break;
    }

LABEL_26:
    v8 += 16;
    if (v8 == v9)
    {
      goto LABEL_52;
    }
  }

  v11 = a1[61];
  if (v11 == a1 + 62)
  {
    v12 = 1;
  }

  else
  {
    v12 = 1;
    do
    {
      v13 = sub_100007A6C((a1 + 110), v11 + 4);
      if (a1 + 111 != v13)
      {
        v12 &= *(v13 + 128);
      }

      v14 = v11[1];
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
          v15 = v11[2];
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
    }

    while (v15 != a1 + 62);
  }

  v17 = a1[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sDuplicated label detected", buf, 0x16u);
  }

  if (v12)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sSIMs are marked as requiring label resolution", buf, 0x16u);
    }

    memset(buf, 0, sizeof(buf));
    sub_1013A8B10(a1, buf, 0);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_52:
  if (BYTE8(v28) == 1)
  {
    if (SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v25[0]) < 0)
    {
      operator delete(v24[0]);
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }

    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(v19[0]);
    }
  }

  sub_100009970(&v29, v30[0]);
LABEL_66:
  sub_10139C67C(a1, "label evaluation", 0);
  sub_100009970(&v43, v44);
}

void sub_10139969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, char *a31)
{
  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  sub_100A7B058(&a9);
  sub_100009970(&a30, a31);
  sub_100009970(v31 - 120, *(v31 - 112));
  _Unwind_Resume(a1);
}

void sub_101399700(void *a1, uint64_t a2)
{
  v4 = a1[109];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  LOBYTE(v26) = *(a2 + 24);
  v5 = *(a2 + 40);
  *&v28[2] = *(a2 + 32);
  *&v28[10] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[106];
  v7 = a1[105];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 85 * (v6 - v7) - 1;
  }

  v9 = a1[108];
  if (v8 == a1[109] + v9)
  {
    v10 = v9 >= 0x55;
    v11 = v9 - 85;
    if (!v10)
    {
      v12 = a1[107];
      v13 = a1[104];
      if (v6 - v7 < (v12 - v13))
      {
        operator new();
      }

      if (v12 == v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = (v12 - v13) >> 2;
      }

      sub_100EF4E80(v14);
    }

    a1[108] = v11;
    v23[0] = *v7;
    a1[105] = v7 + 1;
    sub_1010F098C(a1 + 104, v23);
    v7 = a1[105];
    v6 = a1[106];
  }

  if (v6 == v7)
  {
    v16 = 0;
  }

  else
  {
    v15 = a1[109] + a1[108];
    v16 = v7[v15 / 0x55] + 48 * (v15 % 0x55);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    sub_100005F2C(v16, *__p, *&__p[8]);
  }

  else
  {
    v17 = *__p;
    *(v16 + 16) = *&__p[16];
    *v16 = v17;
  }

  *(v16 + 24) = v26;
  *(v16 + 32) = *&v28[2];
  *&v28[2] = 0uLL;
  ++a1[109];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v4)
    {
LABEL_29:
      v18 = a1[5];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a2 + 32);
        v20 = *(v19 + 14);
        v21 = PersonalityInfo::logPrefix(v19);
        asString();
        v22 = v24 >= 0 ? v23 : v23[0];
        *__p = 136316162;
        *&__p[4] = "";
        *&__p[12] = 2080;
        *&__p[14] = "";
        *&__p[22] = 1024;
        v26 = v20;
        v27 = 2080;
        *v28 = v21;
        *&v28[8] = 2080;
        *&v28[10] = v22;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#D %s%sdirect event push: [%d] %s %s", __p, 0x30u);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      sub_10139DD40(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_29;
  }
}

void sub_101399D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  operator delete(v14);
  if (v13)
  {
    operator delete(v13);
  }

  sub_101393148(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_101399DB8(uint64_t a1, int a2, int a3)
{
  if (a3 != 3)
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 656);
  v4 = *v3;
  v5 = v3[1];
  if (v4 != v5)
  {
    while (*(*v4 + 49) || *(*v4 + 52) != a2)
    {
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  if (v4 != v5 && (v6 = *v4, *(*v4 + 48) == 1))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v6 + 24);
      v9 = v6 + 24;
      v8 = v10;
      v11 = *(v9 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v9 + 8);
      }

      if (v12 >= 0)
      {
        v8 = v9;
      }

      if (v11)
      {
        v13 = v8;
      }

      else
      {
        v13 = "<invalid>";
      }

      v15 = 136315906;
      v16 = "";
      v17 = 2080;
      v18 = "";
      v19 = 2080;
      v20 = v13;
      v21 = 2080;
      v22 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM %s in slot %s was reported Locked being previously Ready -> suppress like a glitch", &v15, 0x2Au);
    }

    return 0;
  }

  else
  {
LABEL_19:

    return subscriber::isSimSettled();
  }
}

uint64_t sub_101399F4C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 448);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v3 + 52);
  v6 = a1 + 448;
  do
  {
    if (*(v4 + 32) >= v5)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v5));
  }

  while (v4);
  if (v6 != a1 + 448 && v5 >= *(v6 + 32))
  {
    v7 = sub_100071DF8((v6 + 40), (v3 + 24));
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  return (*(*(a1 + 344) + 4 * subscriber::simSlotAsInstance()) == 5) & v7;
}

_OWORD *sub_101399FF4(_OWORD *__dst, uint64_t a2, void *a3)
{
  v5 = __dst;
  if (*(a2 + 23) < 0)
  {
    __dst = sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    *(__dst + 2) = *(a2 + 16);
  }

  v5[24] = *(a2 + 24);
  v6 = a3[1];
  *(v5 + 4) = *a3;
  *(v5 + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_10139A06C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a2 + 4))
  {
    if (*a2)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      v7 = (v6 - v5);
      if (v6 != v5)
      {
        v55[0] = 0;
        v55[1] = 0;
        v56 = 0;
        subscriber::sDecodeIccid(v55, v5, v7, a3);
        v8 = HIBYTE(v56);
        if (v56 < 0)
        {
          v8 = v55[1];
        }

        if (!v8)
        {
          goto LABEL_68;
        }

        if ((*(*a1 + 320))(a1, v55))
        {
          v9 = *(a1 + 40);
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_68;
          }

          v10 = SHIBYTE(v56);
          v11 = v55[0];
          v12 = subscriber::asString();
          v13 = v55;
          *buf = 136315906;
          *&buf[4] = "";
          if (v10 < 0)
          {
            v13 = v11;
          }

          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v58 = v13;
          v59 = 2080;
          v60 = v12;
          v14 = "#I %s%sabandoned SIM %s in slot:%s - sim file event suppressed";
        }

        else
        {
          if (SHIBYTE(v56) < 0)
          {
            sub_100005F2C(buf, v55[0], v55[1]);
          }

          else
          {
            *buf = *v55;
            *&buf[16] = v56;
          }

          v20 = sub_100007A6C(a1 + 560, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (a1 + 568 != v20)
          {
            goto LABEL_68;
          }

          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = SHIBYTE(v56);
            v23 = v55[0];
            v24 = subscriber::asString();
            v25 = v55;
            *buf = 136315906;
            *&buf[4] = "";
            if (v22 < 0)
            {
              v25 = v23;
            }

            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v58 = v25;
            v59 = 2080;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s--> received simfile iccid:%s for slot:%s", buf, 0x2Au);
          }

          v26 = *(a1 + 592);
          if (!v26)
          {
            goto LABEL_47;
          }

          v27 = *a2;
          v28 = a1 + 592;
          do
          {
            if (*(v26 + 32) >= v27)
            {
              v28 = v26;
            }

            v26 = *(v26 + 8 * (*(v26 + 32) < v27));
          }

          while (v26);
          if (v28 == a1 + 592 || v27 < *(v28 + 32))
          {
            goto LABEL_47;
          }

          if (SHIBYTE(v56) < 0)
          {
            sub_100005F2C(buf, v55[0], v55[1]);
          }

          else
          {
            *buf = *v55;
            *&buf[16] = v56;
          }

          v29 = sub_100071DF8((v28 + 40), buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (!v29 || std::chrono::steady_clock::now().__d_.__rep_ >= *(v28 + 64) + 100000000)
          {
LABEL_47:
            v53 = 0;
            v54 = 0;
            sub_101392E50(&v53, **(a1 + 656), *(*(a1 + 656) + 8), *a2);
            v34 = v53;
            if (v53)
            {
              v35 = PersonalityInfo::iccid(v53);
              if (!sub_100071DF8(v35, v55))
              {
                v36 = *(a1 + 40);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = PersonalityInfo::iccid(v34);
                  v38 = *(v37 + 23);
                  v39 = *v37;
                  v40 = SHIBYTE(v56);
                  v41 = v55[0];
                  v42 = subscriber::asString();
                  v43 = v55;
                  *buf = 136316162;
                  if (v40 < 0)
                  {
                    v43 = v41;
                  }

                  *&buf[4] = "";
                  *&buf[12] = 2080;
                  if (v38 >= 0)
                  {
                    v44 = v37;
                  }

                  else
                  {
                    v44 = v39;
                  }

                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  v58 = v44;
                  v59 = 2080;
                  v60 = v43;
                  v61 = 2080;
                  v62 = v42;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sdetected SimSwap iccid:%s -> %s for slot:%s", buf, 0x34u);
                }
              }
            }

            memset(buf, 0, sizeof(buf));
            v45 = subscriber::simSlotAsInstance();
            v46 = *a2;
            if (SHIBYTE(v56) < 0)
            {
              sub_100005F2C(__p, v55[0], v55[1]);
            }

            else
            {
              *__p = *v55;
              v52 = v56;
            }

            v47 = sub_1013959C0(a1, v46, __p, *(*(a1 + 368) + 4 * v45), *(*(a1 + 392) + 4 * v45), 0, 0);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(__p[0]);
            }

            if ((sub_1013927E8(a1, (a1 + 656)) | v47))
            {
              sub_101398148(a1, "handleSimFileEvent", 1);
            }

            sub_101399254(a1);
            v48 = *buf;
            if (*&buf[8] != *buf)
            {
              v49 = 0;
              v50 = 0;
              do
              {
                sub_101399700(a1, v48 + v49);
                ++v50;
                v48 = *buf;
                v49 += 48;
              }

              while (v50 < 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 4));
            }

            __p[0] = buf;
            sub_1013B1D50(__p);
            if (v54)
            {
              sub_100004A34(v54);
            }

            goto LABEL_68;
          }

          v9 = *(a1 + 40);
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
LABEL_68:
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55[0]);
            }

            return;
          }

          v30 = SHIBYTE(v56);
          v31 = v55[0];
          v32 = subscriber::asString();
          v33 = v55;
          *buf = 136315906;
          *&buf[4] = "";
          if (v30 < 0)
          {
            v33 = v31;
          }

          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v58 = v33;
          v59 = 2080;
          v60 = v32;
          v14 = "#I %s%sSIM %s was detached from slot:%s few milliseconds ago - ignore";
        }

        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, buf, 0x2Au);
        goto LABEL_68;
      }

      v19 = *(a1 + 40);
      if (!os_log_type_enabled(v19, v7))
      {
        return;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v58 = subscriber::asString();
      v16 = "#W %s%shandleSimFileEvent received with ICCID / slot:%s but without empty fData";
      v17 = v19;
      v18 = 32;
    }

    else
    {
      v15 = *(a1 + 40);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v16 = "#W %s%shandleSimFileEvent received with ICCID but without slot";
      v17 = v15;
      v18 = 22;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }
}

void sub_10139A6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139A758(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    while (*(*v3 + 49) || *(*v3 + 52) != 1)
    {
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_9:
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (*(a1 + 336) == 1)
  {
    v7 = (a1 + 312);
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    if (*(a1 + 335) < 0)
    {
      sub_100005F2C(__p, *(a1 + 312), *(a1 + 320));
    }

    else
    {
      *__p = *v7;
      v13 = *(a1 + 328);
    }

    if (!v6 || !sub_100071DF8((v6 + 24), __p) || (*(v6 + 48) & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 335) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSimulating SIM personality for carrierID based configuration: %s", buf, 0x20u);
      }

      memset(buf, 0, sizeof(buf));
      if ((sub_1013959C0)(a1, 1, __p, 5, 2, 0, 256, buf))
      {
        sub_101398148(a1, "simulateCarrierIDBasedPersonalityIfMissing", 1);
      }

      sub_101399254(a1);
      v9 = *buf;
      if (*&buf[8] != *buf)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          sub_101399700(a1, v9 + v10);
          ++v11;
          v9 = *buf;
          v10 += 48;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 4));
      }

      v14 = buf;
      sub_1013B1D50(&v14);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10139A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139A9F0(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v84 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleVinylInfoChanged: %s", buf, 0x20u);
  }

  v5 = *(a1 + 160);
  v64 = *(a1 + 168);
  if (v64 == v5)
  {
    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sIncomplete vinyl info", buf, 0x16u);
    }
  }

  else
  {
    v66 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v78[0] = a1;
    v78[1] = &v82;
    v77[0] = 0;
    v77[1] = 0;
    v76 = v77;
    do
    {
      v65 = v5;
      if (*(v5 + 80) == 1)
      {
        v7 = *(v5 + 56);
        v6 = *(v5 + 64);
        while (v7 != v6)
        {
          cf[0] = 0;
          cf[1] = 0;
          v72 = 0;
          if (*(v7 + 39) < 0)
          {
            sub_100005F2C(cf, *(v7 + 16), *(v7 + 24));
          }

          else
          {
            *cf = *(v7 + 16);
            v72 = *(v7 + 32);
          }

          v8 = *(a1 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = HIBYTE(v72);
            v10 = cf[0];
            v11 = cf[1];
            v12 = asString();
            *buf = 136315906;
            if (v9 >= 0)
            {
              v13 = v9;
            }

            else
            {
              v13 = v11;
            }

            *&buf[4] = "";
            v14 = cf;
            if (v9 < 0)
            {
              v14 = v10;
            }

            v15 = v13 == 0;
            *&buf[12] = 2080;
            v16 = "<invalid>";
            if (!v15)
            {
              v16 = v14;
            }

            *&buf[14] = "";
            *&buf[22] = 2080;
            v84 = v16;
            v85 = 2080;
            v86 = v12;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVinyl state: %s: %s", buf, 0x2Au);
          }

          (*(**(a1 + 120) + 88))(*(a1 + 120), cf);
          theString1[0] = 0;
          (*(**(a1 + 120) + 24))(buf);
          sub_100060DE8(theString1, buf);
          sub_10000A1EC(buf);
          if (!theString1[0] || CFStringCompare(theString1[0], @"sim", 0))
          {
            v17 = *(a1 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = HIBYTE(v72);
              if (v72 < 0)
              {
                v18 = cf[1];
              }

              v19 = cf;
              if (v72 < 0)
              {
                v19 = cf[0];
              }

              v15 = v18 == 0;
              v20 = "<invalid>";
              if (!v15)
              {
                v20 = v19;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as SIM type", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"type", @"sim", @"info", 0, 0, 0);
          }

          (*(**(a1 + 120) + 24))(buf);
          v21 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v22 = CFGetTypeID(*buf);
            if (v22 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v21, v23);
            }
          }

          v24 = __p[0];
          sub_10000A1EC(buf);
          if ((v24 & 1) == 0)
          {
            v25 = *(a1 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = HIBYTE(v72);
              if (v72 < 0)
              {
                v26 = cf[1];
              }

              v27 = cf;
              if (v72 < 0)
              {
                v27 = cf[0];
              }

              v15 = v26 == 0;
              v28 = "<invalid>";
              if (!v15)
              {
                v28 = v27;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v28;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as eSIM", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"esim", kCFBooleanTrue, @"info", 0, 0, 0);
            v89[0] = off_101F33908;
            v89[3] = v89;
            sub_10139BBCC(v78, cf);
            sub_1013B753C(v89);
          }

          if (*(v7 + 89) == 1)
          {
            (*(**(a1 + 120) + 24))(buf);
            v29 = *buf;
            LOBYTE(__p[0]) = 0;
            if (*buf)
            {
              v30 = CFGetTypeID(*buf);
              if (v30 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(__p, v29, v31);
              }
            }

            v32 = __p[0];
            sub_10000A1EC(buf);
            if ((v32 & 1) == 0)
            {
              v33 = *(a1 + 40);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = HIBYTE(v72);
                if (v72 < 0)
                {
                  v34 = cf[1];
                }

                v35 = cf;
                if (v72 < 0)
                {
                  v35 = cf[0];
                }

                v15 = v34 == 0;
                v36 = "<invalid>";
                if (!v15)
                {
                  v36 = v35;
                }

                *buf = 136315906;
                *&buf[4] = "";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                v84 = v36;
                v85 = 2080;
                v86 = "Provisioning";
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as %s", buf, 0x2Au);
              }

              (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"provisioning", kCFBooleanTrue, @"info", 0, 0, 0);
              v88[0] = off_101F33998;
              v88[3] = v88;
              sub_10139BBCC(v78, cf);
              sub_1013B753C(v88);
              v66 |= sub_10139BCF4(a1, cf, "Provisioning", &xmmword_101FCA9A8, @"labeled bootstrap sim");
            }
          }

          (*(**(a1 + 120) + 24))(buf);
          v37 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v38 = CFGetTypeID(*buf);
            if (v38 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v37, v39);
            }
          }

          v40 = LOBYTE(__p[0]);
          sub_10000A1EC(buf);
          if (v40 == 1)
          {
            (*(**(a1 + 120) + 32))(*(a1 + 120), cf, @"no_src", @"info", 0, 0);
            v87[0] = off_101F33A18;
            v87[3] = v87;
            sub_10139BBCC(v78, cf);
            sub_1013B753C(v87);
          }

          if (*(v7 + 39) < 0)
          {
            sub_100005F2C(__p, *(v7 + 16), *(v7 + 24));
          }

          else
          {
            *__p = *(v7 + 16);
            v69 = *(v7 + 32);
          }

          v73 = 0;
          if (!*sub_100005C2C(&v76, &v73, __p))
          {
            memset(buf, 0, sizeof(buf));
            sub_1013B7784();
          }

          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(theString1);
          if (SHIBYTE(v72) < 0)
          {
            operator delete(cf[0]);
          }

          v7 += 216;
        }
      }

      v5 = v65 + 88;
    }

    while (v65 + 88 != v64);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    (*(**(a1 + 120) + 80))(&v73);
    v41 = v73;
    v42 = v74;
    if (v73 != v74)
    {
      v43 = (a1 + 656);
      do
      {
        (*(**(a1 + 120) + 24))(buf);
        v44 = *buf;
        LOBYTE(__p[0]) = 0;
        if (*buf)
        {
          v45 = CFGetTypeID(*buf);
          if (v45 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(__p, v44, v46);
          }
        }

        v47 = LOBYTE(__p[0]);
        sub_10000A1EC(buf);
        if (v47 == 1 && v77 == sub_100007A6C(&v76, v41))
        {
          (*(**(a1 + 120) + 24))(buf);
          v48 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v49 = CFGetTypeID(*buf);
            if (v49 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v48, v50);
            }
          }

          v51 = __p[0];
          sub_10000A1EC(buf);
          if ((v51 & 1) == 0)
          {
            v52 = *(a1 + 40);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = *(v41 + 23);
              v54 = (v53 & 0x80u) != 0;
              if ((v53 & 0x80u) != 0)
              {
                v53 = *(v41 + 1);
              }

              if (v54)
              {
                v55 = *v41;
              }

              else
              {
                v55 = v41;
              }

              v15 = v53 == 0;
              v56 = "<invalid>";
              if (!v15)
              {
                v56 = v55;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v56;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected deleted eSIM: %s", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), v41, @"no_src", kCFBooleanTrue, @"info", 0, 0, 0);
            v57 = **v43;
            v58 = (*v43)[1];
            if (v57 != v58)
            {
              do
              {
                if (sub_100071DF8((*v57 + 24), v41))
                {
                  goto LABEL_98;
                }

                v57 += 16;
              }

              while (v57 != v58);
              v57 = v58;
LABEL_98:
              v58 = (*v43)[1];
            }

            if (v57 != v58)
            {
              *buf = v57;
              sub_10139C06C(a1, buf);
            }

            if (*(v41 + 23) < 0)
            {
              sub_100005F2C(__p, *v41, *(v41 + 1));
            }

            else
            {
              v59 = *v41;
              v69 = *(v41 + 2);
              *__p = v59;
            }

            v70 = 7;
            sub_101391C0C();
          }
        }

        v41 = (v41 + 24);
      }

      while (v41 != v42);
    }

    if (v82)
    {
      sub_101398148(a1, "handleVinylInfoChanged", 1);
    }

    if (v66)
    {
      sub_10139C67C(a1, "vinyl correction", 0);
    }

    v60 = v79;
    if (v80 != v79)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        sub_101399700(a1, v60 + v61);
        ++v62;
        v60 = v79;
        v61 += 48;
      }

      while (v62 < 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 4));
    }

    *buf = &v73;
    sub_10005AAF8(buf);
    sub_100009970(&v76, v77[0]);
    *buf = &v79;
    sub_1013B1D50(buf);
  }
}

void sub_10139BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, char *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_101393148(&a28);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  *(v45 - 256) = &a37;
  sub_10005AAF8((v45 - 256));
  sub_100009970(&a40, a41);
  a28 = &a45;
  sub_1013B1D50(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_10139BBCC(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(*result + 656);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    while (1)
    {
      result = sub_100071DF8((*v4 + 24), a2);
      if (result)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(*(v2 + 656) + 8);
  }

  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    sub_1004CA38C();
  }

  return result;
}

void sub_10139BCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10139BCF4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, const void *a5)
{
  v10 = (a1 + 880);
  v11 = sub_100007A6C(a1 + 880, a2);
  v12 = v11;
  v13 = (a1 + 888);
  if (a1 + 888 != v11)
  {
    if (*(a1 + 896) != 1)
    {
      __p = 0uLL;
      v40 = 0;
      if (*(v11 + 127) < 0)
      {
        sub_100005F2C(&__p, *(v11 + 104), *(v11 + 112));
      }

      else
      {
        __p = *(v11 + 104);
        v40 = *(v11 + 120);
      }

      memset(&v42, 0, sizeof(v42));
      v14 = *v10;
      v26 = a4;
      if (*v10 != v13)
      {
        if (v40 >= 0)
        {
          v15 = HIBYTE(v40);
        }

        else
        {
          v15 = *(&__p + 1);
        }

        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        while (1)
        {
          v17 = *(v14 + 127);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = v14[14];
          }

          if (v17 != v15)
          {
            break;
          }

          v19 = v18 >= 0 ? v14 + 13 : v14[13];
          if (memcmp(v19, p_p, v15))
          {
            break;
          }

          v20 = v14[1];
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
              v21 = v14[2];
              v22 = *v21 == v14;
              v14 = v21;
            }

            while (!v22);
          }

          v14 = v21;
          if (v21 == v13)
          {
            goto LABEL_29;
          }
        }
      }

      if (v14 != v13)
      {
        std::string::operator=(&v42, (v14 + 13));
      }

LABEL_29:
      sub_1013B7834(v10, a2);
      a4 = v26;
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_1013AB290(a1, &__p, &v42, a5);
        v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      }

      if (v24 < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }
    }

    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id", @"info", 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id-confirmed", @"info", 0, 0);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
      v40 = *(a2 + 16);
    }

    v41 = 1;
    sub_1013A5D7C(a1, &__p);
    if (v41 == 1 && SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }

    sub_1013A8F04(&__dst, a1, a2, a3, a4);
    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(__dst);
    }
  }

  return v13 != v12;
}

void sub_10139C028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139C06C(uint64_t a1, PersonalityInfo ***a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **a2;
    v6 = *(v5 + 14);
    v7 = PersonalityInfo::logPrefix(v5);
    v8 = **a2;
    v11 = *(v8 + 3);
    v9 = v8 + 24;
    v10 = v11;
    v12 = *(v9 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v9 + 8);
    }

    if (v13 >= 0)
    {
      v10 = v9;
    }

    if (v12)
    {
      v14 = v10;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v17 = 1024;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 2080;
    v22 = v14;
    v23 = 2080;
    v24 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is gone (forced out)", buf, 0x3Au);
  }

  sub_1000727F0((a1 + 488), **a2 + 3);
  v15 = 0uLL;
  sub_1004CA38C();
}

void sub_10139C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_101393148(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10139C67C(uint64_t a1, uint64_t a2, int a3)
{
  v14 = 0u;
  v15 = 0u;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (capabilities::ct::supportsGemini(a1))
  {
    operator new();
  }

  sub_1013BF894(&v14 + 1, &v16);
  sub_1001B1588(&v16, v17[0]);
  std::mutex::lock((a1 + 984));
  if (a3)
  {
    sub_1013A7564(buf, a1);
    sub_1013A74F4(a1 + 1048, buf);
  }

  else
  {
    sub_1013A7564(buf, a1);
    if (*(a1 + 1104) == 1 && *(a1 + 1096) == *&buf[16])
    {
      v5 = *(a1 + 1080);
      if (v5 == (a1 + 1088))
      {
LABEL_22:
        sub_1001704B0(buf, *&buf[8]);
        std::mutex::unlock((a1 + 984));
        goto LABEL_26;
      }

      v6 = *buf;
      while (sub_100071DF8(v5 + 4, v6 + 4) && SimLabel::operator==())
      {
        v7 = v5[1];
        v8 = v5;
        if (v7)
        {
          do
          {
            v5 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v5 = v8[2];
            v9 = *v5 == v8;
            v8 = v5;
          }

          while (!v9);
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
            v9 = *v11 == v6;
            v6 = v11;
          }

          while (!v9);
        }

        v6 = v11;
        if (v5 == (a1 + 1088))
        {
          goto LABEL_22;
        }
      }
    }

    sub_1013A74F4(a1 + 1048, buf);
  }

  sub_1001704B0(buf, *&buf[8]);
  std::mutex::unlock((a1 + 984));
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%spublished assigned sim labels update caused by %s", buf, 0x20u);
  }

LABEL_26:
  sub_1001B1588(&v14 + 8, v15);
}

void sub_10139CFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, const void **a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100004A34(a16);
  sub_1001B1588(&a32, a33);
  _Unwind_Resume(a1);
}

const void **sub_10139D0E0(const void **result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  v2 = *(a2 + 880);
  v3 = (a2 + 888);
  if (v2 != (a2 + 888))
  {
    v5 = result;
    v20 = a2 + 520;
    v6 = a2 + 544;
    do
    {
      theDict = 0;
      (*(**(a2 + 120) + 24))(&v21);
      sub_100010180(&theDict, &v21);
      sub_10000A1EC(&v21);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"type");
        v8 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFStringGetTypeID() && CFStringCompare(v8, @"sim", 0) == kCFCompareEqualTo)
          {
            v10 = CFDictionaryGetValue(theDict, @"no_src");
            v11 = v10;
            v13 = v10 && (v12 = CFGetTypeID(v10), v12 == CFBooleanGetTypeID()) && CFBooleanGetValue(v11) == 1;
            v14 = sub_100007A6C(a2 + 512, v2 + 4);
            v15 = sub_100007A6C(a2 + 536, v2 + 4);
            v16 = v20 != v14 && v6 == v15;
            v17 = v16 || v13;
            if ((v17 & 1) == 0 && !sub_101395904(a2, v2 + 4))
            {
              sub_1013B731C(v5, v2 + 4);
            }
          }
        }
      }

      result = sub_10001021C(&theDict);
      v18 = v2[1];
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
          v19 = v2[2];
          v16 = *v19 == v2;
          v2 = v19;
        }

        while (!v16);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }

  return result;
}

void sub_10139D2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  sub_100009970(v4, *(v4 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_10139D330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 976) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 975);
  if (v2 >= 0)
  {
    v3 = *(a1 + 975);
  }

  else
  {
    v3 = *(a1 + 960);
  }

  v4 = *(a2 + 71);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 56);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 952);
  }

  else
  {
    v6 = *(a1 + 952);
  }

  if (v5 >= 0)
  {
    v7 = (a2 + 48);
  }

  else
  {
    v7 = *(a2 + 48);
  }

  return memcmp(v6, v7, v3) == 0;
}

uint64_t sub_10139D3B8(void *a1)
{
  if (a1[60])
  {
    v2 = a1[58];
    v33[0] = off_101F33E48;
    v33[1] = a1;
    v33[3] = v33;
    v3 = a1[5];
    v4 = "<invalid>";
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 55);
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v2 + 40);
      }

      if (v6)
      {
        v7 = *(v2 + 32);
      }

      else
      {
        v7 = (v2 + 32);
      }

      if (v5)
      {
        v8 = v7;
      }

      else
      {
        v8 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sresolveSimLabel, %s", buf, 0x20u);
      v3 = a1[5];
    }

    v29 = v2;
    memset(v31, 0, sizeof(v31));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      v37 = 2080;
      v38 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s======== available", buf, 0x16u);
    }

    v30 = (v2 + 32);
    v9 = a1[82];
    v10 = *v9;
    v11 = v9[1];
    if (*v9 != v11)
    {
      v12 = a1 + 111;
      do
      {
        v13 = *v10;
        if (!*(*v10 + 49) && *(v13 + 48) == 1)
        {
          v14 = sub_100007A6C((a1 + 110), (v13 + 24));
          v15 = a1[5];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *v10 + 24;
            v17 = *(*v10 + 47);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(*v10 + 32);
            }

            if (v18 < 0)
            {
              v16 = *(*v10 + 24);
            }

            v19 = v4;
            if (v17)
            {
              v4 = v16;
            }

            if (v12 == v14)
            {
              *buf = 136315906;
              *&buf[4] = "";
              v37 = 2080;
              v38 = "";
              v39 = 2080;
              v40 = v4;
              v41[0] = 2080;
              *&v41[1] = "";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", buf, 0x2Au);
            }

            else
            {
              asString();
              p_p = &__p;
              if (v35 < 0)
              {
                p_p = __p;
              }

              *buf = 136315906;
              *&buf[4] = "";
              v37 = 2080;
              v38 = "";
              v39 = 2080;
              v40 = v4;
              v41[0] = 2080;
              *&v41[1] = p_p;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", buf, 0x2Au);
              if (v35 < 0)
              {
                operator delete(__p);
              }
            }

            v4 = v19;
          }

          if (v12 != v14)
          {
            (*(*a1 + 168))(buf, a1, v14 + 56);
            sub_1013BE194();
          }
        }

        v10 += 2;
      }

      while (v10 != v11);
    }

    v22 = sub_100007A6C((a1 + 110), v30);
    if (a1 + 111 != v22)
    {
      (*(*a1 + 168))(buf, a1, v22 + 56);
      sub_1013BE194();
    }

    v23 = a1[5];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v29 + 55);
      v25 = (v24 & 0x80u) != 0;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v29 + 40);
      }

      if (v25)
      {
        v26 = *(v29 + 32);
      }

      else
      {
        v26 = v30;
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = v4;
      }

      *buf = 136315650;
      *&buf[4] = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to find label for: %s", buf, 0x20u);
    }

    v32 = v31;
    sub_1000212F4(&v32);
    sub_1013BEF6C(v33);
  }

  else
  {
    v21 = a1[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      v37 = 2080;
      v38 = "";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sdoResolveRemovedSims, nothing to resolve", buf, 0x16u);
    }
  }

  return sub_101393188(a1, a1 + 58, @"RemovedSims", "sims-to-resolve", 1);
}

void sub_10139DBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10139DCB8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[5];
  a1[4] = a2;
  a1[5] = a3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  result = a1[3];
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void sub_10139DD40(void *a1)
{
  v1 = *(a1[105] + 8 * (a1[108] / 0x55uLL)) + 48 * (a1[108] % 0x55uLL);
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 32);
    v4 = *(v3 + 14);
    v5 = PersonalityInfo::logPrefix(v3);
    v6 = *(v1 + 23);
    v7 = (v6 & 0x80u) != 0;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v1 + 8);
    }

    if (v7)
    {
      v8 = *v1;
    }

    else
    {
      v8 = v1;
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v13 = 1024;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sfiring: [%d] %s [persona:%s -> %s]", buf, 0x3Au);
  }

  v10 = 0;
  v11 = 0;
  *buf = dispatch_group_create();
  sub_100A63BB0();
}

void sub_10139E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, dispatch_object_t object, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, void *a37, dispatch_object_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139E7E8(void *a1)
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
        v6 = *(v3 + 816);
        *(v3 + 816) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v30 = 0;
        v31 = 0;
        v29 = 0;
        v7 = a1[7];
        v8 = *(v7 + 8);
        v9 = *(v7 + 16);
        while (v8 != v9)
        {
          v10 = v8[1];
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = v11;
              v13 = *v8;
              if (*v8)
              {
                v14 = v30;
                if (v30 >= v31)
                {
                  v16 = sub_1000053A0(&v29, v13);
                }

                else
                {
                  if (*(v13 + 23) < 0)
                  {
                    sub_100005F2C(v30, *v13, *(v13 + 8));
                  }

                  else
                  {
                    v15 = *v13;
                    v30->__r_.__value_.__r.__words[2] = *(v13 + 16);
                    *&v14->__r_.__value_.__l.__data_ = v15;
                  }

                  v16 = v14 + 1;
                }

                v30 = v16;
              }

              sub_100004A34(v12);
            }
          }

          v8 += 2;
        }

        v17 = *(v3 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#E %s%s******************************", buf, 0x16u);
        }

        v18 = 10;
        do
        {
          v19 = *(v3 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "";
            v33 = 2080;
            v34 = "";
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#E %s%s", buf, 0x16u);
          }

          --v18;
        }

        while (v18);
        v20 = *(v3 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          asString();
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          v35 = 2080;
          v36 = p_p;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#E %s%sfiring timed out!!!: %s", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v20 = *(v3 + 40);
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = v29;
          v25 = v30;
          sub_1000D1184(v29, v30, ",", 1uLL, &__p);
          v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          v35 = 2048;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
          v37 = 2082;
          v38 = v27;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#E %s%s%zu client(s) is stuck: %{public}s", buf, 0x2Au);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v21 = 10;
        do
        {
          v22 = *(v3 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "";
            v33 = 2080;
            v34 = "";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#E %s%s", buf, 0x16u);
          }

          --v21;
        }

        while (v21);
        v23 = *(v3 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#E %s%s******************************", buf, 0x16u);
        }

        sub_10139ECB0(v3);
        *buf = &v29;
        sub_1000087B4(buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10139EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_100004A34(v18);
  a17 = &a14;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10139ECB0(uint64_t a1)
{
  v2 = *(a1 + 816);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 816);
    *(a1 + 816) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 824);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    v5 = *(a1 + 824);
    *(a1 + 824) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  sub_1013B08A0(*(*(a1 + 840) + 8 * (*(a1 + 864) / 0x55uLL)) + 48 * (*(a1 + 864) % 0x55uLL));
  v6 = vaddq_s64(*(a1 + 864), xmmword_1017CD970);
  *(a1 + 864) = v6;
  if (v6.i64[0] < 0xAAuLL)
  {
    if (!v6.i64[1])
    {
      return;
    }
  }

  else
  {
    operator delete(**(a1 + 840));
    *(a1 + 840) += 8;
    *(a1 + 864) -= 85;
    if (!*(a1 + 872))
    {
      return;
    }
  }

  sub_10139DD40(a1);
}

void *sub_10139EE2C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10139EE60(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10139EEB0(void *a1)
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
        v27 = 0;
        v26 = 0uLL;
        v6 = a1[7];
        v7 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v7 != v8)
        {
          do
          {
            v9 = v7[1];
            if (v9)
            {
              v10 = std::__shared_weak_count::lock(v9);
              if (v10)
              {
                v11 = v10;
                v12 = *v7;
                if (*v7)
                {
                  v13 = *(&v26 + 1);
                  if (*(&v26 + 1) >= v27)
                  {
                    v15 = sub_1000053A0(&v26, v12);
                  }

                  else
                  {
                    if (*(v12 + 23) < 0)
                    {
                      sub_100005F2C(*(&v26 + 1), *v12, *(v12 + 8));
                    }

                    else
                    {
                      v14 = *v12;
                      *(*(&v26 + 1) + 16) = *(v12 + 16);
                      *v13 = v14;
                    }

                    v15 = v13 + 24;
                  }

                  *(&v26 + 1) = v15;
                }

                sub_100004A34(v11);
              }
            }

            v7 += 2;
          }

          while (v7 != v8);
          v16 = *(&v26 + 1);
          v17 = v26;
          v18 = *(&v26 + 1) - v26;
          if (*(&v26 + 1) != v26)
          {
            v19 = a1[9];
            v20 = *v19 + 1;
            *v19 = v20;
            v21 = *(v3 + 40);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_1000D1184(v17, v16, ",", 1uLL, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
              v30 = v20;
              v31 = 2048;
              v32 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
              v33 = 2082;
              v34 = p_p;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#E %s%s! %d secs delay on event queue by %zu client(s) : %{public}s", &buf, 0x30u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = *a1[9];
            }

            if (v20 == 30)
            {
              v22 = *(v3 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                v24 = v26;
                sub_1000D1184(v26, *(&v26 + 1), ",", 1uLL, &buf);
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_buf = &buf;
                }

                else
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 134218242;
                *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((*(&v24 + 1) - v24) >> 3);
                WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = p_buf;
                _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Long delay on event queue by %zu client(s) : %{public}s", &__p, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        buf.__r_.__value_.__r.__words[0] = &v26;
        sub_1000087B4(&buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10139F1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a9;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void *sub_10139F1EC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10139F238(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10139F294(uint64_t a1, const void **a2)
{
  v3 = (a1 + 312);
  v4 = *(a2 + 24);
  v5 = *(a1 + 336);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return;
    }

    goto LABEL_21;
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 335);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 320);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = a2) : (v11 = *a2), v10 >= 0 ? (v12 = v3) : (v12 = *v3), memcmp(v11, v12, v8)))
  {
LABEL_21:
    v13 = *(a1 + 40);
    if (v5)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 335) < 0)
        {
          v3 = *v3;
        }

        v14 = 136315650;
        v15 = "";
        v16 = 2080;
        v17 = "";
        v18 = 2080;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%smeid detected: %s", &v14, 0x20u);
      }

      if (sub_101395968(a1))
      {
        sub_10139A758(a1);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "";
      v16 = 2080;
      v17 = "";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#E %s%sno meid detected", &v14, 0x16u);
    }
  }
}

void sub_10139F448(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v188 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
  v11 = a3;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v13 = v10[4];
  if (!v13)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v13 = 0;
    v14 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = a3;
  sub_100004A34(v13);
  v14 = 0;
LABEL_9:
  theDict = 0;
  (*(*v12 + 200))(&buf, v12, v188);
  v194.__r_.__value_.__r.__words[0] = 0;
  theDict = buf.__r_.__value_.__l.__size_;
  buf.__r_.__value_.__l.__size_ = 0;
  sub_10001021C(&v194.__r_.__value_.__l.__data_);
  sub_10001021C(&buf.__r_.__value_.__r.__words[2]);
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  memset(&v186, 0, sizeof(v186));
  if (!theDict)
  {
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, qword_101FCB6E8);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  memset(&buf, 0, sizeof(buf));
  ctu::cf::assign();
  *&v186.__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
  *(&v186.__r_.__value_.__r.__words[1] + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
  *(&v186.__r_.__value_.__s + 23) = *(&buf.__r_.__value_.__s + 23);
  memset(&__dst, 0, sizeof(__dst));
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
LABEL_13:
    __dst = v186;
  }

  v183 = 0;
  v184 = 0;
  v16 = *(a1 + 656);
  v17 = v188;
  v18 = *v16;
  v19 = v16[1];
  if (v18 != v19)
  {
    while ((*v18)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v18)[2].__r_.__value_.__r.__words[0]) != v188)
    {
      v18 += 2;
      if (v18 == v19)
      {
        goto LABEL_23;
      }
    }
  }

  if (v18 == v19)
  {
LABEL_23:
    v20 = 0;
  }

  else
  {
    v20 = v18[1];
    v183 = *v18;
    v184 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 == 1 && v11[1] == 2 && *(a1 + 336) == 1)
  {
    sub_10139A758(a1);
    v21 = *(a1 + 656);
    v22 = *v21;
    v23 = v21[1];
    if (v22 != v23)
    {
      while ((*v22)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v22)[2].__r_.__value_.__r.__words[0]) != v188)
      {
        v22 += 2;
        if (v22 == v23)
        {
          goto LABEL_35;
        }
      }
    }

    if (v22 == v23)
    {
LABEL_35:
      v25 = 0;
      v24 = 0;
    }

    else
    {
      v25 = *v22;
      v24 = v22[1];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v183 = v25;
    v184 = v24;
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v25)
    {
      std::string::operator=(&__dst, v25 + 1);
    }
  }

  v26 = (a1 + 448);
  v27 = *(a1 + 448);
  if (!v27)
  {
    goto LABEL_49;
  }

  v28 = a1 + 448;
  do
  {
    if (*(v27 + 32) >= v188)
    {
      v28 = v27;
    }

    v27 = *(v27 + 8 * (*(v27 + 32) < v188));
  }

  while (v27);
  if (v28 == v26 || v188 < *(v28 + 32) || !sub_100071DF8((v28 + 40), &__dst) || (rest::operator==() & 1) == 0)
  {
LABEL_49:
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = subscriber::asString();
        asString();
        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v194;
        }

        else
        {
          v35 = v194.__r_.__value_.__r.__words[0];
        }

        v36 = &v186;
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v186.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        *v192 = v34;
        *&v192[8] = 2082;
        *&v192[10] = v35;
        *&v192[18] = 2080;
        *&v192[20] = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s--> carrier_bundle slot %s: %{public}s [iccid:%s] -- No PersonalityID while CB changed", &buf, 0x34u);
        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_354;
    }

    v30 = 0;
    v31 = *v11;
    if (v31 > 3)
    {
      if (v31 == 255 || v31 == 5)
      {
        goto LABEL_354;
      }

      v32 = 0;
      if (v31 == 4)
      {
LABEL_68:
        v30 = 0;
        v32 = 1;
      }
    }

    else
    {
      if (v31 - 2 < 2)
      {
        v32 = 0;
        v30 = 1;
        goto LABEL_69;
      }

      v32 = 0;
      if (v31 == 1)
      {
        goto LABEL_68;
      }
    }

LABEL_69:
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v171 = v13;
      v38 = subscriber::asString();
      v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v40 = *&__dst.__r_.__value_.__l.__data_;
      asString();
      if ((v39 & 0x80u) == 0)
      {
        v41 = v39;
      }

      else
      {
        v41 = *(&v40 + 1);
      }

      p_dst = &__dst;
      if ((v39 & 0x80u) != 0)
      {
        p_dst = v40;
      }

      v43 = v41 == 0;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      v44 = "<invalid>";
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      if (!v43)
      {
        v44 = p_dst;
      }

      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v194;
      }

      else
      {
        v45 = v194.__r_.__value_.__r.__words[0];
      }

      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      *v192 = v38;
      *&v192[8] = 2080;
      *&v192[10] = v44;
      *&v192[18] = 2082;
      *&v192[20] = v45;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s--> carrier_bundle slot %s [%s] event: %{public}s", &buf, 0x34u);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      v13 = v171;
      v11 = a3;
    }

    v46 = *v26;
    if (!*v26)
    {
      goto LABEL_93;
    }

    v47 = a1 + 448;
    do
    {
      if (*(v46 + 32) >= v188)
      {
        v47 = v46;
      }

      v46 = *(v46 + 8 * (*(v46 + 32) < v188));
    }

    while (v46);
    if (v47 != v26 && v188 >= *(v47 + 32) && sub_100071DF8((v47 + 40), &__dst))
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __dst;
      }

      *v192 = *v11;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v192[8], *(v11 + 1), *(v11 + 2));
      }

      else
      {
        *&v192[8] = *(v11 + 8);
        *&v192[24] = *(v11 + 3);
      }

      if (v11[55] < 0)
      {
        sub_100005F2C(&v192[32], *(v11 + 4), *(v11 + 5));
      }

      else
      {
        *&v192[32] = *(v11 + 2);
        *&v192[48] = *(v11 + 6);
      }

      if (v30)
      {
        v97 = 1;
      }

      else
      {
        v97 = *(v47 + 120);
      }

      LOBYTE(v193) = v97 & 1;
      if (v32)
      {
        v98 = 1;
      }

      else
      {
        v98 = *(v47 + 121);
      }

      HIBYTE(v193) = v98 & 1;
      v194.__r_.__value_.__r.__words[0] = &v188;
      v48 = sub_1013B7C88(a1 + 440, v188);
      std::string::operator=((v48 + 5), &buf);
    }

    else
    {
LABEL_93:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __dst;
      }

      *v192 = *v11;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v192[8], *(v11 + 1), *(v11 + 2));
      }

      else
      {
        *&v192[8] = *(v11 + 8);
        *&v192[24] = *(v11 + 3);
      }

      if (v11[55] < 0)
      {
        sub_100005F2C(&v192[32], *(v11 + 4), *(v11 + 5));
      }

      else
      {
        *&v192[32] = *(v11 + 2);
        *&v192[48] = *(v11 + 6);
      }

      LOBYTE(v193) = v30;
      HIBYTE(v193) = v32;
      v194.__r_.__value_.__r.__words[0] = &v188;
      v48 = sub_1013B7C88(a1 + 440, v188);
      std::string::operator=((v48 + 5), &buf);
    }

    *(v48 + 32) = *v192;
    if (*(v48 + 95) < 0)
    {
      operator delete(v48[9]);
    }

    v48[11] = *&v192[24];
    *(v48 + 9) = *&v192[8];
    v192[31] = 0;
    v192[8] = 0;
    if (*(v48 + 119) < 0)
    {
      operator delete(v48[12]);
      v49 = v192[31];
      *(v48 + 6) = *&v192[32];
      v48[14] = *&v192[48];
      v192[55] = 0;
      v192[32] = 0;
      *(v48 + 60) = v193;
      if (v49 < 0)
      {
        operator delete(*&v192[8]);
      }
    }

    else
    {
      *(v48 + 6) = *&v192[32];
      v48[14] = *&v192[48];
      v192[55] = 0;
      v192[32] = 0;
      *(v48 + 60) = v193;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v50 = v183;
    if (!v183)
    {
      goto LABEL_354;
    }

    v51 = &v183[1];
    if (!isReal() || !sub_100071DF8(v183[1].__r_.__value_.__r.__words, &__dst))
    {
      goto LABEL_354;
    }

    v52 = (*(a1 + 416) + 16 * subscriber::simSlotAsInstance());
    v53 = v52[1];
    *v52 = 0;
    v52[1] = 0;
    if (v53)
    {
      sub_100004A34(v53);
    }

    buf.__r_.__value_.__r.__words[0] = &v188;
    v176 = v14;
    if (*(sub_1013B7C88(a1 + 440, v188) + 121))
    {
LABEL_148:
      v68 = *(a1 + 120);
      if (v11[55] < 0)
      {
        sub_100005F2C(&v182, *(v11 + 4), *(v11 + 5));
      }

      else
      {
        v182 = *(v11 + 32);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v194, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
      }

      else
      {
        v194 = v182;
      }

      *&v190 = 0;
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v194;
      }

      v196 = 0;
      if (ctu::cf::convert_copy())
      {
        v69 = v190;
        *&v190 = v196;
        theString1.__r_.__value_.__r.__words[0] = v69;
        sub_100005978(&theString1.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v179 = v190;
      *&v190 = 0;
      sub_100005978(&v190);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      (*(*v68 + 16))(v68, v50 + 1, @"cb_ver", v179, @"info", 0, 0, 0);
      sub_100005978(&v179);
      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      v70 = *(a1 + 120);
      v173 = v11 + 8;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v181, *(v11 + 1), *(v11 + 2));
      }

      else
      {
        v181 = *(v11 + 8);
      }

      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v194, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
      }

      else
      {
        v194 = v181;
      }

      *&v190 = 0;
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v194;
      }

      v196 = 0;
      if (ctu::cf::convert_copy())
      {
        v71 = v190;
        *&v190 = v196;
        theString1.__r_.__value_.__r.__words[0] = v71;
        sub_100005978(&theString1.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v179 = v190;
      *&v190 = 0;
      sub_100005978(&v190);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      (*(*v70 + 16))(v70, v50 + 1, @"cb_id", v179, @"info", 0, 0, 0);
      sub_100005978(&v179);
      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v181.__r_.__value_.__l.__data_);
      }

      v179 = 0;
      v180 = 0;
      v72 = Registry::getServiceMap(*(a1 + 64));
      v73 = v72;
      if ((v74 & 0x8000000000000000) != 0)
      {
        v75 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
        v76 = 5381;
        do
        {
          v74 = v76;
          v77 = *v75++;
          v76 = (33 * v76) ^ v77;
        }

        while (v77);
      }

      std::mutex::lock(v72);
      buf.__r_.__value_.__r.__words[0] = v74;
      v78 = sub_100009510(&v73[1].__m_.__sig, &buf);
      v169 = v11 + 32;
      if (v78)
      {
        v80 = v78[3];
        v79 = v78[4];
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v73);
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = v79;
          sub_100004A34(v79);
          v82 = 0;
          goto LABEL_190;
        }
      }

      else
      {
        v80 = 0;
      }

      std::mutex::unlock(v73);
      v81 = 0;
      v82 = 1;
LABEL_190:
      if (v80)
      {
        v166 = v82;
        v83 = *(a1 + 656);
        v84 = *v83;
        v85 = *(v83 + 8);
        if (*v83 != v85)
        {
          while (!sub_100071DF8((*v84 + 24), v50[1].__r_.__value_.__r.__words))
          {
            v84 += 2;
            if (v84 == v85)
            {
              v84 = v85;
              break;
            }
          }

          v85 = *(v83 + 8);
        }

        if (v84 == v85)
        {
          v14 = v176;
          if (v166)
          {
LABEL_275:
            v179 = 0;
            v180 = 0;
            buf.__r_.__value_.__r.__words[0] = &v188;
            v114 = sub_1013B7C88(a1 + 440, v188);
            v115 = v183;
            if ((*(v114 + 121) & 1) != 0 || v183[2].__r_.__value_.__s.__data_[0] == 1 && (buf.__r_.__value_.__r.__words[0] = &v188, *(sub_1013B7C88(a1 + 440, v188) + 120) == 1))
            {
              v116 = *(a1 + 40);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
                v117 = v115[2].__r_.__value_.__r.__words[1];
                v118 = PersonalityInfo::logPrefix(v115);
                data = v115[1].__r_.__value_.__l.__data_;
                v120 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                v121 = v115[1].__r_.__value_.__l.__size_;
                v122 = subscriber::asString();
                if ((v120 & 0x80u) == 0)
                {
                  v123 = v120;
                }

                else
                {
                  v123 = v121;
                }

                if ((v120 & 0x80u) == 0)
                {
                  v124 = &v115[1];
                }

                else
                {
                  v124 = data;
                }

                v43 = v123 == 0;
                v125 = a3[55];
                v126 = *(a3 + 4);
                if (v43)
                {
                  v124 = "<invalid>";
                }

                v128 = v169;
                v127 = v173;
                if ((a3[31] & 0x80u) != 0)
                {
                  v127 = *(a3 + 1);
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                if (v125 < 0)
                {
                  v128 = v126;
                }

                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                *v192 = v117;
                *&v192[4] = 2080;
                *&v192[6] = v118;
                *&v192[14] = 2080;
                *&v192[16] = v124;
                *&v192[24] = 2080;
                *&v192[26] = v122;
                *&v192[34] = 2082;
                *&v192[36] = v127;
                *&v192[44] = 2082;
                *&v192[46] = v128;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I %s%sCB for personality [%d] %s %s updated, slot:%s, %{public}s:[%{public}s]", &buf, 0x4Eu);
                v14 = v176;
              }

              if (SHIBYTE(v115[1].__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v194, v115[1].__r_.__value_.__l.__data_, v115[1].__r_.__value_.__l.__size_);
              }

              else
              {
                v194 = v115[1];
              }

              v195 = 4;
              if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
                v129 = v195;
              }

              else
              {
                buf = v194;
                v129 = 4;
              }

              v192[0] = v129;
              *&v192[8] = v115;
              *&v192[16] = v184;
              if (v184)
              {
                atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_101399700(a1, &buf);
              if (*&v192[16])
              {
                sub_100004A34(*&v192[16]);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v194.__r_.__value_.__l.__data_);
              }
            }

            buf.__r_.__value_.__r.__words[0] = &v188;
            *(sub_1013B7C88(a1 + 440, v188) + 120) = 0;
            buf.__r_.__value_.__r.__words[0] = &v188;
            *(sub_1013B7C88(a1 + 440, v188) + 121) = 0;
            if ((v115[2].__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              v130 = *(a1 + 40);
              if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
              {
                v131 = v115[1].__r_.__value_.__l.__data_;
                v132 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                v133 = v115[1].__r_.__value_.__l.__size_;
                v134 = subscriber::asString();
                if ((v132 & 0x80u) == 0)
                {
                  v135 = v132;
                }

                else
                {
                  v135 = v133;
                }

                if ((v132 & 0x80u) == 0)
                {
                  v136 = &v115[1];
                }

                else
                {
                  v136 = v131;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                if (v135)
                {
                  v137 = v136;
                }

                else
                {
                  v137 = "<invalid>";
                }

                *v192 = v137;
                *&v192[8] = 2080;
                *&v192[10] = v134;
                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I %s%scheck if personality %s on slot %s can be activated now", &buf, 0x2Au);
              }

              v138 = v184;
              if (v184)
              {
                atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v196 = v115;
              v197 = v138;
              v139 = sub_101399F4C(a1, &v196);
              if (v138)
              {
                sub_100004A34(v138);
              }

              if (v139)
              {
                v140 = *(a1 + 656);
                v142 = *v140;
                v141 = v140[1];
                if (*v140 != v141)
                {
                  while (!sub_100071DF8((*v142 + 24), v115[1].__r_.__value_.__r.__words))
                  {
                    v142 += 16;
                    if (v142 == v141)
                    {
                      v142 = v141;
                      break;
                    }
                  }

                  v141 = *(*(a1 + 656) + 8);
                }

                v143 = *(a1 + 40);
                if (v142 != v141)
                {
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                  {
                    v144 = v115[2].__r_.__value_.__r.__words[1];
                    v178 = PersonalityInfo::logPrefix(v115);
                    v175 = v115[1].__r_.__value_.__l.__data_;
                    v145 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                    v146 = v115[1].__r_.__value_.__l.__size_;
                    v147 = subscriber::asString();
                    LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
                    *(buf.__r_.__value_.__r.__words + 4) = "";
                    if ((v145 & 0x80u) == 0)
                    {
                      v148 = v145;
                    }

                    else
                    {
                      v148 = v146;
                    }

                    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                    v149 = "<invalid>";
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                    v150 = v175;
                    if ((v145 & 0x80u) == 0)
                    {
                      v150 = &v115[1];
                    }

                    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                    if (v148)
                    {
                      v149 = v150;
                    }

                    *v192 = v144;
                    *&v192[4] = 2080;
                    *&v192[6] = v178;
                    *&v192[14] = 2080;
                    *&v192[16] = v149;
                    *&v192[24] = 2080;
                    *&v192[26] = v147;
                    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s activated on slot %s", &buf, 0x3Au);
                  }

                  v190 = 0uLL;
                  sub_1004CA38C();
                }

                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v151 = v115[2].__r_.__value_.__r.__words[1];
                  v152 = PersonalityInfo::logPrefix(v115);
                  v155 = v115[1].__r_.__value_.__l.__data_;
                  v153 = v115 + 1;
                  v154 = v155;
                  v156 = HIBYTE(v153->__r_.__value_.__r.__words[2]);
                  v157 = v153->__r_.__value_.__l.__size_;
                  v158 = subscriber::asString();
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  if ((v156 & 0x80u) == 0)
                  {
                    v159 = v156;
                  }

                  else
                  {
                    v159 = v157;
                  }

                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  v160 = "<invalid>";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  if ((v156 & 0x80u) == 0)
                  {
                    v161 = v153;
                  }

                  else
                  {
                    v161 = v154;
                  }

                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                  if (v159)
                  {
                    v160 = v161;
                  }

                  *v192 = v151;
                  *&v192[4] = 2080;
                  *&v192[6] = v152;
                  *&v192[14] = 2080;
                  *&v192[16] = v160;
                  *&v192[24] = 2080;
                  *&v192[26] = v158;
                  _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "#E %s%simpossible. Personality disappeared from array. [%d] %s %s slot %s", &buf, 0x3Au);
                  v14 = v176;
                }
              }

              if (v138)
              {
                sub_100004A34(v138);
              }
            }

            if (v180)
            {
              sub_100004A34(v180);
            }

            goto LABEL_354;
          }

LABEL_274:
          sub_100004A34(v81);
          goto LABEL_275;
        }

        v86 = v84[1];
        v164 = *v84;
        v14 = v176;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v82 = v166;
        if (v164 && !*(v164 + 49) && isReal())
        {
          v163 = v81;
          v87 = sub_100007A6C(a1 + 880, &v50[1].__r_.__value_.__l.__data_);
          if (a1 + 888 != v87)
          {
            theString1.__r_.__value_.__r.__words[0] = 0;
            v196 = @"CarrierName";
            memset(&buf, 0, sizeof(buf));
            sub_10005B328(&buf, &v196, &v197, 1uLL);
            (*(*a1 + 128))(&v194, a1, v50 + 1, &buf, 0);
            sub_100060DE8(&theString1, &v194.__r_.__value_.__l.__data_);
            sub_10000A1EC(&v194.__r_.__value_.__l.__data_);
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (theString1.__r_.__value_.__r.__words[0] && CFStringCompare(theString1.__r_.__value_.__l.__data_, @"Carrier", 0))
            {
              v196 = 0;
              (*(**(a1 + 120) + 24))(&buf);
              sub_100060DE8(&v196, &buf.__r_.__value_.__l.__data_);
              sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
              if (v196 && CFStringCompare(theString1.__r_.__value_.__l.__data_, v196, 0) == kCFCompareEqualTo)
              {
                v96 = 0;
              }

              else
              {
                log = *(a1 + 40);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v88 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
                  v89 = (v88 & 0x80u) != 0;
                  if ((v88 & 0x80u) != 0)
                  {
                    v88 = v50[1].__r_.__value_.__l.__size_;
                  }

                  if (v89)
                  {
                    v90 = v50[1].__r_.__value_.__l.__data_;
                  }

                  else
                  {
                    v90 = &v50[1];
                  }

                  if (v88)
                  {
                    v91 = v90;
                  }

                  else
                  {
                    v91 = "<invalid>";
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
                  *v192 = theString1.__r_.__value_.__r.__words[0];
                  *&v192[8] = 2080;
                  *&v192[10] = v91;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%sObtained CarrierName '%@' for persona %s", &buf, 0x2Au);
                }

                (*(**(a1 + 120) + 16))(*(a1 + 120), v50 + 1, @"carrier-name", theString1.__r_.__value_.__r.__words[0], @"info", 0, 0, 0);
                v92 = v87;
                memset(&buf, 0, sizeof(buf));
                ctu::cf::assign();
                v194.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v93 = buf.__r_.__value_.__r.__words[0];
                *(v194.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v94 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                if (*(v92 + 207) < 0)
                {
                  operator delete(*(v92 + 184));
                }

                v95 = v194.__r_.__value_.__r.__words[0];
                *(v92 + 184) = v93;
                *(v92 + 192) = v95;
                *(v92 + 199) = *(v194.__r_.__value_.__r.__words + 7);
                *(v92 + 207) = v94;
                v96 = 1;
                v87 = v92;
              }

              sub_100005978(&v196);
            }

            else
            {
              v96 = 0;
            }

            v109 = v96 | sub_1013A153C(a1, v51, v87 + 56, 1);
            sub_100005978(&theString1.__r_.__value_.__l.__data_);
            if (v109)
            {
              sub_10139C67C(a1, "carrier name detected", 0);
            }
          }

          v110 = *(v164 + 52);
          v194.__r_.__value_.__r.__words[0] = @"CellularDataPlanSettings";
          v194.__r_.__value_.__l.__size_ = @"DataOnlySubscription";
          memset(&buf, 0, sizeof(buf));
          sub_10005B328(&buf, &v194, &v194.__r_.__value_.__r.__words[2], 2uLL);
          (*(*v80 + 104))(&theString1, v80, v110, 1, &buf, 0, 0);
          v111 = theString1.__r_.__value_.__r.__words[0];
          LOBYTE(v196) = 0;
          v81 = v163;
          if (theString1.__r_.__value_.__r.__words[0])
          {
            v112 = CFGetTypeID(theString1.__r_.__value_.__l.__data_);
            if (v112 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v196, v111, v113);
              LOBYTE(v111) = v196;
            }

            else
            {
              LOBYTE(v111) = 0;
            }
          }

          sub_10000A1EC(&theString1.__r_.__value_.__l.__data_);
          if (buf.__r_.__value_.__r.__words[0])
          {
            buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v179 = 0;
          v180 = 0;
          sub_1013A1ECC(&v179, a1, v51, 2u, v111 & 1);
          if (v179)
          {
            sub_101398148(a1, "onCBReady", 1);
          }

          if (v180)
          {
            sub_100004A34(v180);
          }
        }

        if (v86)
        {
          sub_100004A34(v86);
        }
      }

      if (v82)
      {
        goto LABEL_275;
      }

      goto LABEL_274;
    }

    memset(&v194, 0, sizeof(v194));
    (*(**(a1 + 120) + 24))(&theString1);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    v194 = buf;
    sub_10000A1EC(&theString1.__r_.__value_.__l.__data_);
    memset(&theString1, 0, sizeof(theString1));
    (*(**(a1 + 120) + 24))(&v196);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    theString1 = buf;
    sub_10000A1EC(&v196);
    v54 = v11[55];
    if (v54 >= 0)
    {
      v55 = v11[55];
    }

    else
    {
      v55 = *(v11 + 5);
    }

    v56 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v194.__r_.__value_.__l.__size_;
    }

    if (v55 == v56 && (v54 >= 0 ? (v57 = v11 + 32) : (v57 = *(v11 + 4)), (v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v58 = &v194) : (v58 = v194.__r_.__value_.__r.__words[0]), !memcmp(v57, v58, v55)))
    {
      v99 = HIBYTE(theString1.__r_.__value_.__r.__words[2]);
      if ((theString1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v99 = theString1.__r_.__value_.__l.__size_;
      }

      if (!v99 || sub_100071DF8(&theString1, v11 + 1))
      {
        goto LABEL_144;
      }

      v100 = *(a1 + 40);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v174 = v50[2].__r_.__value_.__r.__words[1];
        v170 = PersonalityInfo::logPrefix(v50);
        v101 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
        v102 = v50[1].__r_.__value_.__l.__size_;
        v167 = v50[1].__r_.__value_.__l.__data_;
        v103 = subscriber::asString();
        if ((v101 & 0x80u) == 0)
        {
          v104 = v101;
        }

        else
        {
          v104 = v102;
        }

        v105 = v167;
        if ((v101 & 0x80u) == 0)
        {
          v105 = &v50[1];
        }

        if (!v104)
        {
          v105 = "<invalid>";
        }

        v106 = v11[31];
        p_theString1 = &theString1;
        if ((theString1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_theString1 = theString1.__r_.__value_.__r.__words[0];
        }

        v108 = *(v11 + 1);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        if (v106 >= 0)
        {
          v108 = v11 + 8;
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v192 = v174;
        *&v192[4] = 2080;
        *&v192[6] = v170;
        *&v192[14] = 2080;
        *&v192[16] = v105;
        *&v192[24] = 2080;
        *&v192[26] = v103;
        *&v192[34] = 2082;
        *&v192[36] = p_theString1;
        *&v192[44] = 2082;
        *&v192[46] = v108;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "#I %s%sCB ID don't match cache for [%d] %s %s, slot:%s, id:[%{public}s] -> [%{public}s]", &buf, 0x4Eu);
        v14 = v176;
      }
    }

    else
    {
      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v50[2].__r_.__value_.__r.__words[1];
        v168 = PersonalityInfo::logPrefix(v50);
        v60 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
        v61 = v50[1].__r_.__value_.__l.__size_;
        v165 = v50[1].__r_.__value_.__l.__data_;
        v62 = subscriber::asString();
        if ((v60 & 0x80u) == 0)
        {
          v63 = v60;
        }

        else
        {
          v63 = v61;
        }

        v64 = v165;
        if ((v60 & 0x80u) == 0)
        {
          v64 = &v50[1];
        }

        if (!v63)
        {
          v64 = "<invalid>";
        }

        v65 = v11[55];
        v66 = &v194;
        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v66 = v194.__r_.__value_.__r.__words[0];
        }

        v67 = *(v11 + 4);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        if (v65 >= 0)
        {
          v67 = v11 + 32;
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v192 = v172;
        *&v192[4] = 2080;
        *&v192[6] = v168;
        *&v192[14] = 2080;
        *&v192[16] = v64;
        *&v192[24] = 2080;
        *&v192[26] = v62;
        *&v192[34] = 2082;
        *&v192[36] = v66;
        *&v192[44] = 2082;
        *&v192[46] = v67;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%sCB VER don't match cache for [%d] %s %s, slot:%s, ver:[%{public}s] -> [%{public}s]", &buf, 0x4Eu);
        v14 = v176;
      }
    }

    buf.__r_.__value_.__r.__words[0] = &v188;
    *(sub_1013B7C88(a1 + 440, v188) + 121) = 1;
LABEL_144:
    if (SHIBYTE(theString1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(theString1.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v194.__r_.__value_.__l.__data_);
    }

    goto LABEL_148;
  }

LABEL_354:
  if (v184)
  {
    sub_100004A34(v184);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&theDict);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  sub_100005978((v57 - 120));
  sub_100005978(&a44);
  if (v55)
  {
    sub_100004A34(v55);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_10001021C(&a42);
  if ((a16 & 1) == 0)
  {
    sub_100004A34(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013A153C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v51 = 0;
  v52 = 0;
  v8 = *(a1 + 656);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*v8 != v10)
  {
    while (!sub_100071DF8((*v9 + 24), a2))
    {
      v9 += 2;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = *(v8 + 8);
  }

  if (v9 == v10)
  {
    if (v52 != 1)
    {
      goto LABEL_105;
    }

    v12 = 0;
    goto LABEL_97;
  }

  v11 = *v9;
  v12 = v9[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11 && ((*(v11 + 48) & 1) != 0 || a4))
  {
    v13 = sub_100007A6C(a1 + 216, a2);
    v14 = v13;
    if (a1 + 224 != v13)
    {
      v15 = *(v13 + 79);
      if (v15 < 0)
      {
        v15 = *(v13 + 64);
      }

      if (v15)
      {
        v50 = 0;
        (*(**(a1 + 120) + 24))(__p);
        sub_100060DE8(&v50, __p);
        sub_10000A1EC(__p);
        if (!v50)
        {
LABEL_95:
          sub_100005978(&v50);
          goto LABEL_96;
        }

        theString1 = 0;
        v63 = @"DisplayNormalizedPhoneNumber";
        memset(__p, 0, sizeof(__p));
        sub_10005B328(__p, &v63, &v64, 1uLL);
        (*(*a1 + 128))(&v61, a1, a2, __p, kCFBooleanTrue);
        v16 = v61;
        LOBYTE(v54) = 0;
        if (v61)
        {
          v17 = CFGetTypeID(v61);
          if (v17 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v54, v16, v18);
          }
        }

        v19 = v54;
        sub_10000A1EC(&v61);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v19)
        {
          v48 = 0;
          if (*(v14 + 103) < 0)
          {
            sub_100005F2C(v44, *(v14 + 80), *(v14 + 88));
          }

          else
          {
            *v44 = *(v14 + 80);
            v45 = *(v14 + 96);
          }

          if (SHIBYTE(v45) < 0)
          {
            sub_100005F2C(&v61, v44[0], v44[1]);
          }

          else
          {
            v61 = *v44;
            v62 = v45;
          }

          v53 = 0;
          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(__p, v61, *(&v61 + 1));
          }

          else
          {
            *__p = v61;
            __p[2] = v62;
          }

          v54 = 0;
          if (ctu::cf::convert_copy())
          {
            v20 = v53;
            v53 = v54;
            v63 = v20;
            sub_100005978(&v63);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v48 = v53;
          v53 = 0;
          sub_100005978(&v53);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[0]);
          }

          *&v61 = 0;
          *&v61 = CFPhoneNumberCreate();
          if (v61)
          {
            String = CFPhoneNumberCreateString();
LABEL_63:
            v23 = theString1;
            theString1 = String;
            __p[0] = v23;
            sub_100005978(__p);
          }
        }

        else
        {
          v48 = 0;
          if (*(v14 + 79) < 0)
          {
            sub_100005F2C(__dst, *(v14 + 56), *(v14 + 64));
          }

          else
          {
            *__dst = *(v14 + 56);
            v47 = *(v14 + 72);
          }

          if (SHIBYTE(v47) < 0)
          {
            sub_100005F2C(&v61, __dst[0], __dst[1]);
          }

          else
          {
            v61 = *__dst;
            v62 = v47;
          }

          v53 = 0;
          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(__p, v61, *(&v61 + 1));
          }

          else
          {
            *__p = v61;
            __p[2] = v62;
          }

          v54 = 0;
          if (ctu::cf::convert_copy())
          {
            v22 = v53;
            v53 = v54;
            v63 = v22;
            sub_100005978(&v63);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v48 = v53;
          v53 = 0;
          sub_100005978(&v53);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (SHIBYTE(v47) < 0)
          {
            operator delete(__dst[0]);
          }

          *&v61 = 0;
          *&v61 = CFPhoneNumberCreate();
          if (v61)
          {
            String = CFPhoneNumberCreateString();
            goto LABEL_63;
          }
        }

        sub_100936194(&v61);
        sub_100005978(&v48);
        if (!theString1)
        {
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = "";
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = "";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#W %s%sfail to build formatted phone number", __p, 0x16u);
          }

          goto LABEL_94;
        }

        *&v61 = 0;
        (*(**(a1 + 120) + 24))(__p);
        sub_100060DE8(&v61, __p);
        sub_10000A1EC(__p);
        if (!v61 || CFStringCompare(theString1, v61, 0))
        {
          if (v52 == 1)
          {
            sub_100222570(&v51, &theString1);
          }

          else
          {
            sub_10005C7A4(&v51, &theString1);
            LOBYTE(v52) = 1;
          }

          v25 = v61;
          v26 = *(a1 + 40);
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (v27)
            {
              v28 = *(a2 + 23);
              v29 = (v28 & 0x80u) != 0;
              if ((v28 & 0x80u) != 0)
              {
                v28 = *(a2 + 8);
              }

              if (v29)
              {
                v30 = *a2;
              }

              else
              {
                v30 = a2;
              }

              if (v28)
              {
                v31 = v30;
              }

              else
              {
                v31 = "<invalid>";
              }

              LODWORD(__p[0]) = 136316162;
              *(__p + 4) = "";
              WORD2(__p[1]) = 2080;
              *(&__p[1] + 6) = "";
              HIWORD(__p[2]) = 2080;
              v56 = v31;
              v57 = 2112;
              v58 = v25;
              v59 = 2112;
              v60 = theString1;
              v32 = "#I %s%sreplacing formatted MDN for %s from '%@' to '%@'";
              v33 = v26;
              v34 = 52;
LABEL_92:
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, __p, v34);
            }
          }

          else if (v27)
          {
            v35 = *(a2 + 23);
            v36 = (v35 & 0x80u) != 0;
            v37 = *a2;
            if ((v35 & 0x80u) != 0)
            {
              v35 = *(a2 + 8);
            }

            if (!v36)
            {
              v37 = a2;
            }

            if (v35)
            {
              v38 = v37;
            }

            else
            {
              v38 = "<invalid>";
            }

            LODWORD(__p[0]) = 136315906;
            *(__p + 4) = "";
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = "";
            HIWORD(__p[2]) = 2080;
            v56 = v38;
            v57 = 2112;
            v58 = theString1;
            v32 = "#I %s%ssetting formatted MDN for %s to '%@'";
            v33 = v26;
            v34 = 42;
            goto LABEL_92;
          }
        }

        sub_100005978(&v61);
LABEL_94:
        sub_100005978(&theString1);
        goto LABEL_95;
      }
    }
  }

LABEL_96:
  if ((v52 & 1) == 0)
  {
    v42 = 0;
    if (!v12)
    {
      return v42 & 1;
    }

    goto LABEL_103;
  }

LABEL_97:
  memset(__p, 0, sizeof(__p));
  ctu::cf::assign();
  v39 = __p[0];
  *&v61 = __p[1];
  *(&v61 + 7) = *(&__p[1] + 7);
  v40 = HIBYTE(__p[2]);
  if (*(a3 + 127) < 0)
  {
    operator delete(*(a3 + 104));
  }

  v41 = v61;
  *(a3 + 104) = v39;
  *(a3 + 112) = v41;
  *(a3 + 119) = *(&v61 + 7);
  *(a3 + 127) = v40;
  (*(**(a1 + 120) + 16))(*(a1 + 120), a2, @"formatted-mdn", v51, @"info", 0, 0, 0);
  v42 = v52;
  if (!v12)
  {
    if (v52)
    {
      v42 = 1;
LABEL_104:
      sub_100005978(&v51);
      return v42 & 1;
    }

LABEL_105:
    v42 = 0;
    return v42 & 1;
  }

LABEL_103:
  sub_100004A34(v12);
  if (v52)
  {
    goto LABEL_104;
  }

  return v42 & 1;
}