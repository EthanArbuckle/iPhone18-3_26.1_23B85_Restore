@interface IUISessionCoordinator
+ (BOOL)_useRTIInterfaceForAutoFillOnIphone;
- (IUISessionCoordinator)initWithQueue:(id)queue;
- (RTIInputSystemDelegate)autofillUIServiceDelegate;
- (id)_main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:(id)assistant;
- (id)_main_inputSourceForChangeContext:(id)context;
- (id)_main_placeholderInputSourceForSession:(id)session;
- (id)_main_placeholderServiceSessionWithIdentifier:(id)identifier documentTraits:(id)traits;
- (id)_main_willSetupNewDelegateCallback_withSessionChangeAssistant:(id)assistant;
- (id)assertionForOptions:(id)options;
- (id)serviceSessionPayloadDelegate;
- (id)sessionChangeQueue;
- (void)_endSession:(id)session options:(id)options completion:(id)completion;
- (void)_main_handleSessionChange:(id)change;
- (void)_queue_queueSessionChange:(id)change;
- (void)handlePendingSuggestionsDataIfNecessary;
- (void)inputSource:(id)source didGenerateTextActionPayload:(id)payload;
- (void)inputSystemService:(id)service didCreateInputSession:(id)session;
- (void)inputSystemService:(id)service inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon;
- (void)inputSystemService:(id)service inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon;
- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session documentTraitsDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response;
- (void)inputSystemService:(id)service inputSession:(id)session textSuggestionsChanged:(id)changed;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options completion:(id)completion;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change;
- (void)invalidateAssertionIfNeeded:(id)needed resetKeyboardAlpha:(BOOL)alpha;
- (void)reloadInputSource;
- (void)setCurrentSession:(id)session;
@end

@implementation IUISessionCoordinator

- (IUISessionCoordinator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = IUISessionCoordinator;
  v6 = [(IUISessionCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

+ (BOOL)_useRTIInterfaceForAutoFillOnIphone
{
  if (qword_10002B828 != -1)
  {
    sub_10000CB38();
  }

  return byte_10002B820;
}

- (void)reloadInputSource
{
  if (qword_10002B838 != -1)
  {
    sub_10000CB4C();
  }

  if ((byte_10002B830 & 1) == 0)
  {
    v3 = objc_alloc_init(IUIRTIInputSource);
    [(IUIRTIInputSource *)v3 setDataTransportDelegate:self];
    [(IUIRTIInputSource *)v3 setHidden:1];
    inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
    view = [inputSourceViewController view];
    [view addSubview:v3];

    [(IUISessionCoordinator *)self setTextInputSource:v3];
    v6 = +[UIApplication sharedApplication];
    systemDelegateMultiplexer = [v6 systemDelegateMultiplexer];
    [systemDelegateMultiplexer setPrimaryDelegate:self];

    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    [textInputSource setCanBecomeFirstResponder:0];

    v9 = sub_100001928();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Input source did load", v10, 2u);
    }
  }
}

- (void)setCurrentSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentSession = self->_currentSession;
  self->_currentSession = sessionCopy;
}

- (void)inputSource:(id)source didGenerateTextActionPayload:(id)payload
{
  payloadCopy = payload;
  currentServiceSession = [(IUISessionCoordinator *)self currentServiceSession];
  if (!currentServiceSession)
  {
    v7 = sub_100001928();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB60(v7);
    }
  }

  [currentServiceSession handleTextActionPayload:payloadCopy];
}

- (id)serviceSessionPayloadDelegate
{
  currentServiceSession = [(IUISessionCoordinator *)self currentServiceSession];
  if (!currentServiceSession)
  {
    v3 = sub_100001928();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000CBE4(v3);
    }
  }

  return currentServiceSession;
}

- (id)assertionForOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy && ((v6 = [optionsCopy animated], v7 = objc_msgSend(v5, "offscreenDirection"), v7) || (v6 & 1) == 0))
  {
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    keyboardSceneDelegate = [textInputSource keyboardSceneDelegate];
    v11 = keyboardSceneDelegate;
    if (keyboardSceneDelegate)
    {
      v12 = keyboardSceneDelegate;
    }

    else
    {
      v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }

    v13 = v12;

    v8 = [v13 requestAnimationAssertionWithDirection:v7 animated:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)invalidateAssertionIfNeeded:(id)needed resetKeyboardAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  neededCopy = needed;
  if (alphaCopy)
  {
    [UIKeyboard setKeyboardAlpha:1.0];
  }

  [neededCopy invalidate];
}

- (id)sessionChangeQueue
{
  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  sessionChangeQueue = self->_sessionChangeQueue;
  if (!sessionChangeQueue)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = self->_sessionChangeQueue;
    self->_sessionChangeQueue = v5;

    sessionChangeQueue = self->_sessionChangeQueue;
  }

  return sessionChangeQueue;
}

- (void)handlePendingSuggestionsDataIfNecessary
{
  pendingSuggestions = [(IUISessionCoordinator *)self pendingSuggestions];
  currentSession = [(IUISessionCoordinator *)self currentSession];
  uuid = [currentSession uuid];
  v12 = [pendingSuggestions objectForKey:uuid];

  if (v12)
  {
    pendingSuggestions2 = [(IUISessionCoordinator *)self pendingSuggestions];
    currentSession2 = [(IUISessionCoordinator *)self currentSession];
    uuid2 = [currentSession2 uuid];
    [pendingSuggestions2 removeObjectForKey:uuid2];

    v9 = [UITextSuggestion decodeTextSuggestions:v12];
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    inputDelegate = [textInputSource inputDelegate];
    [inputDelegate setSuggestions:v9];
  }
}

- (RTIInputSystemDelegate)autofillUIServiceDelegate
{
  if (!self->_autofillUIServiceDelegate && +[UIKeyboard supportsAutoFillPanel](UIKeyboard, "supportsAutoFillPanel") && [objc_opt_class() _useRTIInterfaceForAutoFillOnIphone])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_10002B840;
    v13 = qword_10002B840;
    if (!qword_10002B840)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100009C24;
      v9[3] = &unk_100020528;
      v9[4] = &v10;
      sub_100009C24(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    autofillUIServiceDelegate = self->_autofillUIServiceDelegate;
    self->_autofillUIServiceDelegate = v5;
  }

  v7 = self->_autofillUIServiceDelegate;

  return v7;
}

- (id)_main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:(id)assistant
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000049C0;
  v6[3] = &unk_1000205A8;
  assistantCopy = assistant;
  v3 = assistantCopy;
  v4 = [v6 copy];

  return v4;
}

- (id)_main_willSetupNewDelegateCallback_withSessionChangeAssistant:(id)assistant
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004AD8;
  v6[3] = &unk_1000205A8;
  assistantCopy = assistant;
  v3 = assistantCopy;
  v4 = [v6 copy];

  return v4;
}

- (void)_queue_queueSessionChange:(id)change
{
  changeCopy = change;
  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  sessionChange = [changeCopy sessionChange];
  isBeginningSession = [sessionChange isBeginningSession];

  sessionChange2 = [changeCopy sessionChange];
  isEndingSession = [sessionChange2 isEndingSession];

  v10 = sub_10000235C();
  v11 = v10;
  if (isEndingSession & 1) != 0 || (isBeginningSession)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IUISessionCoordinator _queue_queueSessionChange:]";
      v18 = 2112;
      v19 = changeCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s  Ready to handle session change: %@", buf, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004D4C;
    v14[3] = &unk_1000205D0;
    v14[4] = self;
    v15 = changeCopy;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC68(changeCopy);
    }

    v12 = [[IUISessionChangeResponse alloc] initWithResponseState:2];
    completion = [changeCopy completion];
    (completion)[2](completion, v12);
  }
}

- (id)_main_inputSourceForChangeContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(IUIRTIInputSource);
  [(IUIRTIInputSource *)v5 setHidden:1];
  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:0];
  v6 = [RTIInputSystemDataPayload payloadWithData:0];
  sessionChange = [contextCopy sessionChange];
  beginSessionDocumentTraits = [sessionChange beginSessionDocumentTraits];
  v9 = [beginSessionDocumentTraits copy];
  [v6 setDocumentTraits:v9];

  sessionChange2 = [contextCopy sessionChange];
  beginSessionDocumentState = [sessionChange2 beginSessionDocumentState];
  v12 = [beginSessionDocumentState copy];
  [v6 setDocumentState:v12];

  sessionChange3 = [contextCopy sessionChange];

  beginSessionID = [sessionChange3 beginSessionID];
  v15 = [beginSessionID copy];
  [v6 setSessionUUID:v15];

  [v6 updateData];
  [(IUIRTIInputSource *)v5 ingestDataPayload:v6];
  inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
  view = [inputSourceViewController view];
  [view addSubview:v5];

  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:1];

  return v5;
}

- (id)_main_placeholderInputSourceForSession:(id)session
{
  sessionCopy = session;
  v5 = objc_alloc_init(IUIRTIInputSource);
  [(IUIRTIInputSource *)v5 setHidden:1];
  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:0];
  uuid = [sessionCopy uuid];
  [(IUIRTIInputSource *)v5 setIdentifier:uuid];

  [(IUIRTIInputSource *)v5 setPlaceholder:1];
  currentDataPayload = [sessionCopy currentDataPayload];

  [(IUIRTIInputSource *)v5 ingestDataPayload:currentDataPayload];
  inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
  view = [inputSourceViewController view];
  [view addSubview:v5];

  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:1];

  return v5;
}

- (id)_main_placeholderServiceSessionWithIdentifier:(id)identifier documentTraits:(id)traits
{
  traitsCopy = traits;
  identifierCopy = identifier;
  v7 = objc_alloc_init(RTIDocumentState);
  v8 = [RTIInputSystemServiceSessionPlaceholder placeholderServiceSessionWithIdentifier:identifierCopy traits:traitsCopy state:v7];

  return v8;
}

- (void)_main_handleSessionChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = sub_10000235C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionChange = [(IUISessionChangeContext *)changeCopy sessionChange];
    *buf = 136315394;
    *&buf[4] = "[IUISessionCoordinator _main_handleSessionChange:]";
    *&buf[12] = 2112;
    *&buf[14] = sessionChange;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  begin session change: %@", buf, 0x16u);
  }

  sessionChange2 = [(IUISessionChangeContext *)changeCopy sessionChange];
  isEndingSession = [sessionChange2 isEndingSession];
  isBeginningSession = [sessionChange2 isBeginningSession];
  currentSession = [(IUISessionCoordinator *)self currentSession];

  if ((isEndingSession & (currentSession != 0)) == 1)
  {
    currentSession2 = [(IUISessionCoordinator *)self currentSession];
    uuid = [currentSession2 uuid];
    endSessionID = [sessionChange2 endSessionID];
    v14 = [uuid isEqual:endSessionID];

    if (v14)
    {
      options = [sessionChange2 options];
      shouldResign = [options shouldResign];

      v17 = shouldResign ^ 1;
      v14 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
  }

  v18 = sub_10000235C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    *&buf[4] = "[IUISessionCoordinator _main_handleSessionChange:]";
    *&buf[12] = 1024;
    *&buf[14] = isEndingSession;
    *&buf[18] = 1024;
    *&buf[20] = isBeginningSession;
    LOWORD(v78) = 1024;
    *(&v78 + 2) = currentSession != 0;
    HIWORD(v78) = 1024;
    LODWORD(v79) = v14;
    WORD2(v79) = 1024;
    *(&v79 + 6) = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s  \n  changeEndsSession:   %d\n  changeBeginsSession: %d\n  hasCurrentSession:   %d\n  endingSessionMatchesCurrentSession: %d\n  createPlaceholderInputSource: %d", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v78 = sub_1000059CC;
  *&v79 = sub_1000059DC;
  *(&v79 + 1) = 0;
  if ((isBeginningSession & (currentSession != 0)) == 1)
  {
    v19 = sub_10000235C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      currentSession3 = [(IUISessionCoordinator *)self currentSession];
      sub_10000CCF8(currentSession3, changeCopy, v76, v19);
    }
  }

  if (((v14 | isEndingSession ^ 1) & 1) == 0)
  {
    v22 = sub_10000235C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sessionChange3 = [(IUISessionChangeContext *)changeCopy sessionChange];
      sub_10000CD70(sessionChange3, v72, v22);
    }

    v24 = [[IUISessionChangeResponse alloc] initWithResponseState:2];
    completion = [(IUISessionChangeContext *)changeCopy completion];
    (completion)[2](completion, v24);

    v26 = 0;
    goto LABEL_37;
  }

  if (currentSession)
  {
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    if (isBeginningSession)
    {
LABEL_17:
      v21 = [(IUISessionCoordinator *)self _main_inputSourceForChangeContext:changeCopy];
LABEL_27:
      v62 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    textInputSource = 0;
    if (isBeginningSession)
    {
      goto LABEL_17;
    }
  }

  if (!v17)
  {
    v21 = 0;
    goto LABEL_27;
  }

  v61 = +[NSUUID UUID];
  v27 = sub_10000235C();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v72 = 136315394;
    v73 = "[IUISessionCoordinator _main_handleSessionChange:]";
    v74 = 2112;
    v75 = v61;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s  Creating placeholder service session with identifier: %@", v72, 0x16u);
  }

  sourceSession = [textInputSource sourceSession];
  documentTraits = [sourceSession documentTraits];
  v30 = [documentTraits copy];

  [v30 setAutofillMode:0];
  [v30 setAutofillSubMode:0];
  [v30 setAutofillContext:0];
  v60 = objc_alloc_init(RTIDocumentState);
  v31 = [(IUISessionCoordinator *)self _main_placeholderServiceSessionWithIdentifier:v61 documentTraits:v30];
  v32 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v31;

  v21 = [(IUISessionCoordinator *)self _main_placeholderInputSourceForSession:*(*&buf[8] + 40)];
  v33 = [IUISessionChange alloc];
  endSessionID2 = [sessionChange2 endSessionID];
  options2 = [sessionChange2 options];
  v36 = [(IUISessionChange *)v33 initEndSessionWithID:endSessionID2 andBeginPlaceholderSessionWithID:v61 documentTraits:v30 documentState:v60 options:options2];

  v37 = [IUISessionChangeContext alloc];
  service = [(IUISessionChangeContext *)changeCopy service];
  v39 = *(*&buf[8] + 40);
  completion2 = [(IUISessionChangeContext *)changeCopy completion];
  v41 = [(IUISessionChangeContext *)v37 initWithService:service session:v39 sessionChange:v36 completion:completion2];

  options3 = [v36 options];
  [options3 setShouldResign:1];
  v43 = [IUISessionChange alloc];
  uuid2 = [*(*&buf[8] + 40) uuid];
  v45 = [(IUISessionChange *)v43 initEndSessionWithID:uuid2 options:options3];

  v46 = [IUISessionChangeContext alloc];
  service2 = [(IUISessionChangeContext *)v41 service];
  v62 = [(IUISessionChangeContext *)v46 initWithService:service2 session:*(*&buf[8] + 40) sessionChange:v45 completion:&stru_100020610];

  sessionChange2 = v36;
  changeCopy = v41;
LABEL_28:
  sessionChange4 = [(IUISessionChangeContext *)changeCopy sessionChange];
  options4 = [sessionChange4 options];
  v50 = [(IUISessionCoordinator *)self assertionForOptions:options4];

  v51 = +[UIKeyboardImpl sharedInstance];
  v52 = [[IUISessionChangeAssistant alloc] initWithController:self sessionChangeContext:changeCopy outgoingInputSource:textInputSource incomingInputSource:v21];
  v53 = [(IUISessionCoordinator *)self _main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:v52];
  v54 = [(IUISessionCoordinator *)self _main_willSetupNewDelegateCallback_withSessionChangeAssistant:v52];
  [v51 setDidTeardownExistingDelegate:v53];
  [v51 setWillSetupNewDelegate:v54];
  if (v21)
  {
    [v21 becomeFirstResponder];
  }

  else if (textInputSource)
  {
    [textInputSource resignFirstResponder];
  }

  else
  {
    v55 = sub_10000235C();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_10000CDDC();
    }
  }

  [(IUISessionChangeAssistant *)v52 finalizeSessionChange];
  [(IUISessionCoordinator *)self invalidateAssertionIfNeeded:v50 resetKeyboardAlpha:v21 != 0];
  [(IUISessionCoordinator *)self handlePendingSuggestionsDataIfNecessary];
  [v51 setDidTeardownExistingDelegate:0];
  [v51 setWillSetupNewDelegate:0];

  if (v62)
  {
    v56 = dispatch_time(0, 50000000);
    dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A8C;
    block[3] = &unk_100020638;
    v26 = v62;
    v65 = v26;
    selfCopy = self;
    v67 = buf;
    dispatch_after(v56, dispatchQueue, block);

    v24 = v65;
LABEL_37:

    goto LABEL_38;
  }

  v26 = 0;
LABEL_38:
  v58 = sub_10000235C();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    sessionChange5 = [(IUISessionChangeContext *)changeCopy sessionChange];
    *v68 = 136315394;
    v69 = "[IUISessionCoordinator _main_handleSessionChange:]";
    v70 = 2112;
    v71 = sessionChange5;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s  finished session change: %@", v68, 0x16u);
  }

  _Block_object_dispose(buf, 8);
}

- (void)inputSystemService:(id)service didCreateInputSession:(id)session
{
  serviceCopy = service;
  sessionCopy = session;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did create session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D38;
  block[3] = &unk_100020660;
  block[4] = self;
  v13 = serviceCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options
{
  serviceCopy = service;
  beginCopy = begin;
  optionsCopy = options;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = beginCopy;
    v37 = 2112;
    v38 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did begin session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006244;
  block[3] = &unk_100020688;
  block[4] = self;
  v13 = serviceCopy;
  v32 = v13;
  v14 = beginCopy;
  v33 = v14;
  v15 = optionsCopy;
  v34 = v15;
  dispatch_async(dispatchQueue, block);

  if (qword_10002B838 != -1)
  {
    sub_10000CE5C();
  }

  if (byte_10002B830 == 1)
  {
    v16 = [IUISessionChange alloc];
    uuid = [v14 uuid];
    documentTraits = [v14 documentTraits];
    documentState = [v14 documentState];
    v20 = [(IUISessionChange *)v16 initBeginSessionWithID:uuid documentTraits:documentTraits documentState:documentState options:v15];

    v21 = sub_10000235C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[IUISessionCoordinator inputSystemService:inputSessionDidBegin:options:]";
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s  queuing input session did begin: %@", buf, 0x16u);
    }

    v22 = [[IUISessionChangeContext alloc] initWithService:v13 session:v14 sessionChange:v20 completion:&stru_1000206A8];
    dispatchQueue2 = [(IUISessionCoordinator *)self dispatchQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000063AC;
    v29[3] = &unk_1000205D0;
    v29[4] = self;
    v30 = v22;
    v24 = v22;
    dispatch_async(dispatchQueue2, v29);
  }

  else
  {
    dispatchQueue3 = [(IUISessionCoordinator *)self dispatchQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000063B8;
    v26[3] = &unk_100020660;
    v26[4] = self;
    v27 = v14;
    v28 = v15;
    dispatch_async(dispatchQueue3, v26);
  }
}

- (void)_endSession:(id)session options:(id)options completion:(id)completion
{
  sessionCopy = session;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentSession = [(IUISessionCoordinator *)self currentSession];
  uuid = [currentSession uuid];
  uuid2 = [sessionCopy uuid];
  v14 = [uuid isEqual:uuid2];

  if (v14)
  {
    if ([optionsCopy shouldResign])
    {
      v15 = [(IUISessionCoordinator *)self assertionForOptions:optionsCopy];
      textInputSource = [(IUISessionCoordinator *)self textInputSource];
      [textInputSource resignFirstResponder];

      [(IUISessionCoordinator *)self invalidateAssertionIfNeeded:v15 resetKeyboardAlpha:0];
      textInputSource2 = [(IUISessionCoordinator *)self textInputSource];
      [textInputSource2 setText:0];
    }

    else
    {
      [(IUISessionCoordinator *)self setNeedsToReloadInputSource:1];
    }

    textInputSource3 = [(IUISessionCoordinator *)self textInputSource];
    [textInputSource3 setCanBecomeFirstResponder:0];

    [(IUISessionCoordinator *)self setCurrentSession:0];
    [UIKeyboard setKeyboardAlpha:1.0];
    if (completionCopy)
    {
      dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100006914;
      v23[3] = &unk_1000206D0;
      v20 = &v24;
      v24 = completionCopy;
      v21 = v23;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = sub_100001928();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ignoring inputSessionDidEnd for %@ because it's not current session", buf, 0xCu);
    }

    if (completionCopy)
    {
      dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100006904;
      v25[3] = &unk_1000206D0;
      v20 = &v26;
      v26 = completionCopy;
      v21 = v25;
LABEL_11:
      dispatch_async(dispatchQueue, v21);
    }
  }
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options completion:(id)completion
{
  serviceCopy = service;
  endCopy = end;
  optionsCopy = options;
  completionCopy = completion;
  v14 = sub_100001928();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = endCopy;
    v51 = 2112;
    v52 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "did end session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006E38;
  block[3] = &unk_100020688;
  block[4] = self;
  v16 = serviceCopy;
  v46 = v16;
  v17 = endCopy;
  v47 = v17;
  v18 = optionsCopy;
  v48 = v18;
  dispatch_async(dispatchQueue, block);

  if (qword_10002B838 != -1)
  {
    sub_10000CE5C();
  }

  if (byte_10002B830 == 1)
  {
    v19 = [IUISessionChange alloc];
    uuid = [v17 uuid];
    v21 = [(IUISessionChange *)v19 initEndSessionWithID:uuid options:v18];

    v22 = sub_10000235C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v50 = "[IUISessionCoordinator inputSystemService:inputSessionDidEnd:options:completion:]";
      v51 = 2112;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s  queuing input session did end: %@", buf, 0x16u);
    }

    v23 = +[InputUIApp sharedApplication];
    servicePausedLock = [v23 servicePausedLock];
    [servicePausedLock lock];

    if ([v23 isServicePaused])
    {
      v25 = objc_retainBlock(completionCopy);

      completionCopy = 0;
    }

    else
    {
      v25 = 0;
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100006F9C;
    v43[3] = &unk_1000206F8;
    v27 = completionCopy;
    v44 = v27;
    v28 = objc_retainBlock(v43);
    v34 = v16;
    v29 = [[IUISessionChangeContext alloc] initWithService:v16 session:v17 sessionChange:v21 completion:v28];
    dispatchQueue2 = [(IUISessionCoordinator *)self dispatchQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100006FB4;
    v41[3] = &unk_1000205D0;
    v41[4] = self;
    v42 = v29;
    v31 = v29;
    dispatch_async(dispatchQueue2, v41);

    servicePausedLock2 = [v23 servicePausedLock];
    [servicePausedLock2 unlock];

    if (v25)
    {
      v33 = sub_10000235C();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v50 = "[IUISessionCoordinator inputSystemService:inputSessionDidEnd:options:completion:]";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s  InputUI service is paused: calling end input session completion immediately", buf, 0xCu);
      }

      v25[2](v25);
    }

    v16 = v34;
  }

  else
  {
    dispatchQueue3 = [(IUISessionCoordinator *)self dispatchQueue];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100006FC0;
    v35[3] = &unk_100020720;
    v36 = v17;
    v37 = v16;
    selfCopy = self;
    v39 = v18;
    v27 = completionCopy;
    v40 = v27;
    dispatch_async(dispatchQueue3, v35);

    v21 = v36;
  }
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  serviceCopy = service;
  dieCopy = die;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dieCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session %@ did die, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007268;
  block[3] = &unk_100020660;
  block[4] = self;
  v13 = serviceCopy;
  v14 = dieCopy;
  v10 = dieCopy;
  v11 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change
{
  serviceCopy = service;
  changeCopy = change;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = changeCopy;
    v18 = 2112;
    v19 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did change document for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000074FC;
  block[3] = &unk_100020660;
  v13 = changeCopy;
  v14 = serviceCopy;
  selfCopy = self;
  v10 = serviceCopy;
  v11 = changeCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSession:(id)session documentTraitsDidChange:(id)change
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change document traits for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007880;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = changeCopy;
  v13 = changeCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change document state for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007C28;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = changeCopy;
  v13 = changeCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session textSuggestionsChanged:(id)changed
{
  serviceCopy = service;
  sessionCopy = session;
  changedCopy = changed;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change text suggestions for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007FD0;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = changedCopy;
  v13 = changedCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation
{
  serviceCopy = service;
  sessionCopy = session;
  operationCopy = operation;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did receive input operation from session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008450;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = operationCopy;
  v13 = operationCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response
{
  serviceCopy = service;
  sessionCopy = session;
  operationCopy = operation;
  responseCopy = response;
  v14 = sub_100001928();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = sessionCopy;
    v27 = 2112;
    v28 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "did receive input from session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008938;
  block[3] = &unk_100020720;
  block[4] = self;
  v21 = serviceCopy;
  v22 = sessionCopy;
  v23 = operationCopy;
  v24 = responseCopy;
  v16 = responseCopy;
  v17 = operationCopy;
  v18 = sessionCopy;
  v19 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  serviceCopy = service;
  pauseCopy = pause;
  reasonCopy = reason;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = pauseCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did pause session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008E14;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = pauseCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = pauseCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  serviceCopy = service;
  unpauseCopy = unpause;
  reasonCopy = reason;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = unpauseCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did unpause session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009100;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = unpauseCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = unpauseCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon
{
  serviceCopy = service;
  sessionCopy = session;
  lexiconCopy = lexicon;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did add RTI supplemental lexicon for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000093EC;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = lexiconCopy;
  v13 = lexiconCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon
{
  serviceCopy = service;
  sessionCopy = session;
  lexiconCopy = lexicon;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did remove RTI supplemental lexicon for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000982C;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = lexiconCopy;
  v13 = lexiconCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

@end