@interface IRNInternalSettingsViewController
- (_TtC5Heart33IRNInternalSettingsViewController)initWithHealthStore:(id)a3;
- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)a3;
@end

@implementation IRNInternalSettingsViewController

- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)a3
{
  v4 = objc_allocWithZone(sub_29D936E78());
  v5 = a3;
  v6 = sub_29D936E68();

  return v6;
}

- (_TtC5Heart33IRNInternalSettingsViewController)initWithHealthStore:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IRNInternalSettingsViewController();
  return [(WDAtrialFibrillationInternalSettingsViewController *)&v5 initWithHealthStore:a3];
}

@end