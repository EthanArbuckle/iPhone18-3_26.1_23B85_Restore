@interface AEAnnotationGenericTextActivityItemProvider
- (BOOL)supportsActivityType:(id)type;
@end

@implementation AEAnnotationGenericTextActivityItemProvider

- (BOOL)supportsActivityType:(id)type
{
  typeCopy = type;
  v4 = +[IMActivity activityTypes];
  v5 = [v4 containsObject:typeCopy];

  return v5 ^ 1;
}

@end