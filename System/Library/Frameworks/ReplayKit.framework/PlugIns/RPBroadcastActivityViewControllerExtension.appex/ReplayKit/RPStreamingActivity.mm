@interface RPStreamingActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (RPStreamingActivity)initWithApplicationExtension:(id)a3;
- (id)activityImage;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation RPStreamingActivity

- (RPStreamingActivity)initWithApplicationExtension:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPStreamingActivity;
  v6 = [(RPStreamingActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationExtension, a3);
  }

  return v7;
}

- (id)activityTitle
{
  v2 = [(NSExtension *)self->_applicationExtension infoDictionary];
  v3 = [v2 objectForKey:_kCFBundleDisplayNameKey];

  return v3;
}

- (id)activityImage
{
  v2 = [(NSExtension *)self->_applicationExtension icons];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)prepareWithActivityItems:(id)a3
{
  v3.receiver = self;
  v3.super_class = RPStreamingActivity;
  [(RPStreamingActivity *)&v3 prepareWithActivityItems:a3];
}

@end