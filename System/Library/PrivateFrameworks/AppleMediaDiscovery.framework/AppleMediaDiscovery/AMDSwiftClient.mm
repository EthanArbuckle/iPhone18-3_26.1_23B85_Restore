@interface AMDSwiftClient
- (void)queryLLMWithRequestPayload:(NSDictionary *)payload usecase:(NSString *)usecase capability:(NSString *)capability completionHandler:(id)handler;
@end

@implementation AMDSwiftClient

- (void)queryLLMWithRequestPayload:(NSDictionary *)payload usecase:(NSString *)usecase capability:(NSString *)capability completionHandler:(id)handler
{
  MEMORY[0x277D82BE0](payload);
  MEMORY[0x277D82BE0](usecase);
  MEMORY[0x277D82BE0](capability);
  v11 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = payload;
  v6[3] = usecase;
  v6[4] = capability;
  v6[5] = v11;
  v6[6] = self;
  sub_240D80444(&unk_240DB28B0, v6);
}

@end