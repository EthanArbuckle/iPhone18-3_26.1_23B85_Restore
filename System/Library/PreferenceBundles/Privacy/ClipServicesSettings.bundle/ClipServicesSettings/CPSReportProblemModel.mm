@interface CPSReportProblemModel
+ (id)sharedAMSBag;
+ (id)testModel;
+ (id)test_problemTypes;
- (CPSReportProblemModel)init;
- (CPSReportProblemModel)initWithBundleIdentifier:(id)a3 itemIdentifier:(unint64_t)a4;
- (void)fetchAMSDataWithCompletion:(id)a3;
- (void)obtainBagValuesWithCompletion:(id)a3;
- (void)obtainSupportURLWithCompletion:(id)a3;
- (void)submitResponseForProblemType:(id)a3 userNote:(id)a4 completion:(id)a5;
@end

@implementation CPSReportProblemModel

- (CPSReportProblemModel)initWithBundleIdentifier:(id)a3 itemIdentifier:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CPSReportProblemModel;
  v7 = [(CPSReportProblemModel *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_itemIdentifier = a4;
    v10 = v7;
  }

  return v7;
}

- (CPSReportProblemModel)init
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"-init: is not available." userInfo:0];
  objc_exception_throw(v2);
}

+ (id)sharedAMSBag
{
  if (qword_1A058 != -1)
  {
    sub_9E38();
  }

  v3 = qword_1A050;

  return v3;
}

- (void)fetchAMSDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  amsFetchGroup = self->_amsFetchGroup;
  self->_amsFetchGroup = v5;

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1F58;
  v14[4] = sub_1F68;
  v15 = 0;
  dispatch_group_enter(self->_amsFetchGroup);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1F70;
  v13[3] = &unk_14730;
  v13[4] = self;
  v13[5] = v14;
  [(CPSReportProblemModel *)self obtainBagValuesWithCompletion:v13];
  dispatch_group_enter(self->_amsFetchGroup);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_20C0;
  v12[3] = &unk_14780;
  v12[4] = self;
  [(CPSReportProblemModel *)self obtainSupportURLWithCompletion:v12];
  v7 = self->_amsFetchGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2174;
  block[3] = &unk_147A8;
  v10 = v4;
  v11 = v14;
  v8 = v4;
  dispatch_group_notify(v7, &_dispatch_main_q, block);

  _Block_object_dispose(v14, 8);
}

- (void)obtainSupportURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_59B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "RAP: Obtaining developer support URL", buf, 2u);
  }

  v6 = [AMSMediaTask alloc];
  v7 = [objc_opt_class() sharedAMSBag];
  v8 = [v6 initWithType:0 clientIdentifier:@"com.apple.ClipServices.clipserviced" clientVersion:@"1" bag:v7];

  v9 = [NSNumber numberWithUnsignedLongLong:self->_itemIdentifier];
  v10 = [v9 stringValue];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v8 setItemIdentifiers:v11];

  v18 = @"extend";
  v19 = @"supportURLForLanguage";
  v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v8 setAdditionalQueryParams:v12];

  v13 = [v8 perform];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_23B0;
  v15[3] = &unk_147D0;
  v16 = v4;
  v14 = v4;
  [v13 addFinishBlock:v15];
}

- (void)obtainBagValuesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [objc_opt_class() sharedAMSBag];
  v6 = [v5 dictionaryForKey:@"app-clips-report-problem"];

  v7 = sub_59B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "RAP: Obtaining problem types", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2750;
  v10[3] = &unk_147F8;
  v11 = v4;
  v12 = v3;
  v8 = v4;
  v9 = v3;
  [v6 valueWithCompletion:v10];
}

- (void)submitResponseForProblemType:(id)a3 userNote:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[CPSWebClipStore sharedStore];
  bundleIdentifier = self->_bundleIdentifier;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2C10;
  v16[3] = &unk_14898;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v11 getWebClipsBackedbyAppClipIdentifier:bundleIdentifier completion:v16];
}

+ (id)testModel
{
  v2 = objc_alloc_init(a1);
  v3 = +[CPSReportProblemModel test_problemTypes];
  v4 = v2[6];
  v2[6] = v3;

  v5 = [NSURL URLWithString:@"https://apple.com"];
  v6 = v2[5];
  v2[5] = v5;

  return v2;
}

+ (id)test_problemTypes
{
  v2 = [[CPSReportProblemProblemType alloc] initWithLocalizedTitle:@"Not working as expected" localizedUpperCaseTitle:@"NOT WORKING AS EXPECTED" label:@"NOT_WORKING" identifier:&off_15A50 offerDeveloperWebsite:1];
  v3 = [[CPSReportProblemProblemType alloc] initWithLocalizedTitle:@"Offensive or illegal" localizedUpperCaseTitle:@"OFFENSIVE OR ILLEGAL" label:@"OFFENSIVE_OR_ILLEGAL" identifier:&off_15A68 offerDeveloperWebsite:0];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

@end