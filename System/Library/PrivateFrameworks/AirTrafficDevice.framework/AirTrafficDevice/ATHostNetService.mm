@interface ATHostNetService
- (ATHostNetService)initWithNetService:(id)service;
@end

@implementation ATHostNetService

- (ATHostNetService)initWithNetService:(id)service
{
  serviceCopy = service;
  v16.receiver = self;
  v16.super_class = ATHostNetService;
  v6 = [(ATHostNetService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_netService, service);
    tXTRecordData = [serviceCopy TXTRecordData];
    if (tXTRecordData)
    {
      v9 = [MEMORY[0x277CCAB78] dictionaryFromTXTRecordData:tXTRecordData];
    }

    else
    {
      v9 = 0;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithCString:"libid" encoding:1];
    v12 = [v9 objectForKey:v11];
    v13 = [v10 stringWithCString:objc_msgSend(v12 encoding:{"bytes"), 4}];
    libraryIdentifier = v7->_libraryIdentifier;
    v7->_libraryIdentifier = v13;
  }

  return v7;
}

@end