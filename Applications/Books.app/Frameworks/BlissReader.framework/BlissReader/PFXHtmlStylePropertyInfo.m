@interface PFXHtmlStylePropertyInfo
+ (BOOL)propertyIsInherited:(const char *)a3;
+ (void)addInfoForProperty:(const char *)a3 isInherited:(BOOL)a4;
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

+ (void)addInfoForProperty:(const char *)a3 isInherited:(BOOL)a4
{
  v4[0] = a3;
  v4[2] = v4;
  *(sub_1ECA04([a1 propertyInfos], v4) + 40) = a4;
}

+ (void)initialize
{
  [a1 addInfoForProperty:"background" isInherited:0];
  [a1 addInfoForProperty:"background-color" isInherited:0];
  [a1 addInfoForProperty:"background-image" isInherited:0];
  [a1 addInfoForProperty:"background-repeat" isInherited:0];
  [a1 addInfoForProperty:"border" isInherited:0];
  [a1 addInfoForProperty:"border-bottom" isInherited:0];
  [a1 addInfoForProperty:"border-bottom-width" isInherited:0];
  [a1 addInfoForProperty:"border-color" isInherited:0];
  [a1 addInfoForProperty:"border-collapse" isInherited:0];
  [a1 addInfoForProperty:"border-left" isInherited:0];
  [a1 addInfoForProperty:"border-left-width" isInherited:0];
  [a1 addInfoForProperty:"border-right" isInherited:0];
  [a1 addInfoForProperty:"border-right-width" isInherited:0];
  [a1 addInfoForProperty:"border-style" isInherited:0];
  [a1 addInfoForProperty:"border-top" isInherited:0];
  [a1 addInfoForProperty:"border-top-width" isInherited:0];
  [a1 addInfoForProperty:"border-width" isInherited:0];
  [a1 addInfoForProperty:"visibility" isInherited:0];

  [a1 addInfoForProperty:"vertical-align" isInherited:0];
}

+ (BOOL)propertyIsInherited:(const char *)a3
{
  v7 = a3;
  v3 = [a1 propertyInfos];
  v4 = sub_1EB018(v3, &v7);
  if (v3 + 8 == v4)
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