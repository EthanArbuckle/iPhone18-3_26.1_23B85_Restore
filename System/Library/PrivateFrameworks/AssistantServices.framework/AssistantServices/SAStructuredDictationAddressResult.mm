@interface SAStructuredDictationAddressResult
- (id)ad_transcriptionResultWithAddressBookManager:(id)manager;
@end

@implementation SAStructuredDictationAddressResult

- (id)ad_transcriptionResultWithAddressBookManager:(id)manager
{
  selfCopy = self;
  v4 = objc_alloc_init(STSiriLocation);
  [v4 setResultType:3];
  forwardGeoProtobuf = [(SAStructuredDictationAddressResult *)selfCopy forwardGeoProtobuf];
  [v4 setGeoResult:forwardGeoProtobuf];

  contactId = [(SAStructuredDictationAddressResult *)selfCopy contactId];
  [v4 setAddressBookID:contactId];

  addressLabel = [(SAStructuredDictationAddressResult *)selfCopy addressLabel];
  [v4 setAddressLabel:addressLabel];

  contactName = [(SAStructuredDictationAddressResult *)selfCopy contactName];

  [v4 setContactName:contactName];

  return v4;
}

@end