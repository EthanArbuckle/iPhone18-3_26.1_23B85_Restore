@interface NSObject(MKAbstractAnnotationContainerViewExtras)
- (uint64_t)_mapkit_isInternalAnnotationView;
@end

@implementation NSObject(MKAbstractAnnotationContainerViewExtras)

- (uint64_t)_mapkit_isInternalAnnotationView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end