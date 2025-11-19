@interface AMSDFraudReportServiceRequest
- (AMSDFraudReportServiceRequest)initWithNameSpace:(id)a3 reportedScore:(unsigned __int8)a4 blindedMessage:(id)a5 keyID:(id)a6 authenticationTokenType:(unint64_t)a7 shouldIncludeODIAssessment:(BOOL)a8;
@end

@implementation AMSDFraudReportServiceRequest

- (AMSDFraudReportServiceRequest)initWithNameSpace:(id)a3 reportedScore:(unsigned __int8)a4 blindedMessage:(id)a5 keyID:(id)a6 authenticationTokenType:(unint64_t)a7 shouldIncludeODIAssessment:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  if (!v14 || !v15)
  {
    v26 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"nameSpace userInfo:reportedScore, blindedMessage, keyID and grandSlamTokenIdentifier all must be nonnull", 0];
    objc_exception_throw(v26);
  }

  v17 = v16;
  v27.receiver = self;
  v27.super_class = AMSDFraudReportServiceRequest;
  v18 = [(AMSDFraudReportServiceRequest *)&v27 init];
  if (v18)
  {
    v19 = [v14 copy];
    nameSpace = v18->_nameSpace;
    v18->_nameSpace = v19;

    v18->_reportedScore = a4;
    v21 = [v15 copy];
    blindedMessage = v18->_blindedMessage;
    v18->_blindedMessage = v21;

    v23 = [v17 copy];
    keyID = v18->_keyID;
    v18->_keyID = v23;

    v18->_authenticationTokenType = a7;
    v18->_shouldIncludeODIAssessment = a8;
  }

  return v18;
}

@end