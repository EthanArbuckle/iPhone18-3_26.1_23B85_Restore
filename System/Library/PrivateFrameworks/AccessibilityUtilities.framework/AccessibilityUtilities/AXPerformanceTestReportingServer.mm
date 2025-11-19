@interface AXPerformanceTestReportingServer
+ (id)server;
- (void)assistiveTouchDidLaunch;
- (void)voiceOverDidSpeak:(id)a3;
- (void)voiceOverTouchDidLaunch;
@end

@implementation AXPerformanceTestReportingServer

+ (id)server
{
  if (server_onceToken != -1)
  {
    +[AXPerformanceTestReportingServer server];
  }

  v3 = server_Server;

  return v3;
}

uint64_t __42__AXPerformanceTestReportingServer_server__block_invoke()
{
  result = AXIsInternalInstall();
  if (result)
  {
    server_Server = objc_alloc_init(AXPerformanceTestReportingServer);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)voiceOverTouchDidLaunch
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:8000 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)assistiveTouchDidLaunch
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:8001 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)voiceOverDidSpeak:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v8 = @"string";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v7 = [(AXIPCMessage *)v5 initWithKey:8002 payload:v6];
  [(AXServer *)self sendSimpleMessage:v7];
}

@end