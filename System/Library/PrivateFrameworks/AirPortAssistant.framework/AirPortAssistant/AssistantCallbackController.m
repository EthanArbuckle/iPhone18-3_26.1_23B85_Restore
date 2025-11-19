@interface AssistantCallbackController
+ (id)keychainPasswordForBaseStation:(id)a3;
+ (int)removeKeychainPasswordForBaseStation:(id)a3;
+ (int)updateKeychainBasePassword:(id)a3 forMACAddress:(id)a4 withBaseName:(id)a5;
+ (int)updateKeychainNetworkPassword:(id)a3 forNetworkNamed:(id)a4;
+ (void)keychainPasswordForBaseStation:(id)a3 delegate:(id)a4;
- (AssistantCallbackController)init;
- (int)assistantCallback:(AssistantCallbackContext *)isEqualToString withSelector:(int)a4;
- (int)startJoinNetwork:(id)a3 password:(id)a4 rememberChoice:(int)a5;
- (int)startScanForNetworks:(id)a3 wifiType:(int)a4 mergeResults:(BOOL)a5 maxAge:(unint64_t)a6;
- (void)callbackAskUserAQuestionResult:(int)a3 result:(int)a4;
- (void)callbackAskUserForPasswordResult:(int)a3 password:(id)a4 remember:(int)a5;
- (void)callbackAskUserToChooseFromStringListResult:(int)a3 selectedString:(id)a4;
- (void)dealloc;
- (void)joinNetworkDone:(id)a3;
- (void)scanForNetworksDone:(id)a3;
- (void)userResponseToJoinNetwork:(int)a3;
- (void)userResponseToPPPoECredsFailed:(int)a3;
- (void)userResponseToWarning:(int)a3;
@end

@implementation AssistantCallbackController

- (AssistantCallbackController)init
{
  v3.receiver = self;
  v3.super_class = AssistantCallbackController;
  return [(AssistantCallbackController *)&v3 init];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
  uiDelegate = self->_uiDelegate;
  if (uiDelegate && self->_callbackContext)
  {
    objc_msgSend_callbackAskCancel(uiDelegate, v10, v11);
  }

  v13.receiver = self;
  v13.super_class = AssistantCallbackController;
  [(AssistantCallbackController *)&v13 dealloc];
}

+ (int)updateKeychainNetworkPassword:(id)a3 forNetworkNamed:(id)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return -6705;
  }
}

+ (int)updateKeychainBasePassword:(id)a3 forMACAddress:(id)a4 withBaseName:(id)a5
{
  result = -6705;
  if (a4 && a3 && a5)
  {
    if (objc_msgSend_length(a4, a2, a3))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23EB5292C;
      block[3] = &unk_278C66C28;
      block[4] = a4;
      block[5] = a3;
      block[6] = a5;
      dispatch_async(global_queue, block);
      return 0;
    }

    else
    {
      return -6705;
    }
  }

  return result;
}

+ (id)keychainPasswordForBaseStation:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

  v9 = 0;
  if (sub_23EB6AB20(a3, &v22, a3, v3, v4, v5, v6, v7))
  {
    goto LABEL_15;
  }

  v10 = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v8, &v18, v23, 16);
  if (!v11)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_15;
  }

  v13 = v11;
  v14 = *v19;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = objc_msgSend_keychainPasswordForMACAddress_(KeychainWrapper, v12, *(*(&v18 + 1) + 8 * i));
      if (v16)
      {
        v9 = v16;
        goto LABEL_15;
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v23, 16);
    v9 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v9;
}

+ (void)keychainPasswordForBaseStation:(id)a3 delegate:(id)a4
{
  v8 = 0;
  v14 = 0;
  if (a3)
  {
    if (a4)
    {
      v11 = sub_23EB6AB20(a3, &v14, a3, a4, v4, v5, v6, v7);
      v8 = v14;
      if (!v11)
      {
        if (v14)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = sub_23EB52BB0;
          v13[3] = &unk_278C66C28;
          v13[4] = v8;
          v13[5] = a4;
          v13[6] = a3;
          dispatch_async(global_queue, v13);
          v8 = v14;
        }
      }
    }
  }
}

+ (int)removeKeychainPasswordForBaseStation:(id)a3
{
  v14 = 0;
  if (a3)
  {
    v8 = sub_23EB6AB20(a3, &v14, a3, v3, v4, v5, v6, v7);
    v9 = v14;
    if (v8)
    {
      v10 = v8;
    }

    else if (v14)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23EB52DA4;
      v13[3] = &unk_278C66C50;
      v13[4] = v9;
      dispatch_async(global_queue, v13);
      v10 = 0;
      v9 = v14;
    }

    else
    {
      v10 = -6728;
    }
  }

  else
  {
    v9 = 0;
    v10 = -6705;
  }

  return v10;
}

- (void)callbackAskUserForPasswordResult:(int)a3 password:(id)a4 remember:(int)a5
{
  callbackContext = self->_callbackContext;
  if (callbackContext)
  {
    if (a3)
    {
LABEL_3:
      sub_23EBEB6CC(callbackContext, a3, *&a3, a4, *&a5, v5, v6, v7);
      goto LABEL_4;
    }

    if (!a4)
    {
      *&a3 = 4294960591;
      goto LABEL_3;
    }

    v11 = sub_23EBEB5E8(callbackContext, @"BSAssistantCallback_String", a4, a4, *&a5, v5, v6, v7);
    *&a3 = v11;
    if (a5 != 2 && !v11)
    {
      v12 = MEMORY[0x277CBED28];
      if (a5 != 1)
      {
        v12 = MEMORY[0x277CBED10];
      }

      *&a3 = sub_23EBEB5E8(self->_callbackContext, @"BSAssistantCallback_Boolean", *v12, a4, *&a5, v5, v6, v7);
    }

    callbackContext = self->_callbackContext;
    if (callbackContext)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  self->_callbackContext = 0;
}

- (void)callbackAskUserToChooseFromStringListResult:(int)a3 selectedString:(id)a4
{
  v8 = a3;
  callbackContext = self->_callbackContext;
  if (!a3 && callbackContext)
  {
    v8 = sub_23EBEB5E8(callbackContext, @"BSAssistantCallback_String", a4, a4, v4, v5, v6, v7);
    callbackContext = self->_callbackContext;
  }

  sub_23EBEB6CC(callbackContext, v8, *&a3, a4, v4, v5, v6, v7);
  self->_callbackContext = 0;
}

- (void)callbackAskUserAQuestionResult:(int)a3 result:(int)a4
{
  switch(a3)
  {
    case 5:
      MEMORY[0x2821F9670](self, sel_userResponseToPPPoECredsFailed_, *&a4);
      break;
    case 4:
      objc_msgSend_userResponseToWarning_(self, a2, *&a4);
      break;
    case 3:
      objc_msgSend_userResponseToJoinNetwork_(self, a2, *&a4);
      break;
  }
}

- (int)assistantCallback:(AssistantCallbackContext *)isEqualToString withSelector:(int)a4
{
  v8 = *&a4;
  v9 = isEqualToString;
  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "inSelector: %d\n", v4, v5, v6, v7, v8);
  }

  switch(v8)
  {
    case 1:
      v11 = objc_msgSend_subclassAssistantCallback_(self, a2, v9);
      if (v11)
      {
        goto LABEL_99;
      }

      return 0;
    case 2:
      v117 = 0;
      v118 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_ScanInfo", &v117, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v117)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(v9, @"BSAssistantCallback_Boolean", &v118, *&a4, v4, v5, v6, v7);
      if (v37)
      {
        updated = v37;
        if (v37 != -6727)
        {
          goto LABEL_100;
        }

        v118 = *MEMORY[0x277CBED10];
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = v9;
      if (CFBooleanGetValue(v118) && self->_uiDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v44 = objc_msgSend_objectForKey_(v117, v38, @"SSID_STR");
        if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
        {
          sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Asking user if switching is OK\n", v40, v41, v42, v43, v105);
        }

        uiDelegate = self->_uiDelegate;
        v46 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v39, v44, @"kAssistantCallbackAskUserParamKey_SwitchNetwork_SSID");
        v11 = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(uiDelegate, v47, 3, v46, self);
        if (v11)
        {
          goto LABEL_99;
        }
      }

      else
      {
        objc_msgSend_userResponseToJoinNetwork_(self, v38, 0);
      }

      return 0;
    case 3:
      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = v9;
      if (self->_uiDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v117 = 0;
        v118 = 0;
        v115 = 0;
        v116 = 0;
        v113 = 0;
        v114 = 0;
        v111 = 0;
        v112 = 0;
        v110 = 0;
        sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_PromptKey", &v118, v88, v89, v90, v91, v92);
        if (v11)
        {
          goto LABEL_99;
        }

        if (!v118)
        {
          goto LABEL_151;
        }

        sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_PromptParam1", &v117, *&a4, v4, v5, v6, v7);
        if (v93 == -6727)
        {
          v117 = 0;
        }

        else
        {
          updated = v93;
          if (v93)
          {
            goto LABEL_100;
          }

          if (!v117)
          {
            goto LABEL_151;
          }
        }

        sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_PromptParam2", &v116, *&a4, v4, v5, v6, v7);
        if (v99 == -6727)
        {
          v116 = 0;
        }

        else
        {
          updated = v99;
          if (v99)
          {
            goto LABEL_100;
          }

          if (!v116)
          {
            goto LABEL_151;
          }
        }

        sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_MessageKey", &v115, *&a4, v4, v5, v6, v7);
        if (v11)
        {
          goto LABEL_99;
        }

        if (v115)
        {
          sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_MessageParam1", &v114, *&a4, v4, v5, v6, v7);
          if (v100 == -6727)
          {
            v114 = 0;
          }

          else
          {
            updated = v100;
            if (v100)
            {
              goto LABEL_100;
            }

            if (!v114)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_MessageParam2", &v113, *&a4, v4, v5, v6, v7);
          if (v101 == -6727)
          {
            v113 = 0;
          }

          else
          {
            updated = v101;
            if (v101)
            {
              goto LABEL_100;
            }

            if (!v113)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_OkKey", &v112, *&a4, v4, v5, v6, v7);
          if (v102 == -6727)
          {
            v112 = 0;
          }

          else
          {
            updated = v102;
            if (v102)
            {
              goto LABEL_100;
            }

            if (!v112)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(v9, @"kBSAssistantCallback_Warn_CancelKey", &v111, *&a4, v4, v5, v6, v7);
          if (v103 == -6727)
          {
            v111 = 0;
          }

          else
          {
            updated = v103;
            if (v103)
            {
              goto LABEL_100;
            }

            if (!v111)
            {
              goto LABEL_151;
            }
          }

          v11 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v110, "{%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O}", *&a4, v4, v5, v6, v7, "kAssistantCallbackAskUserParamKey_Warning_PromptKey");
          if (v11)
          {
            goto LABEL_99;
          }

          if (v110)
          {
            if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
            {
              sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Warning user\n", v4, v5, v6, v7, v107);
            }

            updated = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(self->_uiDelegate, v104, 4, v110, self);
            v36 = v110;
            if (v110)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          }
        }

        goto LABEL_151;
      }

      objc_msgSend_userResponseToWarning_(self, a2, 0);
      return 0;
    case 4:
      v117 = 0;
      v118 = 0;
      v115 = 0;
      v116 = 0;
      sub_23EBEB494(v9, @"kBSAssistantCallback_MessageKey", &v118, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v118)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(v9, @"kBSAssistantCallback_OkKey", &v117, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v117)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(v9, @"kBSAssistantCallback_CancelKey", &v116, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v116)
      {
        goto LABEL_151;
      }

      v11 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v115, "{%ks=%O%ks=%O%ks=%O}", *&a4, v4, v5, v6, v7, "kAssistantCallbackAskUserParamKey_MessageKey");
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v115)
      {
        goto LABEL_151;
      }

      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Asking User whether to Skip PPPoE Creds failed\n", v4, v5, v6, v7, v106);
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = v9;
      updated = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(self->_uiDelegate, v35, 5, v115, self);
      v36 = v115;
      if (v115)
      {
LABEL_41:
        CFRelease(v36);
      }

LABEL_42:
      if (updated)
      {
        goto LABEL_100;
      }

      return 0;
    case 5:
    case 6:
      v118 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_AskUserDictionary", &v118, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      v13 = v118;
      if (!v118)
      {
        goto LABEL_151;
      }

      if (self->_uiDelegate)
      {
        if (objc_opt_respondsToSelector())
        {
          if (self->_callbackContext)
          {
            goto LABEL_22;
          }

          self->_callbackContext = v9;
          v14 = self->_uiDelegate;
          v15 = objc_msgSend_allKeys(v118, v12, isEqualToString);
          started = objc_msgSend_callbackAskUserToChooseFromStringList_context_forController_(v14, v16, v15, v8 == 6, self);
          goto LABEL_110;
        }

        v13 = v118;
      }

      v94 = objc_msgSend_allKeys(v13, v12, isEqualToString);
      if (objc_msgSend_count(v94, v95, v96))
      {
        v33 = objc_msgSend_objectAtIndex_(v94, v97, 0);
        v34 = @"BSAssistantCallback_String";
        goto LABEL_98;
      }

      return 0;
    case 7:
      v115 = 0;
      v116 = 0;
      v118 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_String", &v118, *&a4, v4, v5, v6, v7);
      v117 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_Number", &v117, v57, v58, v59, v60, v61);
      sub_23EBEB494(v9, @"BSAssistantCallback_WiFiType", &v116, v62, v63, v64, v65, v66);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v116)
      {
        goto LABEL_119;
      }

      sub_23EBEB494(v9, @"BSAssistantCallback_Boolean", &v115, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v115)
      {
        goto LABEL_151;
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = v9;
      v68 = v118;
      v69 = objc_msgSend_integerValue(v116, v67, isEqualToString);
      v72 = objc_msgSend_BOOLValue(v115, v70, v71);
      v75 = objc_msgSend_integerValue(v117, v73, v74);
      started = objc_msgSend_startScanForNetworks_wifiType_mergeResults_maxAge_(self, v76, v68, v69, v72, v75);
      goto LABEL_110;
    case 8:
      v27 = objc_msgSend_sharedInstance(WiFiUtils, a2, isEqualToString);
      if (!objc_msgSend_airPortIsOn(v27, v28, v29))
      {
        goto LABEL_78;
      }

      if (!objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v27, v30, 0))
      {
        goto LABEL_78;
      }

      CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v27, v31, isEqualToString);
      if (!CurrentAssociationInfo)
      {
        goto LABEL_78;
      }

      v33 = CurrentAssociationInfo;
      v34 = @"BSAssistantCallback_AssociationInfo";
LABEL_98:
      v11 = sub_23EBEB5E8(v9, v34, v33, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      goto LABEL_118;
    case 9:
      v82 = objc_msgSend_sharedInstance(WiFiUtils, a2, isEqualToString);
      if (!objc_msgSend_airPortIsOn(v82, v83, v84))
      {
        goto LABEL_82;
      }

      v25 = objc_msgSend_disassociateSync(v82, v85, isEqualToString);
      goto LABEL_81;
    case 10:
      v21 = objc_msgSend_sharedInstance(WiFiUtils, a2, isEqualToString);
      if (objc_msgSend_airPortIsOn(v21, v22, v23))
      {
        v25 = objc_msgSend_clearScanCacheSync(v21, v24, isEqualToString);
LABEL_81:
        v86 = v25;
      }

      else
      {
LABEL_82:
        v86 = 0;
      }

      v87 = v9;
      goto LABEL_84;
    case 11:
      v117 = 0;
      v118 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_String", &v118, *&a4, v4, v5, v6, v7);
      sub_23EBEB494(v9, @"BSAssistantCallback_StringList", &v117, v77, v78, v79, v80, v81);
LABEL_78:
      updated = -6727;
      goto LABEL_100;
    case 12:
      if (!self->_uiDelegate || (objc_opt_respondsToSelector() & 1) == 0)
      {
        updated = -6735;
        goto LABEL_100;
      }

      v117 = 0;
      v118 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_KeychainServiceType", &v118, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      sub_23EBEB494(v9, @"BSAssistantCallback_KeychainDeviceName", &v117, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (objc_msgSend_isEqualToString_(v118, v18, @"keychainBaseStationType"))
      {
        isEqualToString = 0;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(v118, v19, @"keychainNetworkType");
      }

      if (self->_callbackContext)
      {
LABEL_22:
        updated = -6721;
        goto LABEL_100;
      }

      self->_callbackContext = v9;
      started = objc_msgSend_callbackAskUserForPassword_param_forController_(self->_uiDelegate, v19, isEqualToString, v117, self);
LABEL_110:
      updated = started;
      if (!started)
      {
        return 0;
      }

      goto LABEL_100;
    case 13:
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23EB53AAC;
      block[3] = &unk_278C66C70;
      block[4] = v9;
      v109 = 13;
      dispatch_async(global_queue, block);
      return 0;
    case 14:
      v117 = 0;
      v118 = 0;
      v116 = 0;
      sub_23EBEB494(v9, @"BSAssistantCallback_KeychainAccount", &v118, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v118)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(v9, @"BSAssistantCallback_KeychainServiceType", &v117, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v117)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(v9, @"BSAssistantCallback_String", &v116, *&a4, v4, v5, v6, v7);
      if (v11)
      {
        goto LABEL_99;
      }

      if (!v116)
      {
LABEL_151:
        updated = -6728;
        goto LABEL_100;
      }

      if (!objc_msgSend_isEqualToString_(v117, v48, @"keychainBaseStationType"))
      {
        if (objc_msgSend_isEqualToString_(v117, v49, @"keychainNetworkType"))
        {
          goto LABEL_118;
        }

LABEL_119:
        updated = -6705;
LABEL_100:
        if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
        {
          sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "failing inSelector: %d err: %m\n", v4, v5, v6, v7, v8);
        }

        sub_23EBEB6CC(v9, updated, isEqualToString, *&a4, v4, v5, v6, v7);
        self->_callbackContext = 0;
        return 0;
      }

      v115 = 0;
      v118 = sub_23EB6D320(v118, 0, v50);
      sub_23EBEB494(v9, @"BSAssistantCallback_KeychainDeviceName", &v115, v51, v52, v53, v54, v55);
      if (v11)
      {
LABEL_99:
        updated = v11;
        goto LABEL_100;
      }

      updated = objc_msgSend_updateKeychainBasePassword_forMACAddress_withBaseName_(AssistantCallbackController, v56, v116, v118, v115);
      if (updated)
      {
        goto LABEL_100;
      }

LABEL_118:
      v87 = v9;
      v86 = 0;
LABEL_84:
      sub_23EBEB6CC(v87, v86, isEqualToString, *&a4, v4, v5, v6, v7);
      return 0;
    default:
      goto LABEL_119;
  }
}

- (void)userResponseToJoinNetwork:(int)a3
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  if (!self->_callbackContext)
  {
    goto LABEL_17;
  }

  if (a3)
  {
LABEL_18:
    sub_23EBEB6CC(&self->_callbackContext->var0, a3, *&a3, NetworkPassword, v4, v5, v6, v7);
    self->_callbackContext = 0;
    return;
  }

  v22 = 0;
  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToJoinNetwork:]", 800, "***Done asking user if switching is OK\n", v4, v5, v6, v7, v19);
  }

  sub_23EBEB494(self->_callbackContext, @"BSAssistantCallback_ScanInfo", &v23, NetworkPassword, v4, v5, v6, v7);
  if (started)
  {
LABEL_8:
    *&a3 = started;
    goto LABEL_18;
  }

  if (!v23)
  {
LABEL_17:
    *&a3 = 4294960591;
    goto LABEL_18;
  }

  sub_23EBEB52C(self->_callbackContext, @"BSAssistantCallback_JoinRememberChoice", &v21, NetworkPassword, v4, v5, v6, v7);
  if (started)
  {
    goto LABEL_8;
  }

  if (!objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v10, v23, 0, &v20) || (v20 & 1) != 0)
  {
    NetworkPassword = 0;
LABEL_14:
    started = objc_msgSend_startJoinNetwork_password_rememberChoice_(self, v11, v23, NetworkPassword, v21);
    goto LABEL_15;
  }

  sub_23EBEB494(self->_callbackContext, @"BSAssistantCallback_ScanInfoPassword", &v22, v12, v13, v14, v15, v16);
  if (v17 == -6727)
  {
    NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v18, v23);
    v22 = NetworkPassword;
    if (!NetworkPassword)
    {
      *&a3 = 4294967280;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  *&a3 = v17;
  if (v17)
  {
    goto LABEL_18;
  }

  started = objc_msgSend_startJoinNetwork_password_rememberChoice_(self, v18, v23, v22, v21);
LABEL_15:
  if (started)
  {
    goto LABEL_8;
  }
}

- (void)userResponseToWarning:(int)a3
{
  if (self->_callbackContext)
  {
    v9 = a3;
    if (!a3)
    {
      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToWarning:]", 800, "***Done giving the user a warning\n", v4, v5, v6, v7, v10);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = -6705;
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v9, *&a3, v3, v4, v5, v6, v7);
  self->_callbackContext = 0;
}

- (void)userResponseToPPPoECredsFailed:(int)a3
{
  if (self->_callbackContext)
  {
    v9 = a3;
    if (!a3)
    {
      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToPPPoECredsFailed:]", 800, "***Done asking user to skip bad PPPoE Credentials\n", v4, v5, v6, v7, v10);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = -6705;
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v9, *&a3, v3, v4, v5, v6, v7);
  self->_callbackContext = 0;
}

- (int)startJoinNetwork:(id)a3 password:(id)a4 rememberChoice:(int)a5
{
  if (a3)
  {
    v9 = *&a5;
    v12 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
    v14 = objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v12, v13, a3, a4, v9);
  }

  else
  {
    v14 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) startJoinNetwork:password:rememberChoice:]", 800, "err: %#m\n", *&a5, v5, v6, v7, v14);
  }

  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_addObserver_selector_name_object_(v15, v16, self, sel_joinNetworkDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  return v14;
}

- (void)joinNetworkDone:(id)a3
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  if (self->_callbackContext && (v14 = objc_msgSend_userInfo(a3, v7, v8), (v16 = objc_msgSend_objectForKey_(v14, v15, @"WiFiUtils_OSStatus")) != 0))
  {
    v18 = objc_msgSend_integerValue(v16, v17, v8);
  }

  else
  {
    v18 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) joinNetworkDone:]", 800, "err: %#m\n", v10, v11, v12, v13, v18);
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v18, v8, v9, v10, v11, v12, v13);
  self->_callbackContext = 0;
}

- (int)startScanForNetworks:(id)a3 wifiType:(int)a4 mergeResults:(BOOL)a5 maxAge:(unint64_t)a6
{
  v7 = a5;
  v8 = *&a4;
  v11 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
  if (v11)
  {
    v18 = v11;
    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v19, v20, self, sel_scanForNetworksDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
    v24 = objc_msgSend_asyncWiFiScan_wifiType_merge_maxAge_(v18, v21, a3, v8, v7, a6);
    if (v24)
    {
      v25 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v22, v23);
      objc_msgSend_removeObserver_name_object_(v25, v26, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
    }
  }

  else
  {
    v24 = 4294960569;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) startScanForNetworks:wifiType:mergeResults:maxAge:]", 800, "err: %#m\n", v14, v15, v16, v17, v24);
  }

  return v24;
}

- (void)scanForNetworksDone:(id)a3
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
  if (self->_callbackContext && (v14 = objc_msgSend_userInfo(a3, v7, v8)) != 0 && (v16 = v14, (v17 = objc_msgSend_objectForKey_(v14, v15, @"WiFiUtils_OSStatus")) != 0))
  {
    v20 = objc_msgSend_integerValue(v17, v18, v8);
    if (!v20)
    {
      v21 = objc_msgSend_objectForKey_(v16, v19, @"WiFiUtils_ScanInfos");
      if (objc_msgSend_count(v21, v22, v23))
      {
        v20 = sub_23EBEB5E8(self->_callbackContext, @"BSAssistantCallback_ScanInfoRecords", v21, v9, v10, v11, v12, v13);
      }

      else
      {
        v20 = 4294960569;
      }
    }
  }

  else
  {
    v20 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) scanForNetworksDone:]", 800, "err: %#m\n", v10, v11, v12, v13, v20);
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v20, v8, v9, v10, v11, v12, v13);
  self->_callbackContext = 0;
}

@end