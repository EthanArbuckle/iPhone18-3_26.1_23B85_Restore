@interface CXCallFailureContext
- (CXCallFailureContext)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCallFailureContext

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXCallFailureContext *)self title];

  if (v4)
  {
    v5 = [(CXCallFailureContext *)self title];
    [v3 appendFormat:@" title=%@", v5];
  }

  v6 = [(CXCallFailureContext *)self message];

  if (v6)
  {
    v7 = [(CXCallFailureContext *)self message];
    [v3 appendFormat:@" message=%@", v7];
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

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8 = a3;
  [(CXCallFailureContext *)self updateSanitizedCopy:v8 withZone:a4];
  v6 = [(CXCallFailureContext *)self title];
  [v8 setTitle:v6];

  v7 = [(CXCallFailureContext *)self message];
  [v8 setMessage:v7];

  [v8 setFailureReason:{-[CXCallFailureContext failureReason](self, "failureReason")}];
  [v8 setProviderErrorCode:{-[CXCallFailureContext providerErrorCode](self, "providerErrorCode")}];
  [v8 setProviderEndedReason:{-[CXCallFailureContext providerEndedReason](self, "providerEndedReason")}];
  [v8 setHasWiFiSettingsRemediation:{-[CXCallFailureContext hasWiFiSettingsRemediation](self, "hasWiFiSettingsRemediation")}];
  [v8 setHasCellularSettingsRemediation:{-[CXCallFailureContext hasCellularSettingsRemediation](self, "hasCellularSettingsRemediation")}];
  [v8 setHasDateAndTimeSettingsRemediation:{-[CXCallFailureContext hasDateAndTimeSettingsRemediation](self, "hasDateAndTimeSettingsRemediation")}];
  [v8 setHasLocationSettingsRemediation:{-[CXCallFailureContext hasLocationSettingsRemediation](self, "hasLocationSettingsRemediation")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallFailureContext *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXCallFailureContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallFailureContext *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_title);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_message);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    message = v5->_message;
    v5->_message = v12;

    v14 = NSStringFromSelector(sel_failureReason);
    v5->_failureReason = [v4 decodeIntegerForKey:v14];

    v15 = NSStringFromSelector(sel_providerErrorCode);
    v5->_providerErrorCode = [v4 decodeIntegerForKey:v15];

    v16 = NSStringFromSelector(sel_providerEndedReason);
    v5->_providerEndedReason = [v4 decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_hasWiFiSettingsRemediation);
    v5->_hasWiFiSettingsRemediation = [v4 decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_hasCellularSettingsRemediation);
    v5->_hasCellularSettingsRemediation = [v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_hasDateAndTimeSettingsRemediation);
    v5->_hasDateAndTimeSettingsRemediation = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_hasLocationSettingsRemediation);
    v5->_hasLocationSettingsRemediation = [v4 decodeBoolForKey:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallFailureContext *)self title];
  v6 = NSStringFromSelector(sel_title);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXCallFailureContext *)self message];
  v8 = NSStringFromSelector(sel_message);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXCallFailureContext *)self failureReason];
  v10 = NSStringFromSelector(sel_failureReason);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(CXCallFailureContext *)self providerErrorCode];
  v12 = NSStringFromSelector(sel_providerErrorCode);
  [v4 encodeInteger:v11 forKey:v12];

  v13 = [(CXCallFailureContext *)self providerEndedReason];
  v14 = NSStringFromSelector(sel_providerEndedReason);
  [v4 encodeInteger:v13 forKey:v14];

  v15 = [(CXCallFailureContext *)self hasWiFiSettingsRemediation];
  v16 = NSStringFromSelector(sel_hasWiFiSettingsRemediation);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(CXCallFailureContext *)self hasCellularSettingsRemediation];
  v18 = NSStringFromSelector(sel_hasCellularSettingsRemediation);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(CXCallFailureContext *)self hasDateAndTimeSettingsRemediation];
  v20 = NSStringFromSelector(sel_hasDateAndTimeSettingsRemediation);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(CXCallFailureContext *)self hasLocationSettingsRemediation];
  v22 = NSStringFromSelector(sel_hasLocationSettingsRemediation);
  [v4 encodeBool:v21 forKey:v22];
}

@end