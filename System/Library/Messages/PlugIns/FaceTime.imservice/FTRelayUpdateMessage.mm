@interface FTRelayUpdateMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRelayUpdateMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayUpdateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayUpdateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v48.receiver = self;
  v48.super_class = FTRelayUpdateMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v48 requiredKeys];
  v7 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  objc_msgSend_addObject_(v7, v8, @"self-push-token", v9, v10);
  objc_msgSend_addObject_(v7, v11, @"peer-id", v12, v13);
  objc_msgSend_addObject_(v7, v14, @"peer-push-token", v15, v16);
  objc_msgSend_addObject_(v7, v17, @"relay-type", v18, v19);
  objc_msgSend_addObject_(v7, v20, @"relay-connection-id", v21, v22);
  objc_msgSend_addObject_(v7, v23, @"relay-transaction-id-alloc", v24, v25);
  objc_msgSend_addObject_(v7, v26, @"relay-token-alloc-res", v27, v28);
  objc_msgSend_addObject_(v7, v29, @"self-relay-ip", v30, v31);
  objc_msgSend_addObject_(v7, v32, @"self-relay-port", v33, v34);
  objc_msgSend_addObject_(v7, v35, @"self-relay-nat-ip", v36, v37);
  objc_msgSend_addObject_(v7, v38, @"self-relay-nat-port", v39, v40);
  objc_msgSend_addObject_(v7, v41, @"peer-relay-ip", v42, v43);
  objc_msgSend_addObject_(v7, v44, @"peer-relay-port", v45, v46);
  return v7;
}

- (id)messageBody
{
  v125.receiver = self;
  v125.super_class = FTRelayUpdateMessage;
  messageBody = [(FTFaceTimeMessage *)&v125 messageBody];
  v8 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v7);
  v13 = objc_msgSend_selfPushToken(self, v9, v10, v11, v12);
  if (v13)
  {
    CFDictionarySetValue(v8, @"self-push-token", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v18 = objc_msgSend_peerID(self, v14, v15, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v8, @"peer-id", v18);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v23 = objc_msgSend_peerPushToken(self, v19, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v8, @"peer-push-token", v23);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v28 = MEMORY[0x277CCABB0];
  v29 = objc_msgSend_relayType(self, v24, v25, v26, v27);
  v34 = objc_msgSend_intValue(v29, v30, v31, v32, v33);
  v38 = objc_msgSend_numberWithInt_(v28, v35, v34, v36, v37);
  if (v38)
  {
    CFDictionarySetValue(v8, @"relay-type", v38);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0044();
  }

  v43 = objc_msgSend_relayConnectionID(self, v39, v40, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v8, @"relay-connection-id", v43);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC00CC();
  }

  v48 = objc_msgSend_relayTransactionIDAlloc(self, v44, v45, v46, v47);
  if (v48)
  {
    CFDictionarySetValue(v8, @"relay-transaction-id-alloc", v48);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0374();
  }

  v53 = objc_msgSend_relayTokenAllocRes(self, v49, v50, v51, v52);
  if (v53)
  {
    CFDictionarySetValue(v8, @"relay-token-alloc-res", v53);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC03FC();
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

  v78 = objc_msgSend_selfRelayNATIP(self, v74, v75, v76, v77);
  if (v78)
  {
    CFDictionarySetValue(v8, @"self-relay-nat-ip", v78);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0484();
  }

  v83 = MEMORY[0x277CCABB0];
  v84 = objc_msgSend_selfRelayNATPort(self, v79, v80, v81, v82);
  v89 = objc_msgSend_intValue(v84, v85, v86, v87, v88);
  v93 = objc_msgSend_numberWithInt_(v83, v90, v89, v91, v92);
  if (v93)
  {
    CFDictionarySetValue(v8, @"self-relay-nat-port", v93);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC050C();
  }

  v98 = objc_msgSend_peerRelayIP(self, v94, v95, v96, v97);
  if (v98)
  {
    CFDictionarySetValue(v8, @"peer-relay-ip", v98);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0264();
  }

  v103 = MEMORY[0x277CCABB0];
  v104 = objc_msgSend_peerRelayPort(self, v99, v100, v101, v102);
  v109 = objc_msgSend_intValue(v104, v105, v106, v107, v108);
  v113 = objc_msgSend_numberWithInt_(v103, v110, v109, v111, v112);
  if (v113)
  {
    CFDictionarySetValue(v8, @"peer-relay-port", v113);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC02EC();
  }

  v118 = objc_msgSend_selfRelayBlob(self, v114, v115, v116, v117);
  if (v118)
  {
    CFDictionarySetValue(v8, @"self-relay-blob", v118);
  }

  v123 = objc_msgSend_relayCandidateID(self, v119, v120, v121, v122);
  if (v123)
  {
    CFDictionarySetValue(v8, @"relay-candidate-id", v123);
  }

  return v8;
}

@end