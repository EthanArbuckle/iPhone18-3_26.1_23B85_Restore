@interface JSAShare
+ (void)shareURL:(id)l fromViewController:(id)controller options:(id)options completionHandler:(id)handler;
+ (void)shareURL:(id)l fromViewController:(id)controller sourceView:(id)view sourceBarButtonItem:(id)item;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(void *)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation JSAShare

+ (void)shareURL:(id)l fromViewController:(id)controller options:(id)options completionHandler:(id)handler
{
  controllerCopy = controller;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = [NSURL URLWithString:l];
  if (v12)
  {
    sub_AD08(self, v12, controllerCopy, optionsCopy, handlerCopy);
  }
}

+ (void)shareURL:(id)l fromViewController:(id)controller sourceView:(id)view sourceBarButtonItem:(id)item
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  v12 = [NSURL URLWithString:l];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = v13;
    if (viewCopy)
    {
      [v13 setObject:viewCopy forKeyedSubscript:@"sourceView"];
    }

    if (itemCopy)
    {
      [v14 setObject:itemCopy forKeyedSubscript:@"sourceBarButtonItem"];
    }

    sub_AD08(self, v12, controllerCopy, v14, 0);
  }
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(NSString);

  return v3;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v5 = [(JSAShare *)self options:controller];
  v6 = [v5 objectForKeyedSubscript:@"linkPresentation"];
  if (v6)
  {
    options = [(JSAShare *)self options];
    v8 = [options objectForKeyedSubscript:@"linkPresentation"];
    v9 = [v8 objectForKeyedSubscript:@"title"];
    if (v9)
    {
      options2 = [(JSAShare *)self options];
      v11 = [options2 objectForKeyedSubscript:@"linkPresentation"];
      v12 = [v11 objectForKeyedSubscript:@"title"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)activityViewControllerLinkMetadata:(void *)metadata
{
  if (metadata)
  {
    v2 = objc_alloc_init(LPLinkMetadata);
    options = [metadata options];
    v4 = [options objectForKeyedSubscript:@"linkPresentation"];
    v5 = [v4 objectForKeyedSubscript:@"title"];
    [v2 setTitle:v5];

    options2 = [metadata options];
    v7 = [options2 objectForKeyedSubscript:@"linkPresentation"];
    v8 = [v7 objectForKeyedSubscript:@"summary"];
    [v2 setSummary:v8];

    options3 = [metadata options];
    v10 = [options3 objectForKeyedSubscript:@"linkPresentation"];
    v11 = [v10 objectForKeyedSubscript:@"imageUrl"];

    options4 = [metadata options];
    v13 = [options4 objectForKeyedSubscript:@"linkPresentation"];
    v14 = [v13 objectForKeyedSubscript:@"artworkUrl"];

    if (v14)
    {
      options5 = [metadata options];
      v16 = [options5 objectForKeyedSubscript:@"linkPresentation"];
      v17 = [v16 objectForKeyedSubscript:@"artworkAspect"];

      if (v17)
      {
        [v17 floatValue];
        v19 = v18 * 80.0;
      }

      else
      {
        v19 = 80.0;
      }

      v27 = [v14 jsa_normalizedArtworkURLOfSize:@"jpg" withFormat:v19, v19];
      v28 = [NSURL URLWithString:v27];
      if (v28)
      {
        v29 = sub_B54C(metadata, v28);
        v30 = objc_opt_new();
        v31 = [[LPImage alloc] initWithItemProvider:v29 properties:v30 placeholderImage:0];
        [v2 setImage:v31];
      }
    }

    else
    {
      if (!v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = [NSURL URLWithString:v11];
      v17 = v20;
      if (!v20)
      {
LABEL_16:

        goto LABEL_17;
      }

      if ([v20 isFileURL])
      {
        options6 = [metadata options];
        v22 = [options6 objectForKeyedSubscript:@"linkPresentation"];
        v23 = [v22 objectForKeyedSubscript:@"imageMIMEType"];
        v24 = v23;
        v25 = @"image/png";
        if (v23)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = [[LPImage alloc] initByReferencingFileURL:v17 MIMEType:v26];
        [v2 setImage:v27];
      }

      else
      {
        v27 = sub_B54C(metadata, v17);
        v33 = [[LPImage alloc] initWithItemProvider:v27 properties:0 placeholderImage:0];
        [v2 setImage:v33];
      }
    }

    goto LABEL_16;
  }

  v2 = 0;
LABEL_18:

  return v2;
}

@end