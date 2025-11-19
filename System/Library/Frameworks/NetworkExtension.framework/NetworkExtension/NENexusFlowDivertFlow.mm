@interface NENexusFlowDivertFlow
- (id)clientIdentifier;
- (id)endpoint;
- (id)parameters;
- (void)dealloc;
@end

@implementation NENexusFlowDivertFlow

- (id)clientIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (id)parameters
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  return self;
}

- (id)endpoint
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (void)dealloc
{
  if (self)
  {
    flowDivertFlow = self->_flowDivertFlow;
    if (flowDivertFlow)
    {
      CFRelease(flowDivertFlow);
      self->_flowDivertFlow = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NENexusFlowDivertFlow;
  [(NENexusFlow *)&v4 dealloc];
}

@end