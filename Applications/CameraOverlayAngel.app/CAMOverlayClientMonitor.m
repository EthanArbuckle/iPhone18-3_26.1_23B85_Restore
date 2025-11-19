@interface CAMOverlayClientMonitor
- (CAMOverlayClientMonitorDelegate)delegate;
- (void)beginMonitoringScene:(id)a3 delegate:(id)a4;
- (void)clientMonitor:(id)a3 requestingSceneUpdatedWithInfo:(id)a4;
- (void)endMonitoring;
@end

@implementation CAMOverlayClientMonitor

- (void)beginMonitoringScene:(id)a3 delegate:(id)a4
{
  v6 = a3;
  [(CAMOverlayClientMonitor *)self setDelegate:a4];
  v7 = [v6 _FBSScene];

  v8 = [v7 cameraOverlaySceneClientMonitor];
  [(CAMOverlayClientMonitor *)self setUnderlyingMonitor:v8];

  v9 = [(CAMOverlayClientMonitor *)self underlyingMonitor];
  [v9 addObserver:self];
}

- (void)endMonitoring
{
  [(CAMOverlayClientMonitor *)self setDelegate:0];
  v3 = [(CAMOverlayClientMonitor *)self underlyingMonitor];
  [v3 removeObserver:self];

  [(CAMOverlayClientMonitor *)self setUnderlyingMonitor:0];
}

- (void)clientMonitor:(id)a3 requestingSceneUpdatedWithInfo:(id)a4
{
  v6 = [a4 overlayRequestingProcessAuditToken];
  v5 = [(CAMOverlayClientMonitor *)self delegate];
  [v5 clientMonitor:self didUpdateWithAuditToken:v6];
}

- (CAMOverlayClientMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end