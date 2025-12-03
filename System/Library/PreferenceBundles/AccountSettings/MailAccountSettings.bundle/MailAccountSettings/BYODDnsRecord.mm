@interface BYODDnsRecord
- (BYODDnsRecord)initWithDictionary:(id)dictionary;
@end

@implementation BYODDnsRecord

- (BYODDnsRecord)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = BYODDnsRecord;
  v5 = [(BYODDnsRecord *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"host"];
    host = v5->_host;
    v5->_host = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dnsRecordType"];
    dnsRecordType = v5->_dnsRecordType;
    v5->_dnsRecordType = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    value = v5->_value;
    v5->_value = v12;

    v5->_priority = -1;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"priority"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"priority"];
      v5->_priority = [v15 integerValue];
    }
  }

  return v5;
}

@end