@interface IUISessionChangeAssistant
+ (id)_responseForCompletedChangeContext:(id)context;
- (BOOL)_changeHasNonUIKeyInputInputSource;
- (IUISessionChangeAssistant)initWithController:(id)controller sessionChangeContext:(id)context outgoingInputSource:(id)source incomingInputSource:(id)inputSource;
- (void)finalizeSessionChange;
- (void)handleSetupNewDelegate:(id)delegate;
- (void)handleTeardownExistingDelegate:(id)delegate;
@end

@implementation IUISessionChangeAssistant

- (IUISessionChangeAssistant)initWithController:(id)controller sessionChangeContext:(id)context outgoingInputSource:(id)source incomingInputSource:(id)inputSource
{
  controllerCopy = controller;
  contextCopy = context;
  sourceCopy = source;
  inputSourceCopy = inputSource;
  v18.receiver = self;
  v18.super_class = IUISessionChangeAssistant;
  v15 = [(IUISessionChangeAssistant *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_controller, controller);
    objc_storeStrong(&v16->_sessionChangeContext, context);
    objc_storeStrong(&v16->_outgoingInputSource, source);
    objc_storeStrong(&v16->_incomingInputSource, inputSource);
  }

  return v16;
}

+ (id)_responseForCompletedChangeContext:(id)context
{
  v3 = [[IUISessionChangeResponse alloc] initWithResponseState:2];

  return v3;
}

- (void)handleTeardownExistingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (self->_handledOutgoingInputSource)
  {
    if (delegateCopy)
    {
      v6 = sub_10000235C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10000C5F8(v5);
      }

LABEL_23:
    }
  }

  else
  {
    outgoingInputSource = [(IUISessionChangeAssistant *)self outgoingInputSource];

    if (outgoingInputSource == v5)
    {
      self->_handledOutgoingInputSource = 1;
      v6 = v5;
      sessionChangeContext = [(IUISessionChangeAssistant *)self sessionChangeContext];
      sessionChange = [sessionChangeContext sessionChange];
      v10 = sub_10000235C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1000038A4(v6);
        v23 = 136315650;
        v24 = "[IUISessionChangeAssistant handleTeardownExistingDelegate:]";
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = sessionChange;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s  outgoingInputSource: %@, sessionChange: %@", &v23, 0x20u);
      }

      controller = [(IUISessionChangeAssistant *)self controller];
      [controller setCurrentSession:0];

      if (v6)
      {
        if ([sessionChange isEndingSession])
        {
          endSessionID = [sessionChange endSessionID];
          sourceSession = [v6 sourceSession];
          uuid = [sourceSession uuid];
          v16 = [endSessionID isEqual:uuid];

          if ((v16 & 1) == 0)
          {
            v17 = sub_10000235C();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000C4BC();
            }
          }
        }

        if ([v6 isPlaceholder])
        {
          v18 = sub_10000235C();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            sub_10000C574(v18);
          }
        }

        [v6 setDataTransportDelegate:0];
        [v6 removeFromSuperview];
      }

      v19 = objc_opt_class();
      sessionChangeContext2 = [(IUISessionChangeAssistant *)self sessionChangeContext];
      v21 = [v19 _responseForCompletedChangeContext:sessionChangeContext2];

      completion = [sessionChangeContext completion];
      (completion)[2](completion, v21);

      goto LABEL_23;
    }

    if (v5)
    {
      v6 = sub_10000235C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10000C3FC();
      }

      goto LABEL_23;
    }
  }
}

- (void)handleSetupNewDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_handledIncomingInputSource)
  {
    v5 = sub_10000235C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000C950();
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!self->_handledOutgoingInputSource)
  {
    v6 = sub_10000235C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000C69C();
    }

    outgoingInputSource = [(IUISessionChangeAssistant *)self outgoingInputSource];
    [(IUISessionChangeAssistant *)self handleTeardownExistingDelegate:outgoingInputSource];
  }

  incomingInputSource = [(IUISessionChangeAssistant *)self incomingInputSource];

  if (incomingInputSource == delegateCopy)
  {
    self->_handledIncomingInputSource = 1;
    v5 = delegateCopy;
    sessionChangeContext = [(IUISessionChangeAssistant *)self sessionChangeContext];
    sessionChange = [sessionChangeContext sessionChange];
    v11 = sub_10000235C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000038A4(v5);
      v24 = 136315650;
      v25 = "[IUISessionChangeAssistant handleSetupNewDelegate:]";
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = sessionChange;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s  incomingInputSource: %@, sessionChange: %@", &v24, 0x20u);
    }

    if (v5)
    {
      if ([sessionChange isBeginningSession])
      {
        beginSessionID = [sessionChange beginSessionID];
        sourceSession = [v5 sourceSession];
        uuid = [sourceSession uuid];
        v16 = [beginSessionID isEqual:uuid];

        if ((v16 & 1) == 0)
        {
          v17 = sub_10000235C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10000C814();
          }
        }
      }

      if ([v5 isPlaceholder])
      {
        v18 = sub_10000235C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C8CC(v18);
        }
      }

      controller = [(IUISessionChangeAssistant *)self controller];
      [v5 setDataTransportDelegate:controller];

      controller2 = [(IUISessionChangeAssistant *)self controller];
      [controller2 setTextInputSource:v5];

      if ([sessionChange isBeginningSession])
      {
        session = [sessionChangeContext session];
      }

      else
      {
        session = 0;
      }

      controller3 = [(IUISessionChangeAssistant *)self controller];
      [controller3 setCurrentSession:session];
    }

    else
    {
      controller4 = [(IUISessionChangeAssistant *)self controller];
      [controller4 setTextInputSource:0];

      session = [(IUISessionChangeAssistant *)self controller];
      [session setCurrentSession:0];
    }

    goto LABEL_30;
  }

  if (delegateCopy)
  {
    v5 = sub_10000235C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10000C754();
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (BOOL)_changeHasNonUIKeyInputInputSource
{
  outgoingInputSource = [(IUISessionChangeAssistant *)self outgoingInputSource];
  if (outgoingInputSource && (v4 = outgoingInputSource, -[IUISessionChangeAssistant outgoingInputSource](self, "outgoingInputSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput], v5, v4, !v6))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    incomingInputSource = [(IUISessionChangeAssistant *)self incomingInputSource];
    if (incomingInputSource)
    {
      incomingInputSource2 = [(IUISessionChangeAssistant *)self incomingInputSource];
      v9 = [incomingInputSource2 conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)finalizeSessionChange
{
  if (!self->_handledOutgoingInputSource || !self->_handledIncomingInputSource)
  {
    _changeHasNonUIKeyInputInputSource = [(IUISessionChangeAssistant *)self _changeHasNonUIKeyInputInputSource];
    v4 = sub_10000235C();
    v5 = v4;
    if (_changeHasNonUIKeyInputInputSource)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sessionChangeContext = [(IUISessionChangeAssistant *)self sessionChangeContext];
        sessionChange = [sessionChangeContext sessionChange];
        outgoingInputSource = [(IUISessionChangeAssistant *)self outgoingInputSource];
        v9 = sub_1000038A4(outgoingInputSource);
        incomingInputSource = [(IUISessionChangeAssistant *)self incomingInputSource];
        v11 = sub_1000038A4(incomingInputSource);
        v14 = 136315906;
        v15 = "[IUISessionChangeAssistant finalizeSessionChange]";
        v16 = 2112;
        v17 = sessionChange;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  Outgoing or incoming input source not handled during -become/resignFirstResponder due to non-UIKeyInput-conforming input source. Handling now. (sessionChange: %@, outgoingInputSource: %@, incomingInputSource: %@)", &v14, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10000CA08(self, v5);
    }
  }

  if (!self->_handledOutgoingInputSource)
  {
    outgoingInputSource2 = [(IUISessionChangeAssistant *)self outgoingInputSource];
    [(IUISessionChangeAssistant *)self handleTeardownExistingDelegate:outgoingInputSource2];
  }

  if (!self->_handledIncomingInputSource)
  {
    incomingInputSource2 = [(IUISessionChangeAssistant *)self incomingInputSource];
    [(IUISessionChangeAssistant *)self handleSetupNewDelegate:incomingInputSource2];
  }
}

@end