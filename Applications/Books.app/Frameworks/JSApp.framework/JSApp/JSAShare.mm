@interface JSAShare
+ (void)shareURL:(id)a3 fromViewController:(id)a4 options:(id)a5 completionHandler:(id)a6;
+ (void)shareURL:(id)a3 fromViewController:(id)a4 sourceView:(id)a5 sourceBarButtonItem:(id)a6;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(void *)a1;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation JSAShare

+ (void)shareURL:(id)a3 fromViewController:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v13 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [NSURL URLWithString:a3];
  if (v12)
  {
    sub_AD08(a1, v12, v13, v10, v11);
  }
}

+ (void)shareURL:(id)a3 fromViewController:(id)a4 sourceView:(id)a5 sourceBarButtonItem:(id)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [NSURL URLWithString:a3];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = v13;
    if (v10)
    {
      [v13 setObject:v10 forKeyedSubscript:@"sourceView"];
    }

    if (v11)
    {
      [v14 setObject:v11 forKeyedSubscript:@"sourceBarButtonItem"];
    }

    sub_AD08(a1, v12, v15, v14, 0);
  }
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_alloc_init(NSString);

  return v3;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = [(JSAShare *)self options:a3];
  v6 = [v5 objectForKeyedSubscript:@"linkPresentation"];
  if (v6)
  {
    v7 = [(JSAShare *)self options];
    v8 = [v7 objectForKeyedSubscript:@"linkPresentation"];
    v9 = [v8 objectForKeyedSubscript:@"title"];
    if (v9)
    {
      v10 = [(JSAShare *)self options];
      v11 = [v10 objectForKeyedSubscript:@"linkPresentation"];
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

- (id)activityViewControllerLinkMetadata:(void *)a1
{
  if (a1)
  {
    v2 = objc_alloc_init(LPLinkMetadata);
    v3 = [a1 options];
    v4 = [v3 objectForKeyedSubscript:@"linkPresentation"];
    v5 = [v4 objectForKeyedSubscript:@"title"];
    [v2 setTitle:v5];

    v6 = [a1 options];
    v7 = [v6 objectForKeyedSubscript:@"linkPresentation"];
    v8 = [v7 objectForKeyedSubscript:@"summary"];
    [v2 setSummary:v8];

    v9 = [a1 options];
    v10 = [v9 objectForKeyedSubscript:@"linkPresentation"];
    v11 = [v10 objectForKeyedSubscript:@"imageUrl"];

    v12 = [a1 options];
    v13 = [v12 objectForKeyedSubscript:@"linkPresentation"];
    v14 = [v13 objectForKeyedSubscript:@"artworkUrl"];

    if (v14)
    {
      v15 = [a1 options];
      v16 = [v15 objectForKeyedSubscript:@"linkPresentation"];
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
        v29 = sub_B54C(a1, v28);
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
        v21 = [a1 options];
        v22 = [v21 objectForKeyedSubscript:@"linkPresentation"];
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
        v27 = sub_B54C(a1, v17);
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