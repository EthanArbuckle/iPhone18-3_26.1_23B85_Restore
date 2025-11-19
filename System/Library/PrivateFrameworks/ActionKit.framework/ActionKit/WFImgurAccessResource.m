@interface WFImgurAccessResource
- (WFImgurUploadAction)action;
- (unint64_t)status;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)setAction:(id)a3;
@end

@implementation WFImgurAccessResource

- (WFImgurUploadAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (unint64_t)status
{
  if (![(WFImgurAccessResource *)self usesAccount])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = WFImgurAccessResource;
  return [(WFAccountAccessResource *)&v4 status];
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v7 = a3;
  if ([a4 isEqualToString:@"WFImgurAnonymous"])
  {
    v6 = [v7 parameterValueForKey:@"WFImgurAnonymous" ofClass:objc_opt_class()];
    -[WFImgurAccessResource setUsesAccount:](self, "setUsesAccount:", [v6 BOOLValue] ^ 1);
  }
}

- (void)setAction:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  v5 = objc_storeWeak(&self->_action, obj);
  [obj addEventObserver:self];
}

@end