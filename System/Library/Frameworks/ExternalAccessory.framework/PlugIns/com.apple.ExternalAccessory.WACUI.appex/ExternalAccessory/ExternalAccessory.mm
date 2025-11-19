void sub_100000EF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    if (objc_opt_respondsToSelector())
    {
      [v2 shouldCheckWiFiPowerStatus];
    }
  }
}

void sub_100001154(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[32] == 1)
  {
    NSLog(@"Plugin: signalling presentation complete");
    v2 = *(a1 + 32);
  }

  v3 = [v2 _remoteViewControllerProxy];
  [v3 _signalPresentationComplete];
}