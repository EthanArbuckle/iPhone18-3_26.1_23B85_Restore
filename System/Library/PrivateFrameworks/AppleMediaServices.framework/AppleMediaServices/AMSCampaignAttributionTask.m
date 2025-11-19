@interface AMSCampaignAttributionTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSCampaignAttributionTask)initWithURL:(id)a3 bag:(id)a4;
- (AMSCampaignAttributionTask)initWithURL:(id)a3 bag:(id)a4 URLSession:(id)a5;
- (id)perform;
@end

@implementation AMSCampaignAttributionTask

- (AMSCampaignAttributionTask)initWithURL:(id)a3 bag:(id)a4 URLSession:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = AMSCampaignAttributionTask;
  v12 = [(AMSTask *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, a3);
    objc_storeStrong(&v13->_bag, a4);
    objc_storeStrong(&v13->_URLSession, a5);
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEBUG, "Campaign Attributor V2 is Enabled", v19, 2u);
  }

  v16 = [[AMSCampaignAttributor alloc] initWithBag:v10];
  campaignAttributor = v13->_campaignAttributor;
  v13->_campaignAttributor = v16;

  return v13;
}

- (AMSCampaignAttributionTask)initWithURL:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AMSURLSession defaultSession];
  v9 = [(AMSCampaignAttributionTask *)self initWithURL:v7 bag:v6 URLSession:v8];

  return v9;
}

- (id)perform
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = [(AMSCampaignAttributionTask *)self account];
  v5 = [(AMSCampaignAttributionTask *)self campaignAttributor];
  [v5 setAccount:v4];

  v6 = [(AMSCampaignAttributionTask *)self campaignAttributor];
  v7 = [(AMSCampaignAttributionTask *)self URL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSCampaignAttributionTask_perform__block_invoke;
  v10[3] = &unk_1E73B5600;
  v8 = v3;
  v11 = v8;
  [v6 processURL:v7 ignoreMarketing:0 completionHandler:v10];

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
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end