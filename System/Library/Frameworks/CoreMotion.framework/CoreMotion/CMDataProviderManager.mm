@interface CMDataProviderManager
- (void)startMockAlgo;
- (void)stopMockAlgo;
@end

@implementation CMDataProviderManager

- (void)startMockAlgo
{
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderStartMockAlgo");
  objc_msgSend_sendMockAlgoMessage_(self, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)stopMockAlgo
{
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderStopMockAlgo");
  objc_msgSend_sendMockAlgoMessage_(self, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

@end