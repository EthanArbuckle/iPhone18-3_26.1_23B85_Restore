@interface AccessibilityFeatureCache
- (AccessibilityFeatureCache)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AccessibilityFeatureCache

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AccessibilityFeatureCache speakScreen](self forKey:{"speakScreen"), @"speakScreen"}];
  [v4 encodeBool:-[AccessibilityFeatureCache liveCaptions](self forKey:{"liveCaptions"), @"liveCaptions"}];
  [v4 encodeBool:-[AccessibilityFeatureCache liveSpeech](self forKey:{"liveSpeech"), @"liveSpeech"}];
  [v4 encodeBool:-[AccessibilityFeatureCache zoom](self forKey:{"zoom"), @"zoom"}];
  [v4 encodeBool:-[AccessibilityFeatureCache voiceControl](self forKey:{"voiceControl"), @"voiceControl"}];
  [v4 encodeBool:-[AccessibilityFeatureCache backTap](self forKey:{"backTap"), @"backTap"}];
  v5 = [(AccessibilityFeatureCache *)self tripleClickOptions];
  [v4 encodeObject:v5 forKey:@"tripleClickOptions"];
}

- (AccessibilityFeatureCache)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AccessibilityFeatureCache;
  v3 = a3;
  v4 = [(AccessibilityFeatureCache *)&v7 init];
  -[AccessibilityFeatureCache setSpeakScreen:](v4, "setSpeakScreen:", [v3 decodeBoolForKey:{@"speakScreen", v7.receiver, v7.super_class}]);
  -[AccessibilityFeatureCache setLiveCaptions:](v4, "setLiveCaptions:", [v3 decodeBoolForKey:@"liveCaptions"]);
  -[AccessibilityFeatureCache setLiveSpeech:](v4, "setLiveSpeech:", [v3 decodeBoolForKey:@"liveSpeech"]);
  -[AccessibilityFeatureCache setZoom:](v4, "setZoom:", [v3 decodeBoolForKey:@"zoom"]);
  -[AccessibilityFeatureCache setVoiceControl:](v4, "setVoiceControl:", [v3 decodeBoolForKey:@"voiceControl"]);
  -[AccessibilityFeatureCache setBackTap:](v4, "setBackTap:", [v3 decodeBoolForKey:@"backTap"]);
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"tripleClickOptions"];

  [(AccessibilityFeatureCache *)v4 setTripleClickOptions:v5];
  return v4;
}

@end