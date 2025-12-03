@interface AKPushMessage
- (AKPushMessage)initWithMessage:(id)message;
- (BOOL)isValidMessage;
@end

@implementation AKPushMessage

- (AKPushMessage)initWithMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v3 = selfCopy;
  selfCopy = 0;
  v167.receiver = v3;
  v167.super_class = AKPushMessage;
  v151 = [(AKPushMessage *)&v167 init];
  selfCopy = v151;
  objc_storeStrong(&selfCopy, v151);
  if (v151)
  {
    objc_storeStrong(&selfCopy->_message, location[0]);
    v147 = objc_opt_class();
    userInfo = [location[0] userInfo];
    v4 = sub_100087700(v147, userInfo);
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = v4;
    _objc_release(userInfo);
    _objc_release(userInfo);
    v149 = objc_opt_class();
    v150 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"cmd"];
    v166 = sub_100087700(v149, v150);
    _objc_release(v150);
    if (v166)
    {
      unsignedIntegerValue = [v166 unsignedIntegerValue];
      selfCopy->_command = unsignedIntegerValue;
    }

    else
    {
      v165 = _AKLogSystem();
      v164 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        v146 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"cmd"];
        sub_10001B098(v173, @"cmd", v146);
        _os_log_error_impl(&_mh_execute_header, v165, v164, "Invalid value for key %@ in push message: %@", v173, 0x16u);
        _objc_release(v146);
      }

      objc_storeStrong(&v165, 0);
      selfCopy->_command = 0;
    }

    v127 = objc_opt_class();
    v128 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"txnid"];
    v7 = sub_100087700(v127, v128);
    messageId = selfCopy->_messageId;
    selfCopy->_messageId = v7;
    _objc_release(messageId);
    _objc_release(v128);
    v129 = objc_opt_class();
    v130 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"prevtxnid"];
    v9 = sub_100087700(v129, v130);
    previousMessageId = selfCopy->_previousMessageId;
    selfCopy->_previousMessageId = v9;
    _objc_release(previousMessageId);
    _objc_release(v130);
    v131 = objc_opt_class();
    v132 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"adsid"];
    v11 = sub_100087700(v131, v132);
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v11;
    _objc_release(altDSID);
    _objc_release(v132);
    v133 = objc_opt_class();
    v134 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"mid"];
    v13 = sub_100087700(v133, v134);
    serverMachineId = selfCopy->_serverMachineId;
    selfCopy->_serverMachineId = v13;
    _objc_release(serverMachineId);
    _objc_release(v134);
    v135 = objc_opt_class();
    v136 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"idmsdata"];
    v15 = sub_100087700(v135, v136);
    idmsData = selfCopy->_idmsData;
    selfCopy->_idmsData = v15;
    _objc_release(idmsData);
    _objc_release(v136);
    v137 = objc_opt_class();
    v139 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"pbv2"];
    v138 = sub_100087700(v137, v139);
    bOOLValue = [v138 BOOLValue];
    selfCopy->_piggybackingAcceptorSupportsPresence = bOOLValue;
    _objc_release(v138);
    _objc_release(v139);
    v140 = objc_opt_class();
    v142 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"pbp"];
    v141 = sub_100087700(v140, v142);
    bOOLValue2 = [v141 BOOLValue];
    selfCopy->_piggybackingRequestorUsesPresence = bOOLValue2;
    _objc_release(v141);
    _objc_release(v142);
    v143 = objc_opt_class();
    v145 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"pbc"];
    v144 = sub_100087700(v143, v145);
    integerValue = [v144 integerValue];
    selfCopy->_piggybackingContext = integerValue;
    _objc_release(v144);
    _objc_release(v145);
    v163 = _AKLogSystem();
    v162 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v172, selfCopy->_piggybackingContext);
      _os_log_impl(&_mh_execute_header, v163, v162, "Received Piggybacking context as %lu", v172, 0xCu);
    }

    objc_storeStrong(&v163, 0);
    v121 = objc_opt_class();
    v123 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"idmsapproved"];
    v122 = sub_100087700(v121, v123);
    bOOLValue3 = [v122 BOOLValue];
    selfCopy->_piggybackingIDMSFallbackApproved = bOOLValue3;
    _objc_release(v122);
    _objc_release(v123);
    v124 = objc_opt_class();
    v126 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"pbv2m"];
    v125 = sub_100087700(v124, v126);
    v21 = sub_100087790([v125 integerValue]);
    selfCopy->_piggybackingPresenceMode = v21;
    _objc_release(v125);
    _objc_release(v126);
    v161 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"sid"];
    v22 = objc_opt_class();
    v160 = sub_100087700(v22, v161);
    if (v160)
    {
      v23 = [[NSUUID alloc] initWithUUIDString:v160];
      piggybackingRequestorPresenceSID = selfCopy->_piggybackingRequestorPresenceSID;
      selfCopy->_piggybackingRequestorPresenceSID = v23;
      _objc_release(piggybackingRequestorPresenceSID);
    }

    piggybackingRequestorUsesPresence = 1;
    if (!selfCopy->_piggybackingAcceptorSupportsPresence)
    {
      piggybackingRequestorUsesPresence = selfCopy->_piggybackingRequestorUsesPresence;
    }

    v159 = piggybackingRequestorUsesPresence & 1;
    if ((piggybackingRequestorUsesPresence & 1) != 0 && !selfCopy->_piggybackingRequestorPresenceSID)
    {
      v158 = _AKLogSystem();
      v157 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v171, v161);
        _os_log_error_impl(&_mh_execute_header, v158, v157, "AKPushMessage: Piggybacking requestor presenceSID was expected but not found (%@)", v171, 0xCu);
      }

      objc_storeStrong(&v158, 0);
    }

    v118 = objc_opt_class();
    v119 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"pedr"];
    v156 = sub_100087700(v118, v119);
    _objc_release(v119);
    if (v156)
    {
      bOOLValue4 = [v156 BOOLValue];
      selfCopy->_requiresPasscode = bOOLValue4;
    }

    v114 = objc_opt_class();
    v115 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"aps"];
    v155 = sub_100087700(v114, v115);
    _objc_release(v115);
    v116 = objc_opt_class();
    v117 = [v155 objectForKeyedSubscript:@"alert"];
    v26 = sub_100087700(v116, v117);
    alertInfo = selfCopy->_alertInfo;
    selfCopy->_alertInfo = v26;
    _objc_release(alertInfo);
    _objc_release(v117);
    if (!selfCopy->_alertInfo)
    {
      v154 = _AKLogSystem();
      v153 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        v113 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"aps"];
        sub_1000194D4(v170, v113);
        _os_log_error_impl(&_mh_execute_header, v154, v153, "alert parameters are not valid: %@", v170, 0xCu);
        _objc_release(v113);
      }

      objc_storeStrong(&v154, 0);
    }

    v97 = objc_opt_class();
    v98 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"title"];
    v28 = sub_100087700(v97, v98);
    alertTitle = selfCopy->_alertTitle;
    selfCopy->_alertTitle = v28;
    _objc_release(alertTitle);
    _objc_release(v98);
    v99 = objc_opt_class();
    v100 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"body"];
    v30 = sub_100087700(v99, v100);
    alertBody = selfCopy->_alertBody;
    selfCopy->_alertBody = v30;
    _objc_release(alertBody);
    _objc_release(v100);
    v101 = objc_opt_class();
    v102 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"defbtn"];
    v32 = sub_100087700(v101, v102);
    defaultButtonTitle = selfCopy->_defaultButtonTitle;
    selfCopy->_defaultButtonTitle = v32;
    _objc_release(defaultButtonTitle);
    _objc_release(v102);
    v103 = objc_opt_class();
    v104 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"albtn"];
    v34 = sub_100087700(v103, v104);
    alternateButtonTitle = selfCopy->_alternateButtonTitle;
    selfCopy->_alternateButtonTitle = v34;
    _objc_release(alternateButtonTitle);
    _objc_release(v104);
    v105 = objc_opt_class();
    v106 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"stitle"];
    v36 = sub_100087700(v105, v106);
    secondaryTitle = selfCopy->_secondaryTitle;
    selfCopy->_secondaryTitle = v36;
    _objc_release(secondaryTitle);
    _objc_release(v106);
    v107 = objc_opt_class();
    v108 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"sbdy"];
    v38 = sub_100087700(v107, v108);
    secondaryBody = selfCopy->_secondaryBody;
    selfCopy->_secondaryBody = v38;
    _objc_release(secondaryBody);
    _objc_release(v108);
    v109 = objc_opt_class();
    v110 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"sftr"];
    v40 = sub_100087700(v109, v110);
    secondaryFooter = selfCopy->_secondaryFooter;
    selfCopy->_secondaryFooter = v40;
    _objc_release(secondaryFooter);
    _objc_release(v110);
    v111 = objc_opt_class();
    v112 = [(NSDictionary *)selfCopy->_alertInfo objectForKeyedSubscript:@"silent"];
    v152 = sub_100087700(v111, v112);
    _objc_release(v112);
    if (v152)
    {
      bOOLValue5 = [v152 BOOLValue];
      selfCopy->_isSilent = bOOLValue5;
    }

    v71 = objc_opt_class();
    v72 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"akdata"];
    v43 = sub_100087700(v71, v72);
    eventDetails = selfCopy->_eventDetails;
    selfCopy->_eventDetails = v43;
    _objc_release(eventDetails);
    _objc_release(v72);
    v73 = objc_opt_class();
    v74 = [(NSDictionary *)selfCopy->_eventDetails objectForKeyedSubscript:@"lat"];
    v45 = sub_100087700(v73, v74);
    latitude = selfCopy->_latitude;
    selfCopy->_latitude = v45;
    _objc_release(latitude);
    _objc_release(v74);
    v75 = objc_opt_class();
    v76 = [(NSDictionary *)selfCopy->_eventDetails objectForKeyedSubscript:@"lng"];
    v47 = sub_100087700(v75, v76);
    longitude = selfCopy->_longitude;
    selfCopy->_longitude = v47;
    _objc_release(longitude);
    _objc_release(v76);
    v77 = objc_opt_class();
    v78 = [(NSDictionary *)selfCopy->_eventDetails objectForKeyedSubscript:@"cls"];
    v49 = sub_100087700(v77, v78);
    deviceClass = selfCopy->_deviceClass;
    selfCopy->_deviceClass = v49;
    _objc_release(deviceClass);
    _objc_release(v78);
    v79 = objc_opt_class();
    v80 = [(NSDictionary *)selfCopy->_eventDetails objectForKeyedSubscript:@"dc"];
    v51 = sub_100087700(v79, v80);
    deviceColor = selfCopy->_deviceColor;
    selfCopy->_deviceColor = v51;
    _objc_release(deviceColor);
    _objc_release(v80);
    v81 = objc_opt_class();
    v82 = [(NSDictionary *)selfCopy->_eventDetails objectForKeyedSubscript:@"dec"];
    v53 = sub_100087700(v81, v82);
    deviceEnclosureColor = selfCopy->_deviceEnclosureColor;
    selfCopy->_deviceEnclosureColor = v53;
    _objc_release(deviceEnclosureColor);
    _objc_release(v82);
    v83 = objc_opt_class();
    v84 = [(NSDictionary *)selfCopy->_userInfo objectForKeyedSubscript:@"srdwa"];
    v55 = sub_100087700(v83, v84);
    walrusWebAccessInfo = selfCopy->_walrusWebAccessInfo;
    selfCopy->_walrusWebAccessInfo = v55;
    _objc_release(walrusWebAccessInfo);
    _objc_release(v84);
    v85 = objc_opt_class();
    v86 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"wscUUID"];
    v57 = sub_100087700(v85, v86);
    webSessionUUID = selfCopy->_webSessionUUID;
    selfCopy->_webSessionUUID = v57;
    _objc_release(webSessionUUID);
    _objc_release(v86);
    v87 = objc_opt_class();
    v88 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"ttlMin"];
    v59 = sub_100087700(v87, v88);
    ttlInMinutes = selfCopy->_ttlInMinutes;
    selfCopy->_ttlInMinutes = v59;
    _objc_release(ttlInMinutes);
    _objc_release(v88);
    v89 = objc_opt_class();
    v90 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"ts"];
    v61 = sub_100087700(v89, v90);
    timestamp = selfCopy->_timestamp;
    selfCopy->_timestamp = v61;
    _objc_release(timestamp);
    _objc_release(v90);
    v91 = objc_opt_class();
    v92 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"app"];
    v63 = sub_100087700(v91, v92);
    appName = selfCopy->_appName;
    selfCopy->_appName = v63;
    _objc_release(appName);
    _objc_release(v92);
    v93 = objc_opt_class();
    v94 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"stitleCDP"];
    v65 = sub_100087700(v93, v94);
    secondaryTitleCDP = selfCopy->_secondaryTitleCDP;
    selfCopy->_secondaryTitleCDP = v65;
    _objc_release(secondaryTitleCDP);
    _objc_release(v94);
    v95 = objc_opt_class();
    v96 = [(NSDictionary *)selfCopy->_walrusWebAccessInfo objectForKeyedSubscript:@"sbdyCDP"];
    v67 = sub_100087700(v95, v96);
    secondaryBodyCDP = selfCopy->_secondaryBodyCDP;
    selfCopy->_secondaryBodyCDP = v67;
    _objc_release(secondaryBodyCDP);
    _objc_release(v96);
    objc_storeStrong(&v152, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v160, 0);
    objc_storeStrong(&v161, 0);
    objc_storeStrong(&v166, 0);
  }

  v70 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v70;
}

- (BOOL)isValidMessage
{
  selfCopy = self;
  v13 = a2;
  command = self->_command;
  if (command)
  {
    v9 = _objc_retain(selfCopy->_messageId);
    if ([v9 length])
    {
      v15 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      v7 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v3 = oslog;
        v4 = v7;
        sub_10001CEEC(v6);
        _os_log_error_impl(&_mh_execute_header, v3, v4, "Push message is missing a transaction ID. Ignoring!", v6, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v15 = 0;
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    location = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v5 = [NSNumber numberWithUnsignedInteger:command];
      sub_1000194D4(v16, v5);
      _os_log_error_impl(&_mh_execute_header, location, v10, "Push message has invalid command %@. Ignoring!", v16, 0xCu);
      _objc_release(v5);
    }

    objc_storeStrong(&location, 0);
    v15 = 0;
  }

  return v15 & 1;
}

@end