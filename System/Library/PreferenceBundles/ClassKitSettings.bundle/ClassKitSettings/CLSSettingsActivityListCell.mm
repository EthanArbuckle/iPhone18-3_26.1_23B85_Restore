@interface CLSSettingsActivityListCell
- (id)constructSubtitleStringWithSpecifier:(id)a3;
- (id)subtitleDateFormatter;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CLSSettingsActivityListCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSSettingsActivityListCell;
  v4 = a3;
  [(CLSSettingsActivityListCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [(CLSSettingsActivityListCell *)self constructSubtitleStringWithSpecifier:v4, v7.receiver, v7.super_class];

  v6 = [(CLSSettingsActivityListCell *)self detailTextLabel];
  [v6 setText:v5];
}

- (id)constructSubtitleStringWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"CLSSettingsSpecifierActivityLastModifiedDate"];
  if (v5)
  {
    v6 = [(CLSSettingsActivityListCell *)self subtitleDateFormatter];
    v7 = [v6 stringFromDate:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 propertyForKey:@"CLSSettingsSpecifierContextType"];
  if (![v7 length])
  {
    v12 = v8;
LABEL_9:
    v11 = v12;
    goto LABEL_10;
  }

  if (![v8 length])
  {
    v12 = v7;
    goto LABEL_9;
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DATE_AND_CONTEXT_TYPE" value:&stru_C898 table:@"ClassKitSettings"];
  v11 = [NSString stringWithFormat:v10, v7, v8];

LABEL_10:
  v13 = v11;

  return v11;
}

- (id)subtitleDateFormatter
{
  if (qword_10E48 != -1)
  {
    dispatch_once(&qword_10E48, &stru_C5B8);
  }

  v3 = qword_10E40;

  return v3;
}

@end