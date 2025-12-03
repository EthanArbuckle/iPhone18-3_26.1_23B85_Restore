@interface SCATAirPodsHeadGesturesDelegate
- (void)didDetectedError;
- (void)didDetectedWithHeadGesture:(id)gesture;
- (void)didStartStreamingWithIsStreaming:(BOOL)streaming;
@end

@implementation SCATAirPodsHeadGesturesDelegate

- (void)didDetectedWithHeadGesture:(id)gesture
{
  gestureCopy = gesture;

  sub_1001229B4(gestureCopy);
}

- (void)didStartStreamingWithIsStreaming:(BOOL)streaming
{

  sub_100122C0C(streaming);
}

- (void)didDetectedError
{
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000F4758(v0, qword_10021C950);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "HeadGestures: Did detect error", v2, 2u);
  }
}

@end