@interface AMDPodiumIntegration
- (void)runInference:(NSDictionary *)inference completionHandler:(id)handler;
@end

@implementation AMDPodiumIntegration

- (void)runInference:(NSDictionary *)inference completionHandler:(id)handler
{
  MEMORY[0x277D82BE0](inference);
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = inference;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB2B90, v4);
}

@end