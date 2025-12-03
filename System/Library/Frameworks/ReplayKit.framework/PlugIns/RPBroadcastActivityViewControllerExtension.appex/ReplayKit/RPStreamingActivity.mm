@interface RPStreamingActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (RPStreamingActivity)initWithApplicationExtension:(id)extension;
- (id)activityImage;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation RPStreamingActivity

- (RPStreamingActivity)initWithApplicationExtension:(id)extension
{
  extensionCopy = extension;
  v9.receiver = self;
  v9.super_class = RPStreamingActivity;
  v6 = [(RPStreamingActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationExtension, extension);
  }

  return v7;
}

- (id)activityTitle
{
  infoDictionary = [(NSExtension *)self->_applicationExtension infoDictionary];
  v3 = [infoDictionary objectForKey:_kCFBundleDisplayNameKey];

  return v3;
}

- (id)activityImage
{
  icons = [(NSExtension *)self->_applicationExtension icons];
  firstObject = [icons firstObject];

  return firstObject;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)prepareWithActivityItems:(id)items
{
  v3.receiver = self;
  v3.super_class = RPStreamingActivity;
  [(RPStreamingActivity *)&v3 prepareWithActivityItems:items];
}

@end