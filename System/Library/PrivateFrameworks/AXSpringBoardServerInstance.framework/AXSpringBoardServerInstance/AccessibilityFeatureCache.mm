@interface AccessibilityFeatureCache
- (AccessibilityFeatureCache)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AccessibilityFeatureCache

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AccessibilityFeatureCache speakScreen](self forKey:{"speakScreen"), @"speakScreen"}];
  [coderCopy encodeBool:-[AccessibilityFeatureCache liveCaptions](self forKey:{"liveCaptions"), @"liveCaptions"}];
  [coderCopy encodeBool:-[AccessibilityFeatureCache liveSpeech](self forKey:{"liveSpeech"), @"liveSpeech"}];
  [coderCopy encodeBool:-[AccessibilityFeatureCache zoom](self forKey:{"zoom"), @"zoom"}];
  [coderCopy encodeBool:-[AccessibilityFeatureCache voiceControl](self forKey:{"voiceControl"), @"voiceControl"}];
  [coderCopy encodeBool:-[AccessibilityFeatureCache backTap](self forKey:{"backTap"), @"backTap"}];
  tripleClickOptions = [(AccessibilityFeatureCache *)self tripleClickOptions];
  [coderCopy encodeObject:tripleClickOptions forKey:@"tripleClickOptions"];
}

- (AccessibilityFeatureCache)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AccessibilityFeatureCache;
  coderCopy = coder;
  v4 = [(AccessibilityFeatureCache *)&v7 init];
  -[AccessibilityFeatureCache setSpeakScreen:](v4, "setSpeakScreen:", [coderCopy decodeBoolForKey:{@"speakScreen", v7.receiver, v7.super_class}]);
  -[AccessibilityFeatureCache setLiveCaptions:](v4, "setLiveCaptions:", [coderCopy decodeBoolForKey:@"liveCaptions"]);
  -[AccessibilityFeatureCache setLiveSpeech:](v4, "setLiveSpeech:", [coderCopy decodeBoolForKey:@"liveSpeech"]);
  -[AccessibilityFeatureCache setZoom:](v4, "setZoom:", [coderCopy decodeBoolForKey:@"zoom"]);
  -[AccessibilityFeatureCache setVoiceControl:](v4, "setVoiceControl:", [coderCopy decodeBoolForKey:@"voiceControl"]);
  -[AccessibilityFeatureCache setBackTap:](v4, "setBackTap:", [coderCopy decodeBoolForKey:@"backTap"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripleClickOptions"];

  [(AccessibilityFeatureCache *)v4 setTripleClickOptions:v5];
  return v4;
}

@end