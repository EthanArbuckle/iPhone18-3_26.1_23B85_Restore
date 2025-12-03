@interface AKControllerForTesting
+ (void)renderAnnotation:(id)annotation inContext:(CGContext *)context;
- (AKControllerForTesting)init;
- (BOOL)validateSender:(id)sender;
- (void)performActionForSender:(id)sender;
- (void)reloadVisibleToolbarItemIdentifiers;
- (void)setOverlayShouldPixelate:(BOOL)pixelate;
- (void)updateOverlayViewAtIndex:(unint64_t)index;
@end

@implementation AKControllerForTesting

- (AKControllerForTesting)init
{
  v3.receiver = self;
  v3.super_class = AKControllerForTesting;
  return [(AKController *)&v3 initForTesting];
}

- (void)updateOverlayViewAtIndex:(unint64_t)index
{
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting updateOverlayViewAtIndex:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 updateOverlayViewAtIndex:index];
}

- (void)setOverlayShouldPixelate:(BOOL)pixelate
{
  pixelateCopy = pixelate;
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting setOverlayShouldPixelate:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 setOverlayShouldPixelate:pixelateCopy];
}

- (void)performActionForSender:(id)sender
{
  senderCopy = sender;
  NSLog(&cfstr_SCalledDuringT.isa, "[AKControllerForTesting performActionForSender:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 performActionForSender:senderCopy];
}

- (BOOL)validateSender:(id)sender
{
  senderCopy = sender;
  NSLog(&cfstr_SCalledDuringT.isa, "[AKControllerForTesting validateSender:]");
  v6.receiver = self;
  v6.super_class = AKControllerForTesting;
  LOBYTE(self) = [(AKController *)&v6 validateSender:senderCopy];

  return self;
}

+ (void)renderAnnotation:(id)annotation inContext:(CGContext *)context
{
  annotationCopy = annotation;
  NSLog(&cfstr_SCalledDuringT.isa, "+[AKControllerForTesting renderAnnotation:inContext:]");
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AKControllerForTesting;
  objc_msgSendSuper2(&v7, sel_renderAnnotation_inContext_, annotationCopy, context);
}

- (void)reloadVisibleToolbarItemIdentifiers
{
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting reloadVisibleToolbarItemIdentifiers]");
  v3.receiver = self;
  v3.super_class = AKControllerForTesting;
  [(AKController *)&v3 reloadVisibleToolbarItemIdentifiers];
}

@end