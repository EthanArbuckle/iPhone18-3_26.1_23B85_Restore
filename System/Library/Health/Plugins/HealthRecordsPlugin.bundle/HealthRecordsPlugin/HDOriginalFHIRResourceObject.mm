@interface HDOriginalFHIRResourceObject
- (id)codableFHIRResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDateTimeZoneName:(id)a5 firstSeenDateTimeZoneName:(id)a6;
@end

@implementation HDOriginalFHIRResourceObject

- (id)codableFHIRResourceWithGatewayExternalID:(id)a3 accountID:(id)a4 receivedDateTimeZoneName:(id)a5 firstSeenDateTimeZoneName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HDOriginalFHIRResourceObject *)self receivedDate];
  v15 = [(HDOriginalFHIRResourceObject *)self firstSeenDate];
  v16 = [(HDOriginalFHIRResourceObject *)self extractionHints];
  v17 = [(HDOriginalFHIRResourceObject *)self originInformation];
  v20.receiver = self;
  v20.super_class = HDOriginalFHIRResourceObject;
  v18 = [(HDOriginalFHIRResourceObject *)&v20 _codableFHIRResourceWithGatewayExternalID:v13 accountID:v12 receivedDate:v14 receivedDateTimeZoneName:v11 firstSeenDate:v15 firstSeenDateTimeZoneName:v10 extractionHints:v16 originInformation:v17];

  return v18;
}

@end