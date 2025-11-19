@interface ACHActivitySummaryIteratorServer
- (ACHActivitySummaryIteratorServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
@end

@implementation ACHActivitySummaryIteratorServer

- (ACHActivitySummaryIteratorServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ACHActivitySummaryIteratorServer;
  v11 = [(HDStandardTaskServer *)&v19 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D10588]);
    v13 = [v10 profile];
    v14 = [v12 initWithProfile:v13];
    builder = v11->_builder;
    v11->_builder = v14;

    v16 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v11->_calendar;
    v11->_calendar = v16;
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