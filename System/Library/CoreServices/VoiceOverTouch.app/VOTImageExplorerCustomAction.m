@interface VOTImageExplorerCustomAction
- (BOOL)isEqual:(id)a3;
- (BOOL)performWithContext:(id)a3;
- (VOTImageExplorerCustomAction)init;
- (unint64_t)hash;
@end

@implementation VOTImageExplorerCustomAction

- (VOTImageExplorerCustomAction)init
{
  v3.receiver = self;
  v3.super_class = VOTImageExplorerCustomAction;
  return [(VOTImageExplorerCustomAction *)&v3 init];
}

- (BOOL)performWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 isValidElementForImageExploration];
  v5 = VOTLogImageExplorer();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      sub_10012A1B8();
    }

    [v3 handleLaunchVoiceOverImageExplorer];
  }

  else
  {
    if (v6)
    {
      sub_10012A124();
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end