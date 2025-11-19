@interface OverlaySceneDelegate
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3;
- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3;
- (void)clientConnectionDidChangeControls:(id)a3;
- (void)clientMonitor:(id)a3 didUpdateWithAuditToken:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)serverActivatedConnection:(id)a3;
- (void)serverReceivedConnection:(void *)a1 fromProcessID:;
- (void)systemOverlayViewController:(id)a3 didChangeActiveControl:(id)a4;
- (void)systemOverlayViewController:(id)a3 didChangeSliderVisible:(BOOL)a4;
- (void)systemOverlayViewController:(id)a3 didUpdateControl:(id)a4;
- (void)systemOverlayViewController:(id)a3 menuDidScrollToControlAtIndex:(int64_t)a4;
- (void)systemOverlayViewControllerCancelledHidingSlider:(id)a3;
- (void)systemOverlayViewControllerWillHideSlider:(id)a3;
- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6;
@end

@implementation OverlaySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000344B4(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002F214(v4);
}

- (void)clientMonitor:(id)a3 didUpdateWithAuditToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100034828(a4);
}

- (void)serverActivatedConnection:(id)a3
{
  v3 = self;
  sub_10002FF5C();
}

- (void)serverReceivedConnection:(void *)a1 fromProcessID:
{
  v1 = a1;
  sub_10002FF5C();
}

- (void)clientConnectionDidChangeControls:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034B30();
}

- (void)systemOverlayViewController:(id)a3 didChangeSliderVisible:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100031CA4(v6, a4);
}

- (void)systemOverlayViewController:(id)a3 didUpdateControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100031E68(v6, v7);
}

- (void)systemOverlayViewController:(id)a3 menuDidScrollToControlAtIndex:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100034C24();
}

- (void)systemOverlayViewController:(id)a3 didChangeActiveControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100034C9C(v7);
}

- (void)systemOverlayViewControllerWillHideSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034DC0();
}

- (void)systemOverlayViewControllerCancelledHidingSlider:(id)a3
{
  v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer;
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer);
  v6 = self;
  [v5 invalidate];
  v7 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = 0;
}

- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6
{
  v7 = self;
  sub_100034FAC(a6);
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100035278(a4, "SceneDelegate: Camera session began for client PID %{public}d", "SceneDelegate: Ignoring camera session began for client PID %{public}d");
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100035278(a4, "SceneDelegate: Camera session ended for client PID %{public}d", "SceneDelegate: Ignoring camera session ended for client PID %{public}d");
}

- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100033104(a3, "SceneDelegate: Video recording began for client PID %{public}d began recording", 1, "SceneDelegate: Ignoring video recording began for %{public}d");
}

- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100033104(a3, "SceneDelegate: Video recording ended for client PID %{public}d", 0, "SceneDelegate: Ignoring video ended finished for %{public}d");
}

@end