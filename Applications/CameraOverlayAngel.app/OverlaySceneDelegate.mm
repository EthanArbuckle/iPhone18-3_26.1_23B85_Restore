@interface OverlaySceneDelegate
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)recording;
- (void)cameraViewfinderSessionDidStartMovieRecording:(id)recording;
- (void)clientConnectionDidChangeControls:(id)controls;
- (void)clientMonitor:(id)monitor didUpdateWithAuditToken:(id)token;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)serverActivatedConnection:(id)connection;
- (void)serverReceivedConnection:(void *)connection fromProcessID:;
- (void)systemOverlayViewController:(id)controller didChangeActiveControl:(id)control;
- (void)systemOverlayViewController:(id)controller didChangeSliderVisible:(BOOL)visible;
- (void)systemOverlayViewController:(id)controller didUpdateControl:(id)control;
- (void)systemOverlayViewController:(id)controller menuDidScrollToControlAtIndex:(int64_t)index;
- (void)systemOverlayViewControllerCancelledHidingSlider:(id)slider;
- (void)systemOverlayViewControllerWillHideSlider:(id)slider;
- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid;
@end

@implementation OverlaySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000344B4(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10002F214(disconnectCopy);
}

- (void)clientMonitor:(id)monitor didUpdateWithAuditToken:(id)token
{
  monitorCopy = monitor;
  tokenCopy = token;
  selfCopy = self;
  sub_100034828(token);
}

- (void)serverActivatedConnection:(id)connection
{
  selfCopy = self;
  sub_10002FF5C();
}

- (void)serverReceivedConnection:(void *)connection fromProcessID:
{
  connectionCopy = connection;
  sub_10002FF5C();
}

- (void)clientConnectionDidChangeControls:(id)controls
{
  controlsCopy = controls;
  selfCopy = self;
  sub_100034B30();
}

- (void)systemOverlayViewController:(id)controller didChangeSliderVisible:(BOOL)visible
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100031CA4(controllerCopy, visible);
}

- (void)systemOverlayViewController:(id)controller didUpdateControl:(id)control
{
  controllerCopy = controller;
  controlCopy = control;
  selfCopy = self;
  sub_100031E68(controllerCopy, controlCopy);
}

- (void)systemOverlayViewController:(id)controller menuDidScrollToControlAtIndex:(int64_t)index
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100034C24();
}

- (void)systemOverlayViewController:(id)controller didChangeActiveControl:(id)control
{
  controllerCopy = controller;
  controlCopy = control;
  selfCopy = self;
  sub_100034C9C(controlCopy);
}

- (void)systemOverlayViewControllerWillHideSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_100034DC0();
}

- (void)systemOverlayViewControllerCancelledHidingSlider:(id)slider
{
  v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer;
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer);
  selfCopy = self;
  [v5 invalidate];
  v7 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = 0;
}

- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid
{
  selfCopy = self;
  sub_100034FAC(pid);
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  viewfinderCopy = viewfinder;
  beginCopy = begin;
  selfCopy = self;
  sub_100035278(begin, "SceneDelegate: Camera session began for client PID %{public}d", "SceneDelegate: Ignoring camera session began for client PID %{public}d");
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  viewfinderCopy = viewfinder;
  endCopy = end;
  selfCopy = self;
  sub_100035278(end, "SceneDelegate: Camera session ended for client PID %{public}d", "SceneDelegate: Ignoring camera session ended for client PID %{public}d");
}

- (void)cameraViewfinderSessionDidStartMovieRecording:(id)recording
{
  recordingCopy = recording;
  selfCopy = self;
  sub_100033104(recording, "SceneDelegate: Video recording began for client PID %{public}d began recording", 1, "SceneDelegate: Ignoring video recording began for %{public}d");
}

- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)recording
{
  recordingCopy = recording;
  selfCopy = self;
  sub_100033104(recording, "SceneDelegate: Video recording ended for client PID %{public}d", 0, "SceneDelegate: Ignoring video ended finished for %{public}d");
}

@end