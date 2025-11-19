@interface IUIRTIInputSource
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGRect)_lastRectForRange:(id)a3;
- (CGRect)_rectForLineIntersectingRange:(id)a3 firstLine:(BOOL)a4;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (IUIRTIInputSource)init;
- (IUIRTIInputSourceDelegate)dataTransportDelegate;
- (id)_additionalTextInputLocales;
- (id)inputView;
- (id)selectionRectsForRange:(id)a3;
- (id)textInputContextIdentifier;
- (id)textInputMode;
- (void)didMoveToWindow;
- (void)handleTextActionPayload:(id)a3;
- (void)ingestDataPayload:(id)a3;
- (void)ingestDocumentState:(id)a3;
- (void)ingestDocumentTraits:(id)a3;
- (void)matchInputDestinationFrame;
- (void)setContinuousSpellCheckingEnabled:(BOOL)a3;
@end

@implementation IUIRTIInputSource

- (IUIRTIInputSource)init
{
  v10.receiver = self;
  v10.super_class = IUIRTIInputSource;
  v2 = [(IUIRTIInputSource *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(IUIRTIInputSystemSourceSession);
    sourceSession = v2->_sourceSession;
    v2->_sourceSession = v3;

    [(RTIInputSystemSourceSession *)v2->_sourceSession setPayloadDelegate:v2];
    [(IUIRTIInputSource *)v2 _setSafeAreaInsetsFrozen:1];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.inputservice.layerTransform", v6);
    layerTransformQueue = v2->_layerTransformQueue;
    v2->_layerTransformQueue = v7;
  }

  return v2;
}

- (void)matchInputDestinationFrame
{
  v4 = [(IUIRTIInputSource *)self window];
  if (!v4)
  {
    v10 = sub_10000A9D0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: nil window", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v5 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v6 = [v5 contextID];

  v7 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v8 = [v7 layerID];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = sub_10000A9D0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: destinationContextID = %u, destinationLayerID = %llu", buf, 0x1Cu);
    }

LABEL_12:

    goto LABEL_13;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0xA010000000;
  *&buf[24] = &unk_1000186BA;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = dispatch_group_create();
  layerTransformQueue = self->_layerTransformQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA14;
  block[3] = &unk_100020780;
  v34 = v6;
  block[4] = buf;
  block[5] = v8;
  dispatch_group_async(v13, layerTransformQueue, block);
  v15 = [v4 _contextId];
  v16 = [v4 layer];
  RenderId = CALayerGetRenderId();

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0xA010000000;
  v24[3] = &unk_1000186BA;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = self->_layerTransformQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000AA74;
  v22[3] = &unk_100020780;
  v23 = v15;
  v22[4] = v24;
  v22[5] = RenderId;
  dispatch_group_async(v13, v18, v22);
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000AAD4;
  v19[3] = &unk_1000207A8;
  objc_copyWeak(&v20, &location);
  v19[4] = buf;
  v19[5] = v24;
  dispatch_group_notify(v13, &_dispatch_main_q, v19);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(buf, 8);
LABEL_13:
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = IUIRTIInputSource;
  [(IUIRTIInputSource *)&v3 setContinuousSpellCheckingEnabled:0];
}

- (CGRect)firstRectForRange:(id)a3
{
  [(IUIRTIInputSource *)self _rectForLineIntersectingRange:a3 firstLine:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_lastRectForRange:(id)a3
{
  [(IUIRTIInputSource *)self _rectForLineIntersectingRange:a3 firstLine:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_rectForLineIntersectingRange:(id)a3 firstLine:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4010000000;
  v41 = &unk_1000186BA;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v43 = size;
  v8 = [(RTIDocumentState *)self->_documentState documentState];

  if (v6)
  {
    if (v8)
    {
      v9 = [(RTIDocumentState *)self->_documentState documentState];
      v10 = [IUIRangeTransform rangeInDocumentState:v9 fromTextRange:v6 inUITextInput:self];
      v12 = v11;

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x2020000000;
        v37 = 0;
        v30 = 0;
        v31 = &v30;
        v32 = 0x3010000000;
        v33 = &unk_1000186BA;
        v34 = v10;
        v35 = 0;
        if (v4)
        {
          v13 = 0;
        }

        else
        {
          v13 = 2;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000AED0;
        v29[3] = &unk_1000207D0;
        v29[4] = &v38;
        v29[5] = v36;
        v29[6] = &v30;
        v14 = objc_retainBlock(v29);
        [(RTIDocumentState *)self->_documentState enumerateRectsWithOptions:v13 range:v10 granularity:v12 block:1, v14];
        v15 = v31[4];
        v16 = v31[5];
        if ((v15 != v10 || v16 != v12) && &v10[v12] > &v15[v16])
        {
          [RTIDocumentState enumerateRectsWithOptions:"enumerateRectsWithOptions:range:granularity:block:" range:v13 granularity:? block:?];
        }

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(v36, 8);
      }
    }
  }

  if (CGRectIsNull(v39[1]))
  {
    [(RTIDocumentState *)self->_documentState firstSelectionRectInWindow];
    x = v17;
    y = v19;
    width = v21;
    height = v23;
  }

  else
  {
    x = v39[1].origin.x;
    y = v39[1].origin.y;
    width = v39[1].size.width;
    height = v39[1].size.height;
  }

  _Block_object_dispose(&v38, 8);

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  [(RTIDocumentState *)self->_documentState caretRectInWindow];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  documentState = self->_documentState;
  v6 = [(RTIDocumentState *)documentState selectedTextRange];
  v8 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B1B4;
  v11[3] = &unk_1000207F8;
  v9 = v4;
  v12 = v9;
  [(RTIDocumentState *)documentState enumerateRectsWithOptions:2 range:v6 granularity:v8 block:-1, v11];

  return v9;
}

- (id)inputView
{
  v3 = sub_10000A9D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sourceSession = self->_sourceSession;
    v5 = [(RTIInputSystemSourceSession *)sourceSession documentTraits];
    v40 = 138412546;
    v41 = sourceSession;
    v42 = 2112;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "inputView, sourceSession: %@, traits: %@", &v40, 0x16u);
  }

  v6 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];

  if (!v6)
  {
    remoteInputView = self->_remoteInputView;
    self->_remoteInputView = 0;

    remoteInputViewLayerHost = self->_remoteInputViewLayerHost;
    self->_remoteInputViewLayerHost = 0;

    goto LABEL_15;
  }

  v7 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v8 = [v7 inputViewInfo];

  v9 = sub_10000A9D0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    inputViewInfo = self->_inputViewInfo;
    v11 = [v8 contextId];
    [v8 size];
    v12 = NSStringFromCGSize(v51);
    [v8 insets];
    v40 = 138413314;
    v41 = v8;
    v42 = 2048;
    v43 = inputViewInfo;
    v44 = 1024;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2048;
    v49 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "inputView, inputViewInfo: %@ (_inputViewInfo %p), contextId: %u size: %@ insets: %f", &v40, 0x30u);
  }

  if (![v8 contextId])
  {
    v36 = self->_remoteInputView;
    self->_remoteInputView = 0;

    v37 = self->_remoteInputViewLayerHost;
    self->_remoteInputViewLayerHost = 0;

    v33 = self->_inputViewInfo;
    self->_inputViewInfo = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (([v8 isEqual:self->_inputViewInfo] & 1) == 0)
  {
    v14 = [IUIRTIInputView alloc];
    y = CGPointZero.y;
    [v8 size];
    v18 = [(IUIRTIInputView *)v14 initWithFrame:CGPointZero.x, y, v16, v17];
    v19 = self->_remoteInputView;
    self->_remoteInputView = v18;

    if (objc_opt_respondsToSelector())
    {
      -[IUIRTIInputView setShouldShowDockView:](self->_remoteInputView, "setShouldShowDockView:", [v8 shouldShowDockView]);
    }

    v20 = [_UILayerHostView alloc];
    [v8 insets];
    v22 = -v21;
    [v8 size];
    v24 = v23;
    [v8 size];
    v26 = v25;
    [v8 insets];
    v28 = v26 + v27;
    v29 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
    v30 = [v20 initWithFrame:objc_msgSend(v29 pid:"processId") contextID:{objc_msgSend(v8, "contextId"), 0.0, v22, v24, v28}];
    v31 = self->_remoteInputViewLayerHost;
    self->_remoteInputViewLayerHost = v30;

    [(IUIRTIInputView *)self->_remoteInputView addSubview:self->_remoteInputViewLayerHost];
    v32 = [v8 copy];
    v33 = self->_inputViewInfo;
    self->_inputViewInfo = v32;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  v38 = self->_remoteInputView;

  return v38;
}

- (id)textInputContextIdentifier
{
  v2 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v3 = [v2 textInputContextIdentifier];

  return v3;
}

- (id)textInputMode
{
  v3 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v4 = [v3 textInputModeData];

  if (!v4 || ([NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = IUIRTIInputSource;
    v5 = [(IUIRTIInputSource *)&v7 textInputMode];
  }

  return v5;
}

- (id)_additionalTextInputLocales
{
  v3 = [(RTIInputSystemSourceSession *)self->_sourceSession documentTraits];
  v4 = [v3 additionalLocaleIdentifiers];

  if ([v4 count])
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [NSLocale localeWithLocaleIdentifier:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IUIRTIInputSource;
    v5 = [(IUIRTIInputSource *)&v13 _additionalTextInputLocales];
  }

  return v5;
}

- (void)ingestDataPayload:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v10 documentTraits];
    v5 = [v4 textInputTraits];

    v6 = [v10 documentState];
    documentState = self->_documentState;
    self->_documentState = v6;

    if (v5)
    {
      v8 = +[UITextInputTraits defaultTextInputTraits];
      [v8 overlayWithTITextInputTraits:v5];
      v9 = [(IUIRTIInputSource *)self performSelector:"_textInputTraits"];
      [v9 takeTraitsFrom:v8];
    }
  }

  [(RTIInputSystemSourceSession *)self->_sourceSession handleTextActionPayload:v10];
  [(IUIRTIInputSource *)self matchInputDestinationFrame];
}

- (void)ingestDocumentTraits:(id)a3
{
  v4 = a3;
  v9 = +[UITextInputTraits defaultTextInputTraits];
  v5 = [v4 textInputTraits];
  [v9 overlayWithTITextInputTraits:v5];

  v6 = [(IUIRTIInputSource *)self performSelector:"_textInputTraits"];
  [v6 takeTraitsFrom:v9];
  v7 = [RTIInputSystemDataPayload payloadWithData:0];
  [v7 setDocumentTraits:v4];

  v8 = [(RTIInputSystemSourceSession *)self->_sourceSession uuid];
  [v7 setSessionUUID:v8];

  [(RTIInputSystemSourceSession *)self->_sourceSession handleTextActionPayload:v7];
  [(IUIRTIInputSource *)self matchInputDestinationFrame];
}

- (void)ingestDocumentState:(id)a3
{
  objc_storeStrong(&self->_documentState, a3);
  v5 = a3;
  v7 = [RTIInputSystemDataPayload payloadWithData:0];
  [v7 setDocumentState:v5];
  v6 = [(RTIInputSystemSourceSession *)self->_sourceSession uuid];
  [v7 setSessionUUID:v6];

  [(RTIInputSystemSourceSession *)self->_sourceSession handleTextActionPayload:v7];
}

- (void)handleTextActionPayload:(id)a3
{
  v4 = a3;
  v6 = [(IUIRTIInputSource *)self dataTransportDelegate];
  v5 = [(IUIRTIInputSource *)self sourceSession];
  [v6 inputSource:v5 didGenerateTextActionPayload:v4];
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(IUIRTIInputSource *)self sourceSession];
  v6 = [v5 documentTraits];

  v7 = [v6 delegateConformanceType];
  if (&OBJC_PROTOCOL___UITextInput == v4)
  {
    self = ((v7 >> 1) & 1);
  }

  else if (&OBJC_PROTOCOL___UITextInputPrivate == v4)
  {
    self = ((v7 >> 2) & 1);
  }

  else if (&OBJC_PROTOCOL___UIKeyInput == v4)
  {
    LOBYTE(self) = v7 & 1;
  }

  else if (&OBJC_PROTOCOL___UIKeyInputPrivate == v4)
  {
    self = ((v7 >> 4) & 1);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IUIRTIInputSource;
    LOBYTE(self) = [(IUIRTIInputSource *)&v9 conformsToProtocol:v4];
  }

  return self;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = [(IUIRTIInputSource *)self sourceSession];
  v6 = [v5 documentTraits];

  v7 = [v6 delegateConformanceType];
  if (!sel_isEqual(a3, "handleKeyWebEvent:withCompletionHandler:") || (v7 & 0x20) == 0)
  {
    v11.receiver = self;
    v11.super_class = IUIRTIInputSource;
    v9 = [(IUIRTIInputSource *)&v11 respondsToSelector:a3];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_disableAutomaticKeyboardUI
{
  v3 = [(IUIRTIInputSource *)self sourceSession];
  v4 = [v3 documentTraits];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 disableAutomaticKeyboardUI];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IUIRTIInputSource;
    v5 = [(IUIRTIInputSource *)&v8 _disableAutomaticKeyboardUI];
  }

  v6 = v5;

  return v6;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = IUIRTIInputSource;
  [(IUIRTIInputSource *)&v3 didMoveToWindow];
  [(IUIRTIInputSource *)self matchInputDestinationFrame];
}

- (IUIRTIInputSourceDelegate)dataTransportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataTransportDelegate);

  return WeakRetained;
}

@end