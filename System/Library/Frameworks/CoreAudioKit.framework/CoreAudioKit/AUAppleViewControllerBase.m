@interface AUAppleViewControllerBase
+ (id)customViewLogger;
+ (id)getLocalizedString:(id)a3;
- (AudioUnitParameterInfo)getParameterInfo:(SEL)a3 scope:(unsigned int)a4;
- (_TtC12CoreAudioKit25AUAppleViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4;
- (void)postBeginGestureNotificationForParameter:(unsigned int)a3;
- (void)postEndGestureNotificationForParameter:(unsigned int)a3;
- (void)priv_addListenerForParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5;
- (void)priv_eventListener:(void *)a3 event:(const AudioUnitEvent *)a4 value:(float)a5;
- (void)priv_removeListenerForParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5;
- (void)priv_removeListeners;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AUAppleViewControllerBase

+ (id)customViewLogger
{
  v2 = customViewLogger;
  if (!customViewLogger)
  {
    v3 = os_log_create("com.apple.audio.CoreAudioKit", "AUCustomViews");
    v4 = customViewLogger;
    customViewLogger = v3;

    v2 = customViewLogger;
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUAppleViewControllerBase();
  v2 = v3.receiver;
  [(AUAppleViewControllerBase *)&v3 viewDidLoad];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_realtimeDrawingInterval] = 0x3FA999999999999ALL;
}

- (void)priv_removeListeners
{
  v12 = *MEMORY[0x277D85DE8];
  eventListener = self->eventListener;
  if (eventListener)
  {
    v4 = AUListenerDispose(eventListener);
    if (v4)
    {
      v5 = v4;
      v6 = +[AUAppleViewControllerBase customViewLogger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9[0] = 67109378;
        v9[1] = v5;
        v10 = 2112;
        v11 = v8;
        _os_log_impl(&dword_2370FF000, v6, OS_LOG_TYPE_ERROR, "Error disposing au listener: %d, [%@ priv_removeListeners]", v9, 0x12u);
      }
    }
  }

  self->eventListener = 0;
}

- (void)priv_addListenerForParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5
{
  v28 = *MEMORY[0x277D85DE8];
  AU = self->AU;
  if (AU)
  {
    eventListener = self->eventListener;
    if (!eventListener)
    {
      Current = CFRunLoopGetCurrent();
      v19 = AUEventListenerCreate(EventListenerDispatcher, self, Current, *MEMORY[0x277CBF048], 0.05, 0.05, &self->eventListener);
      if (v19)
      {
        v20 = v19;
        v13 = +[AUAppleViewControllerBase customViewLogger];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_10:

          return;
        }

        v21 = objc_opt_class();
        v15 = NSStringFromClass(v21);
        buf.mEventType = 67109634;
        *(&buf.mEventType + 1) = a3;
        LOWORD(buf.mArgument.mParameter.mAudioUnit) = 1024;
        *(&buf.mArgument.mProperty.mAudioUnit + 2) = v20;
        HIWORD(buf.mArgument.mProperty.mAudioUnit) = 2112;
        *&buf.mArgument.mProperty.mPropertyID = v15;
        v16 = "Error creating event listener for param id %d: %d, [%@ priv_addListenerForParameter:scope:element:]";
        p_buf = &buf;
LABEL_9:
        _os_log_impl(&dword_2370FF000, v13, OS_LOG_TYPE_ERROR, v16, p_buf, 0x18u);

        goto LABEL_10;
      }

      AU = self->AU;
      eventListener = self->eventListener;
    }

    *&buf.mEventType = 0;
    buf.mArgument.mParameter.mAudioUnit = AU;
    *&buf.mArgument.mProperty.mPropertyID = __PAIR64__(a4, a3);
    *&buf.mArgument.mProperty.mElement = a5;
    v11 = addParamListener(eventListener, self, &buf);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = +[AUAppleViewControllerBase customViewLogger];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v22[0] = 67109634;
    v22[1] = a3;
    v23 = 1024;
    v24 = v12;
    v25 = 2112;
    v26 = v15;
    v16 = "Error adding parameter listener for param id %d: %d, [%@ priv_addListenerForParameter:scope:element:]";
    p_buf = v22;
    goto LABEL_9;
  }
}

- (void)priv_removeListenerForParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->AU)
  {
    v6 = AUListenerDispose(self->eventListener);
    if (v6)
    {
      v7 = v6;
      v8 = +[AUAppleViewControllerBase customViewLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11[0] = 67109634;
        v11[1] = a3;
        v12 = 1024;
        v13 = v7;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_2370FF000, v8, OS_LOG_TYPE_ERROR, "Error disposing of event listener for param id %d: %d, [%@ priv_removeListenerForParameter:scope:element:]", v11, 0x18u);
      }
    }
  }
}

- (AudioUnitParameterInfo)getParameterInfo:(SEL)a3 scope:(unsigned int)a4
{
  v19 = *MEMORY[0x277D85DE8];
  ioDataSize = 104;
  *retstr->name = 0u;
  *&retstr->name[16] = 0u;
  *&retstr->name[32] = 0u;
  *&retstr->name[48] = 0u;
  *&retstr->clumpID = 0u;
  *&retstr->unit = 0u;
  *&retstr->flags = 0;
  result = AudioUnitGetProperty(self->AU, 4u, 0, a4, retstr, &ioDataSize);
  if (result)
  {
    v8 = result;
    v9 = +[AUAppleViewControllerBase customViewLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 67109634;
      v14 = a4;
      v15 = 1024;
      v16 = v8;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2370FF000, v9, OS_LOG_TYPE_ERROR, "Error getting parameter info for param id %d: %d, [%@ getParameterInfo:scope:]", buf, 0x18u);
    }

    *&retstr->flags = 0;
    *&retstr->clumpID = 0u;
    *&retstr->unit = 0u;
    *&retstr->name[32] = 0u;
    *&retstr->name[48] = 0u;
    *retstr->name = 0u;
    *&retstr->name[16] = 0u;
  }

  return result;
}

- (void)postBeginGestureNotificationForParameter:(unsigned int)a3
{
  v3.mArgument.mParameter.mAudioUnit = self->AU;
  *&v3.mArgument.mProperty.mPropertyID = a3;
  *&v3.mEventType = 1;
  AUEventListenerNotify(self->eventListener, self, &v3);
}

- (void)postEndGestureNotificationForParameter:(unsigned int)a3
{
  v3.mArgument.mParameter.mAudioUnit = self->AU;
  *&v3.mArgument.mProperty.mPropertyID = a3;
  *&v3.mEventType = 2;
  AUEventListenerNotify(self->eventListener, self, &v3);
}

- (void)priv_eventListener:(void *)a3 event:(const AudioUnitEvent *)a4 value:(float)a5
{
  mEventType = a4->mEventType;
  if (a4->mEventType == kAudioUnitEvent_BeginParameterChangeGesture)
  {
    [(AUAppleViewControllerBase *)self handleBeginGesture:a4->mArgument.mParameter.mParameterID];
  }

  else if (mEventType == kAudioUnitEvent_EndParameterChangeGesture)
  {
    [(AUAppleViewControllerBase *)self handleEndGesture:a4->mArgument.mParameter.mParameterID];
  }

  else if (mEventType == kAudioUnitEvent_PropertyChange)
  {
    mParameterID = a4->mArgument.mParameter.mParameterID;
    if (mParameterID == 8 || mParameterID == 3)
    {
      [(AUAppleViewControllerBase *)self handleParameterListChanged];
    }
  }
}

+ (id)getLocalizedString:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (!v4 || ([v4 localizedStringForKey:v3 value:&stru_284A3B338 table:@"AudioUnits"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = v3;
    v7 = +[AUAppleViewControllerBase customViewLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2370FF000, v7, OS_LOG_TYPE_ERROR, "Error reading %@ string from localized string file,  [%@ +getLocalizedString:]", &v11, 0x16u);
    }
  }

  return v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x1D0);
  v5 = self;
  v4();
  v6.receiver = v5;
  v6.super_class = type metadata accessor for AUAppleViewControllerBase();
  [(AUAppleViewControllerBase *)&v6 viewWillDisappear:v3];
}

- (_TtC12CoreAudioKit25AUAppleViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end