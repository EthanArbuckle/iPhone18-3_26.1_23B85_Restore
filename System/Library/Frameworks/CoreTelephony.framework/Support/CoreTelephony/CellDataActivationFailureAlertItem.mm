@interface CellDataActivationFailureAlertItem
- (CellDataActivationFailureAlertItem)initWithErrorCode:(int)code reason:(id)reason additionalData:(dict)data suggestWiFi:(BOOL)fi cellularDataOn:(BOOL)on wifiOn:(BOOL)wifiOn isSatelliteSystem:(BOOL)system isStewieActive:(BOOL)self0 registry:(shared_ptr<const Registry>)self1 logger:(const void *)self2;
- (id).cxx_construct;
- (void)button_config:(BOOL)button_config;
- (void)dealloc;
- (void)show;
@end

@implementation CellDataActivationFailureAlertItem

- (CellDataActivationFailureAlertItem)initWithErrorCode:(int)code reason:(id)reason additionalData:(dict)data suggestWiFi:(BOOL)fi cellularDataOn:(BOOL)on wifiOn:(BOOL)wifiOn isSatelliteSystem:(BOOL)system isStewieActive:(BOOL)self0 registry:(shared_ptr<const Registry>)self1 logger:(const void *)self2
{
  v51.receiver = self;
  v51.super_class = CellDataActivationFailureAlertItem;
  v18 = [(CellDataActivationFailureAlertItem *)&v51 init];
  v19 = v18;
  if (!v18)
  {
    return v19;
  }

  v21 = *registry.__ptr_;
  v20 = *(registry.__ptr_ + 1);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v18->fRegistry.__cntrl_;
  v19->fRegistry.__ptr_ = v21;
  v19->fRegistry.__cntrl_ = v20;
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }

  v19->fLogger = registry.__cntrl_;
  v19->_error = code;
  v19->_suggestWiFi = fi;
  if (reason)
  {
    v23 = [reason copy];
  }

  else
  {
    v23 = 0;
  }

  v19->_reason = v23;
  v24 = *data.fObj.fObj;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v24 = xpc_null_create();
  }

  fObj = v19->_additionalData.fObj.fObj;
  v19->_additionalData.fObj.fObj = v24;
  xpc_release(fObj);
  v19->_settingsText = 0;
  ptr = v19->fRegistry.__ptr_;
  v27 = v19->fRegistry.__cntrl_;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19->_okText = sub_10132C6F4(ptr, v27, @"OK", @"OK");
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (!system && !active)
  {
    v28 = !on || wifiOn;
    v29 = v19->fRegistry.__ptr_;
    v30 = v19->fRegistry.__cntrl_;
    if (v28)
    {
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = sub_10132C6F4(v29, v30, @"EDGE_OFF_FAILURE_TITLE", @"Cellular Data is Turned Off");
    }

    else
    {
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = sub_10132C6F4(v29, v30, @"EDGE_OFF_FAILURE_TITLE_CELLULAR_DATA_ON", @"Cellular Data is not available");
    }

    v19->_title = v31;
    if (v30)
    {
      sub_100004A34(v30);
    }

    ServiceMap = Registry::getServiceMap(v19->fRegistry.__ptr_);
    v38 = ServiceMap;
    if ((v39 & 0x8000000000000000) != 0)
    {
      v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v41 = 5381;
      do
      {
        v39 = v41;
        v42 = *v40++;
        v41 = (33 * v41) ^ v42;
      }

      while (v42);
    }

    std::mutex::lock(ServiceMap);
    v52 = v39;
    v43 = sub_100009510(&v38[1].__m_.__sig, &v52);
    if (v43)
    {
      v44 = v43[3];
      v35 = v43[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v38);
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v35);
        v45 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v44 = 0;
    }

    std::mutex::unlock(v38);
    v35 = 0;
    v45 = 1;
LABEL_49:
    v47 = (*(*v44 + 152))(v44);
    v48 = v19->fRegistry.__ptr_;
    v49 = v19->fRegistry.__cntrl_;
    if (v47)
    {
      if (v28)
      {
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = sub_10132C6F4(v48, v49, @"EDGE_OFF_FAILURE_BODY_WLAN", @"Turn on cellular data or Use WLAN to access data.");
      }

      else
      {
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = sub_10132C6F4(v48, v49, @"EDGE_OFF_FAILURE_BODY_WLAN_CELLULAR_DATA_ON", @"Use WLAN to access data.");
      }
    }

    else if (v28)
    {
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = sub_10132C6F4(v48, v49, @"EDGE_OFF_FAILURE_BODY", @"Turn on cellular data or use Wi-Fi to access data.");
    }

    else
    {
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = sub_10132C6F4(v48, v49, @"EDGE_OFF_FAILURE_BODY_CELLULAR_DATA_ON", @"Use Wi-Fi to access data.");
    }

    v19->_body = v50;
    if (v49)
    {
      sub_100004A34(v49);
    }

    if (v45)
    {
      return v19;
    }

LABEL_45:
    sub_100004A34(v35);
    return v19;
  }

  v32 = v19->fRegistry.__ptr_;
  v33 = v19->fRegistry.__cntrl_;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19->_title = sub_10132C6F4(v32, v33, @"EDGE_OFF_FAILURE_TITLE_CELLULAR_DATA_ON", @"Cellular Data is not available");
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = v19->fRegistry.__ptr_;
  v35 = v19->fRegistry.__cntrl_;
  if (active)
  {
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = sub_10132C760(v34, v35, kBifrostLocalizationTable, @"BIFROST_CELLULAR_DATA_NOT_AVAILABLE", @"Cellular data is not available for this app when connected to satellite.");
  }

  else
  {
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = sub_10132C760(v34, v35, kBifrostLocalizationTable, @"BIFROST_CELLULAR_DATA_NOT_AVAILABLE_CARRIER_NETWORK", @"Cellular data is not available for this app using the satellite network provided by your carrier.");
  }

  v19->_body = v36;
  if (v35)
  {
    goto LABEL_45;
  }

  return v19;
}

- (void)dealloc
{
  reason = self->_reason;
  if (reason)
  {
  }

  settingsText = self->_settingsText;
  if (settingsText)
  {
  }

  okText = self->_okText;
  if (okText)
  {
  }

  body = self->_body;
  if (body)
  {
  }

  title = self->_title;
  if (title)
  {
  }

  v8.receiver = self;
  v8.super_class = CellDataActivationFailureAlertItem;
  [(CellDataActivationFailureAlertItem *)&v8 dealloc];
}

- (void)button_config:(BOOL)button_config
{
  button_configCopy = button_config;
  ptr = self->fRegistry.__ptr_;
  cntrl = self->fRegistry.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v7 = sub_10132C6F4(ptr, cntrl, @"EDGE_FAILURE", self->_title);
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }

  [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 0];
  if (xpc_get_type(self->_additionalData.fObj.fObj) == &_xpc_type_dictionary && xpc_dictionary_get_value(self->_additionalData.fObj.fObj, kDataActivateFailureReasonKey))
  {
    v142 = 0uLL;
    sub_10006C5D0(&v142);
    __s1[0] = 0;
    __s1[1] = 0;
    v141 = 0;
    cf[0] = &self->_additionalData;
    cf[1] = kDataActivateFailureReasonKey;
    sub_100006354(cf, &object);
    p_additionalData = 0;
    v144 = 0;
    v145 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v145) < 0)
    {
      operator delete(p_additionalData);
    }

    xpc_release(object);
    v18 = self->fRegistry.__ptr_;
    v19 = self->fRegistry.__cntrl_;
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    v7 = sub_10132C6F4(v18, v19, @"Cellular Data Plan", 0);
    if (v19)
    {
      sub_100004A34(v19);
    }

    cf[0] = 0;
    p_additionalData = &self->_additionalData;
    v144 = "DataPlanCsn";
    sub_100006354(&p_additionalData, &v137);
    xpc::bridge(&object, &v137, v20);
    sub_1001B1A54(cf, &object);
    sub_10000A1EC(&object);
    xpc_release(v137);
    object = 0;
    p_additionalData = &self->_additionalData;
    v144 = "DataPlanUrl";
    sub_100006354(&p_additionalData, &v136);
    xpc::bridge(&v137, &v136, v21);
    sub_100060DE8(&object, &v137);
    sub_10000A1EC(&v137);
    xpc_release(v136);
    v137 = 0;
    p_additionalData = &self->_additionalData;
    v144 = "DataPlanIccid";
    sub_100006354(&p_additionalData, &v135);
    xpc::bridge(&v136, &v135, v22);
    sub_100060DE8(&v137, &v136);
    sub_10000A1EC(&v136);
    xpc_release(v135);
    v23 = v142;
    if (v142)
    {
      if (SHIBYTE(v141) < 0)
      {
        sub_100005F2C(__p, __s1[0], __s1[1]);
      }

      else
      {
        *__p = *__s1;
        v134 = v141;
      }

      (*(*v23 + 80))(v23, __p);
      if (SHIBYTE(v134) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v45 = strlen(kDataActivateFailureReasonDataPlanExpiredSequoia);
    v46 = v45;
    v47 = SHIBYTE(v141);
    if ((SHIBYTE(v141) & 0x8000000000000000) != 0)
    {
      if (v45 != __s1[1])
      {
        goto LABEL_101;
      }

      if (v45 == -1)
      {
        sub_10013C334();
      }

      v48 = __s1[0];
    }

    else
    {
      if (v45 != SHIBYTE(v141))
      {
        goto LABEL_101;
      }

      v48 = __s1;
    }

    if (!memcmp(v48, kDataActivateFailureReasonDataPlanExpiredSequoia, v46))
    {
      v61 = self->fRegistry.__ptr_;
      v62 = self->fRegistry.__cntrl_;
      if (v62)
      {
        atomic_fetch_add_explicit(v62 + 1, 1uLL, memory_order_relaxed);
      }

      v7 = sub_10132C6F4(v61, v62, @"No Cellular Data Remaining", 0);
      if (v62)
      {
        sub_100004A34(v62);
      }

      v63 = self->fRegistry.__ptr_;
      v64 = self->fRegistry.__cntrl_;
      if (v64)
      {
        atomic_fetch_add_explicit(v64 + 1, 1uLL, memory_order_relaxed);
      }

      v40 = sub_10132C6F4(v63, v64, @"There is no data remaining on your current plan. You can add more data now, or do it later in Settings.", 0);
      if (v64)
      {
        sub_100004A34(v64);
      }

      v65 = self->fRegistry.__ptr_;
      v66 = self->fRegistry.__cntrl_;
      if (v66)
      {
        atomic_fetch_add_explicit(v66 + 1, 1uLL, memory_order_relaxed);
      }

      v67 = sub_10132C6F4(v65, v66, @"Add Data", 0);
      if (v66)
      {
        sub_100004A34(v66);
      }

      v68 = self->fRegistry.__ptr_;
      v69 = self->fRegistry.__cntrl_;
      if (v69)
      {
        atomic_fetch_add_explicit(v69 + 1, 1uLL, memory_order_relaxed);
      }

      v70 = sub_10132C6F4(v68, v69, @"Later", 0);
      if (v69)
      {
        sub_100004A34(v69);
      }

      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 2];
      v71 = +[CellDataActivationFailureAlertState sharedInstance];
      v132 = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      [(CellDataActivationFailureAlertState *)v71 setDataPlanCsn:&v132];
      sub_10002D760(&v132);
      v72 = +[CellDataActivationFailureAlertState sharedInstance];
      v131 = object;
      if (object)
      {
        CFRetain(object);
      }

      [(CellDataActivationFailureAlertState *)v72 setDataPlanUrl:&v131];
      sub_100005978(&v131);
      v73 = +[CellDataActivationFailureAlertState sharedInstance];
      v130 = v137;
      if (v137)
      {
        CFRetain(v137);
      }

      v74 = &v130;
      [(CellDataActivationFailureAlertState *)v73 setDataPlanIccid:&v130];
      goto LABEL_195;
    }

LABEL_101:
    v49 = strlen(kDataActivateFailureReasonDataPlanNoPlanSelected);
    v50 = v49;
    if ((v47 & 0x80000000) != 0)
    {
      if (v49 != __s1[1])
      {
        goto LABEL_108;
      }

      if (v49 == -1)
      {
        sub_10013C334();
      }

      v51 = __s1[0];
    }

    else
    {
      if (v49 != v47)
      {
        goto LABEL_108;
      }

      v51 = __s1;
    }

    if (!memcmp(v51, kDataActivateFailureReasonDataPlanNoPlanSelected, v50))
    {
      v79 = self->fRegistry.__ptr_;
      v80 = self->fRegistry.__cntrl_;
      if (v80)
      {
        atomic_fetch_add_explicit(v80 + 1, 1uLL, memory_order_relaxed);
      }

      v40 = sub_10132C6F4(v79, v80, @"You have not selected a plan for use. Please go to Settings to select a plan.", 0);
      if (v80)
      {
        sub_100004A34(v80);
      }

      v81 = self->fRegistry.__ptr_;
      v82 = self->fRegistry.__cntrl_;
      if (v82)
      {
        atomic_fetch_add_explicit(v82 + 1, 1uLL, memory_order_relaxed);
      }

      v70 = sub_10132C6F4(v81, v82, @"Cancel", 0);
      if (v82)
      {
        sub_100004A34(v82);
      }

      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 3];
      v67 = 0;
      goto LABEL_196;
    }

LABEL_108:
    v52 = strlen(kDataActivateFailureReasonDataPlanNoExistingPlan);
    v53 = v52;
    if ((v47 & 0x80000000) != 0)
    {
      if (v52 == __s1[1])
      {
        if (v52 == -1)
        {
          sub_10013C334();
        }

        v54 = __s1[0];
LABEL_114:
        if (!memcmp(v54, kDataActivateFailureReasonDataPlanNoExistingPlan, v53))
        {
          v83 = self->fRegistry.__ptr_;
          v84 = self->fRegistry.__cntrl_;
          if (v84)
          {
            atomic_fetch_add_explicit(v84 + 1, 1uLL, memory_order_relaxed);
          }

          v40 = sub_10132C6F4(v83, v84, @"You have not signed up for a data plan. Would you like to set up a new account? If you don’t, you can do it later in Settings.", 0);
          if (v84)
          {
            sub_100004A34(v84);
          }

          v85 = self->fRegistry.__ptr_;
          v86 = self->fRegistry.__cntrl_;
          if (v86)
          {
            atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
          }

          v67 = sub_10132C6F4(v85, v86, @"Now", 0);
          if (v86)
          {
            sub_100004A34(v86);
          }

          v87 = self->fRegistry.__ptr_;
          v88 = self->fRegistry.__cntrl_;
          if (v88)
          {
            atomic_fetch_add_explicit(v88 + 1, 1uLL, memory_order_relaxed);
          }

          v70 = sub_10132C6F4(v87, v88, @"Later", 0);
          if (v88)
          {
            sub_100004A34(v88);
          }

          [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 3];
          goto LABEL_196;
        }
      }
    }

    else if (v52 == v47)
    {
      v54 = __s1;
      goto LABEL_114;
    }

    v55 = strlen(kDataActivateFailureReasonDataPlanUnusableProfile);
    v56 = v55;
    if ((v47 & 0x80000000) != 0)
    {
      if (v55 != __s1[1])
      {
        goto LABEL_122;
      }

      if (v55 == -1)
      {
        sub_10013C334();
      }

      v57 = __s1[0];
    }

    else
    {
      if (v55 != v47)
      {
        goto LABEL_122;
      }

      v57 = __s1;
    }

    if (memcmp(v57, kDataActivateFailureReasonDataPlanUnusableProfile, v56))
    {
LABEL_122:
      v58 = strlen(kDataActivateFailureReasonDataPlanConnectToWifi);
      v59 = v58;
      if ((v47 & 0x80000000) != 0)
      {
        if (v58 == __s1[1])
        {
          if (v58 == -1)
          {
            sub_10013C334();
          }

          v60 = __s1[0];
LABEL_158:
          if (memcmp(v60, kDataActivateFailureReasonDataPlanConnectToWifi, v59))
          {
            goto LABEL_159;
          }

          ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
          v96 = ServiceMap;
          if (v97 < 0)
          {
            v98 = (v97 & 0x7FFFFFFFFFFFFFFFLL);
            v99 = 5381;
            do
            {
              v97 = v99;
              v100 = *v98++;
              v99 = (33 * v99) ^ v100;
            }

            while (v100);
          }

          std::mutex::lock(ServiceMap);
          p_additionalData = v97;
          v101 = sub_100009510(&v96[1].__m_.__sig, &p_additionalData);
          if (v101)
          {
            v103 = v101[3];
            v102 = v101[4];
            if (v102)
            {
              atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v96);
              atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v102);
              v104 = 0;
LABEL_273:
              v121 = (*(*v103 + 152))(v103);
              v122 = self->fRegistry.__ptr_;
              v123 = self->fRegistry.__cntrl_;
              if (v121)
              {
                if (v123)
                {
                  atomic_fetch_add_explicit(v123 + 1, 1uLL, memory_order_relaxed);
                }

                v7 = sub_10132C6F4(v122, v123, @"No WLAN Network Connected", 0);
                if (v123)
                {
                  sub_100004A34(v123);
                }

                v124 = self->fRegistry.__ptr_;
                v125 = self->fRegistry.__cntrl_;
                if (v125)
                {
                  atomic_fetch_add_explicit(v125 + 1, 1uLL, memory_order_relaxed);
                }

                v126 = sub_10132C6F4(v124, v125, @"You can set up cellular data or connect to a WLAN network to access data.", 0);
              }

              else
              {
                if (v123)
                {
                  atomic_fetch_add_explicit(v123 + 1, 1uLL, memory_order_relaxed);
                }

                v7 = sub_10132C6F4(v122, v123, @"No Wi-Fi Network Connected", 0);
                if (v123)
                {
                  sub_100004A34(v123);
                }

                v127 = self->fRegistry.__ptr_;
                v125 = self->fRegistry.__cntrl_;
                if (v125)
                {
                  atomic_fetch_add_explicit(v125 + 1, 1uLL, memory_order_relaxed);
                }

                v126 = sub_10132C6F4(v127, v125, @"You can set up cellular data or connect to a Wi-Fi network to access data.", 0);
              }

              v40 = v126;
              if (v125)
              {
                sub_100004A34(v125);
              }

              if ((v104 & 1) == 0)
              {
                sub_100004A34(v102);
              }

              [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 1];
              goto LABEL_160;
            }
          }

          else
          {
            v103 = 0;
          }

          std::mutex::unlock(v96);
          v102 = 0;
          v104 = 1;
          goto LABEL_273;
        }
      }

      else if (v58 == v47)
      {
        v60 = __s1;
        goto LABEL_158;
      }

LABEL_159:
      v40 = 0;
LABEL_160:
      v67 = 0;
      v70 = 0;
LABEL_196:
      sub_100005978(&v137);
      sub_100005978(&object);
      sub_10002D760(cf);
      if (SHIBYTE(v141) < 0)
      {
        operator delete(__s1[0]);
      }

      if (*(&v142 + 1))
      {
        sub_100004A34(*(&v142 + 1));
      }

      goto LABEL_243;
    }

    v89 = self->fRegistry.__ptr_;
    v90 = self->fRegistry.__cntrl_;
    if (v90)
    {
      atomic_fetch_add_explicit(v90 + 1, 1uLL, memory_order_relaxed);
    }

    v40 = sub_10132C6F4(v89, v90, @"Contact Carrier to use this SIM with this iPad.", 0);
    if (v90)
    {
      sub_100004A34(v90);
    }

    v91 = self->fRegistry.__ptr_;
    v92 = self->fRegistry.__cntrl_;
    if (v92)
    {
      atomic_fetch_add_explicit(v92 + 1, 1uLL, memory_order_relaxed);
    }

    v67 = sub_10132C6F4(v91, v92, @"Learn More", 0);
    if (v92)
    {
      sub_100004A34(v92);
    }

    [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 2];
    v93 = +[CellDataActivationFailureAlertState sharedInstance];
    sub_10005C7A4(&v129, &object);
    [(CellDataActivationFailureAlertState *)v93 setDataPlanUrl:&v129];
    sub_100005978(&v129);
    v94 = +[CellDataActivationFailureAlertState sharedInstance];
    v74 = &v128;
    sub_10005C7A4(&v128, &v137);
    [(CellDataActivationFailureAlertState *)v94 setDataPlanIccid:&v128];
    v70 = 0;
LABEL_195:
    sub_100005978(v74);
    goto LABEL_196;
  }

  v8 = Registry::getServiceMap(self->fRegistry.__ptr_);
  v9 = v8;
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

  std::mutex::lock(v8);
  p_additionalData = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &p_additionalData);
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
      goto LABEL_24;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_24:
  error = self->_error;
  if (error <= 63)
  {
    if (error > 59)
    {
      switch(error)
      {
        case '<':
          v35 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v35, v26, @"kGprsPlmnNotAllowed", self->_body);
          goto LABEL_238;
        case '=':
          v41 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v41, v26, @"kGprsLocationAreaNotAllowed", self->_body);
          goto LABEL_238;
        case '>':
          v29 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v29, v26, @"kGprsRoamingNotAllowedInLocationArea", self->_body);
          goto LABEL_238;
      }
    }

    else
    {
      switch(error)
      {
        case '9':
          v33 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v33, v26, @"kGprsIllegalMs", self->_body);
          goto LABEL_238;
        case ':':
          v37 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v37, v26, @"kGprsIllegalMe", self->_body);
          goto LABEL_238;
        case ';':
          v25 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v25, v26, @"kGprsServicesNotAllowed", self->_body);
LABEL_238:
          v40 = v27;
          if (v26)
          {
            sub_100004A34(v26);
          }

          goto LABEL_240;
      }
    }

    goto LABEL_86;
  }

  if (error <= 66)
  {
    if (error == 64)
    {
      v34 = self->fRegistry.__ptr_;
      v26 = self->fRegistry.__cntrl_;
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v27 = sub_10132C6F4(v34, v26, @"kGprsServiceOptionNotSupported", self->_body);
      goto LABEL_238;
    }

    if (error != 65)
    {
      v28 = self->fRegistry.__ptr_;
      v26 = self->fRegistry.__cntrl_;
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v27 = sub_10132C6F4(v28, v26, @"kGprsServiceOptionTemporarilyOutOfOrder", self->_body);
      goto LABEL_238;
    }

    if (button_configCopy && v16)
    {
      if (((*(*v16 + 152))(v16) & 1) == 0)
      {
        v109 = self->fRegistry.__ptr_;
        v110 = self->fRegistry.__cntrl_;
        if (v110)
        {
          atomic_fetch_add_explicit(v110 + 1, 1uLL, memory_order_relaxed);
        }

        v40 = sub_10132C6F4(v109, v110, @"kGprsServiceOptionNotSubscribedWithOptions", self->_body);
        if (v110)
        {
          sub_100004A34(v110);
        }

        goto LABEL_79;
      }

      if ((*(*v16 + 152))(v16))
      {
        v38 = self->fRegistry.__ptr_;
        v39 = self->fRegistry.__cntrl_;
        if (v39)
        {
          atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
        }

        v40 = sub_10132C6F4(v38, v39, @"kGprsServiceOptionNotSubscribedWithOptionsWLAN", self->_body);
        if (v39)
        {
          sub_100004A34(v39);
        }

LABEL_79:
        [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 1];
        goto LABEL_240;
      }
    }

    v78 = self->fRegistry.__ptr_;
    v26 = self->fRegistry.__cntrl_;
    if (v26)
    {
      atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
    }

    v27 = sub_10132C6F4(v78, v26, @"kGprsServiceOptionNotSubscribed", self->_body);
    goto LABEL_238;
  }

  switch(error)
  {
    case 'C':
      v36 = self->fRegistry.__ptr_;
      v26 = self->fRegistry.__cntrl_;
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v27 = sub_10132C6F4(v36, v26, @"kGprsPdpAuthenticationFailure", self->_body);
      goto LABEL_238;
    case 'D':
      v42 = self->fRegistry.__ptr_;
      v26 = self->fRegistry.__cntrl_;
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v27 = sub_10132C6F4(v42, v26, @"kGprsInvalidMobileClass", self->_body);
      goto LABEL_238;
    case 'j':
      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 1];
      if (v16 && (*(*v16 + 152))(v16))
      {
        v30 = self->fRegistry.__ptr_;
        v31 = self->fRegistry.__cntrl_;
        if (v31)
        {
          atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
        }

        v7 = sub_10132C6F4(v30, v31, @"WLANCALLING_FAILURE_TITLE", @"WLAN Calling Unavailable");
        if (v31)
        {
          sub_100004A34(v31);
        }

        v32 = self->fRegistry.__ptr_;
        v26 = self->fRegistry.__cntrl_;
        if (v26)
        {
          atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
        }

        v27 = sub_10132C6F4(v32, v26, @"WLANCALLING_FAILURE_BODY", @"WLAN Calling is not available. Contact your carrier for more information. You can manage WLAN Calling in Settings.");
      }

      else
      {
        v75 = self->fRegistry.__ptr_;
        v76 = self->fRegistry.__cntrl_;
        if (v76)
        {
          atomic_fetch_add_explicit(v76 + 1, 1uLL, memory_order_relaxed);
        }

        v7 = sub_10132C6F4(v75, v76, @"WIFICALLING_FAILURE_TITLE", @"Wi-Fi Calling Unavailable");
        if (v76)
        {
          sub_100004A34(v76);
        }

        v77 = self->fRegistry.__ptr_;
        v26 = self->fRegistry.__cntrl_;
        if (v26)
        {
          atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
        }

        v27 = sub_10132C6F4(v77, v26, @"WIFICALLING_FAILURE_BODY", @"Wi-Fi Calling is not available. Contact your carrier for more information. You can manage Wi-Fi Calling in Settings.");
      }

      goto LABEL_238;
  }

LABEL_86:
  reason = self->_reason;
  if (reason)
  {
    if ([(NSString *)reason isEqualToString:kCTRegistrationDataActivationPreventionReasonIntlRoamingOff])
    {
      if (button_configCopy)
      {
        [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 1];
      }

      v44 = @"EDGE_ROAMING_FAILURE";
LABEL_208:
      v105 = self->fRegistry.__ptr_;
      v106 = self->fRegistry.__cntrl_;
      if (v106)
      {
        atomic_fetch_add_explicit(v106 + 1, 1uLL, memory_order_relaxed);
      }

      v7 = sub_10132C6F4(v105, v106, [(__CFString *)v44 stringByAppendingString:@"_TITLE"], self->_title);
      if (v106)
      {
        sub_100004A34(v106);
      }

      if (self->_suggestWiFi)
      {
        if (!v16)
        {
          goto LABEL_235;
        }

        if ((*(*v16 + 144))(v16))
        {
          v107 = [(__CFString *)v44 stringByAppendingString:@"_BODY"];
          if ((*(*v16 + 152))(v16))
          {
            v107 = [v107 stringByAppendingString:@"_WLAN"];
          }

          if (([v107 isEqualToString:@"EDGE_ROAMING_FAILURE_BODY"] & button_configCopy) == 1)
          {
            v107 = [v107 stringByAppendingString:@"_WITHSETTINGS"];
          }

          if (([v107 isEqualToString:@"EDGE_ROAMING_FAILURE_BODY_WLAN"] & button_configCopy) == 1)
          {
            v107 = [v107 stringByAppendingString:@"_WITHSETTINGS"];
          }

          v108 = self->fRegistry.__ptr_;
          v26 = self->fRegistry.__cntrl_;
          if (v26)
          {
            atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
          }

          v27 = sub_10132C6F4(v108, v26, v107, self->_body);
          goto LABEL_238;
        }
      }

      else if (!v16)
      {
        goto LABEL_235;
      }

      if ((*(*v16 + 152))(v16))
      {
        v111 = self->fRegistry.__ptr_;
        v26 = self->fRegistry.__cntrl_;
        if (v26)
        {
          atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
        }

        v27 = sub_10132C6F4(v111, v26, [(__CFString *)v44 stringByAppendingString:@"_BODY_NO_WLAN"], self->_body);
        goto LABEL_238;
      }

LABEL_235:
      v112 = self->fRegistry.__ptr_;
      v26 = self->fRegistry.__cntrl_;
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v27 = sub_10132C6F4(v112, v26, [(__CFString *)v44 stringByAppendingString:@"_BODY_NO_WIFI"], self->_body);
      goto LABEL_238;
    }

    if ([(NSString *)self->_reason isEqualToString:kCTRegistrationDataActivationPreventionReasonOff])
    {
      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState setAction:"setAction:", 1];
      v44 = @"EDGE_OFF_FAILURE";
      goto LABEL_208;
    }
  }

  v40 = 0;
LABEL_240:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v67 = 0;
  v70 = 0;
LABEL_243:
  if ([+[CellDataActivationFailureAlertState action]&& !v67 sharedInstance]
  {
    v113 = self->fRegistry.__ptr_;
    v114 = self->fRegistry.__cntrl_;
    if (v114)
    {
      atomic_fetch_add_explicit(v114 + 1, 1uLL, memory_order_relaxed);
    }

    v67 = sub_10132C6F4(v113, v114, @"EDGE_FAILURE_SETTINGS", @"Settings");
    if (v114)
    {
      sub_100004A34(v114);
    }
  }

  if (v70)
  {
    goto LABEL_255;
  }

  v115 = self->fRegistry.__ptr_;
  v116 = self->fRegistry.__cntrl_;
  if (v116)
  {
    atomic_fetch_add_explicit(v116 + 1, 1uLL, memory_order_relaxed);
  }

  v70 = sub_10132C6F4(v115, v116, @"EDGE_OK", self->_okText);
  if (v116)
  {
    sub_100004A34(v116);
  }

  if (v70)
  {
LABEL_255:
    okText = self->_okText;
    if (okText)
    {
    }

    self->_okText = [v70 copy];
  }

  if (v67)
  {
    settingsText = self->_settingsText;
    if (settingsText)
    {
    }

    self->_settingsText = [v67 copy];
  }

  if (v40)
  {
    body = self->_body;
    if (body)
    {
    }

    self->_body = [v40 copy];
  }

  if (v7)
  {
    title = self->_title;
    if (title)
    {
    }

    self->_title = [v7 copy];
  }
}

- (void)show
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_title forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v3 setObject:self->_body forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v3 setObject:self->_okText forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDismissOnLock];
  settingsText = self->_settingsText;
  if (settingsText)
  {
    [v3 setObject:settingsText forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  v5 = [SBSUserNotificationImageDefinition definitionWithSystemImageName:@"antenna.radiowaves.left.and.right" tintColor:[BSColor colorWithRed:0.505882353 green:0.819607843 blue:0.341176471 alpha:1.0]];
  v6 = objc_alloc_init(SBSUserNotificationSystemApertureContentDefinition);
  [v6 setLeadingImageDefinition:v5];
  [v6 setAlertMessage:self->_body];
  [v6 setPreventsAutomaticDismissal:1];
  [v6 setDefaultButtonTitle:self->_okText];
  if (self->_settingsText)
  {
    [v6 setAlternateButtonTitle:?];
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationSystemAperturePresentationKey];
  build = [v6 build];
  [v3 setObject:build forKeyedSubscript:SBUserNotificationSystemApertureContentDefinitionKey];
  error = 0;
  v8 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v3);
  v9 = v8;
  v10 = error;
  if (!error && v8)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v8, sub_10132E0B4, 0);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState lockScheduled];
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v12, kCFRunLoopCommonModes);
      v9 = v12;
    }

    else
    {
      v15 = *self->fLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Couldn't create runloop source for notification", buf, 2u);
      }
    }

LABEL_15:
    CFRelease(v9);
    return;
  }

  v14 = *self->fLogger;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Couldn't create notification!  error = %ld", buf, 0xCu);
  }

  if (v9)
  {
    goto LABEL_15;
  }
}

- (id).cxx_construct
{
  self->_additionalData.fObj.fObj = xpc_null_create();
  self->fRegistry.__ptr_ = 0;
  self->fRegistry.__cntrl_ = 0;
  return self;
}

@end