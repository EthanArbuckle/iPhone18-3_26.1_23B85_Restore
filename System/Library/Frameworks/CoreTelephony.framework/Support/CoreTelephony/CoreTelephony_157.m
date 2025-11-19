void sub_10137B160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13, char a14, std::__shared_weak_count *a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, const void *a27, const void *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, const void *a59, const void *a60, const void *a61, const void *a62, void *a63)
{
  sub_100005978(&a72);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100FB0A00(&STACK[0x220]);
  sub_1000D6F38(&a46);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_100005978(&a59);
  sub_100005978(&a60);
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  sub_100005978(&a62);
  sub_100005978(&a61);
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_101373B64(&a67);
  sub_100005978(&a26);
  sub_100005978(&a27);
  sub_100005978(&a28);
  if (v72 < 0)
  {
    operator delete(a29);
  }

  if (a18 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10137B7D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v6 = *v5;
    *(a1 + 24) = *(v5 + 2);
    *(a1 + 8) = v6;
    *(a2 + 31) = 0;
    *(a2 + 8) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    v8 = *v5;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v5 = 0;
    v9 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v9;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 1;
  }

  return a1;
}

void TravelHandler::savePostArrivalCache_sync(TravelHandler *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    LOBYTE(v4) = 0;
    v9 = 0;
    if (*(this + 656) == 1)
    {
      v4 = *(this + 75);
      if (*(this + 631) < 0)
      {
        sub_100005F2C(v5, *(this + 76), *(this + 77));
      }

      else
      {
        *v5 = *(this + 38);
        v6 = *(this + 78);
      }

      if (*(this + 655) < 0)
      {
        sub_100005F2C(__p, *(this + 79), *(this + 80));
      }

      else
      {
        *__p = *(this + 632);
        v8 = *(this + 81);
      }

      v9 = 1;
    }

    (*(*v2 + 88))(v2, &v4);
    if (v9 == 1)
    {
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5[0]);
      }
    }
  }

  else
  {
    v3 = *(this + 7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }
  }
}

void sub_10137B9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1)
  {
    sub_1000EFBF0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void TravelHandler::maybeSendTravelOutboundNotification_sync(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (capabilities::ct::supportsGemini(a1) && (sub_10136ED5C(a1) & 1) == 0 && sub_10136F6C8(a1))
  {
    v6 = *(a1 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification", &buf, 2u);
    }

    return;
  }

  sub_101372478();
  if (sub_100007A6C(&qword_101FCA968, a3) == &qword_101FCA970)
  {
    v139 = 0;
    v140 = 0;
    v141 = 0;
    sub_10136F470(&v139, a1, a2);
    v7 = SHIBYTE(v141);
    if (v141 >= 0)
    {
      v8 = HIBYTE(v141);
    }

    else
    {
      v8 = v140;
    }

    if (!v8)
    {
      v32 = *(a1 + 56);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to retrieve previous continent code", &buf, 2u);
      }

      goto LABEL_282;
    }

    v136 = 0;
    v137 = 0;
    v138 = 0;
    sub_10136F470(&v136, a1, a3);
    v9 = HIBYTE(v138);
    v10 = v137;
    if (v138 >= 0)
    {
      v11 = HIBYTE(v138);
    }

    else
    {
      v11 = v137;
    }

    if (!v11)
    {
      v33 = *(a1 + 56);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to retrieve current continent code", &buf, 2u);
      }

      goto LABEL_279;
    }

    if (v11 == v8)
    {
      v12 = v136;
      v13 = v138 >= 0 ? &v136 : v136;
      v14 = v7 >= 0 ? &v139 : v139;
      if (!memcmp(v13, v14, v8))
      {
        if ((v9 & 0x80) != 0)
        {
          if (v10 != 1)
          {
            goto LABEL_23;
          }

          v45 = *v12;
        }

        else
        {
          if (v9 != 1)
          {
            goto LABEL_23;
          }

          v45 = v12;
        }

        if (v45 == 50)
        {
          v68 = *(a1 + 56);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I in EU, skip post arrival notification", &buf, 2u);
          }

          sub_10000501C(&buf, "");
          sub_10000501C(v142, "");
          sub_10000501C(&v133, "EU Travel");
          sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v142, &v133);
          goto LABEL_244;
        }
      }
    }

LABEL_23:
    v117 = (a1 + 360);
    v15 = *(a1 + 360);
    if (v15)
    {
      v16 = a1 + 360;
      do
      {
        v17 = sub_1000068BC((v15 + 32), a3);
        if ((v17 & 0x80u) == 0)
        {
          v16 = v15;
        }

        v15 = *(v15 + ((v17 >> 4) & 8));
      }

      while (v15);
      if (v16 != v117 && (sub_1000068BC(a3, (v16 + 32)) & 0x80) == 0)
      {
        v18 = *(v16 + 56);
        if (v18 + 31536000.0 > sub_10136D3A8(*(a1 + 64)))
        {
          v19 = *(a1 + 56);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification because of rate limit policy.", &buf, 2u);
          }

          ++*(a1 + 172);
          ServiceMap = Registry::getServiceMap(*(a1 + 64));
          v21 = ServiceMap;
          if ((v22 & 0x8000000000000000) != 0)
          {
            v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
            v24 = 5381;
            do
            {
              v22 = v24;
              v25 = *v23++;
              v24 = (33 * v24) ^ v25;
            }

            while (v25);
          }

          std::mutex::lock(ServiceMap);
          buf.__r_.__value_.__r.__words[0] = v22;
          v26 = sub_100009510(&v21[1].__m_.__sig, &buf);
          if (v26)
          {
            v28 = v26[3];
            v27 = v26[4];
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v21);
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v27);
              v29 = 0;
LABEL_218:
              if (v28)
              {
                v103 = *(a1 + 172);
                *v142 = 0;
                buf.__r_.__value_.__r.__words[0] = v103;
                v104 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &buf);
                if (v104)
                {
                  *v142 = v104;
                  buf.__r_.__value_.__r.__words[0] = 0;
                  sub_100029A48(&buf.__r_.__value_.__l.__data_);
                  v105 = *v142;
                }

                else
                {
                  v105 = 0;
                }

                v133 = v105;
                *v142 = 0;
                sub_100029A48(v142);
                (*(*v28 + 16))(v28, @"TravelNotificationRateLimitCount", v105, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
                (*(*v28 + 48))(v28, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
                sub_100029A48(&v133);
              }

              else
              {
                v106 = *(a1 + 56);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Could not get preferences", &buf, 2u);
                }
              }

              if ((v29 & 1) == 0)
              {
                sub_100004A34(v27);
              }

              sub_10000501C(&buf, "");
              sub_10000501C(v142, "");
              sub_10000501C(&v133, "rate limited");
              sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v142, &v133);
LABEL_244:
              if (SHIBYTE(v135) < 0)
              {
                operator delete(v133);
              }

              if (v143 < 0)
              {
                operator delete(*v142);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              goto LABEL_279;
            }
          }

          else
          {
            v28 = 0;
          }

          std::mutex::unlock(v21);
          v27 = 0;
          v29 = 1;
          goto LABEL_218;
        }
      }
    }

    v133 = 0;
    v134 = 0;
    v135 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v132 = *(a3 + 16);
    }

    if ((v9 & 0x80) != 0)
    {
      if (v10 == 1)
      {
        v34 = v136;
        goto LABEL_59;
      }
    }

    else if (v9 == 1)
    {
      v34 = &v136;
LABEL_59:
      v35 = *v34 == 50;
      goto LABEL_61;
    }

    v35 = 0;
LABEL_61:
    sub_101374B80(&v133, a1, __p, v35);
    if (SHIBYTE(v132) < 0)
    {
      operator delete(__p[0]);
    }

    if (capabilities::ct::dataOnlySingleSIMDevice(v36))
    {
      v37 = v133;
      if (v133 != &v134)
      {
        while ((v37[56] & 1) == 0)
        {
          v38 = *(v37 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v37 + 2);
              v43 = *v39 == v37;
              v37 = v39;
            }

            while (!v43);
          }

          v37 = v39;
          if (v39 == &v134)
          {
            goto LABEL_72;
          }
        }

        v67 = *(a1 + 56);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification because device has a local plan enabled already.", &buf, 2u);
        }

        sub_10000501C(&buf, "");
        sub_10000501C(v142, "");
        sub_10000501C(&v130, "local plan enabled");
        sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v142, &v130);
        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (v143 < 0)
        {
          operator delete(*v142);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_278;
      }
    }

LABEL_72:
    memset(&v130, 0, sizeof(v130));
    sub_10000501C(&v130, "");
    v127 = 0;
    v128 = 0;
    v129 = 0;
    sub_10000501C(&v127, "");
    v126 = @"TRAVEL_NOTIFICATION_TITLE";
    CFRetain(@"TRAVEL_NOTIFICATION_TITLE");
    v125 = 0;
    v40 = *(a1 + 1192);
    v41 = *(a1 + 1200);
    if (v40 == v41)
    {
LABEL_89:
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE_PSIM_ONLY";
    }

    else
    {
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE_PSIM_ONLY";
      while (1)
      {
        v43 = !*v40 || v40[3] == 5;
        v44 = !v43;
        if (v40[1] == 3)
        {
          break;
        }

        if (v44)
        {
          goto LABEL_88;
        }

        v40 += 22;
        if (v40 == v41)
        {
          goto LABEL_90;
        }
      }

      if (!v44)
      {
        goto LABEL_89;
      }

LABEL_88:
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE";
    }

LABEL_90:
    v125 = v42;
    v46 = CFRetain(v42);
    if (capabilities::ct::dataOnlySingleSIMDevice(v46))
    {
      if (sub_10136DCB8(a1))
      {
        if (SHIBYTE(v129) < 0)
        {
          v128 = 6;
          v47 = v127;
        }

        else
        {
          HIBYTE(v129) = 6;
          v47 = &v127;
        }

        *(v47 + 2) = 28009;
        *v47 = 1931505518;
        v69 = v47 + 6;
        v50 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR&type=travelEducation";
      }

      else
      {
        v50 = [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR&type=travelEducation" stringByAppendingString:@"&showRoamingOption=1"];
        std::string::append(&v130, "data roaming_", 0xDuLL);
        if (SHIBYTE(v129) < 0)
        {
          v128 = 13;
          v51 = v127;
        }

        else
        {
          HIBYTE(v129) = 13;
          v51 = &v127;
        }

        qmemcpy(v51, "has user sims", 13);
        v69 = v51 + 13;
      }

      *v69 = 0;
      if (v135)
      {
        v70 = [(__CFString *)v50 stringByAppendingString:@"&showLocalPlanOption=1"];

        std::string::append(&v130, "switch to existing plan_", 0x18uLL);
        if (SHIBYTE(v129) < 0)
        {
          v128 = 13;
          v71 = v127;
        }

        else
        {
          HIBYTE(v129) = 13;
          v71 = &v127;
        }

        strcpy(v71, "has local sim");
        v72 = v70;
      }

      else
      {
        v72 = v50;
      }

      v73 = [v72 stringByAppendingString:@"&showPurchaseOption=1"];

      v49 = v73;
      std::string::append(&v130, "purchase local plan", 0x13uLL);
      goto LABEL_161;
    }

    if (sub_10136EE9C(a1, a3))
    {
LABEL_95:
      v48 = *(a1 + 56);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Suppress notification because one of the existing cellular plan(s) works in the current country.", &buf, 2u);
      }

LABEL_97:
      v49 = &stru_101F6AFB8;
      goto LABEL_273;
    }

    v52 = *(a1 + 1216);
    v53 = *(a1 + 1224);
    if (v52 != v53)
    {
      v54 = (v52 + 72);
      do
      {
        if (*(v54 + 23) < 0)
        {
          sub_100005F2C(&buf, *v54, *(v54 + 1));
        }

        else
        {
          v55 = *v54;
          buf.__r_.__value_.__r.__words[2] = *(v54 + 2);
          *&buf.__r_.__value_.__l.__data_ = v55;
        }

        v56 = sub_10136BCA0(*(a1 + 1192), *(a1 + 1200), &buf);
        v57 = v56;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
          if (v57)
          {
            goto LABEL_117;
          }
        }

        else if (v56)
        {
          goto LABEL_117;
        }

        if (subscriber::isSimReady() && a1 + 1112 != sub_100007A6C(a1 + 1104, v54))
        {
          if (*(sub_1000E20F0(a1 + 1104, v54) + 8) == 4)
          {
            v58 = sub_1000E20F0(a1 + 1104, v54);
            sub_10000501C(v142, "*");
            v59 = sub_100007A6C(v58 + 16, v142);
            if (v143 < 0)
            {
              operator delete(*v142);
            }

            if (v58 + 24 != v59)
            {
              goto LABEL_95;
            }
          }

          if (*(sub_1000E20F0(a1 + 1104, v54) + 8) <= 2)
          {
            v60 = sub_1000E20F0(a1 + 1104, v54);
            if (v60 + 24 != sub_100007A6C(v60 + 16, a3))
            {
              goto LABEL_95;
            }
          }
        }

LABEL_117:
        v61 = v54 + 6;
        v54 = (v54 + 168);
      }

      while (v61 != v53);
    }

    v49 = &stru_101F6AFB8;
    if ((sub_10136ED5C(a1) & 1) == 0 && !sub_101371638(a1, a3))
    {
      if (*(a1 + 1096) == 1 && *(a1 + 1072) == 1)
      {
        v107 = *(a1 + 56);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Showed pre-departure notification already.", &buf, 2u);
        }

        goto LABEL_273;
      }

      if ((*(**(a1 + 96) + 80))(*(a1 + 96)))
      {
        for (i = *(a1 + 1192); i != *(a1 + 1200); i += 22)
        {
          if (*i)
          {
            v109 = i[3] == 5;
          }

          else
          {
            v109 = 1;
          }

          v110 = !v109;
          if (i[1] == 3)
          {
            if (!v110)
            {
              goto LABEL_97;
            }

            goto LABEL_251;
          }

          if (v110)
          {
            goto LABEL_251;
          }
        }

        goto LABEL_273;
      }

LABEL_251:
      v49 = &stru_101F6AFB8;
      if ((sub_10136F6C8(a1) & 1) == 0 && (sub_10136DCB8(a1) & 1) == 0)
      {
        if (!*(a1 + 2932))
        {
          v113 = *(a1 + 56);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I Postponing post-arrival due to no wifi", &buf, 2u);
          }

          sub_100580870(&buf, a2, a3);
          v114 = (a1 + 664);
          if (*(a1 + 712) == 1)
          {
            sub_10015F6CC(v114, &buf);
          }

          else
          {
            *v114 = *&buf.__r_.__value_.__l.__data_;
            *(a1 + 680) = *(&buf.__r_.__value_.__l + 2);
            memset(&buf, 0, sizeof(buf));
            v115 = v119;
            *&v119 = 0;
            *(a1 + 688) = v115;
            *(a1 + 704) = v120;
            *(&v119 + 1) = 0;
            v120 = 0;
            *(a1 + 712) = 1;
          }

          sub_1000D6F38(&buf);
          goto LABEL_273;
        }

        if ((sub_1013719B0(a1) & 1) == 0)
        {
          buf.__r_.__value_.__r.__words[0] = @"TRAVEL_NOTIFICATION_REDUCED_MESSAGE";
          sub_10021D11C(&v125, &buf.__r_.__value_.__l.__data_);
        }

        sub_10000501C(v142, "");
        sub_10000501C(v123, "");
        sub_10000501C(v121, "");
        sub_101374410(&buf, a1, 1, v142);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v112 = [NSString stringWithUTF8String:p_buf];
        v49 = [&stru_101F6AFB8 stringByAppendingString:v112];

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v122 < 0)
        {
          operator delete(v121[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123[0]);
        }

        if (v143 < 0)
        {
          operator delete(*v142);
        }
      }

LABEL_213:
      if ([(__CFString *)v49 length]&& *(a1 + 1096) == 1)
      {
        *(a1 + 1073) = 1;
        sub_1013751D4(a1);
      }

LABEL_161:
      v75 = v125;
      v74 = v126;
      sub_10000501C(&buf, [(__CFString *)v49 UTF8String]);
      sub_10000501C(v142, "");
      sub_10000501C(v123, "");
      sub_10137EED0(a1, v74, v75, &stru_101F6AFB8, &buf, v142, v123);
      if (v124 < 0)
      {
        operator delete(v123[0]);
      }

      if (v143 < 0)
      {
        operator delete(*v142);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_10000501C(&buf, "");
      sub_101372680(a1, a1 + 256, a2, a3, 1, &v127, &v130, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v76 = sub_10136D3A8(*(a1 + 64));
      buf.__r_.__value_.__r.__words[0] = a3;
      *(sub_10079B1AC(a1 + 352, a3) + 56) = v76;
      v77 = Registry::getServiceMap(*(a1 + 64));
      v78 = v77;
      if ((v79 & 0x8000000000000000) != 0)
      {
        v80 = (v79 & 0x7FFFFFFFFFFFFFFFLL);
        v81 = 5381;
        do
        {
          v79 = v81;
          v82 = *v80++;
          v81 = (33 * v81) ^ v82;
        }

        while (v82);
      }

      std::mutex::lock(v77);
      buf.__r_.__value_.__r.__words[0] = v79;
      v83 = sub_100009510(&v78[1].__m_.__sig, &buf);
      if (v83)
      {
        v84 = v83[3];
        v85 = v83[4];
        if (v85)
        {
          v86 = v83[3];
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v78);
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          v84 = v86;
          sub_100004A34(v85);
          v87 = 0;
          if (!v86)
          {
            goto LABEL_175;
          }

          goto LABEL_179;
        }
      }

      else
      {
        v84 = 0;
      }

      std::mutex::unlock(v78);
      v85 = 0;
      v87 = 1;
      if (!v84)
      {
LABEL_175:
        v88 = *(a1 + 56);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Could not get preferences", &buf, 2u);
        }

        goto LABEL_195;
      }

LABEL_179:
      if (*(a1 + 368))
      {
        v116 = v84;
        v89 = [NSMutableArray arrayWithCapacity:?];
        v90 = *(a1 + 352);
        if (v90 != v117)
        {
          do
          {
            v91 = objc_opt_new();
            sub_100737750(v90 + 4, @"key", v91);
            v92 = @"value";
            v93 = v91;
            v94 = [NSNumber numberWithDouble:*(v90 + 7)];
            codec::setItem(v94, @"value", v93, v95);

            if (v93)
            {
              [v89 addObject:v93];
            }

            v96 = v90[1];
            if (v96)
            {
              do
              {
                v97 = v96;
                v96 = *v96;
              }

              while (v96);
            }

            else
            {
              do
              {
                v97 = v90[2];
                v43 = *v97 == v90;
                v90 = v97;
              }

              while (!v43);
            }

            v90 = v97;
          }

          while (v97 != v117);
        }

        v84 = v116;
        if ([v89 count])
        {
          v98 = v89;
        }

        else
        {
          v98 = 0;
        }
      }

      else
      {
        v98 = 0;
      }

      (*(*v84 + 16))(v84, @"TravelNotificationTimestamps", v98, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      *(a1 + 170) = 1;
      (*(*v84 + 16))(v84, @"TravelNotificationShowReturnHome", kCFBooleanTrue, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v84 + 48))(v84, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

LABEL_195:
      if ((v87 & 1) == 0)
      {
        sub_100004A34(v85);
      }

      if (*(a1 + 656) == 1)
      {
        v99 = *(a1 + 56);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I Post-arrival occurred, clear postponed post arrival cache", &buf, 2u);
        }

        sub_10137FBE4(a1 + 600);
        TravelHandler::savePostArrivalCache_sync(a1);
      }

      v100 = *(a1 + 552);
      if (!v100)
      {
        goto LABEL_273;
      }

      v101 = *(a1 + 56);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Post-arrival already occurred, clear postponed pa", &buf, 2u);
        v100 = *(a1 + 552);
        *(a1 + 552) = 0;
        if (!v100)
        {
          goto LABEL_273;
        }
      }

      else
      {
        *(a1 + 552) = 0;
      }

      (*(*v100 + 8))(v100);
LABEL_273:
      sub_100005978(&v125);
      sub_100005978(&v126);
      if (SHIBYTE(v129) < 0)
      {
        operator delete(v127);
      }

      if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v130.__r_.__value_.__l.__data_);
      }

      LOBYTE(v9) = HIBYTE(v138);
LABEL_278:
      sub_100009970(&v133, v134);
LABEL_279:
      if ((v9 & 0x80) != 0)
      {
        operator delete(v136);
      }

      LOBYTE(v7) = HIBYTE(v141);
LABEL_282:
      if ((v7 & 0x80) == 0)
      {
        return;
      }

      v31 = v139;
      goto LABEL_284;
    }

    v62 = *(a1 + 56);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I One of the existing cellular plan(s) works in the current country.", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    sub_101373CBC(&buf, a1);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (!sub_10136EBE4(a1, &buf))
      {
        *v142 = @"TRAVEL_NOTIFICATION_POST_ARRIVAL_TITLE";
        sub_10021D11C(&v126, v142);
        sub_101372ED8(v123, a1, &buf);
        *v142 = v125;
        v125 = v123[0];
        v123[0] = 0;
        sub_100005978(v142);
        sub_100005978(v123);
        sub_10000501C(v123, "");
        sub_10000501C(v121, "");
        sub_101374410(v142, a1, 2, &buf);
        if (v143 >= 0)
        {
          v64 = v142;
        }

        else
        {
          v64 = *v142;
        }

        v65 = [NSString stringWithUTF8String:v64];
        v49 = [&stru_101F6AFB8 stringByAppendingString:v65];

        if (v143 < 0)
        {
          operator delete(*v142);
        }

        if (v122 < 0)
        {
          operator delete(v121[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123[0]);
        }

        v66 = 1;
LABEL_210:
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if ((v66 & 1) == 0)
        {
          goto LABEL_273;
        }

        goto LABEL_213;
      }
    }

    else
    {
      v102 = *(a1 + 56);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        *v142 = 0;
        _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "no iccid found for post-arrival notif", v142, 2u);
      }
    }

    v66 = 0;
    goto LABEL_210;
  }

  v30 = *(a1 + 56);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip showing post arrival notification", &buf, 2u);
  }

  sub_10000501C(&buf, "");
  sub_10000501C(v142, "");
  sub_10000501C(&v139, "deny listed country");
  sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v142, &v139);
  if (SHIBYTE(v141) < 0)
  {
    operator delete(v139);
  }

  if (v143 < 0)
  {
    operator delete(*v142);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    v31 = buf.__r_.__value_.__r.__words[0];
LABEL_284:
    operator delete(v31);
  }
}

void sub_10137D058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_100005978(&a37);
  sub_100005978(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  v58 = *(v56 - 153);
  sub_100009970(v56 - 200, *(v56 - 192));
  if (v58 < 0)
  {
    operator delete(*(v56 - 176));
  }

  if (*(v56 - 129) < 0)
  {
    operator delete(*(v56 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_10137D434(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10137415C(&__p, *(a1 + 1216), *(a1 + 1224), 1);
  v2 = HIBYTE(v7);
  if (v7 < 0)
  {
    v2 = v6;
  }

  if (v2)
  {
    if ((*(a1 + 1312) & 0xFFFFFFFE) == 4)
    {
      sub_101376164(a1, &__p);
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot one", v4, 2u);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_10137D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10137D51C(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10137415C(&__p, *(a1 + 1216), *(a1 + 1224), 2);
  v2 = HIBYTE(v7);
  if (v7 < 0)
  {
    v2 = v6;
  }

  if (v2)
  {
    if ((*(a1 + 2128) & 0xFFFFFFFE) == 4)
    {
      sub_101376164(a1, &__p);
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot two", v4, 2u);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_10137D5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10137D604(uint64_t a1)
{
  v2 = *(a1 + 1216);
  v3 = *(a1 + 1224);
  if (v2 != v3)
  {
    v4 = (a1 + 312);
    do
    {
      if (subscriber::isSimReady())
      {
        if ((*(v2 + 95) & 0x8000000000000000) != 0)
        {
          if (!*(v2 + 80))
          {
            goto LABEL_135;
          }
        }

        else if (!*(v2 + 95))
        {
          goto LABEL_135;
        }

        if ((*(v2 + 119) & 0x8000000000000000) != 0)
        {
          if (*(v2 + 104))
          {
LABEL_12:
            v51 = 0u;
            memset(&v52, 0, sizeof(v52));
            *string = 0u;
            *v50 = 0u;
            v48 = 0u;
            memset(v47, 0, sizeof(v47));
            std::string::operator=(v47, (v2 + 96));
            v46 = 0u;
            memset(__str, 0, sizeof(__str));
            sub_100A34BC8(__str);
            std::string::operator=(&v47[24], __str);
            std::string::operator=(string, &__str[24]);
            std::string::operator=(&v50[1], (v2 + 120));
            std::string::operator=(&v52, (v2 + 144));
            v5 = *v4;
            if (*v4)
            {
              v6 = a1 + 312;
              do
              {
                v7 = sub_1000068BC((v5 + 32), (v2 + 72));
                if ((v7 & 0x80u) == 0)
                {
                  v6 = v5;
                }

                v5 = *(v5 + ((v7 >> 4) & 8));
              }

              while (v5);
              if (v6 != v4 && (sub_1000068BC((v2 + 72), (v6 + 32)) & 0x80) == 0)
              {
                *buf = v2 + 72;
                v8 = sub_10138AEF0(a1 + 304, (v2 + 72));
                v9 = *(v2 + 119);
                if (v9 >= 0)
                {
                  v10 = *(v2 + 119);
                }

                else
                {
                  v10 = *(v2 + 104);
                }

                v11 = *(v8 + 79);
                v12 = v11;
                if ((v11 & 0x80u) != 0)
                {
                  v11 = *(v8 + 64);
                }

                if (v10 != v11 || (v9 >= 0 ? (v13 = (v2 + 96)) : (v13 = *(v2 + 96)), (v16 = *(v8 + 56), v14 = (v8 + 56), v15 = v16, v12 >= 0) ? (v17 = v14) : (v17 = v15), memcmp(v13, v17, v10)))
                {
                  *buf = v2 + 72;
                  v18 = sub_10138AEF0(a1 + 304, (v2 + 72));
                  ServiceMap = Registry::getServiceMap(*(a1 + 64));
                  v20 = ServiceMap;
                  if (v21 < 0)
                  {
                    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
                    v23 = 5381;
                    do
                    {
                      v21 = v23;
                      v24 = *v22++;
                      v23 = (33 * v23) ^ v24;
                    }

                    while (v24);
                  }

                  std::mutex::lock(ServiceMap);
                  *buf = v21;
                  v25 = sub_100009510(&v20[1].__m_.__sig, buf);
                  v44 = v18;
                  if (v25)
                  {
                    v26 = v25[4];
                    v43 = v25[3];
                    if (v26)
                    {
                      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v20);
                      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v26);
                      v27 = 0;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v43 = 0;
                  }

                  std::mutex::unlock(v20);
                  v26 = 0;
                  v27 = 1;
LABEL_40:
                  if (v43)
                  {
                    v71[0] = 0;
                    v28 = xpc_dictionary_create(0, 0, 0);
                    v29 = v28;
                    if (v28)
                    {
                      v71[0] = v28;
                      goto LABEL_46;
                    }

                    v29 = xpc_null_create();
                    v71[0] = v29;
                    if (v29)
                    {
LABEL_46:
                      if (xpc_get_type(v29) != &_xpc_type_dictionary)
                      {
                        v32 = xpc_null_create();
                        goto LABEL_50;
                      }

                      xpc_retain(v29);
                    }

                    else
                    {
                      v32 = xpc_null_create();
                      v29 = 0;
LABEL_50:
                      v71[0] = v32;
                    }

                    xpc_release(v29);
                    v33 = (v44 + 80);
                    if (*(v44 + 103) < 0)
                    {
                      if (!*(v44 + 88))
                      {
                        goto LABEL_59;
                      }

                      v33 = *v33;
                    }

                    else if (!*(v44 + 103))
                    {
                      goto LABEL_59;
                    }

                    v69 = xpc_string_create(v33);
                    if (!v69)
                    {
                      v69 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousMCC";
                    sub_10000F688(buf, &v69, &v70);
                    xpc_release(v70);
                    v70 = 0;
                    xpc_release(v69);
                    v69 = 0;
LABEL_59:
                    v34 = (v44 + 104);
                    if (*(v44 + 127) < 0)
                    {
                      if (!*(v44 + 112))
                      {
                        goto LABEL_67;
                      }

                      v34 = *v34;
                    }

                    else if (!*(v44 + 127))
                    {
                      goto LABEL_67;
                    }

                    v65 = xpc_string_create(v34);
                    if (!v65)
                    {
                      v65 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousMNC";
                    sub_10000F688(buf, &v65, &v66);
                    xpc_release(v66);
                    v66 = 0;
                    xpc_release(v65);
                    v65 = 0;
LABEL_67:
                    v35 = (v44 + 128);
                    if (*(v44 + 151) < 0)
                    {
                      if (!*(v44 + 136))
                      {
                        goto LABEL_75;
                      }

                      v35 = *v35;
                    }

                    else if (!*(v44 + 151))
                    {
                      goto LABEL_75;
                    }

                    v63 = xpc_string_create(v35);
                    if (!v63)
                    {
                      v63 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousGID1";
                    sub_10000F688(buf, &v63, &v64);
                    xpc_release(v64);
                    v64 = 0;
                    xpc_release(v63);
                    v63 = 0;
LABEL_75:
                    v36 = (v44 + 152);
                    if (*(v44 + 175) < 0)
                    {
                      if (!*(v44 + 160))
                      {
                        goto LABEL_83;
                      }

                      v36 = *v36;
                    }

                    else if (!*(v44 + 175))
                    {
                      goto LABEL_83;
                    }

                    v61 = xpc_string_create(v36);
                    if (!v61)
                    {
                      v61 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousGID2";
                    sub_10000F688(buf, &v61, &v62);
                    xpc_release(v62);
                    v62 = 0;
                    xpc_release(v61);
                    v61 = 0;
LABEL_83:
                    if (SHIBYTE(v48) < 0)
                    {
                      if (!v48)
                      {
                        goto LABEL_91;
                      }

                      v37 = *&v47[24];
                    }

                    else
                    {
                      v37 = &v47[24];
                      if (!HIBYTE(v48))
                      {
                        goto LABEL_91;
                      }
                    }

                    v59 = xpc_string_create(v37);
                    if (!v59)
                    {
                      v59 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentMCC";
                    sub_10000F688(buf, &v59, &v60);
                    xpc_release(v60);
                    v60 = 0;
                    xpc_release(v59);
                    v59 = 0;
LABEL_91:
                    if (SHIBYTE(v50[0]) < 0)
                    {
                      if (!string[1])
                      {
                        goto LABEL_99;
                      }

                      v38 = string[0];
                    }

                    else
                    {
                      v38 = string;
                      if (!HIBYTE(v50[0]))
                      {
                        goto LABEL_99;
                      }
                    }

                    v57 = xpc_string_create(v38);
                    if (!v57)
                    {
                      v57 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentMNC";
                    sub_10000F688(buf, &v57, &v58);
                    xpc_release(v58);
                    v58 = 0;
                    xpc_release(v57);
                    v57 = 0;
LABEL_99:
                    if (SHIBYTE(v51) < 0)
                    {
                      if (!v51)
                      {
                        goto LABEL_107;
                      }

                      v39 = v50[1];
                    }

                    else
                    {
                      v39 = &v50[1];
                      if (!HIBYTE(v51))
                      {
                        goto LABEL_107;
                      }
                    }

                    object = xpc_string_create(v39);
                    if (!object)
                    {
                      object = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentGID1";
                    sub_10000F688(buf, &object, &v56);
                    xpc_release(v56);
                    v56 = 0;
                    xpc_release(object);
                    object = 0;
LABEL_107:
                    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                    {
                      if (!v52.__r_.__value_.__l.__size_)
                      {
                        goto LABEL_115;
                      }

                      v40 = v52.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v40 = &v52;
                      if (!*(&v52.__r_.__value_.__s + 23))
                      {
                        goto LABEL_115;
                      }
                    }

                    v53 = xpc_string_create(v40);
                    if (!v53)
                    {
                      v53 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentGID2";
                    sub_10000F688(buf, &v53, &v54);
                    xpc_release(v54);
                    v54 = 0;
                    xpc_release(v53);
                    v53 = 0;
LABEL_115:
                    *buf = v71[0];
                    if (v71[0])
                    {
                      xpc_retain(v71[0]);
                    }

                    else
                    {
                      *buf = xpc_null_create();
                    }

                    (*(*v43 + 16))(v43, "commCenterIMSISwitchEvent", buf);
                    v30 = v27;
                    xpc_release(*buf);
                    *buf = 0;
                    xpc_release(v71[0]);
                  }

                  else
                  {
                    v30 = v27;
                    v31 = *(a1 + 56);
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
                    }
                  }

                  if ((v30 & 1) == 0)
                  {
                    sub_100004A34(v26);
                  }
                }
              }
            }

            *buf = v2 + 72;
            v41 = sub_10138AEF0(a1 + 304, (v2 + 72));
            std::string::operator=((v41 + 56), v47);
            std::string::operator=((v41 + 80), &v47[24]);
            std::string::operator=((v41 + 104), string);
            std::string::operator=((v41 + 128), &v50[1]);
            std::string::operator=((v41 + 152), &v52);
            if (SHIBYTE(v46) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50[1]);
            }

            if (SHIBYTE(v50[0]) < 0)
            {
              operator delete(string[0]);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*&v47[24]);
            }

            if ((v47[23] & 0x80000000) != 0)
            {
              operator delete(*v47);
            }
          }
        }

        else if (*(v2 + 119))
        {
          goto LABEL_12;
        }
      }

LABEL_135:
      v2 += 168;
    }

    while (v2 != v3);
  }

  return sub_101376028(a1);
}

void sub_10137DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  xpc_release(*(v7 - 128));
  *(v7 - 128) = 0;
  xpc_release(*(v7 - 96));
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v6);
  }

  sub_1000D6F38(va);
  sub_10016C520(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_10137DF30(uint64_t *result)
{
  if (result[150] == result[149])
  {
    return result;
  }

  v1 = result;
  v2 = result[138];
  v3 = result + 139;
  if (v2 == result + 139)
  {
    return sub_101376028(v1);
  }

  v4 = 0;
  do
  {
    v5 = v2 + 4;
    v6 = *(v2 + 55);
    if (v6 < 0)
    {
      if (v2[5] != 14)
      {
        goto LABEL_13;
      }

      v7 = *v5;
    }

    else
    {
      v7 = v2 + 4;
      if (v6 != 14)
      {
        goto LABEL_13;
      }
    }

    v8 = *v7;
    v9 = *(v7 + 6);
    if (v8 == 0x76617254706D6554 && v9 == 0x6F666E496C657661)
    {
      v14 = v2[1];
      if (v14)
      {
        do
        {
          v2 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v2;
          v2 = v2[2];
        }

        while (*v2 != v15);
      }

      continue;
    }

LABEL_13:
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    sGetProfileDetails();
    if (BYTE8(v19))
    {
      v11 = v2[1];
      if (v11)
      {
        do
        {
          v2 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2;
          v2 = v2[2];
        }

        while (*v2 != v12);
      }

LABEL_24:
      sub_100E3A5D4(v18);
      continue;
    }

    v13 = v1[7];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Clear cache for (%s)", buf, 0xCu);
    }

    v2 = sub_101386E10(v1 + 138, v2);
    v4 = 1;
    if (BYTE8(v19))
    {
      goto LABEL_24;
    }
  }

  while (v2 != v3);
  if (v4)
  {
    sub_10136AD80(v1);
  }

  return sub_101376028(v1);
}

uint64_t sub_10137E16C(uint64_t result, int a2)
{
  v2 = *(result + 1156);
  if (v2 != a2 && v2 != 0)
  {
    return sub_101375FD4(result);
  }

  return result;
}

void sub_10137E184(uint64_t a1, int a2)
{
  if (a2 != 1 && *(a1 + 2932) == 1 && *(a1 + 712) == 1)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I re-initiating post-arrival after getting wifi", v4, 2u);
      if ((*(a1 + 712) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    TravelHandler::maybeSendTravelOutboundNotification_sync(a1, (a1 + 664), a1 + 688);
    if (*(a1 + 712) == 1)
    {
      if (*(a1 + 711) < 0)
      {
        operator delete(*(a1 + 688));
      }

      if (*(a1 + 687) < 0)
      {
        operator delete(*(a1 + 664));
      }

      *(a1 + 712) = 0;
    }
  }
}

void sub_10137E264(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User's home country selection is: (%s)", buf, 0xCu);
    v2 = *(a1 + 56);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User's current country is: (%s)", buf, 0xCu);
  }

  v5 = *(a1 + 352);
  if (v5 != (a1 + 360))
  {
    do
    {
      v6 = *(a1 + 56);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5 + 4;
        if (*(v5 + 55) < 0)
        {
          v7 = *v7;
        }

        v8 = v5[7];
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Country: %s, timestamp: %f\n", buf, 0x16u);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != (a1 + 360));
  }

  v12 = *(a1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 170);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Should show inbound travel notification: %d", buf, 8u);
    v12 = *(a1 + 56);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 172);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I rate limited count: %d", buf, 8u);
  }

  if (*(a1 + 1096) == 1)
  {
    v15 = *(a1 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (a1 + 728);
      if (*(a1 + 751) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Trip ID: (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_101373BC0(buf);
      if (buf[23] >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = 136315138;
      *(v60.__r_.__value_.__r.__words + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Departure time: (%s)", &v60, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_101373BC0(buf);
      if (buf[23] >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = 136315138;
      *(v60.__r_.__value_.__r.__words + 4) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Arrival time: (%s)", &v60, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v19 = (a1 + 872);
      if (*(a1 + 895) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Arrival country: (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v20 = asString(*(a1 + 1072));
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Pre-Departure notif shown (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v21 = *(a1 + 1088);
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Pre-Departure notif time shown (%d)", buf, 8u);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v22 = asString(*(a1 + 1073));
      *buf = 136315138;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Post-Arrival shown (%s)", buf, 0xCu);
    }
  }

  if (*(a1 + 656) == 1)
  {
    v23 = *(a1 + 56);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (a1 + 632);
      if (*(a1 + 655) < 0)
      {
        v24 = *v24;
      }

      *buf = 136315138;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fCurrentCountry (%s)", buf, 0xCu);
      v23 = *(a1 + 56);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 656) & 1) == 0)
      {
        sub_1000D1644();
      }

      v25 = (a1 + 608);
      if (*(a1 + 631) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fPreviousCountry (%s)", buf, 0xCu);
      v23 = *(a1 + 56);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 656) & 1) == 0)
      {
        sub_1000D1644();
      }

      v26 = *(a1 + 600);
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fTimeStamp (%f)", buf, 0xCu);
    }
  }

  if (*(a1 + 712) == 1)
  {
    v27 = *(a1 + 56);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (a1 + 664);
      if (*(a1 + 687) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalDueToNoInternet - fPreviousCountry (%s)", buf, 0xCu);
      v27 = *(a1 + 56);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 712) & 1) == 0)
      {
        sub_1000D1644();
      }

      v29 = (a1 + 688);
      if (*(a1 + 711) < 0)
      {
        v29 = *v29;
      }

      *buf = 136315138;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalDueToNoInternet - fCurrentCountry (%s)", buf, 0xCu);
    }
  }

  v30 = *(a1 + 1104);
  if (v30 != (a1 + 1112))
  {
    do
    {
      v31 = *(a1 + 56);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30 + 4;
        if (*(v30 + 55) < 0)
        {
          v32 = *v32;
        }

        v33 = asString(*(v30 + 56));
        v34 = *(v30 + 16);
        v35 = "Undefined SourceType";
        if (v34 <= 4)
        {
          v35 = off_101F32D70[v34];
        }

        sub_100074B94(v30[9], (v30 + 10), ",", 1, &v60);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v60;
        }

        else
        {
          v36 = v60.__r_.__value_.__r.__words[0];
        }

        v37 = "unknown";
        if (*(v30 + 97) == 1)
        {
          v37 = asString(*(v30 + 96));
        }

        v38 = "unknown";
        if (*(v30 + 128) == 1)
        {
          v38 = (v30 + 13);
          if (*(v30 + 127) < 0)
          {
            v38 = *v38;
          }
        }

        *buf = 136316418;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = v33;
        *&buf[22] = 2080;
        v62 = v35;
        v63 = 2080;
        v64 = v36;
        v65 = 2080;
        v66 = v37;
        v67 = 2080;
        v68 = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Travel Iccid [%s] \nisInstalledInHomeCountry [%s] \nsupportedCountriesSource [%s] \nsupportedCountries [%s] \nisDataOnly [%s] \nrequiredIccidMatch [%s]", buf, 0x3Eu);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      v39 = v30[1];
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
          v40 = v30[2];
          v11 = *v40 == v30;
          v30 = v40;
        }

        while (!v11);
      }

      v30 = v40;
    }

    while (v40 != (a1 + 1112));
  }

  v41 = *(a1 + 56);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = (a1 + 424);
    if (*(a1 + 447) < 0)
    {
      v42 = *v42;
    }

    v43 = (a1 + 400);
    if (*(a1 + 423) < 0)
    {
      v43 = *v43;
    }

    sub_100074B94(*(a1 + 376), (a1 + 384), ",", 1, &v60);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v60;
    }

    else
    {
      v44 = v60.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v42;
    *&buf[12] = 2080;
    *&buf[14] = v43;
    *&buf[22] = 2080;
    v62 = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Current default settings: data [%s], voice [%s], enabled sims [%s]", buf, 0x20u);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  memset(&v60, 0, sizeof(v60));
  v45 = (a1 + 256);
  if (*(a1 + 279) < 0)
  {
    sub_100005F2C(__p, *(a1 + 256), *(a1 + 264));
  }

  else
  {
    *__p = *v45;
    v59 = *(a1 + 272);
  }

  v46 = *(a1 + 144);
  if (v46)
  {
    if (SHIBYTE(v59) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v59;
    }

    (*(*v46 + 32))(&v60, v46, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v47 = *(a1 + 56);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }

    memset(&v60, 0, sizeof(v60));
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  v48 = *(a1 + 56);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 279) < 0)
    {
      v45 = *v45;
    }

    *buf = 136315138;
    *&buf[4] = v45;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Home country (%s) journal:", buf, 0xCu);
  }

  size = v60.__r_.__value_.__l.__size_;
  v49 = v60.__r_.__value_.__r.__words[0];
  if (v60.__r_.__value_.__r.__words[0] != v60.__r_.__value_.__l.__size_)
  {
    v51 = (v60.__r_.__value_.__r.__words[0] + 8);
    do
    {
      v52 = *(a1 + 56);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(v49 + 72);
        sub_100074B94(*v49, v51, ",", 1, &v57);
        v54 = v57.__r_.__value_.__r.__words[0];
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v57;
        }

        v55 = (v49 + 48);
        if (*(v49 + 71) < 0)
        {
          v55 = v55->__r_.__value_.__r.__words[0];
        }

        v56 = (v49 + 24);
        if (*(v49 + 47) < 0)
        {
          v56 = v56->__r_.__value_.__r.__words[0];
        }

        *buf = 134218754;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = v54;
        *&buf[22] = 2080;
        v62 = v55;
        v63 = 2080;
        v64 = v56;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Timestamp: [%f] -- Settings: Enabled Iccids [%s], Data [%s], Voice [%s]", buf, 0x2Au);
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }
      }

      v49 += 80;
      v51 = (v51 + 80);
    }

    while (v49 != size);
  }

  *buf = &v60;
  sub_101368BCC(buf);
}

void sub_10137EE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10137EED0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, __int128 *a7)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v15 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  format = a2;
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
      v60 = 0;
      if (!v22)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v60 = 1;
  if (!v22)
  {
LABEL_7:
    v23 = *(a1 + 56);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "invalid localizer", buf, 2u);
    }

    goto LABEL_119;
  }

LABEL_11:
  v75 = 0;
  v24 = kCoreTelephonyBundleID;
  v25 = kCBMessageLocalizationTable;
  (*(*v22 + 32))(&v75, v22, kCoreTelephonyBundleID, kCBMessageLocalizationTable, format, 1);
  v73 = 0;
  v74 = 0;
  v26 = *(a6 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a6 + 1);
  }

  if (v26)
  {
    (*(*v22 + 32))(&v77, v22, v24, v25, a3, 1);
    *buf = v73;
    v73 = v77;
    *&v77 = 0;
    sub_100005978(buf);
    sub_100005978(&v77);
    v27 = *(a7 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a7 + 1);
    }

    if (v27)
    {
      v29 = *(a6 + 23);
      if (v29 < 0)
      {
        if (*(a6 + 1) != 4)
        {
LABEL_26:
          formata = v21;
          v33 = v73;
          if (v28 < 0)
          {
            sub_100005F2C(&__dst, *a7, *(a7 + 1));
          }

          else
          {
            __dst = *a7;
            v64 = *(a7 + 2);
          }

          if (SHIBYTE(v64) < 0)
          {
            sub_100005F2C(&v77, __dst, *(&__dst + 1));
          }

          else
          {
            v77 = __dst;
            v78 = v64;
          }

          v76 = 0;
          if (SHIBYTE(v78) < 0)
          {
            sub_100005F2C(buf, v77, *(&v77 + 1));
          }

          else
          {
            *buf = v77;
            v80 = v78;
          }

          v81 = 0;
          if (ctu::cf::convert_copy())
          {
            v34 = v76;
            v76 = v81;
            *v82 = v34;
            sub_100005978(v82);
          }

          if (SHIBYTE(v80) < 0)
          {
            operator delete(*buf);
          }

          v72 = v76;
          v76 = 0;
          sub_100005978(&v76);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          v35 = v72;
          if (*(a6 + 23) < 0)
          {
            sub_100005F2C(__p, *a6, *(a6 + 1));
          }

          else
          {
            *__p = *a6;
            v62 = *(a6 + 2);
          }

          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(&v77, __p[0], __p[1]);
          }

          else
          {
            v77 = *__p;
            v78 = v62;
          }

          v76 = 0;
          if (SHIBYTE(v78) < 0)
          {
            sub_100005F2C(buf, v77, *(&v77 + 1));
          }

          else
          {
            *buf = v77;
            v80 = v78;
          }

          v81 = 0;
          if (ctu::cf::convert_copy())
          {
            v36 = v76;
            v76 = v81;
            *v82 = v36;
            sub_100005978(v82);
          }

          if (SHIBYTE(v80) < 0)
          {
            operator delete(*buf);
          }

          v67 = v76;
          v76 = 0;
          sub_100005978(&v76);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v33, 0, v35, v67);
          v38 = v74;
          v74 = StringWithValidatedFormat;
          *buf = v38;
          sub_100005978(buf);
          sub_100005978(&v67);
          v21 = formata;
          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(&v72);
          if ((SHIBYTE(v64) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

          v39 = __dst;
          goto LABEL_109;
        }

        v30 = *a6;
      }

      else
      {
        v30 = a6;
        if (v29 != 4)
        {
          goto LABEL_26;
        }
      }

      if (*v30 != 1769105747)
      {
        goto LABEL_26;
      }

      v43 = v73;
      if (v29 < 0)
      {
        sub_100005F2C(v68, *a6, *(a6 + 1));
      }

      else
      {
        *v68 = *a6;
        v69 = *(a6 + 2);
      }

      if (SHIBYTE(v69) < 0)
      {
        sub_100005F2C(&v77, v68[0], v68[1]);
      }

      else
      {
        v77 = *v68;
        v78 = v69;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v44 = v76;
        v76 = v81;
        *v82 = v44;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      formatb = v43;
      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v45 = v72;
      if (*(a7 + 23) < 0)
      {
        sub_100005F2C(v65, *a7, *(a7 + 1));
      }

      else
      {
        *v65 = *a7;
        v66 = *(a7 + 2);
      }

      if (SHIBYTE(v66) < 0)
      {
        sub_100005F2C(&v77, v65[0], v65[1]);
      }

      else
      {
        v77 = *v65;
        v78 = v66;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v46 = v76;
        v76 = v81;
        *v82 = v46;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      v67 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v47 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", formatb, 0, v45, v67);
      v48 = v74;
      v74 = v47;
      *buf = v48;
      sub_100005978(buf);
      sub_100005978(&v67);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }

      sub_100005978(&v72);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      v39 = v68[0];
    }

    else
    {
      v31 = a4;
      v32 = v73;
      if (*(a6 + 23) < 0)
      {
        sub_100005F2C(&v70, *a6, *(a6 + 1));
      }

      else
      {
        v70 = *a6;
        v71 = *(a6 + 2);
      }

      if (SHIBYTE(v71) < 0)
      {
        sub_100005F2C(&v77, v70, *(&v70 + 1));
      }

      else
      {
        v77 = v70;
        v78 = v71;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v40 = v76;
        v76 = v81;
        *v82 = v40;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v41 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v32, 0, v72);
      v42 = v74;
      v74 = v41;
      *buf = v42;
      sub_100005978(buf);
      sub_100005978(&v72);
      a4 = v31;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      v39 = v70;
    }

LABEL_109:
    operator delete(v39);
    goto LABEL_110;
  }

  (*(*v22 + 32))(&v77, v22, v24, v25, a3, 1);
  *buf = v74;
  v74 = v77;
  *&v77 = 0;
  sub_100005978(buf);
  sub_100005978(&v77);
LABEL_110:
  v81 = 0;
  (*(*v22 + 32))(&v81, v22, v24, v25, a4, 1);
  v49 = *(a1 + 56);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, sizeof(buf));
    v80 = 0;
    ctu::cf::assign();
    v77 = *buf;
    v78 = v80;
    v50 = &v77;
    if (v80 < 0)
    {
      v50 = v77;
    }

    *v82 = 136315138;
    *&v82[4] = v50;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Publishing user notification with title: (%s)", v82, 0xCu);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }
  }

  v51 = objc_alloc_init(CellularPlanUserNotificationDelegate);
  v52 = v75;
  v53 = v74;
  v54 = v81;
  if (*(a5 + 23) >= 0)
  {
    v55 = a5;
  }

  else
  {
    v55 = *a5;
  }

  v56 = [NSString stringWithUTF8String:v55];
  [(CellularPlanUserNotificationDelegate *)v51 publishUserNotificationWithBundleIdentifier:@"com.apple.SIMSetupUIService" requestIdentifier:@"travel education" title:v52 body:v53 subtitle:v54 actionUrl:v56 destinations:7];

  sub_100005978(&v81);
  sub_100005978(&v73);
  sub_100005978(&v74);
  sub_100005978(&v75);
LABEL_119:
  if ((v60 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}

void sub_10137F940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, const void *a48, const void *a49, const void *a50)
{
  sub_100005978((v51 - 184));
  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a48);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100005978(&a49);
  sub_100005978(&a50);
  sub_100005978((v51 - 192));
  if ((a13 & 1) == 0)
  {
    sub_100004A34(v50);
  }

  _Unwind_Resume(a1);
}

void sub_10137FBE4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 56) = 0;
  }
}

void TravelHandler::maybeSendTravelPreOutboundNotification_sync(uint64_t a1)
{
  if (_os_feature_enabled_impl() && sub_10136AC30(a1) && ((*(**(a1 + 96) + 80))(*(a1 + 96)) & 1) == 0)
  {
    if (sub_1013715E0(a1))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Device not in home country, skip pre-departure";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return;
    }

    if (sub_10136F6C8(a1))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Roaming is enabled for default data and skip showing pre-departure notification.";
      goto LABEL_18;
    }

    if (sub_10136EE9C(a1, (a1 + 184)))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I One of the existing cellular plan(s) gets free roaming service in the destination country.";
      goto LABEL_18;
    }

    if ((sub_1013719B0(a1) & 1) == 0)
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Reduced education, skip pre-departure";
      goto LABEL_18;
    }

    if ((sub_101372268(a1) & 1) == 0)
    {
      sub_101354258(&v4 + 1, (a1 + 24));
      operator new();
    }
  }
}

void sub_10137FE80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144))
  {
    v4 = *(a1 + 376);
    v5 = (a1 + 384);
    if (v4 != (a1 + 384))
    {
      while (1)
      {
        if (*(v4 + 55) < 0)
        {
          sub_100005F2C(__p, v4[4], v4[5]);
        }

        else
        {
          *__p = *(v4 + 2);
          v42 = v4[6];
        }

        if (SHIBYTE(v42) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&v44 = v42;
        }

        v6 = sub_10136BCA0(*(a1 + 1192), *(a1 + 1200), buf);
        if (SBYTE7(v44) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (v6)
        {
          break;
        }

        v7 = v4[1];
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
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
        if (v8 == v5)
        {
          goto LABEL_28;
        }
      }
    }

    if (v4 != v5)
    {
      v10 = *(a1 + 56);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = v4 + 4;
      if (*(v4 + 55) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      v12 = "#I ignore bootstrap iccid [%s] for journaling";
      v13 = v10;
      v14 = 12;
      goto LABEL_44;
    }

LABEL_28:
    if (!*(a1 + 392))
    {
      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "#I do not add entries for no enabled SIMs case";
      goto LABEL_43;
    }

    if ((*(a1 + 447) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 432))
      {
        goto LABEL_31;
      }
    }

    else if (*(a1 + 447))
    {
LABEL_31:
      if ((*(a1 + 423) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 408))
        {
          goto LABEL_33;
        }
      }

      else if (*(a1 + 423))
      {
LABEL_33:
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        *buf = 0u;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v40 = *(a2 + 16);
        }

        sub_101380498(buf, a1, __dst);
        v17 = (a1 + 424);
        v18 = (a1 + 400);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v48 != 1)
        {
          goto LABEL_80;
        }

        if ((SBYTE7(v47) & 0x80u) == 0)
        {
          v19 = BYTE7(v47);
        }

        else
        {
          v19 = *(&v46 + 1);
        }

        v20 = *(a1 + 447);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a1 + 432);
        }

        if (v19 != v20)
        {
          goto LABEL_80;
        }

        v22 = (SBYTE7(v47) & 0x80u) == 0 ? &v46 : v46;
        v23 = (v21 >= 0 ? a1 + 424 : *v17);
        if (memcmp(v22, v23, v19))
        {
          goto LABEL_80;
        }

        if (v45 >= 0)
        {
          v24 = HIBYTE(v45);
        }

        else
        {
          v24 = v45;
        }

        v25 = *(a1 + 423);
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(a1 + 408);
        }

        if (v24 == v25 && (v45 >= 0 ? (v27 = &v44 + 8) : (v27 = *(&v44 + 1)), v26 >= 0 ? (v28 = (a1 + 400)) : (v28 = *v18), !memcmp(v27, v28, v24) && v44 == *(a1 + 392) && sub_1001737D4(*buf, &buf[8], *(a1 + 376))))
        {
          v29 = *(a1 + 56);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I current settings match latest journal entry, do not record", __p, 2u);
          }
        }

        else
        {
LABEL_80:
          *(a1 + 448) = sub_10136D3A8(*(a1 + 64));
          v30 = *(a1 + 144);
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v37, *a2, *(a2 + 8));
          }

          else
          {
            *v37 = *a2;
            v38 = *(a2 + 16);
          }

          sub_100074920(v31, a1 + 376);
          if (*(a1 + 423) < 0)
          {
            sub_100005F2C(v32, *(a1 + 400), *(a1 + 408));
          }

          else
          {
            *v32 = *v18;
            v33 = *(a1 + 416);
          }

          if (*(a1 + 447) < 0)
          {
            sub_100005F2C(v34, *(a1 + 424), *(a1 + 432));
          }

          else
          {
            *v34 = *v17;
            v35 = *(a1 + 440);
          }

          v36 = *(a1 + 448);
          (*(*v30 + 80))(v30, v37, v31);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(v32[0]);
          }

          sub_100009970(v31, v31[1]);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }
        }

        if (v48 == 1)
        {
          if (SBYTE7(v47) < 0)
          {
            operator delete(v46);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(*(&v44 + 1));
          }

          sub_100009970(buf, *&buf[8]);
        }

        return;
      }

      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "#I default voice empty, do not add entry";
LABEL_43:
      v13 = v16;
      v14 = 2;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      return;
    }

    v16 = *(a1 + 56);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#I default data empty, do not add entry";
    goto LABEL_43;
  }

  v15 = *(a1 + 56);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
  }
}

void sub_1013803FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a9, a10);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_101373B64(v41 - 144);
  _Unwind_Resume(a1);
}

void sub_101380498(_BYTE *a1, uint64_t a2, void **a3)
{
  v5 = *(a2 + 144);
  if (!v5)
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "missing travel model";
      goto LABEL_26;
    }

LABEL_18:
    *a1 = 0;
    a1[80] = 0;
    return;
  }

  v7 = *(a3 + 23);
  v8 = a3[1];
  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(a2 + 279);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 264);
  }

  if (v9 != v10 || ((v12 = *a3, v7 >= 0) ? (v13 = a3) : (v13 = *a3), v11 >= 0 ? (v14 = (a2 + 256)) : (v14 = *(a2 + 256)), memcmp(v13, v14, v9)))
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "dont support non-home countries";
LABEL_26:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v7 < 0)
  {
    sub_100005F2C(__p, v12, v8);
  }

  else
  {
    *__p = *a3;
    v18 = a3[2];
  }

  (*(*v5 + 40))(v5, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10138061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101380638(uint64_t a1, uint64_t a2)
{
  sub_100074920(a1, a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

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

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_1013806C4(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_100009970(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_1013806F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v8 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v8;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v10;
  *(a1 + 168) = v9;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v11 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v11;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 30) = 0;
  *(a1 + 264) = *(a2 + 33);
  v12 = a1 + 272;
  v13 = *(a2 + 34);
  v14 = *(a2 + 35);
  *(a1 + 272) = v13;
  *(a1 + 280) = v14;
  if (v14)
  {
    *(v13 + 16) = v12;
    *(a2 + 33) = a2 + 17;
    *(a2 + 34) = 0;
    *(a2 + 35) = 0;
  }

  else
  {
    *(a1 + 264) = v12;
  }

  v15 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v15;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 36) = 0;
  v16 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 312) = v16;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 39) = 0;
  *(a1 + 336) = *(a2 + 42);
  result = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = result;
  return result;
}

void sub_1013808A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013809B8(unint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(a1 + 1096) != 1)
  {
    goto LABEL_8;
  }

  if (v4 != *(a2 + 8))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *__dst = 0u;
    sub_100FF0F78(__dst, v4);
    if ((*(a1 + 1096) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*&v19 < *(a1 + 912))
    {
      v5 = *(a1 + 56);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting current trip", buf, 2u);
      }

      sub_10136F078(a1 + 728);
      sub_100FF11AC(__dst);
      v4 = *a2;
LABEL_8:
      v7[0] = a1;
      v7[1] = 0uLL;
      sub_1001E2A18(v7 + 8, v4, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - v4) >> 4));
      v8 = 0;
      operator new();
    }

    sub_100FF11AC(__dst);
  }

  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *__dst = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No need to reset current trip.", __dst, 2u);
  }
}

void sub_101380D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100FF11AC(va);
  _Unwind_Resume(a1);
}

void *sub_101380DE0(void *__dst, __int128 *a2)
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

  v5 = *(a2 + 3);
  *(__dst + 8) = *(a2 + 8);
  __dst[3] = v5;
  sub_100074920(__dst + 5, a2 + 40);
  *(__dst + 32) = *(a2 + 32);
  sub_10006F264((__dst + 9), (a2 + 72));
  __dst[13] = *(a2 + 13);
  return __dst;
}

void sub_101380E68(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_101380E98(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
    v3 = *(a2 + 23);
  }

  else
  {
    *__p = *a1;
    v29 = *(a1 + 16);
  }

  v26 = 0uLL;
  v27 = 0;
  if (v3 < 0)
  {
    sub_100005F2C(&v26, *a2, *(a2 + 1));
  }

  else
  {
    v26 = *a2;
    v27 = *(a2 + 2);
  }

  if (v29 >= 0)
  {
    v6 = (__p + HIBYTE(v29));
  }

  else
  {
    v6 = (__p[0] + __p[1]);
  }

  if (v29 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  while (v7 != v6)
  {
    *v7 = __tolower(*v7);
    v7 = (v7 + 1);
  }

  v8 = HIBYTE(v27);
  v9 = HIBYTE(v27);
  v10 = *(&v26 + 1);
  v11 = v26;
  v12 = &v26;
  if (v27 >= 0)
  {
    v13 = &v26 + HIBYTE(v27);
  }

  else
  {
    v13 = (v26 + *(&v26 + 1));
  }

  if (v27 >= 0)
  {
    v14 = &v26;
  }

  else
  {
    v14 = v26;
  }

  if (v14 != v13)
  {
    do
    {
      *v14 = __tolower(*v14);
      ++v14;
    }

    while (v14 != v13);
    v8 = HIBYTE(v27);
    v10 = *(&v26 + 1);
    v11 = v26;
    v9 = HIBYTE(v27);
  }

  v15 = HIBYTE(v29);
  v16 = HIBYTE(v29);
  if (v29 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v29 < 0)
  {
    v15 = __p[1];
  }

  if (v9 >= 0)
  {
    v18 = v8;
  }

  else
  {
    v12 = v11;
    v18 = v10;
  }

  if (v18)
  {
    v19 = (v17 + v15);
    if (v15 >= v18)
    {
      v23 = *v12;
      v24 = v17;
      do
      {
        if (v15 - v18 == -1)
        {
          break;
        }

        v25 = memchr(v24, v23, v15 - v18 + 1);
        if (!v25)
        {
          break;
        }

        v20 = v25;
        if (!memcmp(v25, v12, v18))
        {
          goto LABEL_39;
        }

        v24 = (v20 + 1);
        v15 = v19 - (v20 + 1);
      }

      while (v15 >= v18);
    }

    v20 = v19;
LABEL_39:
    v5 = v20 != v19 && v20 == v17;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v5 = 1;
  if (v9 < 0)
  {
LABEL_46:
    operator delete(v11);
    v16 = HIBYTE(v29);
  }

LABEL_47:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1013810A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013810E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FF0F78(a1, a2);
  sub_100074920(v4 + 30, a2 + 240);
  if (*(a2 + 287) < 0)
  {
    sub_100005F2C((a1 + 264), *(a2 + 264), *(a2 + 272));
  }

  else
  {
    v5 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v5;
  }

  if (*(a2 + 311) < 0)
  {
    sub_100005F2C((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v6 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v6;
  }

  *(a1 + 312) = *(a2 + 312);
  v7 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v7;
  return a1;
}

void sub_101381190(_Unwind_Exception *a1)
{
  if (*(v1 + 287) < 0)
  {
    operator delete(*v2);
  }

  sub_100009970(v1 + 240, *(v1 + 248));
  sub_100FF11AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1013811D0(uint64_t a1)
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

uint64_t sub_101381250(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  v5 = *(a2 + 160);
  v4 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  *(a1 + 176) = v4;
  if (a1 != a2)
  {
    sub_100008234((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 3));
  }

  std::string::operator=((a1 + 216), (a2 + 216));
  return a1;
}

void *sub_1013812FC(void *__dst, __int128 *a2)
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

  sub_1013810E0((__dst + 3), a2 + 24);
  return __dst;
}

void sub_101381358(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101381374(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100074920(a1, a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
    }

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

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_101381418(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_100009970(v1, *(v1 + 8));
  if (*(v1 + 80) == 1)
  {
    sub_101365424(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101381464(uint64_t a1, void **a2)
{
  v3 = sub_1013814D0(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void *sub_1013814D0(void *a1, uint64_t a2, void **a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100074A00(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void **sub_10138157C(void **a1, void **a2)
{
  v3 = sub_100997900(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void sub_1013815EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101381640(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101381680(uint64_t result)
{
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

void sub_1013816AC(ServiceManager::Service *this)
{
  *this = off_101F31F50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101381708(ServiceManager::Service *this)
{
  *this = off_101F31F50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101381788@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013817CC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10136A154(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10136A154(v4, 0);
}

void sub_10138186C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10138194C(uint64_t result, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = *(result + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v4 = *(v3 + 32);
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_101381A68(char *a1)
{
  if (a1)
  {
    sub_101381A68(*a1);
    sub_101381A68(*(a1 + 1));
    if (a1[175] < 0)
    {
      operator delete(*(a1 + 19));
    }

    if (a1[151] < 0)
    {
      operator delete(*(a1 + 16));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_101381B14(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100009970(a1 + 40, *(a1 + 48));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_101381BA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_101381C20(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 1128));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_101381C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101381C84(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 80);
  if (v2)
  {
    sub_100004AA0(&v9, (v1 + 24));
    if (v9)
    {
      v3 = v9 + 16;
    }

    else
    {
      v3 = 0;
    }

    v7 = v3;
    v8 = *(&v9 + 1);
    v9 = 0uLL;
    (*(*v2 + 16))(v2, v1 + 64, &v7);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 64));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10000501C(&__p, "/cc/props/regulatory_domain_country_list");
  operator new();
}

void sub_101382738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30)
{
  v37 = a30;
  a30 = 0;

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if ((v35 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101382874(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
      v34 = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v34 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v34 = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_18;
        }
      }

      if (xpc_get_type(v14) == &_xpc_type_dictionary)
      {
        xpc_retain(v14);
        goto LABEL_19;
      }

      v15 = xpc_null_create();
LABEL_18:
      v34 = v15;
LABEL_19:
      xpc_release(v14);
      v16 = *(v1 + 1104);
      if (v16 == (v1 + 1112))
      {
LABEL_27:
        v33 = xpc_BOOL_create(0);
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *buf = &v34;
        v28 = "is_travel_sim";
        sub_10000F688(buf, &v33, object);
        xpc_release(*object);
        *object = 0;
        xpc_release(v33);
        v33 = 0;
        v20 = *(v1 + 56);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Sending travel population metric. HasTravelSIM [false]", buf, 2u);
        }

        *buf = v34;
        if (v34)
        {
          xpc_retain(v34);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v10 + 16))(v10, "travelSimUsage", buf);
        xpc_release(*buf);
        *buf = 0;
LABEL_61:
        xpc_release(v34);
        goto LABEL_62;
      }

      while (!sub_10136FB18(v1, (v16 + 4)))
      {
        v17 = v16[1];
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
            v18 = v16[2];
            v19 = *v18 == v16;
            v16 = v18;
          }

          while (!v19);
        }

        v16 = v18;
        if (v18 == (v1 + 1112))
        {
          goto LABEL_27;
        }
      }

      v32 = xpc_BOOL_create(1);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      *buf = &v34;
      v28 = "is_travel_sim";
      sub_10000F688(buf, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      if (*(v16 + 97) == 1)
      {
        v30 = xpc_BOOL_create(*(v16 + 96));
        if (!v30)
        {
          v30 = xpc_null_create();
        }

        *buf = &v34;
        v28 = "is_data_only";
        sub_10000F688(buf, &v30, &v31);
        xpc_release(v31);
        v31 = 0;
        xpc_release(v30);
        v30 = 0;
      }

      *buf = 0;
      v28 = 0;
      v29 = 0;
      sub_10136CFD8(buf, v1, (v16 + 4));
      if (SHIBYTE(v29) < 0)
      {
        if (v28)
        {
          v21 = *buf;
          goto LABEL_46;
        }
      }

      else if (HIBYTE(v29))
      {
        v21 = buf;
LABEL_46:
        v25 = xpc_string_create(v21);
        if (!v25)
        {
          v25 = xpc_null_create();
        }

        *object = &v34;
        *&object[8] = "carrier_name";
        sub_10000F688(object, &v25, &v26);
        xpc_release(v26);
        v26 = 0;
        xpc_release(v25);
        v25 = 0;
      }

      v22 = *(v1 + 56);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v16 + 97) == 1)
        {
          v23 = asString(*(v16 + 96));
        }

        else
        {
          v23 = "n/a";
        }

        v24 = buf;
        if (v29 < 0)
        {
          v24 = *buf;
        }

        *object = 136315394;
        *&object[4] = v23;
        *&object[12] = 2080;
        *&object[14] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Sending travel population metric. HasTravelSIM [true], IsDataOnly [%s], CarrierName [%s]", object, 0x16u);
      }

      *object = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        *object = xpc_null_create();
      }

      (*(*v10 + 16))(v10, "travelSimUsage", object);
      xpc_release(*object);
      *object = 0;
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_61;
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
  v12 = *(v1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
  }

LABEL_62:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101382DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, xpc_object_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

__n128 sub_101382F08(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32020;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101382F40(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011FEE4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101383018(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013830E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F320A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383118(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10138325C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32120;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383294(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383310(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013833D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F321A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383410(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7);
}

uint64_t sub_101383498(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383560(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383598(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10138367C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383744(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F322A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10138377C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1013837C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101383880(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32320;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1013838AC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_101383948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101383A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_101383B2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F323A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383B64(void *a1, const xpc::object *a2)
{
  read_rest_value((a1[1] + 8), a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383CE4(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101383DDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383EA4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F324A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383EDC(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_101383F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10138403C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101384074(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10138416C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101384234(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F325A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10138426C(void *a1)
{
  v5 = 255;
  *v6 = 0u;
  v7 = 0u;
  *__p_8 = 0u;
  v9 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (SHIBYTE(__p_8[1]) < 0)
  {
    operator delete(*(&v7 + 1));
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t sub_101384340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10138438C(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100471B24(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

id sub_101384418(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = objc_retainBlock(*(a2 + 48));
  a1[6] = result;
  return result;
}

void sub_10138445C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1013844B4(uint64_t **a1)
{
  v1 = **a1;
  ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
  *cf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, cf);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v69 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v69 = 1;
LABEL_9:
  v66 = v10;
  if (!v9)
  {
    v32 = *(v1 + 56);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Could not get preferences", cf, 2u);
    }

    v33 = (v1 + 64);
    goto LABEL_66;
  }

  v73 = 0;
  (*(*v9 + 40))(cf, v9, @"TravelNotificationTimestamps", @"com.apple.commcenter.travel");
  sub_10006DD00(&v73, cf);
  sub_10000A1EC(cf);
  v71 = 0;
  v72 = 0;
  object = &v71;
  v11 = v73;
  sub_100009970(&object, v71);
  v71 = 0;
  v72 = 0;
  object = &v71;
  v65 = v11;
  v12 = [NSArray typecast:v11];
  if (v12)
  {
    *buf = 0u;
    memset(v82, 0, 48);
    v64 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:buf objects:cf count:16];
    if (!v13)
    {
      goto LABEL_28;
    }

    v67 = **&v82[0];
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (**&v82[0] != v67)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*&buf[8] + 8 * i);
        *__p = 0u;
        v76 = 0u;
        v16 = [NSDictionary typecast:v15];
        if (!v16 || (sub_1004561CC(__p, @"key", v16) & 1) == 0)
        {
          v18 = v16;
          goto LABEL_52;
        }

        v17 = @"value";
        v18 = v16;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_50;
        }

        v19 = [v18 objectForKey:@"value"];
        if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_respondsToSelector() & 1) == 0)
        {

LABEL_50:
LABEL_52:

          if (SBYTE7(v76) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v64;
          goto LABEL_55;
        }

        [v19 doubleValue];
        *(&v76 + 1) = v20;

        v74 = 0;
        if (!*sub_100005C2C(&object, &v74, __p))
        {
          operator new();
        }

        if (SBYTE7(v76) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = [obj countByEnumeratingWithState:buf objects:cf count:16];
      if (!v13)
      {
LABEL_28:

        v21 = [obj count];
        v22 = v21 == v72;

        if (v22 && (v1 + 352) != &object)
        {
          v23 = object;
          if (*(v1 + 368))
          {
            v24 = *(v1 + 352);
            v25 = *(v1 + 360);
            *(v1 + 352) = v1 + 360;
            *(v25 + 16) = 0;
            *(v1 + 360) = 0;
            *(v1 + 368) = 0;
            if (*(v24 + 8))
            {
              v26 = *(v24 + 8);
            }

            else
            {
              v26 = v24;
            }

            *cf = v1 + 352;
            *&cf[8] = v26;
            *&cf[16] = v26;
            if (!v26 || (*&cf[8] = sub_1000685CC(v26), v23 == &v71))
            {
              v30 = v23;
            }

            else
            {
              do
              {
                std::string::operator=((v26 + 32), &v23[4]);
                *(v26 + 56) = v23[7];
                v27 = *&cf[16];
                *buf = 0;
                v28 = sub_1001355F4(v1 + 352, buf, (*&cf[16] + 32));
                sub_1000070DC((v1 + 352), *buf, v28, v27);
                v26 = *&cf[8];
                *&cf[16] = *&cf[8];
                if (*&cf[8])
                {
                  *&cf[8] = sub_1000685CC(*&cf[8]);
                }

                isa = v23[1].isa;
                if (isa)
                {
                  do
                  {
                    v30 = isa;
                    isa = *isa;
                  }

                  while (isa);
                }

                else
                {
                  do
                  {
                    v30 = v23[2].isa;
                    v31 = *v30 == v23;
                    v23 = v30;
                  }

                  while (!v31);
                }

                if (!v26)
                {
                  break;
                }

                v23 = v30;
              }

              while (v30 != &v71);
            }

            sub_100173240(cf);
            v23 = v30;
          }

          if (v23 != &v71)
          {
            operator new();
          }
        }

LABEL_56:
        *cf = 0;
        (*(*v9 + 40))(cf, v9, @"TravelNotificationShowReturnHome", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v34 = *cf;
        if (*cf)
        {
          buf[0] = 0;
          v35 = CFGetTypeID(*cf);
          if (v35 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(buf, v34, v36);
          }

          *(v1 + 170) = buf[0];
        }

        *buf = 0;
        (*(*v9 + 40))(__p, v9, @"TravelNotificationRateLimitCount", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_10010B240(buf, __p);
        sub_10000A1EC(__p);
        if (*buf)
        {
          LODWORD(__p[0]) = 0;
          ctu::cf::assign(__p, *buf, v37);
          v38 = __p[0];
        }

        else
        {
          v38 = 0;
        }

        *(v1 + 172) = v38;
        __p[0] = 0;
        (*(*v9 + 40))(&v74, v9, @"RoamingEducationTimestamps", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_100432018(__p, &v74);
        v33 = (v1 + 64);
        sub_10000A1EC(&v74);
        if (__p[0])
        {
          *(v1 + 176) = CFDateGetAbsoluteTime(__p[0]);
        }

        sub_1003EC530(__p);
        sub_100029A48(buf);
        sub_10000A1EC(cf);
        sub_100009970(&object, v71);
        sub_100010250(&v73);
LABEL_66:
        if ((v69 & 1) == 0)
        {
          sub_100004A34(v66);
        }

        v39 = *(v1 + 144);
        if (v39)
        {
          (*(*v39 + 56))(cf);
          v40 = v1 + 1112;
          sub_101369268(v1 + 1104, *(v1 + 1112));
          v41 = *&cf[8];
          *(v1 + 1104) = *cf;
          *(v1 + 1112) = v41;
          v42 = *&cf[16];
          *(v1 + 1120) = *&cf[16];
          if (v42)
          {
            *(v41 + 16) = v40;
            *cf = &cf[8];
            *&cf[8] = 0;
            *&cf[16] = 0;
            v41 = 0;
          }

          else
          {
            *(v1 + 1104) = v40;
          }

          sub_101369268(cf, v41);
        }

        else
        {
          v43 = *(v1 + 56);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v44 = *(v1 + 144);
        if (v44)
        {
          v110 = 0;
          v109 = 0u;
          v108 = 0u;
          v107 = 0u;
          *v106 = 0u;
          *v105 = 0u;
          v104 = 0u;
          v103 = 0u;
          v102 = 0u;
          v101 = 0u;
          v100 = 0u;
          v99 = 0u;
          v98 = 0u;
          v97 = 0u;
          v96 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          *v90 = 0u;
          v91 = 0u;
          *v89 = 0u;
          memset(cf, 0, sizeof(cf));
          (*(*v44 + 24))(cf);
          if (v110)
          {
            (*(**(v1 + 144) + 24))(buf);
            if ((v87 & 1) == 0)
            {
              sub_1000D1644();
            }

            sub_1013806F4(__p, buf);
            sub_101375740(v1, __p, 1);
            if (v80 < 0)
            {
              operator delete(v79);
            }

            if (v78 < 0)
            {
              operator delete(v77[3]);
            }

            sub_100009970(v77, v77[1]);
            sub_100FF11AC(&v76 + 8);
            if (SBYTE7(v76) < 0)
            {
              operator delete(__p[0]);
            }

            if (v87 == 1)
            {
              if (v86 < 0)
              {
                operator delete(v85);
              }

              if (v84 < 0)
              {
                operator delete(v83[3]);
              }

              sub_100009970(v83, v83[1]);
              sub_100FF11AC(v82 + 8);
              if (SBYTE7(v82[0]) < 0)
              {
                operator delete(*buf);
              }
            }
          }

          else
          {
            v46 = *(v1 + 56);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I no persisted trip info", buf, 2u);
            }
          }

          if (v110 == 1)
          {
            if (SHIBYTE(v107) < 0)
            {
              operator delete(v106[1]);
            }

            if (SHIBYTE(v106[0]) < 0)
            {
              operator delete(v105[0]);
            }

            sub_100009970(&v103 + 8, v104);
            sub_100FF11AC(&cf[24]);
            if ((cf[23] & 0x80000000) != 0)
            {
              operator delete(*cf);
            }
          }
        }

        else
        {
          v45 = *(v1 + 56);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v47 = *(v1 + 144);
        if (v47)
        {
          memset(cf, 0, sizeof(cf));
          (*(*v47 + 16))(cf);
          if (cf[24])
          {
            std::string::operator=((v1 + 232), cf);
          }

          else
          {
            v49 = *(v1 + 56);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I no persisted apm country cache", buf, 2u);
            }
          }

          if (cf[24] == 1 && (cf[23] & 0x80000000) != 0)
          {
            operator delete(*cf);
          }
        }

        else
        {
          v48 = *(v1 + 56);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v50 = *(v1 + 144);
        if (v50)
        {
          (*(*v50 + 48))(cf);
          if (*(v1 + 656) == LOBYTE(v90[1]))
          {
            if (*(v1 + 656))
            {
              *(v1 + 600) = *cf;
              v51 = (v1 + 608);
              if (*(v1 + 631) < 0)
              {
                operator delete(*v51);
              }

              *v51 = *&cf[8];
              *(v1 + 624) = *&cf[24];
              cf[31] = 0;
              cf[8] = 0;
              v52 = (v1 + 632);
              if (*(v1 + 655) < 0)
              {
                operator delete(*v52);
              }

              *v52 = *v89;
              *(v1 + 648) = v90[0];
              HIBYTE(v90[0]) = 0;
              LOBYTE(v89[0]) = 0;
            }
          }

          else if (*(v1 + 656))
          {
            sub_10137FBE4(v1 + 600);
          }

          else
          {
            *(v1 + 600) = *cf;
            *(v1 + 608) = *&cf[8];
            *(v1 + 624) = *&cf[24];
            *&cf[16] = 0;
            *&cf[8] = 0;
            *(v1 + 648) = v90[0];
            *(v1 + 632) = *v89;
            *&cf[24] = 0;
            v89[0] = 0;
            v89[1] = 0;
            v90[0] = 0;
            *(v1 + 656) = 1;
          }

          if (LOBYTE(v90[1]) == 1)
          {
            if (SHIBYTE(v90[0]) < 0)
            {
              operator delete(v89[0]);
            }

            if ((cf[31] & 0x80000000) != 0)
            {
              operator delete(*&cf[8]);
            }
          }

          if (*(v1 + 656) == 1)
          {
            v54 = *(v1 + 600);
            v55 = (v54 - sub_10136D3A8(*v33));
            if (v55 < 0)
            {
              v56 = *(v1 + 56);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *cf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I timerPeriod is negative", cf, 2u);
              }
            }

            else
            {
              if ((*(v1 + 656) & 1) == 0)
              {
                sub_1000D1644();
              }

              if (*(v1 + 631) < 0)
              {
                sub_100005F2C(cf, *(v1 + 608), *(v1 + 616));
                if ((*(v1 + 656) & 1) == 0)
                {
                  sub_1000D1644();
                }
              }

              else
              {
                *cf = *(v1 + 608);
                *&cf[16] = *(v1 + 624);
              }

              if (*(v1 + 655) < 0)
              {
                sub_100005F2C(buf, *(v1 + 632), *(v1 + 640));
              }

              else
              {
                *buf = *(v1 + 632);
                *&v82[0] = *(v1 + 648);
              }

              TravelHandler::setPostArrivalNotificationTimer_sync(v1, cf, buf, v55);
              if (SBYTE7(v82[0]) < 0)
              {
                operator delete(*buf);
              }

              if ((cf[23] & 0x80000000) != 0)
              {
                operator delete(*cf);
              }
            }
          }
        }

        else
        {
          v53 = *(v1 + 56);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v57 = [CTLocationController alloc];
        v58 = *(v1 + 160);
        *(v1 + 160) = v57;

        v59 = [*(v1 + 160) initWithBundlePath:@"/System/Library/LocationBundles/eSIMTravelBuddy.bundle/" withQueue:*(v1 + 40) withDelegate:v1 + 8];
        v60 = *(v1 + 160);
        *(v1 + 160) = v59;

        *buf = off_101F32650;
        *(&v82[0] + 1) = buf;
        sub_100004AA0(cf, (v1 + 24));
        v61 = *cf;
        v62 = *&cf[8];
        if (*&cf[8])
        {
          atomic_fetch_add_explicit((*&cf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v62);
        }

        v63 = *(v1 + 40);
        object = v63;
        if (v63)
        {
          dispatch_retain(v63);
        }

        *cf = _NSConcreteStackBlock;
        *&cf[8] = 3321888768;
        *&cf[16] = sub_101375428;
        *&cf[24] = &unk_101F31DE8;
        v89[0] = v1;
        v89[1] = v61;
        v90[0] = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10009CF40(&v90[1], buf);
        sub_100BE49DC();
      }
    }
  }

LABEL_55:

  goto LABEL_56;
}

void sub_101385594(uint64_t a1, void *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(objecta, a14);
  object = va_arg(va1, dispatch_object_t);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_100009970(objecta, v16);
  sub_100010250(va1);
  if ((a10 & 1) == 0)
  {
    sub_100004A34(a4);
  }

  operator delete();
}

uint64_t sub_1013858AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013858F8(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1013859E0(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27[0] = v1;
  v2 = *v1;
  v3 = _os_feature_enabled_impl();
  if (!v3)
  {
    goto LABEL_34;
  }

  if (capabilities::ct::dataOnlySingleSIMDevice(v3))
  {
    goto LABEL_34;
  }

  v4 = (v1 + 8);
  if (!sub_10136E154(v2, v1 + 8))
  {
    goto LABEL_34;
  }

  v5 = !sub_1013715E0(v2);
  v6 = *(v2 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v1 + 8;
    if (*(v1 + 31) < 0)
    {
      v7 = *v4;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = asString(v5);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I caching iccid [%s], installed in home country: [%s]", buf, 0x16u);
  }

  if (v2 + 1112 == sub_100007A6C(v2 + 1104, (v1 + 8)))
  {
    v33 = 0;
    *__p = 0u;
    v32 = 0u;
    v29 = 0;
    v30 = 0u;
    *buf = 0u;
    *&buf[16] = &v29;
    v27[1] = v1 + 8;
    v8 = sub_1013858F8(v2 + 1104, (v1 + 8));
    v10 = v8 + 80;
    v9 = *(v8 + 80);
    *(v8 + 56) = *buf;
    *(v8 + 64) = *&buf[8];
    sub_100009970(v8 + 72, v9);
    v11 = v29;
    *(v8 + 72) = *&buf[16];
    *(v8 + 80) = v11;
    v12 = v30;
    *(v8 + 88) = v30;
    if (v12)
    {
      *(v11 + 2) = v10;
      *&buf[16] = &v29;
      v29 = 0;
      *&v30 = 0;
    }

    else
    {
      *(v8 + 72) = v10;
    }

    *(v8 + 96) = WORD4(v30);
    sub_10016A270(v8 + 104, __p);
    *(v8 + 136) = v33;
    if (BYTE8(v32) == 1 && SBYTE7(v32) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100009970(&buf[16], v29);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v14 = ServiceMap;
  v15 = "28DataOnlyPlanManagerInterface";
  if (("28DataOnlyPlanManagerInterface" & 0x8000000000000000) != 0)
  {
    v16 = ("28DataOnlyPlanManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
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
      if (!v21)
      {
        goto LABEL_31;
      }

LABEL_25:
      if ((**v21)(v21, v1 + 8))
      {
        v23 = *(v2 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v1 + 8;
          if (*(v1 + 31) < 0)
          {
            v24 = *v4;
          }

          *buf = 136315138;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I iccid [%s] to be data-only from dataonlyplanmanager", buf, 0xCu);
        }

        *buf = v1 + 8;
        *(sub_1013858F8(v2 + 1104, (v1 + 8)) + 96) = 257;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (v21)
  {
    goto LABEL_25;
  }

LABEL_31:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  *buf = v1 + 8;
  *(sub_1013858F8(v2 + 1104, (v1 + 8)) + 56) = v5;
  sub_10136AD80(v2);
LABEL_34:
  sub_1000EF424(v27);
  return sub_1000049E0(&v26);
}

void sub_101385D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  sub_1000EF424(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101385DC0(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  if (!sub_10136AC30(*v1))
  {
    goto LABEL_36;
  }

  v3 = *(v1 + 8);
  switch(v3)
  {
    case 0:
      goto LABEL_8;
    case 2:
      if (v2 + 376 != v1 + 16)
      {
        sub_1001730B8((v2 + 376), *(v1 + 16), (v1 + 24));
      }

LABEL_8:
      v4 = 424;
      v5 = 64;
      goto LABEL_9;
    case 1:
      v4 = 400;
      v5 = 40;
LABEL_9:
      std::string::operator=((v2 + v4), (v1 + v5));
      break;
  }

  v6 = *(v2 + 231);
  if (v6 < 0)
  {
    if (!*(v2 + 216))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v2 + 231))
  {
    goto LABEL_36;
  }

  v7 = *(v2 + 279);
  if (v7 < 0)
  {
    if (!*(v2 + 264))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v2 + 279))
  {
    goto LABEL_36;
  }

  v8 = *(v2 + 216);
  if (v6 >= 0)
  {
    v9 = *(v2 + 231);
  }

  else
  {
    v9 = *(v2 + 216);
  }

  v10 = *(v2 + 264);
  if (v7 >= 0)
  {
    v10 = *(v2 + 279);
  }

  if (v9 == v10)
  {
    v11 = *(v2 + 208);
    v12 = v6 >= 0 ? (v2 + 208) : *(v2 + 208);
    v13 = v7 >= 0 ? (v2 + 256) : *(v2 + 256);
    if (!memcmp(v12, v13, v9))
    {
      if ((v6 & 0x80000000) != 0)
      {
        sub_100005F2C(__p, v11, v8);
      }

      else
      {
        *__p = *(v2 + 208);
        v18 = *(v2 + 224);
      }

      sub_10137FE80(v2, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_36:
  sub_101385F60(&v16);
  return sub_1000049E0(&v15);
}

void sub_101385F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_101385F60(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101385F60(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_100009970(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

uint64_t sub_101385FD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10138606C(uint64_t a1, uint64_t a2)
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

void sub_1013860EC(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  operator new();
}

void sub_10138663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  operator delete(v24);
  sub_10138679C(&a17);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  sub_100004A34(v22);
  sub_10138673C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10138673C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100FC0E1C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10138679C(uint64_t a1)
{
  sub_100FC0E1C(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101386804(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F326D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101386858(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);

  sub_100009970(a1 + 40, v2);
}

uint64_t sub_1013868B0(uint64_t a1)
{
  *a1 = off_101F32720;
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_101386910(uint64_t a1)
{
  *a1 = off_101F32720;
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_101386A74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101F32720;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  v6 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_101385FD4(a2 + 56, a1 + 56);
}

void sub_101386B04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_101386B2C(uint64_t a1)
{
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

void sub_101386B88(uint64_t a1)
{
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void sub_101386BE0(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_10136FB18(*(a1 + 8), a1 + 16);
  }

  *(*(a1 + 40) + 1) = v4;
  *(*(a1 + 40) + 2) = sub_1013715E0(v3);
  if (sub_10136F0F0(v3, a1 + 16))
  {
    v5 = !sub_10136EFC4(v3, (a1 + 16));
  }

  else
  {
    v5 = 0;
  }

  *(*(a1 + 40) + 3) = v5;
  if ((v3 + 1112) != sub_100007A6C(v3 + 1104, (a1 + 16)))
  {
    *(*(a1 + 40) + 40) = *(sub_1000E20F0(v3 + 1104, (a1 + 16)) + 40);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 2);
  v9 = *v6;
  v10 = v7;
  sub_100074920(v11, (v6 + 2));
  v12 = *(v6 + 20);
  sub_10006F264(&__p, v6 + 3);
  v16 = v6[10];
  v8 = *(a1 + 80);
  if (!v8)
  {
    sub_100022DB4();
  }

  (*(*v8 + 48))(v8, &v9);
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(v11, v11[1]);
}

uint64_t sub_101386D70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101386DBC(uint64_t **a1, void **a2)
{
  result = sub_100007A6C(a1, a2);
  if (a1 + 1 != result)
  {

    return sub_101386E10(a1, result);
  }

  return result;
}

uint64_t *sub_101386E10(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
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
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100018288(v7, a2);
  sub_101381B14((a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_101386EAC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_101386EE8(uint64_t **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = sub_10136FB18(*v1, (v1 + 1));
  v4 = sub_1013715E0(v2);
  sub_100447630((v1 + 4), v3, v4);
  sub_1008B1C40(&v7);
  return sub_1000049E0(&v6);
}

void sub_101386F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1008B1C40(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101386F74(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_10136FB18(v2, (v1 + 1));
  }

  return result;
}

uint64_t sub_101386FD4(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_1013715E0(v1);
  }

  return result;
}

void sub_101387030(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing temporary travel info cache", buf, 2u);
  }

  sub_10000501C(buf, "TempTravelInfo");
  sub_101386DBC((v1 + 1104), buf);
  if (v5 < 0)
  {
    operator delete(*buf);
  }

  sub_10136AD80(v1);
  operator delete();
}

uint64_t *sub_10138711C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (_os_feature_enabled_impl())
  {
    v3 = sub_100007A6C((v2 + 138), (v1 + 8));
    if (v2 + 139 != v3 && *(v3 + 56) == 1)
    {
      *(v3 + 56) = 0;
      sub_10136AD80(v2);
    }
  }

  sub_1000EF424(&v6);
  return sub_1000049E0(&v5);
}

void sub_1013871A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013871C0(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  if (sub_10136AC30(*v1))
  {
    if (*(v1 + 8) == 1)
    {
      v3 = v2[7];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Caching sim info from api call with install", buf, 2u);
      }

      sub_10000501C(buf, "TempTravelInfo");
      v31 = buf;
      v4 = sub_1013690E0((v2 + 138), buf);
      v5 = v4;
      v6 = *(v1 + 16);
      *(v4 + 64) = *(v1 + 24);
      *(v4 + 56) = v6;
      if (v4 + 56 != v1 + 16)
      {
        sub_1001730B8((v4 + 72), *(v1 + 32), (v1 + 40));
      }

      *(v5 + 96) = *(v1 + 56);
      sub_10012BF3C((v5 + 104), (v1 + 64));
      *(v5 + 136) = *(v1 + 96);
LABEL_8:
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_54;
    }

    if (*(v1 + 88))
    {
      v7 = (v1 + 64);
      if (v2 + 139 == sub_100007A6C((v2 + 138), (v1 + 64)))
      {
        if (*(v1 + 88) != 1)
        {
          goto LABEL_56;
        }

        v13 = sub_10136EA08(v2, (v1 + 64));
        v14 = v2[7];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v13)
        {
          if (v15)
          {
            if ((*(v1 + 88) & 1) == 0)
            {
              goto LABEL_56;
            }

            v22 = v1 + 64;
            if (*(v1 + 87) < 0)
            {
              v22 = *v7;
            }

            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Caching sim info for iccid [%s]", buf, 0xCu);
          }

          sub_10000501C(buf, "TempTravelInfo");
          v31 = buf;
          v23 = sub_1013690E0((v2 + 138), buf);
          v24 = v23;
          v25 = *(v1 + 16);
          *(v23 + 64) = *(v1 + 24);
          *(v23 + 56) = v25;
          if (v23 + 56 != v1 + 16)
          {
            sub_1001730B8((v23 + 72), *(v1 + 32), (v1 + 40));
          }

          *(v24 + 96) = *(v1 + 56);
          sub_10012BF3C((v24 + 104), (v1 + 64));
          *(v24 + 136) = *(v1 + 96);
          goto LABEL_8;
        }

        if (v15)
        {
          if (*(v1 + 88) != 1)
          {
            goto LABEL_56;
          }

          v16 = v1 + 64;
          if (*(v1 + 87) < 0)
          {
            v16 = *v7;
          }

          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Converting and updating iccid on device [%s] with sim info", buf, 0xCu);
        }

        v38 = 0;
        *__p = 0u;
        v37 = 0u;
        v34 = 0;
        v35 = 0u;
        *buf = 0u;
        v33 = &v34;
        if ((*(v1 + 88) & 1) == 0)
        {
          sub_1000D1644();
        }

        v31 = (v1 + 64);
        v17 = sub_1013858F8((v2 + 138), (v1 + 64));
        v19 = v17 + 80;
        v18 = *(v17 + 80);
        *(v17 + 56) = *buf;
        *(v17 + 64) = *&buf[8];
        sub_100009970(v17 + 72, v18);
        v20 = v34;
        *(v17 + 72) = v33;
        *(v17 + 80) = v20;
        v21 = v35;
        *(v17 + 88) = v35;
        if (v21)
        {
          *(v20 + 2) = v19;
          v33 = &v34;
          v34 = 0;
          *&v35 = 0;
        }

        else
        {
          *(v17 + 72) = v19;
        }

        *(v17 + 96) = WORD4(v35);
        sub_10016A270(v17 + 104, __p);
        *(v17 + 136) = v38;
        if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100009970(&v33, v34);
        if (*(v1 + 88) == 1)
        {
          *buf = v1 + 64;
          *(sub_1013858F8((v2 + 138), (v1 + 64)) + 96) = *(v1 + 56);
          if (*(v1 + 88) == 1)
          {
            *buf = v1 + 64;
            v26 = (sub_1013858F8((v2 + 138), (v1 + 64)) + 72);
            if (v26 != (v1 + 32))
            {
              sub_1001730B8(v26, *(v1 + 32), (v1 + 40));
            }

            if (*(v1 + 88) == 1)
            {
              *buf = v1 + 64;
              v27 = sub_1013858F8((v2 + 138), (v1 + 64));
              sub_10012BF3C((v27 + 104), (v1 + 64));
              if (*(v1 + 88) == 1)
              {
                *buf = v1 + 64;
                *(sub_1013858F8((v2 + 138), (v1 + 64)) + 64) = 1;
                goto LABEL_54;
              }
            }
          }
        }
      }

      else
      {
        v8 = v2[7];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 88) != 1)
          {
            goto LABEL_56;
          }

          v9 = v1 + 64;
          if (*(v1 + 87) < 0)
          {
            v9 = *v7;
          }

          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Updating sim info for iccid [%s]", buf, 0xCu);
        }

        if (*(v1 + 88) == 1)
        {
          *buf = v1 + 64;
          *(sub_1013858F8((v2 + 138), (v1 + 64)) + 96) = *(v1 + 56);
          if (*(v1 + 88) == 1)
          {
            *buf = v1 + 64;
            v10 = (sub_1013858F8((v2 + 138), (v1 + 64)) + 72);
            if (v10 != (v1 + 32))
            {
              sub_1001730B8(v10, *(v1 + 32), (v1 + 40));
            }

            if (*(v1 + 88) == 1)
            {
              *buf = v1 + 64;
              v11 = sub_1013858F8((v2 + 138), (v1 + 64));
              sub_10012BF3C((v11 + 104), (v1 + 64));
LABEL_54:
              sub_10136AD80(v2);
              goto LABEL_55;
            }
          }
        }
      }

LABEL_56:
      sub_1000D1644();
    }

    v12 = v2[7];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Expected iccid when travel api called without install", buf, 2u);
    }
  }

LABEL_55:
  sub_1013877E0(&v30);
  return sub_1000049E0(&v29);
}

void sub_101387788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1013877E0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    sub_100009970(v1 + 32, *(v1 + 40));
    operator delete();
  }

  return result;
}

uint64_t *sub_101387850(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = _os_feature_enabled_impl();
  v4 = v3;
  if (v3 && (*(v2 + 1096) & 1) == 0 && sub_1013715E0(v2))
  {
    v5 = *(v2 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User doesn't have trip info set.", buf, 2u);
    }

    __dst = 0uLL;
    v39 = 0;
    if (*(v2 + 1184))
    {
      v6 = *(v2 + 1168);
      if (*(v6 + 55) < 0)
      {
        sub_100005F2C(&__dst, *(v6 + 32), *(v6 + 40));
      }

      else
      {
        __dst = *(v6 + 32);
        v39 = *(v6 + 48);
      }
    }

    else
    {
      sub_10000501C(&__dst, "Dummy");
    }

    v37 = 0;
    v35 = 0;
    v36 = 0u;
    v31[0] = 0;
    v31[1] = 0;
    memset(v29, 0, sizeof(v29));
    v30 = v31;
    *v32 = 0u;
    v33 = 0u;
    *v34 = 0u;
    sub_1013689F0(buf, &__dst, v29);
    v7 = (v2 + 728);
    if (*(v2 + 1096) == 1)
    {
      if (*(v2 + 751) < 0)
      {
        operator delete(*v7);
      }

      *v7 = *buf;
      *(v2 + 744) = v17;
      HIBYTE(v17) = 0;
      buf[0] = 0;
      sub_1013647E8(v2 + 752, v18);
      v8 = v2 + 1000;
      sub_100009970(v2 + 992, *(v2 + 1000));
      v9 = v20;
      *(v2 + 992) = v19;
      *(v2 + 1000) = v9;
      v10 = v21;
      *(v2 + 1008) = v21;
      if (v10)
      {
        *(v9 + 2) = v8;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *(v2 + 992) = v8;
      }

      v11 = (v2 + 1016);
      if (*(v2 + 1039) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v22;
      *(v2 + 1032) = v23;
      HIBYTE(v23) = 0;
      LOBYTE(v22) = 0;
      v12 = (v2 + 1040);
      if (*(v2 + 1063) < 0)
      {
        operator delete(*v12);
      }

      *(v2 + 1056) = v25;
      *v12 = __p;
      HIBYTE(v25) = 0;
      LOBYTE(__p) = 0;
      *(v2 + 1064) = v26;
      *(v2 + 1088) = v28;
      *(v2 + 1072) = v27;
    }

    else
    {
      sub_1013806F4(v2 + 728, buf);
      *(v2 + 1096) = 1;
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p);
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    sub_100009970(&v19, v20);
    sub_100FF11AC(v18);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }

    sub_1013751D4(v2);
    if (SHIBYTE(v34[1]) < 0)
    {
      operator delete(*(&v33 + 1));
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0]);
    }

    sub_100009970(&v30, v31[0]);
    sub_100FF11AC(v29);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__dst);
    }
  }

  sub_10000FFD0((v1 + 1), v4);
  sub_100370DE4(&v15);
  return sub_1000049E0(&v14);
}

void sub_101387B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_100FF1258(&a57);
  if (*(v57 - 89) < 0)
  {
    operator delete(*(v57 - 112));
  }

  sub_100370DE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101387BD8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18[0] = v1;
  v2 = *v1;
  if (*(v1 + 56) == 1)
  {
    sub_10000501C(__p, "*");
    v3 = sub_100007A6C(v1 + 40, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v1 + 48 != v3)
    {
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      v20 = 0;
      v21 = 0u;
      *__p = 0u;
      *&__p[16] = &v20;
      v18[1] = v1 + 8;
      v4 = sub_1013858F8(v2 + 1104, (v1 + 8));
      v6 = v4 + 80;
      v5 = *(v4 + 80);
      *(v4 + 56) = *__p;
      *(v4 + 64) = *&__p[8];
      sub_100009970(v4 + 72, v5);
      v7 = v20;
      *(v4 + 72) = *&__p[16];
      *(v4 + 80) = v7;
      v8 = v21;
      *(v4 + 88) = v21;
      if (v8)
      {
        *(v7 + 2) = v6;
        *&__p[16] = &v20;
        v20 = 0;
        *&v21 = 0;
      }

      else
      {
        *(v4 + 72) = v6;
      }

      *(v4 + 96) = WORD4(v21);
      sub_10016A270(v4 + 104, v22);
      *(v4 + 136) = v24;
      if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
      {
        operator delete(v22[0]);
      }

      sub_100009970(&__p[16], v20);
    }
  }

  v9 = (v1 + 8);
  v10 = sub_100007A6C(v2 + 1104, (v1 + 8));
  v11 = *(v2 + 56);
  if (v2 + 1112 == v10)
  {
    if (os_log_type_enabled(*(v2 + 56), OS_LOG_TYPE_ERROR))
    {
      if (*(v1 + 31) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot find travel iccid [%s] to update sim capability", __p, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 56), OS_LOG_TYPE_DEFAULT))
    {
      v12 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v12 = *v9;
      }

      v13 = asString(*(v1 + 32));
      *__p = 136315394;
      *&__p[4] = v12;
      *&__p[12] = 2080;
      *&__p[14] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I user selected iccid [%s] with data only to be [%s]", __p, 0x16u);
    }

    v14 = *(v1 + 32);
    *__p = v1 + 8;
    *(sub_1013858F8(v2 + 1104, (v1 + 8)) + 96) = v14 | 0x100;
    if (sub_10136F0F0(v2, v1 + 8) && !sub_10136EFC4(v2, (v1 + 8)))
    {
      *__p = v1 + 8;
      v15 = (sub_1013858F8(v2 + 1104, (v1 + 8)) + 72);
      if (v15 != (v1 + 40))
      {
        sub_1001730B8(v15, *(v1 + 40), (v1 + 48));
      }

      *__p = v1 + 8;
      *(sub_1013858F8(v2 + 1104, (v1 + 8)) + 64) = 4;
    }

    sub_10136AD80(v2);
  }

  sub_101387F34(v18);
  return sub_1000049E0(&v17);
}

void sub_101387EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101387F34(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100009970(v1 + 40, *(v1 + 48));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_101387F98(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24[0] = v1;
  v2 = *v1;
  if (_os_feature_enabled_impl())
  {
    v66 = 0;
    v64 = 0;
    v65 = 0u;
    v60[0] = 0;
    v60[1] = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    memset(v54, 0, sizeof(v54));
    v59 = v60;
    *v61 = 0u;
    v62 = 0u;
    *v63 = 0u;
    std::string::operator=(&v54[120], (v1 + 8));
    *(&v55 + 1) = std::stod((v1 + 32), 0);
    v24[1] = "test";
    sub_1013810E0(&v25, v54);
    if (*(v2 + 1096) == 1)
    {
      sub_100016890((v2 + 728), "test");
      sub_1013647E8(v2 + 752, &v25);
      v3 = v2 + 1000;
      sub_100009970(v2 + 992, *(v2 + 1000));
      v4 = v45;
      *(v2 + 992) = v44;
      *(v2 + 1000) = v4;
      v5 = v46;
      *(v2 + 1008) = v46;
      if (v5)
      {
        *(v4 + 2) = v3;
        v44 = &v45;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *(v2 + 992) = v3;
      }

      v17 = (v2 + 1016);
      if (*(v2 + 1039) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(v2 + 1032) = v48;
      HIBYTE(v48) = 0;
      LOBYTE(__p[0]) = 0;
      v18 = (v2 + 1040);
      if (*(v2 + 1063) < 0)
      {
        operator delete(*v18);
      }

      *(v2 + 1056) = v50;
      *v18 = v49;
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      *(v2 + 1064) = v51;
      *(v2 + 1088) = v53;
      *(v2 + 1072) = v52;
    }

    else
    {
      sub_10000501C((v2 + 728), "test");
      *(v2 + 752) = v25;
      *(v2 + 768) = v26;
      v26 = 0;
      v25 = 0uLL;
      *(v2 + 792) = v28;
      *(v2 + 776) = v27;
      v27 = 0uLL;
      *(v2 + 816) = v30;
      *(v2 + 800) = v29;
      v28 = 0;
      v29 = 0uLL;
      v30 = 0;
      v6 = v31;
      *(v2 + 840) = v32;
      *(v2 + 824) = v6;
      v31 = 0uLL;
      v7 = v33;
      *(v2 + 864) = v34;
      *(v2 + 848) = v7;
      v32 = 0;
      v33 = 0uLL;
      v34 = 0;
      v8 = v41;
      *(v2 + 888) = v36;
      *(v2 + 872) = v35;
      v35 = 0uLL;
      v9 = v38;
      v10 = v39;
      *(v2 + 896) = v37;
      *(v2 + 912) = v9;
      v11 = v40;
      *(v2 + 928) = v10;
      *(v2 + 944) = v11;
      *(v2 + 960) = v8;
      v36 = 0;
      v40 = 0uLL;
      v12 = v42;
      v13 = v44;
      *(v2 + 984) = v43;
      *(v2 + 968) = v12;
      v43 = 0;
      v41 = 0;
      v42 = 0uLL;
      *(v2 + 992) = v13;
      v14 = v2 + 1000;
      v15 = v45;
      v16 = v46;
      *(v2 + 1000) = v45;
      *(v2 + 1008) = v16;
      if (v16)
      {
        *(v15 + 2) = v14;
        v44 = &v45;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *(v2 + 992) = v14;
      }

      v19 = v50;
      *(v2 + 1032) = v48;
      *(v2 + 1016) = *__p;
      v20 = v49;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      *&v49 = 0;
      *(v2 + 1056) = v19;
      *(v2 + 1040) = v20;
      *(&v49 + 1) = 0;
      v50 = 0;
      *(v2 + 1064) = v51;
      v21 = v52;
      *(v2 + 1088) = v53;
      *(v2 + 1072) = v21;
      *(v2 + 1096) = 1;
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100009970(&v44, v45);
    sub_100FF11AC(&v25);
    std::string::operator=((v2 + 184), (v1 + 8));
    if (SHIBYTE(v63[1]) < 0)
    {
      operator delete(*(&v62 + 1));
    }

    if (SBYTE7(v62) < 0)
    {
      operator delete(v61[0]);
    }

    sub_100009970(&v59, v60[0]);
    sub_100FF11AC(v54);
  }

  sub_10036FBEC(v24);
  return sub_1000049E0(&v23);
}

void sub_101388354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_101388394(&a11);
  sub_100FF1258(&a55);
  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101388394(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  sub_100009970(a1 + 248, *(a1 + 256));
  sub_100FF11AC(a1 + 8);
  return a1;
}

uint64_t sub_1013883EC(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = _os_feature_enabled_impl();
  if (!result)
  {
    return result;
  }

  result = sub_10136AC30(v1);
  if (!result)
  {
    return result;
  }

  v3 = *(v1 + 176) + 31536000.0;
  if (v3 > sub_10136D3A8(*(v1 + 64)))
  {
    return 0;
  }

  *(v1 + 176) = sub_10136D3A8(*(v1 + 64));
  ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
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
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
LABEL_14:
    v14 = CFDateCreate(kCFAllocatorDefault, *(v1 + 176));
    (*(*v12 + 16))(v12, @"RoamingEducationTimestamps", v14, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1003EC530(&v14);
  }

LABEL_15:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return 1;
}

void sub_1013885EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101388618(capabilities::ct *a1)
{
  v1 = **(a1 + 5);
  if (capabilities::ct::dataOnlySingleSIMDevice(a1) & 1) != 0 || *(v1 + 2928) == 1 || (sub_10136DCB8(v1))
  {
    return 0;
  }

  if (sub_1013719B0(v1))
  {
    return 1;
  }

  result = sub_10136AC30(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_101388680(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Setting travel flow to [%s]", buf, 0xCu);
  }

  *(v2 + 168) = *(v1 + 8);
  operator delete();
}

void sub_1013887A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F327A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101388824(void *a1)
{
  *a1 = off_101F327F0;
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

void sub_10138889C(void *a1)
{
  *a1 = off_101F327F0;
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete();
}

void sub_1013889D8(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void sub_101388A48(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(a1);
}

void sub_101388AB4(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v15 = 0;
  v16 = 0uLL;
  sub_100008A9C(&v15, &object);
  v13 = v15;
  v14 = v16;
  v16 = 0uLL;
  v15 = 0;
  v3 = *(a1 + 8);
  if (v14 - v13 == 48)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v26 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
    sub_100FF0F78(buf, (a1 + 40));
    if (*(v13 + 23) < 0)
    {
      sub_100005F2C(__dst, *v13, *(v13 + 1));
    }

    else
    {
      v4 = *v13;
      v20 = *(v13 + 2);
      *__dst = v4;
    }

    sub_1013741BC(v34, v3, __dst);
    if (SHIBYTE(v25[3]) < 0)
    {
      operator delete(v25[1]);
    }

    *&v25[1] = *v34;
    v25[3] = *&v34[16];
    v34[23] = 0;
    v34[0] = 0;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    if (*(v13 + 47) < 0)
    {
      sub_100005F2C(v17, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      *v17 = *(v13 + 24);
      v18 = *(v13 + 5);
    }

    sub_1013741BC(v34, v3, v17);
    if (SHIBYTE(v27[3]) < 0)
    {
      operator delete(v27[1]);
    }

    *&v27[1] = *v34;
    v27[3] = *&v34[16];
    v34[23] = 0;
    v34[0] = 0;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v6 = *(v3 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v25[3] >= 0)
      {
        v7 = &v25[1];
      }

      else
      {
        v7 = v25[1];
      }

      if (v27[3] >= 0)
      {
        v8 = &v27[1];
      }

      else
      {
        v8 = v27[1];
      }

      *v34 = 136315394;
      *&v34[4] = v7;
      *&v34[12] = 2080;
      *&v34[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fDepartureCountryCode (%s) fArrivalCountryCode (%s)", v34, 0x16u);
    }

    v9 = *(a1 + 280);
    v10 = *(v9 + 8);
    if (v10 >= *(v9 + 16))
    {
      v11 = sub_1001E2748(v9, buf);
    }

    else
    {
      sub_100FF0F78(*(v9 + 8), buf);
      v11 = v10 + 240;
      *(v9 + 8) = v10 + 240;
    }

    *(v9 + 8) = v11;
    sub_100FF11AC(buf);
  }

  else
  {
    v5 = *(v3 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid ISO list", buf, 2u);
    }
  }

  *buf = &v13;
  sub_1000087B4(buf);
  *buf = &v15;
  sub_1000087B4(buf);
  xpc_release(object);
}

void sub_101388DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  sub_100FF11AC(&a31);
  *(v31 - 80) = &a11;
  sub_1000087B4((v31 - 80));
  *(v31 - 80) = &a14;
  sub_1000087B4((v31 - 80));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_101388E60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101388EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100FF0F78((a1 + 32), (a2 + 32));
  v7 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101388F2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(v1 + 8);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101388F5C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1013811D0(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_101388FB4(uint64_t a1)
{
  v4 = a1;
  memset(v5, 0, sizeof(v5));
  sub_1001E2A18(v5, **(a1 + 32), *(*(a1 + 32) + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(*(a1 + 32) + 8) - **(a1 + 32)) >> 4));
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v5);
  v6 = v5;
  sub_1001E26C4(&v6);
  return sub_101388F5C(&v4);
}

void sub_101389058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_101388F5C(va);
  _Unwind_Resume(a1);
}

void *sub_101389084(void *a1)
{
  *a1 = off_101F32870;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1013890C8(void *a1)
{
  *a1 = off_101F32870;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1013891A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F32870;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_1013891E0(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_10138921C(uint64_t a1, uint64_t *a2)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10004EFD0(&v13, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v3 = *(a1 + 8);
  v4 = v13;
  v5 = v14;
  if (v13 == v14)
  {
    v12 = *(v3 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Names from Contacts are empty.";
      v10 = v12;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v6 = (v3 + 504);
    std::string::operator=((v3 + 504), v13);
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) >= 2)
    {
      std::string::operator=((v3 + 528), v13 + 1);
    }

    v7 = *(v3 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 527) < 0)
      {
        v6 = *v6;
      }

      v8 = (v3 + 528);
      if (*(v3 + 551) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v6;
      v17 = 2080;
      v18 = v8;
      v9 = "#I Names from Contacts (%s %s).";
      v10 = v7;
      v11 = 22;
      goto LABEL_12;
    }
  }

  sub_10000FFD0(a1 + 16, v4 != v5);
  *buf = &v13;
  sub_1000087B4(buf);
}

uint64_t sub_1013893E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101389434(void *a1)
{
  *a1 = off_101F328F0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_101389494(void *a1)
{
  *a1 = off_101F328F0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1013895C0(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F328F0;
  a2[1] = v4;
  result = sub_1000224C8((a2 + 2), (a1 + 2));
  v6 = a1[7];
  a2[6] = a1[6];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a1[9];
  a2[8] = a1[8];
  a2[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_101389640(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_10000FF50(a1 + 16);
}

void sub_10138968C(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));

  operator delete(a1);
}

void sub_1013896E0(void *a1, int *a2)
{
  v3 = a1[7];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109120;
          v9[1] = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I LockScreenSuggestionsDisabled (%d)", v9, 8u);
        }

        sub_10000FFD0((a1 + 2), v4 == 0);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1013897D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101389820(uint64_t a1)
{
  *a1 = off_101F32970;
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_1013898AC(uint64_t a1)
{
  *a1 = off_101F32970;
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

void sub_1013899E4(_Unwind_Exception *a1)
{
  sub_101373B64(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101389A08(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F32970;
  a2[1] = v4;
  sub_101381374((a2 + 2), (a1 + 2));
  result = sub_1000224C8((a2 + 13), (a1 + 13));
  v6 = a1[18];
  a2[17] = a1[17];
  a2[18] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101389A90(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_101389B14(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete(a1);
}

void sub_101389B94(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if ((*a2 & 0x100) != 0)
  {
    v5 = v4[7];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100074B94(*(a1 + 16), (a1 + 24), ",", 1, &v9);
      v6 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable user iccids (%s)", buf, 0xCu);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (sub_10136EA08(*(a1 + 8), (a1 + 40)))
    {
      if (*(a1 + 63) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        *__dst = *(a1 + 40);
        v11 = *(a1 + 56);
      }

      v9.__r_.__value_.__r.__words[0] = v4;
      sub_101381374(&v9.__r_.__value_.__l.__size_, a1 + 16);
      v14 = 0;
      operator new();
    }

    if (sub_10136EA08(v4, (a1 + 64)))
    {
      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(v7, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *v7 = *(a1 + 64);
        v8 = *(a1 + 80);
      }

      *buf = v4;
      sub_101381374(&buf[8], a1 + 16);
      v13 = 0;
      operator new();
    }
  }

  sub_10000FFD0(a1 + 104, (v3 & 0x100) == 0);
  sub_10136E064(v4);
}

void sub_101389FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_100285554(v32 - 136);
  sub_10138A0C0(&a32);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138A074(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A0C0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    sub_100009970(a1 + 8, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_10138A11C(uint64_t a1)
{
  *a1 = off_101F329E0;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_10138A194(uint64_t a1)
{
  *a1 = off_101F329E0;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10138A2A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F329E0;
  a2[1] = v2;
  return sub_101381374((a2 + 2), a1 + 16);
}

void sub_10138A2D8(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_10138A340(char *__p)
{
  if (__p[96] == 1)
  {
    if (__p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    sub_100009970((__p + 16), *(__p + 3));
  }

  operator delete(__p);
}

void sub_10138A3AC(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *(*(a1 + 8) + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = a1 + 40;
      v4 = v6;
      if (*(v5 + 23) >= 0)
      {
        v4 = v5;
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set default voice to (%s)", &v7, 0xCu);
    }
  }
}

uint64_t sub_10138A468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A4B4(uint64_t a1)
{
  *a1 = off_101F32A60;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_10138A52C(uint64_t a1)
{
  *a1 = off_101F32A60;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10138A640(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F32A60;
  a2[1] = v2;
  return sub_101381374((a2 + 2), a1 + 16);
}

void sub_10138A670(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_10138A6D8(char *__p)
{
  if (__p[96] == 1)
  {
    if (__p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    sub_100009970((__p + 16), *(__p + 3));
  }

  operator delete(__p);
}

void sub_10138A744(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *(*(a1 + 8) + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 64);
      v5 = a1 + 64;
      v4 = v6;
      if (*(v5 + 23) >= 0)
      {
        v4 = v5;
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set default data to (%s)", &v7, 0xCu);
    }
  }
}

uint64_t sub_10138A800(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A8BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32AF0;
  a2[1] = v2;
  return result;
}

void sub_10138A8E8(uint64_t a1, std::string *a2)
{
  __p = *a2;
  v2 = __p.__r_.__value_.__r.__words[2];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v3 = *(a1 + 8);
  v2 >>= 56;
  v4 = v2;
  v5 = &__p + v2;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v6)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  v8 = (v3 + 256);
  v9 = *(v3 + 279);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 279))
    {
      goto LABEL_11;
    }

LABEL_29:
    std::string::operator=((v3 + 256), &__p);
    v14 = *(v3 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    if (*(v3 + 279) < 0)
    {
      v8 = *v8;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v15 = "#I Home country set to %s";
    goto LABEL_33;
  }

  if (!*(v3 + 264))
  {
    goto LABEL_29;
  }

LABEL_11:
  if (v9 >= 0)
  {
    v10 = *(v3 + 279);
  }

  else
  {
    v10 = *(v3 + 264);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v10 != size || (v9 >= 0 ? (v12 = (v3 + 256)) : (v12 = *v8), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v13 = &__p) : (v13 = __p.__r_.__value_.__r.__words[0]), memcmp(v12, v13, v10)))
  {
    sub_101375140(v3);
    std::string::operator=((v3 + 256), &__p);
    v14 = *(v3 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 279) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      v15 = "#I Home country changed to %s";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }

LABEL_34:
  if (*(v3 + 231) < 0)
  {
    sub_100005F2C(buf, *(v3 + 208), *(v3 + 216));
  }

  else
  {
    *buf = *(v3 + 208);
    v18 = *(v3 + 224);
  }

  sub_1013791E4(v3, buf);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
  }

  sub_101375FD4(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10138AB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10138AB48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138AB94(uint64_t a1)
{
  *a1 = off_101F32B70;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10138ABF4(uint64_t a1)
{
  *a1 = off_101F32B70;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_10138AD24(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10138AD50(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101F32B70;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    return sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  v6 = *(v3 + 40);
  *(a2 + 56) = *(v3 + 7);
  *(a2 + 40) = v6;
  return result;
}

void sub_10138ADE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10138AE08(void *a1)
{
  sub_1000F02B4(a1 + 8);

  operator delete(a1);
}

void sub_10138AE44(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_101375140(v4);
  if (v3 == 1)
  {
    sub_1013794B0(v4, a1 + 16, a1 + 40);
  }

  if (*(v4 + 721) == 1)
  {
    *(v4 + 721) = 0;
  }
}

uint64_t sub_10138AEA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138AEF0(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((sub_1000068BC(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1000068BC(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void *sub_10138B044(void *a1)
{
  *a1 = off_101F32BF0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10138B090(void *a1)
{
  *a1 = off_101F32BF0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10138B170(uint64_t result, uint64_t a2)
{
  *a2 = off_101F32BF0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10138B1B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10138B1C0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10138B200(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[2])
      {
LABEL_52:
        sub_100004A34(v7);
        return;
      }

      if ((v4 & 1) == 0)
      {
        v8 = *(v5 + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Siri suggestions are not allowed.", buf, 2u);
        }

        goto LABEL_52;
      }

      memset(buf, 0, sizeof(buf));
      v33 = 0;
      if ((*(v5 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (*(v5 + 991) < 0)
      {
        sub_100005F2C(buf, *(v5 + 968), *(v5 + 976));
        v9 = *(v5 + 1096);
        v30 = 0uLL;
        v31 = 0;
        if ((v9 & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      else
      {
        *buf = *(v5 + 968);
        v33 = *(v5 + 984);
        v30 = 0uLL;
        v31 = 0;
      }

      if (*(v5 + 895) >= 0)
      {
        v10 = v5 + 872;
      }

      else
      {
        v10 = *(v5 + 872);
      }

      v11 = [NSString stringWithUTF8String:v10];
      v12 = +[NSLocale currentLocale];
      v13 = [v12 displayNameForKey:NSLocaleCountryCode value:v11];

      if (v13)
      {
        v14 = [v13 UTF8String];
      }

      else
      {
        v14 = "";
      }

      sub_10000501C(&v30, v14);

      v15 = HIBYTE(v31);
      if (v31 < 0)
      {
        v15 = *(&v30 + 1);
      }

      if (v15)
      {
        v16 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_%@_%@";
      }

      else
      {
        v16 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_NO_COUNTRY_%@";
      }

      v29 = v16;
      CFRetain(v16);
      if (SHIBYTE(v33) < 0)
      {
        if (*&buf[8] == 11)
        {
          v17 = *buf;
LABEL_27:
          v18 = *v17;
          v19 = *(v17 + 3);
          if (v18 == 0x7463617265746E49 && v19 == 0x6E6F697463617265)
          {
            v21 = HIBYTE(v31);
            if (v31 < 0)
            {
              v21 = *(&v30 + 1);
            }

            if (v21)
            {
              v22 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_3PA_%@_%@";
            }

            else
            {
              v22 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_3PA_NO_COUNTRY_%@";
            }

            v27[0] = v22;
            sub_10021D11C(&v29, v27);
            if (SHIBYTE(v33) < 0)
            {
              *&buf[8] = 4;
              v23 = *buf;
            }

            else
            {
              HIBYTE(v33) = 4;
              v23 = buf;
            }

            strcpy(v23, "Siri");
          }
        }
      }

      else if (SHIBYTE(v33) == 11)
      {
        v17 = buf;
        goto LABEL_27;
      }

      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      sub_10000501C(__p, "");
      sub_101374410(v27, v5, 1, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_10137EED0(v5, @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_TITLE", v29, @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_SUBTITLE", v27, buf, &v30);
      if (*(v5 + 1096) == 1)
      {
        *(v5 + 1072) = 1;
        v24 = sub_10136D3A8(*(v5 + 64));
        if ((*(v5 + 1096) & 1) == 0)
        {
          sub_1000D1644();
        }

        *(v5 + 1080) = v24;
        *(v5 + 1088) = 1;
        sub_1013751D4(v5);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_100005978(&v29);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_52;
    }
  }
}

void sub_10138B580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_10138B628(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}