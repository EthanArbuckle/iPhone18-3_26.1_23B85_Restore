@interface AirPortAssistantUINavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation AirPortAssistantUINavigationController

- (unint64_t)supportedInterfaceOrientations
{
  v4 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, v2);
  if (objc_msgSend_userInterfaceIdiom(v4, v5, v6) == 1 && sub_23EC13460(self, v7, v8) == 2)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end