@interface SCATMenuItemElement
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)scatPerformAction:(int)action;
- (BOOL)scatShouldSuppressAudioOutput;
- (SCATMenuItemElement)initWithMenuItem:(id)item;
- (SCATModernMenuItem)menuItem;
- (id)accessibilityLabel;
- (id)scatSpeakableDescription;
@end

@implementation SCATMenuItemElement

- (SCATMenuItemElement)initWithMenuItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = SCATMenuItemElement;
  v5 = [(SCATMenuItemElement *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATMenuItemElement *)v5 setMenuItem:itemCopy];
  }

  return v6;
}

- (BOOL)scatPerformAction:(int)action
{
  if (action != 2010)
  {
    return 0;
  }

  selfCopy = self;
  menuItem = [(SCATMenuItemElement *)self menuItem];
  LOBYTE(selfCopy) = [menuItem handleActivateWithElement:selfCopy];

  return selfCopy;
}

- (id)scatSpeakableDescription
{
  menuItem = [(SCATMenuItemElement *)self menuItem];
  accessibilityLabel = [menuItem accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)scatShouldSuppressAudioOutput
{
  menuItem = [(SCATMenuItemElement *)self menuItem];
  shouldSuppressAudioOutput = [menuItem shouldSuppressAudioOutput];

  return shouldSuppressAudioOutput;
}

- (id)accessibilityLabel
{
  menuItem = [(SCATMenuItemElement *)self menuItem];
  accessibilityLabel = [menuItem accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  menuItem = [(SCATMenuItemElement *)self menuItem];
  allowsDwellScanningToAbortAfterTimeout = [menuItem allowsDwellScanningToAbortAfterTimeout];

  return allowsDwellScanningToAbortAfterTimeout;
}

- (SCATModernMenuItem)menuItem
{
  WeakRetained = objc_loadWeakRetained(&self->_menuItem);

  return WeakRetained;
}

@end