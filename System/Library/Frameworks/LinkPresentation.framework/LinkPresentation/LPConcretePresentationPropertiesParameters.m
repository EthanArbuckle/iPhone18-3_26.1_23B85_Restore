@interface LPConcretePresentationPropertiesParameters
- (LPConcretePresentationPropertiesParameters)initWithUsesComputedPresentationProperties:(BOOL)a3 inComposeContext:(BOOL)a4 inSenderContext:(BOOL)a5 allowsTapping:(BOOL)a6 effectiveSizeClass:(unint64_t)a7 overrideSubtitleButtonColor:(id)a8 overrideActionButtonColor:(id)a9 overrideSubtitle:(id)a10 captionButton:(id)a11 captionTextButton:(id)a12 secondaryCaptionButton:(id)a13;
@end

@implementation LPConcretePresentationPropertiesParameters

- (LPConcretePresentationPropertiesParameters)initWithUsesComputedPresentationProperties:(BOOL)a3 inComposeContext:(BOOL)a4 inSenderContext:(BOOL)a5 allowsTapping:(BOOL)a6 effectiveSizeClass:(unint64_t)a7 overrideSubtitleButtonColor:(id)a8 overrideActionButtonColor:(id)a9 overrideSubtitle:(id)a10 captionButton:(id)a11 captionTextButton:(id)a12 secondaryCaptionButton:(id)a13
{
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v16 = a12;
  v17 = a13;
  v30.receiver = self;
  v30.super_class = LPConcretePresentationPropertiesParameters;
  v18 = [(LPConcretePresentationPropertiesParameters *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v18->_usesComputedPresentationProperties = a3;
    v18->_inComposeContext = a4;
    v18->_inSenderContext = a5;
    v18->_allowsTapping = a6;
    v18->_effectiveSizeClass = a7;
    objc_storeStrong(&v18->_overrideSubtitleButtonColor, a8);
    objc_storeStrong(&v19->_overrideActionButtonColor, a9);
    objc_storeStrong(&v19->_overrideSubtitle, a10);
    objc_storeStrong(&v19->_captionButton, a11);
    objc_storeStrong(&v19->_captionTextButton, a12);
    objc_storeStrong(&v19->_secondaryCaptionButton, a13);
    v20 = v19;
  }

  return v19;
}

@end