@interface AVExternalDeviceTurnByTurnToken
- (AVExternalDeviceTurnByTurnToken)initWithExternalDevice:(id)a3;
- (void)dealloc;
@end

@implementation AVExternalDeviceTurnByTurnToken

- (AVExternalDeviceTurnByTurnToken)initWithExternalDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVExternalDeviceTurnByTurnToken;
  v4 = [(AVExternalDeviceTurnByTurnToken *)&v9 init];
  if (v4)
  {
    v5 = a3;
    v4->_externalDevice = v5;
    if ([(AVExternalDevice *)v5 figEndpoint])
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4D0]);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  if ([(AVExternalDevice *)self->_externalDevice figEndpoint])
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4C0]);
    }
  }

  v5.receiver = self;
  v5.super_class = AVExternalDeviceTurnByTurnToken;
  [(AVExternalDeviceTurnByTurnToken *)&v5 dealloc];
}

@end