@interface SCATMenuShortcutItem
- (AXSiriShortcut)shortcut;
@end

@implementation SCATMenuShortcutItem

- (AXSiriShortcut)shortcut
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);

  return WeakRetained;
}

@end