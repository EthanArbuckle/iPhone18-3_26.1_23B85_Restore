@interface ComposeUndoHandler
- (void)cancelLastDelayedMessage;
- (void)enableUndoSend:(BOOL)send for:(id)for;
@end

@implementation ComposeUndoHandler

- (void)enableUndoSend:(BOOL)send for:(id)for
{
  _objc_retain(for);
  _objc_retain(self);
  v5 = _convertObjCBoolToBool(_:)();
  sub_10028FBDC(v5 & 1, for);
  _objc_release(self);
  _objc_release(for);
}

- (void)cancelLastDelayedMessage
{
  _objc_retain(self);
  sub_10028FF7C();
  _objc_release(self);
}

@end