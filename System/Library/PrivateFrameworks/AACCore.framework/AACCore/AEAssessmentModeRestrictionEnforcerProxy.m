@interface AEAssessmentModeRestrictionEnforcerProxy
- (AEAssessmentModeRestrictionEnforcerProxy)initWithMachServiceName:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)proxy;
- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)a3;
- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)a3;
@end

@implementation AEAssessmentModeRestrictionEnforcerProxy

- (void)dealloc
{
  [(AEAssessmentModeRestrictionEnforcerProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = AEAssessmentModeRestrictionEnforcerProxy;
  [(AEAssessmentModeRestrictionEnforcerProxy *)&v3 dealloc];
}

- (AEAssessmentModeRestrictionEnforcerProxy)initWithMachServiceName:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AEAssessmentModeRestrictionEnforcerProxy;
  v9 = [(AEAssessmentModeRestrictionEnforcerProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_machServiceName, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (void)invalidate
{
  if (self->_proxy)
  {
    v3 = [(AEAssessmentModeRestrictionEnforcerProxy *)&self->super.isa proxy];
    [v3 invalidate];
  }
}

- (void)proxy
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = [[AEMachServiceXPCConnectionOrigin alloc] initWithMachServiceName:4096 options:?];
      v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284EFA8C0];
      v6 = [[AEXPCProxy alloc] initWithOrigin:v4 interface:v5];
      v7 = v2[3];
      v2[3] = v6;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = v6;
  v7 = v6;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

void __98__AEAssessmentModeRestrictionEnforcerProxy_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(AEAssessmentModeRestrictionEnforcerProxy *)*(a1 + 32) proxy];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v5[2] = __98__AEAssessmentModeRestrictionEnforcerProxy_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2;
  v5[3] = &unk_278BB6D40;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = [(AEXPCProxy *)v2 remoteObjectProxyWithErrorHandler:v5];

  [v4 shouldBeginRestrictingForAssessmentModeWithCompletion:*(a1 + 40)];
}

void __98__AEAssessmentModeRestrictionEnforcerProxy_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v15 = *(a1 + 40);
  v6 = v3;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = v6;
  v7 = v6;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

void __96__AEAssessmentModeRestrictionEnforcerProxy_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(AEAssessmentModeRestrictionEnforcerProxy *)*(a1 + 32) proxy];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v5[2] = __96__AEAssessmentModeRestrictionEnforcerProxy_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke_2;
  v5[3] = &unk_278BB6D40;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = [(AEXPCProxy *)v2 remoteObjectProxyWithErrorHandler:v5];

  [v4 shouldEndRestrictingForAssessmentModeWithCompletion:*(a1 + 40)];
}

void __96__AEAssessmentModeRestrictionEnforcerProxy_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v15 = *(a1 + 40);
  v6 = v3;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

@end