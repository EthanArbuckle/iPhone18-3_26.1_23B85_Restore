@interface AMSDialogAction
+ (id)actionWithTitle:(id)title identifier:(id)identifier;
+ (id)actionWithTitle:(id)title style:(int64_t)style;
- (AMSDialogAction)init;
- (AMSDialogAction)initWithCoder:(id)coder;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)ams_URLType;
- (int64_t)ams_actionType;
- (void)ams_setActionType:(int64_t)type;
- (void)ams_setButtonDictionary:(id)dictionary;
- (void)ams_setBuyParams:(id)params;
- (void)ams_setCommerceUIURL:(BOOL)l;
- (void)ams_setFormData:(id)data;
- (void)ams_setMetricsDictionary:(id)dictionary;
- (void)ams_setRawURL:(id)l;
- (void)ams_setResolvedInterruption:(BOOL)interruption;
- (void)ams_setShouldRetry:(BOOL)retry;
- (void)ams_setSubtarget:(id)subtarget;
- (void)ams_setTidContinue:(BOOL)continue;
- (void)ams_setURLType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDialogAction

- (AMSDialogAction)init
{
  v9.receiver = self;
  v9.super_class = AMSDialogAction;
  v2 = [(AMSDialogAction *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v2->_inferLinkDestination = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v2->_userInfo;
    v2->_userInfo = v6;
  }

  return v2;
}

+ (id)actionWithTitle:(id)title style:(int64_t)style
{
  v5 = [self actionWithTitle:title];
  [v5 setStyle:style];

  return v5;
}

+ (id)actionWithTitle:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setTitle:titleCopy];

  if ([identifierCopy length])
  {
    [v7 setIdentifier:identifierCopy];
  }

  return v7;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    kind = [(AMSDialogAction *)self kind];
    title = [(AMSDialogAction *)self title];
    parameters = [(AMSDialogAction *)self parameters];
    v6 = [parameters description];

    deepLink = [(AMSDialogAction *)self deepLink];
    absoluteString = [deepLink absoluteString];
  }

  else
  {
    absoluteString = @"<private>";
    title = @"<private>";
    kind = @"<private>";
    v6 = @"<private>";
  }

  v9 = MEMORY[0x1E696AEC0];
  identifier = [(AMSDialogAction *)self identifier];
  v11 = [v9 stringWithFormat:@"{ id: %@, kind: %@, parameters: %@, title: %@, url: %@ }", identifier, kind, v6, title, absoluteString];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clickstreamMetricsEvent = [(AMSDialogAction *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSDialogAction *)self clickstreamMetricsEvent];
    [coderCopy encodeObject:clickstreamMetricsEvent2 forKey:@"kCodingKeyClickstreamMetricsEvent"];
  }

  deepLink = [(AMSDialogAction *)self deepLink];

  if (deepLink)
  {
    deepLink2 = [(AMSDialogAction *)self deepLink];
    [coderCopy encodeObject:deepLink2 forKey:@"kCodingKeyDeepLink"];
  }

  dialogRequest = [(AMSDialogAction *)self dialogRequest];

  if (dialogRequest)
  {
    dialogRequest2 = [(AMSDialogAction *)self dialogRequest];
    [coderCopy encodeObject:dialogRequest2 forKey:@"kCodingKeyDialogRequest"];
  }

  iconURL = [(AMSDialogAction *)self iconURL];

  if (iconURL)
  {
    request = [(AMSDialogAction *)self request];
    [coderCopy encodeObject:request forKey:@"kCodingKeyIconURL"];
  }

  identifier = [(AMSDialogAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSDialogAction *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"kCodingKeyIdentifier"];
  }

  kind = [(AMSDialogAction *)self kind];

  if (kind)
  {
    kind2 = [(AMSDialogAction *)self kind];
    [coderCopy encodeObject:kind2 forKey:@"kCodingKeyKind"];
  }

  metricsEvent = [(AMSDialogAction *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSDialogAction *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [coderCopy encodeObject:underlyingDictionary forKey:@"kCodingKeyMetrics"];
  }

  parameters = [(AMSDialogAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(AMSDialogAction *)self parameters];
    [coderCopy encodeObject:parameters2 forKey:@"kCodingKeyParameters"];
  }

  request2 = [(AMSDialogAction *)self request];

  if (request2)
  {
    request3 = [(AMSDialogAction *)self request];
    [coderCopy encodeObject:request3 forKey:@"kCodingKeyRequest"];
  }

  if ([(AMSDialogAction *)self requiresDelegate])
  {
    [coderCopy encodeBool:-[AMSDialogAction requiresDelegate](self forKey:{"requiresDelegate"), @"kCodingKeyRequiresDelegate"}];
  }

  [coderCopy encodeBool:-[AMSDialogAction inferLinkDestination](self forKey:{"inferLinkDestination"), @"kCodingKeyInferLinkDest"}];
  [coderCopy encodeBool:-[AMSDialogAction shouldRetry](self forKey:{"shouldRetry"), @"kCodingKeyRetry"}];
  [coderCopy encodeInteger:-[AMSDialogAction style](self forKey:{"style"), @"kCodingKeyStyle"}];
  title = [(AMSDialogAction *)self title];

  if (title)
  {
    title2 = [(AMSDialogAction *)self title];
    [coderCopy encodeObject:title2 forKey:@"kCodingKeyTitle"];
  }

  userInfo = [(AMSDialogAction *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(AMSDialogAction *)self userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"kCodingKeyUserInfo"];
  }

  accessibilityIdentifier = [(AMSDialogAction *)self accessibilityIdentifier];

  v28 = coderCopy;
  if (accessibilityIdentifier)
  {
    accessibilityIdentifier2 = [(AMSDialogAction *)self accessibilityIdentifier];
    [coderCopy encodeObject:accessibilityIdentifier2 forKey:@"kCodingKeyAccessibilityIdentifier"];

    v28 = coderCopy;
  }
}

- (AMSDialogAction)initWithCoder:(id)coder
{
  v42[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = AMSDialogAction;
  v5 = [(AMSDialogAction *)&v41 init];
  if (v5)
  {
    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"kCodingKeyClickstreamMetricsEvent"];
    clickstreamMetricsEvent = v5->_clickstreamMetricsEvent;
    v5->_clickstreamMetricsEvent = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDeepLink"];
    deepLink = v5->_deepLink;
    v5->_deepLink = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDialogRequest"];
    dialogRequest = v5->_dialogRequest;
    v5->_dialogRequest = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v15;

    v5->_inferLinkDestination = [coderCopy decodeBoolForKey:@"kCodingKeyInferLinkDest"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyKind"];
    kind = v5->_kind;
    v5->_kind = v17;

    ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v20 = [coderCopy decodeObjectOfClasses:ams_JSONClasses2 forKey:@"kCodingKeyMetrics"];

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
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"kCodingKeyParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v28;

    v5->_requiresDelegate = [coderCopy decodeBoolForKey:@"kCodingKeyRequiresDelegate"];
    v5->_shouldRetry = [coderCopy decodeBoolForKey:@"kCodingKeyRetry"];
    v5->_style = [coderCopy decodeIntegerForKey:@"kCodingKeyStyle"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitle"];
    title = v5->_title;
    v5->_title = v30;

    ams_JSONClasses3 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v33 = [coderCopy decodeObjectOfClasses:ams_JSONClasses3 forKey:@"kCodingKeyUserInfo"];
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

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccessibilityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v38;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AMSDialogAction allocWithZone:](AMSDialogAction init];
  clickstreamMetricsEvent = [(AMSDialogAction *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSDialogAction *)self clickstreamMetricsEvent];
    [(AMSDialogAction *)v5 setClickstreamMetricsEvent:clickstreamMetricsEvent2];
  }

  deepLink = [(AMSDialogAction *)self deepLink];

  if (deepLink)
  {
    deepLink2 = [(AMSDialogAction *)self deepLink];
    v10 = [deepLink2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setDeepLink:v10];
  }

  dialogRequest = [(AMSDialogAction *)self dialogRequest];

  if (dialogRequest)
  {
    dialogRequest2 = [(AMSDialogAction *)self dialogRequest];
    v13 = [dialogRequest2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setDialogRequest:v13];
  }

  identifier = [(AMSDialogAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSDialogAction *)self identifier];
    v16 = [identifier2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setIdentifier:v16];
  }

  kind = [(AMSDialogAction *)self kind];

  if (kind)
  {
    kind2 = [(AMSDialogAction *)self kind];
    v19 = [kind2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setKind:v19];
  }

  metricsEvent = [(AMSDialogAction *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSDialogAction *)self metricsEvent];
    v22 = [metricsEvent2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setMetricsEvent:v22];
  }

  parameters = [(AMSDialogAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(AMSDialogAction *)self parameters];
    v25 = [parameters2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setParameters:v25];
  }

  request = [(AMSDialogAction *)self request];

  if (request)
  {
    request2 = [(AMSDialogAction *)self request];
    v28 = [request2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setRequest:v28];
  }

  [(AMSDialogAction *)v5 setRequiresDelegate:[(AMSDialogAction *)self requiresDelegate]];
  [(AMSDialogAction *)v5 setInferLinkDestination:[(AMSDialogAction *)self inferLinkDestination]];
  [(AMSDialogAction *)v5 setShouldRetry:[(AMSDialogAction *)self shouldRetry]];
  [(AMSDialogAction *)v5 setStyle:[(AMSDialogAction *)self style]];
  title = [(AMSDialogAction *)self title];

  if (title)
  {
    title2 = [(AMSDialogAction *)self title];
    v31 = [title2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setTitle:v31];
  }

  userInfo = [(AMSDialogAction *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(AMSDialogAction *)self userInfo];
    v34 = [userInfo2 copyWithZone:zone];
    v35 = [v34 mutableCopy];
    [(AMSDialogAction *)v5 setUserInfo:v35];
  }

  accessibilityIdentifier = [(AMSDialogAction *)self accessibilityIdentifier];

  if (accessibilityIdentifier)
  {
    accessibilityIdentifier2 = [(AMSDialogAction *)self accessibilityIdentifier];
    v38 = [accessibilityIdentifier2 copyWithZone:zone];
    [(AMSDialogAction *)v5 setAccessibilityIdentifier:v38];
  }

  return v5;
}

- (int64_t)ams_actionType
{
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  integerValue = [v4 integerValue];
  return integerValue;
}

- (void)ams_setActionType:(int64_t)type
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyType"];
}

- (NSDictionary)ams_formData
{
  ams_buttonDictionary = [(AMSDialogAction *)self ams_buttonDictionary];
  v3 = [ams_buttonDictionary objectForKeyedSubscript:@"form-data"];
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
  ams_buttonDictionary = [(AMSDialogAction *)self ams_buttonDictionary];
  v3 = [ams_buttonDictionary objectForKeyedSubscript:@"buyParams"];
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
  userInfo = [(AMSDialogAction *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
  if (objc_opt_respondsToSelector())
  {
    userInfo2 = [(AMSDialogAction *)self userInfo];
    v6 = [userInfo2 objectForKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSDictionary)ams_buttonDictionary
{
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

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
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyMetricsDictionary"];

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
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyURL"];

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
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyResolvedInterruption"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)ams_setFormData:(id)data
{
  dataCopy = data;
  ams_buttonDictionary = [(AMSDialogAction *)self ams_buttonDictionary];
  v6 = [ams_buttonDictionary mutableCopy];
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

  [v9 setObject:dataCopy forKeyedSubscript:@"form-data"];
  [(AMSDialogAction *)self ams_setButtonDictionary:v9];
}

- (void)ams_setBuyParams:(id)params
{
  paramsCopy = params;
  ams_buttonDictionary = [(AMSDialogAction *)self ams_buttonDictionary];
  v6 = [ams_buttonDictionary mutableCopy];
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

  [v9 setObject:paramsCopy forKeyedSubscript:@"buyParams"];
  [(AMSDialogAction *)self ams_setButtonDictionary:v9];
}

- (void)ams_setButtonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:dictionaryCopy forKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];
}

- (void)ams_setCommerceUIURL:(BOOL)l
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:l];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyCommerceUIURL"];
}

- (void)ams_setMetricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:dictionaryCopy forKeyedSubscript:@"kActionUserInfoKeyMetricsDictionary"];
}

- (void)ams_setRawURL:(id)l
{
  absoluteString = [l absoluteString];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:absoluteString forKeyedSubscript:@"kActionUserInfoKeyURL"];
}

- (void)ams_setResolvedInterruption:(BOOL)interruption
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:interruption];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyResolvedInterruption"];
}

- (void)ams_setShouldRetry:(BOOL)retry
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:retry];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
}

- (void)ams_setSubtarget:(id)subtarget
{
  subtargetCopy = subtarget;
  userInfo = [(AMSDialogAction *)self userInfo];
  v5 = userInfo;
  if (subtargetCopy)
  {
    [userInfo setObject:subtargetCopy forKeyedSubscript:@"kActionUserInfoKeySubtarget"];
  }

  else
  {
    [userInfo removeObjectForKey:@"kActionUserInfoKeySubtarget"];
  }
}

- (void)ams_setTidContinue:(BOOL)continue
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:continue];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
}

- (void)ams_setURLType:(int64_t)type
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  userInfo = [(AMSDialogAction *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"kActionUserInfoKeyURLType"];
}

- (BOOL)ams_shouldRetry
{
  userInfo = [(AMSDialogAction *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
  if (objc_opt_respondsToSelector())
  {
    userInfo2 = [(AMSDialogAction *)self userInfo];
    v6 = [userInfo2 objectForKeyedSubscript:@"kActionUserInfoKeyShouldRetry"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)ams_subtarget
{
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeySubtarget"];

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
  userInfo = [(AMSDialogAction *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
  if (objc_opt_respondsToSelector())
  {
    userInfo2 = [(AMSDialogAction *)self userInfo];
    v6 = [userInfo2 objectForKeyedSubscript:@"kActionUserInfoKeyTIDContinue"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)ams_URLType
{
  userInfo = [(AMSDialogAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kActionUserInfoKeyURLType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  integerValue = [v4 integerValue];
  return integerValue;
}

@end