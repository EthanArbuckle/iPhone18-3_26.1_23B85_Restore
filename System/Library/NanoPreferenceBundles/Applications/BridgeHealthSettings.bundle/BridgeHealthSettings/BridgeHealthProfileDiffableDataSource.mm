@interface BridgeHealthProfileDiffableDataSource
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
@end

@implementation BridgeHealthProfileDiffableDataSource

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  snapshot = [(BridgeHealthProfileDiffableDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers objectAtIndex:section];

  if ([v8 isEqual:&off_19410])
  {
    v9 = &stru_188B0;
    goto LABEL_12;
  }

  if (![v8 isEqual:&off_19428])
  {
    if (![v8 isEqual:&off_19440])
    {
      v9 = 0;
      goto LABEL_12;
    }

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v12;
    v13 = @"CARDIO_FITNESS_RELATED_MEDICATIONS_FOOTER_TEXT";
    goto LABEL_10;
  }

  if (!self->_activeTinkerDevice)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v12;
    v13 = @"WHEELCHAIR_USE_DESCRIPTION_FOOTER";
LABEL_10:
    v9 = [v12 localizedStringForKey:v13 value:&stru_188B0 table:@"Localizable"];
    goto LABEL_11;
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"WHEELCHAIR_USE_DESCRIPTION_FOOTER_TINKER_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v9 = [NSString stringWithFormat:v11, self->_firstName];

LABEL_11:
LABEL_12:

  return v9;
}

@end