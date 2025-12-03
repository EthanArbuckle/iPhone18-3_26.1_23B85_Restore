@interface CAMOverlayClientMonitor
- (CAMOverlayClientMonitorDelegate)delegate;
- (void)beginMonitoringScene:(id)scene delegate:(id)delegate;
- (void)clientMonitor:(id)monitor requestingSceneUpdatedWithInfo:(id)info;
- (void)endMonitoring;
@end

@implementation CAMOverlayClientMonitor

- (void)beginMonitoringScene:(id)scene delegate:(id)delegate
{
  sceneCopy = scene;
  [(CAMOverlayClientMonitor *)self setDelegate:delegate];
  _FBSScene = [sceneCopy _FBSScene];

  cameraOverlaySceneClientMonitor = [_FBSScene cameraOverlaySceneClientMonitor];
  [(CAMOverlayClientMonitor *)self setUnderlyingMonitor:cameraOverlaySceneClientMonitor];

  underlyingMonitor = [(CAMOverlayClientMonitor *)self underlyingMonitor];
  [underlyingMonitor addObserver:self];
}

- (void)endMonitoring
{
  [(CAMOverlayClientMonitor *)self setDelegate:0];
  underlyingMonitor = [(CAMOverlayClientMonitor *)self underlyingMonitor];
  [underlyingMonitor removeObserver:self];

  [(CAMOverlayClientMonitor *)self setUnderlyingMonitor:0];
}

- (void)clientMonitor:(id)monitor requestingSceneUpdatedWithInfo:(id)info
{
  overlayRequestingProcessAuditToken = [info overlayRequestingProcessAuditToken];
  delegate = [(CAMOverlayClientMonitor *)self delegate];
  [delegate clientMonitor:self didUpdateWithAuditToken:overlayRequestingProcessAuditToken];
}

- (CAMOverlayClientMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end