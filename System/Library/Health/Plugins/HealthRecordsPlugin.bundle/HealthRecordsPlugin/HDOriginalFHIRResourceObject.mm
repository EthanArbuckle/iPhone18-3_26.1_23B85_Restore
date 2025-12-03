@interface HDOriginalFHIRResourceObject
- (id)codableFHIRResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDateTimeZoneName:(id)name firstSeenDateTimeZoneName:(id)zoneName;
@end

@implementation HDOriginalFHIRResourceObject

- (id)codableFHIRResourceWithGatewayExternalID:(id)d accountID:(id)iD receivedDateTimeZoneName:(id)name firstSeenDateTimeZoneName:(id)zoneName
{
  zoneNameCopy = zoneName;
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  receivedDate = [(HDOriginalFHIRResourceObject *)self receivedDate];
  firstSeenDate = [(HDOriginalFHIRResourceObject *)self firstSeenDate];
  extractionHints = [(HDOriginalFHIRResourceObject *)self extractionHints];
  originInformation = [(HDOriginalFHIRResourceObject *)self originInformation];
  v20.receiver = self;
  v20.super_class = HDOriginalFHIRResourceObject;
  v18 = [(HDOriginalFHIRResourceObject *)&v20 _codableFHIRResourceWithGatewayExternalID:dCopy accountID:iDCopy receivedDate:receivedDate receivedDateTimeZoneName:nameCopy firstSeenDate:firstSeenDate firstSeenDateTimeZoneName:zoneNameCopy extractionHints:extractionHints originInformation:originInformation];

  return v18;
}

@end