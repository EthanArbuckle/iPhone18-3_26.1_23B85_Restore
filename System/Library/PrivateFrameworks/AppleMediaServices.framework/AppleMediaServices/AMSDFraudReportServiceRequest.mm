@interface AMSDFraudReportServiceRequest
- (AMSDFraudReportServiceRequest)initWithNameSpace:(id)space reportedScore:(unsigned __int8)score blindedMessage:(id)message keyID:(id)d authenticationTokenType:(unint64_t)type shouldIncludeODIAssessment:(BOOL)assessment;
@end

@implementation AMSDFraudReportServiceRequest

- (AMSDFraudReportServiceRequest)initWithNameSpace:(id)space reportedScore:(unsigned __int8)score blindedMessage:(id)message keyID:(id)d authenticationTokenType:(unint64_t)type shouldIncludeODIAssessment:(BOOL)assessment
{
  spaceCopy = space;
  messageCopy = message;
  dCopy = d;
  if (!spaceCopy || !messageCopy)
  {
    v26 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"nameSpace userInfo:reportedScore, blindedMessage, keyID and grandSlamTokenIdentifier all must be nonnull", 0];
    objc_exception_throw(v26);
  }

  v17 = dCopy;
  v27.receiver = self;
  v27.super_class = AMSDFraudReportServiceRequest;
  v18 = [(AMSDFraudReportServiceRequest *)&v27 init];
  if (v18)
  {
    v19 = [spaceCopy copy];
    nameSpace = v18->_nameSpace;
    v18->_nameSpace = v19;

    v18->_reportedScore = score;
    v21 = [messageCopy copy];
    blindedMessage = v18->_blindedMessage;
    v18->_blindedMessage = v21;

    v23 = [v17 copy];
    keyID = v18->_keyID;
    v18->_keyID = v23;

    v18->_authenticationTokenType = type;
    v18->_shouldIncludeODIAssessment = assessment;
  }

  return v18;
}

@end