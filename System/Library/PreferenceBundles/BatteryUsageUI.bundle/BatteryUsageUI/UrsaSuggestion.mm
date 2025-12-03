@interface UrsaSuggestion
- (UrsaSuggestion)initWithIssue:(id)issue;
- (void)handleUrsaIssueSpecifierAction:(id)action;
@end

@implementation UrsaSuggestion

- (UrsaSuggestion)initWithIssue:(id)issue
{
  issueCopy = issue;
  v33.receiver = self;
  v33.super_class = UrsaSuggestion;
  v5 = [(UrsaSuggestion *)&v33 init];
  if (v5)
  {
    v6 = [issueCopy objectForKeyedSubscript:@"radar"];
    intValue = [v6 intValue];

    v35[0] = @"BUI";
    v34[0] = @"source";
    v34[1] = @"radar";
    v8 = [NSNumber numberWithInt:intValue];
    v34[2] = @"action";
    v35[1] = v8;
    v35[2] = @"seen";
    v9 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

    v32 = v9;
    v31 = v9;
    AnalyticsSendEventLazy();
    PLLogRegisteredEvent();
    v29 = [NSString stringWithFormat:@"rdar://%i", intValue];
    v30 = [NSString stringWithFormat:@"livability://%i", intValue];
    v28 = [NSURL URLWithString:v30];
    v27 = [NSString stringWithFormat:@"Open %@", v29];
    v10 = [FLFollowUpAction actionWithLabel:v27 url:v28];
    v11 = objc_alloc_init(FLFollowUpItem);
    [v11 setTitle:@"Battery Life Issue Detected"];
    v12 = [issueCopy objectForKeyedSubscript:@"driMessage"];
    stringValue = [v12 stringValue];
    v14 = [@"[Internal] " stringByAppendingString:stringValue];
    [v11 setInformativeText:v14];

    v15 = [NSArray arrayWithObject:v10];
    [v11 setActions:v15];

    v16 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v17 = [[NSString alloc] initWithFormat:@"URSA_ISSUE_HEADER_SPECIFIER_%d", intValue];
    [v16 setIdentifier:v17];

    [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v18 = FLFollowUpSingleItemKey;
    [v16 setProperty:v11 forKey:FLFollowUpSingleItemKey];
    header = v5->_header;
    v5->_header = v16;
    v20 = v16;

    label = [v10 label];
    v22 = [PSSpecifier preferenceSpecifierNamed:label target:v5 set:0 get:0 detail:0 cell:13 edit:0];

    v23 = [[NSString alloc] initWithFormat:@"URSA_ISSUE_ACTION_SPECIFIER_%d", intValue];
    [v22 setIdentifier:v23];

    [v22 setProperty:v10 forKey:FLFollowUpSingleActionKey];
    [v22 setProperty:v11 forKey:v18];
    [v22 setButtonAction:"handleUrsaIssueSpecifierAction:"];
    [v22 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v24 = [NSNumber numberWithInt:intValue];
    [v22 setProperty:v24 forKey:@"com.apple.perfpowerservices.ursa.radar"];

    info = v5->_info;
    v5->_info = v22;
  }

  return v5;
}

- (void)handleUrsaIssueSpecifierAction:(id)action
{
  v3 = FLFollowUpSingleItemKey;
  actionCopy = action;
  v5 = [actionCopy propertyForKey:v3];
  v6 = [actionCopy propertyForKey:FLFollowUpSingleActionKey];
  v14[0] = @"BUI";
  v13[0] = @"source";
  v13[1] = @"radar";
  v7 = [actionCopy objectForKeyedSubscript:@"com.apple.perfpowerservices.ursa.radar"];

  v13[2] = @"action";
  v14[1] = v7;
  v14[2] = @"tapped";
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = [FLFollowUpActionHandler handlerWithItem:v5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3F758;
  v11[3] = &unk_164BE8;
  v12 = v8;
  v10 = v8;
  [v9 handleAction:v6 completion:v11];
  PLLogRegisteredEvent();
}

@end