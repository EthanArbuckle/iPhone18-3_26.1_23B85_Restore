@interface PasteboardEventObserver
- (void)invalidateEnabledState;
@end

@implementation PasteboardEventObserver

- (void)invalidateEnabledState
{
  v2 = *self->pasteHelper;

  v3.value._rawValue = 0;
  v3.is_nil = v2;
  PasteHelper.canPaste(_:)(v3);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

@end