@interface BLSInvalidateFrameSpecifiersAction
- (BLSInvalidateFrameSpecifiersAction)initWithReason:(id)a3;
- (NSString)reason;
@end

@implementation BLSInvalidateFrameSpecifiersAction

- (BLSInvalidateFrameSpecifiersAction)initWithReason:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = BLSInvalidateFrameSpecifiersAction;
  v7 = [(BLSInvalidateFrameSpecifiersAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (NSString)reason
{
  v2 = [(BLSInvalidateFrameSpecifiersAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

@end