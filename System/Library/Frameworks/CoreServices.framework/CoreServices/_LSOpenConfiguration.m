@interface _LSOpenConfiguration
- (_LSOpenConfiguration)init;
- (_LSOpenConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSOpenConfiguration

- (_LSOpenConfiguration)init
{
  v5.receiver = self;
  v5.super_class = _LSOpenConfiguration;
  v2 = [(_LSOpenConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowURLOverrides = 1;
    v2->_shouldSetHandlerOnDocumentOpen = _LSShouldSetWeakBindingOnOpenByDefault();
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_frontBoardOptions copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    v7 = [(BSServiceConnectionEndpoint *)self->_targetConnectionEndpoint copy];
    v8 = *(v4 + 32);
    *(v4 + 32) = v7;

    v9 = [(UISClickAttribution *)self->_clickAttribution copy];
    v10 = *(v4 + 40);
    *(v4 + 40) = v9;

    v11 = [(UISPasteSharingToken *)self->_pasteSharingToken copy];
    v12 = *(v4 + 48);
    *(v4 + 48) = v11;

    *(v4 + 8) = self->_ignoreAppLinkEnabledProperty;
    v13 = [(NSURL *)self->_referrerURL copy];
    v14 = *(v4 + 24);
    *(v4 + 24) = v13;

    *(v4 + 9) = self->_sensitive;
    *(v4 + 10) = self->_allowURLOverrides;
    *(v4 + 11) = self->_shouldSetHandlerOnDocumentOpen;
    *(v4 + 12) = self->_useOneTapOpenBehavior;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_frontBoardOptions forKey:@"frontBoardOptions"];
  [v4 encodeObject:self->_targetConnectionEndpoint forKey:@"targetConnectionEndpoint"];
  [v4 encodeObject:self->_clickAttribution forKey:@"clickAttribution"];
  [v4 encodeObject:self->_pasteSharingToken forKey:@"pasteSharingToken"];
  [v4 encodeBool:self->_ignoreAppLinkEnabledProperty forKey:@"ignoreAppLinkEnabledProperty"];
  [v4 encodeObject:self->_referrerURL forKey:@"referrerURL"];
  [v4 encodeBool:self->_sensitive forKey:@"sensitive"];
  [v4 encodeBool:self->_allowURLOverrides forKey:@"allowURLOverrides"];
  [v4 encodeBool:self->_shouldSetHandlerOnDocumentOpen forKey:@"shouldSetHandlerOnDocumentOpen"];
  [v4 encodeBool:self->_useOneTapOpenBehavior forKey:@"useOneTapOpenBehavior"];
}

- (_LSOpenConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_LSOpenConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = _LSGetFrontBoardOptionsDictionaryClasses();
    v8 = [v4 ls_decodeDictionaryWithKeysOfClass:v6 valuesOfClasses:v7 forKey:@"frontBoardOptions"];
    frontBoardOptions = v5->_frontBoardOptions;
    v5->_frontBoardOptions = v8;

    BSServiceConnectionEndpointClass = getBSServiceConnectionEndpointClass();
    if (BSServiceConnectionEndpointClass)
    {
      v11 = [v4 ls_decodeObjectOfClass:BSServiceConnectionEndpointClass forKey:@"targetConnectionEndpoint"];
      targetConnectionEndpoint = v5->_targetConnectionEndpoint;
      v5->_targetConnectionEndpoint = v11;
    }

    UISClickAttributionClass = getUISClickAttributionClass();
    if (UISClickAttributionClass)
    {
      v14 = [v4 ls_decodeObjectOfClass:UISClickAttributionClass forKey:@"clickAttribution"];
      clickAttribution = v5->_clickAttribution;
      v5->_clickAttribution = v14;
    }

    UISPasteSharingTokenClass = getUISPasteSharingTokenClass();
    if (UISPasteSharingTokenClass)
    {
      v17 = [v4 ls_decodeObjectOfClass:UISPasteSharingTokenClass forKey:@"pasteSharingToken"];
      pasteSharingToken = v5->_pasteSharingToken;
      v5->_pasteSharingToken = v17;
    }

    v5->_ignoreAppLinkEnabledProperty = [v4 decodeBoolForKey:@"ignoreAppLinkEnabledProperty"];
    v19 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v19;

    v5->_sensitive = [v4 decodeBoolForKey:@"sensitive"];
    v5->_allowURLOverrides = [v4 decodeBoolForKey:@"allowURLOverrides"];
    v5->_shouldSetHandlerOnDocumentOpen = [v4 decodeBoolForKey:@"shouldSetHandlerOnDocumentOpen"];
    v5->_useOneTapOpenBehavior = [v4 decodeBoolForKey:@"useOneTapOpenBehavior"];
  }

  return v5;
}

@end