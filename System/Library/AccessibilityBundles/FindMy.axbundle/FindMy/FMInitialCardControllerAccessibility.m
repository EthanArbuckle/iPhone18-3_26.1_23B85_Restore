@interface FMInitialCardControllerAccessibility
- (void)presentCard:(id)a3 completion:(id)a4;
@end

@implementation FMInitialCardControllerAccessibility

- (void)presentCard:(id)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = FMInitialCardControllerAccessibility;
  v5 = a3;
  [(FMInitialCardControllerAccessibility *)&v6 presentCard:v5 completion:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v5);
}

@end