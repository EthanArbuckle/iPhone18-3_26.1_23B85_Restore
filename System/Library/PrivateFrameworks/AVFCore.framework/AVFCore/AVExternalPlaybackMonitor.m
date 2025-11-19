@interface AVExternalPlaybackMonitor
+ (id)longFormVideoExternalPlaybackMonitor;
+ (void)initialize;
- (AVExternalPlaybackMonitor)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)a3;
- (BOOL)isAirPlayVideoActive;
- (BOOL)isAirPlayVideoPlaying;
- (id)description;
- (void)dealloc;
@end

@implementation AVExternalPlaybackMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    if (ivars->figRoutingSessionManager)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      ivars = self->_ivars;
      figRoutingSessionManager = ivars->figRoutingSessionManager;
      if (figRoutingSessionManager)
      {
        CFRelease(figRoutingSessionManager);
        ivars = self->_ivars;
      }
    }
  }

  v5.receiver = self;
  v5.super_class = AVExternalPlaybackMonitor;
  [(AVExternalPlaybackMonitor *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, airPlayVideoActive=%d, airPlayVideoPlaying=%d>", NSStringFromClass(v4), self, -[AVExternalPlaybackMonitor isAirPlayVideoActive](self, "isAirPlayVideoActive"), -[AVExternalPlaybackMonitor isAirPlayVideoPlaying](self, "isAirPlayVideoPlaying")];
}

- (BOOL)isAirPlayVideoActive
{
  v5 = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v3)
  {
    return 0;
  }

  v3(figRoutingSessionManager, &v5);
  return v5 != 0;
}

- (BOOL)isAirPlayVideoPlaying
{
  v5 = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v3)
  {
    return 0;
  }

  v3(figRoutingSessionManager, &v5);
  return v5 != 0;
}

+ (id)longFormVideoExternalPlaybackMonitor
{
  if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager())
  {
    v3 = 0;
  }

  else
  {
    v3 = [[a1 alloc] initWithFigRoutingSessionManager:0];
  }

  return v3;
}

- (AVExternalPlaybackMonitor)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)a3
{
  CMNotificationCenterGetDefaultLocalCenter();
  v10.receiver = self;
  v10.super_class = AVExternalPlaybackMonitor;
  v5 = [(AVExternalPlaybackMonitor *)&v10 init];
  if (v5 && (ivars = objc_alloc_init(AVExternalPlaybackMonitorInternal), (v5->_ivars = ivars) != 0) && (!a3 ? (v7 = 0) : (v7 = CFRetain(a3), ivars = v5->_ivars), (ivars->figRoutingSessionManager = v7, v5->_ivars->figRoutingSessionManager) && !OUTLINED_FUNCTION_0_13() && !OUTLINED_FUNCTION_0_13()))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end