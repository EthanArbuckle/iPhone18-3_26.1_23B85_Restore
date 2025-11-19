@interface UIViewController(EKUIAppEntityAnnotation)
- (void)EKUI_annotateIfNeededWithAppEntityForEvent:()EKUIAppEntityAnnotation isEditing:;
@end

@implementation UIViewController(EKUIAppEntityAnnotation)

- (void)EKUI_annotateIfNeededWithAppEntityForEvent:()EKUIAppEntityAnnotation isEditing:
{
  v9 = a3;
  if (CalendarLinkLibraryCore())
  {
    v6 = [a1 isViewLoaded];
    if (v9)
    {
      if (v6 && ([v9 isNew] & 1) == 0)
      {
        v7 = [a1 view];
        [v7 Cal_annotateWithEvent:v9];

        v8 = [a1 view];
        [v8 Cal_updateEntityAnnotationStateIsSelected:1 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:a4 isPrimary:1];
      }
    }
  }
}

@end