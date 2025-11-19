@interface AXVOLiveRecognitionActivity
- (AXVOLiveRecognitionActivity)init;
- (AXVOLiveRecognitionActivity)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXVOLiveRecognitionActivity

- (AXVOLiveRecognitionActivity)init
{
  v4.receiver = self;
  v4.super_class = AXVOLiveRecognitionActivity;
  v2 = [(AXVOLiveRecognitionActivity *)&v4 init];
  [(AXVOLiveRecognitionActivity *)v2 setIsActive:0];
  [(AXVOLiveRecognitionActivity *)v2 setAutomaticFlashlightEnabled:1];
  [(AXVOLiveRecognitionActivity *)v2 setScenes:1];
  [(AXVOLiveRecognitionActivity *)v2 setSceneFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setSceneFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setPeopleDetection:1];
  [(AXVOLiveRecognitionActivity *)v2 setPeopleFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setPeopleFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setPeopleFeedbacksSounds:1];
  [(AXVOLiveRecognitionActivity *)v2 setPeopleFeedbacksHaptics:1];
  [(AXVOLiveRecognitionActivity *)v2 setDoorsDetection:1];
  [(AXVOLiveRecognitionActivity *)v2 setDoorsFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setDoorsFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setDoorsFeedbacksSounds:1];
  [(AXVOLiveRecognitionActivity *)v2 setDoorsFeedbacksHaptics:1];
  [(AXVOLiveRecognitionActivity *)v2 setFurnitureDetection:1];
  [(AXVOLiveRecognitionActivity *)v2 setFurnitureFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setFurnitureFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setFurnitureFeedbacksSounds:1];
  [(AXVOLiveRecognitionActivity *)v2 setFurnitureFeedbacksHaptics:1];
  [(AXVOLiveRecognitionActivity *)v2 setTextDetection:1];
  [(AXVOLiveRecognitionActivity *)v2 setTextFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setTextFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setPointAndSpeak:1];
  [(AXVOLiveRecognitionActivity *)v2 setPointAndSpeakFeedbacksSpeech:1];
  [(AXVOLiveRecognitionActivity *)v2 setPointAndSpeakFeedbacksBraille:1];
  [(AXVOLiveRecognitionActivity *)v2 setPointAndSpeakFeedbacksSounds:1];
  [(AXVOLiveRecognitionActivity *)v2 setPointAndSpeakFeedbacksHaptics:1];
  return v2;
}

- (AXVOLiveRecognitionActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  -[AXVOLiveRecognitionActivity setIsActive:](v5, "setIsActive:", [v4 decodeBoolForKey:@"isActive"]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [(AXVOLiveRecognitionActivity *)v5 setName:v6];

  -[AXVOLiveRecognitionActivity setAutomaticFlashlightEnabled:](v5, "setAutomaticFlashlightEnabled:", [v4 decodeBoolForKey:@"automaticFlashlightEnabled"]);
  -[AXVOLiveRecognitionActivity setScenes:](v5, "setScenes:", [v4 decodeBoolForKey:@"scenes"]);
  -[AXVOLiveRecognitionActivity setSceneFeedbacksSpeech:](v5, "setSceneFeedbacksSpeech:", [v4 decodeBoolForKey:@"sceneFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setSceneFeedbacksBraille:](v5, "setSceneFeedbacksBraille:", [v4 decodeBoolForKey:@"sceneFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPeopleDetection:](v5, "setPeopleDetection:", [v4 decodeBoolForKey:@"peopleDetection"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksSpeech:](v5, "setPeopleFeedbacksSpeech:", [v4 decodeBoolForKey:@"peopleFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksBraille:](v5, "setPeopleFeedbacksBraille:", [v4 decodeBoolForKey:@"peopleFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksSounds:](v5, "setPeopleFeedbacksSounds:", [v4 decodeBoolForKey:@"peopleFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksHaptics:](v5, "setPeopleFeedbacksHaptics:", [v4 decodeBoolForKey:@"peopleFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setDoorsDetection:](v5, "setDoorsDetection:", [v4 decodeBoolForKey:@"doorsDetection"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksSpeech:](v5, "setDoorsFeedbacksSpeech:", [v4 decodeBoolForKey:@"doorsFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksBraille:](v5, "setDoorsFeedbacksBraille:", [v4 decodeBoolForKey:@"doorsFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksSounds:](v5, "setDoorsFeedbacksSounds:", [v4 decodeBoolForKey:@"doorsFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksHaptics:](v5, "setDoorsFeedbacksHaptics:", [v4 decodeBoolForKey:@"doorsFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setFurnitureDetection:](v5, "setFurnitureDetection:", [v4 decodeBoolForKey:@"furnitureDetection"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksSpeech:](v5, "setFurnitureFeedbacksSpeech:", [v4 decodeBoolForKey:@"furnitureFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksBraille:](v5, "setFurnitureFeedbacksBraille:", [v4 decodeBoolForKey:@"furnitureFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksSounds:](v5, "setFurnitureFeedbacksSounds:", [v4 decodeBoolForKey:@"furnitureFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksHaptics:](v5, "setFurnitureFeedbacksHaptics:", [v4 decodeBoolForKey:@"furnitureFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setTextDetection:](v5, "setTextDetection:", [v4 decodeBoolForKey:@"textDetection"]);
  -[AXVOLiveRecognitionActivity setTextFeedbacksSpeech:](v5, "setTextFeedbacksSpeech:", [v4 decodeBoolForKey:@"textFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setTextFeedbacksBraille:](v5, "setTextFeedbacksBraille:", [v4 decodeBoolForKey:@"textFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeak:](v5, "setPointAndSpeak:", [v4 decodeBoolForKey:@"pointAndSpeak"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksSpeech:](v5, "setPointAndSpeakFeedbacksSpeech:", [v4 decodeBoolForKey:@"pointAndSpeakFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksBraille:](v5, "setPointAndSpeakFeedbacksBraille:", [v4 decodeBoolForKey:@"pointAndSpeakFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksSounds:](v5, "setPointAndSpeakFeedbacksSounds:", [v4 decodeBoolForKey:@"pointAndSpeakFeedbacksSounds"]);
  v7 = [v4 decodeBoolForKey:@"pointAndSpeakFeedbacksHaptics"];

  [(AXVOLiveRecognitionActivity *)v5 setPointAndSpeakFeedbacksHaptics:v7];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[AXVOLiveRecognitionActivity isActive](self forKey:{"isActive"), @"isActive"}];
  v4 = [(AXVOLiveRecognitionActivity *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeBool:-[AXVOLiveRecognitionActivity automaticFlashlightEnabled](self forKey:{"automaticFlashlightEnabled"), @"automaticFlashlightEnabled"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity scenes](self forKey:{"scenes"), @"scenes"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity sceneFeedbacksSpeech](self forKey:{"sceneFeedbacksSpeech"), @"sceneFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity sceneFeedbacksBraille](self forKey:{"sceneFeedbacksBraille"), @"sceneFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity peopleDetection](self forKey:{"peopleDetection"), @"peopleDetection"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksSpeech](self forKey:{"peopleFeedbacksSpeech"), @"peopleFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksBraille](self forKey:{"peopleFeedbacksBraille"), @"peopleFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksSounds](self forKey:{"peopleFeedbacksSounds"), @"peopleFeedbacksSounds"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksHaptics](self forKey:{"peopleFeedbacksHaptics"), @"peopleFeedbacksHaptics"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity doorsDetection](self forKey:{"doorsDetection"), @"doorsDetection"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksSpeech](self forKey:{"doorsFeedbacksSpeech"), @"doorsFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksBraille](self forKey:{"doorsFeedbacksBraille"), @"doorsFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksSounds](self forKey:{"doorsFeedbacksSounds"), @"doorsFeedbacksSounds"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksHaptics](self forKey:{"doorsFeedbacksHaptics"), @"doorsFeedbacksHaptics"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity furnitureDetection](self forKey:{"furnitureDetection"), @"furnitureDetection"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksSpeech](self forKey:{"furnitureFeedbacksSpeech"), @"furnitureFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksBraille](self forKey:{"furnitureFeedbacksBraille"), @"furnitureFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksSounds](self forKey:{"furnitureFeedbacksSounds"), @"furnitureFeedbacksSounds"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksHaptics](self forKey:{"furnitureFeedbacksHaptics"), @"furnitureFeedbacksHaptics"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity textDetection](self forKey:{"textDetection"), @"textDetection"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity textFeedbacksSpeech](self forKey:{"textFeedbacksSpeech"), @"textFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity textFeedbacksBraille](self forKey:{"textFeedbacksBraille"), @"textFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeak](self forKey:{"pointAndSpeak"), @"pointAndSpeak"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksSpeech](self forKey:{"pointAndSpeakFeedbacksSpeech"), @"pointAndSpeakFeedbacksSpeech"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksBraille](self forKey:{"pointAndSpeakFeedbacksBraille"), @"pointAndSpeakFeedbacksBraille"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksSounds](self forKey:{"pointAndSpeakFeedbacksSounds"), @"pointAndSpeakFeedbacksSounds"}];
  [v5 encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksHaptics](self forKey:{"pointAndSpeakFeedbacksHaptics"), @"pointAndSpeakFeedbacksHaptics"}];
}

@end