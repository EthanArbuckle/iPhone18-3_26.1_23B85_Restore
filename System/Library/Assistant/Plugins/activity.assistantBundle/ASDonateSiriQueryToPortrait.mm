@interface ASDonateSiriQueryToPortrait
- (void)performWithCompletion:(id)completion;
@end

@implementation ASDonateSiriQueryToPortrait

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  originalQuery = [(ASDonateSiriQueryToPortrait *)self originalQuery];
  v6 = [(ASDonateSiriQueryToPortrait *)self qid];
  if (originalQuery)
  {
    domain = [(ASDonateSiriQueryToPortrait *)self domain];

    if (domain)
    {
      v8 = [PPSiriQueryResult alloc];
      domain2 = [(ASDonateSiriQueryToPortrait *)self domain];
      [(ASDonateSiriQueryToPortrait *)self rankerConfidence];
      v10 = [NSNumber numberWithDouble:?];
      v11 = [v8 initWithQid:v6 domain:domain2 confidence:v10];

      v20 = v11;
      v12 = [NSArray arrayWithObjects:&v20 count:1];
      v19 = 0;
      LODWORD(v10) = [PPCustomDonation donateSiriQuery:originalQuery results:v12 error:&v19];
      v13 = v19;

      if (v10)
      {

LABEL_11:
        if (!completionCopy)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v17 = objc_alloc_init(SACommandSucceeded);
        v14 = 0;
        goto LABEL_13;
      }

      localizedDescription = [v13 localizedDescription];
      v14 = [NSString stringWithFormat:@"donation failed: %@", localizedDescription];

      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = @"domain is missing";
    }
  }

  else
  {
    v14 = @"originalQuery is missing";
  }

  v16 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    sub_71F8(v14, v16);
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (completionCopy)
  {
LABEL_10:
    v17 = [[SACommandFailed alloc] initWithReason:v14];
LABEL_13:
    dictionary = [v17 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

LABEL_14:
}

@end