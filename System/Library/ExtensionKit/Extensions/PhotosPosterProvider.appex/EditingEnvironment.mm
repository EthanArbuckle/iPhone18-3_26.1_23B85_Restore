@interface EditingEnvironment
- (BOOL)px_isBackdrop;
- (BOOL)px_isCallServices;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)layout;
- (NSString)pu_role;
- (PFPosterConfiguration)pu_sourcePosterConfiguration;
- (PFPosterDescriptor)pu_posterDescriptor;
- (PUMutablePosterConfiguration)pu_targetConfiguration;
- (PUPosterOverrideConfiguration)pu_overrideConfiguration;
- (UIColor)pu_caseColor;
- (UITraitCollection)px_traitCollection;
- (int64_t)pu_posterType;
- (int64_t)pu_userInterfaceStyle;
- (int64_t)px_boundingShape;
- (int64_t)px_significantEventsCounter;
- (unint64_t)editingVariant;
- (unint64_t)effectiveMotionEffectsMode;
- (unint64_t)pu_legacyConfigurationType;
@end

@implementation EditingEnvironment

- (int64_t)pu_posterType
{
  selfCopy = self;
  v3 = sub_10000E418();

  return v3;
}

- (unint64_t)editingVariant
{
  selfCopy = self;
  v3 = sub_10000E47C();

  return v3;
}

- (PFPosterConfiguration)pu_sourcePosterConfiguration
{
  v2 = sub_10000E6BC();

  return v2;
}

- (PFPosterDescriptor)pu_posterDescriptor
{
  v2 = sub_10000E720();

  return v2;
}

- (UIColor)pu_caseColor
{
  selfCopy = self;
  v3 = sub_10000E794();

  return v3;
}

- (int64_t)pu_userInterfaceStyle
{
  selfCopy = self;
  v3 = sub_10000E808();

  return v3;
}

- (unint64_t)pu_legacyConfigurationType
{
  selfCopy = self;
  v3 = sub_10000E904();

  return v3;
}

- (NSString)pu_role
{
  selfCopy = self;
  sub_10000E9E0();

  v3 = sub_10002F3D4();

  return v3;
}

- (PUPosterOverrideConfiguration)pu_overrideConfiguration
{
  selfCopy = self;
  v3 = sub_10000EDD0();

  return v3;
}

- (PUMutablePosterConfiguration)pu_targetConfiguration
{
  selfCopy = self;
  v3 = sub_10000EE94();

  return v3;
}

- (int64_t)px_significantEventsCounter
{
  selfCopy = self;
  v3 = sub_10000EF08();

  return v3;
}

- (BOOL)px_isCallServices
{
  selfCopy = self;
  v3 = sub_10000EF54();

  return v3 & 1;
}

- (BOOL)px_isBackdrop
{
  selfCopy = self;
  v3 = sub_10000EFAC();

  return v3 & 1;
}

- (int64_t)px_boundingShape
{
  selfCopy = self;
  v3 = sub_10000F004();

  return v3;
}

- (CGRect)px_floatingObscurableBounds
{
  sub_100007314(self, a2, sub_10000F028);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UITraitCollection)px_traitCollection
{
  selfCopy = self;
  v3 = sub_10000F08C();

  return v3;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_10000F0CC);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_100010A10);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_100010A10);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)effectiveMotionEffectsMode
{
  selfCopy = self;
  v3 = sub_10000F168();

  return v3;
}

- (CGRect)px_salientContentRectangle
{
  sub_100007314(self, a2, sub_10000F28C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end