@interface WFGetNetworkDetailsAction
- (id)outputContentClasses;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetNetworkDetailsAction

- (id)outputContentClasses
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFNetworkDetailsNetwork"];
  value = [v3 value];
  if ([value isEqualToString:@"Wi-Fi"])
  {
    v5 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFWiFiDetail"];
    value2 = [v5 value];
    if (([value2 isEqualToString:@"TX Rate"] & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"RX Rate") & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"RSSI") & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"Noise") & 1) != 0 || objc_msgSend(value2, "isEqualToString:", @"Channel Number"))
    {
      v27[0] = objc_opt_class();
      v7 = v27;
    }

    else
    {
      v26 = objc_opt_class();
      v7 = &v26;
    }

    outputContentClasses2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

    goto LABEL_23;
  }

  if ([value isEqualToString:@"Cellular"])
  {
    v5 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFCellularDetail"];
    value3 = [v5 value];
    if ([value3 isEqualToString:@"Is Roaming Abroad"])
    {
      v25 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v25;
    }

    else if ([value3 isEqualToString:@"Number of Signal Bars"])
    {
      v24 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v24;
    }

    else
    {
      if (([value3 isEqualToString:@"Carrier Name"] & 1) == 0 && (objc_msgSend(value3, "isEqualToString:", @"Country Code") & 1) == 0 && !objc_msgSend(value3, "isEqualToString:", @"Radio Technology"))
      {
        v16 = getWFActionsLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v20 = "[WFGetNetworkDetailsAction outputContentClasses]";
          v21 = 2112;
          v22 = value3;
          _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_FAULT, "%s Unexpected cellularSubject: %@", buf, 0x16u);
        }

        v18.receiver = self;
        v18.super_class = WFGetNetworkDetailsAction;
        outputContentClasses = [(WFGetNetworkDetailsAction *)&v18 outputContentClasses];
        goto LABEL_22;
      }

      v23 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v23;
    }

    outputContentClasses = [v10 arrayWithObjects:v11 count:1];
LABEL_22:
    outputContentClasses2 = outputContentClasses;

LABEL_23:
    goto LABEL_24;
  }

  v12 = getWFActionsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v20 = "[WFGetNetworkDetailsAction outputContentClasses]";
    v21 = 2112;
    v22 = value;
    _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_FAULT, "%s Unexpected subject: %@", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = WFGetNetworkDetailsAction;
  outputContentClasses2 = [(WFGetNetworkDetailsAction *)&v17 outputContentClasses];
LABEL_24:

  v14 = *MEMORY[0x277D85DE8];

  return outputContentClasses2;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v190 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  selfCopy = self;
  v119 = [(WFGetNetworkDetailsAction *)self parameterValueForKey:@"WFNetworkDetailsNetwork" ofClass:objc_opt_class()];
  if (![v119 isEqualToString:@"Wi-Fi"])
  {
    if (![v119 isEqualToString:@"Cellular"])
    {
      goto LABEL_87;
    }

    v164 = 0;
    v165 = &v164;
    v166 = 0x2050000000;
    v5 = getCTTelephonyNetworkInfoClass_softClass;
    v167 = getCTTelephonyNetworkInfoClass_softClass;
    if (!getCTTelephonyNetworkInfoClass_softClass)
    {
      v177 = MEMORY[0x277D85DD0];
      v178 = 3221225472;
      v179 = __getCTTelephonyNetworkInfoClass_block_invoke;
      v180 = &unk_278C222B8;
      v181 = &v164;
      __getCTTelephonyNetworkInfoClass_block_invoke(&v177);
      v5 = v165[3];
    }

    v6 = v5;
    _Block_object_dispose(&v164, 8);
    v121 = objc_alloc_init(v5);
    v164 = 0;
    v165 = &v164;
    v166 = 0x2050000000;
    v7 = getCoreTelephonyClientClass_softClass;
    v167 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      v177 = MEMORY[0x277D85DD0];
      v178 = 3221225472;
      v179 = __getCoreTelephonyClientClass_block_invoke;
      v180 = &unk_278C222B8;
      v181 = &v164;
      __getCoreTelephonyClientClass_block_invoke(&v177);
      v7 = v165[3];
    }

    v8 = v7;
    _Block_object_dispose(&v164, 8);
    v9 = [v7 alloc];
    v136 = [v9 initWithQueue:MEMORY[0x277D85CD0]];
    v150 = 0;
    v10 = [v136 getActiveContexts:&v150];
    v11 = v150;
    subscriptions = [v10 subscriptions];
    v13 = [subscriptions if_map:&__block_literal_global_5806];

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    obj = v13;
    v135 = [obj countByEnumeratingWithState:&v146 objects:v163 count:16];
    if (!v135)
    {
LABEL_86:

      [(WFGetNetworkDetailsAction *)selfCopy finishRunningWithError:v11];
      goto LABEL_87;
    }

    v134 = *v147;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v147 != v134)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v146 + 1) + 8 * v14);
      v145 = v11;
      v16 = [v136 getLocalizedOperatorName:v15 error:&v145];
      v17 = v145;

      v18 = [(WFGetNetworkDetailsAction *)selfCopy parameterValueForKey:@"WFCellularDetail" ofClass:objc_opt_class()];
      v138 = [objc_alloc(MEMORY[0x277CFC290]) initWithDisplayedCarrierName:v16];
      if ([v18 isEqualToString:@"Carrier Name"])
      {
        uppercaseString = v16;
        if (!uppercaseString)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (![v18 isEqualToString:@"Radio Technology"])
      {
        break;
      }

      v20 = [getCTServiceDescriptorClass() descriptorWithSubscriptionContext:v15];
      identifier = [v20 identifier];

      serviceCurrentRadioAccessTechnology = [v121 serviceCurrentRadioAccessTechnology];
      v132 = [serviceCurrentRadioAccessTechnology objectForKeyedSubscript:identifier];

      if (v132)
      {
        v130 = v132;
        v164 = 0;
        v165 = &v164;
        v166 = 0x2020000000;
        v22 = getCTRadioAccessTechnologyGPRSSymbolLoc_ptr;
        v167 = getCTRadioAccessTechnologyGPRSSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyGPRSSymbolLoc_ptr)
        {
          v177 = MEMORY[0x277D85DD0];
          v178 = 3221225472;
          v179 = __getCTRadioAccessTechnologyGPRSSymbolLoc_block_invoke;
          v180 = &unk_278C222B8;
          v181 = &v164;
          v23 = CoreTelephonyLibrary();
          v24 = dlsym(v23, "CTRadioAccessTechnologyGPRS");
          *(v181->info + 24) = v24;
          getCTRadioAccessTechnologyGPRSSymbolLoc_ptr = *(v181->info + 24);
          v22 = v165[3];
        }

        _Block_object_dispose(&v164, 8);
        if (!v22)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyGPRS(void)"];
          [currentHandler handleFailureInFunction:v93 file:@"WFGetNetworkDetailsAction.m" lineNumber:29 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v25 = *v22;
        v164 = v25;
        v177 = @"GPRS";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v26 = getCTRadioAccessTechnologyEdgeSymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyEdgeSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyEdgeSymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyEdgeSymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v27 = CoreTelephonyLibrary();
          v28 = dlsym(v27, "CTRadioAccessTechnologyEdge");
          *(v157[1] + 24) = v28;
          getCTRadioAccessTechnologyEdgeSymbolLoc_ptr = *(v157[1] + 24);
          v26 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v26)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyEdge(void)"];
          [currentHandler2 handleFailureInFunction:v95 file:@"WFGetNetworkDetailsAction.m" lineNumber:30 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v29 = *v26;
        v165 = v29;
        v178 = @"Edge";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v30 = getCTRadioAccessTechnologyWCDMASymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyWCDMASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyWCDMASymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyWCDMASymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v31 = CoreTelephonyLibrary();
          v32 = dlsym(v31, "CTRadioAccessTechnologyWCDMA");
          *(v157[1] + 24) = v32;
          getCTRadioAccessTechnologyWCDMASymbolLoc_ptr = *(v157[1] + 24);
          v30 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v30)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyWCDMA(void)"];
          [currentHandler3 handleFailureInFunction:v97 file:@"WFGetNetworkDetailsAction.m" lineNumber:31 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v129 = *v30;
        v166 = v129;
        v179 = @"WCDMA";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v33 = getCTRadioAccessTechnologyHSDPASymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyHSDPASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyHSDPASymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyHSDPASymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v34 = CoreTelephonyLibrary();
          v35 = dlsym(v34, "CTRadioAccessTechnologyHSDPA");
          *(v157[1] + 24) = v35;
          getCTRadioAccessTechnologyHSDPASymbolLoc_ptr = *(v157[1] + 24);
          v33 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v33)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyHSDPA(void)"];
          [currentHandler4 handleFailureInFunction:v99 file:@"WFGetNetworkDetailsAction.m" lineNumber:32 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v128 = *v33;
        v167 = v128;
        v180 = @"HSDPA";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v36 = getCTRadioAccessTechnologyHSUPASymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyHSUPASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyHSUPASymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyHSUPASymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v37 = CoreTelephonyLibrary();
          v38 = dlsym(v37, "CTRadioAccessTechnologyHSUPA");
          *(v157[1] + 24) = v38;
          getCTRadioAccessTechnologyHSUPASymbolLoc_ptr = *(v157[1] + 24);
          v36 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v36)
        {
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          v101 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyHSUPA(void)"];
          [currentHandler5 handleFailureInFunction:v101 file:@"WFGetNetworkDetailsAction.m" lineNumber:33 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v127 = *v36;
        v168 = v127;
        v181 = @"HSUPA";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v39 = getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyCDMA1xSymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v40 = CoreTelephonyLibrary();
          v41 = dlsym(v40, "CTRadioAccessTechnologyCDMA1x");
          *(v157[1] + 24) = v41;
          getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr = *(v157[1] + 24);
          v39 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v39)
        {
          currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
          v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMA1x(void)"];
          [currentHandler6 handleFailureInFunction:v103 file:@"WFGetNetworkDetailsAction.m" lineNumber:34 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v126 = *v39;
        v169 = v126;
        v182 = @"CDMA 1x";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v42 = getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v43 = CoreTelephonyLibrary();
          v44 = dlsym(v43, "CTRadioAccessTechnologyCDMAEVDORev0");
          *(v157[1] + 24) = v44;
          getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr = *(v157[1] + 24);
          v42 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v42)
        {
          currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
          v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORev0(void)"];
          [currentHandler7 handleFailureInFunction:v105 file:@"WFGetNetworkDetailsAction.m" lineNumber:35 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v125 = *v42;
        v170 = v125;
        v183 = @"CDMA EV-DO Rev 0";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v45 = getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v46 = CoreTelephonyLibrary();
          v47 = dlsym(v46, "CTRadioAccessTechnologyCDMAEVDORevA");
          *(v157[1] + 24) = v47;
          getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr = *(v157[1] + 24);
          v45 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v45)
        {
          currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
          v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORevA(void)"];
          [currentHandler8 handleFailureInFunction:v107 file:@"WFGetNetworkDetailsAction.m" lineNumber:36 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v124 = *v45;
        v171 = v124;
        v184 = @"CDMA EV-DO Rev A";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v48 = getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v49 = CoreTelephonyLibrary();
          v50 = dlsym(v49, "CTRadioAccessTechnologyCDMAEVDORevB");
          *(v157[1] + 24) = v50;
          getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr = *(v157[1] + 24);
          v48 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v48)
        {
          currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
          v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORevB(void)"];
          [currentHandler9 handleFailureInFunction:v109 file:@"WFGetNetworkDetailsAction.m" lineNumber:37 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v123 = *v48;
        v172 = v123;
        v185 = @"CDMA EV-DO Rev B";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v51 = getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyeHRPDSymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v52 = CoreTelephonyLibrary();
          v53 = dlsym(v52, "CTRadioAccessTechnologyeHRPD");
          *(v157[1] + 24) = v53;
          getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr = *(v157[1] + 24);
          v51 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v51)
        {
          currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
          v111 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyeHRPD(void)"];
          [currentHandler10 handleFailureInFunction:v111 file:@"WFGetNetworkDetailsAction.m" lineNumber:38 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v54 = *v51;
        v173 = v54;
        v186 = @"HRPD";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v55 = getCTRadioAccessTechnologyLTESymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyLTESymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyLTESymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyLTESymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v56 = CoreTelephonyLibrary();
          v57 = dlsym(v56, "CTRadioAccessTechnologyLTE");
          *(v157[1] + 24) = v57;
          getCTRadioAccessTechnologyLTESymbolLoc_ptr = *(v157[1] + 24);
          v55 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v55)
        {
          currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
          v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyLTE(void)"];
          [currentHandler11 handleFailureInFunction:v113 file:@"WFGetNetworkDetailsAction.m" lineNumber:39 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v58 = *v55;
        v174 = v58;
        v187 = @"LTE";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v59 = getCTRadioAccessTechnologyNRNSASymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyNRNSASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyNRNSASymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyNRNSASymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v60 = CoreTelephonyLibrary();
          v61 = dlsym(v60, "CTRadioAccessTechnologyNRNSA");
          *(v157[1] + 24) = v61;
          getCTRadioAccessTechnologyNRNSASymbolLoc_ptr = *(v157[1] + 24);
          v59 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v59)
        {
          currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
          v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyNRNSA(void)"];
          [currentHandler12 handleFailureInFunction:v115 file:@"WFGetNetworkDetailsAction.m" lineNumber:40 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v122 = v25;
        v62 = *v59;
        v175 = v62;
        v188 = @"5G NR NSA";
        v158 = 0;
        v159 = &v158;
        v160 = 0x2020000000;
        v63 = getCTRadioAccessTechnologyNRSymbolLoc_ptr;
        v161 = getCTRadioAccessTechnologyNRSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyNRSymbolLoc_ptr)
        {
          v153 = MEMORY[0x277D85DD0];
          v154 = 3221225472;
          v155 = __getCTRadioAccessTechnologyNRSymbolLoc_block_invoke;
          v156 = &unk_278C222B8;
          v157 = &v158;
          v64 = CoreTelephonyLibrary();
          v65 = dlsym(v64, "CTRadioAccessTechnologyNR");
          *(v157[1] + 24) = v65;
          getCTRadioAccessTechnologyNRSymbolLoc_ptr = *(v157[1] + 24);
          v63 = v159[3];
        }

        _Block_object_dispose(&v158, 8);
        if (!v63)
        {
          currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
          v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyNR(void)"];
          [currentHandler13 handleFailureInFunction:v117 file:@"WFGetNetworkDetailsAction.m" lineNumber:41 description:{@"%s", dlerror(), inputCopy}];

LABEL_101:
          __break(1u);
        }

        v176 = *v63;
        v189 = @"5G NR";
        v66 = MEMORY[0x277CBEAC0];
        v67 = v176;
        v68 = [v66 dictionaryWithObjects:&v177 forKeys:&v164 count:13];

        uppercaseString = [v68 objectForKeyedSubscript:v130];
        if (!uppercaseString)
        {
          uppercaseString = [v130 stringByReplacingOccurrencesOfString:@"CTRadioAccessTechnology" withString:&stru_2850323E8];
        }
      }

      else
      {
        uppercaseString = 0;
      }

LABEL_68:
      if (uppercaseString)
      {
        goto LABEL_69;
      }

LABEL_70:
      v11 = v17;

      if (v135 == ++v14)
      {
        v90 = [obj countByEnumeratingWithState:&v146 objects:v163 count:16];
        v135 = v90;
        if (!v90)
        {
          goto LABEL_86;
        }

        goto LABEL_10;
      }
    }

    if ([v18 isEqualToString:@"Country Code"])
    {
      v144 = v17;
      v69 = [v136 copyMobileCountryCode:v15 error:&v144];
      v70 = v144;

      if (v69)
      {
        v143 = v70;
        v71 = [v136 copyMobileSubscriberIsoCountryCode:v69 error:&v143];
        v72 = v143;

        uppercaseString = [v71 uppercaseString];

        v70 = v72;
      }

      else
      {
        uppercaseString = 0;
      }

LABEL_80:
      v17 = v70;
      if (!uppercaseString)
      {
        goto LABEL_70;
      }

LABEL_69:
      v78 = MEMORY[0x277CFC300];
      networkLocation = [MEMORY[0x277CFC318] networkLocation];
      v162 = v138;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];
      v81 = [v78 configurationWithOrigin:networkLocation disclosureLevel:1 disclosureWarnings:v80];

      v82 = [MEMORY[0x277CFC2F8] itemWithObject:uppercaseString privacyConfiguration:v81];
      output = [(WFGetNetworkDetailsAction *)selfCopy output];
      [output addItem:v82];

      goto LABEL_70;
    }

    if ([v18 isEqualToString:@"Is Roaming Abroad"])
    {
      v142 = v17;
      v73 = [v136 copyServingPlmn:v15 error:&v142];
      v70 = v142;

      if ([v73 BOOLValue])
      {
        v141 = v70;
        v74 = [v136 copyIsInHomeCountry:v15 error:&v141];
        v75 = v141;

        bOOLValue = [v74 BOOLValue];
        v77 = bOOLValue ^ 1u;
        v70 = v75;
      }

      else
      {
        v77 = 0;
      }

      uppercaseString = [MEMORY[0x277CCABB0] numberWithBool:v77];
      goto LABEL_80;
    }

    if (![v18 isEqualToString:@"Number of Signal Bars"])
    {
      goto LABEL_70;
    }

    v84 = [getCTServiceDescriptorClass() descriptorWithSubscriptionContext:v15];
    v140 = v17;
    v85 = [v136 getPublicSignalStrength:v84 error:&v140];
    v86 = v140;

    if (v85)
    {
      v139 = v86;
      v87 = [v136 copyServingPlmn:v15 error:&v139];
      v17 = v139;

      bOOLValue2 = [v87 BOOLValue];
      if (bOOLValue2)
      {
        displayBars = [v85 displayBars];
LABEL_84:
        uppercaseString = displayBars;

        goto LABEL_68;
      }
    }

    else
    {
      v17 = v86;
    }

    displayBars = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    goto LABEL_84;
  }

  v4 = [(WFGetNetworkDetailsAction *)self parameterValueForKey:@"WFWiFiDetail" ofClass:objc_opt_class()];
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __56__WFGetNetworkDetailsAction_runAsynchronouslyWithInput___block_invoke;
  v151[3] = &unk_278C19AA8;
  v151[4] = self;
  v152 = v4;
  v120 = v4;
  [WFWiFiSettingsClient createClientWithCompletionHandler:v151];

LABEL_87:
  v91 = *MEMORY[0x277D85DE8];
}

void __56__WFGetNetworkDetailsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([*(a1 + 40) isEqualToString:@"Network Name"])
    {
      v8 = [v7 networkName];
      v9 = objc_alloc(MEMORY[0x277CFC500]);
      v10 = [v7 networkName];
      v11 = [v9 initWithDisplayedNetworkName:v10];

      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if ([*(a1 + 40) isEqualToString:@"BSSID"])
    {
      v8 = [v7 BSSID];
      v12 = objc_opt_new();
      goto LABEL_8;
    }

    if ([*(a1 + 40) isEqualToString:@"TX Rate"])
    {
      v13 = [v7 txRate];
    }

    else if ([*(a1 + 40) isEqualToString:@"RX Rate"])
    {
      v13 = [v7 rxRate];
    }

    else if ([*(a1 + 40) isEqualToString:@"RSSI"])
    {
      v13 = [v7 RSSI];
    }

    else if ([*(a1 + 40) isEqualToString:@"Noise"])
    {
      v13 = [v7 noise];
    }

    else
    {
      if ([*(a1 + 40) isEqualToString:@"Hardware MAC Address"])
      {
        v8 = [v7 hardwareMACAddress];
        v22 = [v7 hardwareMACAddress];
        v23 = [v22 length];

        if (v23)
        {
          v12 = [objc_alloc(MEMORY[0x277CFC438]) initWithDisplayedMACAddress:v8];
LABEL_8:
          v11 = v12;
          if (!v8)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

LABEL_19:
        v11 = 0;
        if (!v8)
        {
LABEL_23:
          [*(a1 + 32) finishRunningWithError:0];

          goto LABEL_24;
        }

LABEL_20:
        v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
        v15 = v14;
        if (v11)
        {
          [v14 addObject:v11];
        }

        v16 = MEMORY[0x277CFC300];
        v17 = [MEMORY[0x277CFC318] networkLocation];
        v18 = [v16 configurationWithOrigin:v17 disclosureLevel:1 disclosureWarnings:v15];

        v19 = [MEMORY[0x277CFC2F8] itemWithObject:v8 privacyConfiguration:v18];
        v20 = [*(a1 + 32) output];
        [v20 addItem:v19];

        goto LABEL_23;
      }

      if ([*(a1 + 40) isEqualToString:@"Channel Number"])
      {
        v13 = [v7 channel];
      }

      else
      {
        if (![*(a1 + 40) isEqualToString:@"Wi-Fi Standard"])
        {
          v24 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v25 = *(a1 + 40);
            v26 = 136315394;
            v27 = "[WFGetNetworkDetailsAction runAsynchronouslyWithInput:]_block_invoke";
            v28 = 2112;
            v29 = v25;
            _os_log_impl(&dword_23DE30000, v24, OS_LOG_TYPE_FAULT, "%s Unexpected WFWiFiDetailKey %@ in WFGetNetworkDetailsAction", &v26, 0x16u);
          }

          v8 = 0;
          v11 = 0;
          goto LABEL_23;
        }

        v13 = [v7 wifiStandard];
      }
    }

    v8 = v13;
    goto LABEL_19;
  }

  [*(a1 + 32) finishRunningWithError:a3];
LABEL_24:

  v21 = *MEMORY[0x277D85DE8];
}

@end