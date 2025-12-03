@interface AXVOLiveRecognitionActivity
- (AXVOLiveRecognitionActivity)init;
- (AXVOLiveRecognitionActivity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (AXVOLiveRecognitionActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  -[AXVOLiveRecognitionActivity setIsActive:](v5, "setIsActive:", [coderCopy decodeBoolForKey:@"isActive"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [(AXVOLiveRecognitionActivity *)v5 setName:v6];

  -[AXVOLiveRecognitionActivity setAutomaticFlashlightEnabled:](v5, "setAutomaticFlashlightEnabled:", [coderCopy decodeBoolForKey:@"automaticFlashlightEnabled"]);
  -[AXVOLiveRecognitionActivity setScenes:](v5, "setScenes:", [coderCopy decodeBoolForKey:@"scenes"]);
  -[AXVOLiveRecognitionActivity setSceneFeedbacksSpeech:](v5, "setSceneFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"sceneFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setSceneFeedbacksBraille:](v5, "setSceneFeedbacksBraille:", [coderCopy decodeBoolForKey:@"sceneFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPeopleDetection:](v5, "setPeopleDetection:", [coderCopy decodeBoolForKey:@"peopleDetection"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksSpeech:](v5, "setPeopleFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"peopleFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksBraille:](v5, "setPeopleFeedbacksBraille:", [coderCopy decodeBoolForKey:@"peopleFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksSounds:](v5, "setPeopleFeedbacksSounds:", [coderCopy decodeBoolForKey:@"peopleFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setPeopleFeedbacksHaptics:](v5, "setPeopleFeedbacksHaptics:", [coderCopy decodeBoolForKey:@"peopleFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setDoorsDetection:](v5, "setDoorsDetection:", [coderCopy decodeBoolForKey:@"doorsDetection"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksSpeech:](v5, "setDoorsFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"doorsFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksBraille:](v5, "setDoorsFeedbacksBraille:", [coderCopy decodeBoolForKey:@"doorsFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksSounds:](v5, "setDoorsFeedbacksSounds:", [coderCopy decodeBoolForKey:@"doorsFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setDoorsFeedbacksHaptics:](v5, "setDoorsFeedbacksHaptics:", [coderCopy decodeBoolForKey:@"doorsFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setFurnitureDetection:](v5, "setFurnitureDetection:", [coderCopy decodeBoolForKey:@"furnitureDetection"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksSpeech:](v5, "setFurnitureFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"furnitureFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksBraille:](v5, "setFurnitureFeedbacksBraille:", [coderCopy decodeBoolForKey:@"furnitureFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksSounds:](v5, "setFurnitureFeedbacksSounds:", [coderCopy decodeBoolForKey:@"furnitureFeedbacksSounds"]);
  -[AXVOLiveRecognitionActivity setFurnitureFeedbacksHaptics:](v5, "setFurnitureFeedbacksHaptics:", [coderCopy decodeBoolForKey:@"furnitureFeedbacksHaptics"]);
  -[AXVOLiveRecognitionActivity setTextDetection:](v5, "setTextDetection:", [coderCopy decodeBoolForKey:@"textDetection"]);
  -[AXVOLiveRecognitionActivity setTextFeedbacksSpeech:](v5, "setTextFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"textFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setTextFeedbacksBraille:](v5, "setTextFeedbacksBraille:", [coderCopy decodeBoolForKey:@"textFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeak:](v5, "setPointAndSpeak:", [coderCopy decodeBoolForKey:@"pointAndSpeak"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksSpeech:](v5, "setPointAndSpeakFeedbacksSpeech:", [coderCopy decodeBoolForKey:@"pointAndSpeakFeedbacksSpeech"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksBraille:](v5, "setPointAndSpeakFeedbacksBraille:", [coderCopy decodeBoolForKey:@"pointAndSpeakFeedbacksBraille"]);
  -[AXVOLiveRecognitionActivity setPointAndSpeakFeedbacksSounds:](v5, "setPointAndSpeakFeedbacksSounds:", [coderCopy decodeBoolForKey:@"pointAndSpeakFeedbacksSounds"]);
  v7 = [coderCopy decodeBoolForKey:@"pointAndSpeakFeedbacksHaptics"];

  [(AXVOLiveRecognitionActivity *)v5 setPointAndSpeakFeedbacksHaptics:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity isActive](self forKey:{"isActive"), @"isActive"}];
  name = [(AXVOLiveRecognitionActivity *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity automaticFlashlightEnabled](self forKey:{"automaticFlashlightEnabled"), @"automaticFlashlightEnabled"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity scenes](self forKey:{"scenes"), @"scenes"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity sceneFeedbacksSpeech](self forKey:{"sceneFeedbacksSpeech"), @"sceneFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity sceneFeedbacksBraille](self forKey:{"sceneFeedbacksBraille"), @"sceneFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity peopleDetection](self forKey:{"peopleDetection"), @"peopleDetection"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksSpeech](self forKey:{"peopleFeedbacksSpeech"), @"peopleFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksBraille](self forKey:{"peopleFeedbacksBraille"), @"peopleFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksSounds](self forKey:{"peopleFeedbacksSounds"), @"peopleFeedbacksSounds"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity peopleFeedbacksHaptics](self forKey:{"peopleFeedbacksHaptics"), @"peopleFeedbacksHaptics"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity doorsDetection](self forKey:{"doorsDetection"), @"doorsDetection"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksSpeech](self forKey:{"doorsFeedbacksSpeech"), @"doorsFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksBraille](self forKey:{"doorsFeedbacksBraille"), @"doorsFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksSounds](self forKey:{"doorsFeedbacksSounds"), @"doorsFeedbacksSounds"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity doorsFeedbacksHaptics](self forKey:{"doorsFeedbacksHaptics"), @"doorsFeedbacksHaptics"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity furnitureDetection](self forKey:{"furnitureDetection"), @"furnitureDetection"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksSpeech](self forKey:{"furnitureFeedbacksSpeech"), @"furnitureFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksBraille](self forKey:{"furnitureFeedbacksBraille"), @"furnitureFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksSounds](self forKey:{"furnitureFeedbacksSounds"), @"furnitureFeedbacksSounds"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity furnitureFeedbacksHaptics](self forKey:{"furnitureFeedbacksHaptics"), @"furnitureFeedbacksHaptics"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity textDetection](self forKey:{"textDetection"), @"textDetection"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity textFeedbacksSpeech](self forKey:{"textFeedbacksSpeech"), @"textFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity textFeedbacksBraille](self forKey:{"textFeedbacksBraille"), @"textFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeak](self forKey:{"pointAndSpeak"), @"pointAndSpeak"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksSpeech](self forKey:{"pointAndSpeakFeedbacksSpeech"), @"pointAndSpeakFeedbacksSpeech"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksBraille](self forKey:{"pointAndSpeakFeedbacksBraille"), @"pointAndSpeakFeedbacksBraille"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksSounds](self forKey:{"pointAndSpeakFeedbacksSounds"), @"pointAndSpeakFeedbacksSounds"}];
  [coderCopy encodeBool:-[AXVOLiveRecognitionActivity pointAndSpeakFeedbacksHaptics](self forKey:{"pointAndSpeakFeedbacksHaptics"), @"pointAndSpeakFeedbacksHaptics"}];
}

@end