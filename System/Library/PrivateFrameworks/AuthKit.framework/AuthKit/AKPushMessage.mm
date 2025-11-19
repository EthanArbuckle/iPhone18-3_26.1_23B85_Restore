@interface AKPushMessage
- (AKPushMessage)initWithMessage:(id)a3;
- (BOOL)isValidMessage;
@end

@implementation AKPushMessage

- (AKPushMessage)initWithMessage:(id)a3
{
  v169 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v169;
  v169 = 0;
  v167.receiver = v3;
  v167.super_class = AKPushMessage;
  v151 = [(AKPushMessage *)&v167 init];
  v169 = v151;
  objc_storeStrong(&v169, v151);
  if (v151)
  {
    objc_storeStrong(&v169->_message, location[0]);
    v147 = objc_opt_class();
    v148 = [location[0] userInfo];
    v4 = sub_100087700(v147, v148);
    userInfo = v169->_userInfo;
    v169->_userInfo = v4;
    _objc_release(userInfo);
    _objc_release(v148);
    v149 = objc_opt_class();
    v150 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"cmd"];
    v166 = sub_100087700(v149, v150);
    _objc_release(v150);
    if (v166)
    {
      v6 = [v166 unsignedIntegerValue];
      v169->_command = v6;
    }

    else
    {
      v165 = _AKLogSystem();
      v164 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        v146 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"cmd"];
        sub_10001B098(v173, @"cmd", v146);
        _os_log_error_impl(&_mh_execute_header, v165, v164, "Invalid value for key %@ in push message: %@", v173, 0x16u);
        _objc_release(v146);
      }

      objc_storeStrong(&v165, 0);
      v169->_command = 0;
    }

    v127 = objc_opt_class();
    v128 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"txnid"];
    v7 = sub_100087700(v127, v128);
    messageId = v169->_messageId;
    v169->_messageId = v7;
    _objc_release(messageId);
    _objc_release(v128);
    v129 = objc_opt_class();
    v130 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"prevtxnid"];
    v9 = sub_100087700(v129, v130);
    previousMessageId = v169->_previousMessageId;
    v169->_previousMessageId = v9;
    _objc_release(previousMessageId);
    _objc_release(v130);
    v131 = objc_opt_class();
    v132 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"adsid"];
    v11 = sub_100087700(v131, v132);
    altDSID = v169->_altDSID;
    v169->_altDSID = v11;
    _objc_release(altDSID);
    _objc_release(v132);
    v133 = objc_opt_class();
    v134 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"mid"];
    v13 = sub_100087700(v133, v134);
    serverMachineId = v169->_serverMachineId;
    v169->_serverMachineId = v13;
    _objc_release(serverMachineId);
    _objc_release(v134);
    v135 = objc_opt_class();
    v136 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"idmsdata"];
    v15 = sub_100087700(v135, v136);
    idmsData = v169->_idmsData;
    v169->_idmsData = v15;
    _objc_release(idmsData);
    _objc_release(v136);
    v137 = objc_opt_class();
    v139 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"pbv2"];
    v138 = sub_100087700(v137, v139);
    v17 = [v138 BOOLValue];
    v169->_piggybackingAcceptorSupportsPresence = v17;
    _objc_release(v138);
    _objc_release(v139);
    v140 = objc_opt_class();
    v142 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"pbp"];
    v141 = sub_100087700(v140, v142);
    v18 = [v141 BOOLValue];
    v169->_piggybackingRequestorUsesPresence = v18;
    _objc_release(v141);
    _objc_release(v142);
    v143 = objc_opt_class();
    v145 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"pbc"];
    v144 = sub_100087700(v143, v145);
    v19 = [v144 integerValue];
    v169->_piggybackingContext = v19;
    _objc_release(v144);
    _objc_release(v145);
    v163 = _AKLogSystem();
    v162 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v172, v169->_piggybackingContext);
      _os_log_impl(&_mh_execute_header, v163, v162, "Received Piggybacking context as %lu", v172, 0xCu);
    }

    objc_storeStrong(&v163, 0);
    v121 = objc_opt_class();
    v123 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"idmsapproved"];
    v122 = sub_100087700(v121, v123);
    v20 = [v122 BOOLValue];
    v169->_piggybackingIDMSFallbackApproved = v20;
    _objc_release(v122);
    _objc_release(v123);
    v124 = objc_opt_class();
    v126 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"pbv2m"];
    v125 = sub_100087700(v124, v126);
    v21 = sub_100087790([v125 integerValue]);
    v169->_piggybackingPresenceMode = v21;
    _objc_release(v125);
    _objc_release(v126);
    v161 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"sid"];
    v22 = objc_opt_class();
    v160 = sub_100087700(v22, v161);
    if (v160)
    {
      v23 = [[NSUUID alloc] initWithUUIDString:v160];
      piggybackingRequestorPresenceSID = v169->_piggybackingRequestorPresenceSID;
      v169->_piggybackingRequestorPresenceSID = v23;
      _objc_release(piggybackingRequestorPresenceSID);
    }

    piggybackingRequestorUsesPresence = 1;
    if (!v169->_piggybackingAcceptorSupportsPresence)
    {
      piggybackingRequestorUsesPresence = v169->_piggybackingRequestorUsesPresence;
    }

    v159 = piggybackingRequestorUsesPresence & 1;
    if ((piggybackingRequestorUsesPresence & 1) != 0 && !v169->_piggybackingRequestorPresenceSID)
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
    v119 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"pedr"];
    v156 = sub_100087700(v118, v119);
    _objc_release(v119);
    if (v156)
    {
      v25 = [v156 BOOLValue];
      v169->_requiresPasscode = v25;
    }

    v114 = objc_opt_class();
    v115 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"aps"];
    v155 = sub_100087700(v114, v115);
    _objc_release(v115);
    v116 = objc_opt_class();
    v117 = [v155 objectForKeyedSubscript:@"alert"];
    v26 = sub_100087700(v116, v117);
    alertInfo = v169->_alertInfo;
    v169->_alertInfo = v26;
    _objc_release(alertInfo);
    _objc_release(v117);
    if (!v169->_alertInfo)
    {
      v154 = _AKLogSystem();
      v153 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        v113 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"aps"];
        sub_1000194D4(v170, v113);
        _os_log_error_impl(&_mh_execute_header, v154, v153, "alert parameters are not valid: %@", v170, 0xCu);
        _objc_release(v113);
      }

      objc_storeStrong(&v154, 0);
    }

    v97 = objc_opt_class();
    v98 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"title"];
    v28 = sub_100087700(v97, v98);
    alertTitle = v169->_alertTitle;
    v169->_alertTitle = v28;
    _objc_release(alertTitle);
    _objc_release(v98);
    v99 = objc_opt_class();
    v100 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"body"];
    v30 = sub_100087700(v99, v100);
    alertBody = v169->_alertBody;
    v169->_alertBody = v30;
    _objc_release(alertBody);
    _objc_release(v100);
    v101 = objc_opt_class();
    v102 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"defbtn"];
    v32 = sub_100087700(v101, v102);
    defaultButtonTitle = v169->_defaultButtonTitle;
    v169->_defaultButtonTitle = v32;
    _objc_release(defaultButtonTitle);
    _objc_release(v102);
    v103 = objc_opt_class();
    v104 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"albtn"];
    v34 = sub_100087700(v103, v104);
    alternateButtonTitle = v169->_alternateButtonTitle;
    v169->_alternateButtonTitle = v34;
    _objc_release(alternateButtonTitle);
    _objc_release(v104);
    v105 = objc_opt_class();
    v106 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"stitle"];
    v36 = sub_100087700(v105, v106);
    secondaryTitle = v169->_secondaryTitle;
    v169->_secondaryTitle = v36;
    _objc_release(secondaryTitle);
    _objc_release(v106);
    v107 = objc_opt_class();
    v108 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"sbdy"];
    v38 = sub_100087700(v107, v108);
    secondaryBody = v169->_secondaryBody;
    v169->_secondaryBody = v38;
    _objc_release(secondaryBody);
    _objc_release(v108);
    v109 = objc_opt_class();
    v110 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"sftr"];
    v40 = sub_100087700(v109, v110);
    secondaryFooter = v169->_secondaryFooter;
    v169->_secondaryFooter = v40;
    _objc_release(secondaryFooter);
    _objc_release(v110);
    v111 = objc_opt_class();
    v112 = [(NSDictionary *)v169->_alertInfo objectForKeyedSubscript:@"silent"];
    v152 = sub_100087700(v111, v112);
    _objc_release(v112);
    if (v152)
    {
      v42 = [v152 BOOLValue];
      v169->_isSilent = v42;
    }

    v71 = objc_opt_class();
    v72 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"akdata"];
    v43 = sub_100087700(v71, v72);
    eventDetails = v169->_eventDetails;
    v169->_eventDetails = v43;
    _objc_release(eventDetails);
    _objc_release(v72);
    v73 = objc_opt_class();
    v74 = [(NSDictionary *)v169->_eventDetails objectForKeyedSubscript:@"lat"];
    v45 = sub_100087700(v73, v74);
    latitude = v169->_latitude;
    v169->_latitude = v45;
    _objc_release(latitude);
    _objc_release(v74);
    v75 = objc_opt_class();
    v76 = [(NSDictionary *)v169->_eventDetails objectForKeyedSubscript:@"lng"];
    v47 = sub_100087700(v75, v76);
    longitude = v169->_longitude;
    v169->_longitude = v47;
    _objc_release(longitude);
    _objc_release(v76);
    v77 = objc_opt_class();
    v78 = [(NSDictionary *)v169->_eventDetails objectForKeyedSubscript:@"cls"];
    v49 = sub_100087700(v77, v78);
    deviceClass = v169->_deviceClass;
    v169->_deviceClass = v49;
    _objc_release(deviceClass);
    _objc_release(v78);
    v79 = objc_opt_class();
    v80 = [(NSDictionary *)v169->_eventDetails objectForKeyedSubscript:@"dc"];
    v51 = sub_100087700(v79, v80);
    deviceColor = v169->_deviceColor;
    v169->_deviceColor = v51;
    _objc_release(deviceColor);
    _objc_release(v80);
    v81 = objc_opt_class();
    v82 = [(NSDictionary *)v169->_eventDetails objectForKeyedSubscript:@"dec"];
    v53 = sub_100087700(v81, v82);
    deviceEnclosureColor = v169->_deviceEnclosureColor;
    v169->_deviceEnclosureColor = v53;
    _objc_release(deviceEnclosureColor);
    _objc_release(v82);
    v83 = objc_opt_class();
    v84 = [(NSDictionary *)v169->_userInfo objectForKeyedSubscript:@"srdwa"];
    v55 = sub_100087700(v83, v84);
    walrusWebAccessInfo = v169->_walrusWebAccessInfo;
    v169->_walrusWebAccessInfo = v55;
    _objc_release(walrusWebAccessInfo);
    _objc_release(v84);
    v85 = objc_opt_class();
    v86 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"wscUUID"];
    v57 = sub_100087700(v85, v86);
    webSessionUUID = v169->_webSessionUUID;
    v169->_webSessionUUID = v57;
    _objc_release(webSessionUUID);
    _objc_release(v86);
    v87 = objc_opt_class();
    v88 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"ttlMin"];
    v59 = sub_100087700(v87, v88);
    ttlInMinutes = v169->_ttlInMinutes;
    v169->_ttlInMinutes = v59;
    _objc_release(ttlInMinutes);
    _objc_release(v88);
    v89 = objc_opt_class();
    v90 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"ts"];
    v61 = sub_100087700(v89, v90);
    timestamp = v169->_timestamp;
    v169->_timestamp = v61;
    _objc_release(timestamp);
    _objc_release(v90);
    v91 = objc_opt_class();
    v92 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"app"];
    v63 = sub_100087700(v91, v92);
    appName = v169->_appName;
    v169->_appName = v63;
    _objc_release(appName);
    _objc_release(v92);
    v93 = objc_opt_class();
    v94 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"stitleCDP"];
    v65 = sub_100087700(v93, v94);
    secondaryTitleCDP = v169->_secondaryTitleCDP;
    v169->_secondaryTitleCDP = v65;
    _objc_release(secondaryTitleCDP);
    _objc_release(v94);
    v95 = objc_opt_class();
    v96 = [(NSDictionary *)v169->_walrusWebAccessInfo objectForKeyedSubscript:@"sbdyCDP"];
    v67 = sub_100087700(v95, v96);
    secondaryBodyCDP = v169->_secondaryBodyCDP;
    v169->_secondaryBodyCDP = v67;
    _objc_release(secondaryBodyCDP);
    _objc_release(v96);
    objc_storeStrong(&v152, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v160, 0);
    objc_storeStrong(&v161, 0);
    objc_storeStrong(&v166, 0);
  }

  v70 = _objc_retain(v169);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v169, 0);
  return v70;
}

- (BOOL)isValidMessage
{
  v14 = self;
  v13 = a2;
  command = self->_command;
  if (command)
  {
    v9 = _objc_retain(v14->_messageId);
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