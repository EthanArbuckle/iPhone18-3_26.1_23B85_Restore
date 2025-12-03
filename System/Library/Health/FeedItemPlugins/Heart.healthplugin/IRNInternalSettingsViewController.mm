@interface IRNInternalSettingsViewController
- (_TtC5Heart33IRNInternalSettingsViewController)initWithHealthStore:(id)store;
- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)identifier;
@end

@implementation IRNInternalSettingsViewController

- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)identifier
{
  v4 = objc_allocWithZone(sub_29D936E78());
  identifierCopy = identifier;
  v6 = sub_29D936E68();

  return v6;
}

- (_TtC5Heart33IRNInternalSettingsViewController)initWithHealthStore:(id)store
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IRNInternalSettingsViewController();
  return [(WDAtrialFibrillationInternalSettingsViewController *)&v5 initWithHealthStore:store];
}

@end