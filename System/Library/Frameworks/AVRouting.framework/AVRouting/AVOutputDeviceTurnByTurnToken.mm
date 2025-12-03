@interface AVOutputDeviceTurnByTurnToken
- (AVOutputDeviceTurnByTurnToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)dealloc;
@end

@implementation AVOutputDeviceTurnByTurnToken

- (AVOutputDeviceTurnByTurnToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint
{
  v12.receiver = self;
  v12.super_class = AVOutputDeviceTurnByTurnToken;
  v4 = [(AVOutputDeviceTurnByTurnToken *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (endpoint)
    {
      v6 = CFRetain(endpoint);
      v5->_endpoint = v6;
      if (v6)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v9 = *(*(VTable + 8) + 56);
        if (v9)
        {
          v10 = *(VTable + 8) + 56;
          v9(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4D0]);
        }
      }
    }

    else
    {
      v4->_endpoint = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self->_endpoint)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 56);
    if (v5)
    {
      v6 = *(VTable + 8) + 56;
      v5(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4C0]);
    }

    endpoint = self->_endpoint;
    if (endpoint)
    {
      CFRelease(endpoint);
    }
  }

  v8.receiver = self;
  v8.super_class = AVOutputDeviceTurnByTurnToken;
  [(AVOutputDeviceTurnByTurnToken *)&v8 dealloc];
}

@end