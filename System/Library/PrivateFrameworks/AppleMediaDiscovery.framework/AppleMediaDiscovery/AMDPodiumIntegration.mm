@interface AMDPodiumIntegration
- (void)runInference:(NSDictionary *)a3 completionHandler:(id)a4;
@end

@implementation AMDPodiumIntegration

- (void)runInference:(NSDictionary *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB2B90, v4);
}

@end