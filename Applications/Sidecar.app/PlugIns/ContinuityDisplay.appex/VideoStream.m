@interface VideoStream
- (void)qosMonitor:(id)a3 didReceiveReport:(id)a4 streamToken:(int64_t)a5;
- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didUpdateVideoConfiguration:(BOOL)a4 error:(id)a5;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation VideoStream

- (void)qosMonitor:(id)a3 didReceiveReport:(id)a4 streamToken:(int64_t)a5
{
  v7 = sub_1000579B0();
  v8 = a3;
  v9 = self;
  VideoStream.qosMonitor(_:didReceiveReport:streamToken:)(v9, v7);
}

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  VideoStream.stream(_:didStart:error:)();
}

- (void)streamDidStop:(id)a3
{
  v4 = a3;
  v5 = self;
  VideoStream.streamDidStop(_:)();
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  v5 = self;
  VideoStream.streamDidServerDie(_:)();
}

- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  VideoStream.stream(_:didPause:error:)();
}

- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  VideoStream.stream(_:didResume:error:)();
}

- (void)stream:(id)a3 didUpdateVideoConfiguration:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  VideoStream.stream(_:didUpdateVideoConfiguration:error:)();
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v4 = a3;
  v5 = self;
  VideoStream.streamDidRTPTimeOut(_:)();
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = a3;
  v5 = self;
  VideoStream.streamDidRTCPTimeOut(_:)();
}

@end