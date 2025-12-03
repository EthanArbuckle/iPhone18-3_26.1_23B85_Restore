@interface FTRelayCancelMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRelayCancelMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayCancelMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayCancelMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v36.receiver = self;
  v36.super_class = FTRelayCancelMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v36 requiredKeys];
  v7 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  objc_msgSend_addObject_(v7, v8, @"peer-id", v9, v10);
  objc_msgSend_addObject_(v7, v11, @"peer-push-token", v12, v13);
  objc_msgSend_addObject_(v7, v14, @"reason", v15, v16);
  objc_msgSend_addObject_(v7, v17, @"relay-type", v18, v19);
  objc_msgSend_addObject_(v7, v20, @"relay-connection-id", v21, v22);
  objc_msgSend_addObject_(v7, v23, @"self-relay-ip", v24, v25);
  objc_msgSend_addObject_(v7, v26, @"self-relay-port", v27, v28);
  objc_msgSend_addObject_(v7, v29, @"peer-relay-ip", v30, v31);
  objc_msgSend_addObject_(v7, v32, @"peer-relay-port", v33, v34);
  return v7;
}

- (id)messageBody
{
  v100.receiver = self;
  v100.super_class = FTRelayCancelMessage;
  messageBody = [(FTFaceTimeMessage *)&v100 messageBody];
  v8 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v7);
  v13 = objc_msgSend_peerID(self, v9, v10, v11, v12);
  if (v13)
  {
    CFDictionarySetValue(v8, @"peer-id", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v18 = objc_msgSend_peerPushToken(self, v14, v15, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v8, @"peer-push-token", v18);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v23 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_reason(self, v19, v20, v21, v22);
  v29 = objc_msgSend_intValue(v24, v25, v26, v27, v28);
  v33 = objc_msgSend_numberWithInt_(v23, v30, v29, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v8, @"reason", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFFBC();
  }

  v38 = MEMORY[0x277CCABB0];
  v39 = objc_msgSend_relayType(self, v34, v35, v36, v37);
  v44 = objc_msgSend_intValue(v39, v40, v41, v42, v43);
  v48 = objc_msgSend_numberWithInt_(v38, v45, v44, v46, v47);
  if (v48)
  {
    CFDictionarySetValue(v8, @"relay-type", v48);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0044();
  }

  v53 = objc_msgSend_relayConnectionID(self, v49, v50, v51, v52);
  if (v53)
  {
    CFDictionarySetValue(v8, @"relay-connection-id", v53);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC00CC();
  }

  v58 = objc_msgSend_selfRelayIP(self, v54, v55, v56, v57);
  if (v58)
  {
    CFDictionarySetValue(v8, @"self-relay-ip", v58);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0154();
  }

  v63 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_selfRelayPort(self, v59, v60, v61, v62);
  v69 = objc_msgSend_intValue(v64, v65, v66, v67, v68);
  v73 = objc_msgSend_numberWithInt_(v63, v70, v69, v71, v72);
  if (v73)
  {
    CFDictionarySetValue(v8, @"self-relay-port", v73);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC01DC();
  }

  v78 = objc_msgSend_peerRelayIP(self, v74, v75, v76, v77);
  if (v78)
  {
    CFDictionarySetValue(v8, @"peer-relay-ip", v78);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0264();
  }

  v83 = MEMORY[0x277CCABB0];
  v84 = objc_msgSend_peerRelayPort(self, v79, v80, v81, v82);
  v89 = objc_msgSend_intValue(v84, v85, v86, v87, v88);
  v93 = objc_msgSend_numberWithInt_(v83, v90, v89, v91, v92);
  if (v93)
  {
    CFDictionarySetValue(v8, @"peer-relay-port", v93);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC02EC();
  }

  v98 = objc_msgSend_relayCandidateID(self, v94, v95, v96, v97);
  if (v98)
  {
    CFDictionarySetValue(v8, @"relay-candidate-id", v98);
  }

  return v8;
}

@end