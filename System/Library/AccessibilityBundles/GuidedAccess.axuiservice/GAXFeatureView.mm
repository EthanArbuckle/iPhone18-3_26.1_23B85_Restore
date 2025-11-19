@interface GAXFeatureView
+ (GAXFeatureView)allocWithZone:(_NSZone *)a3;
+ (id)appFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 detailText:(id)a6 initialState:(BOOL)a7 styleProvider:(id)a8;
+ (id)hardwareFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 initialState:(BOOL)a6 styleProvider:(id)a7;
+ (id)optionsFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 styleProvider:(id)a6;
+ (id)systemFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 initialState:(BOOL)a6 styleProvider:(id)a7;
+ (id)timeRestrictionsFeatureViewWithInitialState:(BOOL)a3 initialDuration:(int64_t)a4 styleProvider:(id)a5;
- (BOOL)_accessibilityActivateToggleSwitch;
- (CGRect)popoverOriginRect;
- (GAXFeatureView)initWithIdentifier:(id)a3 type:(int64_t)a4 icon:(id)a5 text:(id)a6 detailText:(id)a7 initialState:(BOOL)a8 styleProvider:(id)a9;
- (GAXFeatureViewDelegate)delegate;
- (id)accessibilityValue;
- (id)description;
- (void)_handleValueChanged:(id)a3;
- (void)updateMask;
@end

@implementation GAXFeatureView

- (id)accessibilityValue
{
  v2 = [(GAXFeatureView *)self toggleSwitch];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (void)_handleValueChanged:(id)a3
{
  v5 = a3;
  v4 = [(GAXFeatureView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 featureView:self didChangeState:{objc_msgSend(v5, "isOn")}];
  }
}

- (BOOL)_accessibilityActivateToggleSwitch
{
  v3 = [(GAXFeatureView *)self toggleSwitch];
  [v3 setOn:{objc_msgSend(v3, "isOn") ^ 1}];
  [(GAXFeatureView *)self _handleValueChanged:v3];

  return 1;
}

+ (GAXFeatureView)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    if (GAXUserInterfaceIdiomIsPad())
    {
      _AXAssert();
    }

    v6 = objc_opt_class();

    return [v6 allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GAXFeatureView;
    return objc_msgSendSuper2(&v7, "allocWithZone:", a3);
  }
}

+ (id)appFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 detailText:(id)a6 initialState:(BOOL)a7 styleProvider:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[a1 alloc] initWithIdentifier:v18 type:0 icon:v17 text:v16 detailText:v15 initialState:v8 styleProvider:v14];

  [v19 _constructViewHierarchyWithIcon:v17 text:v16 detailText:v15 initialFeatureState:v8 styleProvider:v14];
  [v19 _applyAutolayoutConstraintsWithIcon:v17 text:v16 detailText:v15 initialFeatureState:v8 styleProvider:v14];

  return v19;
}

+ (id)hardwareFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 initialState:(BOOL)a6 styleProvider:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithIdentifier:v15 type:1 icon:v14 text:v13 detailText:0 initialState:v7 styleProvider:v12];

  [v16 _constructViewHierarchyWithIcon:v14 text:v13 detailText:0 initialFeatureState:v7 styleProvider:v12];
  [v16 _applyAutolayoutConstraintsWithIcon:v14 text:v13 detailText:0 initialFeatureState:v7 styleProvider:v12];

  return v16;
}

+ (id)optionsFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 styleProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithIdentifier:v13 type:2 icon:v12 text:v11 detailText:0 initialState:0 styleProvider:v10];

  [v14 _constructViewHierarchyWithIcon:v12 text:v11 detailText:0 initialFeatureState:0 styleProvider:v10];
  [v14 _applyAutolayoutConstraintsWithIcon:v12 text:v11 detailText:0 initialFeatureState:0 styleProvider:v10];

  return v14;
}

+ (id)systemFeatureViewWithIdentifier:(id)a3 icon:(id)a4 text:(id)a5 initialState:(BOOL)a6 styleProvider:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithIdentifier:v15 type:3 icon:v14 text:v13 detailText:0 initialState:v7 styleProvider:v12];

  [v16 _constructViewHierarchyWithIcon:v14 text:v13 detailText:0 initialFeatureState:v7 styleProvider:v12];
  [v16 _applyAutolayoutConstraintsWithIcon:v14 text:v13 detailText:0 initialFeatureState:v7 styleProvider:v12];

  return v16;
}

+ (id)timeRestrictionsFeatureViewWithInitialState:(BOOL)a3 initialDuration:(int64_t)a4 styleProvider:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (v6)
  {
    v8 = GAXLocalizedStringForTimeDuration(a4 * 60.0);
  }

  else
  {
    v8 = &stru_5E950;
  }

  v9 = GAXLocString(@"TIME_RESTRICTION_FEATURE");
  v10 = [v7 timeRestrictionsFeatureViewTimerIcon];
  if (a4 <= 1)
  {
    a4 = 1;
  }

  v11 = [[TimeRestrictionFeatureView alloc] initWithIdentifier:@"GAXProfileAppTimeoutDuration" type:4 icon:v10 text:v9 detailText:v8 initialState:v6 initialDuration:a4 styleProvider:v7];
  [(TimeRestrictionFeatureView *)v11 _constructViewHierarchyWithIcon:v10 text:v9 detailText:v8 initialFeatureState:v6 styleProvider:v7];
  [(TimeRestrictionFeatureView *)v11 _applyAutolayoutConstraintsWithIcon:v10 text:v9 detailText:v8 initialFeatureState:v6 styleProvider:v7];

  return v11;
}

- (void)updateMask
{
  v6 = [(GAXFeatureView *)self iconView];
  v3 = [v6 maskView];
  v4 = [(GAXFeatureView *)self iconView];
  v5 = [v4 maskView];
  [v5 frame];
  [v3 setFrame:?];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = GAXFeatureView;
  v3 = [(GAXFeatureView *)&v7 description];
  v4 = [(GAXFeatureView *)self identifier];
  v5 = [NSString stringWithFormat:@"%@ identifier: %@, type: %ld", v3, v4, [(GAXFeatureView *)self type]];

  return v5;
}

- (GAXFeatureViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GAXFeatureView)initWithIdentifier:(id)a3 type:(int64_t)a4 icon:(id)a5 text:(id)a6 detailText:(id)a7 initialState:(BOOL)a8 styleProvider:(id)a9
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