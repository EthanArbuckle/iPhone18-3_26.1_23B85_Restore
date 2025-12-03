@interface BYODGetDnsRecordsResponse
- (BYODGetDnsRecordsResponse)initWithDictionary:(id)dictionary;
- (BYODGetDnsRecordsResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODGetDnsRecordsResponse

- (BYODGetDnsRecordsResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODGetDnsRecordsResponse;
  v8 = [(BYODGetDnsRecordsResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  v9 = v8;
  if (v8 && [*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    v9 = [(BYODGetDnsRecordsResponse *)v9 initWithDictionary:*&v9->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v9;
}

- (BYODGetDnsRecordsResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = BYODGetDnsRecordsResponse;
  v5 = [(BYODBaseResponse *)&v24 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"result"];
      v9 = [v8 objectForKeyedSubscript:@"records"];

      v10 = objc_alloc_init(NSMutableArray);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = *v21;
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            v16 = [BYODDnsRecord alloc];
            v17 = [(BYODDnsRecord *)v16 initWithDictionary:v15, v20];
            [(NSArray *)v10 addObject:v17];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      dnsRecords = v5->_dnsRecords;
      v5->_dnsRecords = v10;
    }
  }

  return v5;
}

@end