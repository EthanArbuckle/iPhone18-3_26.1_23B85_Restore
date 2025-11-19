@interface APXPCActivityCriteria
- (APXPCActivityCriteria)init;
- (id)translateCriteria;
@end

@implementation APXPCActivityCriteria

- (APXPCActivityCriteria)init
{
  v4.receiver = self;
  v4.super_class = APXPCActivityCriteria;
  result = [(APXPCActivityCriteria *)&v4 init];
  if (result)
  {
    result->_requiresNetworkConnectivity = 1;
    v3 = *MEMORY[0x1E69E9D70];
    result->_gracePeriod = *MEMORY[0x1E69E9CD0];
    result->_priority = v3;
    *&result->_requireClassCData = 257;
    result->_scheduledTime = NAN;
  }

  return result;
}

- (id)translateCriteria
{
  v2 = self;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = *MEMORY[0x1E69E9C40];
  v8 = objc_msgSend_allowBattery(v2, v5, v6, v7);
  xpc_dictionary_set_BOOL(v3, v4, v8);
  v9 = *MEMORY[0x1E69E9DC0];
  v13 = objc_msgSend_requireSleep(v2, v10, v11, v12);
  xpc_dictionary_set_BOOL(v3, v9, v13);
  v14 = *MEMORY[0x1E69E9D88];
  isRepeating = objc_msgSend_isRepeating(v2, v15, v16, v17);
  xpc_dictionary_set_BOOL(v3, v14, isRepeating);
  v19 = *MEMORY[0x1E69E9C60];
  isCPUIntensive = objc_msgSend_isCPUIntensive(v2, v20, v21, v22);
  xpc_dictionary_set_BOOL(v3, v19, isCPUIntensive);
  v24 = *MEMORY[0x1E69E9C78];
  isDiskIntensive = objc_msgSend_isDiskIntensive(v2, v25, v26, v27);
  xpc_dictionary_set_BOOL(v3, v24, isDiskIntensive);
  v29 = *MEMORY[0x1E69E9DB8];
  v33 = objc_msgSend_requiresNetworkConnectivity(v2, v30, v31, v32);
  xpc_dictionary_set_BOOL(v3, v29, v33);
  v34 = *MEMORY[0x1E69E9C98];
  v38 = objc_msgSend_gracePeriod(v2, v35, v36, v37);
  xpc_dictionary_set_int64(v3, v34, v38);
  if (!objc_msgSend_priority(v2, v39, v40, v41))
  {
    objc_msgSend_setPriority_(v2, v42, *MEMORY[0x1E69E9D70], v44);
  }

  v45 = *MEMORY[0x1E69E9D68];
  v46 = objc_msgSend_priority(v2, v42, v43, v44);
  xpc_dictionary_set_string(v3, v45, v46);
  v47 = *MEMORY[0x1E69E9C68];
  v51 = objc_msgSend_delay(v2, v48, v49, v50);
  xpc_dictionary_set_int64(v3, v47, v51);
  if (objc_msgSend_isRepeating(v2, v52, v53, v54))
  {
    v58 = *MEMORY[0x1E69E9CB0];
    v59 = objc_msgSend_interval(v2, v55, v56, v57);
    xpc_dictionary_set_int64(v3, v58, v59);
  }

  v60 = *MEMORY[0x1E69E9D90];
  v61 = objc_msgSend_requireBuddyComplete(v2, v55, v56, v57);
  xpc_dictionary_set_BOOL(v3, v60, v61);
  v62 = *MEMORY[0x1E69E9DA8];
  v66 = objc_msgSend_requireClassCData(v2, v63, v64, v65);
  xpc_dictionary_set_BOOL(v3, v62, v66);
  objc_msgSend_scheduledTime(v2, v67, v68, v69);
  objc_msgSend_scheduledTime(v2, v70, v71, v72);
  xpc_dictionary_set_double(v3, "APScheduledTime", v73);

  return v3;
}

@end