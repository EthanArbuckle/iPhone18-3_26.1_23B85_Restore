@interface AENotePopoverEditorControllerAccessibility
- (void)_axClearReferencesToSelfInButtons;
- (void)dealloc;
@end

@implementation AENotePopoverEditorControllerAccessibility

- (void)_axClearReferencesToSelfInButtons
{
  v3 = [(AENotePopoverEditorControllerAccessibility *)self imaxValueForKey:@"noteEditorViewController"];
  v2 = [v3 imaxValueForKey:@"textView"];
  [v2 imaxSetParentAnnotationPopoverViewController:0];
}

- (void)dealloc
{
  [(AENotePopoverEditorControllerAccessibility *)self _axClearReferencesToSelfInButtons];
  v3.receiver = self;
  v3.super_class = AENotePopoverEditorControllerAccessibility;
  [(AENotePopoverEditorControllerAccessibility *)&v3 dealloc];
}

@end