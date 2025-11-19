@interface BNBannerSourceListenerPresentableRejectionAction
- (BNBannerSourceListenerPresentableRejectionAction)initWithReason:(id)a3;
- (NSString)rejectionReason;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation BNBannerSourceListenerPresentableRejectionAction

- (BNBannerSourceListenerPresentableRejectionAction)initWithReason:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(BNBannerSourceListenerPresentableRejectionAction *)a2 initWithReason:?];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = BNBannerSourceListenerPresentableRejectionAction;
  v7 = [(BNBannerSourceListenerPresentableRejectionAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (NSString)rejectionReason
{
  v2 = [(BNBannerSourceListenerPresentableRejectionAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"rejectionReason";
  }

  else
  {
    return 0;
  }
}

- (void)initWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNBannerSourceListenerPresentableRejectionAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"[reason length] > 0"}];
}

@end