@interface CKChatController_ClickyOrb_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axActionForSpeakSelection:(id)a3;
- (id)_menuForChatItem:(id)a3 withParentChatItem:(id)a4 menuAppearance:(int64_t)a5;
@end

@implementation CKChatController_ClickyOrb_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"_menuForChatItem:withParentChatItem:menuAppearance: @encode(id)" withFullSignature:{"@", "@", "q", 0}];
  [v3 validateClass:@"CKChatController" isKindOfClass:@"CKCoreChatController"];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"balloonViewForChatItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBalloonChatItem" hasInstanceMethod:@"balloonViewClass" withFullSignature:{"#", 0}];
  [v3 validateClass:@"CKMessagePartChatItem" isKindOfClass:@"CKBalloonChatItem"];
  [v3 validateClass:@"CKTextBalloonView"];
}

- (id)_menuForChatItem:(id)a3 withParentChatItem:(id)a4 menuAppearance:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  LOBYTE(v23) = 0;
  objc_opt_class();
  v29.receiver = self;
  v29.super_class = CKChatController_ClickyOrb_QSExtras;
  v10 = [(CKChatController_ClickyOrb_QSExtras *)&v29 _menuForChatItem:v8 withParentChatItem:v9 menuAppearance:a5];
  v11 = __UIAccessibilityCastAsClass();

  if (v11)
  {
    if (_AXSQuickSpeakEnabled())
    {
      v12 = [v11 children];
      v13 = [v12 count];

      if (v13 >= 2)
      {
        v14 = [v8 safeValueForKey:@"balloonViewClass"];
        v15 = [v14 isSubclassOfClass:NSClassFromString(&cfstr_Cktextballoonv.isa)];

        if (v15)
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x3032000000;
          v26 = __Block_byref_object_copy_;
          v27 = __Block_byref_object_dispose_;
          v28 = 0;
          v22 = v8;
          AXPerformSafeBlock();
          v16 = v24[5];

          _Block_object_dispose(&v23, 8);
          v17 = [(CKChatController_ClickyOrb_QSExtras *)self _axActionForSpeakSelection:v16];

          v18 = [v11 children];
          v19 = [v18 mutableCopy];

          [v19 insertObject:v17 atIndex:v13 - 1];
          v20 = [v11 menuByReplacingChildren:v19];

          v11 = v20;
        }
      }
    }
  }

  return v11;
}

- (id)_axActionForSpeakSelection:(id)a3
{
  v3 = a3;
  v4 = +[AXQuickSpeak sharedInstance];
  if ([v4 isSpeaking])
  {
    v5 = @"quickspeak.pause";
  }

  else
  {
    v5 = @"quickspeak.speak";
  }

  v6 = accessibilityQuickSpeakLocalizedString(v5);

  v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"rectangle.3.group.bubble.left"];
  v8 = MEMORY[0x29EDC7908];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __66__CKChatController_ClickyOrb_QSExtras__axActionForSpeakSelection___block_invoke;
  v12[3] = &unk_29F2F0090;
  v13 = v3;
  v9 = v3;
  v10 = [v8 actionWithTitle:v6 image:v7 identifier:0 handler:v12];

  return v10;
}

@end