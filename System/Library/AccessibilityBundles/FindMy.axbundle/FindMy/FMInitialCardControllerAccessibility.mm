@interface FMInitialCardControllerAccessibility
- (void)presentCard:(id)card completion:(id)completion;
@end

@implementation FMInitialCardControllerAccessibility

- (void)presentCard:(id)card completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = FMInitialCardControllerAccessibility;
  cardCopy = card;
  [(FMInitialCardControllerAccessibility *)&v6 presentCard:cardCopy completion:completion];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], cardCopy);
}

@end