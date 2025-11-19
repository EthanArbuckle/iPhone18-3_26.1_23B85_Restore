@interface AXSBServerUIApplication
- (int64_t)alertInterfaceOrientation;
- (int64_t)interfaceOrientation;
@end

@implementation AXSBServerUIApplication

- (int64_t)interfaceOrientation
{
  if ([SBServerHelper shouldOverrideInterfaceOrientation])
  {
    v3 = *MEMORY[0x277D76620];

    return [v3 activeInterfaceOrientation];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXSBServerUIApplication;
    return [(AXSBServerUIApplication *)&v5 interfaceOrientation];
  }
}

- (int64_t)alertInterfaceOrientation
{
  if ([SBServerHelper shouldOverrideInterfaceOrientation])
  {
    v3 = *MEMORY[0x277D76620];

    return [v3 activeInterfaceOrientation];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXSBServerUIApplication;
    return [(AXSBServerUIApplication *)&v5 alertInterfaceOrientation];
  }
}

@end