@interface AXInvertColors_ChatKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ChatKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAttachmentCell"];
  [validationsCopy validateClass:@"CKImageBalloonView" hasInstanceMethod:@"tailMask" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAppManagerAppTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"CKAppManagerAppTableViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKAppGrabberView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"normalDragView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"keyboardDragView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_headerView" withType:"UIView"];
  [validationsCopy validateClass:@"CKBalloonTextView"];
  [validationsCopy validateClass:@"CKBigEmojiBalloonView"];
  [validationsCopy validateClass:@"CKTextMessagePartChatItem"];
  [validationsCopy validateClass:@"CKTextMessagePartChatItem" isKindOfClass:@"CKMessagePartChatItem"];
  [validationsCopy validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"isFromMe" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKTextBalloonView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKTextBalloonView" hasProperty:@"textView" withType:"@"];
  [validationsCopy validateClass:@"CKTextBalloonView" hasProperty:@"delegate" withType:"@"];
  [validationsCopy validateClass:@"CKTextBalloonView" isKindOfClass:@"CKColoredBalloonView"];
  [validationsCopy validateClass:@"CKColoredBalloonView" hasProperty:@"color" withType:"c"];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell"];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"chatItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasProperty:@"textView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasProperty:@"subjectView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryRichTextView" isKindOfClass:@"UITextView"];
  [validationsCopy validateClass:@"CKInlineStickerBalloonView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" hasProperty:@"balloonView" withType:"@"];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKTranscriptCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" conformsToProtocol:@"UIScrollViewDelegate"];
  [validationsCopy validateClass:@"CKConversationListStandardCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKConversationListStandardCell" hasInstanceVariable:@"_summaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CKConversationListStandardCell" hasInstanceVariable:@"_fromLabel" withType:"CKLabel"];
  [validationsCopy validateClass:@"CKLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"CKAttachmentSearchResultCell" isKindOfClass:@"CKEditableSearchResultCell"];
  [validationsCopy validateClass:@"CKEditableSearchResultCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"_labelColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"_secondaryLabelColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ChatKit.SendMenuCollectionViewCell" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CKImageBalloonViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKAttachmentCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKBrowserPluginCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKAppManagerAppTableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKAppGrabberViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKBrowserDragViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKBalloonTextViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKColoredBalloonViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKAssociatedStickerTranscriptCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKTranscriptCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKConversationListStandardCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKAttachmentSearchResultCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CKPhotoSearchResultCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SendMenuCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end