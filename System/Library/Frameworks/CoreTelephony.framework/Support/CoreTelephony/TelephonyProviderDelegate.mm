@interface TelephonyProviderDelegate
- (BOOL)doesHeldUnHeldcallAlreadyExist:(id)exist;
- (BOOL)evaluateAndSendCallUpdateWithCallInfo:(dict)info previousCallInfo:(dict)callInfo;
- (BOOL)possiblyFulfillUnexpectedHoldCallWithProvider:(id)provider transactions:(id)transactions;
- (BOOL)possiblyFulfillUnexpectedMOStartCallWithProvider:(id)provider transactions:(id)transactions;
- (BOOL)provider:(id)provider executeTransaction:(id)transaction;
- (BOOL)shouldIncludeInCallHistory:(int)history phoneNumber:()basic_string<char;
- (BOOL)supportDownlinkDtmf:(int)dtmf usingBaseband:(BOOL)baseband isCS:(BOOL)s;
- (TelephonyProvider)provider;
- (TelephonyProviderDelegate)initWithProvider:(id)provider registry:(const void *)registry queue:(queue)queue;
- (basic_string<char,)getiSOCountryCodeForCurrentLocation:(std::allocator<char>> *__return_ptr)retstr;
- (id).cxx_construct;
- (id)evaluateAndCreateCallUpdateWithCallInfo:(dict)info previousCallInfo:(dict)callInfo;
- (id)getCallCapabilitiesUpdateForCall:(id)call simSlot:(int)slot isEmergency:(BOOL)emergency supportsTextWithVoiceForCall:(BOOL)forCall;
- (id)registerForAVCBBTap_sync:(BOOL)tap_sync;
- (vector<CurrentCallInfo,)getCurrentCalls;
- (void)checkAVCBBTapAndSendCallUpdate_sync:()vector<std:()xpc:()std:(xpc::dict>>> *)std :allocator<std::pair<xpc::dict :dict> :pair<xpc::dict;
- (void)checkBasebandAssertions;
- (void)handleCallCapabilitiesChanged;
- (void)handleCallControlFailure:(const void *)failure;
- (void)handleCallFrequencyDataChanged;
- (void)handleCallStatusChangedWithOldCalls:(const void *)calls;
- (void)handleCallToneComplete:(const void *)complete;
- (void)handleDisambiguationEmergencyNumbersChanged;
- (void)handleDownlinkDtmfEvent:(const void *)event dtmf:(char)dtmf;
- (void)handleEmergencyNumbersChanged;
- (void)handleLastKnownHomePlmnChanged:(const void *)changed;
- (void)handleSimSubscriptionInfoChanged:(id)changed;
- (void)handleSubscriptionInfoChanged;
- (void)handleThumperAccountIdChanged;
- (void)handleThumperHandoffAvailabilityChanged;
- (void)handleThumperSubscriptionInfoChanged:(id)changed;
- (void)initialize;
- (void)provider:(id)provider didActivateAudioSession:(id)session;
- (void)provider:(id)provider didDeactivateAudioSession:(id)session;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performPlayDTMFCallAction:(id)action;
- (void)provider:(id)provider performPullCallAction:(id)action;
- (void)provider:(id)provider performSendMMIOrUSSDCodeAction:(id)action;
- (void)provider:(id)provider performSetGroupCallAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetScreeningCallAction:(id)action;
- (void)provider:(id)provider performSetTTYTypeCallAction:(id)action;
- (void)provider:(id)provider performStartCallAction:(id)action;
- (void)provider:(id)provider timedOutPerformingAction:(id)action;
- (void)providerDidReset:(id)reset;
- (void)registerForRestProperties_sync;
- (void)updateAudioCategory:(unsigned __int8)category updateToUpdate:(id)update apOnlyMode:(BOOL)mode usingBaseband:(BOOL)baseband;
@end

@implementation TelephonyProviderDelegate

- (vector<CurrentCallInfo,)getCurrentCalls
{
  p_fLock = &self->fLock;
  ctu::UnfairLock::lock(&self->fLock);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_1000B2D2C(retstr, self->fCurrentCallsCopy.__begin_, self->fCurrentCallsCopy.__end_, (self->fCurrentCallsCopy.__end_ - self->fCurrentCallsCopy.__begin_) >> 3);
  return ctu::UnfairLock::unlock(p_fLock);
}

- (void)initialize
{
  fObj = self->fQueue.fObj.fObj;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019228C;
  block[3] = &unk_101E2E110;
  block[4] = self;
  dispatch_async(fObj, block);
  v6 = kPhoneServicesWalletDomain;
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &v6, &v7, 1uLL);
  operator new();
}

- (TelephonyProviderDelegate)initWithProvider:(id)provider registry:(const void *)registry queue:(queue)queue
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = TelephonyProviderDelegate;
  v9 = [(TelephonyProviderDelegate *)&v16 init];
  if (v9)
  {
    v10 = *queue.fObj.fObj;
    if (*queue.fObj.fObj)
    {
      dispatch_retain(*queue.fObj.fObj);
    }

    fObj = v9->fQueue.fObj.fObj;
    v9->fQueue.fObj.fObj = v10;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v13 = *registry;
    v12 = *(registry + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v9->fRegistry.__cntrl_;
    v9->fRegistry.__ptr_ = v13;
    v9->fRegistry.__cntrl_ = v12;
    if (cntrl)
    {
      sub_100004A34(cntrl);
    }

    sub_100192484();
  }

  return 0;
}

- (void)registerForRestProperties_sync
{
  selfCopy = self;
  sub_10000501C(__p, "/cc/props/current_calls");
  v3 = selfCopy;
  v40 = off_101E2E2E0;
  p_fCurrentCalls = &selfCopy->fCurrentCalls;
  v42 = v3;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v3;
  sub_10000501C(__p, "/cc/props/call_capabilities");
  p_fCallCapabilities = &v4->fCallCapabilities;
  v6 = v4;
  v40 = off_101E2E360;
  p_fCurrentCalls = p_fCallCapabilities;
  v42 = v6;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v6;
  sub_10000501C(__p, "/cc/props/emergency_numbers");
  v8 = (v7 + 152);
  v9 = v7;
  v40 = off_101E2E3E0;
  p_fCurrentCalls = v8;
  v42 = v9;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v9;
  sub_10000501C(__p, "/cc/props/disambiguation_emergency_numbers");
  v11 = (v10 + 176);
  v12 = v10;
  v40 = off_101E2E460;
  p_fCurrentCalls = v11;
  v42 = v12;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v12;
  sub_10000501C(__p, "/cc/props/call_frequency_data");
  v14 = (v13 + 224);
  v15 = v13;
  v40 = off_101E2E4E0;
  p_fCurrentCalls = v14;
  v42 = v15;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v15;
  sub_10000501C(__p, "/cc/props/thumper_handoff_allowed");
  v17 = (v16 + 264);
  v18 = v16;
  v40 = off_101E2E560;
  p_fCurrentCalls = v17;
  v42 = v18;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v18;
  sub_10000501C(__p, "/cc/props/vowifi_provisioning_state");
  v20 = (v19 + 288);
  v21 = v19;
  v40 = off_101E2E5E0;
  p_fCurrentCalls = v20;
  v42 = v21;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = v21;
  sub_10000501C(__p, "/cc/events/call_control_failure");
  v23 = v22;
  v40 = off_101E2E660;
  p_fCurrentCalls = v23;
  v43 = &v40;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v23;
  sub_10000501C(__p, "/cc/events/call_tone_complete");
  v25 = v24;
  v40 = off_101E2E6E0;
  p_fCurrentCalls = v25;
  v43 = &v40;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v25;
  sub_10000501C(__p, "/cc/props/subscription_info");
  v27 = (v26 + 320);
  v28 = v26;
  v40 = off_101E2E760;
  p_fCurrentCalls = v27;
  v42 = v28;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v28;
  sub_10000501C(__p, "/cc/props/last_known_home_plmn");
  v30 = (v29 + 416);
  v31 = v29;
  v40 = off_101E2E7E0;
  p_fCurrentCalls = v30;
  v42 = v31;
  v43 = &v40;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v32 = v31;
  sub_10000501C(__p, "/cc/events/downlink_dtmf_complete");
  v33 = v32;
  v40 = off_101E2E860;
  p_fCurrentCalls = v33;
  v43 = &v40;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (capabilities::ct::supportsThumperService(v34))
  {
    v35 = v33;
    sub_10000501C(__p, "/cc/props/active_subscriptions");
    v36 = (v35 + 344);
    v37 = v35;
    v40 = off_101E2E8E0;
    p_fCurrentCalls = v36;
    v42 = v37;
    v43 = &v40;
    ctu::RestModule::observeProperty();
    sub_1000062D4(&v40);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100192C94(&v33[16].fValue.__end_);
  sub_100192D74(&v33[8].fValue.__end_);
}

- (BOOL)shouldIncludeInCallHistory:(int)history phoneNumber:()basic_string<char
{
  __p = 0u;
  v28 = 0u;
  v26 = 0u;
  v24 = 0u;
  *v25 = 0u;
  v22 = 0u;
  *v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  *v19 = 0u;
  CSIPhoneNumber::CSIPhoneNumber();
  left = self->fExcludedNumbers.fValue.__tree_.__end_node_.__left_;
  p_end_node = &self->fExcludedNumbers.fValue.__tree_.__end_node_;
  v6 = left;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (!left)
  {
    goto LABEL_15;
  }

  v9 = p_end_node;
  do
  {
    if (SLODWORD(v6[4].__left_) >= history)
    {
      v9 = v6;
    }

    v6 = v6[SLODWORD(v6[4].__left_) < history].__left_;
  }

  while (v6);
  if (v9 == p_end_node || SLODWORD(v9[4].__left_) > history || &v16 == &v9[5] || (sub_1001A7D40(&v16, v9[5].__left_, v9[6].__left_, 0xCCCCCCCCCCCCCCCDLL * ((v9[6].__left_ - v9[5].__left_) >> 5)), v10 = v16, v11 = v17, v16 == v17))
  {
LABEL_15:
    v14 = 1;
  }

  else
  {
    do
    {
      v12 = CSIPhoneNumber::operator==();
      v10 += 160;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }
    }

    while ((v13 & 1) == 0);
    v14 = v12 ^ 1;
  }

  v29 = &v16;
  sub_1000B23E0(&v29);
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  return v14;
}

- (BOOL)supportDownlinkDtmf:(int)dtmf usingBaseband:(BOOL)baseband isCS:(BOOL)s
{
  sCopy = s;
  basebandCopy = baseband;
  v7 = *&dtmf;
  if (s)
  {
    if ((capabilities::ct::supportsCSDownlinkDTMFDetection(self) & 1) == 0)
    {
      v9 = *self->logger.__ptr_;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "#I supportDownlinkDtmf false: BB does not support for CS calls";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else if ((capabilities::ct::supportsPSDownlinkDTMFDetection(self) & 1) == 0)
  {
    v9 = *self->logger.__ptr_;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#I supportDownlinkDtmf false: BB does not support for PS calls";
      goto LABEL_17;
    }

LABEL_18:
    v22 = 0;
    return v22 & 1;
  }

  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
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
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v17)
  {
    v19 = 0;
LABEL_20:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_12;
    }

LABEL_21:
    *buf = @"EmergencyCalling";
    *&buf[8] = @"EnableSOSVoiceLoopControl";
    v49 = 0;
    v50 = 0;
    v48 = 0;
    sub_10005B328(&v48, buf, &buf[16], 2uLL);
    cf = 0;
    (*(*v19 + 104))(&cf, v19, v7, 2, &v48, kCFBooleanFalse, 0);
    v23 = cf;
    buf[0] = 0;
    if (cf)
    {
      v24 = CFGetTypeID(cf);
      if (v24 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v23, v25);
      }
    }

    if (buf[0])
    {
      if (!basebandCopy || sCopy)
      {
        v35 = *self->logger.__ptr_;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = "VoiceOverAP PS";
          if (sCopy)
          {
            v36 = "CS";
          }

          *buf = 136315138;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I supportDownlinkDtmf true for %s calls: OperatorVLC: true", buf, 0xCu);
        }

        v22 = 1;
      }

      else
      {
        *buf = *off_101E2E130;
        *&buf[16] = @"EnableIncomingDTMF";
        v45 = 0;
        v46 = 0;
        __p = 0;
        sub_10005B328(&__p, buf, &v52, 3uLL);
        v43 = 0;
        (*(*v19 + 104))(&v43, v19, v7, 1, &__p, kCFBooleanFalse, 0);
        v26 = v43;
        buf[0] = 0;
        if (v43)
        {
          v27 = CFGetTypeID(v43);
          if (v27 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(buf, v26, v28);
          }
        }

        v29 = buf[0];
        v42 = 0;
        (*(*v19 + 104))(&v42, v19, v7, 2, &__p, kCFBooleanFalse, 0);
        v30 = v42;
        buf[0] = 0;
        if (v42 && (v31 = CFGetTypeID(v42), v31 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(buf, v30, v32);
          v33 = buf[0];
        }

        else
        {
          v33 = 0;
        }

        v22 = v33 & v29;
        v37 = *self->logger.__ptr_;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = asStringBool(v22 & 1);
          v39 = asStringBool(v29);
          v40 = asStringBool(v33 & 1);
          *buf = 136315650;
          *&buf[4] = v38;
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 2080;
          v52 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I supportDownlinkDtmf %s for VoiceOverBB PS calls: OperatorVLC: true, CarrierEnableIncomingDTMF: %s, OperatorEnableIncomingDTMF: %s", buf, 0x20u);
        }

        sub_10000A1EC(&v42);
        sub_10000A1EC(&v43);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      v34 = *self->logger.__ptr_;
      v22 = 0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I supportDownlinkDtmf false: OperatorVLC: false", buf, 2u);
        v22 = 0;
      }
    }

    sub_10000A1EC(&cf);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    goto LABEL_47;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_12:
  v21 = *self->logger.__ptr_;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "supportDownlinkDtmf false: CarrierSettings not found", buf, 2u);
  }

  v22 = 0;
LABEL_47:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  return v22 & 1;
}

- (basic_string<char,)getiSOCountryCodeForCurrentLocation:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  *retstr->__rep_.__s.__data_ = 0uLL;
  *(&retstr->__rep_.__l + 2) = 0;
  v70[0] = 0;
  v70[1] = 0;
  v71 = 0;
  PersonalityIdFromSlotIdEx();
  v68 = 0;
  v69 = 0;
  ServiceMap = Registry::getServiceMap(*(v4 + 24));
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
  v54[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v54);
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
  (**v14)(&v68, v14, v70);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!v68 || *(v68 + 52))
  {
    *v54 = 0u;
    v55 = 0u;
    MCC::MCC(v54);
    v16 = *(v4 + 400);
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = v4 + 400;
    do
    {
      if (*(v16 + 32) >= v3)
      {
        v17 = v16;
      }

      v16 = *(v16 + 8 * (*(v16 + 32) < v3));
    }

    while (v16);
    if (v17 == v4 + 400 || *(v17 + 32) > v3)
    {
      goto LABEL_51;
    }

    MCC::operator=();
    v18 = Registry::getServiceMap(*(v4 + 24));
    v19 = v18;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    *&v52 = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, &v52);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        if (!v26)
        {
LABEL_49:
          if ((v27 & 1) == 0)
          {
            sub_100004A34(v25);
          }

LABEL_51:
          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[1]);
          }

          goto LABEL_53;
        }

LABEL_45:
        MCC::getStringValue(__p, v54);
        (*(*v26 + 24))(&v52, v26, __p);
        if (*(&retstr->__rep_.__l + 23) < 0)
        {
          operator delete(retstr->__rep_.__l.__data_);
        }

        *retstr->__rep_.__s.__data_ = v52;
        *(&retstr->__rep_.__l + 2) = v53;
        HIBYTE(v53) = 0;
        LOBYTE(v52) = 0;
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v52 = 0uLL;
  v28 = Registry::getServiceMap(*(v4 + 24));
  v29 = v28;
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

  std::mutex::lock(v28);
  v54[0] = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, v54);
  if (!v34)
  {
    v36 = 0;
    goto LABEL_34;
  }

  v36 = v34[3];
  v35 = v34[4];
  if (!v35)
  {
LABEL_34:
    std::mutex::unlock(v29);
    v35 = 0;
    v37 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v29);
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v35);
  v37 = 0;
LABEL_35:
  (**v36)(&v52, v36, v70);
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  if (v52)
  {
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
    v65 = 1;
    v66 = 0u;
    memset(v67, 0, 56);
    if ((*(*v52 + 104))(v52, v54))
    {
      std::string::operator=(retstr, &v67[1]);
    }

    sub_1000FF134(v54);
  }

  if (*(&v52 + 1))
  {
    sub_100004A34(*(&v52 + 1));
  }

LABEL_53:
  size = *(&retstr->__rep_.__l + 23);
  if ((size & 0x80u) != 0)
  {
    size = retstr->__rep_.__l.__size_;
  }

  if (!size)
  {
    v39 = Registry::getServiceMap(*(v4 + 24));
    v40 = v39;
    if (v41 < 0)
    {
      v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    std::mutex::lock(v39);
    v54[0] = v41;
    v45 = sub_100009510(&v40[1].__m_.__sig, v54);
    if (v45)
    {
      v47 = v45[3];
      v46 = v45[4];
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v40);
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v46);
        v48 = 0;
        if (!v47)
        {
          goto LABEL_62;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v47 = 0;
    }

    std::mutex::unlock(v40);
    v46 = 0;
    v48 = 1;
    if (!v47)
    {
LABEL_62:
      if (os_log_type_enabled(**(v4 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_1017633E8();
      }

LABEL_69:
      if ((v48 & 1) == 0)
      {
        sub_100004A34(v46);
      }

      goto LABEL_71;
    }

LABEL_66:
    (*(*v47 + 96))(v54, v47);
    if (*(&retstr->__rep_.__l + 23) < 0)
    {
      operator delete(retstr->__rep_.__l.__data_);
    }

    *retstr->__rep_.__s.__data_ = *v54;
    *(&retstr->__rep_.__l + 2) = v55;
    goto LABEL_69;
  }

LABEL_71:
  result = v69;
  if (v69)
  {
    sub_100004A34(v69);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[0]);
  }

  return result;
}

- (void)checkBasebandAssertions
{
  ptr = self->fBasebandOnlineAssertion.__ptr_;
  [(TelephonyProviderDelegate *)self getCurrentCalls];
  v4 = *buf;
  v5 = v19;
  if (*buf == v19)
  {
LABEL_7:
    v16.__ptr_ = buf;
    sub_1000B2DB4(&v16);
    if (ptr)
    {
      v11 = *self->logger.__ptr_;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I BBAssertion: Releasing BasebandOnlineAssertion", buf, 2u);
      }

      cntrl = self->fBasebandOnlineAssertion.__cntrl_;
      self->fBasebandOnlineAssertion.__ptr_ = 0;
      self->fBasebandOnlineAssertion.__cntrl_ = 0;
      if (cntrl)
      {
LABEL_19:
        sub_100004A34(cntrl);
      }
    }
  }

  else
  {
    v6 = *buf;
    while (1)
    {
      v16.__ptr_ = v4;
      v16.__cntrl_ = "kCallStatus";
      sub_100006354(&v16, object);
      v8 = xpc::dyn_cast_or_default(object, 0, v7);
      xpc_release(object[0]);
      if (v8 != 6)
      {
        v16.__ptr_ = v4;
        v16.__cntrl_ = "kCallSubType";
        sub_100006354(&v16, object);
        v10 = xpc::dyn_cast_or_default(object, 1, v9);
        xpc_release(object[0]);
        if (v10 <= 0x10u && ((1 << v10) & 0x10112) != 0)
        {
          break;
        }
      }

      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    v16.__ptr_ = buf;
    sub_1000B2DB4(&v16);
    if (!ptr)
    {
      v13 = *self->logger.__ptr_;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I BBAssertion: Acquiring BasebandOnlineAssertion", buf, 2u);
      }

      sub_10000501C(buf, "/cc/assertions/baseband_online");
      ctu::rest::AssertionHandle::create();
      if (v20 < 0)
      {
        operator delete(*buf);
      }

      v14 = v16;
      v16 = 0;
      v15 = self->fBasebandOnlineAssertion.__cntrl_;
      self->fBasebandOnlineAssertion = v14;
      if (v15)
      {
        sub_100004A34(v15);
        cntrl = v16.__cntrl_;
        if (v16.__cntrl_)
        {
          goto LABEL_19;
        }
      }
    }
  }
}

- (void)checkAVCBBTapAndSendCallUpdate_sync:()vector<std:()xpc:()std:(xpc::dict>>> *)std :allocator<std::pair<xpc::dict :dict> :pair<xpc::dict
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  var0 = std->var0;
  stdCopy = std;
  var1 = std->var1;
  if (std->var0 == var1)
  {
LABEL_47:
    [(TelephonyProviderDelegate *)self isAVCBBTapRegistered];
    if ([(TelephonyProviderDelegate *)self isAVCBBTapRegistered])
    {
      v50 = [(TelephonyProviderDelegate *)self registerForAVCBBTap_sync:0];
    }

    return;
  }

  while (1)
  {
    *buf = var0;
    *&buf[8] = "kCallStatus";
    sub_100006354(buf, &object);
    v6 = xpc::dyn_cast_or_default(&object, 0, v5);
    xpc_release(object);
    *buf = var0 + 8;
    *&buf[8] = "kCallStatus";
    sub_100006354(buf, &object);
    v8 = xpc::dyn_cast_or_default(&object, 0, v7);
    xpc_release(object);
    *buf = var0;
    *&buf[8] = "kCallSourceMode";
    sub_100006354(buf, &object);
    v68 = xpc::dyn_cast_or_default(&object, 0, v9);
    xpc_release(object);
    *buf = var0 + 8;
    *&buf[8] = "kCallSourceMode";
    sub_100006354(buf, &object);
    v11 = xpc::dyn_cast_or_default(&object, 0, v10);
    xpc_release(object);
    v14 = (v68 & 0xFFFFFFFD) == 0 || v68 == 3;
    v65 = v11;
    v16 = (v11 & 0xFFFFFFFD) == 0 || v11 == 3;
    v66 = v16;
    v67 = v14;
    v17 = sd::IMSSubscriberConfigInterface::APOnlyModeDefaultVal(v12);
    ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
    v19 = ServiceMap;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(ServiceMap);
    *buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, buf);
    if (!v24)
    {
      v26 = 0;
LABEL_23:
      std::mutex::unlock(v19);
      v25 = 0;
      v27 = 1;
      if (!v26)
      {
        goto LABEL_25;
      }

LABEL_24:
      *buf = var0;
      *&buf[8] = "kCallSimSlot";
      sub_100006354(buf, &object);
      v29 = xpc::dyn_cast_or_default(&object, 1, v28);
      xpc_release(object);
      v17 = (*(*v26 + 288))(v26, v29);
      goto LABEL_25;
    }

    v26 = v24[3];
    v25 = v24[4];
    if (!v25)
    {
      goto LABEL_23;
    }

    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v19);
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v25);
    v27 = 0;
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_25:
    if ((v27 & 1) == 0)
    {
      sub_100004A34(v25);
    }

    *buf = var0;
    *&buf[8] = "kCallSubType";
    sub_100006354(buf, &object);
    v31 = xpc::dyn_cast_or_default(&object, 1, v30);
    xpc_release(object);
    *buf = var0 + 8;
    *&buf[8] = "kCallSubType";
    sub_100006354(buf, &object);
    v33 = xpc::dyn_cast_or_default(&object, 1, v32);
    xpc_release(object);
    v34 = v8;
    v35 = v8 == 0;
    shouldUseAPMediaStack = sd::IMSSubscriberConfigInterface::shouldUseAPMediaStack((v31 == 2), v17, v31 == 1, v36);
    v39 = sd::IMSSubscriberConfigInterface::shouldUseAPMediaStack((v33 == 2), v17, v33 == 1, v38);
    v40 = shouldUseAPMediaStack ^ 1;
    v41 = (v6 == 0 && v67) & (shouldUseAPMediaStack ^ 1);
    v42 = v66;
    if (v39)
    {
      v42 = 0;
    }

    if (!v35)
    {
      v42 = 0;
    }

    if (v42 != v41 && v41 != [(TelephonyProviderDelegate *)self isAVCBBTapRegistered])
    {
      v43 = *self->logger.__ptr_;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v44 = "reg";
        }

        else
        {
          v44 = "dereg";
        }

        v71[0] = var0;
        v71[1] = "kUuid";
        sub_100006354(v71, &v72);
        object = 0;
        v76 = 0;
        v77 = 0;
        xpc::dyn_cast_or_default();
        v63 = v44;
        if (SHIBYTE(v77) < 0)
        {
          operator delete(object);
        }

        v61 = v6 == 0;
        v62 = v34 == 0;
        if (v74 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        v46 = asString();
        v47 = asString();
        v48 = asString(v68 != 0);
        v49 = asString(v65 != 0);
        *buf = 136317954;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = v45;
        *&buf[22] = 1024;
        v79 = v61;
        v80 = 1024;
        v81 = v62;
        v82 = 2080;
        v83 = v46;
        v84 = 2080;
        v85 = v47;
        v86 = 1024;
        v87 = v40;
        v88 = 1024;
        v89 = v39 ^ 1;
        v90 = 2080;
        v91 = v48;
        v92 = 2080;
        v93 = v49;
        v94 = 1024;
        v95 = v67;
        v96 = 1024;
        v97 = v66;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I May %s AVCBBTap for call %s. isActive: %{BOOL}d (prev: %{BOOL}d), callSubType: %s (prev: %s), isUsingBBAud: %{BOOL}d (prev: %{BOOL}d), callSource: %s (prev: %s), callSourceNeedReg: %{BOOL}d (prev: %{BOOL}d)", buf, 0x62u);
        if (v74 < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v72);
      }
    }

    if (v41)
    {
      break;
    }

    var0 += 16;
    if (var0 == var1)
    {
      goto LABEL_47;
    }
  }

  if ([(TelephonyProviderDelegate *)self isAVCBBTapRegistered])
  {
    [(TelephonyProviderDelegate *)self isAVCBBTapRegistered];
  }

  else
  {
    v69 = [(TelephonyProviderDelegate *)self registerForAVCBBTap_sync:1];
    if (v69)
    {
      v51 = objc_opt_new();
      [v51 setCallTokens:v69];
      v52 = stdCopy->var0;
      v53 = stdCopy->var1;
      if (stdCopy->var0 != v53)
      {
        v54 = stdCopy->var0;
        do
        {
          object = 0;
          v76 = 0;
          v77 = 0;
          __p[0] = v52;
          __p[1] = "kUuid";
          sub_100006354(__p, v71);
          memset(buf, 0, sizeof(buf));
          xpc::dyn_cast_or_default();
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          xpc_release(v71[0]);
          if (v77 >= 0)
          {
            p_object = &object;
          }

          else
          {
            p_object = object;
          }

          v56 = [NSString stringWithUTF8String:p_object];
          v57 = [[NSUUID alloc] initWithUUIDString:v56];
          v58 = *self->logger.__ptr_;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v57;
            *&buf[12] = 2112;
            *&buf[14] = v69;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ audio stream tokens from AVCBBTap: %@", buf, 0x16u);
          }

          provider = [(TelephonyProviderDelegate *)self provider];
          [provider reportCallWithUUID:v57 updated:v51];

          if (SHIBYTE(v77) < 0)
          {
            operator delete(object);
          }

          v54 += 16;
          v52 += 16;
        }

        while (v54 != v53);
      }
    }
  }
}

- (id)registerForAVCBBTap_sync:(BOOL)tap_sync
{
  tap_syncCopy = tap_sync;
  if (!_os_feature_enabled_impl())
  {
LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v5 = qword_101FBA058;
  if (!qword_101FBA058)
  {
    v5 = sub_1002CACD0();
    qword_101FBA058 = v5;
    if (!v5)
    {
      if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
      {
        sub_1017634F4();
      }

      goto LABEL_26;
    }
  }

  v6 = *self->logger.__ptr_;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!tap_syncCopy)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I <-----ToAVC DeRegistering AVCBBTap", buf, 2u);
      v5 = qword_101FBA058;
    }

    v17 = 0;
    v13 = [v5 unregisterFromTapWithError:&v17];
    v14 = v17;
    v15 = v14;
    if (!v13 || v14)
    {
      if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
      {
        sub_101763424();
      }
    }

    else
    {
      [(TelephonyProviderDelegate *)self setIsAVCBBTapRegistered:0];
    }

    goto LABEL_26;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I <-----ToAVC Registering AVCBBTap", buf, 2u);
    v5 = qword_101FBA058;
  }

  v18 = 0;
  v8 = [v5 registerForTapWithError:&v18];
  v9 = v18;
  didSucceed = [v8 didSucceed];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = didSucceed;
  }

  if (v11 == 1)
  {
    [(TelephonyProviderDelegate *)self setIsAVCBBTapRegistered:1];
    v12 = objc_opt_new();
    [v12 setCombinedAudioStreamToken:{objc_msgSend(v8, "tapToken")}];
    [v12 setUplinkStreamToken:{objc_msgSend(v8, "uplinkToken")}];
    [v12 setDownlinkStreamToken:{objc_msgSend(v8, "downlinkToken")}];
  }

  else
  {
    if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10176348C();
    }

    v12 = 0;
  }

LABEL_27:

  return v12;
}

- (BOOL)provider:(id)provider executeTransaction:(id)transaction
{
  providerCopy = provider;
  transactionCopy = transaction;
  selfCopy = self;
  v7 = *self->logger.__ptr_;
  v83 = transactionCopy;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    actions = [transactionCopy actions];
    *buf = 134218242;
    *&buf[4] = [actions count];
    *&buf[12] = 2112;
    *&buf[14] = transactionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> executeTransaction (size %lu): %@", buf, 0x16u);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  actions2 = [transactionCopy actions];
  v10 = [actions2 countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (!v10)
  {

    goto LABEL_56;
  }

  v11 = 0;
  v12 = *v114;
LABEL_5:
  v13 = 0;
  while (1)
  {
    if (*v114 != v12)
    {
      objc_enumerationMutation(actions2);
    }

    v14 = *(*(&v113 + 1) + 8 * v13);
    if ([v14 isComplete])
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v11 = 1;
LABEL_11:
    if (v10 == ++v13)
    {
      v10 = [actions2 countByEnumeratingWithState:&v113 objects:v125 count:16];
      if (!v10)
      {

        if (v11)
        {
          v110 = 0;
          v111 = 0;
          v112 = 0;
          goto LABEL_95;
        }

LABEL_56:
        v42 = *selfCopy->logger.__ptr_;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I <---To-CSD--- executeTransaction YES: all actions already completed", buf, 2u);
        }

        v43 = 1;
        goto LABEL_145;
      }

      goto LABEL_5;
    }
  }

  callUUIDToGroupWith = [v14 callUUIDToGroupWith];
  v16 = callUUIDToGroupWith == 0;

  v110 = 0;
  v111 = 0;
  v112 = 0;
  if (!v16)
  {
    memset(buf, 0, sizeof(buf));
    [(TelephonyProviderDelegate *)selfCopy getCurrentCalls];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    actions3 = [v83 actions];
    v18 = [actions3 countByEnumeratingWithState:&v96 objects:v122 count:16];
    if (!v18)
    {
      goto LABEL_53;
    }

    v19 = *v97;
    while (1)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v97 != v19)
        {
          objc_enumerationMutation(actions3);
        }

        v21 = *(*(&v96 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
          __p[1] = 0;
          __p[0] = 0;
          v119[0] = 0;
          callUUID = [v22 callUUID];
          sub_1000B2CAC(callUUID, __p);

          memset(v127, 0, sizeof(v127));
          callUUIDToGroupWith2 = [v22 callUUIDToGroupWith];
          sub_1000B2CAC(callUUIDToGroupWith2, v127);

          memset(v95, 0, sizeof(v95));
          sub_1000B2D2C(v95, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
          if (sub_100B2EDF0(v95, __p))
          {
            memset(v94, 0, sizeof(v94));
            sub_1000B2D2C(v94, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
            v25 = sub_100B2EDF0(v94, v127);
            *v121 = v94;
            sub_1000B2DB4(v121);
            *v121 = v95;
            sub_1000B2DB4(v121);
            if (v25)
            {
              v26 = *selfCopy->logger.__ptr_;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = objc_opt_class();
                v28 = NSStringFromClass(v27);
                v29 = v28;
                uTF8String = [v28 UTF8String];
                uUID = [v22 UUID];
                *v121 = 136315394;
                *&v121[4] = uTF8String;
                *&v121[12] = 2112;
                *&v121[14] = uUID;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling the %s %@: call already merged", v121, 0x16u);
              }

              [v22 fulfill];
LABEL_46:
              if (v127[23] < 0)
              {
                operator delete(*v127);
              }

              if (SHIBYTE(v119[0]) < 0)
              {
                operator delete(__p[0]);
              }

              continue;
            }
          }

          else
          {
            *v121 = v95;
            sub_1000B2DB4(v121);
          }

          v117 = 0;
          v39 = xpc_dictionary_create(0, 0, 0);
          v40 = v39;
          if (v39)
          {
            v117 = v39;
            goto LABEL_38;
          }

          v40 = xpc_null_create();
          v117 = v40;
          if (v40)
          {
LABEL_38:
            if (xpc_get_type(v40) != &_xpc_type_dictionary)
            {
              v41 = xpc_null_create();
              goto LABEL_42;
            }

            xpc_retain(v40);
          }

          else
          {
            v41 = xpc_null_create();
            v40 = 0;
LABEL_42:
            v117 = v41;
          }

          xpc_release(v40);
          [v22 asDictionary:&v117];
          v92 = xpc_int64_create(4);
          if (!v92)
          {
            v92 = xpc_null_create();
          }

          *v121 = &v117;
          *&v121[8] = "kActionType";
          sub_10000F688(v121, &v92, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v92);
          v92 = 0;
          sub_1000B3278(&v110, &v117);
          xpc_release(v117);
          goto LABEL_46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          __p[1] = 0;
          __p[0] = 0;
          v119[0] = 0;
          callUUID2 = [v21 callUUID];
          sub_1000B2CAC(callUUID2, __p);

          memset(v91, 0, sizeof(v91));
          sub_1000B2D2C(v91, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
          LODWORD(callUUID2) = sub_100B2EDF0(v91, __p);
          *v127 = v91;
          sub_1000B2DB4(v127);
          if (callUUID2)
          {
            v33 = *selfCopy->logger.__ptr_;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = v35;
              uTF8String2 = [v35 UTF8String];
              uUID2 = [v21 UUID];
              *v127 = 136315394;
              *&v127[4] = uTF8String2;
              *&v127[12] = 2112;
              *&v127[14] = uUID2;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling the %s %@: call already merged", v127, 0x16u);
            }

            [v21 fulfill];
          }

          if (SHIBYTE(v119[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v18 = [actions3 countByEnumeratingWithState:&v96 objects:v122 count:16];
      if (!v18)
      {
LABEL_53:

        if (v110 == v111)
        {
          v64 = *selfCopy->logger.__ptr_;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- executeTransaction YES: All calls already merged for merge transaction", __p, 2u);
          }

          __p[0] = buf;
          sub_1000B2DB4(__p);
          goto LABEL_105;
        }

        __p[0] = buf;
        sub_1000B2DB4(__p);
        goto LABEL_95;
      }
    }
  }

  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  actions4 = [v83 actions];
  v45 = [actions4 countByEnumeratingWithState:&v106 objects:v124 count:16];
  if (v45)
  {
    v46 = *v107;
    do
    {
      for (j = 0; j != v45; j = j + 1)
      {
        if (*v107 != v46)
        {
          objc_enumerationMutation(actions4);
        }

        v48 = *(*(&v106 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          callUUID3 = [v48 callUUID];
          sub_1000B2CAC(callUUID3, __p);
          sub_10017695C(buf, __p);
          if (SHIBYTE(v119[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v45 = [actions4 countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v45);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  actions5 = [v83 actions];
  v51 = [actions5 countByEnumeratingWithState:&v102 objects:v123 count:16];
  if (!v51)
  {
    goto LABEL_93;
  }

  v52 = *v103;
  do
  {
    for (k = 0; k != v51; k = k + 1)
    {
      if (*v103 != v52)
      {
        objc_enumerationMutation(actions5);
      }

      v54 = *(*(&v102 + 1) + 8 * k);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
        callUUID4 = [v55 callUUID];
        sub_1000B2CAC(callUUID4, __p);
        v57 = sub_10016FA58(buf, __p);
        if (SHIBYTE(v119[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v57)
        {
          *v127 = 0;
          v58 = xpc_dictionary_create(0, 0, 0);
          v59 = v58;
          if (v58)
          {
            *v127 = v58;
            goto LABEL_82;
          }

          v59 = xpc_null_create();
          *v127 = v59;
          if (v59)
          {
LABEL_82:
            if (xpc_get_type(v59) != &_xpc_type_dictionary)
            {
              v60 = xpc_null_create();
              goto LABEL_86;
            }

            xpc_retain(v59);
          }

          else
          {
            v60 = xpc_null_create();
            v59 = 0;
LABEL_86:
            *v127 = v60;
          }

          xpc_release(v59);
          [v55 asDictionary:v127];
          v100 = xpc_int64_create(4);
          if (!v100)
          {
            v100 = xpc_null_create();
          }

          __p[0] = v127;
          __p[1] = "kActionType";
          sub_10000F688(__p, &v100, &v101);
          xpc_release(v101);
          v101 = 0;
          xpc_release(v100);
          v100 = 0;
          sub_1000B3278(&v110, v127);
          xpc_release(*v127);
        }

        continue;
      }
    }

    v51 = [actions5 countByEnumeratingWithState:&v102 objects:v123 count:16];
  }

  while (v51);
LABEL_93:

  v61 = v111 - v110;
  if (v111 - v110 != 8)
  {
    v65 = *selfCopy->logger.__ptr_;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = (v61 >> 3);
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- executeTransaction NO: unexpected number of actions for unmerge: %lu. Expecting 1", __p, 0xCu);
    }

    sub_100009970(buf, *&buf[8]);
    v43 = 0;
    goto LABEL_144;
  }

  sub_100009970(buf, *&buf[8]);
LABEL_95:
  if ([(TelephonyProviderDelegate *)selfCopy possiblyFulfillUnexpectedMOStartCallWithProvider:v82 transactions:v83])
  {
    v62 = *selfCopy->logger.__ptr_;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v63 = "#N <---To-CSD--- executeTransaction YES: Unexpected MO Start Call found";
      goto LABEL_101;
    }

    goto LABEL_105;
  }

  if ([(TelephonyProviderDelegate *)selfCopy possiblyFulfillUnexpectedHoldCallWithProvider:v82 transactions:v83])
  {
    v62 = *selfCopy->logger.__ptr_;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v63 = "#N <---To-CSD--- executeTransaction YES: Unexpected Hold Call found";
      goto LABEL_101;
    }

    goto LABEL_105;
  }

  v66 = v110;
  v67 = v111;
  if (v110 != v111)
  {
    goto LABEL_130;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  actions6 = [v83 actions];
  v69 = [actions6 countByEnumeratingWithState:&v87 objects:v120 count:16];
  if (!v69)
  {
    goto LABEL_129;
  }

  v70 = *v88;
  while (2)
  {
    v71 = 0;
    while (2)
    {
      if (*v88 != v70)
      {
        objc_enumerationMutation(actions6);
      }

      v72 = *(*(&v87 + 1) + 8 * v71);
      if (([v72 isComplete] & 1) == 0)
      {
        __p[0] = 0;
        v73 = xpc_dictionary_create(0, 0, 0);
        v74 = v73;
        if (v73)
        {
          __p[0] = v73;
          goto LABEL_119;
        }

        v74 = xpc_null_create();
        __p[0] = v74;
        if (v74)
        {
LABEL_119:
          if (xpc_get_type(v74) != &_xpc_type_dictionary)
          {
            v75 = xpc_null_create();
            goto LABEL_123;
          }

          xpc_retain(v74);
        }

        else
        {
          v75 = xpc_null_create();
          v74 = 0;
LABEL_123:
          __p[0] = v75;
        }

        xpc_release(v74);
        [v72 asDictionary:__p];
        v76 = sub_1000B2F10(v72);
        v85 = xpc_int64_create(v76);
        if (!v85)
        {
          v85 = xpc_null_create();
        }

        *buf = __p;
        *&buf[8] = "kActionType";
        sub_10000F688(buf, &v85, &v86);
        xpc_release(v86);
        v86 = 0;
        xpc_release(v85);
        v85 = 0;
        sub_1000B3278(&v110, __p);
        xpc_release(__p[0]);
      }

      if (v69 != ++v71)
      {
        continue;
      }

      break;
    }

    v69 = [actions6 countByEnumeratingWithState:&v87 objects:v120 count:16];
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_129:

  v66 = v110;
  v67 = v111;
  if (v110 != v111)
  {
LABEL_130:
    v77 = *selfCopy->logger.__ptr_;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = (v67 - v66) >> 3;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I executeTransaction: After translation (size: %lu):", buf, 0xCu);
      v66 = v110;
      v67 = v111;
    }

    for (; v66 != v67; v66 += 8)
    {
      *v127 = 0;
      *v127 = *v66;
      if (*v127)
      {
        xpc_retain(*v127);
      }

      else
      {
        *v127 = xpc_null_create();
      }

      v78 = *selfCopy->logger.__ptr_;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        xpc::object::to_string(buf, v127);
        if ((buf[23] & 0x80u) == 0)
        {
          v79 = buf;
        }

        else
        {
          v79 = *buf;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v79;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Translated action: %{public}s", __p, 0xCu);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      xpc_release(*v127);
    }

    *&v121[8] = 0;
    *v121 = 0;
    [(TelephonyProviderDelegate *)selfCopy getCurrentCalls];
    sub_1000B339C(buf);
  }

  v62 = *selfCopy->logger.__ptr_;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v63 = "#N <---To-CSD--- executeTransaction YES: no actions to take";
LABEL_101:
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, v63, buf, 2u);
  }

LABEL_105:
  v43 = 1;
LABEL_144:
  *buf = &v110;
  sub_1000B6428(buf);
LABEL_145:

  return v43;
}

- (void)provider:(id)provider performStartCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    isEmergency = [actionCopy isEmergency];
    localSenderIdentityUUID = [actionCopy localSenderIdentityUUID];
    sub_1000B2E50(localSenderIdentityUUID);
    *buf = 138412802;
    *&buf[4] = callUUID;
    *&buf[12] = 1024;
    *&buf[14] = isEmergency;
    *&buf[18] = 2080;
    *&buf[20] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performStartCallAction for call %@. emergency: %{BOOL}d. slot: %s", buf, 0x1Cu);
  }

  v26 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v26 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v26 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_11;
  }

  v14 = xpc_null_create();
LABEL_10:
  v26 = v14;
LABEL_11:
  xpc_release(v13);
  [actionCopy asDictionary:&v26];
  v32 = 0u;
  v33 = 0;
  *v31 = 0u;
  memset(buf, 0, sizeof(buf));
  v34 = 1;
  v35 = 0;
  v24 = &v26;
  v25 = "kPhoneNumber";
  sub_100006354(&v24, &object);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  *&buf[24] = *v28;
  *&buf[40] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  xpc_release(object);
  v36 = &v26;
  v37 = "kCallSourceMode";
  sub_100006354(&v36, v28);
  HIDWORD(v32) = xpc::dyn_cast_or_default(v28, 0, v15);
  xpc_release(v28[0]);
  v24 = &v26;
  v25 = "kUuid";
  sub_100006354(&v24, &object);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  *buf = *v28;
  *&buf[16] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  xpc_release(object);
  v36 = &v26;
  v37 = "kIsTTY";
  sub_100006354(&v36, v28);
  LODWORD(v33) = xpc::dyn_cast_or_default(v28, 0, v16);
  xpc_release(v28[0]);
  v36 = &v26;
  v37 = "kCallSimSlot";
  sub_100006354(&v36, v28);
  v18 = xpc::dyn_cast_or_default(v28, 0, v17);
  xpc_release(v28[0]);
  LODWORD(v34) = subscriber::instanceAsSimSlot(v18, v19);
  v36 = &v26;
  v37 = "kIsEmergencyCall";
  sub_100006354(&v36, v28);
  BYTE4(v34) = xpc::dyn_cast_or_default(v28, 0, v20);
  xpc_release(v28[0]);
  v21 = actionCopy;
  selfCopy = self;
  v24 = 0;
  write_rest_value();
  sub_10000501C(v28, "/cc/requests/dial");
  object = v24;
  v24 = xpc_null_create();
  v23 = selfCopy;
  v36 = off_101E2EAE0;
  v37 = v21;
  v38 = v23;
  v39 = &v36;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&v36);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  xpc_release(v24);

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v26);
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v6 = *self->logger.__ptr_;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    *buf = 138412290;
    *&buf[4] = callUUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performAnswerCallAction for call %@", buf, 0xCu);
  }

  memset(v14, 0, sizeof(v14));
  [(TelephonyProviderDelegate *)self getCurrentCalls];
  *v20 = 0u;
  v21 = 0u;
  *buf = 0u;
  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, &v22);
  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(*buf);
  }

  *buf = v22;
  v20[0] = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22) = 0;

  v9 = actionCopy;
  selfCopy = self;
  v18 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/answer");
  object = v18;
  v18 = xpc_null_create();
  v11 = selfCopy;
  *&v22 = off_101E2EB60;
  *(&v22 + 1) = v9;
  v23 = v11;
  v24 = &v22;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&v22);
  xpc_release(object);
  object = 0;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(*buf);
  }

  *buf = v14;
  sub_1000B2DB4(buf);
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    *buf = 138412290;
    *&buf[4] = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performEndCallAction for call %@", buf, 0xCu);
  }

  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, buf);
  v14 = *buf;
  v15 = HIBYTE(v21);
  HIBYTE(v21) = 0;
  buf[0] = 0;

  v11 = actionCopy;
  selfCopy = self;
  v19 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/end_this_call");
  object = v19;
  v19 = xpc_null_create();
  v13 = selfCopy;
  *buf = off_101E2EBE0;
  *&buf[8] = v11;
  v21 = v13;
  v22 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isOnHold = [actionCopy isOnHold];
    callUUID = [actionCopy callUUID];
    v11 = callUUID;
    v12 = "unhold";
    if (isOnHold)
    {
      v12 = "hold";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetHeldCallAction %s call %@", buf, 0x16u);
  }

  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, buf);
  v17 = *buf;
  v18 = buf[23];
  buf[23] = 0;
  buf[0] = 0;

  [actionCopy isOnHold];
  v14 = actionCopy;
  selfCopy = self;
  v22 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/hold_call");
  object = v22;
  v22 = xpc_null_create();
  v16 = selfCopy;
  *buf = off_101E2EC60;
  *&buf[8] = v14;
  *&buf[16] = v16;
  v24 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);

  if (v18 < 0)
  {
    operator delete(v17);
  }
}

- (void)provider:(id)provider performSetGroupCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  callUUIDToGroupWith = [actionCopy callUUIDToGroupWith];

  v9 = *self->logger.__ptr_;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (callUUIDToGroupWith)
  {
    if (v10)
    {
      callUUID = [actionCopy callUUID];
      callUUIDToGroupWith2 = [actionCopy callUUIDToGroupWith];
      *buf = 138412546;
      *&buf[4] = callUUID;
      *&buf[12] = 2112;
      *&buf[14] = callUUIDToGroupWith2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetGroupCallAction merge call %@ and %@", buf, 0x16u);
    }
  }

  else if (v10)
  {
    callUUID2 = [actionCopy callUUID];
    *buf = 138412290;
    *&buf[4] = callUUID2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetGroupCallAction unmerge call %@", buf, 0xCu);
  }

  memset(buf, 0, 48);
  callUUID3 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID3, &v24);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  *buf = v24;
  *&buf[16] = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;

  callUUIDToGroupWith3 = [actionCopy callUUIDToGroupWith];
  sub_1000B2CAC(callUUIDToGroupWith3, &v24);
  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  *&buf[24] = v24;
  *&buf[40] = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;

  v16 = actionCopy;
  selfCopy = self;
  v22 = 0;
  write_rest_value();
  sub_10000501C(&v20, "/cc/requests/merge");
  object = v22;
  v22 = xpc_null_create();
  v18 = selfCopy;
  *&v24 = off_101E2ECE0;
  *(&v24 + 1) = v16;
  v25 = v18;
  v26 = &v24;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&v24);
  xpc_release(object);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  xpc_release(v22);

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }
}

- (void)provider:(id)provider performPlayDTMFCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    *buf = 138412290;
    *&buf[4] = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performPlayDTMFCallAction for call %@", buf, 0xCu);
  }

  v23 = 0;
  *v21 = 0u;
  v22 = 0u;
  *buf = 0u;
  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, &v24);
  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(*buf);
  }

  *buf = v24;
  v21[0] = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;

  digits = [actionCopy digits];
  ctu::cf::assign();

  type = [actionCopy type];
  LOBYTE(v23) = type == 2;
  BYTE1(v23) = type == 3;
  v13 = actionCopy;
  selfCopy = self;
  v19 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/SendDTMF");
  object = v19;
  v19 = xpc_null_create();
  v15 = selfCopy;
  *&v24 = off_101E2ED60;
  *(&v24 + 1) = v13;
  v25 = v15;
  v26 = &v24;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&v24);
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(*buf);
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isRelaying = [actionCopy isRelaying];
    callUUID = [actionCopy callUUID];
    v11 = callUUID;
    v12 = "unset";
    if (isRelaying)
    {
      v12 = "set";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetRelayingCallAction %s relay for call %@", buf, 0x16u);
  }

  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, buf);
  v17 = *buf;
  v18 = buf[23];
  buf[23] = 0;
  buf[0] = 0;

  [actionCopy isRelaying];
  v14 = actionCopy;
  selfCopy = self;
  v22 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/SetRelaying");
  object = v22;
  v22 = xpc_null_create();
  v16 = selfCopy;
  *buf = off_101E2EDE0;
  *&buf[8] = v14;
  *&buf[16] = v16;
  v24 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);

  if (v18 < 0)
  {
    operator delete(v17);
  }
}

- (void)provider:(id)provider performSetScreeningCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([actionCopy isScreening])
    {
      v9 = "set";
    }

    else
    {
      v9 = "unset";
    }

    screeningMode = [actionCopy screeningMode];
    if (screeningMode > 3)
    {
      std::to_string(&__p, screeningMode);
    }

    else
    {
      sub_10000501C(&__p, off_101E2F2D0[screeningMode]);
    }

    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v12 = __p.__r_.__value_.__r.__words[0];
    callUUID = [actionCopy callUUID];
    v14 = callUUID;
    p_p = &__p;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    if (v11 < 0)
    {
      p_p = v12;
    }

    *(buf.__r_.__value_.__r.__words + 4) = v9;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
    p_buf = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetScreeningCallAction %s screening (mode: %s) for call %@", &buf, 0x20u);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, &buf);
  __p = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;

  isScreening = [actionCopy isScreening];
  v22 = [actionCopy screeningMode] == 3;
  v17 = actionCopy;
  selfCopy = self;
  v26 = 0;
  write_rest_value();
  sub_10000501C(&v24, "/cc/requests/SetScreening");
  object = v26;
  v26 = xpc_null_create();
  v19 = selfCopy;
  buf.__r_.__value_.__r.__words[0] = off_101E2EE60;
  buf.__r_.__value_.__l.__size_ = v17;
  buf.__r_.__value_.__r.__words[2] = v19;
  p_buf = &buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&buf);
  xpc_release(object);
  object = 0;
  if (v25 < 0)
  {
    operator delete(v24);
  }

  xpc_release(v26);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)provider:(id)provider performPullCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v7 = *self->logger.__ptr_;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    *buf = 138412290;
    *&buf[4] = callUUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performPullCallAction for call %@", buf, 0xCu);
  }

  handoffContext = [actionCopy handoffContext];
  handoffContext2 = [actionCopy handoffContext];
  context = [handoffContext2 context];

  remoteHandle = [handoffContext remoteHandle];
  value = [remoteHandle value];

  v63[0] = 0;
  v63[1] = 0;
  v64 = 0;
  ctu::cf::assign();
  v13 = [NSString stringWithUTF8String:"kCTCallCallerName"];
  [context objectForKeyedSubscript:v13];
  v61[0] = 0;
  v61[1] = 0;
  v42 = v62 = 0;
  ctu::cf::assign();
  isOutgoing = [handoffContext isOutgoing];
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, v59);

  v16 = [NSString stringWithUTF8String:"kCTCallStartTime"];

  v17 = [context objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    integerValue = [v17 integerValue];
    Current = CFAbsoluteTimeGetCurrent();
    __p[0] = 0;
    __p[1] = 0;
    v58 = 0;
    handoffIdentifier = [handoffContext handoffIdentifier];
    ctu::cf::assign();

    if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_101763530();
    }

    v56 = 0;
    v22 = xpc_dictionary_create(0, 0, 0);
    v23 = v22;
    if (v22)
    {
      v56 = v22;
    }

    else
    {
      v23 = xpc_null_create();
      v56 = v23;
      if (!v23)
      {
        v25 = xpc_null_create();
        v23 = 0;
        goto LABEL_16;
      }
    }

    if (xpc_get_type(v23) == &_xpc_type_dictionary)
    {
      xpc_retain(v23);
LABEL_17:
      xpc_release(v23);
      if (v64 >= 0)
      {
        v26 = v63;
      }

      else
      {
        v26 = v63[0];
      }

      v54 = xpc_string_create(v26);
      if (!v54)
      {
        v54 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kPhoneNumber";
      sub_10000F688(buf, &v54, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v54);
      v54 = 0;
      if (v58 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v52 = xpc_string_create(v27);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kThumperAccountId";
      sub_10000F688(buf, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      if (v62 >= 0)
      {
        v28 = v61;
      }

      else
      {
        v28 = v61[0];
      }

      v50 = xpc_string_create(v28);
      if (!v50)
      {
        v50 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kCallName";
      sub_10000F688(buf, &v50, &v51);
      xpc_release(v51);
      v51 = 0;
      xpc_release(v50);
      v50 = 0;
      v48 = xpc_int64_create(llround(Current - integerValue));
      if (!v48)
      {
        v48 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kCallDuration";
      sub_10000F688(buf, &v48, &v49);
      xpc_release(v49);
      v49 = 0;
      xpc_release(v48);
      v48 = 0;
      v46 = xpc_BOOL_create(isOutgoing);
      if (!v46)
      {
        v46 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kCallDirectionMobileOriginated";
      sub_10000F688(buf, &v46, &v47);
      xpc_release(v47);
      v47 = 0;
      xpc_release(v46);
      v46 = 0;
      if (v60 >= 0)
      {
        v29 = v59;
      }

      else
      {
        v29 = v59[0];
      }

      v44 = xpc_string_create(v29);
      if (!v44)
      {
        v44 = xpc_null_create();
      }

      *buf = &v56;
      *&buf[8] = "kUuid";
      sub_10000F688(buf, &v44, &v45);
      xpc_release(v45);
      v45 = 0;
      xpc_release(v44);
      v44 = 0;
      v30 = actionCopy;
      selfCopy = self;
      v32 = v56;
      if (v56)
      {
        xpc_retain(v56);
      }

      else
      {
        v32 = xpc_null_create();
      }

      sub_10000501C(&v66, "/cc/requests/PullCall");
      v65 = v32;
      v33 = xpc_null_create();
      v34 = selfCopy;
      *buf = off_101E2EEE0;
      *&buf[8] = v30;
      *&buf[16] = v34;
      v69 = buf;
      ctu::RestModule::sendRequest();
      sub_1000062D4(buf);
      xpc_release(v65);
      v65 = 0;
      if (v67 < 0)
      {
        operator delete(v66);
      }

      xpc_release(v33);

      xpc_release(v56);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_48;
    }

    v25 = xpc_null_create();
LABEL_16:
    v56 = v25;
    goto LABEL_17;
  }

  v24 = *self->logger.__ptr_;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = v36;
    uTF8String = [v36 UTF8String];
    uUID = [actionCopy UUID];
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2112;
    *&buf[14] = uUID;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@: no start time", buf, 0x16u);
  }

  [actionCopy fail];
LABEL_48:

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isMuted = [actionCopy isMuted];
    callUUID = [actionCopy callUUID];
    v11 = callUUID;
    v12 = "un";
    if (isMuted)
    {
      v12 = "";
    }

    *v31 = 136315394;
    *&v31[4] = v12;
    v32 = 2112;
    v33 = callUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetMutedCallAction %smute call %@", v31, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v14 = ServiceMap;
  if (v15 < 0)
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
  *v31 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, v31);
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
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_14:
  v23 = *self->logger.__ptr_;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    isMuted2 = [actionCopy isMuted];
    *v31 = 67109120;
    *&v31[4] = isMuted2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Setting muted to %d", v31, 8u);
  }

  (*(*v21 + 40))(v21, [actionCopy isMuted]);
LABEL_17:
  v25 = *self->logger.__ptr_;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = v27;
    uTF8String = [v27 UTF8String];
    uUID = [actionCopy UUID];
    *v31 = 136315394;
    *&v31[4] = uTF8String;
    v32 = 2112;
    v33 = uUID;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling the %s %@", v31, 0x16u);
  }

  [actionCopy fulfill];
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

- (void)provider:(id)provider performSendMMIOrUSSDCodeAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSendMMIOrUSSDCodeAction %@", buf, 0xCu);
  }

  v18 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v18 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v10) == &_xpc_type_dictionary)
  {
    xpc_retain(v10);
    goto LABEL_11;
  }

  v11 = xpc_null_create();
LABEL_10:
  v18 = v11;
LABEL_11:
  xpc_release(v10);
  [actionCopy asDictionary:&v18];
  v25 = 0u;
  v26 = 0;
  *v24 = 0u;
  *buf = 0u;
  memset(__p, 0, sizeof(__p));
  v27 = 1;
  v28 = 0;
  v17[0] = &v18;
  v17[1] = "kPhoneNumber";
  sub_100006354(v17, &object);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  xpc_release(object);
  BYTE4(v26) = 1;
  v29 = &v18;
  v30 = "kIsTTY";
  sub_100006354(&v29, v20);
  LODWORD(v26) = xpc::dyn_cast_or_default(v20, 0, v12);
  xpc_release(v20[0]);
  senderIdentityUUID = [actionCopy senderIdentityUUID];
  LODWORD(v27) = sub_1000B2E50(senderIdentityUUID);
  v14 = actionCopy;
  selfCopy = self;
  v17[0] = 0;
  write_rest_value();
  sub_10000501C(v20, "/cc/requests/dial");
  object = v17[0];
  v17[0] = xpc_null_create();
  v16 = selfCopy;
  v29 = off_101E2EF60;
  v30 = v14;
  v31 = v16;
  v32 = &v29;
  ctu::RestModule::sendRequest();
  sub_1000062D4(&v29);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  xpc_release(v17[0]);

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v18);
}

- (void)provider:(id)provider performSetTTYTypeCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  v8 = sub_1000B2E38([actionCopy ttyType]);
  v9 = *self->logger.__ptr_;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [actionCopy callUUID];
    *buf = 138412546;
    *&buf[4] = callUUID;
    *&buf[12] = 2080;
    *&buf[14] = asString(v8 != 0);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> performSetTTYTypeCallAction for call %@: %s", buf, 0x16u);
  }

  callUUID2 = [actionCopy callUUID];
  sub_1000B2CAC(callUUID2, buf);
  v14 = *buf;
  v15 = v21;
  v21 = 0;
  buf[0] = 0;

  selfCopy = self;
  v19 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/update_call_to_tty");
  object = v19;
  v19 = xpc_null_create();
  v13 = selfCopy;
  *buf = off_101E2EFE0;
  *&buf[8] = v13;
  v22 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

- (void)provider:(id)provider didActivateAudioSession:(id)session
{
  providerCopy = provider;
  sessionCopy = session;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> didActivateAudioSession. Sending media ready", buf, 2u);
  }

  selfCopy = self;
  v10 = xpc_BOOL_create(1);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/requests/start_media");
  object = v10;
  v11 = xpc_null_create();
  v12 = selfCopy;
  *buf = off_101E2F060;
  v17 = v12;
  v18 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v11);
}

- (void)provider:(id)provider didDeactivateAudioSession:(id)session
{
  providerCopy = provider;
  sessionCopy = session;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> didDeactivateAudioSession. Sending media unready", buf, 2u);
  }

  selfCopy = self;
  v10 = xpc_BOOL_create(1);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/requests/stop_media");
  object = v10;
  v11 = xpc_null_create();
  v12 = selfCopy;
  *buf = off_101E2F0E0;
  v17 = v12;
  v18 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v11);
}

- (void)provider:(id)provider timedOutPerformingAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10176356C();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = actionCopy;
    v9 = *self->logger.__ptr_;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = v11;
      uTF8String = [v11 UTF8String];
      uUID = [v8 UUID];
      callUUID = [v8 callUUID];
      *buf = 136315650;
      *&buf[4] = uTF8String;
      *&buf[12] = 2112;
      *&buf[14] = uUID;
      v27 = 2112;
      v28 = callUUID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s %@ timed out. ForceEnd call %@", buf, 0x20u);
    }

    callUUID2 = [v8 callUUID];
    sub_1000B2CAC(callUUID2, buf);
    v20 = *buf;
    v21 = HIBYTE(v27);
    HIBYTE(v27) = 0;
    buf[0] = 0;

    selfCopy = self;
    v25 = 0;
    write_rest_value();
    sub_10000501C(&__p, "/cc/requests/force_end_call");
    object = v25;
    v25 = xpc_null_create();
    v18 = selfCopy;
    *buf = off_101E2F160;
    *&buf[8] = v18;
    v28 = buf;
    ctu::RestModule::sendRequest();
    sub_1000062D4(buf);
    xpc_release(object);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    xpc_release(v25);

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  else
  {
    v19 = *self->logger.__ptr_;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I timedOutPerformingAction ignored: not CXStartCallAction or CXEndCallAction", buf, 2u);
    }
  }
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> providerDidReset likely due to CSD crash. Force ending all calls", buf, 2u);
  }

  selfCopy = self;
  v11 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/requests/force_end_call");
  object = v11;
  v11 = xpc_null_create();
  v7 = selfCopy;
  *buf = off_101E2F1E0;
  v13 = v7;
  v14 = buf;
  ctu::RestModule::sendRequest();
  sub_1000062D4(buf);
  xpc_release(object);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v11);
}

- (void)handleSimSubscriptionInfoChanged:(id)changed
{
  changedCopy = changed;
  v146[0] = 0;
  v145 = 0;
  v146[1] = 0;
  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
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
  v133[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v133);
  selfCopy = self;
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
  (*(*v12 + 336))(&v145, v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  begin_node = self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__begin_node_;
  p_end_node = &self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__end_node_;
  if (begin_node != &self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__end_node_)
  {
    v105 = &self->fLastKnownHomePlmn.fValue.__tree_.__end_node_;
    v100 = kCarriersLocalizationTable;
    do
    {
      *v143 = 0u;
      v144 = 0u;
      *v141 = 0u;
      v142 = 0u;
      *v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      *v138 = 0u;
      *v136 = 0u;
      *v134 = 0u;
      memset(v135, 0, sizeof(v135));
      memset(v133, 0, sizeof(v133));
      LODWORD(v133[0]) = begin_node[5].__left_;
      sub_100DFECD0(&v133[1], &begin_node[6]);
      if (SHIBYTE(begin_node[27].__left_) < 0)
      {
        sub_100005F2C(v141, begin_node[25].__left_, begin_node[26].__left_);
      }

      else
      {
        *v141 = *&begin_node[25].__left_;
        *&v142 = begin_node[27];
      }

      left = begin_node[28].__left_;
      *(&v142 + 1) = left;
      if (SHIBYTE(begin_node[31].__left_) < 0)
      {
        sub_100005F2C(v143, begin_node[29].__left_, begin_node[30].__left_);
        LODWORD(v114) = HIDWORD(v142);
      }

      else
      {
        v114 = HIDWORD(left);
        *v143 = *&begin_node[29].__left_;
        *&v144 = begin_node[31];
      }

      DWORD2(v144) = begin_node[32].__left_;
      v16 = LODWORD(v133[0]);
      v17 = *self->logger.__ptr_;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = subscriber::asString();
        v19 = SHIBYTE(v135[3]);
        v20 = v135[1];
        v21 = SHIBYTE(v133[3]);
        v22 = v133[1];
        v23 = SHIBYTE(v137);
        v24 = v136[1];
        v25 = asString();
        v26 = &v136[1];
        if (v23 < 0)
        {
          v26 = v24;
        }

        v27 = &v133[1];
        if (v21 < 0)
        {
          v27 = v22;
        }

        v28 = BYTE7(v144);
        v29 = &v135[1];
        if (v19 < 0)
        {
          v29 = v20;
        }

        if (SBYTE7(v144) < 0)
        {
          v28 = v143[1];
        }

        v30 = v143;
        if (SBYTE7(v144) < 0)
        {
          v30 = v143[0];
        }

        v31 = v28 == 0;
        *buf = 136316930;
        v32 = "<invalid>";
        if (!v31)
        {
          v32 = v30;
        }

        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = v29;
        *&buf[22] = 2080;
        v153 = v27;
        v154 = 2080;
        v155 = v26;
        v156 = 2080;
        v157 = v25;
        v158 = 1024;
        v159 = BYTE8(v144);
        v160 = 1024;
        v161 = BYTE10(v144);
        v162 = 2080;
        v163 = v32;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SUBSCRIPTION INFO: SIM Slot %s; SIM Label ID: %s; SIM Label: %s; SIM Phone Number: %s; Is User Pref For Voice: %s; Sim Present: %d; SimHidden: %d; PersonalityID: %s", buf, 0x4Au);
        self = selfCopy;
      }

      v33 = HIBYTE(v135[3]);
      if (SHIBYTE(v135[3]) < 0)
      {
        v33 = v135[2];
      }

      if (!v33)
      {
        goto LABEL_190;
      }

      v34 = HIBYTE(v133[3]);
      if (SHIBYTE(v133[3]) < 0)
      {
        v34 = v133[2];
      }

      if (!v34 || BYTE8(v144) != 1 || (BYTE10(v144) & 1) != 0)
      {
        goto LABEL_190;
      }

      if (v137 >= 0)
      {
        v35 = &v136[1];
      }

      else
      {
        v35 = v136[1];
      }

      v106 = [NSString stringWithUTF8String:v35];
      if ([v106 length])
      {
        v107 = [[CXHandle alloc] initWithType:2 value:v106];
      }

      else
      {
        v107 = 0;
      }

      if (SHIBYTE(v133[3]) < 0)
      {
        sub_100005F2C(v131, v133[1], v133[2]);
      }

      else
      {
        *v131 = *&v133[1];
        v132 = v133[3];
      }

      if (SHIBYTE(v132) < 0)
      {
        sub_100005F2C(__p, v131[0], v131[1]);
      }

      else
      {
        *__p = *v131;
        *&v130 = v132;
      }

      v150 = 0;
      if (SBYTE7(v130) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v130;
      }

      v151 = 0;
      if (ctu::cf::convert_copy())
      {
        v36 = v150;
        v150 = v151;
        *&v148 = v36;
        sub_100005978(&v148);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v147 = v150;
      v150 = 0;
      sub_100005978(&v150);
      if (SBYTE7(v130) < 0)
      {
        operator delete(__p[0]);
      }

      v37 = v147;
      sub_100005978(&v147);
      if (SHIBYTE(v132) < 0)
      {
        operator delete(v131[0]);
      }

      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = &stru_101F6AFB8;
      }

      v108 = v38;
      v39 = v146[0];
      if (v146[0])
      {
        v40 = v146;
        do
        {
          if (*(v39 + 8) >= v16)
          {
            v40 = v39;
          }

          v39 = v39[*(v39 + 8) < v16];
        }

        while (v39);
        if (v40 == v146 || v16 < *(v40 + 8))
        {
          v41 = &stru_101F6AFB8;
        }

        else
        {
          v41 = v40[5];
        }
      }

      else
      {
        v41 = &stru_101F6AFB8;
      }

      v111 = v41;
      *__p = 0u;
      v130 = 0u;
      MCC::MCC(__p);
      v42 = v105->__left_;
      if (!v105->__left_)
      {
        goto LABEL_84;
      }

      v43 = v105;
      do
      {
        if (SLODWORD(v42[4].__left_) >= v16)
        {
          v43 = v42;
        }

        v42 = v42[SLODWORD(v42[4].__left_) < v16].__left_;
      }

      while (v42);
      if (v43 != v105 && v16 >= SLODWORD(v43[4].__left_))
      {
        MCC::MCC();
        MCC::operator=();
        if (SHIBYTE(v153) < 0)
        {
          operator delete(*&buf[8]);
        }
      }

      else
      {
LABEL_84:
        v44 = *self->logger.__ptr_;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I No LastKnownHomePlmn found for slot %s", buf, 0xCu);
        }
      }

      *(v128 + 3) = 0;
      v128[0] = 0;
      v46 = Registry::getServiceMap(self->fRegistry.__ptr_);
      v47 = v46;
      if (v48 < 0)
      {
        v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v50 = 5381;
        do
        {
          v48 = v50;
          v51 = *v49++;
          v50 = (33 * v50) ^ v51;
        }

        while (v51);
      }

      std::mutex::lock(v46);
      *buf = v48;
      v52 = sub_100009510(&v47[1].__m_.__sig, buf);
      if (v52)
      {
        v54 = v52[3];
        v53 = v52[4];
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v47);
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          self = selfCopy;
          sub_100004A34(v53);
          v55 = 0;
          if (!v54)
          {
            goto LABEL_94;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v54 = 0;
      }

      std::mutex::unlock(v47);
      v53 = 0;
      v55 = 1;
      if (!v54)
      {
LABEL_94:
        __src = 0;
        v56 = 0;
        v109 = 0;
        if ((v55 & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_101;
      }

LABEL_98:
      MCC::getStringValue(&v148, __p);
      (*(*v54 + 24))(buf, v54, &v148);
      v56 = *&buf[8];
      __src = *buf;
      v128[0] = *&buf[16];
      *(v128 + 3) = *&buf[19];
      v109 = buf[23];
      buf[23] = 0;
      buf[0] = 0;
      if ((SHIBYTE(v149) & 0x80000000) == 0)
      {
        if (v55)
        {
          goto LABEL_101;
        }

LABEL_100:
        sub_100004A34(v53);
        goto LABEL_101;
      }

      operator delete(v148);
      if ((v55 & 1) == 0)
      {
        goto LABEL_100;
      }

LABEL_101:
      v127 = 0;
      if ((v109 & 0x80) == 0)
      {
        *&v125 = __src;
        *(&v125 + 1) = v56;
        LODWORD(v126) = v128[0];
        *(&v126 + 3) = *(v128 + 3);
        HIBYTE(v126) = v109;
LABEL_104:
        v148 = v125;
        v149 = v126;
        goto LABEL_105;
      }

      sub_100005F2C(&v125, __src, v56);
      if ((SHIBYTE(v126) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      sub_100005F2C(&v148, v125, *(&v125 + 1));
LABEL_105:
      v147 = 0;
      if (SHIBYTE(v149) < 0)
      {
        sub_100005F2C(buf, v148, *(&v148 + 1));
      }

      else
      {
        *buf = v148;
        *&buf[16] = v149;
      }

      v150 = 0;
      if (ctu::cf::convert_copy())
      {
        v57 = v147;
        v147 = v150;
        v151 = v57;
        sub_100005978(&v151);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v127 = v147;
      v147 = 0;
      sub_100005978(&v147);
      if (SHIBYTE(v149) < 0)
      {
        operator delete(v148);
      }

      if (SHIBYTE(v126) < 0)
      {
        operator delete(v125);
      }

      v110 = v127;
      cf = @"Carrier";
      CFRetain(@"Carrier");
      v58 = Registry::getServiceMap(self->fRegistry.__ptr_);
      v59 = v58;
      if (v60 < 0)
      {
        v61 = (v60 & 0x7FFFFFFFFFFFFFFFLL);
        v62 = 5381;
        do
        {
          v60 = v62;
          v63 = *v61++;
          v62 = (33 * v62) ^ v63;
        }

        while (v63);
      }

      std::mutex::lock(v58);
      *buf = v60;
      v64 = sub_100009510(&v59[1].__m_.__sig, buf);
      if (v64)
      {
        v65 = v64[3];
        v66 = v64[4];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v59);
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          v101 = v66;
          sub_100004A34(v66);
          v102 = 0;
          goto LABEL_124;
        }
      }

      else
      {
        v65 = 0;
      }

      std::mutex::unlock(v59);
      v101 = 0;
      v102 = 1;
LABEL_124:
      v123 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (!v65)
      {
        v77 = *self->logger.__ptr_;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1017635D4(&v121, v122, v77);
        }

        goto LABEL_144;
      }

      (*(*v65 + 96))(&v151, v65, v16, 1, @"CarrierName", cf, 0);
      sub_100060DE8(&v148, &v151);
      *buf = v123;
      v123 = v148;
      *&v148 = 0;
      sub_100005978(buf);
      sub_100005978(&v148);
      sub_10000A1EC(&v151);
      if (!v123)
      {
        v78 = *self->logger.__ptr_;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v79;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "No carrier name found for slot %s", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v67 = Registry::getServiceMap(self->fRegistry.__ptr_);
      v68 = v67;
      if (v69 < 0)
      {
        v70 = (v69 & 0x7FFFFFFFFFFFFFFFLL);
        v71 = 5381;
        do
        {
          v69 = v71;
          v72 = *v70++;
          v71 = (33 * v71) ^ v72;
        }

        while (v72);
      }

      std::mutex::lock(v67);
      *buf = v69;
      v73 = sub_100009510(&v68[1].__m_.__sig, buf);
      if (v73)
      {
        v75 = v73[3];
        v74 = v73[4];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v68);
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          self = selfCopy;
          sub_100004A34(v74);
          v76 = 0;
          goto LABEL_142;
        }
      }

      else
      {
        v75 = 0;
      }

      std::mutex::unlock(v68);
      v74 = 0;
      v76 = 1;
LABEL_142:
      (*(*v75 + 16))(&v148, v75, v100, v123, 1);
      *buf = v123;
      v123 = v148;
      *&v148 = 0;
      sub_100005978(buf);
      sub_100005978(&v148);
      if ((v76 & 1) == 0)
      {
        sub_100004A34(v74);
      }

LABEL_144:
      v80 = v123;
      v81 = *self->logger.__ptr_;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v111;
        uTF8String = [(__CFString *)v111 UTF8String];
        v84 = v37;
        uTF8String2 = [(__CFString *)v37 UTF8String];
        v86 = v110;
        uTF8String3 = [v110 UTF8String];
        v88 = v80;
        uTF8String4 = [v80 UTF8String];
        *buf = 136315906;
        *&buf[4] = uTF8String;
        *&buf[12] = 2080;
        *&buf[14] = uTF8String2;
        *&buf[22] = 2080;
        v153 = uTF8String3;
        v154 = 2080;
        v155 = uTF8String4;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I SUBSCRIPTION INFO: short label: %s; long label: %s; ISO country code: %s; Carrier name: %s", buf, 0x2Au);
      }

      v120 = 0;
      if (SHIBYTE(v135[3]) < 0)
      {
        sub_100005F2C(v118, v135[1], v135[2]);
      }

      else
      {
        *v118 = *&v135[1];
        v119 = v135[3];
      }

      if (SHIBYTE(v119) < 0)
      {
        sub_100005F2C(&v148, v118[0], v118[1]);
      }

      else
      {
        v148 = *v118;
        v149 = v119;
      }

      v147 = 0;
      if (SHIBYTE(v149) < 0)
      {
        sub_100005F2C(buf, v148, *(&v148 + 1));
      }

      else
      {
        *buf = v148;
        *&buf[16] = v149;
      }

      v150 = 0;
      if (ctu::cf::convert_copy())
      {
        v90 = v147;
        v147 = v150;
        v151 = v90;
        sub_100005978(&v151);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v120 = v147;
      v147 = 0;
      sub_100005978(&v147);
      if (SHIBYTE(v149) < 0)
      {
        operator delete(v148);
      }

      if (SHIBYTE(v119) < 0)
      {
        operator delete(v118[0]);
      }

      v91 = v120;
      v92 = [[NSUUID alloc] initWithUUIDString:v91];
      v93 = [[CXAccount alloc] initWithUUID:v92 description:v108 serviceName:v80 isoCountryCode:v110 handle:v107 shortLabel:v111];
      v94 = [NSUUID alloc];
      if (SBYTE7(v142) < 0)
      {
        sub_100005F2C(v115, v141[0], v141[1]);
      }

      else
      {
        *v115 = *v141;
        v116 = v142;
      }

      if (SHIBYTE(v116) < 0)
      {
        sub_100005F2C(&v148, v115[0], v115[1]);
      }

      else
      {
        v148 = *v115;
        v149 = v116;
      }

      v147 = 0;
      if (SHIBYTE(v149) < 0)
      {
        sub_100005F2C(buf, v148, *(&v148 + 1));
      }

      else
      {
        *buf = v148;
        *&buf[16] = v149;
      }

      v150 = 0;
      if (ctu::cf::convert_copy())
      {
        v95 = v147;
        v147 = v150;
        v151 = v95;
        sub_100005978(&v151);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v117 = v147;
      v147 = 0;
      sub_100005978(&v147);
      if (SHIBYTE(v149) < 0)
      {
        operator delete(v148);
      }

      v96 = [v94 initWithUUIDString:v117];
      sub_100005978(&v117);
      if (SHIBYTE(v116) < 0)
      {
        operator delete(v115[0]);
      }

      v97 = [[CXSenderIdentity alloc] initWithUUID:v96 account:v93];
      if (v114 == 2)
      {
        [changedCopy insertObject:v97 atIndex:0];
      }

      else
      {
        [changedCopy addObject:v97];
      }

      sub_100005978(&v120);
      sub_100005978(&v123);
      if ((v102 & 1) == 0)
      {
        sub_100004A34(v101);
      }

      sub_100005978(&cf);

      sub_100005978(&v127);
      if (v109 < 0)
      {
        operator delete(__src);
      }

      if (SHIBYTE(v130) < 0)
      {
        operator delete(__p[1]);
      }

LABEL_190:
      if (SBYTE7(v144) < 0)
      {
        operator delete(v143[0]);
      }

      if (SBYTE7(v142) < 0)
      {
        operator delete(v141[0]);
      }

      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139[1]);
      }

      if (SHIBYTE(v139[0]) < 0)
      {
        operator delete(v138[0]);
      }

      if (SHIBYTE(v137) < 0)
      {
        operator delete(v136[1]);
      }

      if (SHIBYTE(v135[3]) < 0)
      {
        operator delete(v135[1]);
      }

      if (SHIBYTE(v135[0]) < 0)
      {
        operator delete(v134[0]);
      }

      if (SHIBYTE(v133[3]) < 0)
      {
        operator delete(v133[1]);
      }

      v98 = begin_node[1].__left_;
      if (v98)
      {
        do
        {
          v99 = v98;
          v98 = v98->__left_;
        }

        while (v98);
      }

      else
      {
        do
        {
          v99 = begin_node[2].__left_;
          v31 = v99->__left_ == begin_node;
          begin_node = v99;
        }

        while (!v31);
      }

      begin_node = v99;
    }

    while (v99 != p_end_node);
  }

  sub_1001B1588(&v145, v146[0]);
}

- (void)handleThumperSubscriptionInfoChanged:(id)changed
{
  changedCopy = changed;
  begin = self->fActiveSubscriptions.fValue.fSubscriptions.__begin_;
  selfCopy = self;
  end = self->fActiveSubscriptions.fValue.fSubscriptions.__end_;
  if (begin != end)
  {
    *&v4 = 136315650;
    v52 = v4;
    do
    {
      if (!*begin)
      {
        v6 = (begin + 8);
        v7 = (begin + 56);
        v8 = (begin + 88);
        v55 = *(begin + 47);
        v9 = *selfCopy->logger.__ptr_;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = subscriber::asString();
          v11 = begin + 56;
          if (*(begin + 79) < 0)
          {
            v11 = *v7;
          }

          v12 = begin + 8;
          if (*(begin + 31) < 0)
          {
            v12 = *v6;
          }

          v13 = (begin + 88);
          if (*(begin + 111) < 0)
          {
            v13 = *v8;
          }

          v14 = asString();
          v15 = *(begin + 215);
          v16 = (v15 & 0x80u) != 0;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(begin + 25);
          }

          if (v16)
          {
            v17 = *(begin + 24);
          }

          else
          {
            v17 = begin + 192;
          }

          v18 = v15 == 0;
          v19 = "<invalid>";
          if (!v18)
          {
            v19 = v17;
          }

          *buf = 136316418;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v11;
          *&buf[22] = 2080;
          *&buf[24] = v12;
          *&buf[32] = 2080;
          *&buf[34] = v13;
          *&buf[42] = 2080;
          *&buf[44] = v14;
          *&buf[52] = 2080;
          *&buf[54] = v19;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ACTIVE SUBSCRIPTION INFO: SIM Slot %s; SIM Label ID: %s; SIM Label: %s; SIM Phone Number: %s; Is User Pref For Voice: %s; PersonalityID: %s", buf, 0x3Eu);
        }

        if ((*(begin + 79) & 0x8000000000000000) != 0)
        {
          if (*(begin + 8))
          {
LABEL_23:
            if (*(begin + 111) < 0)
            {
              v8 = *v8;
            }

            v20 = [NSString stringWithUTF8String:v8, v52];
            if ([v20 length])
            {
              v54 = [[CXHandle alloc] initWithType:2 value:v20];
            }

            else
            {
              v54 = 0;
            }

            if (*(begin + 31) < 0)
            {
              sub_100005F2C(&__dst, *(begin + 1), *(begin + 2));
            }

            else
            {
              v21 = *v6;
              __dst.__r_.__value_.__r.__words[2] = *(begin + 3);
              *&__dst.__r_.__value_.__l.__data_ = v21;
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __dst;
            }

            v68 = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              *buf = __p;
            }

            v69 = 0;
            if (ctu::cf::convert_copy())
            {
              v22 = v68;
              v68 = v69;
              v64.__r_.__value_.__r.__words[0] = v22;
              sub_100005978(&v64.__r_.__value_.__l.__data_);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v66 = v68;
            v68 = 0;
            sub_100005978(&v68);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v23 = v66;
            sub_100005978(&v66);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v24 = &stru_101F6AFB8;
            if (v23)
            {
              v24 = v23;
            }

            v25 = v24;
            memset(&v64, 0, sizeof(v64));
            *&__p.__r_.__value_.__l.__data_ = 0uLL;
            ServiceMap = Registry::getServiceMap(selfCopy->fRegistry.__ptr_);
            v27 = ServiceMap;
            if (v28 < 0)
            {
              v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
              v30 = 5381;
              do
              {
                v28 = v30;
                v31 = *v29++;
                v30 = (33 * v30) ^ v31;
              }

              while (v31);
            }

            std::mutex::lock(ServiceMap);
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
LABEL_55:
                (**v34)(&__p, v34, begin + 192);
                if ((v35 & 1) == 0)
                {
                  sub_100004A34(v33);
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v71 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v78 = 1;
                  v79 = 0u;
                  memset(v80, 0, 56);
                  if ((*(*__p.__r_.__value_.__l.__data_ + 104))(__p.__r_.__value_.__r.__words[0], buf))
                  {
                    std::string::operator=(&v64, &v80[1]);
                  }

                  sub_1000FF134(buf);
                }

                if (__p.__r_.__value_.__l.__size_)
                {
                  sub_100004A34(__p.__r_.__value_.__l.__size_);
                }

                v63 = 0;
                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&v62, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
                }

                else
                {
                  v62 = v64;
                }

                if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&__p, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
                }

                else
                {
                  __p = v62;
                }

                v66 = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  *buf = __p;
                }

                v68 = 0;
                if (ctu::cf::convert_copy())
                {
                  v36 = v66;
                  v66 = v68;
                  v69 = v36;
                  sub_100005978(&v69);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v63 = v66;
                v66 = 0;
                sub_100005978(&v66);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v62.__r_.__value_.__l.__data_);
                }

                v37 = v63;
                v38 = *selfCopy->logger.__ptr_;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  uTF8String = [&stru_101F6AFB8 UTF8String];
                  v40 = v23;
                  uTF8String2 = [(__CFString *)v23 UTF8String];
                  v42 = v37;
                  uTF8String3 = [v37 UTF8String];
                  *buf = v52;
                  *&buf[4] = uTF8String;
                  *&buf[12] = 2080;
                  *&buf[14] = uTF8String2;
                  *&buf[22] = 2080;
                  *&buf[24] = uTF8String3;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I ACTIVE SUBSCRIPTION INFO: short label: %s; long label: %s; ISO country code: %s", buf, 0x20u);
                }

                v61 = 0;
                if (*(begin + 79) < 0)
                {
                  sub_100005F2C(&v60, *(begin + 7), *(begin + 8));
                }

                else
                {
                  *&v60.__r_.__value_.__l.__data_ = *v7;
                  v60.__r_.__value_.__r.__words[2] = *(begin + 9);
                }

                if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&__p, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
                }

                else
                {
                  __p = v60;
                }

                v66 = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  *buf = __p;
                }

                v68 = 0;
                if (ctu::cf::convert_copy())
                {
                  v44 = v66;
                  v66 = v68;
                  v69 = v44;
                  sub_100005978(&v69);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v61 = v66;
                v66 = 0;
                sub_100005978(&v66);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v60.__r_.__value_.__l.__data_);
                }

                v45 = v61;
                v46 = [[NSUUID alloc] initWithUUIDString:v45];
                v47 = [[CXAccount alloc] initWithUUID:v46 description:v25 serviceName:&stru_101F6AFB8 isoCountryCode:v37 handle:v54 shortLabel:&stru_101F6AFB8];
                v48 = [NSUUID alloc];
                if (*(begin + 183) < 0)
                {
                  sub_100005F2C(&v58, *(begin + 20), *(begin + 21));
                }

                else
                {
                  v58 = *(begin + 160);
                }

                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&__p, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
                }

                else
                {
                  __p = v58;
                }

                v66 = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  *buf = __p;
                }

                v68 = 0;
                if (ctu::cf::convert_copy())
                {
                  v49 = v66;
                  v66 = v68;
                  v69 = v49;
                  sub_100005978(&v69);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v59 = v66;
                v66 = 0;
                sub_100005978(&v66);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v50 = [v48 initWithUUIDString:v59];
                sub_100005978(&v59);
                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                }

                v51 = [[CXSenderIdentity alloc] initWithUUID:v50 account:v47];
                if (v55 == 2)
                {
                  [changedCopy insertObject:v51 atIndex:0];
                }

                else
                {
                  [changedCopy addObject:v51];
                }

                sub_100005978(&v61);
                sub_100005978(&v63);
                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v64.__r_.__value_.__l.__data_);
                }

                goto LABEL_122;
              }
            }

            else
            {
              v34 = 0;
            }

            std::mutex::unlock(v27);
            v33 = 0;
            v35 = 1;
            goto LABEL_55;
          }
        }

        else if (*(begin + 79))
        {
          goto LABEL_23;
        }
      }

LABEL_122:
      begin = (begin + 224);
    }

    while (begin != end);
  }
}

- (void)handleSubscriptionInfoChanged
{
  provider = [(TelephonyProviderDelegate *)self provider];
  configuration = [provider configuration];
  if (configuration)
  {
    v5 = objc_opt_new();
    v6 = objc_autoreleasePoolPush();
    if (capabilities::ct::supportsThumperService(-[TelephonyProviderDelegate handleSimSubscriptionInfoChanged:](self, "handleSimSubscriptionInfoChanged:", v5)) && ![v5 count])
    {
      [(TelephonyProviderDelegate *)self handleThumperSubscriptionInfoChanged:v5];
    }

    objc_autoreleasePoolPop(v6);
    prioritizedSenderIdentities = [configuration prioritizedSenderIdentities];
    v8 = [prioritizedSenderIdentities isEqualToOrderedSet:v5];

    if ((v8 & 1) == 0)
    {
      [configuration setPrioritizedSenderIdentities:v5];
      v9 = *self->logger.__ptr_;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Updating config prioritizedSenderIdentities: %@", &v10, 0xCu);
      }

      [provider setConfiguration:configuration];
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101763614();
  }
}

- (void)handleLastKnownHomePlmnChanged:(const void *)changed
{
  if (self->fLastKnownHomePlmn.fValue.__tree_.__size_)
  {
    if (self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__size_)
    {
      begin_node = self->fLastKnownHomePlmn.fValue.__tree_.__begin_node_;
      p_end_node = &self->fLastKnownHomePlmn.fValue.__tree_.__end_node_;
      if (begin_node != &self->fLastKnownHomePlmn.fValue.__tree_.__end_node_)
      {
        v6 = changed + 8;
        while (1)
        {
          v7 = *v6;
          if (!*v6)
          {
            goto LABEL_15;
          }

          left = begin_node[4].__left_;
          v9 = v6;
          do
          {
            if (*(v7 + 32) >= left)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < left));
          }

          while (v7);
          if (v9 == v6 || left < *(v9 + 8) || (rest::operator==() & 1) == 0)
          {
LABEL_15:
            left_high = HIBYTE(begin_node[7].__left_);
            if (left_high < 0)
            {
              left_high = begin_node[6].__left_;
            }

            if (left_high)
            {
              break;
            }
          }

          v11 = begin_node[1].__left_;
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = v11->__left_;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = begin_node[2].__left_;
              v13 = v12->__left_ == begin_node;
              begin_node = v12;
            }

            while (!v13);
          }

          begin_node = v12;
          if (v12 == p_end_node)
          {
            return;
          }
        }

        [(TelephonyProviderDelegate *)self handleSubscriptionInfoChanged];
      }
    }
  }
}

- (void)handleCallStatusChangedWithOldCalls:(const void *)calls
{
  provider = [(TelephonyProviderDelegate *)self provider];
  pendingTransactions = [provider pendingTransactions];
  v5 = [pendingTransactions count];

  v16 = 0;
  v15 = 0;
  v17 = 0;
  [(TelephonyProviderDelegate *)self getCurrentCalls];
  v6 = *self->logger.__ptr_;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = (v16 - v15) >> 3;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N ----> Current calls changed (size: %zu). Num of pending transactions: %lu", buf, 0x16u);
  }

  if (v5)
  {
    v7 = *self->logger.__ptr_;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      provider2 = [(TelephonyProviderDelegate *)self provider];
      pendingTransactions2 = [provider2 pendingTransactions];
      *buf = 138412290;
      *&buf[4] = pendingTransactions2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Pending Transactions: %@", buf, 0xCu);
    }
  }

  memset(v14, 0, sizeof(v14));
  fObj = self->fQueue.fObj.fObj;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10019FA28;
  block[3] = &unk_101E2E180;
  block[4] = self;
  memset(v13, 0, sizeof(v13));
  sub_1001A86DC(v13, 0, 0, 0);
  dispatch_async(fObj, block);
  *buf = v13;
  sub_1001A8860(buf);
  *buf = v14;
  sub_1001A8860(buf);
  *buf = &v15;
  sub_1000B2DB4(buf);
}

- (void)handleCallCapabilitiesChanged
{
  provider = [(TelephonyProviderDelegate *)self provider];
  configuration = [provider configuration];
  v4 = configuration;
  v31 = configuration;
  if (configuration)
  {
    maximumCallGroups = [configuration maximumCallGroups];
    maximumCallsPerCallGroup = [v4 maximumCallsPerCallGroup];
    includesCallsInRecents = [v4 includesCallsInRecents];
    v40 = 0;
    sub_1011D4EA0(&v40, &self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__begin_node_);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    [(TelephonyProviderDelegate *)self getCurrentCalls];
    v5 = *self->logger.__ptr_;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = subscriber::asString();
      *buf = 134218242;
      *&buf[4] = (v38 - v37) >> 3;
      *&buf[12] = 2080;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ----> Call Capabilities Changed. #curCalls: %lu, preferredVoiceSlot: %s", buf, 0x16u);
    }

    __p[0] = 0;
    __p[1] = 0;
    v36 = 0;
    left = self->fCallCapabilities.fValue.__tree_.__end_node_.__left_;
    if (!left)
    {
      goto LABEL_11;
    }

    p_end_node = &self->fCallCapabilities.fValue.__tree_.__end_node_;
    do
    {
      if (SLODWORD(left[4].__left_) >= v40)
      {
        p_end_node = left;
      }

      left = left[SLODWORD(left[4].__left_) < v40].__left_;
    }

    while (left);
    if (p_end_node != &self->fCallCapabilities.fValue.__tree_.__end_node_ && v40 >= SLODWORD(p_end_node[4].__left_))
    {
      v11 = p_end_node[5].__left_;
      *v50 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        *v50 = xpc_null_create();
      }

      *buf = v50;
      *&buf[8] = kMaxSupportedCallCountKey;
      sub_100006354(buf, &v34);
      v13 = xpc::dyn_cast_or_default(&v34, maximumCallGroups, v12);
      xpc_release(v34);
      *buf = v50;
      *&buf[8] = kMaxMultiPartyCallCountKey;
      sub_100006354(buf, &v34);
      v15 = xpc::dyn_cast_or_default(&v34, maximumCallsPerCallGroup, v14);
      xpc_release(v34);
      xpc_release(*v50);
      v16 = 2;
      if (v15)
      {
        v16 = v15;
      }

      maximumCallsPerCallGroup = v16;
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      maximumCallGroups = v17;
    }

    else
    {
LABEL_11:
      v9 = *self->logger.__ptr_;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = subscriber::asString();
        sub_10176367C(v10, v50, v9);
      }
    }

    v18 = HIBYTE(v36);
    if (SHIBYTE(v36) < 0)
    {
      if (__p[1])
      {
        v19 = v40;
        sub_100005F2C(__dst, __p[0], __p[1]);
LABEL_29:
        includesCallsInRecents = [(TelephonyProviderDelegate *)self shouldIncludeInCallHistory:v19 phoneNumber:__dst];
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    else if (HIBYTE(v36))
    {
      v19 = v40;
      *__dst = *__p;
      v33 = v36;
      goto LABEL_29;
    }

    if ([v31 maximumCallGroups] != maximumCallGroups || ((objc_msgSend(v31, "maximumCallsPerCallGroup") == maximumCallsPerCallGroup) & includesCallsInRecents) != 1 || (objc_msgSend(v31, "includesCallsInRecents") & 1) == 0)
    {
      [v31 setMaximumCallGroups:maximumCallGroups];
      [v31 setMaximumCallsPerCallGroup:maximumCallsPerCallGroup];
      [v31 setIncludesCallsInRecents:includesCallsInRecents];
      v20 = *self->logger.__ptr_;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = subscriber::asString();
        maximumCallGroups2 = [v31 maximumCallGroups];
        maximumCallsPerCallGroup2 = [v31 maximumCallsPerCallGroup];
        includesCallsInRecents2 = [v31 includesCallsInRecents];
        if ((v18 & 0x80) != 0)
        {
          v25 = " for phoneNum: ";
          v26 = __p[0];
          if (!__p[1])
          {
            v25 = "";
          }
        }

        else
        {
          v25 = "";
          if (v18)
          {
            v25 = " for phoneNum: ";
          }

          v26 = __p;
        }

        *buf = 136316418;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = maximumCallGroups2;
        v42 = 2048;
        v43 = maximumCallsPerCallGroup2;
        v44 = 1024;
        v45 = includesCallsInRecents2;
        v46 = 2080;
        v47 = v25;
        v48 = 2080;
        v49 = v26;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Updating config for call capabilities based on slot %s: maxCallGroups: %lu, maxCallsPerCallGroup: %lu, includesInRecents: %d%s%s", buf, 0x3Au);
      }

      [provider setConfiguration:v31];
      LOBYTE(v18) = HIBYTE(v36);
    }

    if ((v18 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    *buf = &v37;
    sub_1000B2DB4(buf);
    goto LABEL_46;
  }

  if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101763614();
  }

LABEL_46:
}

- (void)handleEmergencyNumbersChanged
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ----> Emergency (or allow) numbers changed", buf, 2u);
  }

  provider = [(TelephonyProviderDelegate *)self provider];
  configuration = [provider configuration];
  if (configuration)
  {
    left = self->fEmergencyNumbers.fValue.__tree_.__end_node_.__left_;
    *buf = 0;
    v22 = 0;
    v23 = 0;
    if (left)
    {
      p_end_node = &self->fEmergencyNumbers.fValue.__tree_.__end_node_;
      do
      {
        if (SLODWORD(left[4].__left_) >= 1)
        {
          p_end_node = left;
        }

        left = left[SLODWORD(left[4].__left_) < 1].__left_;
      }

      while (left);
      if (p_end_node != &self->fEmergencyNumbers.fValue.__tree_.__end_node_ && SLODWORD(p_end_node[4].__left_) <= 1 && buf != &p_end_node[5])
      {
        sub_100008234(buf, p_end_node[5].__left_, p_end_node[6].__left_, 0xAAAAAAAAAAAAAAABLL * ((p_end_node[6].__left_ - p_end_node[5].__left_) >> 3));
      }
    }

    v8 = objc_opt_new();
    v9 = *buf;
    for (i = v22; v9 != i; v9 = (v9 + 24))
    {
      __p[1] = 0;
      v25 = 0;
      __p[0] = 0;
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(__p, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v25 = *(v9 + 2);
        *__p = v11;
      }

      if (v25 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = [NSString stringWithUTF8String:v12];
      v14 = [[CXHandle alloc] initWithType:2 value:v13];
      [v8 addObject:v14];

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ([v8 count])
    {
      emergencyHandles = [configuration emergencyHandles];
      v16 = [emergencyHandles isEqualToArray:v8];

      if (!v16)
      {
        [configuration setEmergencyHandles:v8];
        v19 = *self->logger.__ptr_;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 138412290;
          *(__p + 4) = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Updating config emergencyHandles: %@", __p, 0xCu);
        }

        [provider setConfiguration:configuration];
        goto LABEL_37;
      }

      v17 = *self->logger.__ptr_;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v18 = "#I Not updating config emergencyHandles: no change";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, __p, 2u);
      }
    }

    else
    {
      v17 = *self->logger.__ptr_;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v18 = "#I Not updating config emergencyHandles: no emergency numbers found";
        goto LABEL_33;
      }
    }

LABEL_37:

    __p[0] = buf;
    sub_1000087B4(__p);
    goto LABEL_38;
  }

  if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101763614();
  }

LABEL_38:
}

- (void)handleDisambiguationEmergencyNumbersChanged
{
  v2 = *self->logger.__ptr_;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ----> Disambiguation emergency numbers changed", buf, 2u);
  }

  provider = [(TelephonyProviderDelegate *)self provider];
  configuration = [provider configuration];
  if (configuration)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    subscriber::makeSimSlotRange();
    v3 = *buf;
    v4 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v5 = __p[0];
      do
      {
        if (v5(*v3))
        {
          break;
        }

        ++v3;
      }

      while (v3 != v4);
      v6 = *&buf[8];
      if (v3 != *&buf[8])
      {
        p_end_node = &self->fDisambiguationEmergencyNumbers.fValue.__tree_.__end_node_;
        v39 = *&buf[8];
        do
        {
          left = p_end_node->__left_;
          if (p_end_node->__left_)
          {
            v9 = *v3;
            v10 = &self->fDisambiguationEmergencyNumbers.fValue.__tree_.__end_node_;
            do
            {
              if (SLODWORD(left[4].__left_) >= v9)
              {
                v10 = left;
              }

              left = left[SLODWORD(left[4].__left_) < v9].__left_;
            }

            while (left);
            if (v10 != p_end_node && v9 >= SLODWORD(v10[4].__left_))
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              sub_1000AE5B0(&v43, v10[5].__left_, v10[6].__left_, 0x6DB6DB6DB6DB6DB7 * ((v10[6].__left_ - v10[5].__left_) >> 3));
              v12 = v43;
              v11 = v44;
              while (v12 != v11)
              {
                v13 = *self->logger.__ptr_;
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  v14 = v12;
                  if (*(v12 + 23) < 0)
                  {
                    v14 = *v12;
                  }

                  v15 = v12 + 3;
                  if (*(v12 + 47) < 0)
                  {
                    v15 = *v15;
                  }

                  *v52 = 136446466;
                  *&v52[4] = v14;
                  v53 = 2082;
                  v54 = v15;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Found emergency labeled number (disambiguation number): Num %{public}s Title %{public}s", v52, 0x16u);
                }

                v17 = v46;
                v16 = v47;
                if (v46 == v47)
                {
LABEL_40:
                  sub_1001A0EFC(&v46, v12);
                }

                else
                {
                  v18 = *(v12 + 23);
                  if (v18 >= 0)
                  {
                    v19 = *(v12 + 23);
                  }

                  else
                  {
                    v19 = v12[1];
                  }

                  while (1)
                  {
                    v20 = *(v17 + 23);
                    v21 = v20;
                    if ((v20 & 0x80u) != 0)
                    {
                      v20 = *(v17 + 8);
                    }

                    if (v20 == v19)
                    {
                      v22 = v21 >= 0 ? v17 : *v17;
                      v23 = v18 >= 0 ? v12 : *v12;
                      if (!memcmp(v22, v23, v19))
                      {
                        break;
                      }
                    }

                    v17 += 56;
                    if (v17 == v16)
                    {
                      goto LABEL_40;
                    }
                  }
                }

                v12 += 7;
              }

              *v52 = &v43;
              sub_1000B25C4(v52);
              v6 = v39;
            }
          }

          do
          {
            ++v3;
          }

          while (v3 != v4 && (v5(*v3) & 1) == 0);
        }

        while (v3 != v6);
      }
    }

    v24 = objc_opt_new();
    v25 = v46;
    for (i = v47; v25 != i; v25 += 56)
    {
      v51 = 0;
      memset(__p, 0, sizeof(__p));
      *buf = 0u;
      if (*(v25 + 23) < 0)
      {
        sub_100005F2C(buf, *v25, *(v25 + 8));
      }

      else
      {
        v27 = *v25;
        __p[0] = *(v25 + 16);
        *buf = v27;
      }

      if (*(v25 + 47) < 0)
      {
        sub_100005F2C(&__p[1], *(v25 + 24), *(v25 + 32));
      }

      else
      {
        v28 = *(v25 + 24);
        __p[3] = *(v25 + 40);
        *&__p[1] = v28;
      }

      v51 = *(v25 + 48);
      if (SHIBYTE(__p[0]) >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      v30 = [NSString stringWithUTF8String:v29];
      if (SHIBYTE(__p[3]) >= 0)
      {
        v31 = &__p[1];
      }

      else
      {
        v31 = __p[1];
      }

      v32 = [NSString stringWithUTF8String:v31];
      v33 = [[CXHandle alloc] initWithType:2 value:v30];
      v34 = [[CXLabeledHandle alloc] initWithHandle:v33 label:v32];
      [v24 addObject:v34];

      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(*buf);
      }
    }

    emergencyLabeledHandles = [configuration emergencyLabeledHandles];
    v36 = [emergencyLabeledHandles isEqualToArray:v24];

    if (v36)
    {
      v37 = *self->logger.__ptr_;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Not updating config emergencyLabeledHandles: no change", buf, 2u);
      }
    }

    else
    {
      [configuration setEmergencyLabeledHandles:v24];
      v38 = *self->logger.__ptr_;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Updating config emergencyLabeledHandles: %@", buf, 0xCu);
      }

      [provider setConfiguration:configuration];
    }

    *buf = &v46;
    sub_1000B25C4(buf);
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101763614();
  }
}

- (void)handleCallFrequencyDataChanged
{
  v18 = 0;
  *__p = 0u;
  *object = 0u;
  if (*(&self->fCallFrequencyData.fValue.fCallUuid.__rep_.__l + 23) < 0)
  {
    sub_100005F2C(__p, self->fCallFrequencyData.fValue.fCallUuid.__rep_.__l.__data_, self->fCallFrequencyData.fValue.fCallUuid.__rep_.__l.__size_);
  }

  else
  {
    *__p = *self->fCallFrequencyData.fValue.fCallUuid.__rep_.__s.__data_;
    object[0] = *(&self->fCallFrequencyData.fValue.fCallUuid.__rep_.__l + 2);
  }

  v3 = *&self->fCallFrequencyData.fValue.var0;
  object[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
    v4 = object[1];
  }

  else
  {
    v4 = xpc_null_create();
    object[1] = v4;
  }

  LOBYTE(v18) = self->fCallFrequencyData.var0;
  v5 = HIBYTE(object[0]);
  if (SHIBYTE(object[0]) < 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    v15 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v4 = xpc_null_create();
      v15 = v4;
    }

    if (xpc_get_type(v4) == &_xpc_type_null)
    {
      if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
      {
        sub_1017636C4();
      }
    }

    else
    {
      if (SHIBYTE(object[0]) >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = [NSString stringWithUTF8String:v6];
      v9 = [[NSUUID alloc] initWithUUIDString:v7];
      if (v18)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v14 = 0;
      xpc::bridge(buf, &v15, v8);
      sub_1001B1A54(&v14, buf);
      sub_10000A1EC(buf);
      if (v14)
      {
        v11 = v14;
        v12 = *self->logger.__ptr_;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ freq data changed", buf, 0xCu);
        }

        provider = [(TelephonyProviderDelegate *)self provider];
        [provider reportCallWithUUID:v9 changedFrequencyData:v11 forDirection:v10];
      }

      sub_10002D760(&v14);

      v4 = v15;
    }

    xpc_release(v4);
    v4 = object[1];
  }

  xpc_release(v4);
  object[1] = 0;
  if (SHIBYTE(object[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)handleThumperHandoffAvailabilityChanged
{
  memset(v2, 0, sizeof(v2));
  [(TelephonyProviderDelegate *)self getCurrentCalls];
  *buf = v2;
  sub_1000B2DB4(buf);
}

- (void)handleThumperAccountIdChanged
{
  provider = [(TelephonyProviderDelegate *)self provider];
  configuration = [provider configuration];
  if (configuration)
  {
    v5 = objc_alloc_init(NSMutableArray);
    begin_node = self->fVoWiFiProv.fValue.__tree_.__begin_node_;
    if (begin_node != &self->fVoWiFiProv.fValue.__tree_.__end_node_)
    {
      do
      {
        *__p = 0u;
        v19 = 0u;
        sub_10006F264(__p, &begin_node[8]);
        v7 = BYTE8(v19);
        v8 = BYTE7(v19);
        if (BYTE8(v19) == 1)
        {
          if (SBYTE7(v19) < 0)
          {
            if (!__p[1])
            {
              goto LABEL_11;
            }

            v9 = __p[0];
          }

          else
          {
            if (!BYTE7(v19))
            {
              goto LABEL_13;
            }

            v9 = __p;
          }

          v10 = [NSString stringWithUTF8String:v9];
          [v5 addObject:v10];

          v8 = BYTE7(v19);
          v7 = BYTE8(v19);
        }

        if (v7)
        {
LABEL_11:
          if (v8 < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_13:
        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v12 = left;
            left = left->super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v12 = begin_node[2].__left_;
            v13 = v12->super.isa == begin_node;
            begin_node = v12;
          }

          while (!v13);
        }

        begin_node = v12;
      }

      while (v12 != &self->fVoWiFiProv.fValue.__tree_.__end_node_);
    }

    handoffIdentifiers = [configuration handoffIdentifiers];
    v15 = [handoffIdentifiers isEqualToArray:v5];

    if (v15)
    {
      v16 = *self->logger.__ptr_;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Not updating config handoffIdentifiers: no change", __p, 2u);
      }
    }

    else
    {
      [configuration setHandoffIdentifiers:v5];
      v17 = *self->logger.__ptr_;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 138412290;
        *(__p + 4) = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Updating config handoffIdentifiers: %@ ", __p, 0xCu);
      }

      [provider setConfiguration:configuration];
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101763614();
  }
}

- (void)handleCallControlFailure:(const void *)failure
{
  p_logger = &self->logger;
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asString(*(failure + 6));
    if (*(failure + 23) >= 0)
    {
      failureCopy = failure;
    }

    else
    {
      failureCopy = *failure;
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = failureCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N ----> Call control failure for action type %s for call %s", buf, 0x16u);
  }

  provider = [(TelephonyProviderDelegate *)self provider];
  pendingTransactions = [provider pendingTransactions];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = pendingTransactions;
  v10 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v10)
  {
    v40 = *v57;
    *&v11 = 134218242;
    v38 = v11;
    do
    {
      v41 = v10;
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v56 + 1) + 8 * i);
        if (([v12 isComplete] & 1) == 0)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          uUID = [v12 UUID];
          sub_1000B2CAC(uUID, &v53);

          v14 = *(failure + 79);
          if (v14 >= 0)
          {
            v15 = *(failure + 79);
          }

          else
          {
            v15 = *(failure + 8);
          }

          if (!v15)
          {
            goto LABEL_26;
          }

          v16 = HIBYTE(v55);
          if (v55 < 0)
          {
            v16 = v54;
          }

          if (v15 == v16 && (v14 >= 0 ? (v17 = failure + 56) : (v17 = *(failure + 7)), v55 >= 0 ? (v18 = &v53) : (v18 = v53), !memcmp(v17, v18, v15)))
          {
            v35 = sub_100B2E9DC(p_logger, v12);
            v36 = **p_logger;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = failure + 56;
              if (*(failure + 79) < 0)
              {
                v37 = *(failure + 7);
              }

              *buf = v38;
              *&buf[4] = v35;
              *&buf[12] = 2080;
              *&buf[14] = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I For call control failure, failed %zu actions in transaction %s", buf, 0x16u);
            }
          }

          else
          {
LABEL_26:
            actions = [v12 actions];
            v20 = *(failure + 4);
            v19 = *(failure + 5);
            if (v19 == v20)
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v22 = actions;
              v23 = [v22 countByEnumeratingWithState:&v45 objects:v62 count:16];
              if (v23)
              {
                v24 = *v46;
                do
                {
                  for (j = 0; j != v23; j = j + 1)
                  {
                    if (*v46 != v24)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v26 = *(*(&v45 + 1) + 8 * j);
                    if (([v26 isComplete] & 1) == 0)
                    {
                      if ([v26 fail:failure])
                      {
                        v27 = **p_logger;
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                        {
                          v28 = objc_opt_class();
                          v29 = NSStringFromClass(v28);
                          v30 = v29;
                          uTF8String = [v29 UTF8String];
                          uUID2 = [v26 UUID];
                          v33 = uUID2;
                          if (*(failure + 23) >= 0)
                          {
                            failureCopy2 = failure;
                          }

                          else
                          {
                            failureCopy2 = *failure;
                          }

                          *buf = 136315650;
                          *&buf[4] = uTF8String;
                          *&buf[12] = 2112;
                          *&buf[14] = uUID2;
                          *&buf[22] = 2080;
                          v61 = failureCopy2;
                          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Failed %s %@ with call %s due to control failure", buf, 0x20u);
                        }
                      }
                    }
                  }

                  v23 = [v22 countByEnumeratingWithState:&v45 objects:v62 count:16];
                }

                while (v23);
              }
            }

            else
            {
              do
              {
                memset(buf, 0, sizeof(buf));
                if (*(v20 + 23) < 0)
                {
                  sub_100005F2C(buf, *v20, *(v20 + 1));
                }

                else
                {
                  v21 = *v20;
                  *&buf[16] = *(v20 + 2);
                  *buf = v21;
                }

                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3321888768;
                v49[2] = sub_1001A2940;
                v49[3] = &unk_101E2E1B8;
                if (buf[23] < 0)
                {
                  sub_100005F2C(&__p, *buf, *&buf[8]);
                }

                else
                {
                  __p = *buf;
                  v51 = *&buf[16];
                }

                v49[4] = self;
                failureCopy3 = failure;
                [actions enumerateObjectsUsingBlock:v49];
                if (SHIBYTE(v51) < 0)
                {
                  operator delete(__p);
                }

                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                v20 = (v20 + 24);
              }

              while (v20 != v19);
            }
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v53);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v10);
  }
}

- (void)handleCallToneComplete:(const void *)complete
{
  if (*(complete + 23) < 0)
  {
    if (!*(complete + 1))
    {
      return;
    }

    complete = *complete;
  }

  else if (!*(complete + 23))
  {
    return;
  }

  v4 = [NSString stringWithUTF8String:complete];
  v5 = [[NSUUID alloc] initWithUUIDString:v4];
  v6 = *self->logger.__ptr_;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ AudioFinished", &v8, 0xCu);
  }

  provider = [(TelephonyProviderDelegate *)self provider];
  [provider reportAudioFinishedForCallWithUUID:v5];
}

- (void)handleDownlinkDtmfEvent:(const void *)event dtmf:(char)dtmf
{
  dtmfCopy = dtmf;
  if (*(event + 23) < 0)
  {
    event = *event;
  }

  v6 = [NSString stringWithUTF8String:event];
  v7 = [[NSUUID alloc] initWithUUIDString:v6];
  v13 = dtmfCopy;
  v8 = [CXCallDTMFUpdate alloc];
  v9 = [NSString stringWithCharacters:&v13 length:1];
  v10 = [v8 initWithDigits:v9];

  v11 = *self->logger.__ptr_;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 1024;
    v17 = dtmfCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ received downlink DTMF: %c", buf, 0x12u);
  }

  provider = [(TelephonyProviderDelegate *)self provider];
  [provider reportCallWithUUID:v7 receivedDTMFUpdate:v10];
}

- (BOOL)evaluateAndSendCallUpdateWithCallInfo:(dict)info previousCallInfo:(dict)callInfo
{
  v7 = *info.fObj.fObj;
  v23 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v23 = xpc_null_create();
  }

  v8 = *callInfo.fObj.fObj;
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = [(TelephonyProviderDelegate *)self evaluateAndCreateCallUpdateWithCallInfo:&v23 previousCallInfo:&object];
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v18[0] = info.fObj.fObj;
  v18[1] = "kUuid";
  sub_100006354(v18, &v19);
  memset(__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v19);
  if (v9)
  {
    if (v21 >= 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = v20[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [[NSUUID alloc] initWithUUIDString:v11];
    v13 = *self->logger.__ptr_;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 138412546;
      *(__p + 4) = v12;
      WORD2(__p[1]) = 2112;
      *(&__p[1] + 6) = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ %@", __p, 0x16u);
    }

    provider = [(TelephonyProviderDelegate *)self provider];
    [provider reportCallWithUUID:v12 updated:v9];
  }

  else
  {
    v15 = *self->logger.__ptr_;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v20;
      if (v21 < 0)
      {
        v16 = v20[0];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Not report call %s: nothing requiring call update changed", __p, 0xCu);
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  return v9 != 0;
}

- (id)evaluateAndCreateCallUpdateWithCallInfo:(dict)info previousCallInfo:(dict)callInfo
{
  *buf = info;
  *&buf[8] = "kCallStatus";
  sub_100006354(buf, __dst);
  v7 = xpc::dyn_cast_or_default(__dst, 0, v6);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kCallSubType";
  sub_100006354(buf, __dst);
  v9 = xpc::dyn_cast_or_default(__dst, 1, v8);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kCallType";
  sub_100006354(buf, __dst);
  xpc::dyn_cast_or_default(__dst, 1, v10);
  xpc_release(*__dst);
  v265 = isEmergencyCall();
  *buf = info;
  *&buf[8] = "kCallSimSlot";
  sub_100006354(buf, __dst);
  v266 = xpc::dyn_cast_or_default(__dst, 1, v11);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kSupportsEmergencyFallback";
  sub_100006354(buf, __dst);
  v263 = xpc::dyn_cast_or_default(__dst, 0, v12);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kCallDirectionMobileOriginated";
  sub_100006354(buf, __dst);
  v258 = xpc::dyn_cast_or_default(__dst, 0, v13);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kCallStatus";
  sub_100006354(buf, __dst);
  v15 = xpc::dyn_cast_or_default(__dst, 0, v14);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kCallSubType";
  sub_100006354(buf, __dst);
  v259 = xpc::dyn_cast_or_default(__dst, 0, v16);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kCallType";
  sub_100006354(buf, __dst);
  xpc::dyn_cast_or_default(__dst, 1, v17);
  xpc_release(*__dst);
  HIDWORD(v251) = isEmergencyCall();
  LODWORD(v251) = isEmergencyCallNormalSetup();
  *buf = callInfo;
  *&buf[8] = "kCallSimSlot";
  sub_100006354(buf, __dst);
  v264 = xpc::dyn_cast_or_default(__dst, v266, v18);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kSupportsEmergencyFallback";
  sub_100006354(buf, __dst);
  v20 = xpc::dyn_cast_or_default(__dst, 0, v19);
  xpc_release(*__dst);
  v295 = 0;
  v296 = 0;
  v297 = 0;
  *__dst = info;
  *&__dst[8] = "kUuid";
  sub_100006354(__dst, &v292);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v292);
  v292 = 0;
  v293 = 0;
  v294 = 0;
  *__dst = callInfo;
  *&__dst[8] = "kUuid";
  sub_100006354(__dst, &fObj);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(fObj);
  *buf = callInfo;
  *&buf[8] = "kPendingInfoInitialization";
  sub_100006354(buf, __dst);
  v22 = xpc::dyn_cast_or_default(__dst, 0, v21);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kPendingInfoInitialization";
  sub_100006354(buf, __dst);
  v24 = xpc::dyn_cast_or_default(__dst, 0, v23);
  xpc_release(*__dst);
  if (v294 >= 0)
  {
    v25 = HIBYTE(v294);
  }

  else
  {
    v25 = v293;
  }

  v26 = HIBYTE(v297);
  if (v297 < 0)
  {
    v26 = v296;
  }

  if (v25 != v26)
  {
    v29 = 1;
    goto LABEL_21;
  }

  if (v294 >= 0)
  {
    v27 = &v292;
  }

  else
  {
    v27 = v292;
  }

  if (v297 >= 0)
  {
    v28 = &v295;
  }

  else
  {
    v28 = v295;
  }

  v268 = 1;
  if (!memcmp(v27, v28, v25) && (v15 != 9) | v258 & 1)
  {
    v29 = v22 & (v24 ^ 1);
LABEL_21:
    v268 = v29;
  }

  v261 = v7;
  v31 = v15 != 6 && v7 == 6;
  v255 = v31;
  v32 = objc_opt_new();
  v256 = v32;
  v267 = objc_opt_new();
  *buf = info;
  *&buf[8] = "kAudioToneRelayFlag";
  sub_100006354(buf, __dst);
  v34 = xpc::dyn_cast_or_default(__dst, 0, v33);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kAudioToneRelayFlag";
  sub_100006354(buf, __dst);
  v36 = xpc::dyn_cast_or_default(__dst, v34, v35);
  xpc_release(*__dst);
  v37 = v34 ^ v36;
  v257 = v268 ^ 1;
  if (v268)
  {
    v38 = v34;
  }

  else
  {
    v38 = v34 ^ v36;
  }

  if (v38 == 1)
  {
    v39 = *self->logger.__ptr_;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v34;
      *&buf[8] = 1024;
      *&buf[10] = v268 & v34;
      *&buf[14] = 1024;
      *&buf[16] = v257 & v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Updating requiresInCallSounds to %d. newCallAndclientShouldRelayTones: %d, sameCallAndRelayTonesFlagChanged: %d", buf, 0x14u);
    }

    [v32 setRequiresInCallSounds:{v34, v251}];
  }

  *buf = info;
  *&buf[8] = "kAudioToneStandard";
  sub_100006354(buf, __dst);
  v41 = xpc::dyn_cast_or_default(__dst, 0, v40);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kAudioToneStandard";
  sub_100006354(buf, __dst);
  v43 = xpc::dyn_cast_or_default(__dst, v41, v42);
  xpc_release(*__dst);
  if (v41 != v43)
  {
    if (v41 < 5)
    {
      v44 = v41 + 1;
    }

    else
    {
      v44 = 0;
    }

    v45 = *self->logger.__ptr_;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v44;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Updating inCallSoundRegion to %d", buf, 8u);
    }

    [v32 setInCallSoundRegion:{v44, v251}];
    v38 = 1;
  }

  *buf = info;
  *&buf[8] = "kCallerIdAvailability";
  sub_100006354(buf, __dst);
  v47 = xpc::dyn_cast_or_default(__dst, 0, v46);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kCallerIdAvailability";
  sub_100006354(buf, __dst);
  v49 = xpc::dyn_cast_or_default(__dst, 0, v48);
  xpc_release(*__dst);
  v50 = v268;
  if (v47 != v49)
  {
    v50 = 1;
  }

  if (v50 == 1)
  {
    v51 = *self->logger.__ptr_;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = asString();
      v53 = CSIBOOLAsString(v47 == 1);
      *buf = 136315394;
      *&buf[4] = v52;
      *&buf[12] = 2080;
      *&buf[14] = v53;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Updating 'blocked' property to %s with remote number availability: %s", buf, 0x16u);
    }

    [v32 setBlocked:v47 == 1];
    v38 = 1;
  }

  *buf = info;
  *&buf[8] = "CallLikelyToFail";
  sub_100006354(buf, __dst);
  v55 = xpc::dyn_cast_or_default(__dst, 0, v54);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "CallLikelyToFail";
  sub_100006354(buf, __dst);
  v57 = xpc::dyn_cast_or_default(__dst, 0, v56);
  xpc_release(*__dst);
  if (v55 != v57)
  {
    v58 = *self->logger.__ptr_;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Updating failureExpected because BB has notified us that the emergency call is likely to fail", buf, 2u);
    }

    [v32 setFailureExpected:{v55, v251}];
    v38 = 1;
  }

  if ((v268 | v263 ^ v20))
  {
    v59 = *self->logger.__ptr_;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = CSIBOOLAsString(v263);
      *buf = 136315138;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Updating emergency fallback support to %s", buf, 0xCu);
    }

    [v32 setSupportsEmergencyFallback:{v263, v251}];
    v38 = 1;
  }

  *buf = info;
  *&buf[8] = "kEmSubSwitchAudioOverride";
  sub_100006354(buf, __dst);
  v62 = xpc::dyn_cast_or_default(__dst, 0, v61);
  xpc_release(*__dst);
  if (v62)
  {
    v63 = v266;
    v64 = v264;
    v65 = v261;
    v67 = v266 != v264 || v261 == 4;
  }

  else
  {
    v67 = 0;
    v63 = v266;
    v64 = v264;
    v65 = v261;
  }

  v70 = v65 == 4 && v15 != 4 || v63 != v64;
  v71 = v268;
  if (v259 != v9)
  {
    v71 = 1;
  }

  if ((v71 & 1) != 0 || v67 || v70)
  {
    v72 = *self->logger.__ptr_;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = asString();
      *buf = 136315650;
      *&buf[4] = v73;
      *&buf[12] = 1024;
      *&buf[14] = v62;
      *&buf[18] = 1024;
      *&buf[20] = v70;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I Updating audio flags. Call subtype: %s. Override: %{BOOL}d. Dialing or sim slot changed: %{BOOL}d", buf, 0x18u);
    }

    v74 = [v32 setCallSubType:sub_100B2EDB0(v9)];
    v75 = sd::IMSSubscriberConfigInterface::APOnlyModeDefaultVal(v74);
    ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
    v77 = ServiceMap;
    if (v78 < 0)
    {
      v79 = (v78 & 0x7FFFFFFFFFFFFFFFLL);
      v80 = 5381;
      do
      {
        v78 = v80;
        v81 = *v79++;
        v80 = (33 * v80) ^ v81;
      }

      while (v81);
    }

    std::mutex::lock(ServiceMap);
    *buf = v78;
    v82 = sub_100009510(&v77[1].__m_.__sig, buf);
    if (v82)
    {
      v83 = v82[3];
      v84 = v82[4];
      if (v84)
      {
        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v77);
        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v84);
        v86 = 0;
        if (!v83)
        {
LABEL_90:
          if ((v86 & 1) == 0)
          {
            sub_100004A34(v84);
          }

          if (v266 == v264)
          {
            v87 = 0;
          }

          else
          {
            v87 = v62;
          }

          if (v87 == 1)
          {
            v88 = *self->logger.__ptr_;
            v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);
            v90 = 0;
            v32 = v256;
            if (v89)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I Force overriding NOT usingBaseband for emergency call with sub switch", buf, 2u);
              v90 = 0;
            }
          }

          else
          {
            v32 = v256;
            v90 = sd::IMSSubscriberConfigInterface::shouldUseAPMediaStack((v9 == 2), v75, v9 == 1, v85) ^ 1;
          }

          [v32 setUsingBaseband:{v90, v251}];
          v91 = *self->logger.__ptr_;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = CSIBOOLAsString([v32 isUsingBaseband]);
            *buf = 136315138;
            *&buf[4] = v92;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I Updating usingBaseband to %s", buf, 0xCu);
          }

          if (v265)
          {
            [v32 setSupportsDTMFUpdates:{-[TelephonyProviderDelegate supportDownlinkDtmf:usingBaseband:isCS:](self, "supportDownlinkDtmf:usingBaseband:isCS:", v266, objc_msgSend(v32, "isUsingBaseband"), v9 == 1)}];
            v93 = *self->logger.__ptr_;
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = CSIBOOLAsString([v32 supportsDTMFUpdates]);
              *buf = 136315138;
              *&buf[4] = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I Updating supportsDTMFUpdates to: %s", buf, 0xCu);
            }
          }

          [v32 setPrefersExclusiveAccessToCellularNetwork:v9 == 1];
          if (v9 == 16)
          {
            v95 = *self->logger.__ptr_;
            if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
LABEL_120:
              v38 = 1;
              goto LABEL_121;
            }

            *buf = 0;
            v96 = "#I Not updating audio category for emergency call with undecided subtype";
LABEL_107:
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 2u);
            goto LABEL_120;
          }

          if (v87)
          {
            v97 = *self->logger.__ptr_;
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v98 = 2;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I Force updating audio category to Wifi for emergency call with sub switch", buf, 2u);
              v75 = 0;
              isUsingBaseband = 0;
            }

            else
            {
              v75 = 0;
              isUsingBaseband = 0;
              v98 = 2;
            }
          }

          else
          {
            if (v261 == 3)
            {
              v100 = v62;
            }

            else
            {
              v100 = 0;
            }

            if (v100 == 1)
            {
              v95 = *self->logger.__ptr_;
              if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_120;
              }

              *buf = 0;
              v96 = "#I Force suppressing audio category update for emergency call with sub switch when call subtype changes during media init";
              goto LABEL_107;
            }

            isUsingBaseband = [v32 isUsingBaseband];
            v98 = v9;
          }

          [(TelephonyProviderDelegate *)self updateAudioCategory:v98 updateToUpdate:v32 apOnlyMode:v75 usingBaseband:isUsingBaseband];
          goto LABEL_120;
        }

LABEL_89:
        v75 = (*(*v83 + 288))(v83, v266);
        goto LABEL_90;
      }
    }

    else
    {
      v83 = 0;
    }

    std::mutex::unlock(v77);
    v84 = 0;
    v86 = 1;
    if (!v83)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_121:
  v251 = [NSString stringWithUTF8String:"kCallSubType", v251];
  v254 = [NSString stringWithUTF8String:convertPhoneCallSubTypeToPublicString()];
  [v267 setValue:? forKey:?];
  *buf = info;
  *&buf[8] = "kIsTTY";
  sub_100006354(buf, __dst);
  v102 = xpc::dyn_cast_or_default(__dst, 0, v101);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kIsTTY";
  sub_100006354(buf, __dst);
  v104 = xpc::dyn_cast_or_default(__dst, 0, v103);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kIsTTYWithVoiceSupported";
  sub_100006354(buf, __dst);
  v260 = xpc::dyn_cast_or_default(__dst, 1, v105);
  xpc_release(*__dst);
  v106 = v268;
  if (v102 != v104)
  {
    v106 = 1;
  }

  if (v106 == 1)
  {
    v107 = v9 != 1;
    v108 = *self->logger.__ptr_;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = TTYTypeAsString();
      *buf = 136315138;
      *&buf[4] = v109;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I Updating TTY type to %s", buf, 0xCu);
    }

    [v32 setTTYType:sub_100B2EDD8(v102)];
    [v32 setSupportsTTYWithVoice:v107 & v260];
    v38 = 1;
  }

  if (v255)
  {
    v110 = *self->logger.__ptr_;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "#I Updating call update context: disconnect cause code used for testing purpose only", buf, 2u);
    }

    *buf = info;
    *&buf[8] = "kDisconnectCauseCode";
    sub_100006354(buf, __dst);
    v112 = xpc::dyn_cast_or_default(__dst, 0, v111);
    xpc_release(*__dst);
    v113 = [NSString stringWithUTF8String:"kDisconnectCauseCode"];
    v114 = [NSNumber numberWithInt:v112];
    [v267 setValue:v114 forKey:v113];
    memset(__dst, 0, sizeof(__dst));
    v304 = 0;
    fObj = info.fObj.fObj;
    v290 = "kDisconnectCauseCodeString";
    sub_100006354(&fObj, &object);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    v115 = [NSString stringWithUTF8String:"kDisconnectCauseCodeString"];

    if (v304 >= 0)
    {
      v116 = __dst;
    }

    else
    {
      v116 = *__dst;
    }

    v117 = [NSString stringWithUTF8String:v116];
    [v267 setValue:v117 forKey:v115];
    *buf = info;
    *&buf[8] = "kBBCallDisconnectCause";
    sub_100006354(buf, &fObj);
    v119 = xpc::dyn_cast_or_default(&fObj, 0, v118);
    xpc_release(fObj);
    v120 = [NSString stringWithUTF8String:"kBBCallDisconnectCause"];

    v121 = [NSNumber numberWithInt:v119];

    [v267 setValue:v121 forKey:v120];
    if (SHIBYTE(v304) < 0)
    {
      operator delete(*__dst);
    }

    v38 = 1;
  }

  fObj = 0;
  v290 = 0;
  v291 = 0;
  *buf = info;
  *&buf[8] = "kCallName";
  sub_100006354(buf, __dst);
  xpc::dyn_cast_or_default(&fObj, __dst, "", v122);
  xpc_release(*__dst);
  object = 0;
  v287 = 0;
  v288 = 0;
  *buf = callInfo;
  *&buf[8] = "kCallName";
  sub_100006354(buf, __dst);
  xpc::dyn_cast_or_default(&object, __dst, "", v123);
  xpc_release(*__dst);
  v124 = SHIBYTE(v291);
  if (v291 >= 0)
  {
    v125 = HIBYTE(v291);
  }

  else
  {
    v125 = v290;
  }

  if (v125)
  {
    if (v268)
    {
      v126 = fObj;
LABEL_154:
      v130 = *self->logger.__ptr_;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        p_fObj = &fObj;
        if (v124 < 0)
        {
          p_fObj = v126;
        }

        *buf = 136315138;
        *&buf[4] = p_fObj;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I Updating callerName to %s", buf, 0xCu);
        LOBYTE(v124) = HIBYTE(v291);
        v126 = fObj;
      }

      if ((v124 & 0x80u) == 0)
      {
        v132 = &fObj;
      }

      else
      {
        v132 = v126;
      }

      v133 = [NSString stringWithUTF8String:v132];
      [v32 setLocalizedCallerName:v133];

      v38 = 1;
      goto LABEL_162;
    }

    v127 = HIBYTE(v288);
    if (v288 < 0)
    {
      v127 = v287;
    }

    v126 = fObj;
    if (v125 != v127)
    {
      goto LABEL_154;
    }

    v128 = v291 >= 0 ? &fObj : fObj;
    v129 = v288 >= 0 ? &object : object;
    if (memcmp(v128, v129, v125))
    {
      goto LABEL_154;
    }
  }

LABEL_162:
  v283 = 0;
  v284 = 0;
  v285 = 0;
  *__dst = info;
  *&__dst[8] = "kPhoneNumber";
  sub_100006354(__dst, &v280);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v280);
  v280 = 0;
  v281 = 0;
  v282 = 0;
  *__dst = callInfo;
  *&__dst[8] = "kPhoneNumber";
  sub_100006354(__dst, &v276);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v276);
  v134 = SHIBYTE(v285);
  if (v285 >= 0)
  {
    v135 = HIBYTE(v285);
  }

  else
  {
    v135 = v284;
  }

  if (v135)
  {
    if (v268)
    {
      v136 = v283;
LABEL_182:
      v140 = *self->logger.__ptr_;
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v141 = &v283;
        if (v134 < 0)
        {
          v141 = v136;
        }

        *buf = 136315138;
        *&buf[4] = v141;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "#I Updating caller id/phone number to %s", buf, 0xCu);
        LOBYTE(v134) = HIBYTE(v285);
        v136 = v283;
      }

      if ((v134 & 0x80u) == 0)
      {
        v142 = &v283;
      }

      else
      {
        v142 = v136;
      }

      v143 = [NSString stringWithUTF8String:v142];
      v144 = [[CXHandle alloc] initWithType:2 value:v143];
      [v32 setRemoteHandle:v144];

      if ((v265 & v252 & v263) == 1)
      {
        if (v285 >= 0)
        {
          v145 = HIBYTE(v285);
        }

        else
        {
          v145 = v284;
        }

        v146 = HIBYTE(v282);
        if (v282 < 0)
        {
          v146 = v281;
        }

        if (v145 == v146)
        {
          if (v285 >= 0)
          {
            v147 = &v283;
          }

          else
          {
            v147 = v283;
          }

          if (v282 >= 0)
          {
            v148 = &v280;
          }

          else
          {
            v148 = v280;
          }

          v149 = memcmp(v147, v148, v145) != 0;
        }

        else
        {
          v149 = 1;
        }
      }

      else
      {
        v149 = 0;
      }

      [v32 setHasBeenRedirected:v149];

      v38 = 1;
      goto LABEL_206;
    }

    v137 = HIBYTE(v282);
    if (v282 < 0)
    {
      v137 = v281;
    }

    v136 = v283;
    if (v135 != v137)
    {
      goto LABEL_182;
    }

    v138 = v285 >= 0 ? &v283 : v283;
    v139 = v282 >= 0 ? &v280 : v280;
    if (memcmp(v138, v139, v135))
    {
      goto LABEL_182;
    }
  }

LABEL_206:
  if ((v268 | v265 ^ v253))
  {
    *buf = info;
    *&buf[8] = "kSuspicious380Redirect";
    sub_100006354(buf, __dst);
    v151 = xpc::dyn_cast_or_default(__dst, 0, v150);
    xpc_release(*__dst);
    if ((v151 ^ 1 | v268 | v253))
    {
      [v32 setEmergency:(v151 ^ 1) & v265];
      v152 = *self->logger.__ptr_;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = CSIBOOLAsString([v32 isEmergency]);
        v154 = CSIBOOLAsString(v151);
        *buf = 136315394;
        *&buf[4] = v153;
        *&buf[12] = 2080;
        *&buf[14] = v154;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I Updating emergency to %s. suspicious: %s", buf, 0x16u);
      }

      v38 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    *__dst = info;
    *&__dst[8] = "kAudioStreamTokens";
    if (xpc_dictionary_get_value(*info.fObj.fObj, "kAudioStreamTokens"))
    {
      sub_100006354(__dst, buf);
      v155 = xpc_null_create();
      v156 = *buf;
      object1[0] = *buf;
      if (*buf && xpc_get_type(*buf) == &_xpc_type_array)
      {
        xpc_retain(v156);
        v157 = object1[0];
      }

      else
      {
        v157 = xpc_null_create();
        object1[0] = v157;
      }

      if (xpc_get_type(v157) != &_xpc_type_array)
      {
        if (v155)
        {
          xpc_retain(v155);
          v158 = v155;
        }

        else
        {
          v158 = xpc_null_create();
        }

        v159 = object1[0];
        object1[0] = v158;
        xpc_release(v159);
      }

      xpc_release(v155);
      xpc_release(*buf);
      v276 = callInfo.fObj.fObj;
      v277 = "kAudioStreamTokens";
      sub_100006354(&v276, buf);
      v160 = xpc_null_create();
      v161 = *buf;
      if (*buf && xpc_get_type(*buf) == &_xpc_type_array)
      {
        xpc_retain(v161);
      }

      else
      {
        v161 = xpc_null_create();
      }

      if (xpc_get_type(v161) != &_xpc_type_array)
      {
        if (v160)
        {
          xpc_retain(v160);
          v162 = v160;
        }

        else
        {
          v162 = xpc_null_create();
        }

        xpc_release(v161);
        v161 = v162;
      }

      xpc_release(v160);
      xpc_release(*buf);
      if (((v268 & 1) != 0 || !xpc_dictionary_get_value(*v276, v277) || !xpc_equal(object1[0], v161)) && xpc_get_type(object1[0]) == &_xpc_type_array && xpc_array_get_count(object1[0]) >= 3)
      {
        *buf = object1;
        *&buf[8] = 0;
        sub_100008EF0(buf, v279);
        v164 = xpc::dyn_cast_or_default(v279, 0, v163);
        xpc_release(v279[0]);
        *buf = object1;
        *&buf[8] = 1;
        sub_100008EF0(buf, v279);
        v166 = xpc::dyn_cast_or_default(v279, 0, v165);
        xpc_release(v279[0]);
        *buf = object1;
        *&buf[8] = 2;
        sub_100008EF0(buf, v279);
        v168 = xpc::dyn_cast_or_default(v279, 0, v167);
        xpc_release(v279[0]);
        v169 = *self->logger.__ptr_;
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v164;
          *&buf[8] = 1024;
          *&buf[10] = v166;
          *&buf[14] = 1024;
          *&buf[16] = v168;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "#I Updating audio stream token: %u, uplink: %u, downlink: %u", buf, 0x14u);
        }

        v170 = objc_opt_new();
        [v32 setCallTokens:v170];

        callTokens = [v32 callTokens];
        [callTokens setCombinedAudioStreamToken:v164];

        callTokens2 = [v32 callTokens];
        [callTokens2 setUplinkStreamToken:v166];

        callTokens3 = [v32 callTokens];
        [callTokens3 setDownlinkStreamToken:v168];

        v38 = 1;
      }

      xpc_release(v161);
      xpc_release(object1[0]);
    }
  }

  v279[0] = info.fObj.fObj;
  v279[1] = "kTextStreamToken";
  if (xpc_dictionary_get_value(*info.fObj.fObj, "kTextStreamToken"))
  {
    sub_100006354(v279, buf);
    v175 = xpc::dyn_cast_or_default(buf, 0, v174);
    xpc_release(*buf);
    *buf = callInfo;
    *&buf[8] = "kTextStreamToken";
    sub_100006354(buf, __dst);
    v177 = xpc::dyn_cast_or_default(__dst, 0, v176);
    xpc_release(*__dst);
    v178 = [NSString stringWithUTF8String:"kTextStreamToken"];
    v179 = [NSNumber numberWithInt:v175];
    [v267 setValue:v179 forKey:v178];
    if ((v268 & 1) != 0 || !xpc_dictionary_get_value(**buf, *&buf[8]) || v175 != v177)
    {
      v180 = *self->logger.__ptr_;
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 67109120;
        *&__dst[4] = v175;
        _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "#I Updating call update context: text stream token: %u", __dst, 8u);
      }

      v38 = 1;
    }

    *__dst = info;
    *&__dst[8] = "kIsTextHeldForRTTCall";
    sub_100006354(__dst, &v276);
    v182 = xpc::dyn_cast_or_default(&v276, 0, v181);
    xpc_release(v276);
    v183 = [NSString stringWithUTF8String:"kIsTextHeldForRTTCall"];
    v184 = [NSNumber numberWithBool:v182];
    [v267 setValue:v184 forKey:v183];
    *__dst = callInfo;
    *&__dst[8] = "kIsTextHeldForRTTCall";
    v276 = 0;
    v185 = sub_1001B1AB8(__dst);
    *__dst = callInfo;
    *&__dst[8] = "kIsTextHeldForRTTCall";
    sub_100006354(__dst, &v276);
    v187 = xpc::dyn_cast_or_default(&v276, 0, v186);
    xpc_release(v276);
    if (((v268 | v185) & 1) != 0 || v182 != v187)
    {
      v188 = *self->logger.__ptr_;
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 67109120;
        *&__dst[4] = v182;
        _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "#I Updating call update context: kIsTextHeldForRTTCall: %{BOOL}d", __dst, 8u);
      }

      v38 = 1;
    }

    v32 = v256;
  }

  *buf = info;
  *&buf[8] = "kVerstatEnabled";
  sub_100006354(buf, __dst);
  v190 = xpc::dyn_cast_or_default(__dst, 0, v189);
  xpc_release(*__dst);
  if (!v190)
  {
    [v32 setVerificationStatus:4];
    goto LABEL_279;
  }

  *buf = info;
  *&buf[8] = "kVerstatLevel";
  sub_100006354(buf, __dst);
  v192 = xpc::dyn_cast_or_default(__dst, 0, v191);
  xpc_release(*__dst);
  if (v192 != 1)
  {
    if (v192 == 2)
    {
      v193 = 2;
    }

    else
    {
      v193 = 3;
    }

    [v32 setVerificationStatus:v193];
    goto LABEL_279;
  }

  [v32 setVerificationStatus:1];
  memset(buf, 0, sizeof(buf));
  *__dst = info;
  *&__dst[8] = "kImagePath";
  sub_100006354(__dst, &v276);
  xpc::dyn_cast_or_default(buf, &v276, "", v194);
  xpc_release(v276);
  v195 = buf[23];
  v196 = buf[23];
  if ((buf[23] & 0x80u) != 0)
  {
    v195 = *&buf[8];
  }

  if (v195)
  {
    if (v268)
    {
      v197 = *self->logger.__ptr_;
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        v198 = *buf;
        if (v196 >= 0)
        {
          v198 = buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v198;
        _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "#I Updating caller image URL to %s", __dst, 0xCu);
        LOBYTE(v196) = buf[23];
      }

      if ((v196 & 0x80u) == 0)
      {
        v199 = buf;
      }

      else
      {
        v199 = *buf;
      }

      v200 = [NSString stringWithUTF8String:v199];
      v201 = [NSURL fileURLWithPath:v200];

      v202 = [[CXSandboxExtendedURL alloc] initWithURL:v201];
      [v32 setLocalizedCallerImageURL:v202];
    }

    else
    {
      if (!v255)
      {
        goto LABEL_277;
      }

      v203 = *self->logger.__ptr_;
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 136315138;
        *&__dst[4] = "/stock";
        _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "#I Updating caller image URL to %s", __dst, 0xCu);
      }

      v204 = [NSString stringWithUTF8String:"/stock"];
      v201 = [NSURL fileURLWithPath:v204];

      v202 = [[CXSandboxExtendedURL alloc] initWithURL:v201];
      [v32 setLocalizedCallerImageURL:v202];
    }

    v38 = 1;
  }

LABEL_277:
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_279:
  *buf = info;
  *&buf[8] = "kSpamRisk";
  sub_100006354(buf, __dst);
  v206 = xpc::dyn_cast_or_default(__dst, 0, v205);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kSpamRisk";
  sub_100006354(buf, __dst);
  v208 = xpc::dyn_cast_or_default(__dst, 0, v207);
  xpc_release(*__dst);
  *buf = info;
  *&buf[8] = "kSpamCategory";
  sub_100006354(buf, __dst);
  v210 = xpc::dyn_cast_or_default(__dst, 0, v209);
  xpc_release(*__dst);
  *buf = callInfo;
  *&buf[8] = "kSpamCategory";
  sub_100006354(buf, __dst);
  v212 = xpc::dyn_cast_or_default(__dst, 0, v211);
  xpc_release(*__dst);
  if (v206 == v208)
  {
    v213 = v268 ^ 1;
  }

  else
  {
    v213 = 0;
  }

  if (v213 != 1 || v210 != v212)
  {
    [v32 setJunkConfidence:v206];
    [v32 setIdentificationCategory:v210];
    v214 = *self->logger.__ptr_;
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      junkConfidence = [v32 junkConfidence];
      identificationCategory = [v32 identificationCategory];
      *buf = 134218240;
      *&buf[4] = junkConfidence;
      *&buf[12] = 2048;
      *&buf[14] = identificationCategory;
      _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "#I Updating junk confidence to %ld and category to %ld", buf, 0x16u);
    }

    v38 = 1;
  }

  if (((v257 | v258) & 1) == 0)
  {
    *buf = info;
    *&buf[8] = "kMarkMTCallWithHighPriority";
    sub_100006354(buf, __dst);
    v218 = xpc::dyn_cast_or_default(__dst, 0, v217);
    xpc_release(*__dst);
    v219 = *self->logger.__ptr_;
    if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
    {
      v220 = "Low";
      if (v218)
      {
        v220 = "High";
      }

      *buf = 136315138;
      *&buf[4] = v220;
      _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "#I Updating priority to %s for a new MT call.", buf, 0xCu);
    }

    if (v218)
    {
      v221 = 2;
    }

    else
    {
      v221 = 0;
    }

    [v32 setPriority:v221];
  }

  v222 = [(TelephonyProviderDelegate *)self getCallCapabilitiesUpdateForCall:v32 simSlot:v266 isEmergency:v265 supportsTextWithVoiceForCall:v260];

  v223 = v222;
  if ([v222 supportsUngrouping])
  {
    *buf = callInfo;
    *&buf[8] = "kIsSplitAllowed";
    sub_100006354(buf, __dst);
    supportsUngrouping = [v222 supportsUngrouping];
    v226 = xpc::dyn_cast_or_default(__dst, supportsUngrouping, v225);
    xpc_release(*__dst);
    *buf = info;
    *&buf[8] = "kIsSplitAllowed";
    sub_100006354(buf, __dst);
    supportsUngrouping2 = [v222 supportsUngrouping];
    v229 = xpc::dyn_cast_or_default(__dst, supportsUngrouping2, v228);
    xpc_release(*__dst);
    if (v226 != v229)
    {
      v230 = *self->logger.__ptr_;
      if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
      {
        v231 = CSIBOOLAsString(v229);
        *buf = 136315138;
        *&buf[4] = v231;
        _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "#I Updating supportsUngrouping to %s", buf, 0xCu);
      }

      [v223 setSupportsUngrouping:v229];
      v232 = v266;
      if (v266 == v264)
      {
        v233 = v268;
      }

      else
      {
        v233 = 1;
      }

      if (v233 != 1)
      {
        goto LABEL_354;
      }

LABEL_309:
      v276 = 0;
      v277 = 0;
      v278 = 0;
      selfCopy2 = self;
      PersonalityIdFromSlotIdEx();
      v236 = [[NSUUID alloc] initWithUUIDString:&stru_101F6AFB8];
      uuid = 0;
      UuidFromPersonalityId();
      *buf = 0;
      v237 = uuid;
      sub_1000475BC(buf);
      if (v237)
      {
        *buf = 0;
        *buf = CFUUIDCreateString(0, uuid);
        v238 = *buf;
        if (v238)
        {
          v239 = [[NSUUID alloc] initWithUUIDString:v238];

          v236 = v239;
        }

        else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
        {
          sub_101763700();
        }

        sub_100005978(buf);
      }

      else
      {
        if (!os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
        {
LABEL_320:
          v241 = *selfCopy2->logger.__ptr_;
          if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
          {
            v242 = subscriber::asString();
            v243 = HIBYTE(v278);
            if (v278 < 0)
            {
              v243 = v277;
            }

            v244 = &v276;
            if (v278 < 0)
            {
              v244 = v276;
            }

            *buf = 136315650;
            if (v243)
            {
              v245 = v244;
            }

            else
            {
              v245 = "<invalid>";
            }

            *&buf[4] = v242;
            *&buf[12] = 2080;
            *&buf[14] = v245;
            *&buf[22] = 2112;
            v302 = v236;
            _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_DEFAULT, "#I Updating local sender identity UUID for sim slot %s with PersonalityID %s to %@", buf, 0x20u);
          }

          [v223 setLocalSenderIdentityUUID:v236];
          object1[0] = 0;
          object1[1] = 0;
          v274 = 0;
          [(TelephonyProviderDelegate *)selfCopy2 getiSOCountryCodeForCurrentLocation:v232];
          v246 = *selfCopy2->logger.__ptr_;
          if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            v247 = object1;
            if (v274 < 0)
            {
              v247 = object1[0];
            }

            *buf = 136446210;
            *&buf[4] = v247;
            _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "#I Updating ISO country code to '%{public}s'", buf, 0xCu);
          }

          v272 = 0;
          if (SHIBYTE(v274) < 0)
          {
            sub_100005F2C(__p, object1[0], object1[1]);
          }

          else
          {
            *__p = *object1;
            v271 = v274;
          }

          if (SHIBYTE(v271) < 0)
          {
            sub_100005F2C(__dst, __p[0], __p[1]);
          }

          else
          {
            *__dst = *__p;
            v304 = v271;
          }

          v298 = 0;
          if (SHIBYTE(v304) < 0)
          {
            sub_100005F2C(buf, *__dst, *&__dst[8]);
          }

          else
          {
            *buf = *__dst;
            *&buf[16] = v304;
          }

          v299 = 0;
          if (ctu::cf::convert_copy())
          {
            v248 = v298;
            v298 = v299;
            v300 = v248;
            sub_100005978(&v300);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          v272 = v298;
          v298 = 0;
          sub_100005978(&v298);
          if (SHIBYTE(v304) < 0)
          {
            operator delete(*__dst);
          }

          if (SHIBYTE(v271) < 0)
          {
            operator delete(__p[0]);
          }

          v249 = v272;
          [v223 setISOCountryCode:v249];

          sub_100005978(&v272);
          if (SHIBYTE(v274) < 0)
          {
            operator delete(object1[0]);
          }

          sub_1000475BC(&uuid);

          if (SHIBYTE(v278) < 0)
          {
            operator delete(v276);
          }

          goto LABEL_354;
        }

        sub_101763784();
      }

      selfCopy2 = self;
      v232 = v266;
      goto LABEL_320;
    }
  }

  v232 = v266;
  if (v266 == v264)
  {
    v234 = v268;
  }

  else
  {
    v234 = 1;
  }

  if (v234)
  {
    goto LABEL_309;
  }

  if (!v38)
  {
    v240 = 0;
    goto LABEL_355;
  }

LABEL_354:
  [v223 setContext:v267];
  v240 = v223;
LABEL_355:
  if (SHIBYTE(v282) < 0)
  {
    operator delete(v280);
  }

  if (SHIBYTE(v285) < 0)
  {
    operator delete(v283);
  }

  if (SHIBYTE(v288) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v291) < 0)
  {
    operator delete(fObj);
  }

  if (SHIBYTE(v294) < 0)
  {
    operator delete(v292);
  }

  if (SHIBYTE(v297) < 0)
  {
    operator delete(v295);
  }

  return v240;
}

- (void)updateAudioCategory:(unsigned __int8)category updateToUpdate:(id)update apOnlyMode:(BOOL)mode usingBaseband:(BOOL)baseband
{
  modeCopy = mode;
  categoryCopy = category;
  updateCopy = update;
  if (!qword_101FBA060)
  {
    v11 = sub_1002CACA0();
    v12 = qword_101FBA060;
    qword_101FBA060 = v11;
  }

  if (!qword_101FBA068)
  {
    v13 = sub_1002CACA0();
    v14 = qword_101FBA068;
    qword_101FBA068 = v13;
  }

  if (categoryCopy == 2 || modeCopy && (categoryCopy == 8 || categoryCopy == 4))
  {
    v15 = *self->logger.__ptr_;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Updating audio flags for voice over AP", buf, 2u);
    }

    if (!qword_101FBA070)
    {
      v16 = sub_1002CACA0();
      v17 = qword_101FBA070;
      qword_101FBA070 = v16;
    }

    [updateCopy setAudioCategory:?];
    if ((categoryCopy == 8 || categoryCopy == 4) && modeCopy && sub_10007AEAC(self->fStoredSwitchUseIbisMode.__ptr_, 0) == 1)
    {
      v18 = &qword_101FBA068;
    }

    else
    {
      v18 = &qword_101FBA060;
    }

    [updateCopy setAudioMode:*v18];
    [updateCopy setAudioInterruptionProvider:1];
    [updateCopy setAudioInterruptionOperationMode:1];
  }

  else
  {
    v19 = *self->logger.__ptr_;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Updating audio flags for voice over BB", v24, 2u);
    }

    if (!qword_101FBA078)
    {
      v20 = sub_1002CACA0();
      v21 = qword_101FBA078;
      qword_101FBA078 = v20;
    }

    [updateCopy setAudioCategory:?];
    [updateCopy setAudioMode:0];
    [updateCopy setAudioInterruptionProvider:0];
  }

  if (!baseband && _os_feature_enabled_impl())
  {
    v22 = *self->logger.__ptr_;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Force updating audio mode to VoiceChat", v23, 2u);
    }

    [updateCopy setAudioMode:qword_101FBA060];
  }
}

- (id)getCallCapabilitiesUpdateForCall:(id)call simSlot:(int)slot isEmergency:(BOOL)emergency supportsTextWithVoiceForCall:(BOOL)forCall
{
  forCallCopy = forCall;
  callCopy = call;
  left = self->fCallCapabilities.fValue.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  p_end_node = &self->fCallCapabilities.fValue.__tree_.__end_node_;
  do
  {
    if (SLODWORD(left[4].__left_) >= slot)
    {
      p_end_node = left;
    }

    left = left[SLODWORD(left[4].__left_) < slot].__left_;
  }

  while (left);
  if (p_end_node == &self->fCallCapabilities.fValue.__tree_.__end_node_ || SLODWORD(p_end_node[4].__left_) > slot)
  {
LABEL_8:
    v13 = *self->logger.__ptr_;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = subscriber::asString();
      sub_101763808(v14, buf, v13);
    }

    v15 = callCopy;
    goto LABEL_11;
  }

  v17 = p_end_node[5].__left_;
  v36 = v17;
  if (v17)
  {
    xpc_retain(v17);
    if (callCopy)
    {
      goto LABEL_16;
    }

LABEL_19:
    callCopy = objc_opt_new();
    if (emergency)
    {
      goto LABEL_17;
    }

LABEL_20:
    *buf = &v36;
    *&buf[8] = kSwappableKey;
    sub_100006354(buf, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v19);
    goto LABEL_21;
  }

  v36 = xpc_null_create();
  if (!callCopy)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (!emergency)
  {
    goto LABEL_20;
  }

LABEL_17:
  v18 = 0;
LABEL_21:
  [callCopy setSupportsHolding:v18];
  if (!emergency)
  {
    xpc_release(object);
  }

  *buf = &v36;
  *&buf[8] = kMergeableKey;
  sub_100006354(buf, &v34);
  [callCopy setSupportsGrouping:{xpc::dyn_cast_or_default(&v34, 0, v20)}];
  xpc_release(v34);
  *buf = &v36;
  *&buf[8] = kIsConferenceSideBarBlockedKey;
  sub_100006354(buf, &v34);
  [callCopy setSupportsUngrouping:{xpc::dyn_cast_or_default(&v34, 0, v21) ^ 1}];
  xpc_release(v34);
  *buf = &v36;
  *&buf[8] = kDTMFSupportedKey;
  sub_100006354(buf, &v34);
  [callCopy setSupportsDTMF:{xpc::dyn_cast_or_default(&v34, 0, v22)}];
  xpc_release(v34);
  *buf = &v36;
  *&buf[8] = kAddCallAllowedKey;
  sub_100006354(buf, &v34);
  [callCopy setSupportsAddCall:{xpc::dyn_cast_or_default(&v34, 0, v23)}];
  xpc_release(v34);
  [callCopy setSupportsSendingToVoicemail:sub_100B2EC00(&self->fRegistry.__ptr_)];
  *buf = &v36;
  *&buf[8] = "kSupportsRTT";
  sub_100006354(buf, &v34);
  v25 = xpc::dyn_cast_or_default(&v34, 0, v24);
  xpc_release(v34);
  if (v25)
  {
    if (!forCallCopy)
    {
      v26 = *self->logger.__ptr_;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = asStringBool(0);
        v28 = asStringBool(1);
        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I RTT capability dropped for call: %s [original: %s]", buf, 0x16u);
      }
    }
  }

  [callCopy setSupportsTTYWithVoice:forCallCopy & v25];
  *buf = &v36;
  *&buf[8] = kAmbiguousMultiPartyKey;
  sub_100006354(buf, &v34);
  [callCopy setSupportsUnambiguousMultiPartyState:{xpc::dyn_cast_or_default(&v34, 0, v29) ^ 1}];
  xpc_release(v34);
  supportsUnambiguousMultiPartyState = [callCopy supportsUnambiguousMultiPartyState];
  if (supportsUnambiguousMultiPartyState)
  {
    *buf = &v36;
    *&buf[8] = kEndAndAnswerAllowedKey;
    sub_100006354(buf, &v34);
    supportsUnambiguousMultiPartyState2 = [callCopy supportsUnambiguousMultiPartyState];
    v33 = xpc::dyn_cast_or_default(&v34, supportsUnambiguousMultiPartyState2, v32);
  }

  else
  {
    v33 = 0;
  }

  [callCopy setSupportsUnambiguousMultiPartyState:v33];
  if (supportsUnambiguousMultiPartyState)
  {
    xpc_release(v34);
  }

  v15 = callCopy;
  xpc_release(v36);
LABEL_11:

  return v15;
}

- (BOOL)possiblyFulfillUnexpectedMOStartCallWithProvider:(id)provider transactions:(id)transactions
{
  providerCopy = provider;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  transactionsCopy = transactions;
  obj = [transactionsCopy actions];
  v5 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v5)
  {
LABEL_58:
    v44 = 0;
    goto LABEL_59;
  }

  v49 = *v67;
  v50 = v5;
  v6 = 9;
LABEL_3:
  v53 = 0;
  while (1)
  {
    if (*v67 != v49)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v66 + 1) + 8 * v53);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      [(TelephonyProviderDelegate *)self getCurrentCalls];
      v9 = v64;
      if (v63 != v64)
      {
        v52 = 0;
        v10 = v63 + 8;
        while (1)
        {
          v11 = *(v10 - 8);
          if (v11)
          {
            xpc_retain(*(v10 - 8));
            v62 = v11;
          }

          else
          {
            v11 = xpc_null_create();
            v62 = v11;
            if (!v11)
            {
              v11 = 0;
              v62 = xpc_null_create();
              goto LABEL_13;
            }
          }

          xpc_retain(v11);
LABEL_13:
          __p[0] = 0;
          __p[1] = 0;
          v61 = 0;
          v58[0] = &v62;
          v58[1] = "kUuid";
          sub_100006354(v58, &object);
          memset(buf, 0, sizeof(buf));
          xpc::dyn_cast_or_default();
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          xpc_release(object);
          if (v61 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v13 = [NSString stringWithUTF8String:v12];
          callUUID = [v8 callUUID];
          uUIDString = [callUUID UUIDString];
          v16 = [v13 isEqualToString:uUIDString];

          if (v16 && (*buf = &v62, *&buf[8] = "kCallStatus", sub_100006354(buf, v58), v6 = xpc::dyn_cast_or_default(v58, 0, v17), xpc_release(v58[0]), *buf = &v62, *&buf[8] = "kCallDirectionMobileOriginated", sub_100006354(buf, v58), v19 = xpc::dyn_cast_or_default(v58, 0, v18), xpc_release(v58[0]), v19) && v6 <= 7 && ((1 << v6) & 0x9C) != 0)
          {
            v20 = 1;
            v52 = 1;
          }

          else
          {
            v20 = 0;
          }

          if (SHIBYTE(v61) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(v62);
          xpc_release(v11);
          if (v10 == v9)
          {
            v21 = 1;
          }

          else
          {
            v21 = v20;
          }

          v10 += 8;
          if (v21)
          {
            goto LABEL_33;
          }
        }
      }

      v52 = 0;
LABEL_33:
      *buf = &v63;
      sub_1000B2DB4(buf);

      if (v52)
      {
        break;
      }
    }

    if (++v53 == v50)
    {
      v50 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (!v50)
      {
        goto LABEL_58;
      }

      goto LABEL_3;
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [transactionsCopy actions];
  v22 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v22)
  {
    v23 = v6 - 5;
    v24 = *v55;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
          if ([v27 isComplete])
          {

            goto LABEL_58;
          }

          v28 = +[NSDate date];
          if (v23 <= 0xFFFFFFFC)
          {
            v29 = *self->logger.__ptr_;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              callUUID2 = [v27 callUUID];
              *buf = 138412290;
              *&buf[4] = callUUID2;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Report call %@ Outgoing: Unexpected MO dialed call is not in Dialing or WaitingToDial state", buf, 0xCu);
            }

            callUUID3 = [v27 callUUID];
            [providerCopy reportOutgoingCallWithUUID:callUUID3 sentInvitationAtDate:v28];
          }

          v32 = *self->logger.__ptr_;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            v35 = v34;
            uTF8String = [v34 UTF8String];
            uUID = [v27 UUID];
            *buf = 136315394;
            *&buf[4] = uTF8String;
            *&buf[12] = 2112;
            *&buf[14] = uUID;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling %s %@: call already exists (likely Unexpected MO call)", buf, 0x16u);
          }

          [v27 fulfillWithDateStarted:v28];
        }

        else
        {
          v38 = *self->logger.__ptr_;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            v41 = v40;
            uTF8String2 = [v40 UTF8String];
            uUID2 = [v26 UUID];
            *buf = 136315394;
            *&buf[4] = uTF8String2;
            *&buf[12] = 2112;
            *&buf[14] = uUID2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Auto fulfilling %s %@: one action in this transaction is a StartCallAction for Unexpected MO", buf, 0x16u);
          }

          [v26 fulfill];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v44 = 1;
LABEL_59:

  return v44;
}

- (BOOL)doesHeldUnHeldcallAlreadyExist:(id)exist
{
  existCopy = exist;
  memset(v6, 0, sizeof(v6));
  [(TelephonyProviderDelegate *)self getCurrentCalls];
  __p = v6;
  sub_1000B2DB4(&__p);

  return 0;
}

- (BOOL)possiblyFulfillUnexpectedHoldCallWithProvider:(id)provider transactions:(id)transactions
{
  transactionsCopy = transactions;
  actions = [transactionsCopy actions];
  v7 = [actions count];

  if (v7 == 1)
  {
    actions2 = [transactionsCopy actions];
    v9 = [actions2 objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [(TelephonyProviderDelegate *)self doesHeldUnHeldcallAlreadyExist:v10];
      if (v11)
      {
        v12 = *self->logger.__ptr_;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          uTF8String = [v14 UTF8String];
          v16 = CSIBOOLAsString([v10 isOnHold]);
          uUID = [v10 UUID];
          v19 = 136315650;
          v20 = uTF8String;
          v21 = 2080;
          v22 = v16;
          v23 = 2112;
          v24 = uUID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling %s(%s) %@: existing Active/Held call (likely unexpected hold call)", &v19, 0x20u);
        }

        [v10 fulfill];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (TelephonyProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->fCallCapabilities.fValue.__tree_.__end_node_.__left_ = 0;
  *&self->logger.__ptr_ = 0u;
  self->fRegistry = 0u;
  *&self->fRestModule.__ptr_ = 0u;
  *(&self->fBasebandOnlineAssertion + 4) = 0u;
  *&self->fCurrentCallsCopy.__begin_ = 0u;
  *&self->fCurrentCallsCopy.__cap_ = 0u;
  *&self->fCurrentCalls.fValue.__end_ = 0u;
  self->fStoredSwitchUseIbisMode.__ptr_ = 0;
  self->fCallCapabilities.fValue.__tree_.__begin_node_ = &self->fCallCapabilities.fValue.__tree_.__end_node_;
  self->fEmergencyNumbers.fValue.__tree_.__end_node_.__left_ = 0;
  self->fCallCapabilities.fValue.__tree_.__size_ = 0;
  self->fEmergencyNumbers.fValue.__tree_.__begin_node_ = &self->fEmergencyNumbers.fValue.__tree_.__end_node_;
  self->fDisambiguationEmergencyNumbers.fValue.__tree_.__end_node_.__left_ = 0;
  self->fEmergencyNumbers.fValue.__tree_.__size_ = 0;
  self->fDisambiguationEmergencyNumbers.fValue.__tree_.__begin_node_ = &self->fDisambiguationEmergencyNumbers.fValue.__tree_.__end_node_;
  self->fExcludedNumbers.fValue.__tree_.__size_ = 0;
  self->fExcludedNumbers.fValue.__tree_.__end_node_.__left_ = 0;
  self->fDisambiguationEmergencyNumbers.fValue.__tree_.__size_ = 0;
  self->fExcludedNumbers.fValue.__tree_.__begin_node_ = &self->fExcludedNumbers.fValue.__tree_.__end_node_;
  sub_1001A9278(&self->fCallFrequencyData);
  self->fThumperHandoffAllowed.fValue.__tree_.__begin_node_ = &self->fThumperHandoffAllowed.fValue.__tree_.__end_node_;
  self->fThumperHandoffAllowed.fValue.__tree_.__end_node_.__left_ = 0;
  self->fVoWiFiProv.fValue.__tree_.__end_node_.__left_ = 0;
  self->fVoWiFiProv.fValue.__tree_.__size_ = 0;
  self->fThumperHandoffAllowed.fValue.__tree_.__size_ = 0;
  self->fVoWiFiProv.fValue.__tree_.__begin_node_ = &self->fVoWiFiProv.fValue.__tree_.__end_node_;
  self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__end_node_.__left_ = 0;
  self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__size_ = 0;
  self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__begin_node_ = &self->fSubscriptionInfo.fValue.fSubscriptions.__tree_.__end_node_;
  *&self->fActiveSubscriptions.fValue.fSubscriptions.__begin_ = 0u;
  *&self->fActiveSubscriptions.fValue.fSubscriptions.__cap_ = 0u;
  *&self->fActiveSubscriptions.fValue.fExistingUserSubscriptions.__end_ = 0u;
  self->fLastVisibleMCC.fValue.__tree_.__begin_node_ = &self->fLastVisibleMCC.fValue.__tree_.__end_node_;
  self->fLastVisibleMCC.fValue.__tree_.__end_node_.__left_ = 0;
  self->fLastKnownHomePlmn.fValue.__tree_.__end_node_.__left_ = 0;
  self->fLastKnownHomePlmn.fValue.__tree_.__size_ = 0;
  self->fLastVisibleMCC.fValue.__tree_.__size_ = 0;
  self->fLastKnownHomePlmn.fValue.__tree_.__begin_node_ = &self->fLastKnownHomePlmn.fValue.__tree_.__end_node_;
  return self;
}

@end