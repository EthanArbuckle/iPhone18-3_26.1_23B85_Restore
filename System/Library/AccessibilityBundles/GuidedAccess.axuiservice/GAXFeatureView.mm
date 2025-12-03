@interface GAXFeatureView
+ (GAXFeatureView)allocWithZone:(_NSZone *)zone;
+ (id)appFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider;
+ (id)hardwareFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text initialState:(BOOL)state styleProvider:(id)provider;
+ (id)optionsFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text styleProvider:(id)provider;
+ (id)systemFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text initialState:(BOOL)state styleProvider:(id)provider;
+ (id)timeRestrictionsFeatureViewWithInitialState:(BOOL)state initialDuration:(int64_t)duration styleProvider:(id)provider;
- (BOOL)_accessibilityActivateToggleSwitch;
- (CGRect)popoverOriginRect;
- (GAXFeatureView)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider;
- (GAXFeatureViewDelegate)delegate;
- (id)accessibilityValue;
- (id)description;
- (void)_handleValueChanged:(id)changed;
- (void)updateMask;
@end

@implementation GAXFeatureView

- (id)accessibilityValue
{
  toggleSwitch = [(GAXFeatureView *)self toggleSwitch];
  accessibilityValue = [toggleSwitch accessibilityValue];

  return accessibilityValue;
}

- (void)_handleValueChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(GAXFeatureView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate featureView:self didChangeState:{objc_msgSend(changedCopy, "isOn")}];
  }
}

- (BOOL)_accessibilityActivateToggleSwitch
{
  toggleSwitch = [(GAXFeatureView *)self toggleSwitch];
  [toggleSwitch setOn:{objc_msgSend(toggleSwitch, "isOn") ^ 1}];
  [(GAXFeatureView *)self _handleValueChanged:toggleSwitch];

  return 1;
}

+ (GAXFeatureView)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    if (GAXUserInterfaceIdiomIsPad())
    {
      _AXAssert();
    }

    v6 = objc_opt_class();

    return [v6 allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___GAXFeatureView;
    return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
  }
}

+ (id)appFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  detailTextCopy = detailText;
  textCopy = text;
  iconCopy = icon;
  identifierCopy = identifier;
  v19 = [[self alloc] initWithIdentifier:identifierCopy type:0 icon:iconCopy text:textCopy detailText:detailTextCopy initialState:stateCopy styleProvider:providerCopy];

  [v19 _constructViewHierarchyWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];
  [v19 _applyAutolayoutConstraintsWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];

  return v19;
}

+ (id)hardwareFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text initialState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  textCopy = text;
  iconCopy = icon;
  identifierCopy = identifier;
  v16 = [[self alloc] initWithIdentifier:identifierCopy type:1 icon:iconCopy text:textCopy detailText:0 initialState:stateCopy styleProvider:providerCopy];

  [v16 _constructViewHierarchyWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:stateCopy styleProvider:providerCopy];
  [v16 _applyAutolayoutConstraintsWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:stateCopy styleProvider:providerCopy];

  return v16;
}

+ (id)optionsFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text styleProvider:(id)provider
{
  providerCopy = provider;
  textCopy = text;
  iconCopy = icon;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithIdentifier:identifierCopy type:2 icon:iconCopy text:textCopy detailText:0 initialState:0 styleProvider:providerCopy];

  [v14 _constructViewHierarchyWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:0 styleProvider:providerCopy];
  [v14 _applyAutolayoutConstraintsWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:0 styleProvider:providerCopy];

  return v14;
}

+ (id)systemFeatureViewWithIdentifier:(id)identifier icon:(id)icon text:(id)text initialState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  textCopy = text;
  iconCopy = icon;
  identifierCopy = identifier;
  v16 = [[self alloc] initWithIdentifier:identifierCopy type:3 icon:iconCopy text:textCopy detailText:0 initialState:stateCopy styleProvider:providerCopy];

  [v16 _constructViewHierarchyWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:stateCopy styleProvider:providerCopy];
  [v16 _applyAutolayoutConstraintsWithIcon:iconCopy text:textCopy detailText:0 initialFeatureState:stateCopy styleProvider:providerCopy];

  return v16;
}

+ (id)timeRestrictionsFeatureViewWithInitialState:(BOOL)state initialDuration:(int64_t)duration styleProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  if (stateCopy)
  {
    v8 = GAXLocalizedStringForTimeDuration(duration * 60.0);
  }

  else
  {
    v8 = &stru_5E950;
  }

  v9 = GAXLocString(@"TIME_RESTRICTION_FEATURE");
  timeRestrictionsFeatureViewTimerIcon = [providerCopy timeRestrictionsFeatureViewTimerIcon];
  if (duration <= 1)
  {
    duration = 1;
  }

  v11 = [[TimeRestrictionFeatureView alloc] initWithIdentifier:@"GAXProfileAppTimeoutDuration" type:4 icon:timeRestrictionsFeatureViewTimerIcon text:v9 detailText:v8 initialState:stateCopy initialDuration:duration styleProvider:providerCopy];
  [(TimeRestrictionFeatureView *)v11 _constructViewHierarchyWithIcon:timeRestrictionsFeatureViewTimerIcon text:v9 detailText:v8 initialFeatureState:stateCopy styleProvider:providerCopy];
  [(TimeRestrictionFeatureView *)v11 _applyAutolayoutConstraintsWithIcon:timeRestrictionsFeatureViewTimerIcon text:v9 detailText:v8 initialFeatureState:stateCopy styleProvider:providerCopy];

  return v11;
}

- (void)updateMask
{
  iconView = [(GAXFeatureView *)self iconView];
  maskView = [iconView maskView];
  iconView2 = [(GAXFeatureView *)self iconView];
  maskView2 = [iconView2 maskView];
  [maskView2 frame];
  [maskView setFrame:?];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = GAXFeatureView;
  v3 = [(GAXFeatureView *)&v7 description];
  identifier = [(GAXFeatureView *)self identifier];
  v5 = [NSString stringWithFormat:@"%@ identifier: %@, type: %ld", v3, identifier, [(GAXFeatureView *)self type]];

  return v5;
}

- (GAXFeatureViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GAXFeatureView)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

- (CGRect)popoverOriginRect
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end