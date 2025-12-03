@interface MapsUGCEnvironmentSectionController
- (BOOL)environmentIsSelectedWithBaseURL:(id)l submissionURL:(id)rL;
- (MapsUGCEnvironmentSectionController)initWithSubmissionURL:(unint64_t)l;
- (id)selectedEnvironmentURLWithSubmissionURL:(id)l;
- (void)appendEnvironmentSectionToDebugController:(id)controller;
@end

@implementation MapsUGCEnvironmentSectionController

- (BOOL)environmentIsSelectedWithBaseURL:(id)l submissionURL:(id)rL
{
  rLCopy = rL;
  v6 = [l stringByAppendingString:@"v1/feedback/submission.arpc"];
  v7 = [rLCopy isEqualToString:v6];

  return v7;
}

- (id)selectedEnvironmentURLWithSubmissionURL:(id)l
{
  lCopy = l;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  environmentURLs = [(MapsUGCEnvironmentSectionController *)self environmentURLs];
  allValues = [environmentURLs allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(MapsUGCEnvironmentSectionController *)self environmentIsSelectedWithBaseURL:v11 submissionURL:lCopy])
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)appendEnvironmentSectionToDebugController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10081DD80;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, &location);
  v5 = [controllerCopy addSectionWithTitle:@"Environments" content:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (MapsUGCEnvironmentSectionController)initWithSubmissionURL:(unint64_t)l
{
  v8.receiver = self;
  v8.super_class = MapsUGCEnvironmentSectionController;
  v4 = [(MapsUGCEnvironmentSectionController *)&v8 init];
  if (v4)
  {
    v9[0] = @"Staging";
    v9[1] = @"Prod";
    v10[0] = @"https://sundew-staging.geo.apple.com/";
    v10[1] = @"https://sundew.ls.apple.com/";
    v9[2] = @"Dev";
    v9[3] = @"QA1";
    v10[2] = @"https://sundew-dev.geo.apple.com/";
    v10[3] = @"https://sundew-qa1.geo.apple.com/";
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
    environmentURLs = v4->_environmentURLs;
    v4->_environmentURLs = v5;

    [(MapsUGCEnvironmentSectionController *)v4 setSubmissionURL:l];
  }

  return v4;
}

@end