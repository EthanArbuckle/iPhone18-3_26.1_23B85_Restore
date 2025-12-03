@interface SearchToolQueryHandler
- (void)querySearchToolWithSearchtoolQueryConfig:(NSDictionary *)config completionHandler:(id)handler;
@end

@implementation SearchToolQueryHandler

- (void)querySearchToolWithSearchtoolQueryConfig:(NSDictionary *)config completionHandler:(id)handler
{
  MEMORY[0x277D82BE0](config);
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = config;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB2F18, v4);
}

@end