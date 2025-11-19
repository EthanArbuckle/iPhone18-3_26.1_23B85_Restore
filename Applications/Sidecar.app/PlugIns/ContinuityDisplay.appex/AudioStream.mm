@interface AudioStream
- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didStartSynchronizer:(BOOL)a4 error:(id)a5;
@end

@implementation AudioStream

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v9 = a3;
  v10 = self;
  v11 = a5;
  AudioStream.stream(_:didStart:error:)(a3, a4);
}

- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = self;
  v10 = a5;
  AudioStream.stream(_:didPause:error:)(v10, v6, a5);
}

- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = self;
  v10 = a5;
  AudioStream.stream(_:didResume:error:)(v10, v6, a5);
}

- (void)stream:(id)a3 didStartSynchronizer:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = self;
  v10 = a5;
  AudioStream.stream(_:didStartSynchronizer:error:)(v10, v6, a5);
}

@end