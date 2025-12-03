@interface LPConcretePresentationPropertiesParameters
- (LPConcretePresentationPropertiesParameters)initWithUsesComputedPresentationProperties:(BOOL)properties inComposeContext:(BOOL)context inSenderContext:(BOOL)senderContext allowsTapping:(BOOL)tapping effectiveSizeClass:(unint64_t)class overrideSubtitleButtonColor:(id)color overrideActionButtonColor:(id)buttonColor overrideSubtitle:(id)self0 captionButton:(id)self1 captionTextButton:(id)self2 secondaryCaptionButton:(id)self3;
@end

@implementation LPConcretePresentationPropertiesParameters

- (LPConcretePresentationPropertiesParameters)initWithUsesComputedPresentationProperties:(BOOL)properties inComposeContext:(BOOL)context inSenderContext:(BOOL)senderContext allowsTapping:(BOOL)tapping effectiveSizeClass:(unint64_t)class overrideSubtitleButtonColor:(id)color overrideActionButtonColor:(id)buttonColor overrideSubtitle:(id)self0 captionButton:(id)self1 captionTextButton:(id)self2 secondaryCaptionButton:(id)self3
{
  colorCopy = color;
  buttonColorCopy = buttonColor;
  subtitleCopy = subtitle;
  buttonCopy = button;
  textButtonCopy = textButton;
  captionButtonCopy = captionButton;
  v30.receiver = self;
  v30.super_class = LPConcretePresentationPropertiesParameters;
  v18 = [(LPConcretePresentationPropertiesParameters *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v18->_usesComputedPresentationProperties = properties;
    v18->_inComposeContext = context;
    v18->_inSenderContext = senderContext;
    v18->_allowsTapping = tapping;
    v18->_effectiveSizeClass = class;
    objc_storeStrong(&v18->_overrideSubtitleButtonColor, color);
    objc_storeStrong(&v19->_overrideActionButtonColor, buttonColor);
    objc_storeStrong(&v19->_overrideSubtitle, subtitle);
    objc_storeStrong(&v19->_captionButton, button);
    objc_storeStrong(&v19->_captionTextButton, textButton);
    objc_storeStrong(&v19->_secondaryCaptionButton, captionButton);
    v20 = v19;
  }

  return v19;
}

@end