@interface _SFWebProcessPlugInPageController
+ (id)pageControllerForBrowserContextController:(id)controller;
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
@end

@implementation _SFWebProcessPlugInPageController

+ (id)pageControllerForBrowserContextController:(id)controller
{
  v3 = objc_getAssociatedObject(controller, &kContextControllerToPlugInPageControllerAssociationKey);

  return v3;
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  v47 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  frameCopy = frame;
  requestCopy = request;
  v41 = requestCopy;
  webProcessPlugIn = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  searchEnginesForRedirectToSafeSearch = [webProcessPlugIn searchEnginesForRedirectToSafeSearch];

  if (searchEnginesForRedirectToSafeSearch)
  {
    requestCopy = requestCopy;
    v39 = searchEnginesForRedirectToSafeSearch;
    v15 = [requestCopy URL];
    v16 = frameCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v39;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v18)
    {
      v40 = controllerCopy;
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
            controllerCopy = v40;
            frameCopy = v16;
            if (v23 && ([v15 isEqual:v23] & 1) == 0)
            {
              v22 = [requestCopy mutableCopy];
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
      controllerCopy = v40;
    }

    else
    {
      v22 = 0;
    }

    frameCopy = v16;
LABEL_18:

    if (v22)
    {
      v24 = v22;

      requestCopy = v24;
    }
  }

  webProcessPlugIn2 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  if (![webProcessPlugIn2 isABTestingEnabled])
  {
    goto LABEL_24;
  }

  mainFrame = [controllerCopy mainFrame];
  if (mainFrame != frameCopy)
  {
    goto LABEL_23;
  }

  v28 = [v41 URL];
  _provisionalURL = [frameCopy _provisionalURL];
  v30 = WBSIsEqual();

  if (v30)
  {
    [controllerCopy _bundlePageRef];
    IsUsingEphemeralSession = WKBundlePageIsUsingEphemeralSession();
    webProcessPlugIn3 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
    requestCopy = requestCopy;
    v33 = webProcessPlugIn3;
    v34 = [requestCopy URL];
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
      webProcessPlugIn2 = 0;
    }

    else
    {
      defaultSearchProvider = [v33 defaultSearchProvider];
      v38 = [defaultSearchProvider urlByIncorporatingGroupIdentifier:v36 ifIsValidSearchResultsURL:v34];

      if (v38 && (WBSIsEqual() & 1) == 0)
      {
        webProcessPlugIn2 = [requestCopy mutableCopy];
        [webProcessPlugIn2 setURL:v38];
        [webProcessPlugIn2 setAttribution:1];
      }

      else
      {
        webProcessPlugIn2 = 0;
      }
    }

    if (!webProcessPlugIn2)
    {
      goto LABEL_24;
    }

    webProcessPlugIn2 = webProcessPlugIn2;
    mainFrame = requestCopy;
    requestCopy = webProcessPlugIn2;
LABEL_23:

LABEL_24:
  }

  return requestCopy;
}

@end