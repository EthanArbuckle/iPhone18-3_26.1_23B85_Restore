@interface AMSDialogAction
+ (id)actionWithTitle:(id)a3 identifier:(id)a4;
+ (id)actionWithTitle:(id)a3 style:(int64_t)a4;
- (AMSDialogAction)init;
- (AMSDialogAction)initWithCoder:(id)a3;
- (BOOL)ams_commerceUIURL;
- (BOOL)ams_resolvedInterruption;
- (BOOL)ams_shouldRetry;
- (BOOL)ams_tidContinue;
- (NSDictionary)ams_buttonDictionary;
- (NSDictionary)ams_formData;
- (NSDictionary)ams_metricsDictionary;
- (NSString)ams_buyParams;
- (NSString)ams_subtarget;
- (NSURL)ams_rawURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)ams_URLType;
- (int64_t)ams_actionType;
- (void)ams_setActionType:(int64_t)a3;
- (void)ams_setButtonDictionary:(id)a3;
- (void)ams_setBuyParams:(id)a3;
- (void)ams_setCommerceUIURL:(BOOL)a3;
- (void)ams_setFormData:(id)a3;
- (void)ams_setMetricsDictionary:(id)a3;
- (void)ams_setRawURL:(id)a3;
- (void)ams_setResolvedInterruption:(BOOL)a3;
- (void)ams_setShouldRetry:(BOOL)a3;
- (void)ams_setSubtarget:(id)a3;
- (void)ams_setTidContinue:(BOOL)a3;
- (void)ams_setURLType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDialogAction

- (AMSDialogAction)init
{
  v9.receiver = self;
  v9.super_class = AMSDialogAction;
  v2 = [(AMSDialogAction *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v2->_inferLinkDestination = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v2->_userInfo;
    v2->_userInfo = v6;
  }

  return v2;
}

+ (id)actionWithTitle:(id)a3 style:(int64_t)a4
{
  v5 = [a1 actionWithTitle:a3];
  [v5 setStyle:a4];

  return v5;
}

+ (id)actionWithTitle:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setTitle:v6];

  if ([v5 length])
  {
    [v7 setIdentifier:v5];
  }

  return v7;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    v3 = [(AMSDialogAction *)self kind];
    v4 = [(AMSDialogAction *)self title];
    v5 = [(AMSDialogAction *)self parameters];
    v6 = [v5 description];

    v7 = [(AMSDialogAction *)self deepLink];
    v8 = [v7 absoluteString];
  }

  else
  {
    v8 = @"<private>";
    v4 = @"<private>";
    v3 = @"<private>";
    v6 = @"<private>";
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(AMSDialogAction *)self identifier];
  v11 = [v9 stringWithFormat:@"{ id: %@, kind: %@, parameters: %@, title: %@, url: %@ }", v10, v3, v6, v4, v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  v4 = [(AMSDialogAction *)self clickstreamMetricsEvent];

  if (v4)
  {
    v5 = [(AMSDialogAction *)self clickstreamMetricsEvent];
    [v30 encodeObject:v5 forKey:@"kCodingKeyClickstreamMetricsEvent"];
  }

  v6 = [(AMSDialogAction *)self deepLink];

  if (v6)
  {
    v7 = [(AMSDialogAction *)self deepLink];
    [v30 encodeObject:v7 forKey:@"kCodingKeyDeepLink"];
  }

  v8 = [(AMSDialogAction *)self dialogRequest];

  if (v8)
  {
    v9 = [(AMSDialogAction *)self dialogRequest];
    [v30 encodeObject:v9 forKey:@"kCodingKeyDialogRequest"];
  }

  v10 = [(AMSDialogAction *)self iconURL];

  if (v10)
  {
    v11 = [(AMSDialogAction *)self request];
    [v30 encodeObject:v11 forKey:@"kCodingKeyIconURL"];
  }

  v12 = [(AMSDialogAction *)self identifier];

  if (v12)
  {
    v13 = [(AMSDialogAction *)self identifier];
    [v30 encodeObject:v13 forKey:@"kCodingKeyIdentifier"];
  }

  v14 = [(AMSDialogAction *)self kind];

  if (v14)
  {
    v15 = [(AMSDialogAction *)self kind];
    [v30 encodeObject:v15 forKey:@"kCodingKeyKind"];
  }

  v16 = [(AMSDialogAction *)self metricsEvent];

  if (v16)
  {
    v17 = [(AMSDialogAction *)self metricsEvent];
    v18 = [v17 underlyingDictionary];
    [v30 encodeObject:v18 forKey:@"kCodingKeyMetrics"];
  }

  v19 = [(AMSDialogAction *)self parameters];

  if (v19)
  {
    v20 = [(AMSDialogAction *)self parameters];
    [v30 encodeObject:v20 forKey:@"kCodingKeyParameters"];
  }

  v21 = [(AMSDialogAction *)self request];

  if (v21)
  {
    v22 = [(AMSDialogAction *)self request];
    [v30 encodeObject:v22 forKey:@"kCodingKeyRequest"];
  }

  if ([(AMSDialogAction *)self requiresDelegate])
  {
    [v30 encodeBool:-[AMSDialogAction requiresDelegate](self forKey:{"requiresDelegate"), @"kCodingKeyRequiresDelegate"}];
  }

  [v30 encodeBool:-[AMSDialogAction inferLinkDestination](self forKey:{"inferLinkDestination"), @"kCodingKeyInferLinkDest"}];
  [v30 encodeBool:-[AMSDialogAction shouldRetry](self forKey:{"shouldRetry"), @"kCodingKeyRetry"}];
  [v30 encodeInteger:-[AMSDialogAction style](self forKey:{"style"), @"kCodingKeyStyle"}];
  v23 = [(AMSDialogAction *)self title];

  if (v23)
  {
    v24 = [(AMSDialogAction *)self title];
    [v30 encodeObject:v24 forKey:@"kCodingKeyTitle"];
  }

  v25 = [(AMSDialogAction *)self userInfo];

  if (v25)
  {
    v26 = [(AMSDialogAction *)self userInfo];
    [v30 encodeObject:v26 forKey:@"kCodingKeyUserInfo"];
  }

  v27 = [(AMSDialogAction *)self accessibilityIdentifier];

  v28 = v30;
  if (v27)
  {
    v29 = [(AMSDialogAction *)self accessibilityIdentifier];
    [v30 encodeObject:v29 forKey:@"kCodingKeyAccessibilityIdentifier"];

    v28 = v30;
  }
}

- (AMSDialogAction)initWithCoder:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = AMSDialogAction;
  v5 = [(AMSDialogAction *)&v41 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kCodingKeyClickstreamMetricsEvent"];
    clickstreamMetricsEvent = v5->_clickstreamMetricsEvent;
    v5->_clickstreamMetricsEvent = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDeepLink"];
    deepLink = v5->_deepLink;
    v5->_deepLink = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDialogRequest"];
    dialogRequest = v5->_dialogRequest;
    v5->_dialogRequest = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v15;

    v5->_inferLinkDestination = [v4 decodeBoolForKey:@"kCodingKeyInferLinkDest"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyKind"];
    kind = v5->_kind;
    v5->_kind = v17;

    v19 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"kCodingKeyMetrics"];

    if (v20)
    {
      v21 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v20];
      metricsEvent = v5->_metricsEvent;
      v5->_metricsEvent = v21;
    }

    v23 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v25 = [v23 setWithArray:v24];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"kCodingKeyParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v28;

    v5->_requiresDelegate = [v4 decodeBoolForKey:@"kCodingKeyRequiresDelegate"];
    v5->_shouldRetry = [v4 decodeBoolForKey:@"kCodingKeyRetry"];
    v5->_style = [v4 decodeIntegerForKey:@"kCodingKeyStyle"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitle"];
    title = v5->_title;
    v5->_title = v30;

    v32 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"kCodingKeyUserInfo"];
    v34 = [v33 mutableCopy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    userInfo = v5->_userInfo;
    v5->_userInfo = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccessibilityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v38;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[AMSDialogAction allocWithZone:](AMSDialogAction init];
  v6 = [(AMSDialogAction *)self clickstreamMetricsEvent];

  if (v6)
  {
    v7 = [(AMSDialogAction *)self clickstreamMetricsEvent];
    [(AMSDialogAction *)v5 setClickstreamMetricsEvent:v7];
  }

  v8 = [(AMSDialogAction *)self deepLink];

  if (v8)
  {
    v9 = [(AMSDialogAction *)self deepLink];
    v10 = [v9 copyWithZone:a3];
    [(AMSDialogAction *)v5 setDeepLink:v10];
  }

  v11 = [(AMSDialogAction *)self dialogRequest];

  if (v11)
  {
    v12 = [(AMSDialogAction *)self dialogRequest];
    v13 = [v12 copyWithZone:a3];
    [(AMSDialogAction *)v5 setDialogRequest:v13];
  }

  v14 = [(AMSDialogAction *)self identifier];

  if (v14)
  {
    v15 = [(AMSDialogAction *)self identifier];
    v16 = [v15 copyWithZone:a3];
    [(AMSDialogAction *)v5 setIdentifier:v16];
  }

  v17 = [(AMSDialogAction *)self kind];

  if (v17)
  {
    v18 = [(AMSDialogAction *)self kind];
    v19 = [v18 copyWithZone:a3];
    [(AMSDialogAction *)v5 setKind:v19];
  }

  v20 = [(AMSDialogAction *)self metricsEvent];

  if (v20)
  {
    v21 = [(AMSDialogAction *)self metricsEvent];
    v22 = [v21 copyWithZone:a3];
    [(AMSDialogAction *)v5 setMetricsEvent:v22];
  }

  v23 = [(AMSDialogAction *)self parameters];

  if (v23)
  {
    v24 = [(AMSDialogAction *)self parameters];
    v25 = [v24 copyWithZone:a3];
    [(AMSDialogAction *)v5 setParameters:v25];
  }

  v26 = [(AMSDialogAction *)self request];

  if (v26)
  {
    v27 = [(AMSDialogAction *)self request];
    v28 = [v27 copyWithZone:a3];
    [(AMSDialogAction *)v5 setRequest:v28];
  }

  [(AMSDialogAction *)v5 setRequiresDelegate:[(AMSDialogAction *)self requiresDelegate]];
  [(AMSDialogAction *)v5 setInferLinkDestination:[(AMSDialogAction *)self inferLinkDestination]];
  [(AMSDialogAction *)v5 setShouldRetry:[(AMSDialogAction *)self shouldRetry]];
  [(AMSDialogAction *)v5 setStyle:[(AMSDialogAction *)self style]];
  v29 = [(AMSDialogAction *)self title];

  if (v29)
  {
    v30 = [(AMSDialogAction *)self title];
    v31 = [v30 copyWithZone:a3];
    [(AMSDialogAction *)v5 setTitle:v31];
  }

  v32 = [(AMSDialogAction *)self userInfo];

  if (v32)
  {
    v33 = [(AMSDialogAction *)self userInfo];
    v34 = [v33 copyWithZone:a3];
    v35 = [v34 mutableCopy];
    [(AMSDialogAction *)v5 setUserInfo:v35];
  }

  v36 = [(AMSDialogAction *)self accessibilityIdentifier];

  if (v36)
  {
    v37 = [(AMSDialogAction *)self accessibilityIdentifier];
    v38 = [v37 copyWithZone:a3];
    [(AMSDialogAction *)v5 setAccessibilityIdentifier:v38];
  }

  return v5;
}

- (int64_t)ams_actionType
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeyType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 integerValue];
  return v5;
}

- (void)ams_setActionType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyType"];
}

- (NSDictionary)ams_formData
{
  v2 = [(AMSDialogAction *)self ams_buttonDictionary];
  v3 = [v2 objectForKeyedSubscript:@"form-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)ams_buyParams
{
  v2 = [(AMSDialogAction *)self ams_buttonDictionary];
  v3 = [v2 objectForKeyedSubscript:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)ams_commerceUIURL
{
  v3 = [(AMSDialogAction *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSDialogAction *)self userInfo];
    v6 = [v5 objectForKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)ams_buttonDictionary
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)ams_metricsDictionary
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeyMetricsDictionary"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)ams_rawURL
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeyURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      goto LABEL_6;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (BOOL)ams_resolvedInterruption
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeyResolvedInterruption"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)ams_setFormData:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogAction *)self ams_buttonDictionary];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  [v9 setObject:v4 forKeyedSubscript:@"form-data"];
  [(AMSDialogAction *)self ams_setButtonDictionary:v9];
}

- (void)ams_setBuyParams:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogAction *)self ams_buttonDictionary];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  [v9 setObject:v4 forKeyedSubscript:@"buyParams"];
  [(AMSDialogAction *)self ams_setButtonDictionary:v9];
}

- (void)ams_setButtonDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogAction *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];
}

- (void)ams_setCommerceUIURL:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
}

- (void)ams_setMetricsDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogAction *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"kActionUserInfoKeyMetricsDictionary"];
}

- (void)ams_setRawURL:(id)a3
{
  v5 = [a3 absoluteString];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyURL"];
}

- (void)ams_setResolvedInterruption:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyResolvedInterruption"];
}

- (void)ams_setShouldRetry:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
}

- (void)ams_setSubtarget:(id)a3
{
  v6 = a3;
  v4 = [(AMSDialogAction *)self userInfo];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"kActionUserInfoKeySubtarget"];
  }

  else
  {
    [v4 removeObjectForKey:@"kActionUserInfoKeySubtarget"];
  }
}

- (void)ams_setTidContinue:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
}

- (void)ams_setURLType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(AMSDialogAction *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyURLType"];
}

- (BOOL)ams_shouldRetry
{
  v3 = [(AMSDialogAction *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSDialogAction *)self userInfo];
    v6 = [v5 objectForKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)ams_subtarget
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeySubtarget"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)ams_tidContinue
{
  v3 = [(AMSDialogAction *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSDialogAction *)self userInfo];
    v6 = [v5 objectForKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)ams_URLType
{
  v2 = [(AMSDialogAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kActionUserInfoKeyURLType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 integerValue];
  return v5;
}

@end