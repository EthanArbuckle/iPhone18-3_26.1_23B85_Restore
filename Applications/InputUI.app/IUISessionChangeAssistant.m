@interface IUISessionChangeAssistant
+ (id)_responseForCompletedChangeContext:(id)a3;
- (BOOL)_changeHasNonUIKeyInputInputSource;
- (IUISessionChangeAssistant)initWithController:(id)a3 sessionChangeContext:(id)a4 outgoingInputSource:(id)a5 incomingInputSource:(id)a6;
- (void)finalizeSessionChange;
- (void)handleSetupNewDelegate:(id)a3;
- (void)handleTeardownExistingDelegate:(id)a3;
@end

@implementation IUISessionChangeAssistant

- (IUISessionChangeAssistant)initWithController:(id)a3 sessionChangeContext:(id)a4 outgoingInputSource:(id)a5 incomingInputSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IUISessionChangeAssistant;
  v15 = [(IUISessionChangeAssistant *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_controller, a3);
    objc_storeStrong(&v16->_sessionChangeContext, a4);
    objc_storeStrong(&v16->_outgoingInputSource, a5);
    objc_storeStrong(&v16->_incomingInputSource, a6);
  }

  return v16;
}

+ (id)_responseForCompletedChangeContext:(id)a3
{
  v3 = [[IUISessionChangeResponse alloc] initWithResponseState:2];

  return v3;
}

- (void)handleTeardownExistingDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handledOutgoingInputSource)
  {
    if (v4)
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
    v7 = [(IUISessionChangeAssistant *)self outgoingInputSource];

    if (v7 == v5)
    {
      self->_handledOutgoingInputSource = 1;
      v6 = v5;
      v8 = [(IUISessionChangeAssistant *)self sessionChangeContext];
      v9 = [v8 sessionChange];
      v10 = sub_10000235C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1000038A4(v6);
        v23 = 136315650;
        v24 = "[IUISessionChangeAssistant handleTeardownExistingDelegate:]";
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s  outgoingInputSource: %@, sessionChange: %@", &v23, 0x20u);
      }

      v12 = [(IUISessionChangeAssistant *)self controller];
      [v12 setCurrentSession:0];

      if (v6)
      {
        if ([v9 isEndingSession])
        {
          v13 = [v9 endSessionID];
          v14 = [v6 sourceSession];
          v15 = [v14 uuid];
          v16 = [v13 isEqual:v15];

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
      v20 = [(IUISessionChangeAssistant *)self sessionChangeContext];
      v21 = [v19 _responseForCompletedChangeContext:v20];

      v22 = [v8 completion];
      (v22)[2](v22, v21);

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

- (void)handleSetupNewDelegate:(id)a3
{
  v4 = a3;
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

    v7 = [(IUISessionChangeAssistant *)self outgoingInputSource];
    [(IUISessionChangeAssistant *)self handleTeardownExistingDelegate:v7];
  }

  v8 = [(IUISessionChangeAssistant *)self incomingInputSource];

  if (v8 == v4)
  {
    self->_handledIncomingInputSource = 1;
    v5 = v4;
    v9 = [(IUISessionChangeAssistant *)self sessionChangeContext];
    v10 = [v9 sessionChange];
    v11 = sub_10000235C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000038A4(v5);
      v24 = 136315650;
      v25 = "[IUISessionChangeAssistant handleSetupNewDelegate:]";
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s  incomingInputSource: %@, sessionChange: %@", &v24, 0x20u);
    }

    if (v5)
    {
      if ([v10 isBeginningSession])
      {
        v13 = [v10 beginSessionID];
        v14 = [v5 sourceSession];
        v15 = [v14 uuid];
        v16 = [v13 isEqual:v15];

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

      v19 = [(IUISessionChangeAssistant *)self controller];
      [v5 setDataTransportDelegate:v19];

      v20 = [(IUISessionChangeAssistant *)self controller];
      [v20 setTextInputSource:v5];

      if ([v10 isBeginningSession])
      {
        v21 = [v9 session];
      }

      else
      {
        v21 = 0;
      }

      v23 = [(IUISessionChangeAssistant *)self controller];
      [v23 setCurrentSession:v21];
    }

    else
    {
      v22 = [(IUISessionChangeAssistant *)self controller];
      [v22 setTextInputSource:0];

      v21 = [(IUISessionChangeAssistant *)self controller];
      [v21 setCurrentSession:0];
    }

    goto LABEL_30;
  }

  if (v4)
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
  v3 = [(IUISessionChangeAssistant *)self outgoingInputSource];
  if (v3 && (v4 = v3, -[IUISessionChangeAssistant outgoingInputSource](self, "outgoingInputSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput], v5, v4, !v6))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v7 = [(IUISessionChangeAssistant *)self incomingInputSource];
    if (v7)
    {
      v8 = [(IUISessionChangeAssistant *)self incomingInputSource];
      v9 = [v8 conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput] ^ 1;
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
    v3 = [(IUISessionChangeAssistant *)self _changeHasNonUIKeyInputInputSource];
    v4 = sub_10000235C();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(IUISessionChangeAssistant *)self sessionChangeContext];
        v7 = [v6 sessionChange];
        v8 = [(IUISessionChangeAssistant *)self outgoingInputSource];
        v9 = sub_1000038A4(v8);
        v10 = [(IUISessionChangeAssistant *)self incomingInputSource];
        v11 = sub_1000038A4(v10);
        v14 = 136315906;
        v15 = "[IUISessionChangeAssistant finalizeSessionChange]";
        v16 = 2112;
        v17 = v7;
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
    v12 = [(IUISessionChangeAssistant *)self outgoingInputSource];
    [(IUISessionChangeAssistant *)self handleTeardownExistingDelegate:v12];
  }

  if (!self->_handledIncomingInputSource)
  {
    v13 = [(IUISessionChangeAssistant *)self incomingInputSource];
    [(IUISessionChangeAssistant *)self handleSetupNewDelegate:v13];
  }
}

@end