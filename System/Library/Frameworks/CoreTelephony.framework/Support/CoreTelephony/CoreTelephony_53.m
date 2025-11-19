void sub_10035E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(VoLteControl *this, int a2)
{
  *cf = *off_101E44F20;
  v15 = @"EnableVolteByDefault";
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_10005B328(&__p, cf, &v16, 3uLL);
  (*(**(this + 52) + 104))(cf);
  v4 = cf[0];
  v13 = a2 ^ 1;
  if (cf[0] && (v5 = CFGetTypeID(cf[0]), v5 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v13, v4, v6);
    v7 = v13;
    sub_10000A1EC(cf);
    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = sub_100375DA0(this + 384);
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000A1EC(cf);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v8 = 1;
LABEL_7:
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_10035E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::operatorBlocksCallsOverCS(VoLteControl *this)
{
  v1 = *(this + 30);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(**(this + 8) + 52);
  v3 = this + 240;
  do
  {
    if (*(v1 + 7) >= v2)
    {
      v3 = v1;
    }

    v1 = *&v1[8 * (*(v1 + 7) < v2)];
  }

  while (v1);
  if (v3 != this + 240 && v2 >= *(v3 + 7))
  {
    v4 = v3[32];
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t VoLteControl::resetUserPreference(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *v15 = 136315394;
    *&v15[4] = v3;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Reset", v15, 0x16u);
  }

  *(this + 74) = 0;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v15);
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  (*(*v12 + 72))(v12, **(this + 8) + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return (*(*this + 104))(this, 0, 0);
}

void sub_10035E50C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void VoLteControl::setVoLTEFeatureUserPreference(VoLteControl *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(this + 74) == v2)
  {
    return;
  }

  if ((a2 & 1) == 0 && ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this)))
  {
    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315394;
      *&buf[4] = v21;
      v29 = 2080;
      v30 = " ";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: CS calls are blocked for the current or recent operator, prevent VoLTE preference set", buf, 0x16u);
    }

    return;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(this + 8));
    v7 = sub_10060FFC0(*(this + 74));
    *buf = 136315906;
    *&buf[4] = v6;
    v29 = 2080;
    v30 = " ";
    v31 = 2080;
    v32 = v7;
    v33 = 2080;
    v34 = sub_10060FFC0(v2);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: changed user preference from %s to %s", buf, 0x2Au);
  }

  v8 = VoLteControl::volteSwitchVer(this);
  if (a2)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -v8;
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
  v11 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_22:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_23:
  v22 = **(this + 8);
  v23 = kCFEnableIMSUserPreference;
  v27 = 0;
  *buf = v9;
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
  if (v24)
  {
    v27 = v24;
    *buf = 0;
    sub_100029A48(buf);
    v25 = v27;
  }

  else
  {
    v25 = 0;
  }

  v27 = 0;
  sub_100029A48(&v27);
  (*(*v18 + 48))(v18, v22 + 24, v23, v25, kPhoneServicesWalletDomain, 0, 1, 0, v25);
  sub_100029A48(&v26);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  *(this + 74) = v2;
  (*(*this + 104))(this, 1, 0);
  VoLteControl::submitSwitchMetric_sync(this);
}

void sub_10035E878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100029A48(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void VoLteControl::submitSwitchMetric_sync(VoLteControl *this)
{
  if (*(**(this + 8) + 48) == 1)
  {
    (*(*this + 56))(&v7);
    v2 = BYTE2(v7);
    sub_10001021C(&v8);
    if (v2 == 1)
    {
      v3 = *(this + 75) == 2;
      v4 = **(this + 8);
      v5 = *(v4 + 13);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = _NSConcreteStackBlock;
          v8 = 0x40000000;
          v9 = sub_1003657E4;
          v10 = &unk_101E45578;
          v11 = v3;
          v12 = 2;
          sub_100365638(0x80118);
          return;
        }

        if (v5 != 3)
        {
          return;
        }
      }

      else if (v5)
      {
        if (v5 == 1)
        {
          v7 = _NSConcreteStackBlock;
          v8 = 0x40000000;
          v9 = sub_1003655F0;
          v10 = &unk_101E45558;
          v11 = v3;
          v12 = 1;
          sub_100365444(0x800ED);
        }

        return;
      }

      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10176C138(v4, v6);
      }
    }
  }
}

void sub_10035EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::submitAnalyticsSwitchMetric_sync(uint64_t this)
{
  if (*(**(this + 64) + 48) == 1)
  {
    phoneservices::submitSwitchAnalytics();
  }

  return this;
}

uint64_t VoLteControl::canSwitchVoltePreferenceOnCurrentOperator(VoLteControl *this)
{
  if (*(this + 284))
  {
    return 0;
  }

  else
  {
    return VoLteControl::operatorBlocksCallsOverCS(this) ^ 1;
  }
}

BOOL VoLteControl::evaluateVoLTEFeatureState(VoLteControl *this)
{
  v2 = **(this + 8);
  if (*(v2 + 48) == 1 && (v3 = *(this + 72)) != 0)
  {
    if (((v3 == 2) & *(this + 292)) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 75);
  if (v4 != v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = PersonalityInfo::logPrefix(v2);
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE feature re-evaluated to %s", &v8, 0x20u);
    }

    *(this + 75) = v4;
  }

  return v4 != v5;
}

_BYTE *VoLteControl::handlePersonalityActivated(_BYTE *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    this[377] = 0;
    this[284] = 0;
    if (this[283] == 1)
    {
      this[283] = 0;
    }
  }

  return this;
}

uint64_t VoLteControl::handlePersonalityCfgChange(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality config changed", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

uint64_t VoLteControl::handlePersonalWalletChanged(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

void VoLteControl::handleImsVoiceSupportOnLTEUpdate(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = 136315650;
    v7 = v5;
    v8 = 2080;
    v9 = " ";
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIms Voice Support on LTE changed to %s", &v6, 0x20u);
  }

  if (a2)
  {
    VoLteControl::checkAndEnableVoLTEMenu(a1, a2 == 1);
    (*(*a1 + 104))(a1, 0, 0);
  }
}

void VoLteControl::checkAndEnableVoLTEMenu(VoLteControl *this, int a2)
{
  if (a2 && !VoLteControl::isVoLTENetworkSeen(this))
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(this + 8));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent network supports IMS, from now on VoLTE provisioning/switch allowed", &v5, 0x16u);
    }

    VoLteControl::markVoLTENetworkSeen(this);
  }
}

uint64_t VoLteControl::handleCsVoiceSupportUpdate(uint64_t this, int a2)
{
  if (*(this + 283) != 1 || *(this + 282) != a2)
  {
    v4 = this;
    v5 = *(this + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(v4 + 64));
      if (*(v4 + 283) == 1)
      {
        v7 = asStringBool(*(v4 + 282));
      }

      else
      {
        v7 = "<unknown>";
      }

      v12 = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v7;
      v18 = 2080;
      v19 = asStringBool(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%scs_voice_support_changed: %s -> %s", &v12, 0x2Au);
    }

    *(v4 + 282) = a2 | 0x100;
    if (*(v4 + 284) & 1) != 0 || (a2)
    {
      if (*(v4 + 284))
      {
        if (a2)
        {
          v10 = *(v4 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = PersonalityInfo::logPrefix(**(v4 + 64));
            v12 = 136315394;
            v13 = v11;
            v14 = 2080;
            v15 = " ";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS operator was seen recently - Keep dynamic VoLTE support allowed", &v12, 0x16u);
          }
        }
      }
    }

    else
    {
      v8 = *(v4 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(**(v4 + 64));
        v12 = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = " ";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS operator observed - Allow dynamic VoLTE support", &v12, 0x16u);
      }

      *(v4 + 284) = 1;
    }

    return (*(*v4 + 104))(v4, 0, 0);
  }

  return this;
}

void VoLteControl::handleNewServingNetwork(uint64_t a1, MCCAndMNC *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    MCCAndMNC::getMcc(&v14, a2);
    IntValue = MCC::getIntValue(&v14);
    MCCAndMNC::getMnc(v12, a2);
    IntegerWidth = MNC::getIntegerWidth(v12);
    MCCAndMNC::getMnc(v10, a2);
    v8 = MCC::getIntValue(v10);
    *buf = 136316162;
    *v18 = v5;
    *&v18[8] = 2080;
    *&v18[10] = " ";
    v19 = 1024;
    v20 = IntValue;
    v21 = 1024;
    v22 = IntegerWidth;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sServingNetwork: PLMN: %03d-%0.*d - reset dynamic VoLTE support", buf, 0x28u);
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v13 < 0)
    {
      operator delete(v12[1]);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  MCCAndMNC::getMcc(buf, a2);
  if (MCC::valid(buf))
  {
    MCCAndMNC::getMnc(&v14, a2);
    if (MCC::valid(&v14))
    {
      v9 = MCCAndMNC::operator!=();
    }

    else
    {
      v9 = 0;
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v9 = 0;
  }

  if (SBYTE1(v22) < 0)
  {
    operator delete(*&v18[4]);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  *(a1 + 284) = 0;
  if (*(a1 + 283) == 1)
  {
    *(a1 + 283) = 0;
  }

  MCC::operator=();
  MCC::operator=();
  (*(*a1 + 104))(a1, 0, 0);
}

void sub_10035F5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::handleAirplaneModeChanged(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    if (*(this + 284) == 1)
    {
      v3 = *(this + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = PersonalityInfo::logPrefix(**(v2 + 64));
        v5 = 136315394;
        v6 = v4;
        v7 = 2080;
        v8 = " ";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sRadio disabled - Reset dynamic VoLTE support", &v5, 0x16u);
      }

      *(v2 + 284) = 0;
      if (*(v2 + 283) == 1)
      {
        *(v2 + 283) = 0;
      }

      return (*(*v2 + 104))(v2, 0, 0);
    }
  }

  return this;
}

BOOL VoLteControl::evaluateImsFeatureSupport(VoLteControl *this)
{
  if (*(this + 281) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(this + 72);
  v3 = *(this + 77);
  if (v3 > 2)
  {
    if (v3 <= 4)
    {
      if (v3 != 3 && (!VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this) || (*(this + 376) & 1) == 0 && !VoLteControl::isSelfProvisioningAllowed(this)))
      {
LABEL_8:
        v2 = 1;
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v2 = 1;
      }

      goto LABEL_22;
    }

LABEL_18:
    if (VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_22;
  }

  switch(v3)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
LABEL_13:
      v2 = 2;
      break;
    case 2:
      goto LABEL_18;
  }

LABEL_22:
  v4 = *(this + 72);
  if (v4 != v2)
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(this + 8));
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      v14 = 2080;
      v15 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Network support is changing from %s to %s", &v8, 0x2Au);
    }

    *(this + 72) = v2;
  }

  return v4 != v2;
}

uint64_t VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(Registry **this)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
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
  (**v10)(&v19, v10, *this[8] + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v19)
  {
    v17 = 0;
    v18 = 0;
    (*(*v19 + 64))(&v17);
    if (v17)
    {
      sub_100A83764(v17, @"EnableVolteWhileEntitlementStatusIsUnknown", &cf);
      v12 = cf;
      v21 = 0;
      if (cf)
      {
        v13 = CFGetTypeID(cf);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v21, v12, v14);
          LOBYTE(v12) = v21;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      sub_10000A1EC(&cf);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  return v12 & 1;
}

void sub_10035FAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035FB10()
{
  if (v0)
  {
    JUMPOUT(0x10035FB08);
  }

  JUMPOUT(0x10035FB00);
}

BOOL VoLteControl::isSelfProvisioningAllowed(VoLteControl *this)
{
  if (*(this + 377))
  {
    return 0;
  }

  if (VoLteControl::isVoLTEBlockedByNetwork(this) || *(this + 292) != 1)
  {
    return 0;
  }

  return !VoLteControl::shouldHideVoLteSwitchAndBlockEntitlements(this);
}

BOOL VoLteControl::isVoLTEBlockedByNetwork(Registry **this)
{
  BOOLean = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
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
  (*(*v10 + 24))(&v14, v10, *this[8] + 24, kCFVoLTEBlockedByNetworkKey, kPhoneServicesWalletDomain, 0, 1);
  sub_10002FE1C(&BOOLean, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v12 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v12;
}

void sub_10035FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::evaluateCanSetVolteStatus(VoLteControl *this)
{
  if (*(this + 281) != 1)
  {
LABEL_31:
    v3 = 1;
    goto LABEL_32;
  }

  v2 = *(this + 77);
  if (v2 > 3)
  {
    if (v2 != 6)
    {
      if (v2 != 5)
      {
        if (v2 != 4)
        {
          goto LABEL_14;
        }

        if ((*(this + 376) & 1) == 0)
        {
          if (!VoLteControl::isSelfProvisioningAllowed(this))
          {
            v3 = 3;
LABEL_19:
            if (VoLteControl::shouldHideVoLteSwitchAndBlockEntitlements(this))
            {
              v4 = *(this + 5);
              if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
              {
                v5 = PersonalityInfo::logPrefix(**(this + 8));
                v16 = 136315394;
                v17 = v5;
                v18 = 2080;
                v19 = " ";
                _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE switch is hidden since VoLTE network was not ever seen", &v16, 0x16u);
              }

              v3 = 1;
            }

            goto LABEL_23;
          }

          *(this + 377) = 1;
          VoLteControl::attemptVolteProvisioning(this);
        }
      }

      v3 = 4;
      goto LABEL_19;
    }

LABEL_18:
    v3 = 5;
    goto LABEL_19;
  }

  v3 = 2;
  switch(v2)
  {
    case 1:
      goto LABEL_23;
    case 2:
      if (VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(this))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    case 3:
      goto LABEL_23;
  }

LABEL_14:
  v3 = *(this + 76);
  if (v3 - 3 < 3)
  {
    goto LABEL_19;
  }

  if (v3 != 2)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((VoLteControl::voLTESwitchPresent(this) & 1) == 0)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(this + 8));
      v16 = 136315394;
      v17 = v7;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sEither VoLTE switch support is not present or it is set to false", &v16, 0x16u);
    }

    v3 = 1;
  }

  if ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this))
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(this + 8));
      v16 = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent operator does not allow switching VoLTE preference", &v16, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_32:
  v10 = *(this + 76);
  if (v10 != v3)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(this + 8));
      v13 = sub_100610010(*(this + 76));
      v14 = sub_100610010(v3);
      v16 = 136315906;
      v17 = v12;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = v13;
      v22 = 2080;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports lte switch is changing from %s to %s", &v16, 0x2Au);
    }

    *(this + 76) = v3;
  }

  return v10 != v3;
}

void VoLteControl::attemptVolteProvisioning(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sAttempt VoLTE provisioning >>>", buf, 0x16u);
  }

  *(this + 376) = 1;
  v14 = 64;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  (**v12)(buf, v12, **(this + 8) + 24);
  (*(**buf + 288))(*buf, 0, &v14);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  *(this + 377) = 1;
}

void sub_1003602A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::handleSetEntitlementResponse(uint64_t result, int a2)
{
  if (a2 != 3 && a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    *(result + 377) = 0;
  }

  *(result + 376) = 0;
  return result;
}

uint64_t VoLteControl::handleRefreshEntitlementCache(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sRefresh entitlement cache", &v5, 0x16u);
  }

  *(this + 377) = 0;
  return (*(*this + 104))(this, 0, 0);
}

uint64_t VoLteControl::handleEntitlementUpdate(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 64));
    v15 = 136315394;
    v16 = v7;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sEvaluating Entitlements Change Update", &v15, 0x16u);
  }

  v8 = *(a1 + 308);
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v10)
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      v12 = sub_100A38E08(a3);
      v15 = 136315650;
      v16 = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement supported and is %s", &v15, 0x20u);
    }

    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v8 = 4;
      }

      else if (a3 == 2)
      {
        VoLteControl::releaseVoLTEBlockedByNetwork(a1);
        v8 = 3;
      }
    }

    else if ((a3 - 3) < 2)
    {
      v8 = 2;
    }

    else if (a3 == 5)
    {
      v8 = 5;
    }

    else if (a3 == 6)
    {
      VoLteControl::markVoLTEBlockedByNetwork(a1);
      v8 = 6;
    }
  }

  else
  {
    if (v10)
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 64));
      v15 = 136315394;
      v16 = v13;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement is not supported", &v15, 0x16u);
    }

    v8 = 1;
  }

  VoLteControl::evaluateVolteEntitlement(a1, v8);
  return (*(*a1 + 104))(a1, 0, 0);
}

void VoLteControl::releaseVoLTEBlockedByNetwork(VoLteControl *this)
{
  if (!VoLteControl::isVoLTEBlockedByNetwork(this))
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_10:
  (*(*v10 + 32))(v10, **(this + 8) + 24, kCFVoLTEBlockedByNetworkKey, kPhoneServicesWalletDomain, 0, 1);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(this + 8));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE 'blocked by network' removed", v14, 0x16u);
  }
}

void VoLteControl::markVoLTEBlockedByNetwork(VoLteControl *this)
{
  *cf = *off_101E44F38;
  *&cf[16] = @"DisableVolteSwitchOnIncompatibleState";
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, cf, &v23, 3uLL);
  (*(**(this + 52) + 104))(cf);
  v2 = *cf;
  v21 = 0;
  if (*cf)
  {
    v3 = CFGetTypeID(*cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v21, v2, v4);
    }
  }

  v5 = v21;
  sub_10000A1EC(cf);
  if (v5 == 1)
  {
    ServiceMap = Registry::getServiceMap(*(this + 6));
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
    *cf = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, cf);
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
LABEL_13:
        (*(*v14 + 16))(v14, **(this + 8) + 24, kCFVoLTEBlockedByNetworkKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        v16 = *(this + 5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(**(this + 8));
          *cf = 136315394;
          *&cf[4] = v17;
          *&cf[12] = 2080;
          *&cf[14] = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE blocked by network", cf, 0x16u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

LABEL_17:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_100360AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL VoLteControl::evaluateVolteEntitlement(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 308);
  if (v3 != a2)
  {
    v5 = *(a1 + 40);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = v3;
    if (v6)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 64));
      v9 = asString(*(a1 + 308));
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v9;
      v17 = 2080;
      v18 = asString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE entitlement support has changed from %s to %s", &v11, 0x2Au);
      v7 = *(a1 + 308);
    }

    if (a2 - 4 <= 2 && v7 == 3)
    {
      VoLteControl::markVoLTEBlockedByNetwork(a1);
      VoLteControl::handleVolteEntitlementLost(a1);
    }

    *(a1 + 308) = a2;
  }

  return v3 != a2;
}

const char *asString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E45598[a1];
  }
}

{
  if (a1 > 0x10)
  {
    return "???";
  }

  else
  {
    return off_101E68E18[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101E80568[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101F37EA8[a1];
  }
}

{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_101F37EE8[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101F37F58[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F37F98[a1];
  }
}

const void **VoLteControl::handleVolteEntitlementLost(const void **this)
{
  if (*(this + 292) == 1)
  {
    v1 = this;
    v63 = 0;
    format = 0;
    ServiceMap = Registry::getServiceMap(this[6]);
    v3 = ServiceMap;
    v5 = v4;
    if (v4 < 0)
    {
      v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v5;
    v9 = sub_100009510(&v3[1].__m_.__sig, buf);
    if (v9)
    {
      v11 = v9[3];
      v10 = v9[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v3);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        v12 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
LABEL_10:
    v13 = kAlertDialogLocalizationTable;
    (*(*v11 + 16))(&v62, v11, kAlertDialogLocalizationTable, @"CALLS_TURNED_OFF", 1);
    v14 = format;
    format = v62;
    *buf = v14;
    v62 = 0;
    sub_100005978(buf);
    sub_100005978(&v62);
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    v15 = Registry::getServiceMap(*(v1 + 48));
    v16 = v15;
    v17 = v4;
    if (v4 < 0)
    {
      v18 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(v15);
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
LABEL_20:
    (*(*v23 + 16))(&v62, v23, v13, @"TO_ENABLE_CALLS_CONTACT_CARRIER", 1);
    v25 = v62;
    *buf = v63;
    v62 = 0;
    v63 = v25;
    sub_100005978(buf);
    sub_100005978(&v62);
    if ((v24 & 1) == 0)
    {
      sub_100004A34(v22);
    }

    v62 = 0;
    (*(**(v1 + 416) + 80))(buf);
    sub_100060DE8(&v62, buf);
    sub_10000A1EC(buf);
    if (!v62)
    {
      v36 = *(v1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PersonalityInfo::logPrefix(**(v1 + 64));
        *buf = 136315394;
        *&buf[4] = v37;
        v66 = 2080;
        v67 = " ";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#W %s%sNo carrier name in the carrier bundle", buf, 0x16u);
      }

      goto LABEL_56;
    }

    v26 = Registry::getServiceMap(*(v1 + 48));
    v27 = v26;
    v28 = v4;
    if (v4 < 0)
    {
      v29 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
LABEL_33:
    (*(*v34 + 16))(&v61, v34, kCarriersLocalizationTable, v62, 1);
    v38 = v61;
    *buf = v62;
    v61 = 0;
    v62 = v38;
    sub_100005978(buf);
    sub_100005978(&v61);
    if ((v35 & 1) == 0)
    {
      sub_100004A34(v33);
    }

    v61 = 0;
    (*(**(v1 + 416) + 96))(buf);
    sub_100060DE8(&v61, buf);
    sub_10000A1EC(buf);
    v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v63, v62, v61);
    v58 = 0;
    v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, v61);
    v39 = Registry::getServiceMap(*(v1 + 48));
    v40 = v39;
    if (v4 < 0)
    {
      v41 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = 5381;
      do
      {
        v4 = v42;
        v43 = *v41++;
        v42 = (33 * v42) ^ v43;
      }

      while (v43);
    }

    std::mutex::lock(v39);
    *buf = v4;
    v44 = sub_100009510(&v40[1].__m_.__sig, buf);
    if (v44)
    {
      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v40);
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v45);
        v47 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      v46 = 0;
    }

    std::mutex::unlock(v40);
    v45 = 0;
    v47 = 1;
LABEL_43:
    (*(*v46 + 16))(&v58, v46, kDataUsageLocalizationTable, @"OK", 1);
    if ((v47 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    v48 = Registry::getServiceMap(*(v1 + 48));
    v49 = v48;
    if (v50 < 0)
    {
      v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
      v52 = 5381;
      do
      {
        v50 = v52;
        v53 = *v51++;
        v52 = (33 * v52) ^ v53;
      }

      while (v53);
    }

    std::mutex::lock(v48);
    *buf = v50;
    v54 = sub_100009510(&v49[1].__m_.__sig, buf);
    if (v54)
    {
      v56 = v54[3];
      v55 = v54[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v49);
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v55);
        v57 = 0;
LABEL_53:
        (*(*v56 + 32))(v56, v59, v60, v58);
        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        sub_100005978(&v58);
        sub_100005978(&v59);
        sub_100005978(&v60);
        sub_100005978(&v61);
LABEL_56:
        sub_100005978(&v62);
        sub_100005978(&v63);
        return sub_100005978(&format);
      }
    }

    else
    {
      v56 = 0;
    }

    std::mutex::unlock(v49);
    v55 = 0;
    v57 = 1;
    goto LABEL_53;
  }

  return this;
}

void sub_100361398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::isVoLTENetworkSeen(Registry **this)
{
  BOOLean = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
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
  (*(*v10 + 24))(&v14, v10, *this[8] + 24, kCFVoLTENetworkSeenKey, kPhoneServicesWalletDomain, 0, 1);
  sub_10002FE1C(&BOOLean, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v12 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v12;
}

void sub_100361620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void VoLteControl::markVoLTENetworkSeen(VoLteControl *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
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
  (*(*v10 + 16))(v10, **(this + 8) + 24, kCFVoLTENetworkSeenKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(this + 8));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE network seen", v14, 0x16u);
  }
}

const void **VoLteControl::isAllowed@<X0>(VoLteControl *this@<X0>, uint64_t a2@<X8>)
{
  theDict = 0;
  v4 = *(this + 76);
  if ((v4 - 2) < 2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = theDict;
      theDict = Mutable;
      BOOLean = v11;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSetting, kCFBooleanTrue);
    v9 = 1;
    v7 = 1;
    v8 = 1;
  }

  else if (v4 == 4)
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v12)
    {
      v13 = theDict;
      theDict = v12;
      BOOLean = v13;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSettingEnableStillProvisioning, kCFBooleanTrue);
    v8 = 0;
    v9 = 1;
    v7 = 1;
  }

  else if (v4 == 5)
  {
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v5)
    {
      v6 = theDict;
      theDict = v5;
      BOOLean = v6;
      sub_1000296E0(&BOOLean);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCannotChangeSettingNeedToCallCarrier, kCFBooleanTrue);
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (!sub_1000B1374())
  {
    BOOLean = 0;
    (*(**(this + 52) + 96))(&v15);
    sub_10002FE1C(&BOOLean, &v15);
    sub_10000A1EC(&v15);
    if (*(this + 38) != *(**(this + 8) + 52) && CFBooleanGetValue(BOOLean))
    {
      v9 = 0;
    }

    sub_100045C8C(&BOOLean);
  }

  *a2 = v9;
  *(a2 + 1) = v7;
  *(a2 + 2) = v8;
  sub_100010180((a2 + 8), &theDict);
  return sub_1000296E0(&theDict);
}

void sub_100361AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100045C8C(va1);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **VoLteControl::isEnabled@<X0>(VoLteControl *this@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*this + 56))(&v5);
  *a2 = *(this + 75) == 2;
  sub_100010024((a2 + 8), &v6);
  return sub_10001021C(&v6);
}

void VoLteControl::setEnabled(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = asStringBool(a2);
    v7 = sub_100610010(*(a1 + 304));
    v8 = asString(*(a1 + 308));
    v18 = 136316162;
    v19 = v5;
    v20 = 2080;
    v21 = " ";
    v22 = 2080;
    v23 = v6;
    v24 = 2080;
    v25 = v7;
    v26 = 2080;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled(%s): Current 'volte can set' status: %s, and lte entitlement support: %s", &v18, 0x34u);
  }

  VoLteControl::releaseVoLTEBlockedByNetwork(a1);
  v9 = *(a1 + 304);
  v10 = v9 > 5;
  v11 = (1 << v9) & 0x23;
  if (v10 || v11 == 0)
  {
    v13 = *(a1 + 308);
    if (v13 <= 2)
    {
      if (v13 != 1 && (v13 != 2 || !VoLteControl::enableVolteWhileEntitlementStatusIsUnknown(a1)))
      {
        goto LABEL_17;
      }
    }

    else if (v13 != 3)
    {
      if (v13 == 4)
      {
        if (*(a1 + 376) == 1)
        {
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = PersonalityInfo::logPrefix(**(a1 + 64));
            v18 = 136315394;
            v19 = v15;
            v20 = 2080;
            v21 = " ";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sSet entitlement is already in progress, no need to issue another request", &v18, 0x16u);
          }

          return;
        }

        VoLteControl::setVoLTEFeatureUserPreference(a1, a2);
        if (a2)
        {
          VoLteControl::attemptVolteProvisioning(a1);
        }

        else
        {
          v16 = *(a1 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = PersonalityInfo::logPrefix(**(a1 + 64));
            v18 = 136315394;
            v19 = v17;
            v20 = 2080;
            v21 = " ";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sUser has chosen to disable VoLTE, not triggering set entitlement", &v18, 0x16u);
          }
        }

LABEL_17:
        (*(*a1 + 104))(a1, 1, 0);
        return;
      }

      if (v13 != 5)
      {
        goto LABEL_17;
      }
    }

    VoLteControl::setVoLTEFeatureUserPreference(a1, a2);
    goto LABEL_17;
  }
}

uint64_t VoLteControl::doNotLinkVoLteSwitchVisibilityToVoPS(Registry **this)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
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
  (**v10)(&v19, v10, *this[8] + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v19)
  {
    v17 = 0;
    v18 = 0;
    (*(*v19 + 64))(&v17);
    if (v17)
    {
      sub_100A83764(v17, @"DoNotLinkVoLteSwitchVisibilityToVoPS", &cf);
      v12 = cf;
      v21 = 0;
      if (cf)
      {
        v13 = CFGetTypeID(cf);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v21, v12, v14);
          LOBYTE(v12) = v21;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      sub_10000A1EC(&cf);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  return v12 & 1;
}

void sub_100362018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100362058()
{
  if (v0)
  {
    JUMPOUT(0x100362050);
  }

  JUMPOUT(0x100362048);
}

void VoLteControl::serviceRefresh(VoLteControl *this, int a2, char a3)
{
  v6 = VoLteControl::evaluateCarrierSupport(this);
  v7 = VoLteControl::evaluateImsFeatureSupport(this);
  CanSetVolteStatus = VoLteControl::evaluateCanSetVolteStatus(this);
  v9 = *(this + 292);
  v10 = VoLteControl::calculateVoLTESwitchState(this);
  *(this + 292) = v10;
  v11 = VoLteControl::evaluateVoLTEFeatureState(this);
  sub_10034CD9C(*(this + 10), 2, a2);
  if (v6 || v7 || CanSetVolteStatus || v11 || v9 != v10 || (a3 & 1) != 0 || a2)
  {

    VoLteControl::reportVoLteProvisioningState(this);
  }
}

uint64_t VoLteControl::handleInHomeCountryChanged(VoLteControl *this)
{
  v3 = this + 192;
  v2 = *(this + 24);
  v4 = *(this + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = *(*v4 + 13);
  v6 = this + 192;
  do
  {
    if (*(v2 + 7) >= v5)
    {
      v6 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 7) < v5)];
  }

  while (v2);
  if (v6 == v3 || v5 < *(v6 + 7))
  {
LABEL_8:
    v6 = this + 192;
  }

  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(*v4);
    if (v6 == v3)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = asStringBool(v6[32]);
    }

    v11 = 136315650;
    v12 = v8;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sInHomeCountry changed to %s", &v11, 0x20u);
  }

  return (*(*this + 104))(this, 0, 0);
}

void VoLteControl::dumpState(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v4 = **(this + 8);
    v7 = *(v4 + 24);
    v5 = (v4 + 24);
    v6 = v7;
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (v9 < 0)
    {
      v5 = v6;
    }

    if (!v8)
    {
      v5 = "<invalid>";
    }

    *buf = 136315650;
    v61 = v3;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s== dump VoLteControl '%s'", buf, 0x20u);
  }

  v10 = *(this + 14);
  v11 = **(this + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *(v11 + 52);
  v13 = this + 112;
  do
  {
    if (*(v10 + 8) >= v12)
    {
      v13 = v10;
    }

    v10 = *&v10[8 * (*(v10 + 8) < v12)];
  }

  while (v10);
  if (v13 != this + 112 && v12 >= *(v13 + 8))
  {
    v14 = v13[64] & 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  sub_100007A6C(this + 128, (v11 + 24));
  v16 = this + 192;
  v15 = *(this + 24);
  v17 = *(this + 8);
  if (!v15)
  {
    goto LABEL_24;
  }

  v18 = *(*v17 + 13);
  v19 = this + 192;
  do
  {
    if (*(v15 + 7) >= v18)
    {
      v19 = v15;
    }

    v15 = *&v15[8 * (*(v15 + 7) < v18)];
  }

  while (v15);
  if (v19 == v16 || v18 < *(v19 + 7))
  {
LABEL_24:
    v19 = this + 192;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(*v17);
    v22 = asStringBool(*(this + 281));
    *buf = 136315650;
    v61 = v21;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = PersonalityInfo::logPrefix(**(this + 8));
    v24 = asString();
    *buf = 136315650;
    v61 = v23;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount/Network support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(this + 8));
    v26 = asStringBool(*(this + 292));
    *buf = 136315650;
    v61 = v25;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sActual VoLTE switch state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(this + 8));
    v28 = sub_10060FFC0(*(this + 74));
    *buf = 136315650;
    v61 = v27;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sUser preference: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(this + 8));
    v30 = asString(*(this + 77));
    *buf = 136315650;
    v61 = v29;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v30;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(**(this + 8));
    v32 = asStringBool(v14);
    *buf = 136315650;
    v61 = v31;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v32;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%svoiceImsPrefServiceMask: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(this + 8));
    v34 = asString();
    *buf = 136315650;
    v61 = v33;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v34;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sImsVoiceSupportOnLte: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v35 = PersonalityInfo::logPrefix(**(this + 8));
    v36 = sub_100610010(*(this + 76));
    *buf = 136315650;
    v61 = v35;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v36;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCanSet state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v37 = PersonalityInfo::logPrefix(**(this + 8));
    if (v19 == v16)
    {
      v38 = "unknown";
    }

    else
    {
      v38 = asStringBool(v19[32]);
    }

    *buf = 136315650;
    v61 = v37;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v38;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sInHomeCountry: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PersonalityInfo::logPrefix(**(this + 8));
    v40 = asStringBool(*(this + 284));
    *buf = 136315650;
    v61 = v39;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v40;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sNonCS network seen: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v41 = PersonalityInfo::logPrefix(**(this + 8));
    if (*(this + 283) == 1)
    {
      v42 = asStringBool(*(this + 282));
    }

    else
    {
      v42 = "unknown";
    }

    *buf = 136315650;
    v61 = v41;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v42;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent VoCs Support: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v43 = PersonalityInfo::logPrefix(**(this + 8));
    MCCAndMNC::getStringValue(__p, (this + 312));
    if (v59 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    *buf = 136315650;
    v61 = v43;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v44;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sServingPlmn: %s", buf, 0x20u);
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(**(this + 8));
    v46 = asString();
    *buf = 136315650;
    v61 = v45;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v46;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sFinal capability state: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v47 = PersonalityInfo::logPrefix(**(this + 8));
    v48 = asStringBool(*(this + 376));
    *buf = 136315650;
    v61 = v47;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v48;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sfVolteSetEntitlementInProgress: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v49 = PersonalityInfo::logPrefix(**(this + 8));
    v50 = asStringBool(*(this + 377));
    *buf = 136315650;
    v61 = v49;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v50;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sfVolteSetEntitlementAttempted: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v51 = PersonalityInfo::logPrefix(**(this + 8));
    v52 = VoLteControl::voLTESwitchPresent(this);
    DefaultVolteUserPreferenceFromBundle = VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(this, (v52 >> 8) & 1);
    v54 = asStringBool(DefaultVolteUserPreferenceFromBundle);
    *buf = 136315650;
    v61 = v51;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v54;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sEnableVolteByDefault: %s", buf, 0x20u);
    v20 = *(this + 5);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v55 = PersonalityInfo::logPrefix(**(this + 8));
    v56 = VoLteControl::mandatoryDisabled(this);
    v57 = asStringBool(v56);
    *buf = 136315650;
    v61 = v55;
    v62 = 2080;
    v63 = " ";
    v64 = 2080;
    v65 = v57;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sMandatoryDisabled: %s", buf, 0x20u);
  }
}

void sub_100362DB4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100362E88);
  __cxa_rethrow();
}

void sub_100362DF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100362E48(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100362E88(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100362EB4(void *a1)
{
  *a1 = off_101E45068;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100362F00(void *a1)
{
  *a1 = off_101E45068;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100362FE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45068;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100363020(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363030(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363070(uint64_t *a1, xpc_object_t *a2)
{
  sub_100363170(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C(v4 + 128, (**(v4 + 64) + 24));
        if (v4 + 136 != v7)
        {
          VoLteControl::handleImsVoiceSupportOnLTEUpdate(v4, *(v7 + 56));
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100363170(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100009970(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_100363418(object, &v6);
        xpc_release(v6);
        sub_1003635CC(a1, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_100363374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_100363418(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *(a1 + 24);
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *(a1 + 24) = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *(a1 + 24) = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

uint64_t sub_1003635CC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100363658();
  }

  return result;
}

void sub_1003636F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100363710(void *a1)
{
  *a1 = off_101E450E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036375C(void *a1)
{
  *a1 = off_101E450E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036383C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E450E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10036387C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036388C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003638CC(void *a1, xpc_object_t *a2)
{
  *v7 = 0;
  sub_10011E4A4(v7, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        if (*(**(v4 + 64) + 52) == *v7)
        {
          VoLteControl::handleCsVoiceSupportUpdate(v4, v7[4]);
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363968(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003639B4(void *a1)
{
  *a1 = off_101E45168;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363A00(void *a1)
{
  *a1 = off_101E45168;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100363AE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45168;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100363B20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363B30(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363B70(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011F248(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = *(v4 + 264);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 264;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 264 && v8 >= *(v9 + 32))
          {
            VoLteControl::handleNewServingNetwork(v4, (v9 + 40));
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100363C4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100363C98(void *a1)
{
  *a1 = off_101E451E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363CE4(void *a1)
{
  *a1 = off_101E451E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100363DC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E451E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100363E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100363E14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100363E54(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[4];
  if (v5)
  {
    v6 = a1[2];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[3])
      {
        VoLteControl::handleAirplaneModeChanged(v6, *(v6 + 280));
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_100363EF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100363F40(void *a1)
{
  *a1 = off_101E45268;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100363F8C(void *a1)
{
  *a1 = off_101E45268;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036406C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45268;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003640AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003640BC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003640FC(uint64_t *a1, xpc_object_t *a2)
{
  sub_100364288(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = *(v4 + 112);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 112;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 112 && v8 >= *(v9 + 32))
          {
            __p = 0;
            v11 = 0;
            v12 = 0;
            sub_1003647D4(&__p, *(v9 + 40), *(v9 + 48), (*(v9 + 48) - *(v9 + 40)) >> 2);
            VoLteControl::checkAndEnableVoLTEMenu(v4, *(v9 + 64) & 1);
            (*(*v4 + 104))(v4, 0, 0);
            if (__p)
            {
              v11 = __p;
              operator delete(__p);
            }
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10036423C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100364288(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10004EC58(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v12, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_100364534(object, &v6);
        xpc_release(v6);
        sub_1003646E8(a1, object);
        if (object[1])
        {
          *&v8 = object[1];
          operator delete(object[1]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_100364490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v18 - 48));
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_100364534(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_100364694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003646E8(uint64_t a1, int *a2)
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

uint64_t sub_1003647D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_100364834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100364850(void *a1)
{
  *a1 = off_101E452E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036489C(void *a1)
{
  *a1 = off_101E452E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036497C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E452E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003649BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003649CC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100364A0C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        if (*(**(v10 + 64) + 52) == *(v10 + 152))
        {
          (*(*v10 + 104))(v10, 0, 0);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_100364B38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100364B84(void *a1)
{
  *a1 = off_101E45368;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100364BD0(void *a1)
{
  *a1 = off_101E45368;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100364CB0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45368;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100364CF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100364D00(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100364D40(uint64_t *a1, xpc_object_t *a2)
{
  sub_10032CF1C(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = *(v4 + 168);
        if (v7)
        {
          v8 = *(**(v4 + 64) + 52);
          v9 = v4 + 168;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 != v4 + 168 && v8 >= *(v9 + 32) && *(v9 + 40))
          {
            (*(*v4 + 104))(v4, 0, 0);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100364E48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100364E94(void *a1)
{
  *a1 = off_101E453E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100364EE0(void *a1)
{
  *a1 = off_101E453E8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100364FC0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E453E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100365000(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100365010(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100365050(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  if (v3[2])
  {
    v5[2] = &v11;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  sub_10005452C(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3] && sub_10036518C(*(**(v7 + 8) + 52), &v10, v7 + 184))
      {
        VoLteControl::handleInHomeCountryChanged(v7);
      }

      sub_100004A34(v9);
    }
  }

  sub_10006DCAC(&v10, v11);
}

void sub_100365118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100004A34(v11);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100365140(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036518C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = a3 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= a1)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a1));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= a1)
  {
    v14 = *(a2 + 8);
    v12 = a2 + 8;
    v13 = v14;
    if (v14)
    {
      v15 = v12;
      do
      {
        if (*(v13 + 28) >= a1)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < a1));
      }

      while (v13);
      if (v15 != v12 && *(v15 + 28) <= a1 && (InHomeCountryStatus::operator!=() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = *(a2 + 8);
    v7 = a2 + 8;
    v8 = v9;
    if (!v9)
    {
      return 0;
    }

    v10 = v7;
    do
    {
      if (*(v8 + 28) >= a1)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 28) < a1));
    }

    while (v8);
    if (v10 == v7 || *(v10 + 28) > a1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003652D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E45468;
  a2[1] = v2;
  return result;
}

uint64_t sub_100365308(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003653C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E454E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1003653F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100365444(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_100365570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003655F0(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_100365638(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_100365764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003657E4(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

void sub_1003658E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10176C1DC(&a16, &a20);
  _Unwind_Resume(a1);
}

void sub_10036590C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004AA0(buf, (a1 + 8));
  v6 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v6 + 1));
  }

  v7 = [_TtC17CommCenterSupport19CTKDSClientDelegate alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_100365BD4;
  v20[3] = &unk_101E455D0;
  v21 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3321888768;
  v17 = sub_100365C6C;
  v18 = &unk_101E45600;
  v19 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v8 = [(CTKDSClientDelegate *)v7 initWithReportRegistrationChanged:v20 fetchSignedEncryptionIdentityProof:&v15];
  v9 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "setup";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v10 = [_TtC17CommCenterSupport11CTKDSClient alloc];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v11 = [NSString stringWithUTF8String:a2, v15, v16, v17, v18, v19];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v12 = [NSString stringWithUTF8String:a3];
  v13 = [(CTKDSClient *)v10 initWithSimUniqueID:v11 simLabelID:v12 delegate:v8];
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v19 + 1));
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }
}

void sub_100365B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(a1);
}

void sub_100365BD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        sub_100365E50((v4 + 8));
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_100365C40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100365C5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100365C6C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        sub_10000501C(__p, [v7 UTF8String]);
        v12 = objc_retainBlock(v8);
        v14[0] = off_101E45640;
        v14[1] = v12;
        v14[3] = v14;
        sub_100365DA8(v11, __p, a3, v14);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_100365D84(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void sub_100365DA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_10036651C(&v5, a4);
  sub_100366110((a1 + 8));
}

void sub_100365E50(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100365F38(_BYTE **a1)
{
  v2 = *a1;
  sub_100365FD8(*a1);
  if (v2)
  {
    operator delete();
  }

  v3 = 0;
  sub_1002B78C4(&v3, a1);
}

void sub_100365FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    operator delete();
  }

  a10 = 0;
  sub_1002B78C4(&a10, v10);
  _Unwind_Resume(a1);
}

void sub_100365FD8(_BYTE *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[8])
    {
      v4 = "";
    }

    else
    {
      v4 = "NOT ";
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Registration status changed to: %sregistered", &v9, 0xCu);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 56);
      if (v8)
      {
        (*(*v8 + 8))(v8, a1[8]);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100366110(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100366224(uint64_t **a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10036629C(v3);
  sub_100366474(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100366274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100366474(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10036629C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Fetching signed encryption identity proof...", buf, 2u);
  }

  v4 = *(v2 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(v2 + 56);
      if (v6)
      {
        *__p = *(a1 + 1);
        v8 = a1[3];
        a1[2] = 0;
        a1[3] = 0;
        a1[1] = 0;
        (**v6)();
        if (SHIBYTE(v8) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_15:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_10000501C(&v9, "KDS manager delegate does not exist");
  v11 = 1;
  sub_1003664D4((a1 + 5));
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  if (v5)
  {
    goto LABEL_15;
  }
}

void sub_100366410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

uint64_t *sub_100366474(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1003669EC(v1 + 40);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1003664D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_10036651C(uint64_t a1, uint64_t a2)
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

void sub_1003665C8(uint64_t a1)
{

  operator delete();
}

id sub_10036667C(uint64_t a1, void *a2)
{
  *a2 = off_101E45640;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1003666CC(id *a1)
{

  operator delete(a1);
}

void sub_100366708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v16 = *a2;
  v17 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  LOBYTE(__p[0]) = 0;
  v15 = 0;
  v3 = *(a3 + 24);
  if (v3 == 1)
  {
    *__p = *a3;
    v14 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v15 = 1;
    v4 = *(a1 + 8);
    v18 = NSLocalizedDescriptionKey;
    if (v14 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [NSString stringWithUTF8String:v5, __p[0], __p[1], v14];
    v7 = NSPOSIXErrorDomain;
    v8 = (v4 + 16);
  }

  else
  {
    v9 = HIBYTE(v17);
    if (v17 < 0)
    {
      v9 = v16[1];
    }

    v4 = *(a1 + 8);
    v8 = (v4 + 16);
    if (v9)
    {
      if (v17 >= 0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      v6 = [NSString stringWithUTF8String:v10, __p[0]];
      (*(v4 + 16))(v4, v6, 0);
      goto LABEL_15;
    }

    v7 = NSPOSIXErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v6 = @"Failed to obtain phone number information";
  }

  v19 = v6;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1, __p[0]];
  v12 = [NSError errorWithDomain:v7 code:35 userInfo:v11];
  (*v8)(v4, 0, v12);

  if (v3)
  {
LABEL_15:
  }

  if (v15 == 1 && SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_10036692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003669A0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E456B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003669EC(uint64_t a1)
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

void *sub_100366AF8(void *a1, id *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E456D0;
  sub_100366BF0((a1 + 3), a2, a3);
  return a1;
}

void sub_100366B74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E456D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100366BF0(uint64_t a1, id *a2, uint64_t a3)
{
  v10 = *a2;
  v6 = *a2;
  *a2 = 0;

  *v9 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_100366CAC(a1, &v10, v9);
  if (v9[1])
  {
    std::__shared_weak_count::__release_weak(v9[1]);
  }

  v7 = v10;
  v10 = 0;

  return a1;
}

void sub_100366C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100366CAC(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &off_101E865B8;
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "kds.mgr");
  sub_100366D88((a1 + 8), a2, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101E45720;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return a1;
}

void sub_100366D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100366D88(void *a1, id *a2, const OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = *a2;
  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v6, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v6);
  ctu::OsLogLogger::~OsLogLogger(v6);
  return a1;
}

void sub_100366DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_100320D6C(v2);
  _Unwind_Resume(a1);
}

void sub_100366E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "start";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_100367744;
  v12[3] = &unk_101E45800;
  v10 = v6;
  v13 = v10;
  v14 = v7;
  sub_1000224C8(v15, a3);
  [v9 startWithEncryptionSupported:a2 completionHandler:v12];
  sub_10000FF50(v15);
  v11 = v13;
  v13 = 0;
}

void sub_100366F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_100366FC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = a1 + 40;
  v6 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "stop";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_100367A5C;
  v10[3] = &unk_101E45800;
  v8 = v4;
  v11 = v8;
  v12 = v5;
  sub_1000224C8(v13, a2);
  [v7 stopWithCompletionHandler:v10];
  sub_10000FF50(v13);
  v9 = v11;
  v11 = 0;
}

void sub_10036712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_100367174(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "updateSimLabelId";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v9 = *(a1 + 48);
  v10 = [NSString stringWithUTF8String:a2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_100367C84;
  v13[3] = &unk_101E45800;
  v11 = v6;
  v14 = v11;
  v15 = v7;
  sub_1000224C8(v16, a3);
  [v9 updateWithSimLabelId:v10 completionHandler:v13];

  sub_10000FF50(v16);
  v12 = v14;
  v14 = 0;
}

void sub_100367310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v15 + 48);

  _Unwind_Resume(a1);
}

void sub_100367360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "updateEncryptionSupported";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_100367E80;
  v12[3] = &unk_101E45800;
  v10 = v6;
  v13 = v10;
  v14 = v7;
  sub_1000224C8(v15, a3);
  [v9 updateWithEncryptionSupported:a2 completionHandler:v12];
  sub_10000FF50(v15);
  v11 = v13;
  v13 = 0;
}

void sub_1003674D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_10036751C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "signNonce";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [NSString stringWithUTF8String:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_10036807C;
  v14[3] = &unk_101E45830;
  v12 = v6;
  v15 = v12;
  v16 = v7;
  sub_1003684A4(v17, a3);
  [v9 signNonceWithNonce:v11 completionHandler:v14];

  sub_10010DF14(v17);
  v13 = v15;
  v15 = 0;
}

void sub_1003676B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10010DF14(v15 + 48);

  _Unwind_Resume(a1);
}

void sub_10036770C(uint64_t a1)
{
  sub_10036853C(a1);

  operator delete();
}

void sub_100367744(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_10036786C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003678E8(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

uint64_t *sub_100367930(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_100367988(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C218();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Start succeeded", buf, 2u);
  }

  sub_10000FFD0(a1 + 8, *(a1 + 40) == 0);
  return sub_100367930(&v6);
}

void sub_100367A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367A5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367B84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367BB0(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C288();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CTKDSClientManager Stop succeeded", buf, 2u);
  }

  sub_10000FFD0(a1 + 8, *(a1 + 40) == 0);
  return sub_100367930(&v6);
}

void sub_100367C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367C84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367DAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367DD8(uint64_t a1)
{
  v6 = a1;
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    v3 = sub_100032AC8(*a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C2F8();
    }

    v4 = *v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  sub_10000FFD0(a1 + 8, v4);
  return sub_100367930(&v6);
}

void sub_100367E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367E80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367FA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367FD4(uint64_t a1)
{
  v6 = a1;
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    v3 = sub_100032AC8(*a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C368();
    }

    v4 = *v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  sub_10000FFD0(a1 + 8, v4);
  return sub_100367930(&v6);
}

void sub_100368068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_10036807C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1003684A4(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_1003681A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100368220(uint64_t a1)
{
  sub_10010DF14(a1 + 48);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

uint64_t *sub_100368268(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    sub_10010DF14(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1003682C0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100368340(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      sub_10176C3D8();
    }

    sub_10000501C(v7, [*(a1 + 40) UTF8String]);
    sub_100368450(a1 + 8, 1);
  }

  else
  {
    if (v4)
    {
      sub_10176C418();
    }

    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    sub_100368450(a1 + 8, 0);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  return sub_100368268(&v6);
}

void sub_10036841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100368268(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100368450(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1003684A4(uint64_t a1, uint64_t a2)
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

void sub_10036853C(uint64_t a1)
{
  *a1 = off_101E45720;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100320D6C(a1 + 8);

  TMKXPCServer.shutdown()();
}

void *sub_1003685B0(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 9) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_10036AA20(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 9) & 0x7FFFFFFFFFFFF8)) + (v7 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

void sub_10036863C(uint64_t a1)
{
  if (*(a1 + 80))
  {
    memset(&__str, 0, sizeof(__str));
    v2 = *(a1 + 48);
    v3 = (v2 + 8 * (*(a1 + 72) >> 12));
    v4 = *v3;
    v5 = (*v3 + (*(a1 + 72) & 0xFFFLL));
    v6 = *v5;
    if (v6 != 33)
    {
      if (v6 != 44)
      {
        if (v6 == 59)
        {
          do
          {
            if (++v5 - v4 == 4096)
            {
              v7 = v3[1];
              ++v3;
              v4 = v7;
              v5 = v7;
            }

            v8 = *v5;
          }

          while (v8 == 59);
          while (v8 != 33 && v8 != 59)
          {
            if (&(++v5)[-*v3] == 4096)
            {
              v9 = v3[1];
              ++v3;
              v5 = v9;
            }

            std::string::push_back(&__str, v8);
            LOBYTE(v8) = *v5;
          }

LABEL_14:
          std::string::operator=((a1 + 128), &__str);
        }

        goto LABEL_40;
      }

      if (*(a1 + 56) == v2)
      {
        v5 = 0;
      }

LABEL_21:
      v12 = v4 - v5 + 4096;
      while (1)
      {
        v13 = *v5;
        if (v13 == 33)
        {
          break;
        }

        if (v13 == 59)
        {
          do
          {
            if (++v5 - v4 == 4096)
            {
              v15 = v3[1];
              ++v3;
              v4 = v15;
              v5 = v15;
            }

            v16 = *v5;
          }

          while (v16 == 59);
          while (v16 != 33 && v16 != 59)
          {
            if (&(++v5)[-*v3] == 4096)
            {
              v17 = v3[1];
              ++v3;
              v5 = v17;
            }

            std::string::push_back(&__str, v16);
            LOBYTE(v16) = *v5;
          }

          goto LABEL_14;
        }

        ++v5;
        if (!--v12)
        {
          v14 = v3[1];
          ++v3;
          v4 = v14;
          v5 = v14;
          goto LABEL_21;
        }
      }
    }

    if (*(a1 + 151) < 0)
    {
      *(a1 + 136) = 0;
      v18 = *(a1 + 128);
    }

    else
    {
      v18 = (a1 + 128);
      *(a1 + 151) = 0;
    }

    *v18 = 0;
LABEL_40:
    v19 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v20 = *v20;
      }

      v21 = 136315138;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &v21, 0xCu);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v10 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v11 = *v11;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &__str, 0xCu);
  }
}

void sub_1003688EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100368914(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting New DTMF Digits Callback", v6, 2u);
  }

  return sub_100368990((a1 + 152), a2);
}

void *sub_100368990(void *a1, uint64_t a2)
{
  sub_10036ABF4(v4, a2);
  sub_10036AC8C(v4, a1);
  sub_1000C022C(v4);
  return a1;
}

__n128 sub_100368A04(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting New Call for DTMF Digits Callback", v13, 2u);
  }

  sub_1000BA4A0((a1 + 200), a2);
  *(a1 + 208) = *(a2 + 8);
  std::string::operator=((a1 + 224), (a2 + 24));
  v5 = *(a2 + 60);
  *(a1 + 248) = *(a2 + 48);
  *(a1 + 260) = v5;
  std::string::operator=((a1 + 280), (a2 + 80));
  *(a1 + 304) = *(a2 + 104);
  std::string::operator=((a1 + 312), (a2 + 112));
  *(a1 + 336) = *(a2 + 136);
  std::string::operator=((a1 + 344), (a2 + 144));
  v6 = *(a2 + 176);
  *(a1 + 368) = *(a2 + 168);
  *(a1 + 376) = v6;
  sub_1000FAA0C(a1 + 384, a2 + 184);
  *(a1 + 416) = *(a2 + 216);
  std::string::operator=((a1 + 432), (a2 + 232));
  *(a1 + 456) = *(a2 + 256);
  std::string::operator=((a1 + 464), (a2 + 264));
  std::string::operator=((a1 + 488), (a2 + 288));
  v7 = *(a2 + 360);
  v9 = *(a2 + 312);
  v8 = *(a2 + 328);
  *(a1 + 544) = *(a2 + 344);
  *(a1 + 560) = v7;
  *(a1 + 512) = v9;
  *(a1 + 528) = v8;
  v11 = *(a2 + 392);
  result = *(a2 + 408);
  v12 = *(a2 + 376);
  *(a1 + 621) = *(a2 + 421);
  *(a1 + 592) = v11;
  *(a1 + 608) = result;
  *(a1 + 576) = v12;
  return result;
}

void sub_100368B5C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
    sub_100368B74(a1);
  }
}

void sub_100368B74(uint64_t a1)
{
  if (*(a1 + 89) == 1 && *(a1 + 80))
  {
    v2 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 48) + ((*(a1 + 72) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 72) & 0xFFFLL));
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %c", buf, 8u);
    }

    v4 = *(*(*(a1 + 48) + ((*(a1 + 72) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 72) & 0xFFFLL));
    if (v4 > 0x3B || ((1 << v4) & 0x800100200000000) == 0)
    {
      v6 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I doKey: Pushing back %hhd digit for dtmf tones", buf, 8u);
      }

      operator new();
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Queing up burst of DTMF, count = %d", buf, 8u);
    }

    sub_10036914C(a1);
  }

  else
  {
    *(a1 + 89) = 0;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *(a1 + 80) = 0;
    v9 = (v8 - v7) >> 3;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v7);
        v10 = *(a1 + 56);
        v7 = (*(a1 + 48) + 8);
        *(a1 + 48) = v7;
        v9 = (v10 - v7) >> 3;
      }

      while (v9 > 2);
    }

    if (v9 == 1)
    {
      v11 = 2048;
    }

    else
    {
      if (v9 != 2)
      {
        return;
      }

      v11 = 4096;
    }

    *(a1 + 72) = v11;
  }
}

void sub_100368F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100368FC0(os_log_t *a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Going to start DTMF tones after a hard pause", v3, 2u);
  }

  sub_100368B74(a1);
}

char *sub_10036903C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[127] < 0)
  {
    return sub_100005F2C(a2, *(result + 13), *(result + 14));
  }

  *a2 = *(result + 104);
  *(a2 + 16) = *(result + 15);
  return result;
}

void sub_100369064(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &v6, 0xCu);
  }

  if (*(a1 + 151) < 0)
  {
    sub_100005F2C(a2, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    *a2 = *(a1 + 128);
    *(a2 + 16) = *(a1 + 144);
  }
}

void sub_10036914C(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processDtmf", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(*(*(a1 + 48) + ((v4 >> 9) & 0x7FFFFFFFFFFFF8)) + (v4 & 0xFFF));
    switch(v5)
    {
      case '!':
        *(a1 + 89) = 0;
        *(a1 + 72) = v4 + 1;
        *(a1 + 80) = v3 - 1;
        sub_10036AEF8(a1 + 40, 1);
        break;
      case ',':
        *(a1 + 72) = v4 + 1;
        *(a1 + 80) = v3 - 1;
        sub_10036AEF8(a1 + 40, 1);
        if (*(a1 + 192))
        {
          Registry::getTimerService(v27, *(a1 + 24));
          v11 = *v27;
          sub_10000501C(__p, "DTMFSoftPauseTimer");
          v12 = *(a1 + 192);
          object = v12;
          if (v12)
          {
            dispatch_retain(v12);
          }

          v22[0] = _NSConcreteStackBlock;
          v22[1] = 0x40000000;
          v22[2] = sub_100369504;
          v22[3] = &unk_101E458E0;
          v22[4] = a1;
          aBlock = _Block_copy(v22);
          sub_100D23364(v11, __p, 1, 3000000, &object, &aBlock);
          v13 = v29;
          v29 = 0;
          v14 = *(a1 + 96);
          *(a1 + 96) = v13;
          if (v14)
          {
            (*(*v14 + 8))(v14);
            v15 = v29;
            v29 = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            sub_100004A34(v28);
          }
        }

        else
        {
          v21 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N Parent queue is null!", v27, 2u);
          }

          sub_100368B74(a1);
        }

        break;
      case ';':
        while (1)
        {
          v6 = *(a1 + 48);
          v7 = *(a1 + 72);
          v8 = *(v6 + 8 * (v7 >> 12));
          v9 = *(v8 + (v7 & 0xFFF));
          if (v9 != 59)
          {
            break;
          }

          v10 = *(a1 + 80) - 1;
          *(a1 + 72) = v7 + 1;
          *(a1 + 80) = v10;
          sub_10036AEF8(a1 + 40, 1);
        }

        if (v9 != 33)
        {
          v16 = (v6 + 8 * (v7 >> 12));
          v17 = v8 + (*(a1 + 72) & 0xFFFLL);
          *(a1 + 90) = 1;
          v18 = *(a1 + 56) == v6 ? 0 : v17;
          while (1)
          {
            v19 = *v18;
            if (v19 == 33 || v19 == 59)
            {
              break;
            }

            if (&(++v18)[-*v16] == 4096)
            {
              v20 = v16[1];
              ++v16;
              v18 = v20;
            }

            std::string::push_back(&buf, v19);
          }

          std::string::operator=((a1 + 104), &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        break;
    }
  }
}

void sub_10036948C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036950C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1002853E4(a2, v2, v2 + v3, v3);
}

uint64_t sub_100369530@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *__p = 0u;
  v39 = 0u;
  v36 = 0u;
  *__src = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  sub_10000C320(&v33);
  v4 = sub_10000C030(&v34);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v4);
  v6 = std::ostream::operator<<();
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v6);
  v8 = std::ostream::operator<<();
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v8);
  v10 = std::ostream::operator<<();
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v12 = sub_10000C030(v10);
  v13 = sub_10000C030(v12);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v15 = sub_10000C030(v13);
  v16 = sub_10000C030(v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v16);
  v18 = std::ostream::operator<<();
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v18);
  v20 = a1[6];
  if (a1[7] != v20)
  {
    v21 = a1[9];
    v22 = (v20 + 8 * (v21 >> 12));
    v23 = (*v22 + (v21 & 0xFFF));
    v24 = *(v20 + (((a1[10] + v21) >> 9) & 0x7FFFFFFFFFFFF8)) + ((a1[10] + v21) & 0xFFF);
    while (v23 != v24)
    {
      LOBYTE(v51.__locale_) = *v23;
      v25 = sub_10000C030(&v34);
      sub_10000C030(v25);
      if (&(++v23)[-*v22] == 4096)
      {
        v26 = v22[1];
        ++v22;
        v23 = v26;
      }
    }
  }

  std::ios_base::getloc((&v34 + *(v34 - 24)));
  v27 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if ((BYTE8(v40) & 0x10) != 0)
  {
    v29 = v40;
    if (v40 < __src[1])
    {
      *&v40 = __src[1];
      v29 = __src[1];
    }

    v30 = __src[0];
  }

  else
  {
    if ((BYTE8(v40) & 8) == 0)
    {
      v28 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v30 = *(&v35 + 1);
    v29 = *(&v36 + 1);
  }

  v28 = v29 - v30;
  if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  a2[23] = v28;
  if (v28)
  {
    memmove(a2, v30, v28);
  }

LABEL_19:
  a2[v28] = 0;
  *&v34 = v31;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v35);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100369D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100369D68(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 192);
  *(a1 + 192) = v3;
  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_100369D8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100369DC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100369E00(void *a1, char *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[5];
  if (v6 < a3)
  {
    v7 = &__src[v6];
    v8 = a1[4] >> 12;
    v9 = a1[1];
    if (a1[2] == v9)
    {
      v10 = 0;
      if (!v6)
      {
LABEL_18:

        return sub_100369FAC(a1, v7, a3 - v6);
      }
    }

    else
    {
      v10 = (*(v9 + 8 * v8) + (a1[4] & 0xFFFLL));
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    v14 = (v9 + 8 * v8);
    v17 = *v14;
    v16 = (v14 + 1);
    v15 = v17;
    while (1)
    {
      v18 = v15 - v10 + 4096;
      if (v7 - v4 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v7 - v4;
      }

      if (v19)
      {
        memmove(v10, v4, v19);
      }

      v4 += v19;
      if (v4 == v7)
      {
        break;
      }

      v20 = *v16++;
      v15 = v20;
      v10 = v20;
    }

    v6 = a1[5];
    goto LABEL_18;
  }

  v11 = a1[1];
  v12 = (v11 + 8 * (a1[4] >> 12));
  if (a1[2] != v11)
  {
    v13 = (*v12 + (a1[4] & 0xFFFLL));
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_22:
    v22 = &__src[a3];
    v24 = *v12;
    v12 += 8;
    v23 = v24;
    while (1)
    {
      v25 = v23 - v13 + 4096;
      if (v22 - v4 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v22 - v4;
      }

      if (v26)
      {
        memmove(v13, v4, v26);
      }

      v4 += v26;
      if (v4 == v22)
      {
        break;
      }

      v27 = *v12;
      v12 += 8;
      v23 = v27;
      v13 = v27;
    }

    v13 += v26;
    if ((*(v12 - 1) + 4096) == v13)
    {
      v13 = *v12;
    }

    else
    {
      v12 -= 8;
    }

    goto LABEL_33;
  }

  v13 = 0;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_33:

  return sub_10036A0CC(a1, v12, v13);
}

void *sub_100369FAC(void *a1, char *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 9) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    sub_10036A1C4(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 12));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + (v9 & 0xFFF));
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = sub_10036A4DC(v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += v16 - v12;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

uint64_t sub_10036A0CC(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 12));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + (v5 & 0xFFF);
  }

  if (v9 != a3)
  {
    v10 = v8 - a2;
    v11 = *v8;
    v12 = *a2;
    v13 = v9 + (v10 << 9) - a3 - v11 + *a2;
    if (v13 >= 1)
    {
      v14 = (v6 + 8 * (v4 >> 12));
      if (v7 == v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + (*(result + 32) & 0xFFFLL);
      }

      v17[0] = v14;
      v17[1] = v15;
      if (a3 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = a3 - v15 - v12 + *v14 + ((a2 - v14) << 9);
      }

      sub_10036A4DC(v17, v16);
      v3[5] -= v13;
      do
      {
        result = sub_10036A9B0(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *sub_10036A1C4(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10036A540(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10036A968(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10036A540(v2, v16);
    }
  }

  return result;
}

void sub_10036A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10036A4DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

void *sub_10036A540(void *result, void *a2)
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

      sub_10036A968(result, v11);
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

const void **sub_10036A648(const void **result, void *a2)
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

      sub_10036A968(result, v9);
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

void *sub_10036A754(void *result, void *a2)
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

      sub_10036A968(result[4], v11);
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

const void **sub_10036A85C(const void **result, void *a2)
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

      sub_10036A968(result[4], v9);
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

void sub_10036A968(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10036A9B0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 9) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1000)
  {
    a2 = 1;
  }

  if (v5 < 0x2000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_10036AA20(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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
    sub_10036A968(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10036A540(a1, &v10);
}

void sub_10036ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10036ABF4(uint64_t a1, uint64_t a2)
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

void *sub_10036AC8C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10036AEEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10036AEF8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

uint64_t sub_10036B0C0(uint64_t a1, uint64_t a2, NSObject **a3)
{
  *a1 = &off_101E45A78;
  *(a1 + 8) = off_101E4D210;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "ddb.mgr");
  sub_10036B478((a1 + 16), a3, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = off_101E45988;
  *(a1 + 8) = off_101E45A28;
  *(a1 + 56) = *a2;
  v6 = *(a2 + 8);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DedicatedBearer");
  v7 = *(a1 + 32);
  v12 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a1 + 40);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 88) = 1;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  Registry::getNotificationSenderFactory(buf, *a2);
  (*(**buf + 136))(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v9 = *(a1 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicatedBearerImpl created", buf, 0x16u);
  }

  return a1;
}

void sub_10036B38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1000DCFFC(v24, *(v19 + 224));
  sub_1000DCFFC(v23, *(v19 + 200));
  sub_10036F160(v22, *(v19 + 176));
  if (*(v19 + 167) < 0)
  {
    operator delete(*v25);
  }

  sub_1002472DC(v21, *(v19 + 128));
  sub_10013DF64(v20, *(v19 + 104));
  v27 = *(v19 + 80);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v19 + 64);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 48));
  sub_1000C0544((v19 + 16));
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_10036B478(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_10036B4E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_10036B50C(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100004AA0(&v6, (a1 + 16));
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/current_data_slot");
  operator new();
}

void sub_10036B770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036B7F0(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  (*(*v10 + 8))(&v18, v10, *(a1 + 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v18)
  {
    std::string::operator=((a1 + 144), v18 + 1);
  }

  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 144);
    v14 = a1 + 144;
    v13 = v15;
    v16 = *(v14 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v14 + 8);
    }

    if (!v17)
    {
      v13 = v14;
    }

    *buf = 136315650;
    *&buf[4] = "";
    if (!v16)
    {
      v13 = "<invalid>";
    }

    v21 = 2080;
    v22 = "";
    v23 = 2080;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sstarting. Active personality %s", buf, 0x20u);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_10036B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036BA18(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = *(a1 + 48);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    asString();
    v9 = v88 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v90 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality event: %s", buf, 0x20u);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((*(a3 + 24) & 0xFE) == 6)
  {
    v10 = sub_100007A6C(a1 + 120, a3);
    if ((a1 + 128) != v10)
    {
      v11 = *(a1 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a3 + 23);
        v13 = (v12 & 0x80u) != 0;
        v14 = *a3;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a3 + 8);
        }

        if (!v13)
        {
          v14 = a3;
        }

        if (v12)
        {
          v15 = v14;
        }

        else
        {
          v15 = "<invalid>";
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v90 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving controller for %s", buf, 0x20u);
      }

      sub_1000194D8((a1 + 120), v10);
      sub_1000D57F4((v10 + 4));
      operator delete(v10);
    }

    v16 = sub_100007A6C(a1 + 192, a3);
    v17 = v16;
    if (a1 + 200 != v16)
    {
      v18 = *(v16 + 56);
      v19 = (v16 + 64);
      if (v18 != (v16 + 64))
      {
        do
        {
          v20 = *(a1 + 240);
          if (*(v18 + 55) < 0)
          {
            sub_100005F2C(__dst, v18[4], v18[5]);
          }

          else
          {
            *__dst = *(v18 + 2);
            v85 = v18[6];
          }

          if (SHIBYTE(v85) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v88 = v85;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v21 = v75;
            v75 = v77;
            v78 = v21;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v20 + 40))(v20, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v85) < 0)
          {
            operator delete(__dst[0]);
          }

          v22 = v18[1];
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
              v23 = v18[2];
              v24 = *v23 == v18;
              v18 = v23;
            }

            while (!v24);
          }

          v18 = v23;
        }

        while (v23 != v19);
      }

      sub_1000194D8((a1 + 192), v17);
      sub_1000DD058((v17 + 4));
      operator delete(v17);
    }

    v25 = sub_100007A6C(a1 + 168, a3);
    v26 = v25;
    if (a1 + 176 != v25)
    {
      v27 = *(v25 + 56);
      v28 = (v25 + 64);
      if (v27 != (v25 + 64))
      {
        do
        {
          v29 = *(a1 + 240);
          if (*(v27 + 55) < 0)
          {
            sub_100005F2C(v82, v27[4], v27[5]);
          }

          else
          {
            *v82 = *(v27 + 2);
            v83 = v27[6];
          }

          if (SHIBYTE(v83) < 0)
          {
            sub_100005F2C(__p, v82[0], v82[1]);
          }

          else
          {
            *__p = *v82;
            v88 = v83;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v30 = v75;
            v75 = v77;
            v78 = v30;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v29 + 40))(v29, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82[0]);
          }

          v31 = v27[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v27[2];
              v24 = *v32 == v27;
              v27 = v32;
            }

            while (!v24);
          }

          v27 = v32;
        }

        while (v32 != v28);
      }

      sub_1000194D8((a1 + 168), v26);
      sub_1002CB3DC((v26 + 4));
      operator delete(v26);
    }

    v33 = sub_100007A6C(a1 + 216, a3);
    v34 = v33;
    if (a1 + 224 != v33)
    {
      v35 = *(v33 + 56);
      v36 = (v33 + 64);
      if (v35 != (v33 + 64))
      {
        do
        {
          v37 = *(a1 + 240);
          if (*(v35 + 55) < 0)
          {
            sub_100005F2C(v80, v35[4], v35[5]);
          }

          else
          {
            *v80 = *(v35 + 2);
            v81 = v35[6];
          }

          if (SHIBYTE(v81) < 0)
          {
            sub_100005F2C(__p, v80[0], v80[1]);
          }

          else
          {
            *__p = *v80;
            v88 = v81;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v38 = v75;
            v75 = v77;
            v78 = v38;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v37 + 40))(v37, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
          }

          v39 = v35[1];
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
              v40 = v35[2];
              v24 = *v40 == v35;
              v35 = v40;
            }

            while (!v24);
          }

          v35 = v40;
        }

        while (v40 != v36);
      }

      sub_1000194D8((a1 + 216), v34);
      sub_1000DD058((v34 + 4));
      operator delete(v34);
    }

    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v41 = sub_100007A6C(a1 + 120, a3);
  v42 = v41;
  if (a1 + 128 != v41)
  {
    v43 = *(v41 + 56);
    v44 = *(v42 + 64);
    if (v44)
    {
      atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
    }

    v45 = __p[1];
    __p[0] = v43;
    __p[1] = v44;
    if (!v45)
    {
      goto LABEL_103;
    }

    sub_100004A34(v45);
  }

  v43 = __p[0];
LABEL_103:
  if (!v43)
  {
    if (isReal())
    {
      v78 = 0;
      v79 = 0;
      v50 = (*a4)[65];
      v51 = (*a4)[66];
      while (1)
      {
        if (v50 == v51)
        {
          v61 = v78;
          goto LABEL_141;
        }

        if (sub_1001E4088(*v50, 5u))
        {
          break;
        }

        v50 += 2;
      }

      v61 = *v50;
      v62 = v50[1];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v61;
      v79 = v62;
LABEL_141:
      if (v61 && !*(***a4 + 49))
      {
        v63 = *(a1 + 48);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(a3 + 23);
          v65 = (v64 & 0x80u) != 0;
          v66 = *a3;
          if ((v64 & 0x80u) != 0)
          {
            v64 = *(a3 + 8);
          }

          if (!v65)
          {
            v66 = a3;
          }

          if (v64)
          {
            v67 = v66;
          }

          else
          {
            v67 = "<invalid>";
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v90 = v67;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating controller for %s", buf, 0x20u);
        }

        sub_100004AA0(buf, (a1 + 16));
        v68 = *&buf[8];
        if (*&buf[8])
        {
          v69 = *buf;
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v68);
          v75 = 0;
          v76 = 0;
          v70 = std::__shared_weak_count::lock(v68);
          v71 = v70;
          if (v70)
          {
            v72 = (v69 + 8);
            if (!v69)
            {
              v72 = 0;
            }

            atomic_fetch_add_explicit(&v70->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v72 = 0;
          }

          v75 = v72;
          v76 = v70;
          std::__shared_weak_count::__release_weak(v68);
          if (v71)
          {
            sub_100004A34(v71);
          }
        }

        else
        {
          v75 = 0;
          v76 = 0;
        }

        DDBControlImpl::create(&v77, a1 + 56, a1 + 32, a4, &v78, &v75);
        v73 = v77;
        v77 = 0uLL;
        v74 = __p[1];
        *__p = v73;
        if (v74)
        {
          sub_100004A34(v74);
          if (*(&v77 + 1))
          {
            sub_100004A34(*(&v77 + 1));
          }
        }

        if (v76)
        {
          std::__shared_weak_count::__release_weak(v76);
        }

        sub_1000D51C0(buf, a3, __p);
        sub_10036F9E4(a1 + 120, buf);
        if (v91)
        {
          sub_100004A34(v91);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (v79)
      {
        sub_100004A34(v79);
      }
    }

    if (!__p[0])
    {
      goto LABEL_174;
    }

    (*(*__p[0] + 16))(__p[0]);
    (*(*__p[0] + 24))(__p[0]);
    v43 = __p[0];
    if (!__p[0])
    {
      goto LABEL_174;
    }
  }

  v46 = (*(*v43 + 80))(v43);
  v47 = *(a3 + 24);
  if (v47 <= 2)
  {
    if (v47 == 1)
    {
      v52 = 1;
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_122;
      }

      v52 = 0;
    }

    (*(*__p[0] + 40))(__p[0], v52, **a4, a2);
    goto LABEL_122;
  }

  switch(v47)
  {
    case 3u:
      v48 = __p[0];
      v49 = (*__p[0] + 48);
      goto LABEL_119;
    case 4u:
      v48 = __p[0];
      v49 = (*__p[0] + 56);
      goto LABEL_119;
    case 5u:
      v48 = __p[0];
      v49 = (*__p[0] + 64);
LABEL_119:
      (*v49)(v48);
      break;
  }

LABEL_122:
  v53 = (*(*__p[0] + 80))(__p[0]);
  v54 = *(a3 + 23);
  if (v54 >= 0)
  {
    v55 = *(a3 + 23);
  }

  else
  {
    v55 = *(a3 + 8);
  }

  v56 = *(a1 + 167);
  v57 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v56 = *(a1 + 152);
  }

  if (v55 == v56)
  {
    v58 = v53;
    v59 = v54 >= 0 ? a3 : *a3;
    v60 = v57 >= 0 ? (a1 + 144) : *(a1 + 144);
    if (!memcmp(v59, v60, v55) && v46 != v58)
    {
      (*(**(a1 + 240) + 24))(*(a1 + 240), v58);
    }
  }

LABEL_174:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }
}

void sub_10036C62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *__p, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000D522C(v41 - 112);
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

void sub_10036C7B0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sdetected change in current_data_slot", &buf, 0x16u);
  }

  v52 = 0;
  v53 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  v8 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
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
  buf.__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v6[1].__m_.__sig, &buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v15 = 1;
LABEL_11:
  (*(*v14 + 8))(&v52, v14, *(a1 + 88));
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v52;
  v17 = *(a1 + 48);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sno active personality!", &buf, 0x16u);
    }

    memset(&buf, 0, sizeof(buf));
    std::string::operator=((a1 + 144), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  if (v18)
  {
    data = v16[1].__r_.__value_.__l.__data_;
    v20 = v16 + 1;
    v19 = data;
    size = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v23 = (size & 0x80u) != 0;
    if ((size & 0x80u) != 0)
    {
      size = v20->__r_.__value_.__l.__size_;
    }

    if (!v23)
    {
      v19 = v20;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    if (!size)
    {
      v19 = "<invalid>";
    }

    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sactive personality: %s", &buf, 0x20u);
    v16 = v52;
  }

  std::string::operator=((a1 + 144), v16 + 1);
  v24 = sub_100007A6C(a1 + 120, (a1 + 144));
  if (a1 + 128 != v24)
  {
    v25 = (*(**(v24 + 56) + 80))(*(v24 + 56));
    goto LABEL_31;
  }

  v26 = *(a1 + 48);
  v25 = 0;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sno DDB controller for active personality!!", &buf, 0x16u);
LABEL_30:
    v25 = 0;
  }

LABEL_31:
  v50 = 0;
  v51 = 0;
  v27 = Registry::getServiceMap(*(a1 + 56));
  v28 = v27;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v29 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v7 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v27);
  buf.__r_.__value_.__r.__words[0] = v7;
  v32 = sub_100009510(&v28[1].__m_.__sig, &buf);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v28);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v28);
  v33 = 0;
  v35 = 1;
LABEL_39:
  (*(*v34 + 8))(&v50, v34, *a2);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (!v50 || (v36 = sub_100007A6C(a1 + 120, (v50 + 24)), a1 + 128 == v36))
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_50;
    }

    v38 = 0;
  }

  else
  {
    v37 = (*(**(v36 + 56) + 80))(*(v36 + 56));
    v38 = v37;
    if (v25 == v37)
    {
LABEL_50:
      v42 = *(a1 + 48);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = asStringBool(v25);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicated bearer management support IS NOT changed: %s", &buf, 0x20u);
      }

      goto LABEL_52;
    }
  }

  v39 = *(a1 + 48);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = asStringBool(v38);
    v41 = asStringBool(v25);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v55 = v40;
    v56 = 2080;
    v57 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicated bearer management support changed %s -> %s", &buf, 0x2Au);
  }

  (*(**(a1 + 240) + 24))(*(a1 + 240), v25);
LABEL_52:
  if (*a2 != *(a1 + 88))
  {
    if (!v50 || (v44 = sub_100007A6C(a1 + 120, (v50 + 24)), a1 + 128 == v44))
    {
      v47 = 0;
      v46 = 0;
    }

    else
    {
      v45 = *(v44 + 56);
      sub_10000501C(&buf, "custom-qos");
      (*(*v45 + 88))(&v48, v45, &buf);
      v47 = v48;
      v46 = v49;
      v48 = 0;
      v49 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    (*(**(a1 + 240) + 48))(*(a1 + 240), v47);
    if (v46)
    {
      sub_100004A34(v46);
    }
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  if (v53)
  {
    sub_100004A34(v53);
  }
}

void sub_10036CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 16));
  operator new();
}

void sub_10036D0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D0DC(uint64_t a1, uint64_t a2)
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
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036D230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v9[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v10, *a3, *(a3 + 8));
  }

  else
  {
    *v10 = *a3;
    v10[2] = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v12 = a5;
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 16));
  operator new();
}

void sub_10036D438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v9[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v10, *a3, *(a3 + 8));
  }

  else
  {
    *v10 = *a3;
    v10[2] = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v12 = a5;
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 16));
  operator new();
}

void sub_10036D684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D6C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "";
    v58 = 2080;
    v59 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s |--- Dedicated Bearer Manager:", buf, 0x16u);
    v2 = *(a1 + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = subscriber::asString();
    v4 = (a1 + 144);
    v5 = *(a1 + 167);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 152);
    }

    if (v6)
    {
      v4 = *(a1 + 144);
    }

    *buf = 136315906;
    v57 = "";
    v58 = 2080;
    if (!v5)
    {
      v4 = "<invalid>";
    }

    v59 = "";
    v60 = 2080;
    v61 = v3;
    v62 = 2080;
    v63 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Active slot:%s, personality:%s", buf, 0x2Au);
  }

  if (!*(a1 + 208))
  {
    v7 = *(a1 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s | No active sessions", buf, 0x16u);
    }
  }

  v8 = *(a1 + 192);
  if (v8 != (a1 + 200))
  {
    do
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[4];
        v11 = *(v8 + 55);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = v8[5];
        }

        if (v12 >= 0)
        {
          v10 = (v8 + 4);
        }

        v13 = v8[9];
        if (!v11)
        {
          v10 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v10;
        v62 = 2048;
        v63 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu session(s)", buf, 0x2Au);
      }

      v14 = v8[7];
      if (v14 != v8 + 8)
      {
        do
        {
          v15 = *(a1 + 48);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v14 + 4;
            if (*(v14 + 55) < 0)
            {
              v16 = *v16;
            }

            v17 = (v14 + 7);
            if (*(v14 + 79) < 0)
            {
              v17 = *v17;
            }

            *buf = 136315906;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v16;
            v62 = 2080;
            v63 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s : %s", buf, 0x2Au);
          }

          v18 = v14[1];
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
              v19 = v14[2];
              v20 = *v19 == v14;
              v14 = v19;
            }

            while (!v20);
          }

          v14 = v19;
        }

        while (v19 != v8 + 8);
      }

      v21 = v8[1];
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
          v22 = v8[2];
          v20 = *v22 == v8;
          v8 = v22;
        }

        while (!v20);
      }

      v8 = v22;
    }

    while (v22 != (a1 + 200));
  }

  if (!*(a1 + 184))
  {
    v23 = *(a1 + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s | No current attempts to establish session", buf, 0x16u);
    }
  }

  v24 = *(a1 + 168);
  if (v24 != (a1 + 176))
  {
    do
    {
      v25 = *(a1 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v24[4];
        v27 = *(v24 + 55);
        v28 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v27 = v24[5];
        }

        if (v28 >= 0)
        {
          v26 = (v24 + 4);
        }

        v29 = v24[9];
        if (!v27)
        {
          v26 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v26;
        v62 = 2048;
        v63 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu attempt(s) to add", buf, 0x2Au);
      }

      v30 = v24[7];
      if (v30 != v24 + 8)
      {
        do
        {
          v31 = *(a1 + 48);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v30 + 4;
            if (*(v30 + 55) < 0)
            {
              v32 = *v32;
            }

            *buf = 136315650;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s", buf, 0x20u);
          }

          v33 = v30[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v30[2];
              v20 = *v34 == v30;
              v30 = v34;
            }

            while (!v20);
          }

          v30 = v34;
        }

        while (v34 != v24 + 8);
      }

      v35 = v24[1];
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
          v36 = v24[2];
          v20 = *v36 == v24;
          v24 = v36;
        }

        while (!v20);
      }

      v24 = v36;
    }

    while (v36 != (a1 + 176));
  }

  if (!*(a1 + 232))
  {
    v37 = *(a1 + 48);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s | No current attempts to remove session", buf, 0x16u);
    }
  }

  v38 = *(a1 + 216);
  if (v38 != (a1 + 224))
  {
    do
    {
      v39 = *(a1 + 48);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38[4];
        v41 = *(v38 + 55);
        v42 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v41 = v38[5];
        }

        if (v42 >= 0)
        {
          v40 = (v38 + 4);
        }

        v43 = v38[9];
        if (!v41)
        {
          v40 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v40;
        v62 = 2048;
        v63 = v43;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu attempt(s) to remove", buf, 0x2Au);
      }

      v44 = v38[7];
      if (v44 != v38 + 8)
      {
        do
        {
          v45 = *(a1 + 48);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v44 + 4;
            if (*(v44 + 55) < 0)
            {
              v46 = *v46;
            }

            v47 = (v44 + 7);
            if (*(v44 + 79) < 0)
            {
              v47 = *v47;
            }

            *buf = 136315906;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v46;
            v62 = 2080;
            v63 = v47;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s : %s", buf, 0x2Au);
          }

          v48 = v44[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v44[2];
              v20 = *v49 == v44;
              v44 = v49;
            }

            while (!v20);
          }

          v44 = v49;
        }

        while (v49 != v38 + 8);
      }

      v50 = v38[1];
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
          v51 = v38[2];
          v20 = *v51 == v38;
          v38 = v51;
        }

        while (!v20);
      }

      v38 = v51;
    }

    while (v51 != (a1 + 224));
  }

  v52 = *(a1 + 120);
  v53 = (a1 + 128);
  if (v52 != v53)
  {
    do
    {
      (*(*v52[7] + 32))(v52[7]);
      v54 = v52[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v52[2];
          v20 = *v55 == v52;
          v52 = v55;
        }

        while (!v20);
      }

      v52 = v55;
    }

    while (v55 != v53);
  }
}

void sub_10036DF00(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10000FED0(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E02C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E03C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10036EAD4(v6 + 8, *a2, a2[1], (a2[1] - *a2) >> 4);
  sub_100370E34(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E1A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10036E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ctu::cf::assign();
  v5[4] = a1;
  memset(&v5[5], 0, 24);
  memset(&v6[32], 0, 15);
  sub_1003713A4(v6, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10036E390(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003713A4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E4BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ctu::cf::assign();
  v5[4] = a1;
  memset(&v5[5], 0, 24);
  memset(&v6[32], 0, 15);
  sub_10037236C(v6, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10036E6A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003725F4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E7CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E7DC(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100372C90(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E908(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E918(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003713A4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036EA44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036EA58(uint64_t a1)
{
  sub_10036EE9C(a1);

  operator delete();
}

void sub_10036EA98(uint64_t a1)
{
  sub_10036EE9C(a1 - 8);

  operator delete();
}

uint64_t sub_10036EAD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_10036EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_10036EB5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_10036EBE4(v7);
  return v4;
}

uint64_t sub_10036EBE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_10036EC1C(uint64_t a1)
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

uint64_t sub_10036EC9C(uint64_t a1)
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

uint64_t sub_10036ED1C(uint64_t a1)
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

uint64_t sub_10036ED9C(uint64_t a1)
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

uint64_t sub_10036EE1C(uint64_t a1)
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

uint64_t sub_10036EE9C(uint64_t a1)
{
  *a1 = off_101E45988;
  *(a1 + 8) = off_101E45A28;
  v2 = *(a1 + 248);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000DCFFC(a1 + 216, *(a1 + 224));
  sub_1000DCFFC(a1 + 192, *(a1 + 200));
  sub_10036F160(a1 + 168, *(a1 + 176));
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  sub_1002472DC(a1 + 120, *(a1 + 128));
  sub_10013DF64(a1 + 96, *(a1 + 104));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();
  return a1;
}

void sub_10036F004(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_10036F0D8);
  __cxa_rethrow();
}

void sub_10036F044(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10036F098(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036F0D8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t *sub_10036F104(uint64_t a1)
{
  v3 = a1;
  if (*a1)
  {
    v1 = *(*a1 + 8);
    if (v1)
    {
      sub_100004A34(v1);
    }

    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10036F160(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10036F160(a1, *a2);
    sub_10036F160(a1, a2[1]);
    sub_1002CB3DC((a2 + 4));

    operator delete(a2);
  }
}

void *sub_10036F1BC(void *a1)
{
  *a1 = off_101E45C28;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F208(void *a1)
{
  *a1 = off_101E45C28;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F2E8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45C28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10036F328(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F338(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F378(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        sub_10036C7B0(v10, &v13);
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10036F470(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10036F4BC(void *a1)
{
  *a1 = off_101E45CA8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F508(void *a1)
{
  *a1 = off_101E45CA8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F5E8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45CA8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}