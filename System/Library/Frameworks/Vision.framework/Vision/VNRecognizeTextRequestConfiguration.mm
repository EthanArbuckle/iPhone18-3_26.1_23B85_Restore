@interface VNRecognizeTextRequestConfiguration
- (VNRecognizeTextRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNRecognizeTextRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = VNRecognizeTextRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setRecognitionLanguages:self->_recognitionLanguages];
    [v5 setRecognitionLevel:self->_recognitionLevel];
    [v5 setUsesLanguageCorrection:self->_usesLanguageCorrection];
    [v5 setAutomaticallyDetectsLanguage:self->_automaticallyDetectsLanguage];
    *&v6 = self->_minimumTextHeight;
    [v5 setMinimumTextHeight:v6];
    [v5 setKeepResourcesLoaded:self->_keepResourcesLoaded];
  }

  return v5;
}

- (VNRecognizeTextRequestConfiguration)initWithRequestClass:(Class)class
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VNRecognizeTextRequestConfiguration;
  v3 = [(VNStatefulRequestConfiguration *)&v7 initWithRequestClass:class];
  if (v3)
  {
    v8[0] = @"en_US";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    recognitionLanguages = v3->_recognitionLanguages;
    v3->_recognitionLanguages = v4;

    v3->_recognitionLevel = 0;
    v3->_usesLanguageCorrection = 1;
    v3->_automaticallyDetectsLanguage = 0;
    v3->_minimumTextHeight = 0.0;
    v3->_keepResourcesLoaded = 0;
  }

  return v3;
}

@end