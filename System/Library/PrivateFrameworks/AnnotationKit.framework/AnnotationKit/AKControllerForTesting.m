@interface AKControllerForTesting
+ (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4;
- (AKControllerForTesting)init;
- (BOOL)validateSender:(id)a3;
- (void)performActionForSender:(id)a3;
- (void)reloadVisibleToolbarItemIdentifiers;
- (void)setOverlayShouldPixelate:(BOOL)a3;
- (void)updateOverlayViewAtIndex:(unint64_t)a3;
@end

@implementation AKControllerForTesting

- (AKControllerForTesting)init
{
  v3.receiver = self;
  v3.super_class = AKControllerForTesting;
  return [(AKController *)&v3 initForTesting];
}

- (void)updateOverlayViewAtIndex:(unint64_t)a3
{
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting updateOverlayViewAtIndex:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 updateOverlayViewAtIndex:a3];
}

- (void)setOverlayShouldPixelate:(BOOL)a3
{
  v3 = a3;
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting setOverlayShouldPixelate:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 setOverlayShouldPixelate:v3];
}

- (void)performActionForSender:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_SCalledDuringT.isa, "[AKControllerForTesting performActionForSender:]");
  v5.receiver = self;
  v5.super_class = AKControllerForTesting;
  [(AKController *)&v5 performActionForSender:v4];
}

- (BOOL)validateSender:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_SCalledDuringT.isa, "[AKControllerForTesting validateSender:]");
  v6.receiver = self;
  v6.super_class = AKControllerForTesting;
  LOBYTE(self) = [(AKController *)&v6 validateSender:v4];

  return self;
}

+ (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  NSLog(&cfstr_SCalledDuringT.isa, "+[AKControllerForTesting renderAnnotation:inContext:]");
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AKControllerForTesting;
  objc_msgSendSuper2(&v7, sel_renderAnnotation_inContext_, v6, a4);
}

- (void)reloadVisibleToolbarItemIdentifiers
{
  NSLog(&cfstr_SCalledDuringT.isa, a2, "[AKControllerForTesting reloadVisibleToolbarItemIdentifiers]");
  v3.receiver = self;
  v3.super_class = AKControllerForTesting;
  [(AKController *)&v3 reloadVisibleToolbarItemIdentifiers];
}

@end