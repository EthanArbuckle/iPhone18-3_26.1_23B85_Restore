@interface SiriSystemSnippetFactory
- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4;
- (id)filteredDisambiguationListItems:(id)a3;
- (id)viewControllerForAceObject:(id)a3;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation SiriSystemSnippetFactory

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[ACAssistantAlternateProviderController alloc] initWithAlternateProviderSnippet:v5];
LABEL_8:
    v8 = v6;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = SiriPronunciationDataViewController;
LABEL_7:
    v6 = objc_alloc_init(v7);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = SiriAttributionViewController;
    goto LABEL_7;
  }

  if (a4)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (id)viewControllerForAceObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &off_18220;
LABEL_10:
    v5 = objc_alloc_init(*v4);
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_18208;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_181F8;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = off_18200;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_18218;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_18210;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (id)filteredDisambiguationListItems:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v3;
  if (isKindOfClass)
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v26 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *v29;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = [v13 object];
        v15 = [v14 appIdentifyingInfo];
        v16 = [v15 bundleId];

        v27 = 0;
        if (!v16)
        {
          goto LABEL_11;
        }

        v17 = [v13 object];
        v18 = [v17 appIdentifyingInfo];
        if ([v18 sruif_isSurfAppInfo])
        {

LABEL_11:
          [v7 addObject:v13];
          goto LABEL_12;
        }

        v19 = [v26 canOpenApplication:v16 reason:&v27];

        if (v19)
        {
          goto LABEL_11;
        }

        v20 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = FBSOpenApplicationErrorCodeToString();
          *buf = 136315650;
          v33 = "[SiriSystemSnippetFactory filteredDisambiguationListItems:]";
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v22;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%s Filtering app %@ for reason %@", buf, 0x20u);
        }

LABEL_12:

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v23 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
      v10 = v23;
      if (!v23)
      {
LABEL_17:

        v3 = v25;
        break;
      }
    }
  }

  return v7;
}

- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = +[SiriUIDisambiguationItem disambiguationItem];
    v8 = [v4 title];
    [v7 setTitle:v8];

    v9 = [v4 object];
    v10 = [v9 appIdentifyingInfo];
    v11 = [v10 bundleId];

    v12 = [v4 object];
    v13 = [v12 appIdentifyingInfo];
    v14 = [v13 sruif_isSurfAppInfo];

    if (v14)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [UIImage imageNamed:@"ApplePay" inBundle:v15];
      v17 = +[UIScreen mainScreen];
      [v17 scale];
      v18 = [v16 _applicationIconImageForFormat:2 precomposed:0 scale:?];
    }

    else
    {
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      v18 = [UIImage _applicationIconImageForBundleIdentifier:v11 format:2 scale:?];
    }

    v19 = [[UIImageView alloc] initWithImage:v18];
    [v7 setImageView:v19];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end