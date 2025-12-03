@interface AXAggregatedDeviceBatteryStatusView
- (AXAggregatedDeviceBatteryStatusView)initWithAccessibilityContainer:(id)container representedElements:(id)elements primaryTitle:(id)title batteryLevelLabel:(id)label chargingImage:(id)image warningImage:(id)warningImage;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AXAggregatedDeviceBatteryStatusView

- (AXAggregatedDeviceBatteryStatusView)initWithAccessibilityContainer:(id)container representedElements:(id)elements primaryTitle:(id)title batteryLevelLabel:(id)label chargingImage:(id)image warningImage:(id)warningImage
{
  titleCopy = title;
  labelCopy = label;
  imageCopy = image;
  warningImageCopy = warningImage;
  v21.receiver = self;
  v21.super_class = AXAggregatedDeviceBatteryStatusView;
  v18 = [(UIAccessibilityAggregateElement *)&v21 initWithAccessibilityContainer:self representedElements:elements];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_primaryTitle, title);
    if (([labelCopy isHidden] & 1) == 0)
    {
      objc_storeStrong(&v19->_batteryLevelLabel, label);
    }

    if (([imageCopy isHidden] & 1) == 0)
    {
      objc_storeStrong(&v19->_chargingImage, image);
    }

    if (([warningImageCopy isHidden] & 1) == 0)
    {
      objc_storeStrong(&v19->_warningImage, warningImage);
    }
  }

  return v19;
}

- (id)accessibilityLabel
{
  v3 = [(NSString *)self->_primaryTitle length];
  if (v3)
  {
    v3 = self->_primaryTitle;
  }

  return v3;
}

- (id)accessibilityValue
{
  batteryLevelLabel = self->_batteryLevelLabel;
  if (batteryLevelLabel)
  {
    accessibilityLabel = [self->_batteryLevelLabel accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  chargingImage = self->_chargingImage;
  if (chargingImage)
  {
    v6 = accessibilityB188LocalizedString(@"device.battery.state.charging");
  }

  else
  {
    v6 = 0;
  }

  if (self->_warningImage)
  {
    v9 = accessibilityB188LocalizedString(@"device.battery.state.disconnected");
    v7 = __UIAXStringForVariables();

    if (!chargingImage)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = __UIAXStringForVariables();
  if (chargingImage)
  {
LABEL_9:
  }

LABEL_10:
  if (batteryLevelLabel)
  {
  }

  return v7;
}

@end