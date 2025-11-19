@interface AEAssessmentStatePublishingProxy
+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4;
- (id)initWithXPCProxy:(void *)a3 queue:;
- (void)_endPublications:(uint64_t)a1;
- (void)_publishAssessmentState:(void *)a3 withCompletion:;
- (void)endPublications:(id)a3;
- (void)publishAssessmentState:(id)a3 withCompletion:(id)a4;
@end

@implementation AEAssessmentStatePublishingProxy

- (void)publishAssessmentState:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__AEAssessmentStatePublishingProxy_publishAssessmentState_withCompletion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AEAssessmentStatePublishingProxy *)self _publishAssessmentState:a3 withCompletion:v8];
}

- (void)endPublications:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AEAssessmentStatePublishingProxy_endPublications___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AEAssessmentStatePublishingProxy *)self _endPublications:v6];
}

- (id)initWithXPCProxy:(void *)a3 queue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AEAssessmentStatePublishingProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:v6];

  v8 = objc_opt_new();
  v9 = [v8 makeInterface];

  v10 = [[AEXPCProxy alloc] initWithOrigin:v7 interface:v9];
  v11 = [[AEAssessmentStatePublishingProxy alloc] initWithXPCProxy:v10 queue:v5];

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

- (void)_publishAssessmentState:(void *)a3 withCompletion:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    v11 = 3221225472;
    v12 = __75__AEAssessmentStatePublishingProxy__publishAssessmentState_withCompletion___block_invoke;
    v13 = &unk_278BB6D68;
    v7 = v5;
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

- (void)_endPublications:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
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