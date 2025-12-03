@interface SCATCustomizeDeviceMenuController
- (id)itemsFromPreferences;
- (id)originalItemsFromPreference;
- (id)titleForItem:(id)item;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation SCATCustomizeDeviceMenuController

- (id)itemsFromPreferences
{
  originalItemsFromPreference = [(SCATCustomizeDeviceMenuController *)self originalItemsFromPreference];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __57__SCATCustomizeDeviceMenuController_itemsFromPreferences__block_invoke;
  v6[3] = &unk_256D30;
  v6[4] = self;
  v4 = [(SCATCustomizeMenuBaseController *)self filterAndTrackMenuItemsMatchingBlock:v6 allItems:originalItemsFromPreference];

  return v4;
}

uint64_t __57__SCATCustomizeDeviceMenuController_itemsFromPreferences__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isEqualToString:AXSSwitchControlMenuItemDeviceSiriVoiceControl])
  {
    if ([v3 isEqualToString:AXSSwitchControlMenuItemDeviceMute])
    {
      IsSpeakScreenEnabled = [*(a1 + 32) _isMuteAvailable];
    }

    else
    {
      if ([v3 isEqualToString:AXSSwitchControlMenuItemDeviceIncreaseDecreaseZoom])
      {
        v4 = _AXSZoomTouchEnabled() == 0;
        goto LABEL_8;
      }

      if ([v3 isEqualToString:AXSSwitchControlMenuItemDeviceSpeakScreen])
      {
        IsSpeakScreenEnabled = UIAccessibilityIsSpeakScreenEnabled();
      }

      else if ([v3 isEqualToString:AXSSwitchControlMenuItemDeviceToggleDock])
      {
        IsSpeakScreenEnabled = AXDeviceSupportsSideApp();
      }

      else if ([v3 isEqualToString:AXSSwitchControlMenuItemDeviceArmApplePay])
      {
        IsSpeakScreenEnabled = AXDeviceCanArmApplePay();
      }

      else if (([v3 isEqualToString:AXSSwitchControlMenuItemCameraButton] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXSSwitchControlMenuItemCameraButtonLightPress) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", AXSSwitchControlMenuItemCameraButtonDoubleLightPress))
      {
        IsSpeakScreenEnabled = AXDeviceSupportsCameraButton();
      }

      else
      {
        if (![v3 isEqualToString:AXSSwitchControlMenuItemVisualIntelligence])
        {
          goto LABEL_3;
        }

        if (!AXDeviceSupportsCameraButton())
        {
          v4 = 1;
          goto LABEL_8;
        }

        IsSpeakScreenEnabled = AXDeviceHasGreyMatterEnabled();
      }
    }

LABEL_7:
    v4 = IsSpeakScreenEnabled ^ 1;
    goto LABEL_8;
  }

  if (([*(a1 + 32) _isSiriAvailable] & 1) == 0)
  {
    IsSpeakScreenEnabled = [*(a1 + 32) _isVoiceControlAvailable];
    goto LABEL_7;
  }

LABEL_3:
  v4 = 0;
LABEL_8:

  return v4;
}

- (id)titleForItem:(id)item
{
  itemCopy = item;
  v5 = [itemCopy objectForKeyedSubscript:AXSSwitchControlMenuItemTypeKey];
  if ([v5 isEqualToString:AXSSwitchControlMenuItemDeviceSiriVoiceControl])
  {
    if (![(SCATCustomizeDeviceMenuController *)self _isSiriAvailable]&& ![(SCATCustomizeDeviceMenuController *)self _isVoiceControlAvailable])
    {
      _AXAssert();
    }
  }

  else if ([v5 isEqualToString:AXSSwitchControlMenuItemDeviceTypeToSiri])
  {
    if (![(SCATCustomizeDeviceMenuController *)self _isSiriAvailable])
    {
      v6 = 0;
      goto LABEL_18;
    }
  }

  else if (![v5 isEqualToString:AXSSwitchControlMenuItemCameraButton] && !objc_msgSend(v5, "isEqualToString:", AXSSwitchControlMenuItemCameraButtonLightPress) && !objc_msgSend(v5, "isEqualToString:", AXSSwitchControlMenuItemCameraButtonDoubleLightPress) && !objc_msgSend(v5, "isEqualToString:", AXSSwitchControlMenuItemVisualIntelligence))
  {
    v9.receiver = self;
    v9.super_class = SCATCustomizeDeviceMenuController;
    v7 = [(SCATCustomizeMenuBaseController *)&v9 titleForItem:itemCopy];
    goto LABEL_17;
  }

  v7 = AXParameterizedLocalizedString();
LABEL_17:
  v6 = v7;
LABEL_18:

  return v6;
}

- (void)updateItemsInPreferences:(id)preferences
{
  v4 = [(SCATCustomizeMenuBaseController *)self restorePreviouslyFilteredItemsToItems:preferences];
  v3 = +[AXSettings sharedInstance];
  [v3 setSwitchControlDeviceMenuItems:v4];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  switchControlDeviceMenuItems = [v2 switchControlDeviceMenuItems];

  return switchControlDeviceMenuItems;
}

@end