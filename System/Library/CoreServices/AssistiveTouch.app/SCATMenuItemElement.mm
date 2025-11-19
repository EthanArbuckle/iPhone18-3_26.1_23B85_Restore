@interface SCATMenuItemElement
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)scatPerformAction:(int)a3;
- (BOOL)scatShouldSuppressAudioOutput;
- (SCATMenuItemElement)initWithMenuItem:(id)a3;
- (SCATModernMenuItem)menuItem;
- (id)accessibilityLabel;
- (id)scatSpeakableDescription;
@end

@implementation SCATMenuItemElement

- (SCATMenuItemElement)initWithMenuItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATMenuItemElement;
  v5 = [(SCATMenuItemElement *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATMenuItemElement *)v5 setMenuItem:v4];
  }

  return v6;
}

- (BOOL)scatPerformAction:(int)a3
{
  if (a3 != 2010)
  {
    return 0;
  }

  v3 = self;
  v4 = [(SCATMenuItemElement *)self menuItem];
  LOBYTE(v3) = [v4 handleActivateWithElement:v3];

  return v3;
}

- (id)scatSpeakableDescription
{
  v2 = [(SCATMenuItemElement *)self menuItem];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)scatShouldSuppressAudioOutput
{
  v2 = [(SCATMenuItemElement *)self menuItem];
  v3 = [v2 shouldSuppressAudioOutput];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(SCATMenuItemElement *)self menuItem];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  v2 = [(SCATMenuItemElement *)self menuItem];
  v3 = [v2 allowsDwellScanningToAbortAfterTimeout];

  return v3;
}

- (SCATModernMenuItem)menuItem
{
  WeakRetained = objc_loadWeakRetained(&self->_menuItem);

  return WeakRetained;
}

@end