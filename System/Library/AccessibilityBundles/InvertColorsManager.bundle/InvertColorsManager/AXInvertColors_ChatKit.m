@interface AXInvertColors_ChatKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ChatKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAttachmentCell"];
  [v3 validateClass:@"CKImageBalloonView" hasInstanceMethod:@"tailMask" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAppManagerAppTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"CKAppManagerAppTableViewCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKAppGrabberView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKAppGrabberView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"normalDragView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBrowserDragViewController" hasInstanceMethod:@"keyboardDragView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [v3 validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_headerView" withType:"UIView"];
  [v3 validateClass:@"CKBalloonTextView"];
  [v3 validateClass:@"CKBigEmojiBalloonView"];
  [v3 validateClass:@"CKTextMessagePartChatItem"];
  [v3 validateClass:@"CKTextMessagePartChatItem" isKindOfClass:@"CKMessagePartChatItem"];
  [v3 validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"isFromMe" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKTextBalloonView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKTextBalloonView" hasProperty:@"textView" withType:"@"];
  [v3 validateClass:@"CKTextBalloonView" hasProperty:@"delegate" withType:"@"];
  [v3 validateClass:@"CKTextBalloonView" isKindOfClass:@"CKColoredBalloonView"];
  [v3 validateClass:@"CKColoredBalloonView" hasProperty:@"color" withType:"c"];
  [v3 validateClass:@"CKTranscriptBalloonCell"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"chatItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKMessageEntryContentView" hasProperty:@"textView" withType:"@"];
  [v3 validateClass:@"CKMessageEntryContentView" hasProperty:@"subjectView" withType:"@"];
  [v3 validateClass:@"CKMessageEntryRichTextView" isKindOfClass:@"UITextView"];
  [v3 validateClass:@"CKInlineStickerBalloonView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"CKTranscriptBalloonCell" hasProperty:@"balloonView" withType:"@"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"CKTranscriptCollectionView" isKindOfClass:@"UICollectionView"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" conformsToProtocol:@"UIScrollViewDelegate"];
  [v3 validateClass:@"CKConversationListStandardCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKConversationListStandardCell" hasInstanceVariable:@"_summaryLabel" withType:"UILabel"];
  [v3 validateClass:@"CKConversationListStandardCell" hasInstanceVariable:@"_fromLabel" withType:"CKLabel"];
  [v3 validateClass:@"CKLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"CKAttachmentSearchResultCell" isKindOfClass:@"CKEditableSearchResultCell"];
  [v3 validateClass:@"CKEditableSearchResultCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIColor" hasClassMethod:@"_labelColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIColor" hasClassMethod:@"_secondaryLabelColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ChatKit.SendMenuCollectionViewCell" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"CKImageBalloonViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKAttachmentCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKBrowserPluginCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKAppManagerAppTableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKAppGrabberViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKBrowserDragViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKBalloonTextViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKColoredBalloonViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKAssociatedStickerTranscriptCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKTranscriptCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKConversationListStandardCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKAttachmentSearchResultCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CKPhotoSearchResultCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SendMenuCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end