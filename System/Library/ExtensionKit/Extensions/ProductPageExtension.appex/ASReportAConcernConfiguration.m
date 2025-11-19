@interface ASReportAConcernConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASReportAConcernConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(ASReportAConcernConfiguration *)self title];
  [v4 setTitle:v5];

  v6 = [(ASReportAConcernConfiguration *)self backTitle];
  [v4 setBackTitle:v6];

  v7 = [(ASReportAConcernConfiguration *)self cancelTitle];
  [v4 setCancelTitle:v7];

  v8 = [(ASReportAConcernConfiguration *)self submitTitle];
  [v4 setSubmitTitle:v8];

  v9 = [(ASReportAConcernConfiguration *)self reportConcernExplanation];
  [v4 setReportConcernExplanation:v9];

  v10 = [(ASReportAConcernConfiguration *)self selectReasonTitle];
  [v4 setSelectReasonTitle:v10];

  v11 = [(ASReportAConcernConfiguration *)self selectReasonSubtitle];
  [v4 setSelectReasonSubtitle:v11];

  v12 = [(ASReportAConcernConfiguration *)self privacyNote];
  [v4 setPrivacyNote:v12];

  v13 = [(ASReportAConcernConfiguration *)self reasons];
  [v4 setReasons:v13];

  return v4;
}

@end