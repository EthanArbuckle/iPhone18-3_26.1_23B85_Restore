@interface WFMediaSessionManager
- (WFMediaSessionManager)initWithClientIdentifier:(id)identifier clientVersion:(id)version;
- (void)lookupMediaType:(int64_t)type withIdentifiers:(id)identifiers withCompletion:(id)completion;
@end

@implementation WFMediaSessionManager

- (void)lookupMediaType:(int64_t)type withIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v10 = objc_alloc(MEMORY[0x277CEE570]);
  clientIdentifier = [(WFMediaSessionManager *)self clientIdentifier];
  clientVersion = [(WFMediaSessionManager *)self clientVersion];
  v13 = [(WFMediaSessionManager *)self bag];
  v14 = [v10 initWithType:type clientIdentifier:clientIdentifier clientVersion:clientVersion bag:v13];
  task = self->_task;
  self->_task = v14;

  if (type == 300)
  {
    v22[0] = @"episodes";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [(AMSMediaTask *)self->_task setIncludedResultKeys:v16];
  }

  [(AMSMediaTask *)self->_task setItemIdentifiers:identifiersCopy];
  perform = [(AMSMediaTask *)self->_task perform];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__WFMediaSessionManager_lookupMediaType_withIdentifiers_withCompletion___block_invoke;
  v20[3] = &unk_278C196D0;
  v21 = completionCopy;
  v18 = completionCopy;
  [perform addFinishBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __72__WFMediaSessionManager_lookupMediaType_withIdentifiers_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [v10 object];
    v8 = [v7 objectForKey:@"data"];

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v8, 0);
    }
  }
}

- (WFMediaSessionManager)initWithClientIdentifier:(id)identifier clientVersion:(id)version
{
  v19.receiver = self;
  v19.super_class = WFMediaSessionManager;
  v4 = [(WFMediaSessionManager *)&v19 init:identifier];
  if (v4)
  {
    v5 = [@"com.apple.shortcuts" copy];
    clientIdentifier = v4->_clientIdentifier;
    v4->_clientIdentifier = v5;

    v7 = [@"1" copy];
    clientVersion = v4->_clientVersion;
    v4->_clientVersion = v7;

    bagSubProfile = [MEMORY[0x277CEE570] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x277CEE570] bagSubProfileVersion];
    bagKeySet = [MEMORY[0x277CEE570] bagKeySet];
    v12 = [bagKeySet mutableCopy];

    v13 = [MEMORY[0x277CBEBC0] URLWithString:@"amp-api.podcasts.apple.com"];
    [v12 addBagKey:@"podcasts-media-api-host" valueType:5 defaultValue:v13];

    [v12 addBagKey:@"countryCode" valueType:4 defaultValue:@"us"];
    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"https://sf-api-token-service.itunes.apple.com/apiToken/"];
    [v12 addBagKey:@"sf-api-token-service-url" valueType:5 defaultValue:v14];

    [MEMORY[0x277CEE408] registerBagKeySet:v12 forProfile:bagSubProfile profileVersion:bagSubProfileVersion];
    v15 = [MEMORY[0x277CEE3F8] bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];
    bag = v4->_bag;
    v4->_bag = v15;

    v17 = v4;
  }

  return v4;
}

@end