@interface _SFWebProcessPlugInPageController
+ (id)pageControllerForBrowserContextController:(id)a3;
- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7;
@end

@implementation _SFWebProcessPlugInPageController

+ (id)pageControllerForBrowserContextController:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &kContextControllerToPlugInPageControllerAssociationKey);

  return v3;
}

- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v41 = v12;
  v13 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  v14 = [v13 searchEnginesForRedirectToSafeSearch];

  if (v14)
  {
    v12 = v12;
    v39 = v14;
    v15 = [v12 URL];
    v16 = v11;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v39;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v18)
    {
      v40 = v10;
      v19 = *v43;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          if ([v21 urlIsValidSearch:v15])
          {
            v23 = [v21 safeSearchURLForSearchURL:v15];
            v10 = v40;
            v11 = v16;
            if (v23 && ([v15 isEqual:v23] & 1) == 0)
            {
              v22 = [v12 mutableCopy];
              [v22 setURL:v23];
              [v22 setAttribution:1];
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_18;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v22 = 0;
      v10 = v40;
    }

    else
    {
      v22 = 0;
    }

    v11 = v16;
LABEL_18:

    if (v22)
    {
      v24 = v22;

      v12 = v24;
    }
  }

  v25 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  if (![v25 isABTestingEnabled])
  {
    goto LABEL_24;
  }

  v26 = [v10 mainFrame];
  if (v26 != v11)
  {
    goto LABEL_23;
  }

  v28 = [v41 URL];
  v29 = [v11 _provisionalURL];
  v30 = WBSIsEqual();

  if (v30)
  {
    [v10 _bundlePageRef];
    IsUsingEphemeralSession = WKBundlePageIsUsingEphemeralSession();
    v32 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
    v12 = v12;
    v33 = v32;
    v34 = [v12 URL];
    if (v34)
    {
      v35 = IsUsingEphemeralSession;
    }

    else
    {
      v35 = 1;
    }

    if ((v35 & 1) != 0 || (v36 = [v33 abGroupIdentifier]) == 0)
    {
      v25 = 0;
    }

    else
    {
      v37 = [v33 defaultSearchProvider];
      v38 = [v37 urlByIncorporatingGroupIdentifier:v36 ifIsValidSearchResultsURL:v34];

      if (v38 && (WBSIsEqual() & 1) == 0)
      {
        v25 = [v12 mutableCopy];
        [v25 setURL:v38];
        [v25 setAttribution:1];
      }

      else
      {
        v25 = 0;
      }
    }

    if (!v25)
    {
      goto LABEL_24;
    }

    v25 = v25;
    v26 = v12;
    v12 = v25;
LABEL_23:

LABEL_24:
  }

  return v12;
}

@end