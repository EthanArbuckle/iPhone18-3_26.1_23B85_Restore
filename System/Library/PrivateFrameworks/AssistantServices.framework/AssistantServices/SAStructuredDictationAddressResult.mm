@interface SAStructuredDictationAddressResult
- (id)ad_transcriptionResultWithAddressBookManager:(id)a3;
@end

@implementation SAStructuredDictationAddressResult

- (id)ad_transcriptionResultWithAddressBookManager:(id)a3
{
  v3 = self;
  v4 = objc_alloc_init(STSiriLocation);
  [v4 setResultType:3];
  v5 = [(SAStructuredDictationAddressResult *)v3 forwardGeoProtobuf];
  [v4 setGeoResult:v5];

  v6 = [(SAStructuredDictationAddressResult *)v3 contactId];
  [v4 setAddressBookID:v6];

  v7 = [(SAStructuredDictationAddressResult *)v3 addressLabel];
  [v4 setAddressLabel:v7];

  v8 = [(SAStructuredDictationAddressResult *)v3 contactName];

  [v4 setContactName:v8];

  return v4;
}

@end