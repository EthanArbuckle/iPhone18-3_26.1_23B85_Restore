@interface AXRemoteMLElement
- (AXRemoteMLElement)initWithUUID:(id)d andContextId:(unsigned int)id;
@end

@implementation AXRemoteMLElement

- (AXRemoteMLElement)initWithUUID:(id)d andContextId:(unsigned int)id
{
  v4 = *&id;
  dCopy = d;
  v7 = getpid();
  v11.receiver = self;
  v11.super_class = AXRemoteMLElement;
  v8 = [(AXRemoteElement *)&v11 initWithUUID:dCopy andRemotePid:-v7 andContextId:v4];

  if (AXRequestingClientSupportsMLElements())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end