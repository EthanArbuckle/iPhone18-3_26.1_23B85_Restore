@interface WFImgurAccessResource
- (WFImgurUploadAction)action;
- (unint64_t)status;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)setAction:(id)action;
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

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  actionCopy = action;
  if ([key isEqualToString:@"WFImgurAnonymous"])
  {
    v6 = [actionCopy parameterValueForKey:@"WFImgurAnonymous" ofClass:objc_opt_class()];
    -[WFImgurAccessResource setUsesAccount:](self, "setUsesAccount:", [v6 BOOLValue] ^ 1);
  }
}

- (void)setAction:(id)action
{
  obj = action;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  v5 = objc_storeWeak(&self->_action, obj);
  [obj addEventObserver:self];
}

@end