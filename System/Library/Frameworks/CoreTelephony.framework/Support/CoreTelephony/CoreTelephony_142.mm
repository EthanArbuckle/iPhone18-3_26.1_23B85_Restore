void sub_101262480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, const void *a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    sub_10001021C(&a16);
    sub_10001021C(&a30);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101262590(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v17 = *(a2 + 2);
  }

  os_unfair_lock_lock((a1 + 24));
  if ((sub_1012642AC(*(a1 + 40)) & 1) == 0)
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#I We are not supposed to initiate any messaging";
      v8 = v10;
      v9 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (!*(a1 + 136))
  {
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "We don't have any state info, this should not happen", buf, 2u);
    }

    goto LABEL_17;
  }

  v3 = sub_10031B8D0((a1 + 144), &__p);
  v4 = *(a1 + 32);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      v19 = p_p;
      v7 = "#I Devices %s has all the resources we can support, no sync needed";
      v8 = v4;
      v9 = 12;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    if (v17 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    *buf = 136315138;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device %s may need some resources that we can support", buf, 0xCu);
  }

  v12 = 1;
LABEL_18:
  os_unfair_lock_unlock((a1 + 24));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_1012627A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012627B0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v76, *a2, *(a2 + 1));
  }

  else
  {
    v76 = *a2;
    v77 = *(a2 + 2);
  }

  sub_101264ECC(&v78, a3);
  os_unfair_lock_lock(v4 + 6);
  if (sub_10031B7D4((a1 + 144), &v76))
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v77 >= 0)
      {
        v6 = &v76;
      }

      else
      {
        v6 = v76;
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Device %s already has all the resources we can support, no further action needed", buf, 0xCu);
    }

    goto LABEL_194;
  }

  v83 = 0;
  v84 = 0;
  v82 = &v83;
  v7 = v78;
  if (v78 == v79)
  {
    goto LABEL_187;
  }

  v8 = (a1 + 128);
  do
  {
    v9 = (v7 + 4);
    v10 = *v8;
    if (!*v8)
    {
      goto LABEL_19;
    }

    v11 = v7 + 5;
    v12 = *v9;
    v13 = a1 + 128;
    do
    {
      if (*(v10 + 32) >= v12)
      {
        v13 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < v12));
    }

    while (v10);
    if (v13 == v8 || v12 < *(v13 + 32))
    {
LABEL_19:
      v14 = *(a1 + 32);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      if (v77 >= 0)
      {
        v15 = &v76;
      }

      else
      {
        v15 = v76;
      }

      v16 = *v9;
      if (*v9 > 7)
      {
        switch(v16)
        {
          case 8:
            v17 = "gsm";
            goto LABEL_71;
          case 16:
            v17 = "scdma";
            goto LABEL_71;
          case 32:
            v17 = "nr";
            goto LABEL_71;
        }
      }

      else
      {
        switch(v16)
        {
          case 1:
            v17 = "umts";
            goto LABEL_71;
          case 2:
            v17 = "cdma";
            goto LABEL_71;
          case 4:
            v17 = "lte";
LABEL_71:
            *buf = 136315394;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = v17;
            v39 = v14;
            v40 = "#I Device %s has database type %s which we don't support";
            v41 = 22;
LABEL_72:
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
            goto LABEL_73;
        }
      }

      v17 = "unknown";
      goto LABEL_71;
    }

    *buf = v7 + 4;
    v18 = sub_100E3C9C0(a1 + 120, v12);
    if ((*(v18 + 63) & 0x8000000000000000) != 0)
    {
      if (v18[6])
      {
        goto LABEL_34;
      }

LABEL_60:
      v36 = *(a1 + 32);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      v37 = *v9;
      if (*v9 > 7)
      {
        switch(v37)
        {
          case 8:
            v38 = "gsm";
            goto LABEL_119;
          case 16:
            v38 = "scdma";
            goto LABEL_119;
          case 32:
            v38 = "nr";
            goto LABEL_119;
        }
      }

      else
      {
        switch(v37)
        {
          case 1:
            v38 = "umts";
            goto LABEL_119;
          case 2:
            v38 = "cdma";
            goto LABEL_119;
          case 4:
            v38 = "lte";
LABEL_119:
            *buf = 136315138;
            *&buf[4] = v38;
            v39 = v36;
            v40 = "#I We don't have version info for the supported db %s, (possibly using bootstrap database)";
            v41 = 12;
            goto LABEL_72;
        }
      }

      v38 = "unknown";
      goto LABEL_119;
    }

    if (!*(v18 + 63))
    {
      goto LABEL_60;
    }

LABEL_34:
    if ((*(v7 + 63) & 0x8000000000000000) != 0)
    {
      if (v7[6])
      {
        goto LABEL_36;
      }

LABEL_81:
      v45 = *(a1 + 32);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
LABEL_133:
        memset(buf, 0, 48);
        __p[0] = v7 + 4;
        v57 = sub_100E3C9C0(a1 + 120, *v9);
        if (*(v57 + 63) < 0)
        {
          sub_100005F2C(buf, v57[5], v57[6]);
        }

        else
        {
          *buf = *(v57 + 5);
          *&buf[16] = v57[7];
        }

        __p[0] = v7 + 4;
        v58 = sub_100E3C9C0(a1 + 120, *v9);
        if ((*(v58 + 87) & 0x80000000) == 0)
        {
          *&buf[24] = *(v58 + 4);
          *&buf[40] = v58[10];
          goto LABEL_163;
        }

        goto LABEL_162;
      }

      v73 = v4;
      if (v77 >= 0)
      {
        v46 = &v76;
      }

      else
      {
        v46 = v76;
      }

      v47 = *v9;
      if (*v9 > 7)
      {
        switch(v47)
        {
          case 8:
            v48 = "gsm";
            goto LABEL_125;
          case 16:
            v48 = "scdma";
            goto LABEL_125;
          case 32:
            v48 = "nr";
            goto LABEL_125;
        }
      }

      else
      {
        switch(v47)
        {
          case 1:
            v48 = "umts";
            goto LABEL_125;
          case 2:
            v48 = "cdma";
            goto LABEL_125;
          case 4:
            v48 = "lte";
LABEL_125:
            sub_10000501C(__p, v48);
            v52 = v81;
            v53 = __p[0];
            v85 = v7 + 4;
            v54 = sub_100E3C9C0(a1 + 120, *v9);
            if (v52 >= 0)
            {
              v55 = __p;
            }

            else
            {
              v55 = v53;
            }

            v56 = v54 + 5;
            if (*(v54 + 63) < 0)
            {
              v56 = *v56;
            }

            *buf = 136315650;
            *&buf[4] = v46;
            *&buf[12] = 2080;
            *&buf[14] = v55;
            *&buf[22] = 2080;
            *&buf[24] = v56;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Device %s has %s db with no associated version info (possibly using bootstrap database), our version is %s, so it needs the resources for this db", buf, 0x20u);
            if (v81 < 0)
            {
              operator delete(__p[0]);
            }

            v4 = v73;
            goto LABEL_133;
        }
      }

      v48 = "";
      goto LABEL_125;
    }

    if (!*(v7 + 63))
    {
      goto LABEL_81;
    }

LABEL_36:
    *buf = v7 + 4;
    v19 = sub_100E3C9C0(a1 + 120, *v9);
    v20 = *(v7 + 63);
    v21 = (v7 + 5);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = v7[5];
      v20 = v7[6];
    }

    v24 = v19[5];
    v22 = v19 + 5;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v22[1];
    }

    if (v25 >= 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = v23;
    }

    if (v26 >= v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v21, v27, v28);
    if (v29)
    {
      v30 = v29 < 0;
    }

    else
    {
      v30 = v20 < v26;
    }

    v31 = *(a1 + 32);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_157;
      }

      v33 = v76;
      if (v77 >= 0)
      {
        v33 = &v76;
      }

      v34 = *v9;
      v72 = v33;
      if (*v9 > 7)
      {
        switch(v34)
        {
          case 8:
            v35 = "gsm";
            goto LABEL_148;
          case 16:
            v35 = "scdma";
            goto LABEL_148;
          case 32:
            v35 = "nr";
            goto LABEL_148;
        }
      }

      else
      {
        switch(v34)
        {
          case 1:
            v35 = "umts";
            goto LABEL_148;
          case 2:
            v35 = "cdma";
            goto LABEL_148;
          case 4:
            v35 = "lte";
LABEL_148:
            sub_10000501C(__p, v35);
            if (v81 >= 0)
            {
              v59 = __p;
            }

            else
            {
              v59 = __p[0];
            }

            if (*(v7 + 63) < 0)
            {
              v11 = *v11;
            }

            v85 = v7 + 4;
            v60 = sub_100E3C9C0(a1 + 120, *v9);
            v61 = v60 + 5;
            if (*(v60 + 63) < 0)
            {
              v61 = *v61;
            }

            *buf = 136315906;
            *&buf[4] = v72;
            *&buf[12] = 2080;
            *&buf[14] = v59;
            *&buf[22] = 2080;
            *&buf[24] = v11;
            *&buf[32] = 2080;
            *&buf[34] = v61;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Device %s has %s version %s < our version %s, so it needs the resources for this db", buf, 0x2Au);
            if (v81 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_157:
            memset(buf, 0, 48);
            __p[0] = v7 + 4;
            v62 = sub_100E3C9C0(a1 + 120, *v9);
            if (*(v62 + 63) < 0)
            {
              sub_100005F2C(buf, v62[5], v62[6]);
            }

            else
            {
              *buf = *(v62 + 5);
              *&buf[16] = v62[7];
            }

            __p[0] = v7 + 4;
            v58 = sub_100E3C9C0(a1 + 120, *v9);
            if ((*(v58 + 87) & 0x80000000) == 0)
            {
              *&buf[24] = *(v58 + 4);
              *&buf[40] = v58[10];
              goto LABEL_163;
            }

LABEL_162:
            sub_100005F2C(&buf[24], v58[8], v58[9]);
LABEL_163:
            sub_101264AB4(&v82, v7 + 8);
            if (buf[47] < 0)
            {
              operator delete(*&buf[24]);
            }

            if (buf[23] < 0)
            {
              v63 = *buf;
LABEL_167:
              operator delete(v63);
              goto LABEL_73;
            }

            goto LABEL_73;
        }
      }

      v35 = "";
      goto LABEL_148;
    }

    if (!v32)
    {
      goto LABEL_73;
    }

    v49 = v76;
    if (v77 >= 0)
    {
      v49 = &v76;
    }

    v50 = *v9;
    v74 = v49;
    if (*v9 > 7)
    {
      if (v50 == 8)
      {
        v51 = "gsm";
        goto LABEL_169;
      }

      if (v50 != 16)
      {
        if (v50 == 32)
        {
          v51 = "nr";
          goto LABEL_169;
        }

        goto LABEL_144;
      }

      v51 = "scdma";
    }

    else
    {
      if (v50 == 1)
      {
        v51 = "umts";
        goto LABEL_169;
      }

      if (v50 != 2)
      {
        if (v50 == 4)
        {
          v51 = "lte";
          goto LABEL_169;
        }

LABEL_144:
        v51 = "";
        goto LABEL_169;
      }

      v51 = "cdma";
    }

LABEL_169:
    sub_10000501C(__p, v51);
    if (v81 >= 0)
    {
      v64 = __p;
    }

    else
    {
      v64 = __p[0];
    }

    if (*(v7 + 63) < 0)
    {
      v11 = *v11;
    }

    v85 = v7 + 4;
    v65 = sub_100E3C9C0(a1 + 120, *v9);
    v66 = v65 + 5;
    if (*(v65 + 63) < 0)
    {
      v66 = *v66;
    }

    *buf = 136315906;
    *&buf[4] = v74;
    *&buf[12] = 2080;
    *&buf[14] = v64;
    *&buf[22] = 2080;
    *&buf[24] = v11;
    *&buf[32] = 2080;
    *&buf[34] = v66;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Device %s has %s version %s >= our version %s, so it doesn't need the resources for this db", buf, 0x2Au);
    if (v81 < 0)
    {
      v63 = __p[0];
      goto LABEL_167;
    }

LABEL_73:
    v42 = v7[1];
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
        v43 = v7[2];
        v44 = *v43 == v7;
        v7 = v43;
      }

      while (!v44);
    }

    v7 = v43;
  }

  while (v43 != v79);
  if (v84)
  {
    if (sub_1012642AC(*(a1 + 40)))
    {
      v67 = *(a1 + 32);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        if (v77 >= 0)
        {
          v68 = &v76;
        }

        else
        {
          v68 = v76;
        }

        *buf = 136315138;
        *&buf[4] = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Sharing database file(s) with device %s", buf, 0xCu);
      }

      sub_101264C6C(buf, &v82);
      v69 = *(a1 + 112);
      if (!v69)
      {
        sub_100022DB4();
      }

      (*(*v69 + 48))(v69, buf);
      sub_1001A8E08(buf, *&buf[8]);
    }

    goto LABEL_193;
  }

LABEL_187:
  v70 = *(a1 + 32);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    if (v77 >= 0)
    {
      v71 = &v76;
    }

    else
    {
      v71 = v76;
    }

    *buf = 136315138;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Don't need to share any database file with device %s at the current state", buf, 0xCu);
  }

  sub_1003825DC((a1 + 144), &v76);
LABEL_193:
  sub_1001A8E08(&v82, v83);
LABEL_194:
  os_unfair_lock_unlock(v4 + 6);
  sub_100077CD4(&v78, v79[0]);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }
}

void sub_1012632F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36)
{
  if (a2)
  {
    if (a34 < 0)
    {
      operator delete(__p);
    }

    sub_1001A8E08(&a35, a36);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012633C0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_101264C6C(&v51, a2);
  os_unfair_lock_lock(v2 + 6);
  v54 = 0;
  v55 = 0;
  v53 = &v54;
  v3 = v51;
  if (v51 == v52)
  {
    goto LABEL_143;
  }

  v48 = v2;
  v4 = (a1 + 128);
  do
  {
    if ((*(v3 + 87) & 0x8000000000000000) != 0)
    {
      if (v3[9])
      {
        goto LABEL_5;
      }

LABEL_21:
      v11 = *(a1 + 32);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      v12 = *(v3 + 8);
      if (v12 > 7)
      {
        switch(v12)
        {
          case 8:
            v13 = "gsm";
            goto LABEL_103;
          case 16:
            v13 = "scdma";
            goto LABEL_103;
          case 32:
            v13 = "nr";
            goto LABEL_103;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v13 = "umts";
            goto LABEL_103;
          case 2:
            v13 = "cdma";
            goto LABEL_103;
          case 4:
            v13 = "lte";
LABEL_103:
            *buf = 136315138;
            *&buf[4] = v13;
            v38 = v11;
            v39 = "Incoming %s database has no file associated with it";
LABEL_140:
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);
            goto LABEL_75;
        }
      }

      v13 = "unknown";
      goto LABEL_103;
    }

    if (!*(v3 + 87))
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((*(v3 + 63) & 0x8000000000000000) != 0)
    {
      if (v3[6])
      {
        goto LABEL_7;
      }

LABEL_28:
      v14 = *(a1 + 32);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      v15 = *(v3 + 8);
      if (v15 > 7)
      {
        switch(v15)
        {
          case 8:
            v16 = "gsm";
            goto LABEL_139;
          case 16:
            v16 = "scdma";
            goto LABEL_139;
          case 32:
            v16 = "nr";
            goto LABEL_139;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = "umts";
            goto LABEL_139;
          case 2:
            v16 = "cdma";
            goto LABEL_139;
          case 4:
            v16 = "lte";
LABEL_139:
            *buf = 136315138;
            *&buf[4] = v16;
            v38 = v14;
            v39 = "Incoming %s database has no version associated with it";
            goto LABEL_140;
        }
      }

      v16 = "unknown";
      goto LABEL_139;
    }

    if (!*(v3 + 63))
    {
      goto LABEL_28;
    }

LABEL_7:
    if (!*v4)
    {
      goto LABEL_14;
    }

    v5 = *(v3 + 8);
    v6 = (a1 + 128);
    v7 = *v4;
    do
    {
      if (*(v7 + 8) >= v5)
      {
        v6 = v7;
      }

      v7 = v7[*(v7 + 8) < v5];
    }

    while (v7);
    if (v6 == v4 || v5 < *(v6 + 8))
    {
LABEL_14:
      v8 = *(a1 + 32);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      v9 = *(v3 + 8);
      if (v9 > 7)
      {
        switch(v9)
        {
          case 8:
            v10 = "gsm";
            break;
          case 16:
            v10 = "scdma";
            break;
          case 32:
            v10 = "nr";
            break;
          default:
            goto LABEL_70;
        }
      }

      else
      {
        switch(v9)
        {
          case 1:
            v10 = "umts";
            break;
          case 2:
            v10 = "cdma";
            break;
          case 4:
            v10 = "lte";
            break;
          default:
LABEL_70:
            v10 = "unknown";
            break;
        }
      }

      *buf = 136315138;
      *&buf[4] = v10;
      v32 = v8;
      v33 = "#I Incoming %s database is not supported";
      v34 = 12;
LABEL_74:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
      goto LABEL_75;
    }

    v17 = sub_10000BA08(*v4, v5);
    v18 = *(v3 + 63);
    v19 = *(v17 + 23);
    if (v19 >= 0)
    {
      v20 = *(v17 + 23);
    }

    else
    {
      v20 = v17[1];
    }

    if (v19 < 0)
    {
      v17 = *v17;
    }

    if (v18 >= 0)
    {
      v21 = *(v3 + 63);
    }

    else
    {
      v21 = v3[6];
    }

    if (v18 >= 0)
    {
      v22 = v3 + 5;
    }

    else
    {
      v22 = v3[5];
    }

    if (v21 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v49 = v22;
    v24 = memcmp(v17, v22, v23);
    if (v24)
    {
      v25 = v24 < 0;
    }

    else
    {
      v25 = v20 < v21;
    }

    v26 = *(a1 + 32);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (!v25)
    {
      if (v27)
      {
        v30 = *(v3 + 8);
        if (v30 > 7)
        {
          switch(v30)
          {
            case 8:
              v31 = "gsm";
              break;
            case 16:
              v31 = "scdma";
              break;
            case 32:
              v31 = "nr";
              break;
            default:
              goto LABEL_109;
          }
        }

        else
        {
          switch(v30)
          {
            case 1:
              v31 = "umts";
              break;
            case 2:
              v31 = "cdma";
              break;
            case 4:
              v31 = "lte";
              break;
            default:
LABEL_109:
              v31 = "unknown";
              break;
          }
        }

        v40 = sub_10000BA08(*v4, v30);
        if (*(v40 + 23) >= 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = *v40;
        }

        *buf = 136315650;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        *&buf[22] = 2080;
        *&buf[24] = v41;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Incoming %s database with version %s <= our version %s will not be used for updating", buf, 0x20u);
      }

      v42 = v3 + 8;
      v43 = (*(**(a1 + 56) + 112))(*(a1 + 56), v3 + 8);
      v44 = v43;
      if (!v43)
      {
        goto LABEL_75;
      }

      v45 = *(a1 + 32);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      if (*(v3 + 87) < 0)
      {
        v42 = *v42;
      }

      v46 = strerror(v44);
      *buf = 136315394;
      *&buf[4] = v42;
      *&buf[12] = 2080;
      *&buf[14] = v46;
      v32 = v45;
      v33 = "#N Could not remove %s file: %s";
      v34 = 22;
      goto LABEL_74;
    }

    if (!v27)
    {
      goto LABEL_114;
    }

    v28 = *(v3 + 8);
    if (v28 > 7)
    {
      switch(v28)
      {
        case 8:
          v29 = "gsm";
          break;
        case 16:
          v29 = "scdma";
          break;
        case 32:
          v29 = "nr";
          break;
        default:
          goto LABEL_108;
      }
    }

    else
    {
      switch(v28)
      {
        case 1:
          v29 = "umts";
          break;
        case 2:
          v29 = "cdma";
          break;
        case 4:
          v29 = "lte";
          break;
        default:
LABEL_108:
          v29 = "unknown";
          break;
      }
    }

    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = v49;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Incoming %s database with version %s will be used for updating", buf, 0x16u);
    LOBYTE(v18) = *(v3 + 63);
LABEL_114:
    memset(buf, 0, sizeof(buf));
    if ((v18 & 0x80) != 0)
    {
      sub_100005F2C(buf, v3[5], v3[6]);
    }

    else
    {
      *buf = *(v3 + 5);
      *&buf[16] = v3[7];
    }

    if (*(v3 + 87) < 0)
    {
      sub_100005F2C(&buf[24], v3[8], v3[9]);
    }

    else
    {
      *&buf[24] = *(v3 + 4);
      *&buf[40] = v3[10];
    }

    sub_101264AB4(&v53, v3 + 8);
    if (buf[47] < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

LABEL_75:
    v35 = v3[1];
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
        v36 = v3[2];
        v37 = *v36 == v3;
        v3 = v36;
      }

      while (!v37);
    }

    v3 = v36;
  }

  while (v36 != v52);
  v2 = v48;
  if (v55)
  {
    (*(**(a1 + 72) + 88))(*(a1 + 72), &v53);
    goto LABEL_145;
  }

LABEL_143:
  v47 = *(a1 + 32);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Incoming database resources will not be used for updating", buf, 2u);
  }

LABEL_145:
  sub_1001A8E08(&v53, v54);
  os_unfair_lock_unlock(v2 + 6);
  sub_1001A8E08(&v51, v52[0]);
}

void sub_101263BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1001A8E08(&a22, a23);
  sub_10004F058(exception_object);
}

void sub_101263C1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v5 = *(a1 + 120);
  if (v5 != (a1 + 128))
  {
    do
    {
      v6 = *v4;
      if (!*v4)
      {
LABEL_9:
        operator new();
      }

      v7 = *(v5 + 8);
      while (1)
      {
        while (1)
        {
          v8 = v6;
          v9 = *(v6 + 32);
          if (v9 <= v7)
          {
            break;
          }

          v6 = *v8;
          if (!*v8)
          {
            goto LABEL_9;
          }
        }

        if (v9 >= v7)
        {
          break;
        }

        v6 = v8[1];
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 128));
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_101263D8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  sub_1002859C8(v12 + 8, v11);
  sub_100077CD4(v10, *(v10 + 8));
  sub_10004F058(a1);
}

void sub_101263DBC(uint64_t a1, uint64_t a2)
{
  sub_1012650F4(&v32, a2);
  os_unfair_lock_lock((a1 + 24));
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Applying the update information to current state", buf, 2u);
  }

  v4 = v32;
  if (v32 != v33)
  {
    v5 = 0;
    v6 = (a1 + 128);
    while (*(v4 + 10) || *(v4 + 72) != 1)
    {
LABEL_26:
      v14 = v4[1];
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
          v15 = v4[2];
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == v33)
      {
        if (v5)
        {
          v30 = *(a1 + 32);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Clearing out the fDevicesWithRequirementsMet record", buf, 2u);
          }

          sub_101265378(a1 + 144);
        }

        goto LABEL_73;
      }
    }

    memset(__p, 0, sizeof(__p));
    *buf = 0u;
    if (*(v4 + 71) < 0)
    {
      sub_100005F2C(buf, v4[6], v4[7]);
    }

    else
    {
      *buf = *(v4 + 3);
      __p[0] = v4[8];
    }

    v7 = (v4 + 4);
    *v36 = v4 + 4;
    v8 = sub_101264804((a1 + 184), *(v4 + 8));
    if (*(v8 + 47) < 0)
    {
      sub_100005F2C(&__p[1], v8[3], v8[4]);
    }

    else
    {
      v9 = *(v8 + 3);
      __p[3] = v8[5];
      *&__p[1] = v9;
    }

    if (*v6)
    {
      v10 = *v7;
      v11 = (a1 + 128);
      v12 = *v6;
      do
      {
        if (*(v12 + 8) >= v10)
        {
          v11 = v12;
        }

        v12 = v12[*(v12 + 8) < v10];
      }

      while (v12);
      if (v11 != v6 && v10 >= *(v11 + 8))
      {
        v17 = sub_10000BA08(*v6, v10);
        v18 = *(v17 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = v17[1];
        }

        if (!v18)
        {
          goto LABEL_53;
        }

        v19 = sub_10000BA08(*v6, *v7);
        v20 = *(v19 + 23);
        if (v20 >= 0)
        {
          v21 = *(v19 + 23);
        }

        else
        {
          v21 = v19[1];
        }

        if (v20 < 0)
        {
          v19 = *v19;
        }

        if (SHIBYTE(__p[0]) >= 0)
        {
          v22 = HIBYTE(__p[0]);
        }

        else
        {
          v22 = *&buf[8];
        }

        if (SHIBYTE(__p[0]) >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        if (v22 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v22;
        }

        v25 = memcmp(v19, v23, v24);
        v26 = v21 < v22;
        if (v25)
        {
          v26 = v25 < 0;
        }

        if (v26)
        {
LABEL_53:
          *v36 = v4 + 4;
          v27 = sub_100E3C9C0(a1 + 120, *v7);
          std::string::operator=((v27 + 5), buf);
          std::string::operator=((v27 + 8), &__p[1]);
          v5 = 1;
        }

        goto LABEL_22;
      }
    }

    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      sub_101264AB4(a1 + 120, v4 + 8);
LABEL_22:
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_26;
    }

    v28 = *v7;
    if (*v7 > 7)
    {
      switch(v28)
      {
        case 8:
          v29 = "gsm";
          goto LABEL_68;
        case 16:
          v29 = "scdma";
          goto LABEL_68;
        case 32:
          v29 = "nr";
          goto LABEL_68;
      }
    }

    else
    {
      switch(v28)
      {
        case 1:
          v29 = "umts";
          goto LABEL_68;
        case 2:
          v29 = "cdma";
          goto LABEL_68;
        case 4:
          v29 = "lte";
LABEL_68:
          *v36 = 136315138;
          *&v36[4] = v29;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Database %s updated successfully, but is not being tracked", v36, 0xCu);
          goto LABEL_21;
      }
    }

    v29 = "unknown";
    goto LABEL_68;
  }

LABEL_73:
  os_unfair_lock_unlock((a1 + 24));
  sub_101264468(&v32, v33[0]);
}

void sub_101264250(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  sub_1001A8E08(a1 + 120, *(a1 + 128));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 128;
  sub_101265378(a1 + 144);

  os_unfair_lock_unlock((a1 + 24));
}

uint64_t sub_1012642AC(Registry *a1)
{
  ServiceMap = Registry::getServiceMap(a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  isIPhone = GestaltUtilityInterface::isIPhone(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return isIPhone;
}

void sub_101264390(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012643B0(uint64_t a1)
{
  sub_1012644D8(a1);

  operator delete();
}

uint64_t sub_1012643E8(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void sub_101264468(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_101264468(a1, *a2);
    sub_101264468(a1, *(a2 + 1));
    if (a2[72] == 1 && a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_1012644D8(uint64_t a1)
{
  *a1 = off_101F21340;
  sub_1012646E4(a1 + 184);
  sub_1001754E8(a1 + 144);
  sub_1001A8E08(a1 + 120, *(a1 + 128));
  sub_1012643E8(a1 + 88);
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  LASDDatabaseIDSStateManagerInterface::~LASDDatabaseIDSStateManagerInterface(a1);
}

void sub_101264600(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 72))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10126463C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101264674(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t sub_1012646A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012646E4(uint64_t a1)
{
  sub_101264720(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_101264720(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10126476C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_101264804(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_101264A50(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_101264AB4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_101264B80();
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

void sub_101264C40(_Unwind_Exception *a1)
{
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_1001AD950(v1);
  _Unwind_Resume(a1);
}

void *sub_101264C6C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_101264CC4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_101264CC4(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_101264D4C(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_101264D4C(void *a1, uint64_t *a2, int *a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_101264DEC();
  }

  return v3;
}

void sub_101264EA0(_Unwind_Exception *a1)
{
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_1001AD950(v1);
  _Unwind_Resume(a1);
}

void *sub_101264ECC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_101264F24(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_101264F24(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_101264FAC(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_101264FAC(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10126503C();
  }

  return result;
}

void sub_1012650D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002859C8(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1012650F4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10126514C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10126514C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1012651D4(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_1012651D4(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_101265264();
  }

  return result;
}

void sub_1012652EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_101265308(v3, v2);
  _Unwind_Resume(a1);
}

void sub_101265308(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 72) == 1 && *(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_101265378(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100175524(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1012653D4(uint64_t a1, uint64_t a2, int a3)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.telephony", "msg.mms.pdu.hdr.expiry");
  *(a1 + 16) = 0;
  *a1 = off_101F214D0;
  *(a1 + 8) = a2;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  return a1;
}

uint64_t sub_101265450(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  if (!sub_101566604(a2, &v12))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  if (v5 - v4 < v12)
  {
    return 0;
  }

  if (v5 <= v4)
  {
    v7 = *(a1 + 36);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a2 + 20) = v4 + 1;
    v7 = *(v6 + v4);
    *(a1 + 36) = v7;
  }

  if (v7 >= -126)
  {
    v9 = *(a1 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 8);
      v11 = (v10 + 8);
      if (*(v10 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 67109378;
      v14 = v7;
      v15 = 2080;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "unknown date type 0x%.2x for field %s", buf, 0x12u);
    }

    return 0;
  }

  return sub_1015666A8(a2, (a1 + 32));
}

uint64_t sub_1012655BC(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v9 = 0u;
  LODWORD(__p[0]) = *a2;
  v10 = 0;
  __p[1] = 0;
  v9 = 0uLL;
  std::string::push_back(&__p[1], *(a1 + 36));
  sub_101135CA8(__p, *(a1 + 32));
  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = v9;
  }

  sub_101135DF8(a2, v4);
  if (v9 >= 0)
  {
    v5 = &__p[1];
  }

  else
  {
    v5 = __p[1];
  }

  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = v9;
  }

  std::string::append((a2 + 8), v5, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

void sub_10126567C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012657E4(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__src = 0u;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  sub_10000D518(&v11);
  v3 = std::ostream::operator<<();
  v4 = sub_10000C030(v3);
  sub_10000C030(v4);
  if ((BYTE8(v17) & 0x10) != 0)
  {
    v6 = v17;
    if (v17 < __src[1])
    {
      *&v17 = __src[1];
      v6 = __src[1];
    }

    v7 = __src[0];
  }

  else
  {
    if ((BYTE8(v17) & 8) == 0)
    {
      v5 = 0;
      HIBYTE(v10) = 0;
      goto LABEL_14;
    }

    v7 = *(&v12 + 1);
    v6 = *(&v13 + 1);
  }

  v5 = v6 - v7;
  if ((v6 - v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6 - v7;
  if (v5)
  {
    memmove(&__dst, v7, v5);
  }

LABEL_14:
  *(&__dst + v5) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v10;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_101265A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_101265AA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != 128)
  {
    a2 = 0;
  }

  return *(a1 + 32) - a2;
}

void sub_101265AF4(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));

  operator delete();
}

void sub_101265B48(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101265C14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101265C3C(uint64_t a1, void *a2, dispatch_object_t *a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "pp.mdl");
  ctu::OsLogLogger::OsLogLogger(v13, &v15);
  ctu::OsLogLogger::OsLogLogger(v6, v13);
  ctu::OsLogLogger::~OsLogLogger(v13);
  ctu::OsLogContext::~OsLogContext(&v15);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v14[0] = off_101E2B528;
  v14[1] = sub_1000A81FC;
  v14[3] = v14;
  *(a1 + 32) = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 32))
  {
    operator new();
  }

  sub_1000A8744(v14);
  *a1 = off_101F216F0;
  *(a1 + 40) = *a2;
  v8 = a2[1];
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  ChipInformation::ChipInformation((a1 + 56));
  ActivationInfo::ActivationInfo((a1 + 96));
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 2;
  *(a1 + 696) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 712) = 0;
  *(a1 + 714) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 848) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 716) = 0;
  *(a1 + 719) = 0;
  *(a1 + 856) = a1 + 864;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  sub_10000501C(&__p, "ActivationModel");
  v10 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

uint64_t sub_101266150(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_10126A1F0(a1);
}

uint64_t sub_101266194(uint64_t a1)
{
  v2 = a1 + 40;
  Registry::createRestModuleOneTimeUseConnection(&v33, *(a1 + 40));
  v3 = v2 + 1144;
  ctu::RestModule::connect();
  if (v34)
  {
    sub_100004A34(v34);
  }

  *&v38 = off_101F219E8;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_100300158(&v38, (a1 + 784));
  sub_1002FED80(&v38);
  v4 = *(a1 + 808);
  if (v4)
  {
    (*(*v4 + 48))(v4, a1 + 816);
  }

  v5 = a1 + 824;
  *&v38 = off_101F21A68;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  if (&v38 != (a1 + 824))
  {
    v6 = *(a1 + 848);
    if (v6 == v5)
    {
      v42 = (v2 + 1144);
      v43 = 0;
      v40 = 0;
      v41 = off_101F21A68;
      (*(*v6 + 24))(v6, &v38);
      (*(**(a1 + 848) + 32))(*(a1 + 848));
      *(a1 + 848) = 0;
      v40 = &v38;
      (*(v41 + 3))(&v41, a1 + 824);
      (*(v41 + 4))(&v41);
    }

    else
    {
      *(a1 + 824) = off_101F21A68;
      *(a1 + 832) = v3;
      v40 = v6;
    }

    *(a1 + 848) = v5;
  }

  sub_10126A1F0(&v38);
  v7 = *(a1 + 848);
  if (v7)
  {
    (*(*v7 + 48))(v7, a1 + 856);
  }

  v8 = a1 + 648;
  *&v38 = off_101F21AF8;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  if (&v38 != (a1 + 648))
  {
    v9 = *(a1 + 672);
    if (v9 == v8)
    {
      v42 = (v2 + 1144);
      v43 = 0;
      v40 = 0;
      v41 = off_101F21AF8;
      (*(*v9 + 24))(v9, &v38);
      (*(**(a1 + 672) + 32))(*(a1 + 672));
      *(a1 + 672) = 0;
      v40 = &v38;
      (*(v41 + 3))(&v41, a1 + 648);
      (*(v41 + 4))(&v41);
    }

    else
    {
      *(a1 + 648) = off_101F21AF8;
      *(a1 + 656) = v3;
      v40 = v9;
    }

    *(a1 + 672) = v8;
  }

  sub_10126A270(&v38);
  v10 = *(a1 + 672);
  if (v10)
  {
    (*(*v10 + 48))(v10, a1 + 680);
  }

  *&v38 = off_101F21B88;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_101160820(&v38, (a1 + 880));
  sub_10115F6E4(&v38);
  v11 = *(a1 + 904);
  if (v11)
  {
    (*(*v11 + 48))(v11, a1 + 912);
  }

  *&v38 = off_101F21C08;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_101160820(&v38, (a1 + 920));
  sub_10115F6E4(&v38);
  v12 = *(a1 + 944);
  if (v12)
  {
    (*(*v12 + 48))(v12, a1 + 952);
  }

  *&v38 = off_101F21C88;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_1005F1A18(&v38, (a1 + 960));
  sub_100007E44(&v38);
  v13 = *(a1 + 984);
  if (v13)
  {
    (*(*v13 + 48))(v13, a1 + 992);
  }

  *&v38 = off_101F21D08;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_100300158(&v38, (a1 + 1056));
  sub_1002FED80(&v38);
  v14 = *(a1 + 1080);
  if (v14)
  {
    (*(*v14 + 48))(v14, a1 + 1088);
  }

  *&v38 = off_101F21D88;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_101160820(&v38, (a1 + 1016));
  sub_10115F6E4(&v38);
  v15 = *(a1 + 1040);
  if (v15)
  {
    (*(*v15 + 48))(v15, a1 + 1048);
  }

  *&v38 = off_101F21E08;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  sub_100333DB0(&v38, (a1 + 1136));
  sub_1003336BC(&v38);
  v16 = *(a1 + 1160);
  if (v16)
  {
    (*(*v16 + 48))(v16, a1 + 1168);
  }

  v17 = a1 + 1096;
  *&v38 = off_101F21E88;
  *(&v38 + 1) = v2 + 1144;
  v40 = &v38;
  if (&v38 != (a1 + 1096))
  {
    v18 = *(a1 + 1120);
    if (v18 == v17)
    {
      v42 = (v2 + 1144);
      v43 = 0;
      v40 = 0;
      v41 = off_101F21E88;
      (*(*v18 + 24))(v18, &v38);
      (*(**(a1 + 1120) + 32))(*(a1 + 1120));
      *(a1 + 1120) = 0;
      v40 = &v38;
      (*(v41 + 3))(&v41, a1 + 1096);
      (*(v41 + 4))(&v41);
    }

    else
    {
      *(a1 + 1096) = off_101F21E88;
      *(a1 + 1104) = v3;
      v40 = v18;
    }

    *(a1 + 1120) = v17;
  }

  sub_10126A170(&v38);
  v19 = *(a1 + 1120);
  if (v19)
  {
    (*(*v19 + 48))(v19, a1 + 1128);
  }

  *(a1 + 1088) = (*(*a1 + 352))(a1);
  v20 = *(a1 + 1080);
  if (v20)
  {
    (*(*v20 + 48))(v20, a1 + 1088);
  }

  v21 = kPostponementTicketPlist;
  DevicePersistentCopyValue(&v41, kPostponementTicketPlist, 0);
  sub_100010180(&v38, &v41);
  v22 = sub_10126837C(&v38);
  sub_10001021C(&v38);
  sub_10000A1EC(&v41);
  *(a1 + 1168) = v22;
  v23 = *(a1 + 1160);
  if (v23)
  {
    (*(*v23 + 48))(v23, a1 + 1168);
  }

  theDict = 0;
  DevicePersistentCopyValue(&v38, v21, 0);
  sub_100010180(&theDict, &v38);
  sub_10000A1EC(&v38);
  if (!theDict)
  {
    goto LABEL_49;
  }

  Value = CFDictionaryGetValue(theDict, @"ActivationTicket");
  v25 = Value;
  if (!Value)
  {
    goto LABEL_50;
  }

  v26 = CFGetTypeID(Value);
  if (v26 == CFStringGetTypeID())
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v38 = 0uLL;
    v39 = 0;
    ctu::cf::assign();
    *__p = v38;
    v36 = v39;
    ctu::base64::decode();
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    v25 = sub_1012680F8(a1, &v41);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }

  else
  {
LABEL_49:
    v25 = 0;
  }

LABEL_50:
  sub_10001021C(&theDict);
  *(a1 + 1048) = v25;
  v27 = *(a1 + 1040);
  if (v27)
  {
    (*(*v27 + 48))(v27, a1 + 1048);
  }

  v41 = 1;
  v42 = (a1 + 824);
  subscriber::makeSimSlotRange();
  v29 = *(&v38 + 1);
  v28 = v38;
  if (v38 != *(&v38 + 1))
  {
    v30 = v39;
    do
    {
      if (v30(*v28))
      {
        break;
      }

      ++v28;
    }

    while (v28 != v29);
    v31 = *(&v38 + 1);
    while (v28 != v31)
    {
      LODWORD(theDict) = *v28;
      __p[0] = &theDict;
      *(sub_100D4E740(v42 + 32, theDict) + 32) = 4;
      do
      {
        ++v28;
      }

      while (v28 != v29 && (v30(*v28) & 1) == 0);
    }
  }

  return sub_10126C414(&v41);
}

void sub_101266BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

void sub_101266CB8(uint64_t a1)
{
  *a1 = off_101F216F0;
  v2 = *(a1 + 1192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003336BC(a1 + 1136);
  sub_10126A170(a1 + 1096);
  sub_1002FED80(a1 + 1056);
  sub_10115F6E4(a1 + 1016);
  sub_1005F0FC4(a1 + 960);
  sub_10115F6E4(a1 + 920);
  sub_10115F6E4(a1 + 880);
  sub_10006DCAC(a1 + 856, *(a1 + 864));
  sub_10126A1F0(a1 + 824);
  sub_1002FED80(a1 + 784);
  if (*(a1 + 775) < 0)
  {
    operator delete(*(a1 + 752));
  }

  v3 = *(a1 + 728);
  if (v3)
  {
    *(a1 + 736) = v3;
    operator delete(v3);
  }

  sub_100034450(*(a1 + 696));
  sub_10126A270(a1 + 648);
  sub_10126A33C(a1 + 192);
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    *(a1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    *(a1 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  ActivationModelInterface::~ActivationModelInterface(a1);
}

void sub_101266E24(uint64_t a1)
{
  sub_101266CB8(a1);

  operator delete();
}

uint64_t sub_101266E5C(uint64_t a1, int a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting all the cached data", buf, 2u);
  }

  ChipInformation::clear((a1 + 56));
  ActivationInfo::clear((a1 + 96));
  sub_10134A36C(a1 + 720, a2, v4);
  *(a1 + 713) = 0;
  *(a1 + 716) = 0;
  *(a1 + 776) = 0;
  *(a1 + 632) = 1;
  if (*(a1 + 775) < 0)
  {
    **(a1 + 752) = 0;
    *(a1 + 760) = 0;
  }

  else
  {
    *(a1 + 752) = 0;
    *(a1 + 775) = 0;
  }

  if (*(a1 + 680) != 2)
  {
    *(a1 + 680) = 2;
    v6 = *(a1 + 672);
    if (v6)
    {
      (*(*v6 + 48))(v6, a1 + 680);
    }
  }

  v17 = 1;
  v18 = a1 + 824;
  subscriber::makeSimSlotRange();
  v7 = *buf;
  v8 = v15;
  if (*buf != v15)
  {
    v9 = v16;
    do
    {
      if (v9(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v8);
    v10 = v15;
    while (v7 != v10)
    {
      v13 = *v7;
      v19 = &v13;
      *(sub_100D4E740(v18 + 32, v13) + 32) = 4;
      do
      {
        ++v7;
      }

      while (v7 != v8 && (v9(*v7) & 1) == 0);
    }
  }

  if (*(a1 + 816))
  {
    *(a1 + 816) = 0;
    v11 = *(a1 + 808);
    if (v11)
    {
      (*(*v11 + 48))(v11, a1 + 816);
    }
  }

  return sub_10126C414(&v17);
}

void sub_101267054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10126C414(va);
  _Unwind_Resume(a1);
}

const void **sub_101267078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = cf;
    cf = Mutable;
    v27 = v5;
    sub_1000296E0(&v27);
  }

  if (*(a1 + 60) == 1)
  {
    v27 = 0;
    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (a1 + 56));
    sub_100209DF4(cf, kCTPostponementInfoBasebandChipID, v27);
    sub_100029A48(&v27);
  }

  if (*(a1 + 88) == 1)
  {
    v27 = 0;
    v27 = CFDataCreate(kCFAllocatorDefault, *(a1 + 64), *(a1 + 72) - *(a1 + 64));
    sub_100DA3358(cf, kCTPostponementInfoBasebandSerialNumber, v27);
    sub_10002D760(&v27);
  }

  *v24 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 183) == 1)
  {
    v27 = CFDataCreate(kCFAllocatorDefault, (a1 + 176), 7);
    v26 = sub_100357FCC(kCFAllocatorDefault, v27);
    sub_1001768B8(*v24, kCTPostponementInfoUniqueID, v26);
    sub_1001768B8(*v24, kCTPostponementInfoMEID, v26);
    sub_100005978(&v26);
    sub_10002D760(&v27);
  }

  if (*(a1 + 136) == 1)
  {
    v27 = CFDataCreate(kCFAllocatorDefault, *(a1 + 112), *(a1 + 120) - *(a1 + 112));
    v26 = sub_100357FCC(kCFAllocatorDefault, v27);
    sub_1001768B8(*v24, kCTPostponementInfoBasebandKeyHash, v26);
    sub_100005978(&v26);
    sub_10002D760(&v27);
  }

  if (*(a1 + 168) == 1)
  {
    v27 = CFDataCreate(kCFAllocatorDefault, *(a1 + 144), *(a1 + 152) - *(a1 + 144));
    v26 = sub_100357FCC(kCFAllocatorDefault, v27);
    sub_1001768B8(*v24, kCTPostponementInfoBasebandFactoryKeyHash, v26);
    sub_100005978(&v26);
    sub_10002D760(&v27);
  }

  sub_1000296E0(v24);
  v23 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1012678DC((a1 + 8), a1 + 40, a1 + 688, &v23, a1 + 96);
  sub_1000296E0(&v23);
  v22 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_101267CF8(&v22, a1 + 96);
  sub_1000296E0(&v22);
  *v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 568) == 1)
  {
    ActivationStringFromData = createActivationStringFromData((a1 + 560), 8uLL);
    v27 = ActivationStringFromData;
    sub_1001768B8(*v21, kCTPostponementInfoIMEI, ActivationStringFromData);
    if ((*(a1 + 183) & 1) == 0)
    {
      sub_1001768B8(*v21, kCTPostponementInfoUniqueID, ActivationStringFromData);
    }

    sub_100005978(&v27);
  }

  if (*(a1 + 577) == 1)
  {
    v27 = createActivationStringFromData((a1 + 569), 8uLL);
    sub_1001768B8(*v21, kCTPostponementInfoSim2IMEI, v27);
    sub_100005978(&v27);
  }

  sub_1000296E0(v21);
  CFDictionaryRemoveValue(cf, @"SubscriberIdentityModules");
  v8 = capabilities::ct::supportsGemini(v7);
  if (v8)
  {
    *v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (*(a1 + 552) == 1 && *(a1 + 544) == 1)
    {
      if (*(a1 + 384) == 1)
      {
        v27 = createActivationStringFromData((a1 + 376), 8uLL);
        sub_1001768B8(*v20, kCTPostponementInfoSim2IMSI, v27);
        sub_100005978(&v27);
      }

      if (*(a1 + 395) == 1)
      {
        v27 = createActivationStringFromData((a1 + 385), 0xAuLL);
        sub_1001768B8(*v20, kCTPostponementInfoSim2ICCID, v27);
        sub_100005978(&v27);
      }

      if (*(a1 + 424) == 1)
      {
        v27 = CFDataCreate(kCFAllocatorDefault, *(a1 + 400), *(a1 + 408) - *(a1 + 400));
        sub_100DA3358(*v20, kCTPostponementInfoSim2GID1, v27);
        sub_10002D760(&v27);
      }

      if (*(a1 + 456) == 1)
      {
        v27 = CFDataCreate(kCFAllocatorDefault, *(a1 + 432), *(a1 + 440) - *(a1 + 432));
        sub_100DA3358(*v20, kCTPostponementInfoSim2GID2, v27);
        sub_10002D760(&v27);
      }

      if (*(a1 + 535) == 1)
      {
        if (*(a1 + 534))
        {
          v9 = &kCFBooleanTrue;
        }

        else
        {
          v9 = &kCFBooleanFalse;
        }

        v27 = *v9;
        sub_1002E0298(*v20, kCTPostponementInfoSim2IsEmbedded, v27);
        sub_100045C8C(&v27);
      }

      if (*(a1 + 537) == 1)
      {
        if (*(a1 + 536))
        {
          v10 = &kCFBooleanTrue;
        }

        else
        {
          v10 = &kCFBooleanFalse;
        }

        v27 = *v10;
        sub_1002E0298(*v20, kCTPostponementInfoSim2IsBootstrap, v27);
        sub_100045C8C(&v27);
      }
    }

    v8 = sub_1000296E0(v20);
  }

  if (capabilities::ct::getProvisioningProfileSupport(v8) == 1)
  {
    *v19 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (*(a1 + 628) == 1)
    {
      v27 = CFStringCreateWithCString(kCFAllocatorDefault, (a1 + 624), 0x8000100u);
      sub_1001768B8(*v19, kCTPostponementInfoBootstrapVersion, v27);
      sub_100005978(&v27);
    }

    sub_1000296E0(v19);
  }

  v11 = *(a1 + 632);
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      v12 = &kCTPostponementStatusActivated;
      goto LABEL_70;
    }

    if (v11 == 5)
    {
      sub_1001768B8(cf, kCTPostponementStatus, kCTPostponementStatusError);
      if (*(a1 + 636) == 1)
      {
        v13 = &kCTPostponementStatusErrorMEIDNotProvisioned;
      }

      else
      {
        v13 = &kCTPostponementStatusErrorUnknown;
      }

      sub_1001768B8(cf, kCTPostponementStatusErrorReason, *v13);
      goto LABEL_71;
    }

LABEL_67:
    v12 = &kCTPostponementStatusNotReady;
    goto LABEL_70;
  }

  if (v11 == 2)
  {
    v12 = &kCTPostponementStatusReady;
    goto LABEL_70;
  }

  if (v11 != 3)
  {
    goto LABEL_67;
  }

  v12 = &kCTPostponementStatusRejected;
LABEL_70:
  sub_1001768B8(cf, kCTPostponementStatus, *v12);
LABEL_71:
  v14 = *(a1 + 864);
  if (!v14)
  {
    goto LABEL_82;
  }

  v15 = a1 + 864;
  do
  {
    if (*(v14 + 28) >= 1)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 28) < 1));
  }

  while (v14);
  if (v15 == a1 + 864)
  {
LABEL_82:
    v16 = &kCFBooleanFalse;
    goto LABEL_83;
  }

  v16 = &kCFBooleanFalse;
  if (*(v15 + 28) > 1)
  {
LABEL_83:
    sub_1002E0298(cf, kCTPostponementInfoServiceProvisioningState, *v16);
    goto LABEL_84;
  }

  v17 = *(v15 + 32);
  if (v17)
  {
    if (v17 == 2)
    {
      v16 = &kCFBooleanTrue;
    }

    goto LABEL_83;
  }

LABEL_84:
  sub_100010180(a2, &cf);
  return sub_1000296E0(&cf);
}

void sub_10126779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_100045C8C((v3 - 40));
  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

const void **sub_1012678DC(os_log_t *a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5)
{
  v7 = (a3 + 8);
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = a3 + 8;
  do
  {
    if (*(v6 + 28) >= 1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 1));
  }

  while (v6);
  if (v8 == v7 || *(v8 + 28) > 1)
  {
LABEL_9:
    v10 = &v40;
    sub_100029714(&v40, a4);
    sub_10126A444(1, &v40, a5);
  }

  else
  {
    v9 = *(v8 + 32);
    v10 = &v41;
    sub_100029714(&v41, a4);
    sub_10126A444(v9, &v41, a5);
  }

  sub_1000296E0(v10);
  v39 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v30 = a4;
  if (Mutable)
  {
    v12 = v39;
    v39 = Mutable;
    v36 = v12;
    sub_1000296E0(&v36);
  }

  subscriber::makeSimSlotRange();
  v13 = v36;
  v14 = v37;
  if (v36 != v37)
  {
    v15 = v38;
    do
    {
      if (v15(*v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != v14);
    v16 = v37;
    while (v13 != v16)
    {
      v17 = *v13;
      v18 = *v7;
      if (!*v7)
      {
        goto LABEL_24;
      }

      v19 = v7;
      do
      {
        if (*(v18 + 28) >= v17)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 28) < v17));
      }

      while (v18);
      if (v19 != v7 && v17 >= *(v19 + 7))
      {
        v20 = *(v19 + 8);
      }

      else
      {
LABEL_24:
        if (v17 == 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2 * (v17 == 2);
        }

        v21 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v22 = subscriber::asString();
          v23 = subscriber::asString();
          *buf = 136315394;
          *&buf[4] = v22;
          v45 = 2080;
          v46 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I No SIM info for (%s), using slot [%s]", buf, 0x16u);
        }
      }

      cf = 0;
      v24 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v24)
      {
        v25 = cf;
        cf = v24;
        *buf = v25;
        sub_1000296E0(buf);
      }

      v34 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_10126A444(v20, &v34, a5);
      sub_1000296E0(&v34);
      if (CFDictionaryGetCount(cf))
      {
        v33 = 0;
        v26 = subscriber::asString();
        v42 = 0;
        v43 = 0;
        if (ctu::cf::convert_copy(&v43, v26, 0x8000100, kCFAllocatorDefault, v27))
        {
          v28 = v42;
          v42 = v43;
          *buf = v28;
          sub_100005978(buf);
        }

        v33 = v42;
        v42 = 0;
        sub_100005978(&v42);
        sub_10043B768(v39, v33, cf);
        sub_100005978(&v33);
      }

      sub_1000296E0(&cf);
      do
      {
        ++v13;
      }

      while (v13 != v14 && (v15(*v13) & 1) == 0);
    }
  }

  sub_10043B768(*v30, @"SubscriberIdentityModules", v39);
  return sub_1000296E0(&v39);
}

void sub_101267C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_101267CF8(const void **result, uint64_t a2)
{
  if (*(a2 + 486) == 1)
  {
    v2 = result;
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, (a2 + 482), 0x8000100u);
    sub_1001768B8(*v2, kCTPostponementInfoTicketVersion, v3);
    return sub_100005978(&v3);
  }

  return result;
}

void sub_101267D74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101267D88(uint64_t result)
{
  v1 = result;
  *(result + 736) = *(result + 728);
  if (*(result + 1088))
  {
    *(result + 1088) = 0;
    result = *(result + 1080);
    if (result)
    {
      result = (*(*result + 48))(result, v1 + 1088);
    }
  }

  if (*(v1 + 1048))
  {
    *(v1 + 1048) = 0;
    result = *(v1 + 1040);
    if (result)
    {
      v2 = *(*result + 48);

      return v2();
    }
  }

  return result;
}

BOOL sub_101267E40(uint64_t a1, CFDictionaryRef *a2)
{
  if (!*a2)
  {
    v10 = *(a1 + 8);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "#N Unable to extract postponement ticket";
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(*a2, @"ActivationTicket");
  if (!Value || (v5 = CFGetTypeID(Value), v5 != CFStringGetTypeID()))
  {
    v10 = *(a1 + 8);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "#N Did not find postponement ticket in activation record dictionary";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    return 0;
  }

  memset(buf, 0, sizeof(buf));
  v26 = 0;
  ctu::cf::assign();
  *__p = 0u;
  v22 = 0;
  ctu::base64::decode();
  v6 = *(a1 + 728);
  if (v6)
  {
    *(a1 + 736) = v6;
    operator delete(v6);
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    *(a1 + 744) = 0;
  }

  v7 = v23;
  *(a1 + 728) = v23;
  v8 = v24;
  *(a1 + 736) = v24;
  v24 = 0uLL;
  v23 = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    v7 = *(a1 + 728);
    v9 = *(a1 + 736);
  }

  else
  {
    v9 = v8;
  }

  v13 = v7 != v9;
  if (*(a1 + 1088) != v13)
  {
    *(a1 + 1088) = v13;
    v14 = *(a1 + 1080);
    if (v14)
    {
      (*(*v14 + 48))(v14, a1 + 1088);
    }
  }

  v15 = sub_1012680F8(a1, (a1 + 728));
  if (*(a1 + 1048) != v15)
  {
    *(a1 + 1048) = v15;
    v16 = *(a1 + 1040);
    if (v16)
    {
      (*(*v16 + 48))(v16, a1 + 1048);
    }
  }

  sub_100010024(&v20, a2);
  v17 = sub_10126837C(&v20);
  v18 = *(a1 + 1169);
  if (v18 == (v17 & 0xFF00) >> 8 && *(a1 + 1169))
  {
    if (*(a1 + 1168) == v17)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(a1 + 1168) = v17;
    v19 = *(a1 + 1160);
    if (v19)
    {
      (*(*v19 + 48))(v19, a1 + 1168);
    }

    goto LABEL_27;
  }

  if (v18 != (v17 & 0xFF00) >> 8)
  {
    goto LABEL_25;
  }

LABEL_27:
  sub_10001021C(&v20);
  return *(a1 + 728) != *(a1 + 736);
}

void sub_1012680B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012680F8(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_10:
  isIPhone = GestaltUtilityInterface::isIPhone(v13);
  v16 = isIPhone;
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (!capabilities::ct::supportsGemini(isIPhone))
  {
    v25 = 0;
    goto LABEL_25;
  }

  v17 = Registry::getServiceMap(*(a1 + 40));
  v18 = v17;
  if (v6 < 0)
  {
    v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v6 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v17);
  *buf = v6;
  v22 = sub_100009510(&v18[1].__m_.__sig, buf);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      goto LABEL_23;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v18);
  v23 = 0;
LABEL_23:
  v25 = (*(*v24 + 80))(v24) ^ 1;
  if (v23)
  {
    sub_100004A34(v23);
  }

LABEL_25:
  v29 = 0;
  if (is_activation_manifest_carrier_locked(*a2, *(a2 + 2) - *a2, v25, &v29))
  {
    v26 = *(a1 + 8);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v27)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N Failed to decode activation ticket", buf, 2u);
    return 0;
  }

  if (v29)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_101268350(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10126837C(const __CFDictionary **a1)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10000501C(&v14, "true");
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v13 = 0;
  *&v17 = CFDictionaryGetValue(v2, @"PostBuddyTicketRefresh");
  sub_100060DE8(&v13, &v17);
  if (!v13)
  {
    sub_100005978(&v13);
LABEL_18:
    v8 = 0;
    v9 = 0;
    goto LABEL_22;
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  v12 = v18;
  *__p = v17;
  if (v16 >= 0)
  {
    v3 = HIBYTE(v16);
  }

  else
  {
    v3 = v15;
  }

  v4 = HIBYTE(v12);
  v5 = SHIBYTE(v12);
  if (v12 < 0)
  {
    v4 = __p[1];
  }

  if (v3 == v4)
  {
    if (v16 >= 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14;
    }

    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = memcmp(v6, v7, v3) == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = 0;
  if (SHIBYTE(v12) < 0)
  {
LABEL_20:
    operator delete(__p[0]);
  }

LABEL_21:
  sub_100005978(&v13);
  v9 = 1;
LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  return v8 | (v9 << 8);
}

void sub_1012684B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  sub_100005978(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_101268518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = cf;
    cf = Mutable;
    v16 = v5;
    sub_1000296E0(&v16);
  }

  if (*(a1 + 183) == 1)
  {
    v16 = 0;
    v16 = CFDataCreate(kCFAllocatorDefault, (a1 + 176), 7);
    v14 = sub_100357FCC(kCFAllocatorDefault, v16);
    sub_1001768B8(cf, kCTPostponementInfoUniqueID, v14);
    sub_1001768B8(cf, kCTPostponementInfoMEID, v14);
    sub_100005978(&v14);
    sub_10002D760(&v16);
  }

  v6 = *(a1 + 864);
  if (v6)
  {
    v7 = a1 + 864;
    do
    {
      if (*(v6 + 28) >= 1)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < 1));
    }

    while (v6);
    if (v7 == a1 + 864)
    {
      v8 = &kCFBooleanFalse;
    }

    else
    {
      v8 = &kCFBooleanFalse;
      if (*(v7 + 28) <= 1)
      {
        v9 = *(v7 + 32);
        if (!v9)
        {
          goto LABEL_19;
        }

        if (v9 == 2)
        {
          v8 = &kCFBooleanTrue;
        }
      }
    }
  }

  else
  {
    v8 = &kCFBooleanFalse;
  }

  sub_1002E0298(cf, @"ServiceProvisionState", *v8);
LABEL_19:
  if (*(a1 + 96))
  {
    v10 = &kCFBooleanFalse;
  }

  else
  {
    v10 = &kCFBooleanTrue;
  }

  sub_1002E0298(cf, @"ActivationState", *v10);
  v13 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1012678DC((a1 + 8), a1 + 40, a1 + 688, &v13, a1 + 96);
  sub_1000296E0(&v13);
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_101267CF8(&v12, a1 + 96);
  sub_1000296E0(&v12);
  sub_100010180(a2, &cf);
  return sub_1000296E0(&cf);
}

void sub_101268740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_10002D760(va2);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

BOOL sub_1012687A4(uint64_t a1)
{
  v1 = *(a1 + 864);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 864;
  do
  {
    if (*(v1 + 28) >= 1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 28) < 1));
  }

  while (v1);
  return v2 != a1 + 864 && *(v2 + 28) <= 1 && *(v2 + 32) == 2;
}

BOOL sub_1012687F8(uint64_t a1)
{
  v1 = *(a1 + 864);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 864;
  do
  {
    if (*(v1 + 28) >= 1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 28) < 1));
  }

  while (v1);
  return v2 != a1 + 864 && *(v2 + 28) <= 1 && *(v2 + 32) == 1;
}

atomic_uint **sub_10126884C(_DWORD *a1, int a2)
{
  v4 = a1[158];
  v5 = (*(*a1 + 56))(a1);
  result = sub_100149908(&event::activation::postponementStatusChanged, v4, a2, v5);
  a1[158] = a2;
  return result;
}

uint64_t sub_1012688D4(uint64_t a1, std::string *__str)
{
  v2 = __str;
  v4 = *(a1 + 1015);
  if (v4 >= 0)
  {
    v5 = *(a1 + 1015);
  }

  else
  {
    v5 = *(a1 + 1000);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 992);
  }

  else
  {
    v8 = *(a1 + 992);
  }

  if (v7 < 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v8, __str, v5);
  if (result)
  {
LABEL_13:
    std::string::operator=((a1 + 992), v2);
    result = *(a1 + 984);
    if (result)
    {
      v10 = *(*result + 48);

      return v10();
    }
  }

  return result;
}

char *sub_1012689A0(char *result, char *a2)
{
  v3 = result;
  v4 = a2[4];
  *(result + 14) = *a2;
  result[60] = v4;
  if (result + 56 != a2)
  {
    v5 = result + 64;
    v6 = *(result + 8);
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = v8 - v7;
    v10 = *(result + 10);
    if (v10 - v6 < v8 - v7)
    {
      if (v6)
      {
        *(result + 9) = v6;
        operator delete(v6);
        v10 = 0;
        *v5 = 0;
        *(v3 + 9) = 0;
        *(v3 + 10) = 0;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v11 = 2 * v10;
        if (2 * v10 <= v9)
        {
          v11 = v8 - v7;
        }

        if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        sub_100034CCC((v3 + 64), v12);
      }

      sub_1000CE3D4();
    }

    v13 = *(result + 9);
    v14 = v13 - v6;
    if (v13 - v6 >= v9)
    {
      if (v8 != v7)
      {
        result = memmove(*(result + 8), *(a2 + 1), v8 - v7);
      }

      v16 = &v6[v9];
    }

    else
    {
      v15 = &v7[v14];
      if (v13 != v6)
      {
        result = memmove(*(result + 8), *(a2 + 1), v14);
        v13 = *(v3 + 9);
      }

      if (v8 != v15)
      {
        result = memmove(v13, v15, v8 - v15);
      }

      v16 = &v13[v8 - v15];
    }

    *(v3 + 9) = v16;
  }

  v3[88] = a2[32];
  return result;
}

uint64_t sub_101268AF8(uint64_t a1, int *a2)
{
  v3 = a1;
  if (*(a2 + 12) == 1)
  {
    v4 = *a2;
    if (*(a1 + 96) != *a2)
    {
      v5 = *(a1 + 8);
      a1 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        *buf = 136315394;
        *&buf[4] = asString();
        *&buf[12] = 2080;
        *&buf[14] = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Activation state changing from %s to %s", buf, 0x16u);
        v4 = *a2;
      }

      if (v4 == 1)
      {
        a1 = (*(*v3 + 144))(v3, 2);
      }
    }

    if (*(v3 + 104) != *(a2 + 8))
    {
      v6 = *(*(**(v3 + 32) + 16))(*(v3 + 32), 1);
      a1 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v7 = asString();
        v8 = asString();
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Service provisioned changing from %s to %s", buf, 0x16u);
      }
    }

    if (capabilities::ct::supportsGemini(a1))
    {
      if (*(v3 + 105) != *(a2 + 9))
      {
        v9 = *(*(**(v3 + 32) + 16))(*(v3 + 32), 2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = asString();
          v11 = asString();
          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Service provisioned changing from %s to %s", buf, 0x16u);
        }
      }
    }

    v12 = *a2;
    *(v3 + 101) = *(a2 + 5);
    *(v3 + 96) = v12;
  }

  if (*(a2 + 88) == 1)
  {
    if ((v3 + 112) == a2 + 4)
    {
      *(v3 + 136) = *(a2 + 40);
    }

    else
    {
      sub_1001122C4((v3 + 112), *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
      *(v3 + 136) = *(a2 + 40);
      sub_1001122C4((v3 + 144), *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
    }

    *(v3 + 168) = *(a2 + 72);
    *(v3 + 176) = *(a2 + 10);
    *(v3 + 184) = *(a2 + 88);
  }

  if (*(a2 + 456) == 1)
  {
    *(v3 + 192) = *(a2 + 48);
    v13 = *(a2 + 26);
    *(v3 + 216) = a2[30];
    *(v3 + 200) = v13;
    if ((v3 + 192) == a2 + 24)
    {
      *(v3 + 248) = *(a2 + 152);
    }

    else
    {
      sub_1001122C4((v3 + 224), *(a2 + 16), *(a2 + 17), *(a2 + 17) - *(a2 + 16));
      *(v3 + 248) = *(a2 + 152);
      sub_1001122C4((v3 + 256), *(a2 + 20), *(a2 + 21), *(a2 + 21) - *(a2 + 20));
    }

    *(v3 + 280) = *(a2 + 184);
    std::string::operator=((v3 + 288), a2 + 8);
    *(v3 + 312) = *(a2 + 216);
    std::string::operator=((v3 + 320), (a2 + 56));
    *(v3 + 344) = *(a2 + 248);
    v14 = *(a2 + 32);
    *(v3 + 360) = *(a2 + 132);
    *(v3 + 352) = v14;
    *(v3 + 368) = *(a2 + 272);
    v15 = *(a2 + 70);
    *(v3 + 392) = a2[74];
    *(v3 + 376) = v15;
    if ((v3 + 192) == a2 + 24)
    {
      *(v3 + 424) = *(a2 + 328);
    }

    else
    {
      sub_1001122C4((v3 + 400), *(a2 + 38), *(a2 + 39), *(a2 + 39) - *(a2 + 38));
      *(v3 + 424) = *(a2 + 328);
      sub_1001122C4((v3 + 432), *(a2 + 42), *(a2 + 43), *(a2 + 43) - *(a2 + 42));
    }

    *(v3 + 456) = *(a2 + 360);
    std::string::operator=((v3 + 464), (a2 + 92));
    *(v3 + 488) = *(a2 + 392);
    std::string::operator=((v3 + 496), (a2 + 100));
    *(v3 + 520) = *(a2 + 424);
    v16 = *(a2 + 54);
    *(v3 + 536) = *(a2 + 220);
    *(v3 + 528) = v16;
    *(v3 + 544) = *(a2 + 448);
    *(v3 + 552) = *(a2 + 456);
  }

  if (*(a2 + 486) == 1)
  {
    v17 = *(a2 + 482);
    *(v3 + 582) = *(a2 + 486);
    *(v3 + 578) = v17;
  }

  if (*(a2 + 492) == 1)
  {
    *(v3 + 640) = a2[122];
  }

  if (*(a2 + 500) == 1)
  {
    v18 = a2[124];
    if (*(v3 + 680) != v18)
    {
      *(v3 + 680) = v18;
      v19 = *(v3 + 672);
      if (v19)
      {
        (*(*v19 + 48))(v19, v3 + 680);
      }
    }
  }

  if (*(a2 + 472) == 1)
  {
    v20 = *(a2 + 58);
    *(v3 + 568) = *(a2 + 472);
    *(v3 + 560) = v20;
  }

  if (*(a2 + 481) == 1)
  {
    v21 = *(a2 + 473);
    *(v3 + 577) = *(a2 + 481);
    *(v3 + 569) = v21;
  }

  if (*(a2 + 508) == 1)
  {
    v22 = a2 + 126;
    v23 = (v3 + 600);
    if (*(v3 + 604) == 1)
    {
      v24 = *v23;
      v25 = *v22;
      *(v3 + 604) = *(a2 + 508);
      *v23 = v25;
      if (v24 == v25)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v26 = *v22;
      *(v3 + 604) = *(a2 + 508);
      *v23 = v26;
    }

    sub_10000501C(buf, "/cc/events/activation_esim_flagset_changed");
    object = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_47:
  if (*(a2 + 521) == 1)
  {
    *(v3 + 616) = *(a2 + 260);
  }

  if (*(v3 + 640))
  {
    if ((*(v3 + 816) & 1) == 0)
    {
      *(v3 + 816) = 1;
      v27 = *(v3 + 808);
      if (v27)
      {
LABEL_55:
        (*(*v27 + 48))(v27, v3 + 816);
      }
    }
  }

  else
  {
    v28 = *(v3 + 96) == 0;
    if (*(v3 + 816) != v28)
    {
      *(v3 + 816) = v28;
      v27 = *(v3 + 808);
      if (v27)
      {
        goto LABEL_55;
      }
    }
  }

  *buf = 1;
  *&buf[8] = v3 + 824;
  v29 = sub_101269390(1, v3 + 688, *(a2 + 8), *(a2 + 9));
  v40 = 1;
  object = &v40;
  v30 = sub_100D4E740(v3 + 856, 1);
  *(v30 + 32) = v29;
  if (capabilities::ct::supportsGemini(v30))
  {
    v31 = sub_101269390(2, v3 + 688, *(a2 + 8), *(a2 + 9));
    v40 = 2;
    object = &v40;
    *(sub_100D4E740(*&buf[8] + 32, 2) + 32) = v31;
  }

  v32 = sub_10126C414(buf);
  *buf = 1;
  *&buf[8] = v3 + 880;
  if (!capabilities::ct::supportsGemini(v32))
  {
    v33 = 1;
LABEL_64:
    *(v3 + 912) = v33;
    goto LABEL_66;
  }

  if (*(a2 + 521) == 1)
  {
    if (*(a2 + 520))
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    goto LABEL_64;
  }

  *(v3 + 912) = 0;
LABEL_66:
  v34 = sub_10126C47C(buf);
  *buf = 1;
  *&buf[8] = (v3 + 920);
  *&buf[16] = *(v3 + 952);
  if (capabilities::ct::supports5G(v34))
  {
    if (*(a2 + 523) == 1)
    {
      *(v3 + 618) = *(a2 + 261);
      if (*(a2 + 522))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 1;
  }

  *&buf[16] = v35;
  result = sub_10126C4E4(buf);
  if (*(a2 + 516) == 1)
  {
    v37 = a2[128];
    *(v3 + 612) = *(a2 + 516);
    *(v3 + 608) = v37;
    v38 = a2[128];
  }

  else
  {
    v38 = 0;
  }

  if (*(v3 + 1128) != v38)
  {
    *(v3 + 1128) = v38;
    result = *(v3 + 1120);
    if (result)
    {
      result = (*(*result + 48))(result, v3 + 1128);
    }
  }

  if (*(a2 + 532) == 1)
  {
    v39 = a2[132];
    *(v3 + 628) = *(a2 + 532);
    *(v3 + 624) = v39;
  }

  return result;
}

void sub_10126930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101269390(int a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6 = *(a2 + 8);
  v4 = a2 + 8;
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    if (*(v5 + 28) >= a1)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a1));
  }

  while (v5);
  if (v7 == v4 || *(v7 + 28) > a1)
  {
    return 0;
  }

  v8 = *(v7 + 32);
  if (v8 == 2)
  {
    return a4;
  }

  if (v8 != 1)
  {
    return 0;
  }

  return a3;
}

void sub_1012693F0(uint64_t a1)
{
  ChipInformation::dumpState((a1 + 56), (a1 + 8));
  ActivationInfo::dumpState();
  sub_10134A294((a1 + 720), (a1 + 8));
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asString();
    v4 = *(a1 + 636);
    if (v4 > 3)
    {
      v5 = "???";
    }

    else
    {
      v5 = off_101F21F08[v4];
    }

    *buf = 136315394;
    v31 = v3;
    v32 = 2080;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fPostponementStatus = %s, fPostponementError = %s", buf, 0x16u);
  }

  v6 = *(a1 + 688);
  if (v6 != (a1 + 696))
  {
    do
    {
      v7 = *(a1 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = subscriber::asString();
        v9 = subscriber::asString();
        v10 = subscriber::asString();
        *buf = 136315650;
        v31 = v8;
        v32 = 2080;
        v33 = v9;
        v34 = 2080;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fSimInfo[%s | %s] - %s", buf, 0x20u);
      }

      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (a1 + 696));
  }

  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CSIBOOLAsString(*(a1 + 712));
    v16 = asString();
    v17 = asString();
    *buf = 136315650;
    v31 = v15;
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I fDefaultCarrierIDPresent = %s, fActivationMode = %s, fFactoryDebugState = %s", buf, 0x20u);
    v14 = *(a1 + 8);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = CSIBOOLAsString(*(a1 + 713));
    v19 = asString();
    v20 = subscriber::asString();
    *buf = 136315650;
    v31 = v18;
    v32 = 2080;
    v33 = v19;
    v34 = 2080;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I fPhoneNumberAvailable = %s, fSimProvisionedState = %s, fCardProvisionedState = %s", buf, 0x20u);
    v14 = *(a1 + 8);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = CSIBOOLAsString(*(a1 + 714));
    *buf = 136315138;
    v31 = v21;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I fAnyAssertions = %s", buf, 0xCu);
  }

  if (*(a1 + 728) == *(a1 + 736))
  {
    v22 = *(a1 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N fPostponementTicket = no cached ticket!", buf, 2u);
    }
  }

  v29 = 0;
  v23 = (*(*a1 + 360))(a1, &v29);
  v24 = *(a1 + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = CSIBOOLAsString(v23);
    v26 = "kUnknown";
    if (v29 == 1)
    {
      v26 = "kInMemory";
    }

    if (v29 == 2)
    {
      v27 = "kPlist";
    }

    else
    {
      v27 = v26;
    }

    *buf = 136315394;
    v31 = v25;
    v32 = 2080;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I isTicketAvailable = %s source = %s", buf, 0x16u);
    v24 = *(a1 + 8);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CSIBOOLAsString(*(a1 + 1176));
    *buf = 136315138;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Factory activation enabled = %s", buf, 0xCu);
  }
}

uint64_t sub_10126988C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalidating all UMTS data received", v9, 2u);
  }

  UMTSProvisioningInfo::UMTSProvisioningInfo(v9);
  *(a1 + 192) = *v9;
  *(a1 + 200) = v10;
  *(a1 + 216) = v11;
  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 232) = v3;
    operator delete(v3);
  }

  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  v13 = 0;
  v12 = 0uLL;
  *(a1 + 248) = v14;
  v4 = *(a1 + 256);
  if (v4)
  {
    *(a1 + 264) = v4;
    operator delete(v4);
  }

  *(a1 + 256) = v15;
  *(a1 + 272) = v16;
  v16 = 0;
  v15 = 0uLL;
  *(a1 + 280) = v17;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  *(a1 + 288) = v18;
  *(a1 + 304) = v19;
  HIBYTE(v19) = 0;
  LOBYTE(v18) = 0;
  *(a1 + 312) = v20;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  *(a1 + 320) = v21;
  *(a1 + 336) = v22;
  HIBYTE(v22) = 0;
  LOBYTE(v21) = 0;
  *(a1 + 344) = v23;
  *(a1 + 352) = v24;
  *(a1 + 360) = v25;
  *(a1 + 368) = v26;
  *(a1 + 392) = v28;
  *(a1 + 376) = v27;
  v5 = *(a1 + 400);
  if (v5)
  {
    *(a1 + 408) = v5;
    operator delete(v5);
  }

  *(a1 + 400) = v29;
  *(a1 + 416) = v30;
  v30 = 0;
  v29 = 0uLL;
  *(a1 + 424) = v31;
  v6 = *(a1 + 432);
  if (v6)
  {
    *(a1 + 440) = v6;
    operator delete(v6);
  }

  *(a1 + 432) = v32;
  *(a1 + 448) = v33;
  v33 = 0;
  v32 = 0uLL;
  *(a1 + 456) = v34;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  *(a1 + 464) = v35;
  *(a1 + 480) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  *(a1 + 488) = v37;
  v7 = (a1 + 496);
  if (*(a1 + 519) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v38;
  *(a1 + 512) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38) = 0;
  *(a1 + 520) = v40;
  *(a1 + 528) = v41;
  *(a1 + 536) = v42;
  *(a1 + 544) = v43;
  result = sub_10126A33C(v9);
  *(a1 + 552) = 0;
  return result;
}

uint64_t sub_101269B2C(uint64_t result, int a2, uint64_t *a3)
{
  v3 = *(result + 696);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4[4] = *a3;
  return result;
}

uint64_t sub_101269C2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 696);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = a1 + 696;
  do
  {
    if (*(v2 + 28) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < a2));
  }

  while (v2);
  if (v3 != a1 + 696 && *(v3 + 28) <= a2)
  {
    v4 = (v3 + 32);
  }

  else
  {
LABEL_8:
    v4 = &v6;
    ActivationSimInfo::ActivationSimInfo();
  }

  return *v4;
}

BOOL sub_101269CFC(void *a1, _DWORD *a2)
{
  *a2 = 0;
  if ((*(*a1 + 376))(a1))
  {
    *a2 = 1;
    return a1[91] != a1[92];
  }

  else if ((*(*a1 + 264))(a1))
  {
    *a2 = 2;
    v10 = 0;
    DevicePersistentCopyValue(buf, kPostponementTicketPlist, 0);
    sub_100010180(&v10, buf);
    sub_10000A1EC(buf);
    v5 = v10;
    v4 = v10 != 0;
    if (HIBYTE(word_101FCA890) != 1 || word_101FCA890 != v4)
    {
      if (v10)
      {
        v6 = 257;
      }

      else
      {
        v6 = 256;
      }

      word_101FCA890 = v6;
      v7 = a1[1];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CSIBOOLAsString(v5 != 0);
        *buf = 136315138;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Ticket present: %s", buf, 0xCu);
      }
    }

    sub_10001021C(&v10);
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_101269EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101269F60(uint64_t a1, int a2)
{
  if (*(a1 + 716) != a2)
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting SIM provisioned state to: %s", &v5, 0xCu);
    }
  }

  *(a1 + 716) = a2;
}

uint64_t sub_10126A038(uint64_t result, char a2)
{
  *(result + 713) = a2;
  if ((a2 & 1) == 0)
  {
    if (*(result + 775) < 0)
    {
      **(result + 752) = 0;
      *(result + 760) = 0;
    }

    else
    {
      *(result + 752) = 0;
      *(result + 775) = 0;
    }
  }

  return result;
}

void sub_10126A074(uint64_t a1, int a2)
{
  *(a1 + 714) = a2;
  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "inactive";
    if (a2)
    {
      v4 = "active";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Setting OTA assertions to %s", &v5, 0xCu);
  }
}

uint64_t sub_10126A154(uint64_t a1)
{
  v1 = *(a1 + 1168);
  v2 = v1 << 23;
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & (v2 >> 31);
}

uint64_t sub_10126A170(uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t sub_10126A1F0(uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t sub_10126A270(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void *sub_10126A2F0(void *a1)
{
  sub_10126A33C((a1 + 12));
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10126A33C(uint64_t a1)
{
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_10126A3E0(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10126A444(int a1, __CFDictionary **a2, uint64_t a3)
{
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v24 = 0u;
  *v21 = *(a3 + 104);
  v22 = *(a3 + 120);
  memset(v23 + 4, 0, 24);
  sub_100034C50(v23 + 4, *(a3 + 128), *(a3 + 136), *(a3 + 136) - *(a3 + 128));
  BYTE4(v23[3]) = *(a3 + 152);
  memset(&v23[4] + 4, 0, 24);
  sub_100034C50(&v23[4] + 4, *(a3 + 160), *(a3 + 168), *(a3 + 168) - *(a3 + 160));
  BYTE4(v23[7]) = *(a3 + 184);
  if (*(a3 + 215) < 0)
  {
    sub_100005F2C(&v23[8] + 4, *(a3 + 192), *(a3 + 200));
  }

  else
  {
    *(&v23[8] + 4) = *(a3 + 192);
    *(&v23[10] + 4) = *(a3 + 208);
  }

  BYTE4(v23[11]) = *(a3 + 216);
  if (*(a3 + 247) < 0)
  {
    sub_100005F2C(&v23[12] + 4, *(a3 + 224), *(a3 + 232));
  }

  else
  {
    *(&v23[12] + 4) = *(a3 + 224);
    *(&v23[14] + 4) = *(a3 + 240);
  }

  v6 = (a3 + 96);
  BYTE4(v23[15]) = *(a3 + 248);
  *(&v24 + 4) = *(a3 + 256);
  WORD6(v24) = *(a3 + 264);
  if (a1 == 2)
  {
    v22 = *(a3 + 296);
    *v21 = *(a3 + 280);
    if ((a3 + 280) == v21)
    {
      BYTE4(v23[3]) = *(a3 + 328);
    }

    else
    {
      sub_1001122C4((v23 + 4), *(a3 + 304), *(a3 + 312), *(a3 + 312) - *(a3 + 304));
      BYTE4(v23[3]) = *(a3 + 328);
      sub_1001122C4((&v23[4] + 4), *(a3 + 336), *(a3 + 344), *(a3 + 344) - *(a3 + 336));
    }

    BYTE4(v23[7]) = *(a3 + 360);
    std::string::operator=((&v23[8] + 4), (a3 + 368));
    BYTE4(v23[11]) = *(a3 + 392);
    std::string::operator=((&v23[12] + 4), (a3 + 400));
    v7 = 336;
    v8 = 328;
  }

  else
  {
    if (a1 != 1)
    {
      goto LABEL_18;
    }

    *v21 = *(a3 + 104);
    v22 = *(a3 + 120);
    if ((a3 + 104) == v21)
    {
      BYTE4(v23[3]) = *(a3 + 152);
    }

    else
    {
      sub_1001122C4((v23 + 4), *(a3 + 128), *(a3 + 136), *(a3 + 136) - *(a3 + 128));
      BYTE4(v23[3]) = *(a3 + 152);
      sub_1001122C4((&v23[4] + 4), *(a3 + 160), *(a3 + 168), *(a3 + 168) - *(a3 + 160));
    }

    BYTE4(v23[7]) = *(a3 + 184);
    std::string::operator=((&v23[8] + 4), (a3 + 192));
    BYTE4(v23[11]) = *(a3 + 216);
    std::string::operator=((&v23[12] + 4), (a3 + 224));
    v7 = 160;
    v8 = 152;
  }

  BYTE4(v23[15]) = v6[v8];
  v9 = &v6[v7];
  *(&v24 + 4) = *v9;
  WORD6(v24) = *(v9 + 4);
LABEL_18:
  if (v21[8] == 1)
  {
    valuePtr = createActivationStringFromData(v21, 8uLL);
    sub_1001768B8(*a2, kCTPostponementInfoIMSI, valuePtr);
    if (*(a3 + 97) == 1)
    {
      if (*v6)
      {
        v10 = &kCFBooleanTrue;
      }

      else
      {
        v10 = &kCFBooleanFalse;
      }

      sub_1002E0298(*a2, kCTPostponementInfoIMSIOverride, *v10);
    }

    sub_100005978(&valuePtr);
  }

  if (HIBYTE(v22) == 1)
  {
    valuePtr = 0;
    valuePtr = createActivationStringFromData((v21 | 9), 0xAuLL);
    sub_1001768B8(*a2, kCTPostponementInfoICCID, valuePtr);
    sub_100005978(&valuePtr);
  }

  if (BYTE4(v23[11]) == 1)
  {
    valuePtr = 0;
    if (SBYTE3(v23[11]) >= 0)
    {
      v11 = &v23[8] + 4;
    }

    else
    {
      v11 = *(&v23[8] + 4);
    }

    valuePtr = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
    sub_1001768B8(*a2, @"GID1", valuePtr);
    sub_100005978(&valuePtr);
  }

  if (BYTE4(v23[15]) == 1)
  {
    valuePtr = 0;
    if (SBYTE3(v23[15]) >= 0)
    {
      v12 = &v23[12] + 4;
    }

    else
    {
      v12 = *(&v23[12] + 4);
    }

    valuePtr = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
    sub_1001768B8(*a2, @"GID2", valuePtr);
    sub_100005978(&valuePtr);
  }

  if (BYTE4(v23[3]) == 1)
  {
    valuePtr = 0;
    valuePtr = CFDataCreate(kCFAllocatorDefault, *(v23 + 4), *(&v23[1] + 4) - *(v23 + 4));
    sub_100DA3358(*a2, kCTPostponementInfoGID1, valuePtr);
    sub_10002D760(&valuePtr);
  }

  if (BYTE4(v23[7]) == 1)
  {
    valuePtr = 0;
    valuePtr = CFDataCreate(kCFAllocatorDefault, *(&v23[4] + 4), *(&v23[5] + 4) - *(&v23[4] + 4));
    sub_100DA3358(*a2, kCTPostponementInfoGID2, valuePtr);
    sub_10002D760(&valuePtr);
  }

  if (BYTE11(v24) == 1)
  {
    v13 = &kCFBooleanTrue;
    if (!BYTE10(v24))
    {
      v13 = &kCFBooleanFalse;
    }

    valuePtr = *v13;
    sub_1002E0298(*a2, kCTPostponementInfoSim1IsEmbedded, valuePtr);
    sub_100045C8C(&valuePtr);
  }

  if (BYTE13(v24) == 1)
  {
    v14 = &kCFBooleanTrue;
    if (!BYTE12(v24))
    {
      v14 = &kCFBooleanFalse;
    }

    valuePtr = *v14;
    sub_1002E0298(*a2, kCTPostponementInfoSim1IsBootstrap, valuePtr);
    sub_100045C8C(&valuePtr);
  }

  if (v21[8] == 1 && BYTE8(v24) == 1)
  {
    v15 = *a2;
    v16 = WORD2(v24);
    v19 = @"PRIVersion_ReleaseNo";
    if (@"PRIVersion_ReleaseNo")
    {
      CFRetain(@"PRIVersion_ReleaseNo");
    }

    valuePtr = v16;
    v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v18 = v17;
    if (@"PRIVersion_ReleaseNo" && v17)
    {
      CFDictionaryAddValue(v15, @"PRIVersion_ReleaseNo", v17);
    }

    sub_100DA3324(&v18);
    sub_100DA3324(&v19);
    sub_10126AC58(*a2, @"PRIVersion_Minor", BYTE7(v24), kCFAllocatorDefault);
    sub_10126AC58(*a2, @"PRIVersion_Major", BYTE6(v24), kCFAllocatorDefault);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d.%d.%d", BYTE6(v24), BYTE7(v24), WORD2(v24), v18, 0);
    valuePtr = 0;
    sub_100005978(&valuePtr);
    sub_1001768B8(*a2, kCTPostponementInfoPRIVersion, v19);
    sub_100005978(&v19);
  }

  if (SBYTE3(v23[15]) < 0)
  {
    operator delete(*(&v23[12] + 4));
  }

  if (SBYTE3(v23[11]) < 0)
  {
    operator delete(*(&v23[8] + 4));
  }

  if (*(&v23[4] + 4))
  {
    *(&v23[5] + 4) = *(&v23[4] + 4);
    operator delete(*(&v23[4] + 4));
  }

  if (*(v23 + 4))
  {
    *(&v23[1] + 4) = *(v23 + 4);
    operator delete(*(v23 + 4));
  }
}

void sub_10126AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_100DA3324(&a12);
  sub_100DA3324(&a13);
  sub_10126A3E0(&a18);
  _Unwind_Resume(a1);
}

const void **sub_10126AC58(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v10 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  sub_100DA3324(&v10);
  return sub_100DA3324(&v11);
}

void sub_10126ACE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

void sub_10126AD8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10126ADC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10126AE00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10126AE30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126AF04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F219E8;
  a2[1] = v2;
  return result;
}

void sub_10126AF30(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/baseband_activated");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10126AFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10126B028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126B0E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21A68;
  a2[1] = v2;
  return result;
}

void sub_10126B110(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 32);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/baseband_service_provisioned_states");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_10126B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10126B4A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126B55C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21AF8;
  a2[1] = v2;
  return result;
}

void sub_10126B588(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/activation_factory_debug");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10126B63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10126B680(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126B73C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21B88;
  a2[1] = v2;
  return result;
}

void sub_10126B768(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/prefs-nb/activation_gemini_support");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10126B81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10126B860(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126B91C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21C08;
  a2[1] = v2;
  return result;
}

void sub_10126B948(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/prefs-nb/activation_5g_support");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10126B9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10126BA40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126BAFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21C88;
  a2[1] = v2;
  return result;
}

void sub_10126BB28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = xpc_string_create(v2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/activation_rejected_iccid");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10126BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10126BC2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126BCE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21D08;
  a2[1] = v2;
  return result;
}

void sub_10126BD14(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/is_postponement_ticket_available");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10126BDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10126BE0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126BEC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21D88;
  a2[1] = v2;
  return result;
}

void sub_10126BEF4(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/prefs-nb/is_activation_policy_locked");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10126BFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10126BFEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126C0A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21E08;
  a2[1] = v2;
  return result;
}

void sub_10126C0D4(uint64_t a1, _BYTE *a2)
{
  if (a2[1] != 1 || (v2 = xpc_BOOL_create(*a2 & 1)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/post_buddy_ticket_refresh");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10126C1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10126C1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126C2A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F21E88;
  a2[1] = v2;
  return result;
}

void sub_10126C2D0(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/prefs-nb/activation_ticket_type");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10126C384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10126C3C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10126C414(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_10126C47C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_10126C4E4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (*(v2 + 32) != v3)
    {
      *(v2 + 32) = v3;
      v4 = *(v2 + 24);
      if (v4)
      {
        (*(*v4 + 48))(v4, v2 + 32);
      }
    }
  }

  return a1;
}

uint64_t sms::GSMModel::GSMModel(uint64_t a1, int a2, uint64_t *a3, __int128 *a4)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.telephony", "msg.gsm.mdl");
  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sms::Model::Model(a1, a2, &v11, 1, 0, 0);
  if (v12)
  {
    sub_100004A34(v12);
  }

  *a1 = off_101F21F38;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 208), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 224) = *(a4 + 2);
    *(a1 + 208) = v9;
  }

  *(a1 + 240) = 0u;
  *(a1 + 232) = 9;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 376));
  *(a1 + 568) = 0;
  *(a1 + 573) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 316) = 0;
  *(a1 + 340) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 600) = 0;
  *(a1 + 604) = 0;
  *(a1 + 608) = 0;
  *(a1 + 312) = 4;
  return a1;
}

void sub_10126C6D8(_Unwind_Exception *a1)
{
  sub_101225768(v1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 192));
  _Unwind_Resume(a1);
}

uint64_t sms::GSMModel::GSMModel(uint64_t a1, uint64_t a2, uint64_t *a3, SmsPduDecoder **a4, int a5)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.telephony", "msg.gsm.mdl");
  v10 = a3[1];
  v37 = *a3;
  v38 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isAlphanumericOriginator = SmsPduDecoder::isAlphanumericOriginator(*a4);
  sms::Model::Model(a1, a2, &v37, 1, isAlphanumericOriginator, 0);
  if (v38)
  {
    sub_100004A34(v38);
  }

  *a1 = off_101F21F38;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 8;
  SmsPduDecoder::getBody((a1 + 240), *a4);
  SmsPduDecoder::getUcs2Chars(*a4);
  SmsPduDecoder::getReplyAddress(&cf.var0, *a4);
  CSIPhoneNumber::getFullNumber((a1 + 288), &cf);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (*(&cf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(cf.var2.__rep_.__l.__data_);
  }

  *(a1 + 316) = SmsPduDecoder::isType0(*a4);
  *(a1 + 336) = 0;
  *(a1 + 340) = 0;
  *(a1 + 320) = 0;
  *(a1 + 326) = 0;
  *(a1 + 344) = SmsPduDecoder::getReplaceMessage(*a4);
  *(a1 + 349) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 376));
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  SmsPduDecoder::getTimestamp(*a4);
  *(a1 + 600) = SmsPduDecoder::isConcatenated(*a4);
  *(a1 + 604) = SmsPduDecoder::concatenatedReference(*a4);
  *(a1 + 608) = SmsPduDecoder::concatenatedSequenceNumber(*a4);
  *(a1 + 612) = SmsPduDecoder::maxConcatenatedElements(*a4);
  *(a1 + 616) = SmsPduDecoder::getProtocolIdentifier(*a4);
  *(a1 + 620) = SmsPduDecoder::getDataCodingScheme(*a4);
  *(a1 + 621) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  SourcePort = SmsPduDecoder::getSourcePort(*a4);
  (*(*a1 + 56))(a1, SourcePort);
  DestinationPort = SmsPduDecoder::getDestinationPort(*a4);
  (*(*a1 + 72))(a1, DestinationPort);
  *(a1 + 136) = SmsPduDecoder::getPartialSurrogates(*a4);
  TextEncoding = SmsPduDecoder::getTextEncoding(*a4);
  if (TextEncoding < 4)
  {
    *(a1 + 232) = dword_10193A850[TextEncoding];
  }

  Class = SmsPduDecoder::getClass(*a4);
  if (Class <= 4)
  {
    *(a1 + 312) = Class;
  }

  *(a1 + 536) = SmsPduDecoder::useOriginatingServiceCenter(*a4);
  SmsPduDecoder::getOriginatingServiceCenter(&cf.var0, *a4);
  *(a1 + 376) = *&cf.var0;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  *(a1 + 384) = cf.var2;
  *(&cf.var2.__rep_.__l + 23) = 0;
  cf.var2.__rep_.__s.__data_[0] = 0;
  v16 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v16);
  }

  *v16 = v24;
  *(a1 + 424) = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  *(a1 + 432) = v26;
  *(a1 + 436) = v27;
  v17 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v17);
  }

  *v17 = v28;
  *(a1 + 456) = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28) = 0;
  *(a1 + 464) = v30;
  *(a1 + 472) = v31;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v32;
  *(a1 + 496) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  v18 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
    v19 = SHIBYTE(v33);
    *v18 = *__p;
    *(a1 + 520) = v35;
    HIBYTE(v35) = 0;
    LOBYTE(__p[0]) = 0;
    *(a1 + 528) = v36;
    if (v19 < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v18 = *__p;
    *(a1 + 520) = v35;
    HIBYTE(v35) = 0;
    LOBYTE(__p[0]) = 0;
    *(a1 + 528) = v36;
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if ((*(&cf.var2.__rep_.__l + 23) & 0x80000000) == 0)
  {
    if (!a5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  operator delete(cf.var2.__rep_.__l.__data_);
  if (a5)
  {
LABEL_37:
    *(a1 + 36) = 0x200000002;
  }

LABEL_38:
  *(a1 + 97) = SmsPduDecoder::isVoiceMailIndication(*a4);
  *(a1 + 98) = SmsPduDecoder::isVoiceMailWaiting(*a4);
  *(a1 + 99) = SmsPduDecoder::isVoiceMailCountAvailable(*a4);
  *(a1 + 100) = SmsPduDecoder::getVoiceMailCount(*a4);
  *&cf.var0 = 0;
  sms::Model::smsSettings(a2, (a1 + 16), &cf);
  v40 = *&cf.var0;
  if (*&cf.var0)
  {
    CFRetain(*&cf.var0);
  }

  v20 = sub_101151FD0(&v40, (a1 + 288));
  sub_10001021C(&v40);
  if (v20)
  {
    v21 = *(a1 + 192);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Terminal registration SMS detected", buf, 2u);
    }

    *(a1 + 32) = 1;
  }

  sub_10001021C(&cf);
  return a1;
}

void sub_10126CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10001021C((v11 - 72));
  sub_10001021C(&a9);
  v13 = *(v9 + 680);
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_1012719FC(v9 + 624);
  sub_10034F8E8(v9 + 376);
  v14 = *(v9 + 352);
  if (v14)
  {
    *(v9 + 360) = v14;
    operator delete(v14);
  }

  if (*(v9 + 311) < 0)
  {
    operator delete(*(v9 + 288));
  }

  if (*(v9 + 287) < 0)
  {
    operator delete(*(v9 + 264));
  }

  if (*(v9 + 263) < 0)
  {
    operator delete(*(v9 + 240));
  }

  if (*(v9 + 231) < 0)
  {
    operator delete(*v10);
  }

  sub_101225768(v9);
  ctu::OsLogLogger::~OsLogLogger((v9 + 192));
  _Unwind_Resume(a1);
}

uint64_t sms::GSMModel::GSMModel(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.telephony", "msg.gsm.mdl");
  v8 = a3[1];
  v16 = *a3;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sms::Model::Model(a1, a2, &v16, 1, 0, 0);
  if (v17)
  {
    sub_100004A34(v17);
  }

  *a1 = off_101F21F38;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 9;
  v9 = *a4;
  if (*(*a4 + 111) < 0)
  {
    sub_100005F2C((a1 + 240), *(v9 + 88), *(v9 + 96));
  }

  else
  {
    v10 = *(v9 + 88);
    *(a1 + 256) = *(v9 + 104);
    *(a1 + 240) = v10;
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  sub_10000501C((a1 + 288), "");
  *(a1 + 316) = 0;
  v11 = *a4;
  *(a1 + 320) = *(*a4 + 72);
  *(a1 + 324) = *(v11 + 144);
  *(a1 + 332) = *(v11 + 140);
  *(a1 + 333) = *(v11 + 152);
  *(a1 + 336) = *(v11 + 68);
  *(a1 + 340) = 1;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 376));
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 573) = 0;
  *(a1 + 584) = 0u;
  v12 = *(*a4 + 80);
  *(a1 + 600) = (v12 & 0xE) != 0;
  *(a1 + 608) = v12 >> 4;
  *(a1 + 612) = v12 & 0xF;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  v13 = a4[1];
  *(a1 + 672) = *a4;
  *(a1 + 680) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 232) == 1)
  {
    sub_100839978(a2, (a1 + 16), (a1 + 240), 1);
  }

  v14 = *(*a4 + 64);
  if (v14 <= 4)
  {
    *(a1 + 312) = v14;
  }

  CSIGetTime();
  return a1;
}

void sub_10126CFA0(_Unwind_Exception *a1)
{
  if (*(v1 + 231) < 0)
  {
    operator delete(*v2);
  }

  sub_101225768(v1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 192));
  _Unwind_Resume(a1);
}

uint64_t sub_10126D054(uint64_t a1)
{
  *a1 = off_101F21F38;
  v2 = *(a1 + 680);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1012719FC(a1 + 624);
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    *(a1 + 360) = v3;
    operator delete(v3);
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  sub_101225768(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 192));
  return a1;
}

void sub_10126D15C(uint64_t a1)
{
  sub_10126D054(a1);

  operator delete();
}

void sub_10126D194(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 200))
    {
      v3 = "MO";
    }

    else
    {
      v3 = "MT";
    }

    v25 = 136315138;
    *&v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s SMS Message details:", &v25, 0xCu);
    v2 = *(a1 + 192);
  }

  if (*(a1 + 600) == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Message is concatenated", &v25, 2u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 604);
      v25 = 67109120;
      LODWORD(v26) = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reference:\t\t%d", &v25, 8u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 608);
      v25 = 67109120;
      LODWORD(v26) = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sequence Num:\t%d", &v25, 8u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 612);
      v25 = 67109120;
      LODWORD(v26) = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Max Segments:\t%d", &v25, 8u);
      v2 = *(a1 + 192);
    }
  }

  if ((*(a1 + 200) & 1) == 0)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*(*a1 + 448))(a1);
      v25 = 67109120;
      LODWORD(v26) = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Message ID:    %d", &v25, 8u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 288);
      if (*(a1 + 311) < 0)
      {
        v8 = *v8;
      }

      v25 = 136315138;
      *&v26 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sender:        %s", &v25, 0xCu);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 572);
      v10 = *(a1 + 568);
      v11 = *(a1 + 564);
      v12 = *(a1 + 552);
      v13 = *(a1 + 556);
      v14 = *(a1 + 560);
      v15 = *(a1 + 576);
      if (*(a1 + 580))
      {
        v16 = "yes";
      }

      else
      {
        v16 = "no";
      }

      v25 = 67110914;
      LODWORD(v26) = v9;
      WORD2(v26) = 1024;
      *(&v26 + 6) = v10;
      WORD5(v26) = 1024;
      HIDWORD(v26) = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      v32 = v14;
      v33 = 1024;
      v34 = v15;
      v35 = 2080;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I MC Timestamp:  Y:%d M:%02d D:%02d @ %02d:%02d:%02d (Offset:%d, DST:%s)", &v25, 0x36u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = CSIDateToSeconds();
      v25 = 67109120;
      LODWORD(v26) = v17;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I MC Timestamp:  %d", &v25, 8u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (*(*a1 + 48))(a1);
      v25 = 67109120;
      LODWORD(v26) = v18;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Source Port:   %d", &v25, 8u);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (*(*a1 + 64))(a1);
      v25 = 67109120;
      LODWORD(v26) = v19;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dest Port:     %d", &v25, 8u);
      v2 = *(a1 + 192);
    }
  }

  if (*(a1 + 200) == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 160);
      if (*(a1 + 183) < 0)
      {
        v20 = *v20;
      }

      v25 = 136315138;
      *&v26 = v20;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Destination:\t%s", &v25, 0xCu);
      v2 = *(a1 + 192);
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 540);
      v25 = 67109120;
      LODWORD(v26) = v21;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Validity:\t\t%d", &v25, 8u);
      v2 = *(a1 + 192);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 232);
    v23 = sms::asString(v22);
    v25 = 67109378;
    LODWORD(v26) = v22;
    WORD2(v26) = 2080;
    *(&v26 + 6) = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Msg Encoding:\t%d (%s)", &v25, 0x12u);
    v2 = *(a1 + 192);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 263);
    if (v24 < 0)
    {
      v24 = *(a1 + 248);
    }

    v25 = 67109120;
    LODWORD(v26) = v24;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Body Length:\t%d", &v25, 8u);
  }
}

uint64_t sub_10126D794(const void **a1, size_t a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a3[1];
  }

  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (v3 == -1)
    {
      goto LABEL_22;
    }

    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  else if (v3 == -1)
  {
LABEL_22:
    sub_10013C334();
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  if (v4 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v5 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v5 < v3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v5 > v3;
  }

  LODWORD(result) = memcmp(a1, v7, v8);
  if (result)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

void sub_10126D814(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 160);
  std::string::operator=((a1 + 160), a2);
  if (sms::Model::plusPrefixing(*(a1 + 8), (a1 + 16)))
  {
    v7 = 0;
    sub_101318618(&__p);
  }

  v5 = *(a1 + 192);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (*(a1 + 183) < 0)
    {
      v4 = *v4;
    }

    __p = 136315394;
    __p_4 = v6;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Old Address %s Final address %s", &__p, 0x16u);
  }
}

void sub_10126E8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100005978(&a34);
  _Unwind_Resume(a1);
}

std::string *sub_10126E9A4(uint64_t a1, const std::string *a2, int a3)
{
  result = std::string::operator=((a1 + 240), a2);
  *(a1 + 232) = a3;
  return result;
}

std::string *sub_10126E9D4(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return result;
}

uint64_t sub_10126EA04(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 <= 8 && ((1 << a1) & 0x16C) != 0)
  {
    v10[0] = 0;
    v10[1] = 0;
    ctu::TextConverter::TextConverter(v10);
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    ctu::TextConverter::setSource(v10, v5, v6);
    ctu::TextConverter::pushConversion();
    getGsm7TableIndex();
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::readChars(&__p, v10, 0x7FFFFFFFuLL);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (ctu::TextConverter::exceptionOccurred(v10))
    {
      if (v2 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }
    }

    else if (v2 == 8 || v2 == 2)
    {
      v2 = 0;
    }

    ctu::TextConverter::~TextConverter(v10);
  }

  return v2;
}

void sub_10126EB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::TextConverter::~TextConverter(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10126EB38(uint64_t a1)
{
  if (*(a1 + 621) == 1)
  {
    v2 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      v2 = *v2;
    }

    if (*v2 == 43)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = v2;
    }

    v4 = ((strlen(v3) + 1) >> 1) + 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 6;
  if (!*(a1 + 148))
  {
    v4 += 4;
  }

  if (*(a1 + 148) == 1)
  {
    v4 = v5;
  }

  if (*(a1 + 232) == 5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + v4);
}

uint64_t sub_10126EBCC(uint64_t result, void *a2)
{
  v2 = result;
  if (*(result + 621) == 1)
  {
    result = (*(**a2 + 72))(*a2, result + 208);
  }

  v3 = v2[148];
  if (!v2[148])
  {
    (*(*v2 + 48))(v2);
    (*(*v2 + 64))(v2);
    result = SmsPduEncoder::set8BitApplicationPortAddressing();
    v3 = v2[148];
  }

  if (v3 == 1)
  {
    (*(*v2 + 48))(v2);
    (*(*v2 + 64))(v2);
    return SmsPduEncoder::set16BitApplicationPortAddressing();
  }

  return result;
}

uint64_t sub_10126ED0C(uint64_t a1)
{
  v1 = a1;
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_11:
      v14 = Registry::getServiceMap(*(v1 + 16));
      v15 = v14;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(v14);
      *buf = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, buf);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
LABEL_17:
        v1 = *(v1 + 192);
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = 2;
          _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to get Personality Shop.", buf, 2u);
        }

        else
        {
          v13 = 2;
        }

        if (v23)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_23:
      *buf = 0;
      v29 = 0;
      (*(*v22 + 8))(buf, v22, *(v1 + 8));
      if (*buf)
      {
        *v27 = 0;
        (*(*v10 + 24))(v26, v10, *buf + 24, @"TPMR", @"SMSControllerWalletDomain", 0, 1);
        sub_10010B240(v27, v26);
        sub_10000A1EC(v26);
        if (*v27)
        {
          LOBYTE(v26[0]) = 0;
          ctu::cf::assign(v26, *v27, v24);
          LOBYTE(v1) = v26[0];
          v13 = 1;
        }

        else
        {
          v1 = *(v1 + 192);
          if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26[0]) = 0;
            v13 = 2;
            _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to read TPMR value", v26, 2u);
          }

          else
          {
            v13 = 2;
          }
        }

        sub_100029A48(v27);
      }

      else
      {
        v1 = *(v1 + 192);
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          v13 = 2;
          _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to get Personality Info.", v27, 2u);
        }

        else
        {
          v13 = 2;
        }
      }

      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v23)
      {
LABEL_35:
        if (v11)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

LABEL_34:
      sub_100004A34(v21);
      goto LABEL_35;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = *(v1 + 192);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 2;
    goto LABEL_35;
  }

  *buf = 0;
  v13 = 2;
  _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet.", buf, 2u);
  if (v11)
  {
    goto LABEL_38;
  }

LABEL_36:
  sub_100004A34(v9);
LABEL_37:
  if (v13 == 2)
  {
LABEL_38:
    LOBYTE(v1) = 0;
  }

  return v1;
}

void sub_10126F0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100029A48(&a11);
  if (a14)
  {
    sub_100004A34(a14);
    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (v16)
  {
    goto LABEL_3;
  }

  sub_100004A34(v15);
  if (v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_4:
  sub_100004A34(v14);
  goto LABEL_5;
}

void sub_10126F128()
{
  if (v0)
  {
    JUMPOUT(0x10126F0F4);
  }

  JUMPOUT(0x10126F0ECLL);
}

uint64_t sub_10126F134(sms::Model *this)
{
  if (*(this + 64) == 1)
  {
    if (sms::Model::isIMSOverAP(this))
    {
      (*(*this + 352))(this);
      operator new();
    }

    operator new();
  }

  *(this + 349) = 0;
  v2 = *(this + 79);
  v3 = *(this + 80);
  if (v3 == v2)
  {
    v8 = (this + 664);
    v3 = *(this + 79);
  }

  else
  {
    v4 = *(this + 82);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = (this + 664);
    v9 = *(v2 + (((*(this + 83) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 83) + v4) & 0x7F);
    if (v7 != v9)
    {
      do
      {
        if (*(v7 + 31) < 0)
        {
          operator delete(*(v7 + 8));
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v9);
      v3 = *(this + 80);
      v2 = *(this + 79);
    }
  }

  *v8 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(this + 79) + 8);
      *(this + 79) = v2;
      v11 = (*(this + 80) - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 64;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_21;
    }

    v12 = 128;
  }

  *(this + 82) = v12;
LABEL_21:
  v13 = sub_10126EA04(*(this + 58), this + 240);
  *(this + 58) = v13;
  if (*(this + 621))
  {
    v14 = this;
LABEL_24:
    v15 = sub_10126EB38(v14);
    goto LABEL_25;
  }

  v14 = this;
  if (*(this + 148) < 2u)
  {
    goto LABEL_24;
  }

  v15 = sub_10126EB38(this);
  if (v13 != 5)
  {
    if (v15 > 139)
    {
      goto LABEL_51;
    }

    v63 = (this + 240);
    v16 = 0;
    goto LABEL_27;
  }

LABEL_25:
  if (v15 >= 139)
  {
LABEL_51:
    v31 = 0;
    goto LABEL_52;
  }

  v63 = (this + 240);
  v16 = -1;
LABEL_27:
  v17 = (v16 - v15 + 140);
  if (v17 < 1)
  {
    goto LABEL_51;
  }

  v18 = sub_10126EB38(this);
  v19 = 134 - v18;
  if (v18 >= 134)
  {
    v20 = 0;
  }

  else
  {
    v20 = 134 - v18;
  }

  if (v13 == 5)
  {
    v21 = 131;
  }

  else
  {
    v21 = 134;
  }

  if (v13 > 2)
  {
    if ((v13 - 5) >= 2 && v13 != 3)
    {
      if (v13 == 4)
      {
        v33 = *(this + 263);
        if (v33 < 0)
        {
          v34 = *(this + 31);
        }

        else
        {
          LODWORD(v34) = *(this + 263);
        }

        if (v17 < v34)
        {
          sub_101270C80(buf, *(this + 31), v33, v20);
          v31 = *buf;
          v29 = *&buf[8];
          v51 = this + 600;
          *(this + 600) = 1;
          goto LABEL_121;
        }
      }

      goto LABEL_100;
    }

LABEL_58:
    v35 = v63;
    if (*(this + 263) < 0)
    {
      v35 = v63->__r_.__value_.__r.__words[0];
    }

    v36 = sub_101270A1C(this, v35, v17);
    if (v36)
    {
      v37 = v63;
      if (*(this + 263) < 0)
      {
        v37 = v63->__r_.__value_.__r.__words[0];
      }

      if (v20 < 1)
      {
        v29 = 0;
        v31 = 0;
      }

      else
      {
        v38 = *(this + 58);
        if (v38 > 6 || ((1 << v38) & 0x69) == 0)
        {
          __TUAssertTrigger();
        }

        memset(buf, 0, sizeof(buf));
        *&v67 = 0;
        usedBufLen[0] = 0;
        usedBufLen[1] = 0;
        ctu::TextConverter::TextConverter(usedBufLen);
        v39 = strlen(v37);
        ctu::TextConverter::setSource(usedBufLen, v37, v39);
        ctu::TextConverter::pushConversion();
        getGsm7TableIndex();
        v40 = 0;
        for (i = 0; ; i += Gsm7EncodedSize)
        {
          SourceCount = ctu::TextConverter::getSourceCount(usedBufLen);
          if (ctu::TextConverter::nextCode(usedBufLen) == -1)
          {
            break;
          }

          Gsm7EncodedSize = ctu::TextConverter::getGsm7EncodedSize();
          v44 = i + Gsm7EncodedSize + 13;
          if (i + Gsm7EncodedSize + 6 >= 0)
          {
            v44 = i + Gsm7EncodedSize + 6;
          }

          if (v19 < v44 >> 3)
          {
            v64 = SourceCount - v40;
            sub_1004BC3F0(buf, &v64);
            i = 0;
            v40 = SourceCount;
            v19 = v21;
          }
        }

        if (ctu::TextConverter::getSourceCount(usedBufLen))
        {
          v64 = ctu::TextConverter::getSourceCount(usedBufLen) - v40;
          sub_1004BC3F0(buf, &v64);
        }

        ctu::TextConverter::~TextConverter(usedBufLen);
        v31 = *buf;
        v29 = *&buf[8];
      }
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v49 = *(this + 24);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(this + 263);
      if (v50 < 0)
      {
        v50 = *(this + 31);
      }

      *buf = 67109376;
      *&buf[4] = v50;
      *&buf[8] = 1024;
      *&buf[10] = (v29 - v31) >> 3;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I sending Gsm7 SMS of body (length %d) in %d segments", buf, 0xEu);
      v51 = this + 600;
      *(this + 600) = v36;
      if (!v36)
      {
        goto LABEL_116;
      }

LABEL_121:
      if (v29 != v31)
      {
        if (sms::Model::isIMSOverAP(this))
        {
          operator new();
        }

        operator new();
      }

      if (*v51 != 1 || *(this + 83))
      {
        v32 = 0;
        goto LABEL_129;
      }

LABEL_52:
      v32 = 3;
      goto LABEL_129;
    }

LABEL_120:
    v51 = this + 600;
    *(this + 600) = v36;
    if (v36)
    {
      goto LABEL_121;
    }

    goto LABEL_116;
  }

  if (!v13)
  {
    goto LABEL_58;
  }

  if (v13 == 1)
  {
    sub_100839978(*(this + 2), this + 2, v63, 0);
    v46 = *(this + 263);
    if ((v46 & 0x8000000000000000) != 0)
    {
      v47 = *(this + 30);
      v46 = *(this + 31);
    }

    else
    {
      v47 = v63;
    }

    v52 = ctu::TextConverter::countCharactersInUtf8Message(v47, v46, v45);
    v53 = v17 >> 1;
    v36 = v52 > v53;
    if (v52 > v53)
    {
      v54 = v63;
      if (*(this + 263) < 0)
      {
        v54 = v63->__r_.__value_.__r.__words[0];
      }

      if (v20 < 1)
      {
        v29 = 0;
        v31 = 0;
      }

      else
      {
        sub_1008393F0(v54, v20, 134, 2, buf);
        v31 = *buf;
        v29 = *&buf[8];
      }
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v57 = *(this + 24);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = *(this + 263);
      if (v58 < 0)
      {
        v58 = *(this + 31);
      }

      *buf = 67109376;
      *&buf[4] = v58;
      *&buf[8] = 1024;
      *&buf[10] = (v29 - v31) >> 3;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I sending Ucs2 SMS of body (length %d) in %d segments", buf, 0xEu);
      v59 = v52 > v53;
      v51 = this + 600;
      v60 = v59;
      *(this + 600) = v60;
      if (!v59)
      {
        goto LABEL_116;
      }

      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (v13 != 2)
  {
LABEL_100:
    *(this + 600) = 0;
    goto LABEL_116;
  }

  v22 = v63;
  if (*(this + 263) < 0)
  {
    v22 = v63->__r_.__value_.__r.__words[0];
  }

  v23 = CFStringCreateWithCString(kCFAllocatorDefault, v22, 0x8000100u);
  usedBufLen[0] = 0;
  if (v23)
  {
    Typed = CFAllocatorAllocateTyped();
    Length = CFStringGetLength(v23);
    if (Typed)
    {
      v26.length = Length;
      v27 = *(this + 263);
      if (v27 < 0)
      {
        v27 = *(this + 31);
      }

      v26.location = 0;
      CFStringGetBytes(v23, v26, 0x422u, 0x3Fu, 0, Typed, v27, usedBufLen);
      Typed[usedBufLen[0]] = 0;
    }

    if (usedBufLen[0] > 0)
    {
      sub_100016890(v63, Typed);
      v28 = usedBufLen[0];
      if (usedBufLen[0] <= v17)
      {
        v30 = 0;
        v29 = 0;
      }

      else
      {
        sub_101270B38(buf, v23, v20);
        v30 = *buf;
        v29 = *&buf[8];
      }

      v55 = *(this + 24);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(this + 263);
        if (v56 < 0)
        {
          v56 = *(this + 31);
        }

        *buf = 67109376;
        *&buf[4] = v56;
        *&buf[8] = 1024;
        *&buf[10] = (v29 - v30) >> 3;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I sending KSC-5601 SMS of body (length %d) in %d segments", buf, 0xEu);
      }

      CFRelease(v23);
      CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
      *(this + 600) = v28 > v17;
      v31 = v30;
      v51 = this + 600;
      if (v28 > v17)
      {
        goto LABEL_121;
      }

LABEL_116:
      if (sms::Model::isIMSOverAP(this))
      {
        v61 = *(this + 24);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I encoder: ImsSmsPduEncoder", buf, 2u);
        }

        operator new();
      }

      operator new();
    }
  }

  *(this + 349) = 1;
  v48 = *(this + 24);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I error sending KSC-5601 SMS (conversion failed)", buf, 2u);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v31 = 0;
  v32 = 4;
LABEL_129:
  if (v31)
  {
    operator delete(v31);
  }

  return v32;
}

void sub_101270380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101270570(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x80)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_100EF4E80(v12);
    }

    a1[4] = v7 - 128;
    v16 = *v4;
    a1[1] = v4 + 8;
    sub_1010F098C(a1, &v16);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = (*&v4[(v8 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v8 & 0x7F));
  *v13 = *a2;
  result = v13 + 2;
  if (*(a2 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v15 = *(a2 + 8);
    result[2] = *(a2 + 24);
    *result = v15;
  }

  ++a1[5];
  return result;
}

void sub_1012709F0(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_101270A1C(uint64_t a1, const char *a2, int a3)
{
  v5 = *(a1 + 232);
  v6 = v5 > 6;
  v7 = (1 << v5) & 0x69;
  if (v6 || v7 == 0)
  {
    __TUAssertTrigger();
  }

  v14[0] = 0;
  v14[1] = 0;
  ctu::TextConverter::TextConverter(v14);
  v9 = strlen(a2);
  ctu::TextConverter::setSource(v14, a2, v9);
  ctu::TextConverter::pushConversion();
  getGsm7TableIndex();
  v10 = 0;
  do
  {
    Code = ctu::TextConverter::nextCode(v14);
    if (Code == -1)
    {
      break;
    }

    v10 += ctu::TextConverter::getGsm7EncodedSize();
    v12 = v10 + 6;
    if (v10 < -6)
    {
      v12 = v10 + 13;
    }
  }

  while (a3 >= v12 >> 3);
  ctu::TextConverter::~TextConverter(v14);
  return Code != -1;
}

void sub_101270B38(uint64_t a1, const __CFString *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a3 >= 1)
  {
    v3 = a3;
    Typed = CFAllocatorAllocateTyped();
    if (Typed)
    {
      v7 = Typed;
      Length = CFStringGetLength(a2);
      usedBufLen = 0;
      if (Length >= 1)
      {
        v9 = Length;
        v10 = 0;
        do
        {
          v15.length = v9 - v10;
          v15.location = v10;
          Bytes = CFStringGetBytes(a2, v15, 0x422u, 0x3Fu, 0, v7, v3, &usedBufLen);
          if (usedBufLen <= v3)
          {
            v12 = usedBufLen;
          }

          else
          {
            v12 = v3 - 1;
          }

          v13 = v12;
          sub_1004BC3F0(a1, &v13);
          v10 += Bytes;
          v3 = 134;
        }

        while (v10 < v9);
      }

      CFAllocatorDeallocate(kCFAllocatorDefault, v7);
    }
  }
}

void sub_101270C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_101270C80(uint64_t a1, unint64_t a2, unsigned __int8 a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a4 >= 1)
  {
    if ((a3 & 0x80u) == 0)
    {
      a2 = a3;
    }

    if (a2)
    {
      v6 = a4;
      do
      {
        if (a2 <= v6)
        {
          v7 = a2;
        }

        else
        {
          v7 = v6 - 1;
        }

        v8 = v7;
        sub_1004BC3F0(a1, &v8);
        v6 = 134;
        a2 -= v7;
      }

      while (a2);
    }
  }
}

void sub_101270D04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_101270D20(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[83])
  {
    memset(&v12[2], 0, 32);
    v3 = *(a1[79] + ((a1[82] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[82] & 0x7FLL);
    LODWORD(v12[2]) = *v3;
    if (*(v3 + 31) < 0)
    {
      sub_100005F2C(&v12[3], *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      v12[5] = *(v3 + 24);
      *&v12[3] = v4;
    }

    v12[0] = 0;
    v12[1] = 0;
    ctu::TextConverter::TextConverter(v12);
    if (v12[5] >= 0)
    {
      v5 = &v12[3];
    }

    else
    {
      v5 = v12[3];
    }

    if (v12[5] >= 0)
    {
      v6 = HIBYTE(v12[5]);
    }

    else
    {
      v6 = v12[4];
    }

    ctu::TextConverter::setSource(v12, v5, v6);
    ctu::TextConverter::pushConversion();
    __p = 0;
    v10 = 0;
    v11 = 0;
    ctu::TextConverter::readChars(&__p, v12, 0x7FFFFFFFuLL);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v8 = HIBYTE(v11);
    }

    else
    {
      v8 = v10;
    }

    sub_10110506C(a2, p_p, &p_p[v8], v8);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    ctu::TextConverter::~TextConverter(v12);
    if (SHIBYTE(v12[5]) < 0)
    {
      operator delete(v12[3]);
    }
  }
}

void sub_101270E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_101270EC0(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    v2 = *(a1 + 656);
    v3 = *(*(a1 + 632) + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v2 & 0x7F);
    if (*(v3 + 31) < 0)
    {
      operator delete(*(v3 + 8));
      v2 = *(a1 + 656);
    }

    --*(a1 + 664);
    v4 = v2 + 1;
    *(a1 + 656) = v4;
    if (v4 >= 0x100)
    {
      operator delete(**(a1 + 632));
      *(a1 + 632) += 8;
      *(a1 + 656) -= 128;
    }
  }
}

uint64_t sub_101270F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_10024064C(a2, *(a1 + 352), *(a1 + 360), (*(a1 + 360) - *(a1 + 352)) >> 2);
}

std::string *sub_101270F9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *a2;
  std::string::operator=((a1 + 384), (a2 + 8));
  std::string::operator=((a1 + 408), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 432) = *(a2 + 56);
  *(a1 + 436) = v4;
  std::string::operator=((a1 + 440), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 464) = *(a2 + 88);
  *(a1 + 472) = v5;
  std::string::operator=((a1 + 480), (a2 + 104));
  result = std::string::operator=((a1 + 504), (a2 + 128));
  *(a1 + 528) = *(a2 + 152);
  return result;
}

uint64_t sub_101271028(uint64_t a1)
{
  if (*(a1 + 544) == 1)
  {
    return *(a1 + 540);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_101271044(uint64_t result, int a2)
{
  *(result + 540) = a2;
  *(result + 544) = 1;
  return result;
}

char *sub_101271054@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[263] < 0)
  {
    return sub_100005F2C(a2, *(result + 30), *(result + 31));
  }

  *a2 = *(result + 15);
  *(a2 + 16) = *(result + 32);
  return result;
}

char *sub_10127107C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[287] < 0)
  {
    return sub_100005F2C(a2, *(result + 33), *(result + 34));
  }

  *a2 = *(result + 264);
  *(a2 + 16) = *(result + 35);
  return result;
}

void sub_1012710B0(uint64_t a1, int *a2, int *a3)
{
  v6 = (a1 + 240);
  v7 = sub_10126EA04(*(a1 + 232), a1 + 240);
  *(a1 + 232) = v7;
  v9 = 1;
  if ((*(a1 + 621) & 1) == 0 && v7 != 5 && *(a1 + 148) > 1u)
  {
    v9 = 0;
  }

  v10 = sub_10126EB38(a1);
  v12 = sub_100838900((a1 + 16), *(a1 + 8));
  v13 = *(a1 + 232);
  if (v13 <= 6)
  {
    v14 = v10 + v9;
    if (((1 << v13) & 0x69) != 0)
    {
      getGsm7TableIndex();
      *a2 = ctu::TextConverter::countSeptetsInMessage();
      *a3 = 8 * ((140 - v14) / 7);
      if (!v12)
      {
LABEL_30:
        v15 = 1;
        goto LABEL_31;
      }

      v12 = ((8 * (v12 - v14)) / 7.0);
    }

    else if (v13 == 1)
    {
      v23 = *(a1 + 263);
      if ((v23 & 0x8000000000000000) != 0)
      {
        v6 = *(a1 + 240);
        v23 = *(a1 + 248);
      }

      *a2 = ctu::TextConverter::countCharactersInUtf8Message(v6, v23, v11);
      *a3 = (140 - v14) / 2;
      if (!v12)
      {
        goto LABEL_30;
      }

      v12 = (v12 - v14) >> 1;
    }

    else if (v13 == 2)
    {
      if (*(a1 + 263) < 0)
      {
        v6 = *v6;
      }

      v16 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
      usedBufLen = 0;
      if (v16)
      {
        v17 = v16;
        Typed = CFAllocatorAllocateTyped();
        Length = CFStringGetLength(v17);
        if (Typed)
        {
          v20.length = Length;
          v21 = *(a1 + 263);
          if (v21 < 0)
          {
            v21 = *(a1 + 248);
          }

          v20.location = 0;
          CFStringGetBytes(v17, v20, 0x422u, 0x3Fu, 0, Typed, v21, &usedBufLen);
          v22 = usedBufLen;
          Typed[usedBufLen] = 0;
          if (v22 < 0)
          {
            LODWORD(v22) = 0;
            usedBufLen = 0;
          }
        }

        else
        {
          LODWORD(v22) = 0;
        }

        *a2 = v22;
        *a3 = 140 - v14;
        if (v12)
        {
          v12 -= v14;
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v17);
        if (Typed)
        {
          CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
        }
      }

      else
      {
        *a2 = 0;
        *a3 = 140 - v14;
        if (v12)
        {
          v12 -= v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  v15 = a3 != 0;
  if (a3 && v12)
  {
    if (*a3 > v12)
    {
      *a3 = v12;
    }

    goto LABEL_30;
  }

LABEL_31:
  v24 = *a2;
  if (*a2 < 0)
  {
    v24 = 0;
    *a2 = 0;
    if (!v15)
    {
      return;
    }
  }

  else if (!v15)
  {
    return;
  }

  v25 = *(a1 + 192);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *a3;
    v27 = *(a1 + 232);
    LODWORD(usedBufLen) = 67109632;
    HIDWORD(usedBufLen) = v24;
    v29 = 1024;
    v30 = v26;
    v31 = 1024;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Message size: %d split threshold: %d for encoding: %d", &usedBufLen, 0x14u);
  }
}

BOOL sub_101271414(uint64_t a1, int a2)
{
  if ((*(a1 + 621) & 1) != 0 || *(a1 + 148) < 2u || (v4 = *(a1 + 232), v4 == 5))
  {
    v4 = *(a1 + 232);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10126EB38(a1);
  v7 = (a1 + 240);
  v8 = sub_10126EA04(v4, a1 + 240);
  v10 = 0;
  *(a1 + 232) = v8;
  if (v8 > 6)
  {
    return v10;
  }

  v11 = v6 + v5;
  if (((1 << v8) & 0x69) == 0)
  {
    if (v8 == 1)
    {
      v21 = *(a1 + 263);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v7 = *(a1 + 240);
        v21 = *(a1 + 248);
      }

      return a2 - v11 < 2 * ctu::TextConverter::countCharactersInUtf8Message(v7, v21, v9);
    }

    if (v8 == 2)
    {
      v13 = *(a1 + 263);
      if (v13 < 0)
      {
        v7 = *(a1 + 240);
        v13 = *(a1 + 248);
      }

      v14 = CFStringCreateWithBytes(kCFAllocatorDefault, v7, v13, 0x8000100u, 0);
      usedBufLen = 0;
      if (v14)
      {
        v15 = v14;
        Typed = CFAllocatorAllocateTyped();
        Length = CFStringGetLength(v15);
        if (Typed)
        {
          v18.length = Length;
          v19 = *(a1 + 263);
          if (v19 < 0)
          {
            v19 = *(a1 + 248);
          }

          v18.location = 0;
          CFStringGetBytes(v15, v18, 0x422u, 0x3Fu, 0, Typed, v19, &usedBufLen);
          v20 = usedBufLen;
          Typed[usedBufLen] = 0;
          if (v20 < 0)
          {
            LODWORD(v20) = 0;
            usedBufLen = 0;
          }

          v10 = a2 - v11 < v20;
          CFRelease(v15);
          CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
          return v10;
        }

        CFRelease(v15);
      }

      return 0;
    }

    return v10;
  }

  if (*(a1 + 263) < 0)
  {
    v7 = *v7;
  }

  return sub_101270A1C(a1, v7, a2 - v11);
}

__n128 sub_1012716A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 568);
  *a2 = *(a1 + 552);
  *(a2 + 16) = v2;
  result = *(a1 + 584);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1012716C4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = *(a1 + 600);
  if (result == 1)
  {
    *a2 = *(a1 + 604);
    *a3 = *(a1 + 608) - 1;
    *a4 = *(a1 + 612);
  }

  return result;
}

uint64_t sub_1012716FC(unsigned __int16 *a1)
{
  result = sms::Model::isIMSOverAP(a1);
  if (result)
  {
    return a1[26];
  }

  return result;
}

uint64_t sub_101271728(uint64_t a1)
{
  if (*(a1 + 200))
  {
    return 0;
  }

  if (*(a1 + 340))
  {
    return 2;
  }

  return 1;
}

char *sub_10127174C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[200] == 1)
  {
    if ((result[183] & 0x80000000) == 0)
    {
      *a2 = *(result + 10);
      v2 = *(result + 22);
LABEL_6:
      *(a2 + 16) = v2;
      return result;
    }

    v3 = *(result + 20);
    v4 = *(result + 21);
  }

  else
  {
    if ((result[311] & 0x80000000) == 0)
    {
      *a2 = *(result + 18);
      v2 = *(result + 38);
      goto LABEL_6;
    }

    v3 = *(result + 36);
    v4 = *(result + 37);
  }

  return sub_100005F2C(a2, v3, v4);
}

std::string *sub_1012717A0(std::string *result, char *a2)
{
  if ((result[8].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    return sub_100016890(result + 12, a2);
  }

  return result;
}

uint64_t sub_1012717E4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 680);
  *a2 = *(result + 672);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10127180C(uint64_t a1)
{
  if (!*(a1 + 672))
  {
    return 30;
  }

  v10 = 15;
  if (ctu::TextConverter::decodeCbsDataCodingScheme())
  {
    BroadcastLanguageFromLocale = v10;
    switch(v10)
    {
      case 0u:
        return BroadcastLanguageFromLocale;
      case 1u:
        BroadcastLanguageFromLocale = 1;
        break;
      case 2u:
        BroadcastLanguageFromLocale = 2;
        break;
      case 3u:
        BroadcastLanguageFromLocale = 3;
        break;
      case 4u:
        BroadcastLanguageFromLocale = 4;
        break;
      case 5u:
        BroadcastLanguageFromLocale = 5;
        break;
      case 6u:
        BroadcastLanguageFromLocale = 6;
        break;
      case 7u:
        BroadcastLanguageFromLocale = 7;
        break;
      case 8u:
        BroadcastLanguageFromLocale = 8;
        break;
      case 9u:
        BroadcastLanguageFromLocale = 9;
        break;
      case 0xAu:
        BroadcastLanguageFromLocale = 10;
        break;
      case 0xBu:
        BroadcastLanguageFromLocale = 11;
        break;
      case 0xCu:
        BroadcastLanguageFromLocale = 12;
        break;
      case 0xDu:
        BroadcastLanguageFromLocale = 13;
        break;
      case 0xEu:
        BroadcastLanguageFromLocale = 14;
        break;
      case 0xFu:
        BroadcastLanguageFromLocale = 15;
        break;
      case 0x20u:
        BroadcastLanguageFromLocale = 16;
        break;
      case 0x21u:
        BroadcastLanguageFromLocale = 17;
        break;
      case 0x22u:
        BroadcastLanguageFromLocale = 18;
        break;
      case 0x23u:
        BroadcastLanguageFromLocale = 19;
        break;
      case 0x24u:
        BroadcastLanguageFromLocale = 20;
        break;
      default:
        return 30;
    }

    return BroadcastLanguageFromLocale;
  }

  v3 = *(a1 + 672);
  if (*(v3 + 135) < 0)
  {
    sub_100005F2C(__p, *(v3 + 112), *(v3 + 120));
  }

  else
  {
    *__p = *(v3 + 112);
    v9 = *(v3 + 128);
  }

  if (SHIBYTE(v9) < 0)
  {
    v4 = __p[1];
    operator delete(__p[0]);
    if (!v4)
    {
      return 30;
    }
  }

  else if (!HIBYTE(v9))
  {
    return 30;
  }

  v5 = *(a1 + 672);
  if (*(v5 + 135) < 0)
  {
    sub_100005F2C(__p, *(v5 + 112), *(v5 + 120));
  }

  else
  {
    *__p = *(v5 + 112);
    v9 = *(v5 + 128);
  }

  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  BroadcastLanguageFromLocale = getBroadcastLanguageFromLocale(v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return BroadcastLanguageFromLocale;
}

void sub_1012719E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012719FC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 128;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101271B84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F22158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101271C20(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F221A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101271D50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_101271D78(void *a1, NSObject **a2)
{
  *a1 = off_101EF5F40;
  v3 = a1 + 1;
  v4 = *a2;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "dese.bb");
  sub_101271EA0(v3, "TelephonyBasebandController", QOS_CLASS_UTILITY, &object, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101F221F8;
  a1[6] = TelephonyBasebandCreateController();
  return a1;
}

void sub_101271E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger((v12 + 40));
  sub_1000C0544(v13);
  _Unwind_Resume(a1);
}

void *sub_101271EA0(void *a1, const char *a2, dispatch_qos_class_t qos_class, dispatch_object_t *a4, const OsLogContext *a5)
{
  v9 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
    v10 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2(a2, v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    v11 = dispatch_queue_create(a2, v12);
  }

  v13 = v11;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[3] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v9)
  {
    dispatch_release(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(v15, a5);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  return a1;
}

void sub_101271FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_101271FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012720C0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_101272448(&v6, a3, a3 + 16 * a2, a2);
  v5[0] = a1;
  v5[1] = 0uLL;
  sub_101272448(v5 + 8, v6, v7, (v7 - v6) >> 4);
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

void sub_1012721FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101272218(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_101272448(&v6, a3, a3 + 16 * a2, a2);
  v5[0] = a1;
  v5[1] = 0uLL;
  sub_101272448(v5 + 8, v6, v7, (v7 - v6) >> 4);
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

void sub_101272354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101272370(uint64_t a1)
{
  *a1 = off_101F221F8;
  v2 = (a1 + 40);
  sub_1012724FC((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012723CC(uint64_t a1)
{
  *a1 = off_101F221F8;
  v2 = (a1 + 40);
  sub_1012724FC((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544((a1 + 8));

  operator delete();
}

void sub_101272448(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_1000CE3D4();
  }
}

void sub_1012724E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012724FC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1012725B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012725EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101272624(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101272654(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101272694(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if ((TelephonyBasebandClearFreqList() & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Clear Frequency List Failed", buf, 2u);
    }
  }

  operator delete();
}

uint64_t *sub_101272758(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((TelephonyBasebandAddFreqList() & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Add Frequency List Failed", buf, 2u);
    }
  }

  sub_101272808(&v6);
  return sub_1000049E0(&v5);
}