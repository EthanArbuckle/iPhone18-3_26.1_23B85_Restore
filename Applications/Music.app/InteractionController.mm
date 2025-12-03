@interface InteractionController
- (void)handleInteraction:(id)interaction;
@end

@implementation InteractionController

- (void)handleInteraction:(id)interaction
{
  interactionCopy = interaction;

  sub_100658D84(interactionCopy);
}

@end