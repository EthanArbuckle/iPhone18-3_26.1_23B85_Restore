@interface ACHActivitySummaryIteratorServer
- (ACHActivitySummaryIteratorServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
@end

@implementation ACHActivitySummaryIteratorServer

- (ACHActivitySummaryIteratorServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = ACHActivitySummaryIteratorServer;
  v11 = [(HDStandardTaskServer *)&v19 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D10588]);
    profile = [clientCopy profile];
    v14 = [v12 initWithProfile:profile];
    builder = v11->_builder;
    v11->_builder = v14;

    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v11->_calendar;
    v11->_calendar = hk_gregorianCalendar;
  }

  return v11;
}

- (id)exportedInterface
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835643F8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 initWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_remote_activitySummariesForStartDateComponents_endDateComponents_includePrivateProperties_completion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

@end