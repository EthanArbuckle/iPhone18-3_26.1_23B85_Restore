@interface UIViewController(EKUIAppEntityAnnotation)
- (void)EKUI_annotateIfNeededWithAppEntityForEvent:()EKUIAppEntityAnnotation isEditing:;
@end

@implementation UIViewController(EKUIAppEntityAnnotation)

- (void)EKUI_annotateIfNeededWithAppEntityForEvent:()EKUIAppEntityAnnotation isEditing:
{
  v9 = a3;
  if (CalendarLinkLibraryCore())
  {
    isViewLoaded = [self isViewLoaded];
    if (v9)
    {
      if (isViewLoaded && ([v9 isNew] & 1) == 0)
      {
        view = [self view];
        [view Cal_annotateWithEvent:v9];

        view2 = [self view];
        [view2 Cal_updateEntityAnnotationStateIsSelected:1 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:a4 isPrimary:1];
      }
    }
  }
}

@end