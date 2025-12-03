@interface CKStickerDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axChatItemForIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation CKStickerDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKStickerDetailViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKStickerDetailViewController" hasInstanceMethod:@"stickerDetailsItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKStickerDetailViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"CKAssociatedStickerChatItem"];
  [validationsCopy validateClass:@"CKAssociatedStickerChatItem" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMediaObject"];
  [validationsCopy validateClass:@"CKMediaObject" hasInstanceMethod:@"transfer" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CKFileTransfer" hasRequiredInstanceMethod:@"attributionInfo"];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = CKStickerDetailViewControllerAccessibility;
  v8 = [(CKStickerDetailViewControllerAccessibility *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  NSClassFromString(&cfstr_Ckstickerdetai_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = -[CKStickerDetailViewControllerAccessibility _axChatItemForIndex:](self, "_axChatItemForIndex:", [pathCopy item]);
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

- (id)_axChatItemForIndex:(int64_t)index
{
  v4 = [(CKStickerDetailViewControllerAccessibility *)self safeArrayForKey:@"stickerDetailsItems"];
  v5 = [v4 objectAtIndex:index];

  return v5;
}

@end