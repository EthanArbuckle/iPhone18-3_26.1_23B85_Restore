@interface ADSystemService
- (ADSystemService)init;
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (id)_systemDomains;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)dealloc;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)handleResponse:(id)response toCommand:(id)command completion:(id)completion;
@end

@implementation ADSystemService

- (void)handleResponse:(id)response toCommand:(id)command completion:(id)completion
{
  responseCopy = response;
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = commandCopy;
    v10 = responseCopy;
    v11 = +[ADCommandCenter sharedCommandCenter];
    [v11 _handleExtractSpeechDataCompleted:v10 inResponseTo:v9 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  if (!self->_commandMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    self->_commandMap = Mutable;
    v14 = objc_opt_class();
    CFDictionarySetValue(Mutable, v14, "_saCommandFailed:completion:");
    commandMap = self->_commandMap;
    v16 = objc_opt_class();
    CFDictionarySetValue(commandMap, v16, "_saCommandIgnored:completion:");
    v17 = self->_commandMap;
    v18 = objc_opt_class();
    CFDictionarySetValue(v17, v18, "_saSendCommands:completion:");
    v19 = self->_commandMap;
    v20 = objc_opt_class();
    CFDictionarySetValue(v19, v20, "_saAssistantDestroyed:completion:");
    v21 = self->_commandMap;
    v22 = objc_opt_class();
    CFDictionarySetValue(v21, v22, "_saCancelSucceeded:completion:");
    v23 = self->_commandMap;
    v24 = objc_opt_class();
    CFDictionarySetValue(v23, v24, "_saRollbackSucceeded:completion:");
    v25 = self->_commandMap;
    v26 = objc_opt_class();
    CFDictionarySetValue(v25, v26, "_saSetClientData:completion:");
    v27 = self->_commandMap;
    v28 = objc_opt_class();
    CFDictionarySetValue(v27, v28, "_saSetHandoffPayload:completion:");
    v29 = self->_commandMap;
    v30 = objc_opt_class();
    CFDictionarySetValue(v29, v30, "_saStartLocalRequest:completion:");
    v31 = self->_commandMap;
    v32 = objc_opt_class();
    CFDictionarySetValue(v31, v32, "_saAddResultObjects:completion:");
    v33 = self->_commandMap;
    v34 = objc_opt_class();
    CFDictionarySetValue(v33, v34, "_saExecuteCallbacks:completion:");
    v35 = self->_commandMap;
    v36 = objc_opt_class();
    CFDictionaryAddValue(v35, v36, "_saInitiateHandoffOnCompanion:completion:");
    v37 = self->_commandMap;
    v38 = objc_opt_class();
    CFDictionaryAddValue(v37, v38, "_saSetDeviceTTSMuteState:completion:");
    v39 = self->_commandMap;
    v40 = objc_opt_class();
    CFDictionaryAddValue(v39, v40, "_saPing:completion:");
    v41 = self->_commandMap;
    v42 = objc_opt_class();
    CFDictionaryAddValue(v41, v42, "_saWaitForCommands:completion:");
    v43 = self->_commandMap;
    v44 = objc_opt_class();
    CFDictionarySetValue(v43, v44, "_saSyncGetAnchorsResponse:completion:");
    v45 = self->_commandMap;
    v46 = objc_opt_class();
    CFDictionarySetValue(v45, v46, "_saSyncChunkDenied:completion:");
    v47 = self->_commandMap;
    v48 = objc_opt_class();
    CFDictionarySetValue(v47, v48, "_saSyncChunkAccepted:completion:");
    v49 = self->_commandMap;
    v50 = objc_opt_class();
    CFDictionarySetValue(v49, v50, "_saDomainObjectCreate:completion:");
    v51 = self->_commandMap;
    v52 = objc_opt_class();
    CFDictionarySetValue(v51, v52, "_saDomainObjectRetrieve:completion:");
    v53 = self->_commandMap;
    v54 = objc_opt_class();
    CFDictionarySetValue(v53, v54, "_saDomainObjectUpdate:completion:");
    v55 = self->_commandMap;
    v56 = objc_opt_class();
    CFDictionarySetValue(v55, v56, "_saDomainObjectCancel:completion:");
    v57 = self->_commandMap;
    v58 = objc_opt_class();
    CFDictionarySetValue(v57, v58, "_saDomainObjectDelete:completion:");
    v59 = self->_commandMap;
    v60 = objc_opt_class();
    CFDictionarySetValue(v59, v60, "_saDomainObjectCommit:completion:");
    v61 = self->_commandMap;
    v62 = objc_opt_class();
    CFDictionarySetValue(v61, v62, "_saDomainObjectPunchOut:completion:");
    v63 = self->_commandMap;
    v64 = objc_opt_class();
    CFDictionarySetValue(v63, v64, "_sasSpeechPartialResult:completion:");
    v65 = self->_commandMap;
    v66 = objc_opt_class();
    CFDictionarySetValue(v65, v66, "_sasSpeechFailure:completion:");
    v67 = self->_commandMap;
    v68 = objc_opt_class();
    CFDictionarySetValue(v67, v68, "_sasAbortSpeechRequest:completion:");
    v69 = self->_commandMap;
    v70 = objc_opt_class();
    CFDictionarySetValue(v69, v70, "_saStructuredDictationResult:completion:");
    v71 = self->_commandMap;
    v72 = objc_opt_class();
    CFDictionarySetValue(v71, v72, "_saStructuredDictationFailure:completion:");
    v73 = self->_commandMap;
    v74 = objc_opt_class();
    CFDictionarySetValue(v73, v74, "_sasVoiceSearchPartialResult:completion:");
    v75 = self->_commandMap;
    v76 = objc_opt_class();
    CFDictionarySetValue(v75, v76, "_sasVoiceSearchFinalResult:completion:");
    v77 = self->_commandMap;
    v78 = objc_opt_class();
    CFDictionarySetValue(v77, v78, "_sasSuspendClientEndpointer:completion:");
    v79 = self->_commandMap;
    v80 = objc_opt_class();
    CFDictionarySetValue(v79, v80, "_sasConfirmEndpoint:completion:");
    v81 = self->_commandMap;
    v82 = objc_opt_class();
    CFDictionarySetValue(v81, v82, "_sasPronunciationRecognized:completion:");
    v83 = self->_commandMap;
    v84 = objc_opt_class();
    CFDictionarySetValue(v83, v84, "_sasServerEndpointFeatures:completion:");
    v85 = self->_commandMap;
    v86 = objc_opt_class();
    CFDictionarySetValue(v85, v86, "_sasClientBoundConfusionNetwork:completion:");
    v87 = self->_commandMap;
    v88 = objc_opt_class();
    CFDictionarySetValue(v87, v88, "_saClientSetupInfo:completion:");
    v89 = self->_commandMap;
    v90 = objc_opt_class();
    CFDictionarySetValue(v89, v90, "_sasResultCandidate:completion:");
    v91 = self->_commandMap;
    v92 = objc_opt_class();
    CFDictionarySetValue(v91, v92, "_sasSpeechServerEndpointIdentified:completion:");
    v93 = self->_commandMap;
    v94 = objc_opt_class();
    CFDictionarySetValue(v93, v94, "_sasVoiceIdentificationSignal:completion:");
    if ((AFIsHorseman() & 1) == 0)
    {
      v95 = self->_commandMap;
      v96 = objc_opt_class();
      CFDictionarySetValue(v95, v96, "_saAcknowledgeAlert:completion:");
    }

    v97 = self->_commandMap;
    v98 = objc_opt_class();
    CFDictionarySetValue(v97, v98, "_saDeviceConfiguration:completion:");
    v99 = self->_commandMap;
    v100 = objc_opt_class();
    CFDictionarySetValue(v99, v100, "_saDeviceMyriadConfiguration:completion:");
    v101 = self->_commandMap;
    v102 = objc_opt_class();
    CFDictionarySetValue(v101, v102, "_saSetLatencyDiagnosticConfiguration:completion:");
    v103 = self->_commandMap;
    v104 = objc_opt_class();
    CFDictionaryAddValue(v103, v104, "_saAIRequestSearch:completion:");
    v105 = self->_commandMap;
    v106 = objc_opt_class();
    CFDictionarySetValue(v105, v106, "_saAISearchCompleted:completion:");
    v107 = self->_commandMap;
    v108 = objc_opt_class();
    CFDictionarySetValue(v107, v108, "_saAIRetrySearch:completion:");
    v109 = self->_commandMap;
    v110 = objc_opt_class();
    CFDictionarySetValue(v109, v110, "_saLogSignatureWithABC:completion:");
    v111 = self->_commandMap;
    v112 = objc_opt_class();
    CFDictionarySetValue(v111, v112, "_saLogNumericEvent:completion:");
    v113 = self->_commandMap;
    v114 = objc_opt_class();
    CFDictionarySetValue(v113, v114, "_saLogStringEvent:completion:");
    v115 = self->_commandMap;
    v116 = objc_opt_class();
    CFDictionarySetValue(v115, v116, "_saPerformDataDetection:completion:");
    v117 = self->_commandMap;
    v118 = objc_opt_class();
    CFDictionarySetValue(v117, v118, "_saStartUIRequest:completion:");
    v119 = self->_commandMap;
    v120 = objc_opt_class();
    CFDictionarySetValue(v119, v120, "_saReplayRequestFromDMHypothesis:completion:");
    v121 = self->_commandMap;
    v122 = objc_opt_class();
    CFDictionarySetValue(v121, v122, "_saTTSGetSpeechSynthesisVolume:completion:");
    v123 = self->_commandMap;
    v124 = objc_opt_class();
    CFDictionarySetValue(v123, v124, "_saTTSSetSpeechSynthesisVolume:completion:");
    v125 = self->_commandMap;
    v126 = objc_opt_class();
    CFDictionarySetValue(v125, v126, "_saNotificationSearch:completion:");
    v127 = self->_commandMap;
    v128 = objc_opt_class();
    CFDictionarySetValue(v127, v128, "_saPerformRemoteAnnouncement:completion:");
    v129 = self->_commandMap;
    v130 = objc_opt_class();
    CFDictionarySetValue(v129, v130, "_saDismissRemoteAnnouncement:completion:");
  }

  if (!self->_commandMapV2)
  {
    v131 = CFDictionaryCreateMutable(0, 0, 0, 0);
    self->_commandMapV2 = v131;
    v132 = objc_opt_class();
    CFDictionarySetValue(v131, v132, "_saRequestCompleted:executionContext:completion:");
    commandMapV2 = self->_commandMapV2;
    v134 = objc_opt_class();
    CFDictionarySetValue(commandMapV2, v134, "_saCancelCrossDeviceRequest:executionContext:completion:");
    v135 = self->_commandMapV2;
    v136 = objc_opt_class();
    CFDictionarySetValue(v135, v136, "_saExecuteOnRemoteRequest:executionContext:completion:");
    v137 = self->_commandMapV2;
    v138 = objc_opt_class();
    CFDictionarySetValue(v137, v138, "_sasSpeechRecognized:executionContext:completion:");
    v139 = self->_commandMapV2;
    v140 = objc_opt_class();
    CFDictionarySetValue(v139, v140, "_sasSpeechMultilingualSpeechRecognized:executionContext:completion:");
    v141 = self->_commandMapV2;
    v142 = objc_opt_class();
    CFDictionarySetValue(v141, v142, "_sasExtractSpeechData:executionContext:completion:");
    v143 = self->_commandMapV2;
    v144 = objc_opt_class();
    CFDictionarySetValue(v143, v144, "_saQuickStop:executionContext:completion:");
    v145 = self->_commandMapV2;
    v146 = objc_opt_class();
    CFDictionarySetValue(v145, v146, "_saGetRequestOrigin:executionContext:completion:");
    v147 = self->_commandMapV2;
    v148 = objc_opt_class();
    CFDictionarySetValue(v147, v148, "_saGetAssistantData:executionContext:completion:");
    v149 = self->_commandMapV2;
    v150 = objc_opt_class();
    CFDictionaryAddValue(v149, v150, "_saPostPersonalDomainActivityNotification:executionContext:completion:");
    v151 = self->_commandMapV2;
    v152 = objc_opt_class();
    CFDictionaryAddValue(v151, v152, "_saPostCalendarActivityNotification:executionContext:completion:");
    v153 = self->_commandMapV2;
    v154 = objc_opt_class();
    CFDictionaryAddValue(v153, v154, "_saPostUpdatePersonalRequestSettingsNotification:executionContext:completion:");
  }

  v155 = self->_commandMap;
  v156 = objc_opt_class();
  Value = CFDictionaryGetValue(v155, v156);
  if (Value)
  {
    v158 = Value;
    v159 = +[ADCommandCenter sharedCommandCenter];
    [v159 v158];
  }

  else
  {
    v160 = self->_commandMapV2;
    v161 = objc_opt_class();
    v162 = CFDictionaryGetValue(v160, v161);
    v163 = +[ADCommandCenter sharedCommandCenter];
    v159 = v163;
    if (v162)
    {
      [v163 v162];
    }

    else
    {
      [v163 _saUnhandledObject:commandCopy completion:replyCopy];
    }
  }
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  commandCopy = command;
  domainCopy = domain;
  if ([domainCopy isEqualToString:SATTSGroupIdentifier])
  {
    if ([commandCopy isEqualToString:SATTSGetSpeechSynthesisVolumeClassIdentifier])
    {
      v8 = 1;
    }

    else
    {
      v8 = [commandCopy isEqualToString:SATTSSetSpeechSynthesisVolumeClassIdentifier];
    }
  }

  else
  {
    _systemDomains = [(ADSystemService *)self _systemDomains];
    v8 = [_systemDomains containsObject:domainCopy];
  }

  return v8;
}

- (id)commandsForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:SATTSGroupIdentifier])
  {
    v8[0] = SATTSGetSpeechSynthesisVolumeClassIdentifier;
    v8[1] = SATTSSetSpeechSynthesisVolumeClassIdentifier;
    v5 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    _systemDomains = [(ADSystemService *)self _systemDomains];
    if ([_systemDomains containsObject:domainCopy])
    {
      v5 = [NSArray arrayWithObject:domainCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)domains
{
  _systemDomains = [(ADSystemService *)self _systemDomains];
  allObjects = [_systemDomains allObjects];

  return allObjects;
}

- (id)_systemDomains
{
  if (qword_10058FF90 != -1)
  {
    dispatch_once(&qword_10058FF90, &stru_1005104B0);
  }

  v3 = qword_10058FF88;

  return v3;
}

- (void)dealloc
{
  commandMapV2 = self->_commandMapV2;
  if (commandMapV2)
  {
    CFRelease(commandMapV2);
  }

  commandMap = self->_commandMap;
  if (commandMap)
  {
    CFRelease(commandMap);
  }

  v5.receiver = self;
  v5.super_class = ADSystemService;
  [(ADSystemService *)&v5 dealloc];
}

- (ADSystemService)init
{
  v5.receiver = self;
  v5.super_class = ADSystemService;
  v2 = [(ADSystemService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADService *)v2 setIdentifier:@"SystemService"];
  }

  return v3;
}

@end