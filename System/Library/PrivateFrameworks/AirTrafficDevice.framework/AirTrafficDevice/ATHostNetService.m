@interface ATHostNetService
- (ATHostNetService)initWithNetService:(id)a3;
@end

@implementation ATHostNetService

- (ATHostNetService)initWithNetService:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ATHostNetService;
  v6 = [(ATHostNetService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_netService, a3);
    v8 = [v5 TXTRecordData];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAB78] dictionaryFromTXTRecordData:v8];
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