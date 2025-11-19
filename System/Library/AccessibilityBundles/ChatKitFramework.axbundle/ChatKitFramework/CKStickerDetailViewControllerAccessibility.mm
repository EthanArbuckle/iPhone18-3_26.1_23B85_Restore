@interface CKStickerDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axChatItemForIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation CKStickerDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKStickerDetailViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CKStickerDetailViewController" hasInstanceMethod:@"stickerDetailsItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKStickerDetailViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"CKAssociatedStickerChatItem"];
  [v3 validateClass:@"CKAssociatedStickerChatItem" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMediaObject"];
  [v3 validateClass:@"CKMediaObject" hasInstanceMethod:@"transfer" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CKFileTransfer" hasRequiredInstanceMethod:@"attributionInfo"];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CKStickerDetailViewControllerAccessibility;
  v8 = [(CKStickerDetailViewControllerAccessibility *)&v16 tableView:v6 cellForRowAtIndexPath:v7];
  NSClassFromString(&cfstr_Ckstickerdetai_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = -[CKStickerDetailViewControllerAccessibility _axChatItemForIndex:](self, "_axChatItemForIndex:", [v7 item]);
    v10 = [v9 safeValueForKey:@"mediaObject"];
    v11 = [v10 safeValueForKey:@"transfer"];
    v12 = [v11 safeDictionaryForKey:@"attributionInfo"];
    v13 = [v12 objectForKey:@"accessl"];
    objc_opt_class();
    v14 = __UIAccessibilityCastAsSafeCategory();
    [v14 _axSetStickerDescription:v13];
  }

  return v8;
}

- (id)_axChatItemForIndex:(int64_t)a3
{
  v4 = [(CKStickerDetailViewControllerAccessibility *)self safeArrayForKey:@"stickerDetailsItems"];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

@end