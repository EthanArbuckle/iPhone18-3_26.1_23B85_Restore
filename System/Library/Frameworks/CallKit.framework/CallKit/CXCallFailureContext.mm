@interface CXCallFailureContext
- (CXCallFailureContext)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXCallFailureContext

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  title = [(CXCallFailureContext *)self title];

  if (title)
  {
    title2 = [(CXCallFailureContext *)self title];
    [v3 appendFormat:@" title=%@", title2];
  }

  message = [(CXCallFailureContext *)self message];

  if (message)
  {
    message2 = [(CXCallFailureContext *)self message];
    [v3 appendFormat:@" message=%@", message2];
  }

  [v3 appendFormat:@" failureReason=%ld", -[CXCallFailureContext failureReason](self, "failureReason")];
  [v3 appendFormat:@" providerErrorCode=%ld", -[CXCallFailureContext providerErrorCode](self, "providerErrorCode")];
  [v3 appendFormat:@" providerEndedReason=%ld", -[CXCallFailureContext providerEndedReason](self, "providerEndedReason")];
  [v3 appendFormat:@" hasWiFiSettingsRemediation=%d", -[CXCallFailureContext hasWiFiSettingsRemediation](self, "hasWiFiSettingsRemediation")];
  [v3 appendFormat:@" hasCellularSettingsRemediation=%d", -[CXCallFailureContext hasCellularSettingsRemediation](self, "hasCellularSettingsRemediation")];
  [v3 appendFormat:@" hasDateAndTimeSettingsRemediation=%d", -[CXCallFailureContext hasDateAndTimeSettingsRemediation](self, "hasDateAndTimeSettingsRemediation")];
  [v3 appendFormat:@" hasLocationSettingsRemediation=%d", -[CXCallFailureContext hasLocationSettingsRemediation](self, "hasLocationSettingsRemediation")];
  [v3 appendString:@">"];

  return v3;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXCallFailureContext *)self updateSanitizedCopy:copyCopy withZone:zone];
  title = [(CXCallFailureContext *)self title];
  [copyCopy setTitle:title];

  message = [(CXCallFailureContext *)self message];
  [copyCopy setMessage:message];

  [copyCopy setFailureReason:{-[CXCallFailureContext failureReason](self, "failureReason")}];
  [copyCopy setProviderErrorCode:{-[CXCallFailureContext providerErrorCode](self, "providerErrorCode")}];
  [copyCopy setProviderEndedReason:{-[CXCallFailureContext providerEndedReason](self, "providerEndedReason")}];
  [copyCopy setHasWiFiSettingsRemediation:{-[CXCallFailureContext hasWiFiSettingsRemediation](self, "hasWiFiSettingsRemediation")}];
  [copyCopy setHasCellularSettingsRemediation:{-[CXCallFailureContext hasCellularSettingsRemediation](self, "hasCellularSettingsRemediation")}];
  [copyCopy setHasDateAndTimeSettingsRemediation:{-[CXCallFailureContext hasDateAndTimeSettingsRemediation](self, "hasDateAndTimeSettingsRemediation")}];
  [copyCopy setHasLocationSettingsRemediation:{-[CXCallFailureContext hasLocationSettingsRemediation](self, "hasLocationSettingsRemediation")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallFailureContext *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXCallFailureContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXCallFailureContext *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_title);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_message);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    message = v5->_message;
    v5->_message = v12;

    v14 = NSStringFromSelector(sel_failureReason);
    v5->_failureReason = [coderCopy decodeIntegerForKey:v14];

    v15 = NSStringFromSelector(sel_providerErrorCode);
    v5->_providerErrorCode = [coderCopy decodeIntegerForKey:v15];

    v16 = NSStringFromSelector(sel_providerEndedReason);
    v5->_providerEndedReason = [coderCopy decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_hasWiFiSettingsRemediation);
    v5->_hasWiFiSettingsRemediation = [coderCopy decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_hasCellularSettingsRemediation);
    v5->_hasCellularSettingsRemediation = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_hasDateAndTimeSettingsRemediation);
    v5->_hasDateAndTimeSettingsRemediation = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_hasLocationSettingsRemediation);
    v5->_hasLocationSettingsRemediation = [coderCopy decodeBoolForKey:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CXCallFailureContext *)self title];
  v6 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v6];

  message = [(CXCallFailureContext *)self message];
  v8 = NSStringFromSelector(sel_message);
  [coderCopy encodeObject:message forKey:v8];

  failureReason = [(CXCallFailureContext *)self failureReason];
  v10 = NSStringFromSelector(sel_failureReason);
  [coderCopy encodeInteger:failureReason forKey:v10];

  providerErrorCode = [(CXCallFailureContext *)self providerErrorCode];
  v12 = NSStringFromSelector(sel_providerErrorCode);
  [coderCopy encodeInteger:providerErrorCode forKey:v12];

  providerEndedReason = [(CXCallFailureContext *)self providerEndedReason];
  v14 = NSStringFromSelector(sel_providerEndedReason);
  [coderCopy encodeInteger:providerEndedReason forKey:v14];

  hasWiFiSettingsRemediation = [(CXCallFailureContext *)self hasWiFiSettingsRemediation];
  v16 = NSStringFromSelector(sel_hasWiFiSettingsRemediation);
  [coderCopy encodeBool:hasWiFiSettingsRemediation forKey:v16];

  hasCellularSettingsRemediation = [(CXCallFailureContext *)self hasCellularSettingsRemediation];
  v18 = NSStringFromSelector(sel_hasCellularSettingsRemediation);
  [coderCopy encodeBool:hasCellularSettingsRemediation forKey:v18];

  hasDateAndTimeSettingsRemediation = [(CXCallFailureContext *)self hasDateAndTimeSettingsRemediation];
  v20 = NSStringFromSelector(sel_hasDateAndTimeSettingsRemediation);
  [coderCopy encodeBool:hasDateAndTimeSettingsRemediation forKey:v20];

  hasLocationSettingsRemediation = [(CXCallFailureContext *)self hasLocationSettingsRemediation];
  v22 = NSStringFromSelector(sel_hasLocationSettingsRemediation);
  [coderCopy encodeBool:hasLocationSettingsRemediation forKey:v22];
}

@end