@interface ASReportAConcernConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASReportAConcernConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(ASReportAConcernConfiguration *)self title];
  [v4 setTitle:title];

  backTitle = [(ASReportAConcernConfiguration *)self backTitle];
  [v4 setBackTitle:backTitle];

  cancelTitle = [(ASReportAConcernConfiguration *)self cancelTitle];
  [v4 setCancelTitle:cancelTitle];

  submitTitle = [(ASReportAConcernConfiguration *)self submitTitle];
  [v4 setSubmitTitle:submitTitle];

  reportConcernExplanation = [(ASReportAConcernConfiguration *)self reportConcernExplanation];
  [v4 setReportConcernExplanation:reportConcernExplanation];

  selectReasonTitle = [(ASReportAConcernConfiguration *)self selectReasonTitle];
  [v4 setSelectReasonTitle:selectReasonTitle];

  selectReasonSubtitle = [(ASReportAConcernConfiguration *)self selectReasonSubtitle];
  [v4 setSelectReasonSubtitle:selectReasonSubtitle];

  privacyNote = [(ASReportAConcernConfiguration *)self privacyNote];
  [v4 setPrivacyNote:privacyNote];

  reasons = [(ASReportAConcernConfiguration *)self reasons];
  [v4 setReasons:reasons];

  return v4;
}

@end