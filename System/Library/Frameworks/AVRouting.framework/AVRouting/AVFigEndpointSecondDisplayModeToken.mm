@interface AVFigEndpointSecondDisplayModeToken
- (AVFigEndpointSecondDisplayModeToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)dealloc;
@end

@implementation AVFigEndpointSecondDisplayModeToken

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
  }

  v4.receiver = self;
  v4.super_class = AVFigEndpointSecondDisplayModeToken;
  [(AVFigEndpointSecondDisplayModeToken *)&v4 dealloc];
}

- (AVFigEndpointSecondDisplayModeToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint
{
  v8.receiver = self;
  v8.super_class = AVFigEndpointSecondDisplayModeToken;
  v4 = [(AVFigEndpointSecondDisplayModeToken *)&v8 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!endpoint)
  {
    v4->_endpoint = 0;
    goto LABEL_6;
  }

  v6 = CFRetain(endpoint);
  v5->_endpoint = v6;
  if (!v6)
  {
LABEL_7:
    endpoint = 0;
    goto LABEL_6;
  }

  endpoint = v5;
LABEL_6:

  return endpoint;
}

@end