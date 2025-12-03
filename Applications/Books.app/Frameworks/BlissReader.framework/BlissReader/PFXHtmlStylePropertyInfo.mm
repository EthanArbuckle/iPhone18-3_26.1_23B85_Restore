@interface PFXHtmlStylePropertyInfo
+ (BOOL)propertyIsInherited:(const char *)inherited;
+ (void)addInfoForProperty:(const char *)property isInherited:(BOOL)inherited;
+ (void)initialize;
+ (void)propertyInfos;
@end

@implementation PFXHtmlStylePropertyInfo

+ (void)propertyInfos
{
  if ((atomic_load_explicit(&qword_567988, memory_order_acquire) & 1) == 0)
  {
    sub_1ECAEC();
  }

  return &qword_567990;
}

+ (void)addInfoForProperty:(const char *)property isInherited:(BOOL)inherited
{
  v4[0] = property;
  v4[2] = v4;
  *(sub_1ECA04([self propertyInfos], v4) + 40) = inherited;
}

+ (void)initialize
{
  [self addInfoForProperty:"background" isInherited:0];
  [self addInfoForProperty:"background-color" isInherited:0];
  [self addInfoForProperty:"background-image" isInherited:0];
  [self addInfoForProperty:"background-repeat" isInherited:0];
  [self addInfoForProperty:"border" isInherited:0];
  [self addInfoForProperty:"border-bottom" isInherited:0];
  [self addInfoForProperty:"border-bottom-width" isInherited:0];
  [self addInfoForProperty:"border-color" isInherited:0];
  [self addInfoForProperty:"border-collapse" isInherited:0];
  [self addInfoForProperty:"border-left" isInherited:0];
  [self addInfoForProperty:"border-left-width" isInherited:0];
  [self addInfoForProperty:"border-right" isInherited:0];
  [self addInfoForProperty:"border-right-width" isInherited:0];
  [self addInfoForProperty:"border-style" isInherited:0];
  [self addInfoForProperty:"border-top" isInherited:0];
  [self addInfoForProperty:"border-top-width" isInherited:0];
  [self addInfoForProperty:"border-width" isInherited:0];
  [self addInfoForProperty:"visibility" isInherited:0];

  [self addInfoForProperty:"vertical-align" isInherited:0];
}

+ (BOOL)propertyIsInherited:(const char *)inherited
{
  inheritedCopy = inherited;
  propertyInfos = [self propertyInfos];
  v4 = sub_1EB018(propertyInfos, &inheritedCopy);
  if (propertyInfos + 8 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 40);
  }

  return v5 & 1;
}

@end