@interface COSOptinFYIController
+ (BOOL)_wantsUnifiedFYIPane;
+ (BOOL)wantsUnifiedFYIPane;
+ (id)unifiedFYIDescription;
+ (void)doWorkForSkippedPanes;
@end

@implementation COSOptinFYIController

+ (BOOL)_wantsUnifiedFYIPane
{
  sub_100059798();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = NSClassFromString(*(*(&v8 + 1) + 8 * i));
        [(objc_class *)v6 conformsToProtocol:&OBJC_PROTOCOL___BPSUnifiedFYIOptinController, v8];
        if (([(objc_class *)v6 wantsUnifiedFYI]& 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (BOOL)wantsUnifiedFYIPane
{
  if (byte_1002BD411 == 1)
  {
    v2 = byte_1002BD410;
  }

  else
  {
    v2 = +[COSOptinFYIController _wantsUnifiedFYIPane];
  }

  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Fresh State";
    v5 = @"Doesn't Want Unified FYI Pane";
    if (byte_1002BD411)
    {
      v4 = @"Snapshot State";
    }

    if (v2)
    {
      v5 = @"Wants Unified FYI Pane";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Use %@ -> %@", &v7, 0x16u);
  }

  return v2 & 1;
}

+ (void)doWorkForSkippedPanes
{
  v2 = sub_100059798();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = NSClassFromString(*(*(&v8 + 1) + 8 * v6));
        if ([(objc_class *)v7 conformsToProtocol:&OBJC_PROTOCOL___BPSUnifiedFYIOptinController]&& [(objc_class *)v7 wantsUnifiedFYI]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(objc_class *)v7 doWorkForSkippedPane];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (id)unifiedFYIDescription
{
  v2 = +[NSMutableString string];
  sub_100059798();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = NSClassFromString(v7);
        v9 = [(objc_class *)v8 conformsToProtocol:&OBJC_PROTOCOL___BPSUnifiedFYIOptinController];
        if (v9)
        {
          v10 = [(objc_class *)v8 wantsUnifiedFYI];
        }

        else
        {
          v10 = 0;
        }

        v11 = objc_opt_respondsToSelector();
        v12 = [NSNumber numberWithBool:v9];
        v13 = [NSNumber numberWithBool:v10];
        v14 = [NSNumber numberWithBool:v11 & 1];
        [v2 appendFormat:@"\n#### %@ -> (Conforms to Protocol: %@) (Wants FYI: %@) (Has Work: %@)", v7, v12, v13, v14];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v2;
}

@end