@interface AMDSwiftClient
- (void)queryLLMWithRequestPayload:(NSDictionary *)a3 usecase:(NSString *)a4 capability:(NSString *)a5 completionHandler:(id)a6;
@end

@implementation AMDSwiftClient

- (void)queryLLMWithRequestPayload:(NSDictionary *)a3 usecase:(NSString *)a4 capability:(NSString *)a5 completionHandler:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  v11 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = v11;
  v6[6] = self;
  sub_240D80444(&unk_240DB28B0, v6);
}

@end