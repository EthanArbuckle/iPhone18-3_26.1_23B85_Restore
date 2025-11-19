@interface ComposeUndoHandler
- (void)cancelLastDelayedMessage;
- (void)enableUndoSend:(BOOL)a3 for:(id)a4;
@end

@implementation ComposeUndoHandler

- (void)enableUndoSend:(BOOL)a3 for:(id)a4
{
  _objc_retain(a4);
  _objc_retain(self);
  v5 = _convertObjCBoolToBool(_:)();
  sub_10028FBDC(v5 & 1, a4);
  _objc_release(self);
  _objc_release(a4);
}

- (void)cancelLastDelayedMessage
{
  _objc_retain(self);
  sub_10028FF7C();
  _objc_release(self);
}

@end