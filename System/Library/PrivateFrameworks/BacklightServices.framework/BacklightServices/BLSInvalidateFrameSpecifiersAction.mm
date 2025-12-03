@interface BLSInvalidateFrameSpecifiersAction
- (BLSInvalidateFrameSpecifiersAction)initWithReason:(id)reason;
- (NSString)reason;
@end

@implementation BLSInvalidateFrameSpecifiersAction

- (BLSInvalidateFrameSpecifiersAction)initWithReason:(id)reason
{
  v4 = MEMORY[0x277CF0C80];
  reasonCopy = reason;
  v6 = objc_alloc_init(v4);
  [v6 setObject:reasonCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = BLSInvalidateFrameSpecifiersAction;
  v7 = [(BLSInvalidateFrameSpecifiersAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (NSString)reason
{
  info = [(BLSInvalidateFrameSpecifiersAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

@end