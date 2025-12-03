@interface AMSCampaignAttributionTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSCampaignAttributionTask)initWithURL:(id)l bag:(id)bag;
- (AMSCampaignAttributionTask)initWithURL:(id)l bag:(id)bag URLSession:(id)session;
- (id)perform;
@end

@implementation AMSCampaignAttributionTask

- (AMSCampaignAttributionTask)initWithURL:(id)l bag:(id)bag URLSession:(id)session
{
  lCopy = l;
  bagCopy = bag;
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = AMSCampaignAttributionTask;
  v12 = [(AMSTask *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, l);
    objc_storeStrong(&v13->_bag, bag);
    objc_storeStrong(&v13->_URLSession, session);
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "Campaign Attributor V2 is Enabled", v19, 2u);
  }

  v16 = [[AMSCampaignAttributor alloc] initWithBag:bagCopy];
  campaignAttributor = v13->_campaignAttributor;
  v13->_campaignAttributor = v16;

  return v13;
}

- (AMSCampaignAttributionTask)initWithURL:(id)l bag:(id)bag
{
  bagCopy = bag;
  lCopy = l;
  v8 = +[AMSURLSession defaultSession];
  v9 = [(AMSCampaignAttributionTask *)self initWithURL:lCopy bag:bagCopy URLSession:v8];

  return v9;
}

- (id)perform
{
  v3 = objc_alloc_init(AMSMutablePromise);
  account = [(AMSCampaignAttributionTask *)self account];
  campaignAttributor = [(AMSCampaignAttributionTask *)self campaignAttributor];
  [campaignAttributor setAccount:account];

  campaignAttributor2 = [(AMSCampaignAttributionTask *)self campaignAttributor];
  v7 = [(AMSCampaignAttributionTask *)self URL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSCampaignAttributionTask_perform__block_invoke;
  v10[3] = &unk_1E73B5600;
  v8 = v3;
  v11 = v8;
  [campaignAttributor2 processURL:v7 ignoreMarketing:0 completionHandler:v10];

  return v8;
}

void __37__AMSCampaignAttributionTask_perform__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[AMSCampaignAttributionResult alloc] initWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) finishWithResult:v4];
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end