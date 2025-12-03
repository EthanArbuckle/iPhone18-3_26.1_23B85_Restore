@interface AEAssessmentStatePublishingProxy
+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue;
- (id)initWithXPCProxy:(void *)proxy queue:;
- (void)_endPublications:(uint64_t)publications;
- (void)_publishAssessmentState:(void *)state withCompletion:;
- (void)endPublications:(id)publications;
- (void)publishAssessmentState:(id)state withCompletion:(id)completion;
@end

@implementation AEAssessmentStatePublishingProxy

- (void)publishAssessmentState:(id)state withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__AEAssessmentStatePublishingProxy_publishAssessmentState_withCompletion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(AEAssessmentStatePublishingProxy *)self _publishAssessmentState:state withCompletion:v8];
}

- (void)endPublications:(id)publications
{
  publicationsCopy = publications;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AEAssessmentStatePublishingProxy_endPublications___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = publicationsCopy;
  v5 = publicationsCopy;
  [(AEAssessmentStatePublishingProxy *)self _endPublications:v6];
}

- (id)initWithXPCProxy:(void *)proxy queue:
{
  v6 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEAssessmentStatePublishingProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, proxy);
    }
  }

  return self;
}

+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue
{
  queueCopy = queue;
  endpointCopy = endpoint;
  v7 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:endpointCopy];

  v8 = objc_opt_new();
  makeInterface = [v8 makeInterface];

  v10 = [[AEXPCProxy alloc] initWithOrigin:v7 interface:makeInterface];
  v11 = [[AEAssessmentStatePublishingProxy alloc] initWithXPCProxy:v10 queue:queueCopy];

  return v11;
}

void __74__AEAssessmentStatePublishingProxy_publishAssessmentState_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_1();
  v8[1] = 3221225472;
  v8[2] = __74__AEAssessmentStatePublishingProxy_publishAssessmentState_withCompletion___block_invoke_2;
  v8[3] = &unk_278BB6D18;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)_publishAssessmentState:(void *)state withCompletion:
{
  stateCopy = state;
  if (self)
  {
    v6 = *(self + 8);
    OUTLINED_FUNCTION_0();
    v11 = 3221225472;
    v12 = __75__AEAssessmentStatePublishingProxy__publishAssessmentState_withCompletion___block_invoke;
    v13 = &unk_278BB6D68;
    v7 = stateCopy;
    v14 = v7;
    v8 = a2;
    v9 = [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v10];
    [v9 publishAssessmentState:v8 withCompletion:v7];
  }
}

void __52__AEAssessmentStatePublishingProxy_endPublications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_1();
  v8[1] = 3221225472;
  v8[2] = __52__AEAssessmentStatePublishingProxy_endPublications___block_invoke_2;
  v8[3] = &unk_278BB6D18;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)_endPublications:(uint64_t)publications
{
  v3 = a2;
  if (publications)
  {
    v4 = *(publications + 8);
    OUTLINED_FUNCTION_0();
    v8 = 3221225472;
    v9 = __53__AEAssessmentStatePublishingProxy__endPublications___block_invoke;
    v10 = &unk_278BB6D68;
    v5 = v3;
    v11 = v5;
    v6 = [(AEXPCProxy *)v4 remoteObjectProxyWithErrorHandler:v7];
    [v6 endPublications:v5];
  }
}

@end