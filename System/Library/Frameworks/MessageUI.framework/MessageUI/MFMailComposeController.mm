@interface MFMailComposeController
+ (BOOL)isSetupForDeliveryAllowingRestrictedAccounts:(BOOL)accounts;
+ (BOOL)isSetupForDeliveryAllowingRestrictedAccounts:(BOOL)accounts originatingBundleID:(id)d sourceAccountManagement:(int)management;
+ (NSArray)menuCommands;
+ (id)preferenceForKey:(id)key;
+ (id)signpostLog;
- (BOOL)_anyRecipientViewContainsAddress:(id)address;
- (BOOL)_canUseOrnamentViewController;
- (BOOL)_checkWhetherForwardingAddressIsPresent;
- (BOOL)_hasCustomSignatureConfigured;
- (BOOL)_hasRecipients;
- (BOOL)_isActiveComposeController;
- (BOOL)_isPopoverOrActionSheetOrAlertVisible;
- (BOOL)_isSetupForDelivery;
- (BOOL)_isTabKeyCommandInvocationPossible;
- (BOOL)_secureCompositionManagerHasRecipients;
- (BOOL)_setSendingEmailAddress:(id)address;
- (BOOL)_setSendingEmailAddressAsHME:(id)e;
- (BOOL)_shouldAutoSaveQuickReply;
- (BOOL)_shouldAutosaveAfterTimerFiredWithInterval:(double)interval;
- (BOOL)_shouldEnableSMIMEMenu;
- (BOOL)_shouldEnableSendButton;
- (BOOL)_shouldRestoreAttachments:(id)attachments;
- (BOOL)_shouldShowSendLaterOnboarding;
- (BOOL)_shouldUseMailDrop;
- (BOOL)bccAddressesDirtied;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowContentVariationPicker;
- (BOOL)canShowFromField;
- (BOOL)canShowImageSizeField;
- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view;
- (BOOL)composeRecipientViewShowingSearchResults:(id)results;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (BOOL)getPrefersLargeTitles;
- (BOOL)hasAttachments;
- (BOOL)isAddressHideMyEmail:(id)email;
- (BOOL)isCloudKitShare;
- (BOOL)isHideMyEmailMessage;
- (BOOL)isManagedAccount;
- (BOOL)isQuickReply;
- (BOOL)isShowingRecentPersonCard;
- (BOOL)isVerticallyCompact;
- (BOOL)presentSearchResultsForComposeRecipientView:(id)view;
- (BOOL)sendingAccountIsExchange;
- (BOOL)sendingEmailDirtied;
- (BOOL)shouldShowSMIMEButton;
- (CGRect)_optimalRectForPresentingPopoverInComposeWebView;
- (CGRect)frameForAttachmentWithIdentifier:(id)identifier;
- (CGRect)rectOfAttachment:(id)attachment;
- (Class)_deliveryClass;
- (EMObjectID)originalMessageObjectID;
- (MFMailComposeController)initWithCompositionContext:(id)context options:(unint64_t)options;
- (MFMailComposeControllerQuickReplyActionButtonProvider)quickReplyActionButtonProvider;
- (MFMailComposeControllerQuickReplyDelegate)quickReplyDelegate;
- (MFMailComposeCoordinator)composeCoordinator;
- (MFSMIMEControl)smimeStatusControl;
- (NSString)autosaveIdentifier;
- (NSString)documentID;
- (NSString)subject;
- (QLPreviewController)previewController;
- (UIEdgeInsets)additionalContentInsetForComposeWebView:(id)view;
- (VNDocumentCameraViewController)documentCameraViewController;
- (id)_addressFieldForField:(int64_t)field;
- (id)_allRecipientViews;
- (id)_allRecipients;
- (id)_alternateTitleView;
- (id)_attachmentToMarkup;
- (id)_availableAccountProxies;
- (id)_contactViewControllerForRecipient:(id)recipient;
- (id)_copyMessageDataForActivityHandoff;
- (id)_copyMessagePlainTextForDonationRemoveQuotes:(BOOL)quotes;
- (id)_createSendButtonItemWithPossibleTitles:(id)titles;
- (id)_csPeopleFromAddresses:(id)addresses;
- (id)_defaultAccount;
- (id)_emailAddressesWithHME;
- (id)_estimateMessageSize;
- (id)_messageForDraft;
- (id)_messageToDonate;
- (id)_messageWithCompositionSpecification:(id)specification useSuspendInfo:(BOOL)info endingEditing:(BOOL)editing;
- (id)_missingIdentityErrorWithFormat:(id)format title:(id)title;
- (id)_nextDrawingName;
- (id)_originalContentMessagesIfExists;
- (id)_originalContentOfMessagesInReplyToMessage:(id)message;
- (id)_originalMessageCategorySubtype;
- (id)_outgoingMessageWithSubstituteDocument:(id)document compositionSpecification:(id)specification useSuspendInfo:(BOOL)info endingEditing:(BOOL)editing;
- (id)_recipientsFromRecipientTextView:(uint64_t)view;
- (id)_senderEmailAddress;
- (id)_sheetDetentForIdentifier:(id)identifier viewController:(id)controller;
- (id)addressesForField:(int64_t)field;
- (id)allRecipientNamesAndAddresses;
- (id)attachments;
- (id)bccRecipients;
- (id)ccRecipients;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)composeRecipientView:(id)view composeRecipientForContact:(id)contact;
- (id)composeWebView;
- (id)contentVariationName;
- (id)csPeopleForField:(int64_t)field;
- (id)currentScaleImageSize;
- (id)delegate;
- (id)dismissActionsForPreviewController:(id)controller;
- (id)emailAddresses;
- (id)inputContextHistory;
- (id)keyCommands;
- (id)mailComposeView;
- (id)navigationBarTitle;
- (id)navigationControllerForRecentPersonCard;
- (id)nextResponderForRecipientView:(id)view;
- (id)popoverManagerCreateIfNeeded:(BOOL)needed;
- (id)presentingViewControllerForComposeFormattingController:(id)controller;
- (id)presentingViewControllerForComposeStyleSelector:(id)selector;
- (id)presentingViewControllerForPhotoPicker:(id)picker;
- (id)sendLaterMenu;
- (id)sendingAccountProxy;
- (id)sendingAddressForControl:(id)control;
- (id)sendingEmailAddress;
- (id)shouldCreateRichTextRepresentation;
- (id)smartReplyThreadIdentifier;
- (id)toRecipients;
- (int64_t)_fieldForAddressField:(id)field;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)compositionType;
- (int64_t)popoverPresentationStyleForViewController:(id)controller;
- (unint64_t)_defaultAtomPresentationOptions;
- (unint64_t)_reloadNumberOfReformattedAddressesWithMaximumWidth:(double)width defaultFontSize:(double)size;
- (unint64_t)_sizeForScale:(unint64_t)scale imagesOnly:(BOOL)only;
- (unint64_t)presentationOptionsForRecipient:(id)recipient;
- (unint64_t)signpostID;
- (unint64_t)smimeStatusOptionsForControl:(id)control;
- (void)_accountsChanged:(id)changed;
- (void)_attachmentLoaderFinishedWithOriginalContent:(id)content;
- (void)_autosaveTimerFired:(id)fired;
- (void)_bodyTextChanged;
- (void)_checkForCanSendMailWithContinuation:(id)continuation;
- (void)_checkForEmptySubjectWithContinuation:(id)continuation;
- (void)_checkForInFlightAssetDownloadsWithContinuation:(id)continuation;
- (void)_checkForInvalidAddressesWithContinuation:(id)continuation;
- (void)_checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource:(id)source withContinuation:(id)continuation;
- (void)_checkForReplyAndForwardRestriction;
- (void)_checkForSendLaterDisclaimerWithContinuation:(id)continuation;
- (void)_checkForShareParticipantsWithContinuation:(id)continuation;
- (void)_checkForUnencryptedWithContinuation:(id)continuation;
- (void)_clearMessageValues;
- (void)_closeShortcutInvoked:(id)invoked;
- (void)_composeViewDidDraw:(id)draw;
- (void)_configureSender:(id)sender asSourceForPopoverPresentationController:(id)controller;
- (void)_createAndAddHandoffProgressViewIfNecessary;
- (void)_deleteFileAtURLIfInTmp:(id)tmp;
- (void)_didDismissDocumentPicker;
- (void)_dismissAndCleanupCameraPickerController;
- (void)_dismissPeoplePicker:(id)picker;
- (void)_dismissPersonCard;
- (void)_dismissPresentedHalfSheet;
- (void)_dismissPresentedViewController;
- (void)_dismissRichLinkMenu;
- (void)_displayMetricsDidChange;
- (void)_displayPopoverAlert:(id)alert;
- (void)_documentCameraViewControllerDidFinish;
- (void)_draftContentDidChange;
- (void)_explainAirplaneMode;
- (void)_finishModalAlertClosingComposition:(BOOL)composition;
- (void)_finishedComposing;
- (void)_finishedLoadingAllContentAndAttachments;
- (void)_focusBccHeaderCommandInvoked:(id)invoked;
- (void)_focusGained:(id)gained;
- (void)_getHMEEmailFromOriginalAddress:(id)address;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_hideHandoffProgressViewAnimated:(BOOL)animated;
- (void)_insertDrawingFromExternalURL:(uint64_t)l;
- (void)_invalidateInputContextHistoryDebounced:(BOOL)debounced;
- (void)_leaveMessageInOutbox;
- (void)_loadAttachments;
- (void)_loadCompositionContext;
- (void)_loadingContextDidLoadMessage;
- (void)_makeComposeUserActivityCurrent;
- (void)_managedConfigurationEffectiveSettingsDidChangeNotification:(id)notification;
- (void)_performBlockWithStrongComposeCoordinator:(id)coordinator;
- (void)_performDeferredActionIfNecessary;
- (void)_photoPickerDidDisappear;
- (void)_physicallyScaleImagesToScale:(unint64_t)scale attachments:(id)attachments;
- (void)_popoverWillBePresented:(id)presented;
- (void)_prepareCompositionContextForLoading:(id)loading;
- (void)_prepareForSuspend;
- (void)_prepareHMEAddressesWithContinuation:(id)continuation;
- (void)_prepareImagesForSendFromPresentationSource:(id)source withContinuation:(id)continuation;
- (void)_preparePhotoPicker;
- (void)_presentLinkEditorWithName:(id)name text:(id)text mode:(unint64_t)mode completion:(id)completion;
- (void)_presentModalAlert:(id)alert fromPresentationSource:(id)source;
- (void)_presentSenderCollaborationAlertIfNecessaryForSendingAddress:(id)address;
- (void)_presentWarnings:(id)warnings index:(unint64_t)index suggestionsService:(id)service presentationSource:(id)source completionHandler:(id)handler;
- (void)_promptForMailDropIfNecessaryWithContinuation:(id)continuation;
- (void)_recipientTextChanged:(id)changed;
- (void)_recipientTextChangedForHME;
- (void)_removeAutoBccSendingAddress:(id)address;
- (void)_removeRecent;
- (void)_replaceAttachment:(void *)attachment withDocumentAtURL:(void *)l completion:;
- (void)_reportUserEngagement:(BOOL)engagement suggestionService:(id)service warning:(id)warning;
- (void)_resetProxyGenerator;
- (void)_resetSecureCompositionManagerUsingNewAccount:(BOOL)account;
- (void)_restoreMessageValues;
- (void)_retainFocusOfComposeWebViewIfRequired:(id)required;
- (void)_saveMessageValues;
- (void)_scaleImages;
- (void)_sendAnalyticsSignalForResult:(int64_t)result;
- (void)_sendViewVisibilityNotification:(id)notification window:(id)window;
- (void)_setAutosaveIsValid:(BOOL)valid;
- (void)_setBodyAndSignatureWithCoordinator:(id)coordinator htmlDataObjectWithSignature:(id)signature htmlDataObject:(id)object;
- (void)_setInitialStateForImageField;
- (void)_setIsLoading:(BOOL)loading;
- (void)_setLastFocusedRecipientView:(id)view;
- (void)_setRecipients:(id)recipients forField:(int64_t)field;
- (void)_setTitleBarSubtitleText:(id)text style:(unint64_t)style;
- (void)_setUpDeliveryObject:(unint64_t)object completionHandler:(id)handler;
- (void)_setUpDraftForHME;
- (void)_setupForDraft:(id)draft;
- (void)_setupForExistingNewMessage:(id)message content:(id)content;
- (void)_setupForOutbox:(id)outbox;
- (void)_setupForQuickReply;
- (void)_setupLargeTitleAccessory;
- (void)_setupNavigationBarItems;
- (void)_setupSendLaterOnboardingPaletteIfNecessary;
- (void)_showCamera:(id)camera;
- (void)_showMissingIdentityAlert;
- (void)_showOriginalAttachmentsIfNecessary:(id)necessary;
- (void)_showPersonCardForRecipient:(id)recipient showDeleteButton:(BOOL)button;
- (void)_showPhotoPicker:(id)picker;
- (void)_showSystemPhotoPicker:(id)picker;
- (void)_startAutosaveTimerIfNeeded;
- (void)_subjectTextChanged:(id)changed;
- (void)_updateAndStartCompletingCcFieldWithMissingRecipients:(id)recipients;
- (void)_updateAutoBccSendingAddress:(id)address withNewSendingAddress:(id)sendingAddress alwaysAdd:(BOOL)add;
- (void)_updateAutosaveSession;
- (void)_updateIdentityStatus:(int64_t *)status withPolicy:(int64_t)policy identity:(__SecIdentity *)identity error:(id)error;
- (void)_updateImageSizeTitles;
- (void)_updateManagedPasteboardOwner;
- (void)_updateNavigationBarTitleAnimated:(BOOL)animated;
- (void)_updateOriginalBccStatusForRestoreAddingAddress:(BOOL)address;
- (void)_updatePersonCard;
- (void)_updateRecipientAtomStyles;
- (void)_updateSMIMEButtonEnabledForRecipientCount;
- (void)_updateSMIMEButtonForEncryptionStatus:(int64_t)status;
- (void)_updateSMIMEStatusControl;
- (void)_updateSendAndCloseButtonTintColor;
- (void)_updateSendAndCloseEnabled;
- (void)_updateTitleBarForEncryptionStatus:(int64_t)status;
- (void)_willPresentDocumentPicker;
- (void)activityHandoffOperation:(id)operation didFailWithError:(id)error;
- (void)activityHandoffOperation:(id)operation didFinishReceivingData:(id)data;
- (void)activityHandoffOperation:(id)operation didFinishSendingDataWithResult:(int64_t)result;
- (void)activityHandoffOperationReceivedBytes:(id)bytes;
- (void)addAddress:(id)address field:(int64_t)field;
- (void)addLink:(id)link;
- (void)addSignature:(BOOL)signature;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)autocompleteGroupDetailViewController:(id)controller didAskToRemoveGroup:(id)group;
- (void)autocompleteGroupDetailViewControllerDidCancel:(id)cancel;
- (void)autosaveIfNecessaryWithHandler:(id)handler;
- (void)autosaveWithHandler:(id)handler;
- (void)backUpDraft;
- (void)changeQuoteLevel:(int64_t)level;
- (void)clearAllFields;
- (void)clearInitialTitle;
- (void)close;
- (void)close:(id)close;
- (void)composeFormattingController:(id)controller didChangeFont:(id)font;
- (void)composeFormattingController:(id)controller didChangeFontSize:(double)size;
- (void)composeFormattingController:(id)controller didChangeTextColor:(id)color;
- (void)composeFormattingController:(id)controller didSelectTextStyle:(id)style;
- (void)composeFormattingControllerDidCancel:(id)cancel;
- (void)composeFormattingControllerDidDismissFontPicker:(id)picker;
- (void)composeFormattingControllerDidPresentColorPicker:(id)picker;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeHeaderViewDidChangeValue:(id)value;
- (void)composeHeaderViewDidConfirmValue:(id)value;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didReplaceRecipients:(id)recipients withRecipients:(id)withRecipients;
- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients;
- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom;
- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom;
- (void)composeRecipientView:(id)view showPersonCardForRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)composeRecipientViewReturnPressed:(id)pressed;
- (void)composeRecipientViewTabPressed:(id)pressed;
- (void)composeStyleSelector:(id)selector didChangeFont:(id)font;
- (void)composeStyleSelector:(id)selector didChangeFontSize:(double)size;
- (void)composeStyleSelector:(id)selector didChangeTextColor:(id)color;
- (void)composeStyleSelector:(id)selector didSelectStyle:(id)style;
- (void)composeStyleSelectorDidCancel:(id)cancel;
- (void)composeStyleSelectorDidDismissFontPicker:(id)picker;
- (void)composeStyleSelectorDidPresentColorPicker:(id)picker;
- (void)composeSubjectViewTextFieldDidBecomeFirstResponder:(id)responder;
- (void)composeSubjectViewTextFieldDidResignFirstResponder:(id)responder;
- (void)composeSubjectViewWillRemoveContent:(id)content;
- (void)composeWebView:(id)view composeBodyIsEmpty:(BOOL)empty;
- (void)composeWebView:(id)view didChangeHeight:(double)height;
- (void)composeWebView:(id)view hasActiveWritingToolsSession:(BOOL)session;
- (void)composeWebViewDidChangeFontAttributes:(id)attributes;
- (void)composeWebViewDidTerminate:(id)terminate;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)datePickerViewController:(id)controller didSelectDate:(id)date;
- (void)dealloc;
- (void)deliverMessageRemotely:(id)remotely;
- (void)didBecomeActiveComposeController;
- (void)didCreateAttachment:(id)attachment;
- (void)didInsertAttachment:(id)attachment;
- (void)didInsertBodyText:(id)text;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)dismissSearchResultsForComposeRecipientView:(id)view;
- (void)dismissSheet;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)editLink:(id)link completion:(id)completion;
- (void)editTextDescription:(id)description completion:(id)completion;
- (void)expandQuickReplyToFullComposeAndPerformAction:(int64_t)action additionalUserInfo:(id)info;
- (void)finalizeSignature:(id)signature;
- (void)finishEnteringRecipients;
- (void)finishPopoverAlertClosingComposition:(BOOL)composition;
- (void)finishedBackingUpDraftWithSuccess:(BOOL)success;
- (void)goToSettingsForControl:(id)control;
- (void)handleLargeMessageComposeHandoffWithInputStream:(id)stream outputStream:(id)outputStream error:(id)error;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)imageSizeView:(id)view changedSelectedScaleTo:(unint64_t)to;
- (void)importDocument;
- (void)insertDrawing;
- (void)insertPhotoOrVideoWithAssetIdentifier:(id)identifier info:(id)info;
- (void)loadView;
- (void)markupAttachment:(id)attachment;
- (void)performSend:(id)send;
- (void)photoPicker:(id)picker didDeselectAssetWithIdentifier:(id)identifier;
- (void)photoPicker:(id)picker didSelectAssetWithIdentifier:(id)identifier mediaInfo:(id)info;
- (void)photoPickerController:(id)controller didAddItem:(id)item;
- (void)photoPickerController:(id)controller didRemoveAsset:(id)asset;
- (void)photoPickerControllerDidCancel:(id)cancel;
- (void)photoPickerDidCancel:(id)cancel;
- (void)photoPickerDidCancelSystemImagePicker:(id)picker;
- (void)pickInitialFirstResponder;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)recipientViewDidBecomeFirstResponder:(id)responder;
- (void)recipientViewDidResignFirstResponder:(id)responder;
- (void)removeAddress:(id)address field:(int64_t)field;
- (void)removeSignature;
- (void)saveAndResignFirstResponder;
- (void)saveFirstResponder;
- (void)scanDocument;
- (void)secureMIMECompositionManager:(id)manager encryptionStatusDidChange:(int64_t)change context:(id)context;
- (void)secureMIMECompositionManager:(id)manager signingStatusDidChange:(int64_t)change context:(id)context;
- (void)securityScopeForURL:(id)l withHandler:(id)handler;
- (void)selectNextSearchResultForComposeRecipientView:(id)view;
- (void)selectPreviousSearchResultForComposeRecipientView:(id)view;
- (void)sendMessage:(unint64_t)message;
- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withHandler:(id)handler;
- (void)setAddresses:(id)addresses field:(int64_t)field;
- (void)setAutosaveIdentifier:(id)identifier;
- (void)setCaretPosition:(unint64_t)position;
- (void)setCompositionContext:(id)context;
- (void)setContentVisible:(BOOL)visible;
- (void)setDisplayMetrics:(id)metrics;
- (void)setDraftMessage:(id)message;
- (void)setHeadersForDraft;
- (void)setHideMyEmailAddressForMailToURLAddressString:(id)string;
- (void)setHosted:(BOOL)hosted;
- (void)setInitialTitle:(id)title;
- (void)setIsModal:(BOOL)modal;
- (void)setIsQuickReply:(BOOL)reply;
- (void)setOriginalMessageWasEncrypted:(BOOL)encrypted;
- (void)setPeoplePicker:(id)picker;
- (void)setPrefersLargeTitles:(BOOL)titles;
- (void)setProgressUIVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setRecipientsKeyboardType:(int64_t)type;
- (void)setSavedHeaders:(id)headers;
- (void)setSendingEmailAddress:(id)address;
- (void)setSendingEmailAddressAsHME:(id)e isComposeTypeReply:(BOOL)reply;
- (void)setSubject:(id)subject;
- (void)setUpForSaveAsDraft;
- (void)showMissingAttachmentDataAlert;
- (void)showPhotoPickerWithSourceType:(int64_t)type fromSource:(id)source;
- (void)showStyleSelector:(id)selector;
- (void)stripCustomBodyIdentifiers;
- (void)takeFocusFromComposeWebView:(id)view inDirection:(unint64_t)direction;
- (void)takeSnapshotWithCompletionHandler:(id)handler;
- (void)tappedSMIMEButton;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSignature;
- (void)updateUserActivityState:(id)state;
- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation MFMailComposeController

void __39__MFMailComposeController_menuCommands__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = menuCommands_commands_0;
  menuCommands_commands_0 = v0;

  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"b" modifierFlags:1572864 action:sel__focusBccHeaderCommandInvoked_];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Bcc Address Field" value:&stru_1F3CF3758 table:@"Main"];
  [v6 setTitle:v3];

  v4 = menuCommands_commands_0;
  v5 = [MFMailMenuCommand shortcutWithCommand:v6 menu:13];
  [v4 addObject:v5];
}

+ (NSArray)menuCommands
{
  if (menuCommands_onceToken != -1)
  {
    +[MFMailComposeController menuCommands];
  }

  v2 = [menuCommands_commands_0 copy];

  return v2;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MFMailComposeController_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __38__MFMailComposeController_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_0;
  signpostLog_log_0 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MFMailComposeController)initWithCompositionContext:(id)context options:(unint64_t)options
{
  v53 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v46.receiver = self;
  v46.super_class = MFMailComposeController;
  v8 = [(MFMailComposeController *)&v46 initWithNibName:0 bundle:0];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    v8->_resolution = 0;
    v11 = MFComposeLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10->_resolution];
      *buf = 138412290;
      v48 = v12;
      _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "_resolution is set to %@ as MFMailComposeController is initialized.", buf, 0xCu);
    }

    v10->_sendingEmailAddressIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_selectedContentVariationIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_allowRestrictedAccounts = (options & 2) == 0;
    v13 = [[MFMailAccountProxyGenerator alloc] initWithAllowsRestrictedAccounts:v10->_allowRestrictedAccounts];
    accountProxyGenerator = v10->_accountProxyGenerator;
    v10->_accountProxyGenerator = v13;

    objc_storeStrong(&v9->_compositionContext, context);
    v15 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MFMailComposeController_autosaveLock" andDelegate:0];
    autosaveLock = v10->_autosaveLock;
    v10->_autosaveLock = v15;

    v10->_autosaveIsValid = 1;
    v10->_sourceAccountManagement = [contextCopy sourceAccountManagement];
    v17 = objc_alloc_init(MFMailSignatureController);
    signatureController = v10->_signatureController;
    v10->_signatureController = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    securityScopes = v10->_securityScopes;
    v10->_securityScopes = v19;

    v10->_options = options;
    v10->_hideMyEmailMultipleRecipient = 0;
    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    drawingFileAttachments = v10->_drawingFileAttachments;
    v10->_drawingFileAttachments = v21;

    [(MFMailComposeController *)v10 setHosted:MFIsMobileMail() ^ 1];
    v10->_contentVisible = 1;
    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      v10->_isSmartReplyRestricted = [mEMORY[0x1E69ADFB8] isMailSmartRepliesAllowed] ^ 1;

      v24 = MFComposeLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        isSmartReplyRestricted = v10->_isSmartReplyRestricted;
        *buf = 138543874;
        v48 = v26;
        v49 = 2048;
        v50 = v10;
        v51 = 1024;
        v52 = isSmartReplyRestricted;
        _os_log_impl(&dword_1BE819000, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [SmartReply] initial, isSmartReplyRestricted=%{BOOL}d", buf, 0x1Cu);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel__managedConfigurationEffectiveSettingsDidChangeNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__accountsChanged_ name:@"MFMailComposeControllerShouldReloadAccounts" object:0];

    v30 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.autosave" qualityOfService:17];
    autosaveQueue = v10->_autosaveQueue;
    v10->_autosaveQueue = v30;

    v32 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.prepareImagesForSend" qualityOfService:25];
    prepareImagesForSendScheduler = v10->_prepareImagesForSendScheduler;
    v10->_prepareImagesForSendScheduler = v32;

    v34 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.originalContentMessagesScheduler" qualityOfService:17];
    originalContentMessagesScheduler = v10->_originalContentMessagesScheduler;
    v10->_originalContentMessagesScheduler = v34;

    objc_initWeak(buf, v10);
    v36 = objc_alloc(MEMORY[0x1E699B7A8]);
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __62__MFMailComposeController_initWithCompositionContext_options___block_invoke;
    v44[3] = &unk_1E806E820;
    objc_copyWeak(&v45, buf);
    v38 = [v36 initWithTimeInterval:mainThreadScheduler scheduler:1 startAfter:v44 block:0.25];
    inputContextHistoryInvalidationDebouncer = v10->_inputContextHistoryInvalidationDebouncer;
    v10->_inputContextHistoryInvalidationDebouncer = v38;

    mailComposeView = [(MFMailComposeController *)v10 mailComposeView];
    [mailComposeView setSending:0];

    v41 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v10->_analyticsCollector;
    v10->_analyticsCollector = v41;

    v10->_removeSignatureForAutoSavedMessages = 0;
    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  return v10;
}

void __62__MFMailComposeController_initWithCompositionContext_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _invalidateInputContextHistoryDebounced:0];
  }
}

- (void)dealloc
{
  messageLoadingTailspinCancellable = [(MFMailComposeController *)self messageLoadingTailspinCancellable];
  [messageLoadingTailspinCancellable cancel];

  [(MFMailComposeController *)self setMessageLoadingTailspinCancellable:0];
  userActivity = [(MFMailComposeController *)self userActivity];
  [userActivity setDelegate:0];

  userActivity2 = [(MFMailComposeController *)self userActivity];
  [userActivity2 invalidate];

  [(MFMailComposeController *)self setUserActivity:0];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setComposeRecipientDelegate:0];
  [mailComposeView setComposeViewDelegate:0];
  [mailComposeView setPopoverOwner:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager invalidate];
  v8.receiver = self;
  v8.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v8 dealloc];
}

- (id)mailComposeView
{
  if ([(MFMailComposeController *)self isViewLoaded])
  {
    view = [(MFMailComposeController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)setHosted:(BOOL)hosted
{
  if (hosted)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 1376) = *(self + 1376) & 0xBF | v3;
}

- (void)setPeoplePicker:(id)picker
{
  pickerCopy = picker;
  peoplePicker = self->_peoplePicker;
  v7 = pickerCopy;
  if (peoplePicker != pickerCopy)
  {
    [(CNContactPickerViewController *)peoplePicker setDelegate:0];
    objc_storeStrong(&self->_peoplePicker, picker);
  }
}

- (void)dismissSheet
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if ((mf_supportsPopoverPresentation & 1) == 0)
  {
    [(UIAlertController *)self->_popoverAlert dismissViewControllerAnimated:0 completion:0];

    [(MFMailComposeController *)self setPopoverAlert:0];
  }
}

- (void)clearAllFields
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView resetContentSize];

  *(self + 1376) &= ~2u;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView setMarkupString:@"<BR class=webkit-block-placeholder>"];

  [(MFMailComposeController *)self setAddresses:0 field:1];
  [(MFMailComposeController *)self setAddresses:0 field:2];
  [(MFMailComposeController *)self setAddresses:0 field:3];
  [(MFMailComposeController *)self setSubject:0];
  [(MFMailComposeController *)self setUseMailDrop:0];
  self->_selectedContentVariationIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setIsModal:(BOOL)modal
{
  modalCopy = modal;
  self->_isModal = modal;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setIsForEditing:modalCopy];
}

- (NSString)documentID
{
  documentID = self->_documentID;
  if (!documentID)
  {
    v4 = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B1C0]];
    v5 = [v4 copy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      ef_UUID = self->_documentID;
      self->_documentID = v7;
    }

    else
    {
      ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
      v9 = [ef_UUID copy];
      v10 = self->_documentID;
      self->_documentID = v9;
    }

    documentID = self->_documentID;
  }

  v11 = documentID;

  return v11;
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_displayMetrics != metricsCopy)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    [(MFMailComposeController *)self _displayMetricsDidChange];
  }
}

- (id)navigationBarTitle
{
  v3 = [(NSString *)self->_initialTitle copy];
  if (![v3 length])
  {
    text = [(MFComposeSubjectView *)self->_subjectField text];

    v3 = text;
  }

  if (![v3 length])
  {
    composeType = [(MFMailComposeController *)self composeType];
    if (composeType > 5)
    {
      if ((composeType - 8) < 2)
      {
LABEL_15:
        v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v7 = [v6 localizedStringForKey:@"DRAFT" value:&stru_1F3CF3758 table:@"Main"];
        goto LABEL_21;
      }

      if (composeType == 6)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v7 = [v6 localizedStringForKey:@"FORWARD" value:&stru_1F3CF3758 table:@"Main"];
        goto LABEL_21;
      }

      if (composeType != 7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (composeType > 3)
      {
        if (composeType == 4)
        {
          v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          [v6 localizedStringForKey:@"REPLY" value:&stru_1F3CF3758 table:@"Main"];
        }

        else
        {
          v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          [v6 localizedStringForKey:@"REPLY_ALL" value:&stru_1F3CF3758 table:@"Main"];
        }

        goto LABEL_14;
      }

      if (composeType)
      {
        if (composeType != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }
    }

    if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v6 localizedStringForKey:@"NEW_MESSAGE_LONG" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v6 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
    }

    v7 = LABEL_14:;
LABEL_21:
    v8 = v7;

    v3 = v8;
  }

LABEL_22:

  return v3;
}

- (void)setInitialTitle:(id)title
{
  titleCopy = title;
  if (self->_initialTitle != titleCopy)
  {
    v4 = [(NSString *)titleCopy copy];
    initialTitle = self->_initialTitle;
    self->_initialTitle = v4;

    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
  }
}

- (void)clearInitialTitle
{
  initialTitle = self->_initialTitle;
  self->_initialTitle = 0;

  [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:1];
}

- (id)_alternateTitleView
{
  alternateTitleView = self->_alternateTitleView;
  if (!alternateTitleView)
  {
    v4 = [MFMailComposeNavigationBarTitleView alloc];
    v5 = [(MFMailComposeNavigationBarTitleView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_alternateTitleView;
    self->_alternateTitleView = v5;

    alternateTitleView = self->_alternateTitleView;
  }

  return alternateTitleView;
}

- (void)_setTitleBarSubtitleText:(id)text style:(unint64_t)style
{
  textCopy = text;
  _alternateTitleView = [(MFMailComposeController *)self _alternateTitleView];
  v8 = &stru_1F3CF3758;
  if (textCopy)
  {
    v8 = textCopy;
  }

  v14 = v8;

  [_alternateTitleView setSubtitle:v14 withStyle:style];
  navigationItem = [(MFMailComposeController *)self navigationItem];
  titleView = [navigationItem titleView];

  if (titleView != _alternateTitleView)
  {
    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
    navigationController = [(MFMailComposeController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar bounds];
    v17 = CGRectInset(v16, 0.0, 0.0);
    [_alternateTitleView setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];

    navigationItem2 = [(MFMailComposeController *)self navigationItem];
    [navigationItem2 setTitleView:_alternateTitleView];
  }
}

- (void)_updateNavigationBarTitleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationBarTitle = [(MFMailComposeController *)self navigationBarTitle];
  navigationItem = [(MFMailComposeController *)self navigationItem];
  [navigationItem _setTitle:navigationBarTitle animated:animatedCopy];

  [(UIView *)self->_alternateTitleView setTitle:navigationBarTitle];
  view = [(MFMailComposeController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (objc_opt_respondsToSelector())
  {
    [windowScene mf_resetPreferredTitle];
  }
}

- (void)_setupLargeTitleAccessory
{
  navigationItem = [(MFMailComposeController *)self navigationItem];
  _alternateTitleView = [(MFMailComposeController *)self _alternateTitleView];
  [navigationItem setTitleView:_alternateTitleView];

  [navigationItem _setLargeTitleTwoLineMode:2];
  if (([MEMORY[0x1E69DC938] mf_isSmallPhone] & 1) == 0)
  {
    navigationController = [(MFMailComposeController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    [navigationItem setLargeTitleDisplayMode:1];
    if ((MFSolariumFeatureEnabled() & 1) == 0)
    {
      v6 = [MFComposeSendAccessoryButton buttonWithType:0];
      sendAccessoryButton = self->_sendAccessoryButton;
      self->_sendAccessoryButton = v6;

      [(UIButton *)self->_sendAccessoryButton addTarget:self action:sel_send_ forControlEvents:64];
      sendLaterMenu = [(MFMailComposeController *)self sendLaterMenu];
      [(UIButton *)self->_sendAccessoryButton setMenu:sendLaterMenu];

      [navigationItem _setLargeTitleAccessoryView:self->_sendAccessoryButton alignToBaseline:0];
      v9 = objc_opt_new();
      [v9 configureWithOpaqueBackground];
      [v9 setShadowColor:0];
      [navigationItem setScrollEdgeAppearance:v9];
    }
  }
}

- (void)_setupForQuickReply
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];

  if (isQuickReply)
  {
    quickReplyActionButtonProvider = [(MFMailComposeController *)self quickReplyActionButtonProvider];
    quickReplySendButton = [quickReplyActionButtonProvider quickReplySendButton];

    sendLaterMenu = [(MFMailComposeController *)self sendLaterMenu];
    [quickReplySendButton setMenu:sendLaterMenu];

    [quickReplySendButton setEnabled:0];
  }
}

- (void)_setupNavigationBarItems
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = MFSolariumFeatureEnabled();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
  v9 = [v4 initWithObjects:{v6, v8, 0}];

  v10 = [(MFMailComposeController *)self _createSendButtonItemWithPossibleTitles:v9];
  sendButtonItem = self->_sendButtonItem;
  self->_sendButtonItem = v10;

  navigationItem = [(MFMailComposeController *)self navigationItem];
  if (v3)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_close_];
    closeButtonItem = self->_closeButtonItem;
    self->_closeButtonItem = v13;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    closeButtonItem = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [closeButtonItem localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v17 = [v15 initWithTitle:v16 style:0 target:self action:sel_close_];
    v18 = self->_closeButtonItem;
    self->_closeButtonItem = v17;
  }

  [(UIBarButtonItem *)self->_closeButtonItem setPossibleTitles:v9];
  [(UIBarButtonItem *)self->_closeButtonItem setAccessibilityIdentifier:*MEMORY[0x1E69ADB30]];
  if (v3 && [MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
    v21[0] = self->_sendButtonItem;
    v21[1] = v19;
    v21[2] = self->_closeButtonItem;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    [navigationItem setRightBarButtonItems:v20];
  }

  else
  {
    [navigationItem setRightBarButtonItem:self->_sendButtonItem];
    [navigationItem setLeftBarButtonItem:self->_closeButtonItem];
  }
}

- (id)_createSendButtonItemWithPossibleTitles:(id)titles
{
  titlesCopy = titles;
  v5 = MFSolariumFeatureEnabled();
  v6 = MFImageGlyphBorderlessSend;
  if (!v5)
  {
    v6 = MFImageGlyphSend;
  }

  v7 = *v6;
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:self action:sel_send_];
  [v9 setAccessibilityIdentifier:*MEMORY[0x1E69ADB90]];
  v10 = [MEMORY[0x1E69DCAB8] mf_largeContentSizeImageNamed:v7];
  [v9 setLargeContentSizeImage:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
  [v9 setTitle:v12];

  sendLaterMenu = [(MFMailComposeController *)self sendLaterMenu];
  [v9 setMenu:sendLaterMenu];

  [v9 setPossibleTitles:titlesCopy];

  return v9;
}

- (void)_setupSendLaterOnboardingPaletteIfNecessary
{
  if ([(MFMailComposeController *)self _shouldShowSendLaterOnboarding])
  {
    navigationItem = [(MFMailComposeController *)self navigationItem];
    v4 = objc_alloc_init(MFComposeSendLaterOnboardingView);
    v5 = _EFLocalizedString();
    v6 = MEMORY[0x1E69DC628];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.badge.clock"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__MFMailComposeController__setupSendLaterOnboardingPaletteIfNecessary__block_invoke;
    v16[3] = &unk_1E806E848;
    v8 = navigationItem;
    v17 = v8;
    v9 = [v6 actionWithTitle:v5 image:v7 identifier:0 handler:v16];

    cancelButton = [(MFComposeSendLaterOnboardingView *)v4 cancelButton];
    [cancelButton addAction:v9 forControlEvents:64];

    v11 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v4];
    [(MFComposeSendLaterOnboardingView *)v4 systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
    v13 = v12;
    [v8 _setBottomPalette:v11];
    _bottomPalette = [v8 _bottomPalette];
    [_bottomPalette setPreferredHeight:v13];

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    [em_userDefaults setBool:1 forKey:*MEMORY[0x1E699ABC8]];
  }
}

- (BOOL)_shouldShowSendLaterOnboarding
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults BOOLForKey:*MEMORY[0x1E699ABC8]];

  if (v3)
  {
    return 0;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (([mEMORY[0x1E69DC668] launchedToTest] & 1) != 0 || objc_msgSend(mEMORY[0x1E69DC668], "isRunningTest"))
  {
    date = MFLogGeneral();
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, date, OS_LOG_TYPE_DEFAULT, "Onboarding not presented -- test is running", buf, 2u);
    }

    v4 = 0;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v7 = objc_alloc(MEMORY[0x1E695DEE8]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [v8 setTimeZone:localTimeZone];

    v10 = [v8 dateBySettingHour:9 minute:0 second:0 ofDate:date options:0];
    v11 = [v8 dateBySettingHour:17 minute:0 second:0 ofDate:date options:0];
    if (([date ef_isEarlierThanDate:v10]& 1) != 0 || ([date ef_isLaterThanDate:v11]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1BE819000, v12, OS_LOG_TYPE_DEFAULT, "Not showing send later onboarding tip. Time out of bounds", v14, 2u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldShowSMIMEButton
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
  simpleAddress = [v4 simpleAddress];

  accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
  v7 = [accountProxyGenerator accountProxyContainingEmailAddress:simpleAddress includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
  mailAccount = [v7 mailAccount];

  v3 = [mailAccount perMessageEncryptionEnabledForAddress:simpleAddress];
  return v3;
}

- (void)tappedSMIMEButton
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    self->_encryptionOverrideSetting ^= 1u;

    [(MFMailComposeController *)self _resetSecureCompositionManager];
  }
}

- (void)_updateSMIMEButtonEnabledForRecipientCount
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    _secureCompositionManagerHasRecipients = [(MFMailComposeController *)self _secureCompositionManagerHasRecipients];
    toField = self->_toField;

    [(MFMailComposeToField *)toField setSmimeButtonEnabled:_secureCompositionManagerHasRecipients];
  }
}

+ (BOOL)isSetupForDeliveryAllowingRestrictedAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  LOBYTE(accountsCopy) = [self isSetupForDeliveryAllowingRestrictedAccounts:accountsCopy originatingBundleID:bundleIdentifier sourceAccountManagement:0];

  return accountsCopy;
}

+ (BOOL)isSetupForDeliveryAllowingRestrictedAccounts:(BOOL)accounts originatingBundleID:(id)d sourceAccountManagement:(int)management
{
  v5 = *&management;
  accountsCopy = accounts;
  dCopy = d;
  v8 = [[MFMailAccountProxyGenerator alloc] initWithAllowsRestrictedAccounts:accountsCopy];
  v9 = [(MFMailAccountProxyGenerator *)v8 defaultMailAccountProxyForDeliveryOriginatingBundleID:dCopy sourceAccountManagement:v5];
  LOBYTE(v5) = v9 != 0;

  return v5;
}

- (BOOL)_isSetupForDelivery
{
  _defaultAccount = [(MFMailComposeController *)self _defaultAccount];
  v3 = _defaultAccount != 0;

  return v3;
}

- (id)_defaultAccount
{
  accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
  v4 = [accountProxyGenerator defaultMailAccountProxyForDeliveryOriginatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];

  return v4;
}

+ (id)preferenceForKey:(id)key
{
  v3 = [MEMORY[0x1E69ADAD0] valueForKey:key];

  return v3;
}

- (void)_accountsChanged:(id)changed
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MFMailComposeController__accountsChanged___block_invoke;
  v4[3] = &unk_1E806C570;
  v4[4] = self;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v4];
}

void __44__MFMailComposeController__accountsChanged___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) mailComposeView];
  [*v2 _resetProxyGenerator];
  v4 = [*(a1 + 32) emailAddresses];
  v5 = [*(a1 + 32) hideMyEmailAddressIfExists];

  if (v5)
  {
    v6 = [*(a1 + 32) hideMyEmailAddressIfExists];
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v4 arrayByAddingObjectsFromArray:v7];

    v4 = v8;
  }

  v9 = [v3 fromField];
  [v9 setAvailableAddresses:v4];

  v10 = [*(a1 + 32) sendingEmailAddressIfExists];
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 stringValue];
  }

  v15 = v14;

  v16 = [v4 containsObject:v15];
  if ((v16 & 1) == 0)
  {
    [*(a1 + 32) _setSendingEmailAddress:0];
  }

  v17 = [v3 composeWebView];
  [v17 updateInputAssistantItem];

  [*(a1 + 32) _resetSecureCompositionManager];
  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = v16;
    _os_log_impl(&dword_1BE819000, v18, OS_LOG_TYPE_DEFAULT, "#CompositionServices Accounts changed. originalAddressIsAvailable: %d", v19, 8u);
  }
}

- (id)emailAddresses
{
  v29 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _availableAccountProxies = [(MFMailComposeController *)self _availableAccountProxies];
  obj = _availableAccountProxies;
  v5 = [_availableAccountProxies countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = MEMORY[0x1E699B240];
        fromEmailAddresses = [v8 fromEmailAddresses];
        v12 = [v10 emailAddressesFromStrings:fromEmailAddresses invalidAddresses:0];

        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v12);
              }

              simpleAddress = [*(*(&v19 + 1) + 8 * j) simpleAddress];
              [v9 addObject:simpleAddress];
            }

            v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }

        [array addObjectsFromArray:v9];
      }

      _availableAccountProxies = obj;
      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)_emailAddressesWithHME
{
  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v5 = [emailAddresses arrayByAddingObject:v4];

  return v5;
}

- (id)_availableAccountProxies
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_primaryAddressForForcedSendingAccount || (-[MFMailComposeController accountProxyGenerator](self, "accountProxyGenerator"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accountProxyContainingEmailAddress:self->_primaryAddressForForcedSendingAccount includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4) || (v8[0] = v4, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 1), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
    v5 = [accountProxyGenerator activeAccountProxiesOriginatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
  }

  return v5;
}

- (void)_resetProxyGenerator
{
  v3 = [[MFMailAccountProxyGenerator alloc] initWithAllowsRestrictedAccounts:self->_allowRestrictedAccounts];
  [(MFMailComposeController *)self setAccountProxyGenerator:?];
}

- (unint64_t)_reloadNumberOfReformattedAddressesWithMaximumWidth:(double)width defaultFontSize:(double)size
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailComposeController.m" lineNumber:1212 description:@"Current thread must be main"];
  }

  addressPickerReformatter = self->_addressPickerReformatter;
  if (!addressPickerReformatter)
  {
    v9 = objc_alloc_init(MFAddressPickerReformatter);
    v10 = self->_addressPickerReformatter;
    self->_addressPickerReformatter = v9;

    addressPickerReformatter = self->_addressPickerReformatter;
  }

  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  [(MFAddressPickerReformatter *)addressPickerReformatter setAddresses:emailAddresses];

  [(MFAddressPickerReformatter *)self->_addressPickerReformatter setMaximumWidth:width];
  [(MFAddressPickerReformatter *)self->_addressPickerReformatter setMinimumFontSize:15.0 maximumFontSize:size];
  v12 = self->_addressPickerReformatter;

  return [(MFAddressPickerReformatter *)v12 numberOfReformattedAddresses];
}

- (void)setCompositionContext:(id)context
{
  contextCopy = context;
  compositionContext = self->_compositionContext;
  if (compositionContext)
  {
    v6 = [(_MFMailCompositionContext *)compositionContext composeType]!= 1;
  }

  else
  {
    v6 = 0;
  }

  [(_MFMailCompositionContext *)contextCopy setDelegate:self];
  if (self->_compositionContext != contextCopy)
  {
    objc_storeStrong(&self->_compositionContext, context);
    [(MFMailComposeController *)self setAutosaveIdentifier:0];
    [(MFMailComposeController *)self setAutosaveSession:0];
    [(MFMailComposeController *)self setRemoveSignatureForAutoSavedMessages:0];
  }

  if (self->_progressIndicatorView)
  {
    [(MFMailComposeController *)self setProgressUIVisible:0 animated:1];
  }

  if (v6)
  {
    [(MFMailComposeController *)self clearAllFields];
  }

  [(MFMailComposeController *)self _loadCompositionContext];
}

- (void)_prepareCompositionContextForLoading:(id)loading
{
  loadingCopy = loading;
  composeType = [loadingCopy composeType];
  if (composeType <= 9 && ((1 << composeType) & 0x38C) != 0)
  {
    loadingContext = [loadingCopy loadingContext];
    legacyMessage = [loadingCopy legacyMessage];
    v7 = legacyMessage;
    if (!loadingContext && legacyMessage)
    {
      loadingContext = [objc_alloc(MEMORY[0x1E69B1638]) initWithMessage:legacyMessage attachmentManager:0];
      [loadingCopy setLoadingContext:loadingContext];
      [loadingCopy setLoadRest:1];
      [loadingCopy setIncludeAttachments:1];
    }
  }
}

- (void)_loadCompositionContext
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = self->_compositionContext;
  [(_MFMailCompositionContext *)v3 setDelegate:self];
  if (self->_selectedContentVariationIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_selectedContentVariationIndex = [(_MFMailCompositionContext *)v3 defaultContentVariationIndex];
  }

  [(MFMailComposeController *)self _prepareCompositionContextForLoading:v3];
  legacyMessage = [(_MFMailCompositionContext *)v3 legacyMessage];
  loadRest = [(_MFMailCompositionContext *)v3 loadRest];
  if ([(_MFMailCompositionContext *)v3 includeAttachments])
  {
    includeAttachmentsWhenAdding = 1;
  }

  else
  {
    includeAttachmentsWhenAdding = [(_MFMailCompositionContext *)v3 includeAttachmentsWhenAdding];
  }

  isLoadingMessageData = [(_MFMailCompositionContext *)v3 isLoadingMessageData];
  if (((loadRest | includeAttachmentsWhenAdding) | isLoadingMessageData))
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  if (!legacyMessage)
  {
    v6 = 0;
  }

  *(self + 1376) = *(self + 1376) & 0xDF | v6;
  self->_initialAttachmentCount = 0;
  originatingBundleID = [(_MFMailCompositionContext *)self->_compositionContext originatingBundleID];
  v8 = [originatingBundleID copy];
  originatingBundleID = self->_originatingBundleID;
  self->_originatingBundleID = v8;

  self->_sourceAccountManagement = [(_MFMailCompositionContext *)v3 sourceAccountManagement];
  [(MFMailComposeController *)self _resetProxyGenerator];
  composeType = [(_MFMailCompositionContext *)v3 composeType];
  [(MFMailComposeController *)self setContentVisible:[(_MFMailCompositionContext *)v3 showContentImmediately]];
  v11 = 0;
  if (composeType > 3)
  {
    if (composeType < 7)
    {
      [MFComposeTypeFactory setupWithCompositionModel:v3 delegate:self];
LABEL_30:
      v11 = 0;
      goto LABEL_42;
    }

    if (composeType != 7)
    {
      if (composeType == 8)
      {
        [(MFMailComposeController *)self _setupForExistingNewMessage:legacyMessage content:0];
        goto LABEL_30;
      }

      if (composeType != 9)
      {
        goto LABEL_42;
      }

      v11 = 1;
      goto LABEL_23;
    }

    if (legacyMessage)
    {
      [(MFMailComposeController *)self _setupForAutosavedMessage:legacyMessage];
      v11 = 1;
      goto LABEL_42;
    }

LABEL_27:
    [MFComposeTypeFactory setupWithCompositionModel:v3 delegate:self];
    messageBody = [(_MFMailCompositionContext *)self->_compositionContext messageBody];
    if ([messageBody length])
    {
      v11 = 1;
    }

    else
    {
      subject = [(_MFMailCompositionContext *)self->_compositionContext subject];
      if ([subject length])
      {
        v11 = 1;
      }

      else
      {
        toRecipients = [(_MFMailCompositionContext *)self->_compositionContext toRecipients];
        if ([toRecipients count])
        {
          v11 = 1;
        }

        else
        {
          ccRecipients = [(_MFMailCompositionContext *)self->_compositionContext ccRecipients];
          if ([ccRecipients count])
          {
            v11 = 1;
          }

          else
          {
            attachments = [(MFMailComposeController *)self attachments];
            v11 = [attachments count] != 0;
          }
        }
      }
    }

    goto LABEL_42;
  }

  if (!composeType)
  {
    goto LABEL_27;
  }

  if (composeType != 2)
  {
    if (composeType != 3)
    {
      goto LABEL_42;
    }

    if (legacyMessage)
    {
      [(MFMailComposeController *)self _setupForOutbox:?];
    }

    goto LABEL_30;
  }

LABEL_23:
  if (legacyMessage)
  {
    [(MFMailComposeController *)self _setupForDraft:?];
  }

LABEL_42:
  originalMessage = [(_MFMailCompositionContext *)v3 originalMessage];
  v16 = [(MFMailComposeController *)self _originalContentOfMessagesInReplyToMessage:originalMessage];
  [(MFMailComposeController *)self setOriginalContentMessagesFuture:v16];

  objc_initWeak(&location, self);
  originalContentMessagesFuture = [(MFMailComposeController *)self originalContentMessagesFuture];
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __50__MFMailComposeController__loadCompositionContext__block_invoke;
  v61[3] = &unk_1E806E870;
  objc_copyWeak(&v62, &location);
  [originalContentMessagesFuture onScheduler:mainThreadScheduler addSuccessBlock:v61];

  if (composeType)
  {
    if (composeType != 1)
    {
      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      isQuickReply = [mailComposeView isQuickReply];

      if ((isQuickReply & 1) == 0)
      {
        *(self + 1376) |= 2u;
      }
    }
  }

  else
  {
    messageBody2 = [(_MFMailCompositionContext *)self->_compositionContext messageBody];
    *(self + 1376) = *(self + 1376) & 0xFD | (2 * ([messageBody2 length] != 0));
  }

  if ((*(self + 1376) & 2) != 0)
  {
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  }

  [(MFMailComposeController *)self _checkForReplyAndForwardRestriction];
  if (legacyMessage)
  {
    if (composeType == 1)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (composeType > 9 || ((1 << composeType) & 0x286) == 0)
  {
LABEL_52:
    [(MFMailComposeController *)self _updateOriginalBccStatusForRestoreAddingAddress:[(MFMailComposeController *)self _isRestoredComposition]^ 1];
  }

  if ((composeType - 4) <= 2)
  {
    -[MFComposeSubjectView setNotifyOptionSelected:](self->_subjectField, "setNotifyOptionSelected:", [legacyMessage conversationFlags] & 1);
  }

LABEL_57:
  mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
  webContentVariationField = [mailComposeView2 webContentVariationField];

  contentVariations = [(_MFMailCompositionContext *)v3 contentVariations];
  v24 = [contentVariations ef_map:&__block_literal_global_20];

  contentVariationIndex = [(MFMailComposeController *)self contentVariationIndex];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __50__MFMailComposeController__loadCompositionContext__block_invoke_3;
  v59[3] = &unk_1E806D8C8;
  v59[4] = self;
  v26 = webContentVariationField;
  v60 = v26;
  [v26 setupMenuItemTitles:v24 currentSelection:contentVariationIndex handler:v59];
  *(self + 1376) = *(self + 1376) & 0xFE | v11;
  [(MFComposeWebView *)self->_composeWebView setDirty:0];
  if ((*(self + 1376) & 0x20) != 0)
  {
    messageLoadingTailspinCancellable = [(MFMailComposeController *)self messageLoadingTailspinCancellable];
    [messageLoadingTailspinCancellable cancel];

    objc_initWeak(&from, self);
    v28 = ([(MFMailComposeController *)self currentlyLoadingCounter]+ 1);
    [(MFMailComposeController *)self setCurrentlyLoadingCounter:v28];
    mainThreadScheduler2 = [MEMORY[0x1E699B978] mainThreadScheduler];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __50__MFMailComposeController__loadCompositionContext__block_invoke_4;
    v56[3] = &unk_1E806E8B8;
    objc_copyWeak(v57, &from);
    v57[1] = v28;
    v30 = [mainThreadScheduler2 afterDelay:v56 performBlock:1.5];
    [(MFMailComposeController *)self setMessageLoadingTailspinCancellable:v30];

    [(MFMailComposeController *)self _setIsLoading:1];
    if (loadRest)
    {
      loadingContext = [(_MFMailCompositionContext *)v3 loadingContext];
      v32 = MFComposeLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v66 = loadingContext;
        _os_log_impl(&dword_1BE819000, v32, OS_LOG_TYPE_DEFAULT, "Issuing loading request for context context %p", buf, 0xCu);
      }

      v33 = MFMessageComposeLoadingSignpostLog();
      signpostID = [(_MFMailCompositionContext *)v3 signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BE819000, v33, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "LOAD COMPOSE MESSAGE BODY", "Start loading message body enableTelemetry=YES ", buf, 2u);
      }

      mainThreadScheduler3 = [MEMORY[0x1E699B978] mainThreadScheduler];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __50__MFMailComposeController__loadCompositionContext__block_invoke_271;
      v52[3] = &unk_1E806E8E0;
      objc_copyWeak(&v55, &from);
      v36 = loadingContext;
      v53 = v36;
      v54 = v3;
      v37 = [v36 onScheduler:mainThreadScheduler3 addLoadObserver:v52];

      [v36 load:2];
      objc_destroyWeak(&v55);
    }

    else if (!isLoadingMessageData && (includeAttachmentsWhenAdding & 1) != 0)
    {
      [(MFMailComposeController *)self _loadAttachments];
    }

    objc_destroyWeak(v57);
    objc_destroyWeak(&from);
  }

  else
  {
    [(MFMailComposeController *)self _setIsLoading:0];
  }

  mailComposeView3 = [(MFMailComposeController *)self mailComposeView];
  [(MFMailComposeController *)self pickInitialFirstResponder];
  if (-[_MFMailCompositionContext showKeyboardImmediately](self->_compositionContext, "showKeyboardImmediately") && ([mailComposeView3 isKeyboardVisible] & 1) == 0)
  {
    [mailComposeView3 setKeyboardVisible:1 animate:1];
  }

  [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
  attachments2 = [(MFMailComposeController *)self attachments];
  self->_initialAttachmentCount = [attachments2 count];

  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  fromField = [mailComposeView3 fromField];
  [fromField setAvailableAddresses:emailAddresses];

  v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v64 = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  fromField2 = [mailComposeView3 fromField];
  [fromField2 setDeferredAddresses:v44];

  [(MFMailComposeController *)self _updateImageSizeTitles];
  mailComposeView4 = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView4 setNeedsLayout];

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
}

void __50__MFMailComposeController__loadCompositionContext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _invalidateInputContextHistoryDebounced:1];
  }
}

id __50__MFMailComposeController__loadCompositionContext__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];

  return v2;
}

void __50__MFMailComposeController__loadCompositionContext__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setNumberStyle:0];
  v4 = [v9 identifier];
  v5 = [v3 numberFromString:v4];
  *(*(a1 + 32) + 1408) = [v5 unsignedIntValue];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) contentVariationName];
  [v6 setSelectedContentVariationLabel:v7];

  [*(*(a1 + 32) + 1224) setMarkupString:@"<BR class=webkit-block-placeholder>"];
  v8 = [*(a1 + 32) sendingEmailAddress];
  [*(*(a1 + 32) + 1000) setPreferredSendingEmailAddress:v8];

  [MFComposeTypeFactory setupWithCompositionModel:*(*(a1 + 32) + 1000) delegate:?];
}

void __50__MFMailComposeController__loadCompositionContext__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentlyLoadingCounter] == *(a1 + 40))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compose contents didn't load within %.1fs", 0x3FF8000000000000];
      EFSaveTailspin();
    }

    else
    {
      v5 = MFComposeLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 currentlyLoadingCounter];
        v7 = *(a1 + 40);
        *buf = 134218240;
        v9 = v6;
        v10 = 2048;
        v11 = v7;
        _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Skip save tailspin, counter doesn't match (%ld != %ld)", buf, 0x16u);
      }
    }
  }
}

void __50__MFMailComposeController__loadCompositionContext__block_invoke_271(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MFComposeLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "Loading context complete for context %p", &v7, 0xCu);
  }

  v5 = MFMessageComposeLoadingSignpostLog();
  v6 = [*(a1 + 40) signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LOAD COMPOSE MESSAGE BODY", "Finish loading message body enableTelemetry=YES ", &v7, 2u);
  }

  [WeakRetained _loadingContextDidLoadMessage];
}

- (void)_checkForReplyAndForwardRestriction
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(MFMailComposeController *)self _isReplyOrForward]|| [(_MFMailCompositionContext *)self->_compositionContext originatingFromAttachmentMarkup])
  {
    v3 = 0;
  }

  else
  {
    if (![(MFMailComposeController *)self _isRestoredComposition])
    {
      v5 = self->_sendingEmailAddress;
      goto LABEL_13;
    }

    savedHeaders = [(MFMailComposeController *)self savedHeaders];
    references = [savedHeaders references];
    v14 = [references count];

    if (v14)
    {
      v3 = 0;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = _HeaderKeysForForwardsAndReplies_sHeaderKeys;
      if (!_HeaderKeysForForwardsAndReplies_sHeaderKeys)
      {
        v16 = objc_alloc(MEMORY[0x1E695DEC8]);
        v17 = [v16 initWithObjects:{*MEMORY[0x1E699B108], 0}];
        v18 = _HeaderKeysForForwardsAndReplies_sHeaderKeys;
        _HeaderKeysForForwardsAndReplies_sHeaderKeys = v17;

        v15 = _HeaderKeysForForwardsAndReplies_sHeaderKeys;
      }

      v19 = v15;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        v21 = *v26;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [savedHeaders firstHeaderForKey:*(*(&v25 + 1) + 8 * v22)];
            v24 = v23 == 0;

            if (!v24)
            {
              v3 = 0;
              goto LABEL_26;
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v3 = 1;
LABEL_26:
    }
  }

  v4 = self->_sendingEmailAddress;
  v5 = v4;
  if ((v3 & 1) == 0 && v4)
  {
    accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
    v7 = [accountProxyGenerator accountProxyContainingEmailAddress:v5 includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];

    if ([v7 restrictsRepliesAndForwards])
    {
      firstEmailAddress = [v7 firstEmailAddress];
      v9 = [firstEmailAddress copy];
      primaryAddressForForcedSendingAccount = self->_primaryAddressForForcedSendingAccount;
      self->_primaryAddressForForcedSendingAccount = v9;

      sendingEmailAddress = self->_sendingEmailAddress;
      self->_sendingEmailAddress = 0;

      [(MFMailComposeController *)self setSendingEmailAddress:v5];
    }
  }

LABEL_13:
  [(MFMailComposeController *)self _updateManagedPasteboardOwner];
}

- (void)_setupForDraft:(id)draft
{
  draftCopy = draft;
  [MFMailComposeController _setupForExistingNewMessage:"_setupForExistingNewMessage:content:" content:?];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  originalMessage = [compositionContext originalMessage];
  [(MFMailComposeController *)self setDraftMessage:originalMessage];

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setAnimationDisabled:1];
}

- (void)_setupForOutbox:(id)outbox
{
  outboxCopy = outbox;
  v5 = dispatch_time(0, 500000000);
  v6 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MFMailComposeController__setupForOutbox___block_invoke;
  block[3] = &unk_1E806C570;
  block[4] = self;
  dispatch_after(v5, v6, block);

  [(MFMailComposeController *)self _setupForDraft:outboxCopy];
}

void __43__MFMailComposeController__setupForOutbox___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1000) originalMessage];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E699ADE0]);
    v10[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v3 initWithMessageListItems:v4 origin:4 actor:1 specialDestinationMailboxType:3 flagChange:0 copyMessages:0];

    v6 = [v2 repository];
    v7 = [v6 performMessageChangeActionReturningUndoAction:v5];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1512);
    *(v8 + 1512) = v7;
  }
}

- (void)_setupForExistingNewMessage:(id)message content:(id)content
{
  v77 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contentCopy = content;
  v54 = messageCopy;
  headersIfAvailable = [messageCopy headersIfAvailable];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  copyAddressListForTo = [headersIfAvailable copyAddressListForTo];
  v8 = [copyAddressListForTo countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v8)
  {
    v9 = *v70;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(copyAddressListForTo);
        }

        [v6 addObject:*(*(&v69 + 1) + 8 * i)];
      }

      v8 = [copyAddressListForTo countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v8);
  }

  v11 = [v6 copy];
  if ([v11 count])
  {
    [(MFMailComposeController *)self setToRecipients:v11];
  }

  [v6 removeAllObjects];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  copyAddressListForCc = [headersIfAvailable copyAddressListForCc];
  v13 = [copyAddressListForCc countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v13)
  {
    v14 = *v66;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(copyAddressListForCc);
        }

        [v6 addObject:*(*(&v65 + 1) + 8 * j)];
      }

      v13 = [copyAddressListForCc countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v13);
  }

  v16 = [v6 copy];
  v17 = v16;
  if ([v16 count])
  {
    [(MFMailComposeController *)self setCcRecipients:v16];
  }

  [v6 removeAllObjects];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  copyAddressListForBcc = [headersIfAvailable copyAddressListForBcc];
  v19 = [copyAddressListForBcc countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v19)
  {
    v20 = *v62;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(copyAddressListForBcc);
        }

        [v6 addObject:*(*(&v61 + 1) + 8 * k)];
      }

      v19 = [copyAddressListForBcc countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v19);
  }

  v53 = [v6 copy];
  if ([v53 count])
  {
    [(MFMailComposeController *)self setBccRecipients:?];
  }

  v22 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B0F0]];
  v51 = v22;
  if (v22)
  {
    v23 = [MEMORY[0x1E699B340] tagValueListFromString:v22 error:0];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E699A750]];
    v25 = [v23 objectForKeyedSubscript:*MEMORY[0x1E699A768]];
    bOOLValue = [v25 BOOLValue];

    if (v24)
    {
      firstSenderAddress = v24;
      [(MFMailComposeController *)self _setSendingEmailAddressAsHME:firstSenderAddress];
      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      [mailComposeView setReplyToHME:bOOLValue];

      goto LABEL_36;
    }
  }

  firstSenderAddress = [headersIfAvailable firstSenderAddress];
  if (!firstSenderAddress)
  {
    account = [v54 account];
    firstSenderAddress = [account firstEmailAddress];
  }

  if ([firstSenderAddress length])
  {
    [(MFMailComposeController *)self setSendingEmailAddress:firstSenderAddress];
  }

LABEL_36:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  allHeaderKeys = [headersIfAvailable allHeaderKeys];
  v31 = [allHeaderKeys countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v31)
  {
    v32 = *v58;
    v33 = *MEMORY[0x1E699B178];
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(allHeaderKeys);
        }

        v35 = *(*(&v57 + 1) + 8 * m);
        v36 = [headersIfAvailable firstHeaderForKey:v35];
        if (v36)
        {
          if ([v35 caseInsensitiveCompare:v33])
          {
            if ([MEMORY[0x1E69AD6F8] shouldDecodeHeaderForKey:v35])
            {
              savedHeaders = self->_savedHeaders;
              if (!savedHeaders)
              {
                v38 = objc_alloc_init(MEMORY[0x1E69AD740]);
                v39 = self->_savedHeaders;
                self->_savedHeaders = v38;

                savedHeaders = self->_savedHeaders;
              }

              [(MFMutableMessageHeaders *)savedHeaders setHeader:v36 forKey:v35];
            }
          }

          else
          {
            [(MFMailComposeController *)self setSubject:v36];
          }
        }
      }

      v31 = [allHeaderKeys countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v31);
  }

  if ((*(self + 1376) & 0x20) == 0)
  {
    if (contentCopy || ([v54 messageBodyIfAvailable], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "htmlContent"), contentCopy = objc_claimAutoreleasedReturnValue(), v40, contentCopy))
    {
      composeType = [(MFMailComposeController *)self composeType];
      if (composeType == 9)
      {
        composeWebView = [(MFMailComposeController *)self composeWebView];
        [composeWebView setMarkupString:@"<BR class=webkit-block-placeholder>"];
      }

      [MFComposeTypeFactory setupWithContent:contentCopy delegate:self signpostID:[(_MFMailCompositionContext *)self->_compositionContext signpostID]];
      if (composeType == 9)
      {
        [(MFMailComposeController *)self updateSignature];
      }
    }

    else
    {
      contentCopy = 0;
    }
  }

  v43 = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B1B8]];
  v44 = v43;
  if (v43)
  {
    self->_encryptionOverrideSetting = [v43 BOOLValue];
    [(MFMailComposeController *)self _resetSecureCompositionManager];
  }

  v45 = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B1A8]];
  v46 = v45;
  if (v45)
  {
    -[MFComposeSubjectView setNotifyOptionSelected:](self->_subjectField, "setNotifyOptionSelected:", [v45 BOOLValue]);
  }

  documentID = [v54 documentID];

  if (documentID)
  {
    documentID2 = [v54 documentID];
    uUIDString = [documentID2 UUIDString];
    documentID = self->_documentID;
    self->_documentID = uUIDString;
  }
}

- (void)_finishedLoadingAllContentAndAttachments
{
  [(MFMailComposeController *)self _setIsLoading:0];
  *(self + 1376) &= ~0x20u;
  composeType = [(MFMailComposeController *)self composeType];
  legacyMessage = [(_MFMailCompositionContext *)self->_compositionContext legacyMessage];
  originalContent = [(_MFMailCompositionContext *)self->_compositionContext originalContent];
  if (composeType > 9)
  {
LABEL_7:
    [MFComposeTypeFactory setupWithCompositionModel:self->_compositionContext delegate:self];
    [(MFComposeWebView *)self->_composeWebView setDirty:0];
    goto LABEL_8;
  }

  if (((1 << composeType) & 0x30C) == 0)
  {
    if (composeType == 7)
    {
      [(MFMailComposeController *)self _setupForExistingNewMessage:legacyMessage content:originalContent];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [(MFMailComposeController *)self _setupForExistingNewMessage:legacyMessage content:originalContent];
  if (composeType != 9)
  {
LABEL_8:
    *(self + 1376) &= ~1u;
  }

LABEL_9:
  [(MFMailComposeController *)self pickInitialFirstResponder];
  messageLoadingTailspinCancellable = [(MFMailComposeController *)self messageLoadingTailspinCancellable];
  [messageLoadingTailspinCancellable cancel];

  [(MFMailComposeController *)self setMessageLoadingTailspinCancellable:0];
  [(MFMailComposeController *)self _invalidateInputContextHistory];
}

- (void)_loadAttachments
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__MFMailComposeController__loadAttachments__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _attachmentLoaderFinishedWithOriginalContent:a2];
  v3 = MFMessageComposeLoadingSignpostLog();
  v4 = [*(*(a1 + 32) + 1000) signpostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LOAD COMPOSE ATTACHMENTS", "Finish loading attachments enableTelemetry=YES ", v5, 2u);
  }
}

- (void)_attachmentLoaderFinishedWithOriginalContent:(id)content
{
  contentCopy = content;
  [(_MFMailCompositionContext *)self->_compositionContext setOriginalContent:?];
  [(MFMailComposeController *)self _finishedLoadingAllContentAndAttachments];
  deferredAttachments = [(_MFMailCompositionContext *)self->_compositionContext deferredAttachments];
  [deferredAttachments removeAllObjects];
}

- (void)_loadingContextDidLoadMessage
{
  if ([(_MFMailCompositionContext *)self->_compositionContext includeAttachments])
  {

    [(MFMailComposeController *)self _loadAttachments];
  }

  else
  {

    [(MFMailComposeController *)self _finishedLoadingAllContentAndAttachments];
  }
}

- (void)pickInitialFirstResponder
{
  if ([(MFMailComposeController *)self _isDummyViewController])
  {
    return;
  }

  compositionContext = [(MFMailComposeController *)self compositionContext];
  isLoadingMessageData = [compositionContext isLoadingMessageData];

  if (isLoadingMessageData)
  {
    return;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_savedFirstResponder);

  if (WeakRetained)
  {
    v18 = objc_loadWeakRetained(&selfCopy->_savedFirstResponder);

    objc_storeWeak(&selfCopy->_savedFirstResponder, 0);
LABEL_18:
    v6 = v18;
    goto LABEL_19;
  }

  if ([(_MFMailCompositionContext *)selfCopy->_compositionContext showKeyboardImmediately]|| (v6 = selfCopy, *(selfCopy + 1376) < 0))
  {
    v18 = selfCopy->_toField;

    addresses = [(CNComposeRecipientTextView *)selfCopy->_toField addresses];
    v8 = [addresses count];

    if (v8)
    {
      v9 = selfCopy->_subjectField;

      v18 = v9;
    }

    composeWebView = [(MFMailComposeController *)selfCopy composeWebView];
    subjectField = selfCopy->_subjectField;
    v12 = v18;
    if (v18 == subjectField && (-[MFComposeSubjectView text](subjectField, "text"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 length], v13, v12 = v18, v14))
    {
      v15 = composeWebView;

      composeWebView2 = [(MFMailComposeController *)selfCopy composeWebView];
      [composeWebView2 placeCaretAtStartOfBodyField];

      v18 = v15;
    }

    else if (v12 != composeWebView)
    {
LABEL_17:

      goto LABEL_18;
    }

    if ([(MFMailComposeToField *)composeWebView isLoading])
    {
      [(_MFMailCompositionContext *)selfCopy->_compositionContext setShowKeyboardImmediately:0];
    }

    goto LABEL_17;
  }

LABEL_19:
  v19 = v6;
  [(MFMailComposeController *)v6 becomeFirstResponder];
  [(MFMailComposeController *)selfCopy _makeComposeUserActivityCurrent];
}

- (void)saveFirstResponder
{
  firstResponder = [(MFMailComposeController *)self firstResponder];
  objc_storeWeak(&self->_savedFirstResponder, firstResponder);
}

- (void)saveAndResignFirstResponder
{
  [(MFMailComposeController *)self saveFirstResponder];
  firstResponder = [(MFMailComposeController *)self firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)_draftContentDidChange
{
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  [(MFMailComposeController *)self _makeComposeUserActivityCurrent];

  [(MFMailComposeController *)self _setAutosaveIsValid:0];
}

- (void)_subjectTextChanged:(id)changed
{
  *(self + 1376) |= 1u;
  [(MFMailComposeController *)self _draftContentDidChange];

  [(MFMailComposeController *)self _invalidateInputContextHistory];
}

- (void)_recipientTextChanged:(id)changed
{
  changedCopy = changed;
  v5 = *(self + 1376);
  *(self + 1376) = v5 | 1;
  if ((v5 & 1) == 0)
  {
    [(MFMailComposeController *)self _draftContentDidChange];
  }

  [(MFMailComposeController *)self _invalidateInputContextHistory];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MFMailComposeController__recipientTextChanged___block_invoke;
  v7[3] = &unk_1E806E930;
  v6 = changedCopy;
  v8 = v6;
  selfCopy = self;
  [(MFMailComposeController *)self _performBlockWithStrongComposeCoordinator:v7];
}

void __49__MFMailComposeController__recipientTextChanged___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) object];
  v4 = *(*(a1 + 40) + 1176);

  if (v3 == v4)
  {
    v7 = [*(*(a1 + 40) + 1176) recipients];
    [v14 setToRecipients:v7];
  }

  else
  {
    v5 = [*(a1 + 32) object];
    v6 = *(*(a1 + 40) + 1184);

    if (v5 != v6)
    {
      goto LABEL_6;
    }

    v7 = [*(*(a1 + 40) + 1184) recipients];
    [v14 setCcRecipients:v7];
  }

LABEL_6:
  v8 = [*(a1 + 32) object];
  v9 = [*(a1 + 40) mailComposeView];
  v10 = [v9 bccField];

  if (v8 == v10)
  {
    v11 = [*(a1 + 40) mailComposeView];
    v12 = [v11 bccField];
    v13 = [v12 recipients];
    [v14 setBccRecipients:v13];
  }
}

- (void)_recipientTextChangedForHME
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  if (([mailComposeView isSending] & 1) == 0 && (objc_msgSend(mailComposeView, "isReplyToHME") & 1) == 0)
  {
    sendingEmailAddress = self->_sendingEmailAddress;
    hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    LODWORD(sendingEmailAddress) = [(NSString *)sendingEmailAddress isEqualToString:hideMyEmailAddressIfExists];

    if (sendingEmailAddress)
    {
      [(MFMailComposeController *)self _getHMEEmailFromOriginalAddress:self->_sendingEmailAddress];
    }
  }
}

- (void)_getHMEEmailFromOriginalAddress:(id)address
{
  addressCopy = address;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setLoadingFromAddress:0];
  mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
  if (![mEMORY[0x1E699ACD8] isConfigured:0])
  {

    goto LABEL_8;
  }

  _checkWhetherForwardingAddressIsPresent = [(MFMailComposeController *)self _checkWhetherForwardingAddressIsPresent];

  if (!_checkWhetherForwardingAddressIsPresent)
  {
LABEL_8:
    v21 = MEMORY[0x1E69DC650];
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"HME_NOT_CONFIGURED_ALERT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"HME_NOT_CONFIGURED_ALERT_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
    _allRecipients = [v21 alertControllerWithTitle:v23 message:v25 preferredStyle:1];

    v26 = MEMORY[0x1E69DC648];
    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
    v29 = [v26 actionWithTitle:v28 style:1 handler:0];
    [_allRecipients addAction:v29];

    [(MFMailComposeController *)self _presentModalAlert:_allRecipients];
    [(MFMailComposeController *)self setSendingEmailAddress:0];
    goto LABEL_9;
  }

  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v9 = [em_userDefaults BOOLForKey:*MEMORY[0x1E699AB48]];

  if (v9)
  {
    [(MFMailComposeController *)self _removeAutoBccSendingAddress:addressCopy];
  }

  _allRecipients = [(MFMailComposeController *)self _allRecipients];
  if ([_allRecipients count] >= 2)
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"HME_MULTIPLE_RECEPIENT_ALERT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"HME_MULTIPLE_RECEPIENT_ALERT_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
    v16 = [v11 alertControllerWithTitle:v13 message:v15 preferredStyle:1];

    v17 = MEMORY[0x1E69DC648];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __59__MFMailComposeController__getHMEEmailFromOriginalAddress___block_invoke;
    v45[3] = &unk_1E806E958;
    v45[4] = self;
    v20 = [v17 actionWithTitle:v19 style:1 handler:v45];
    [v16 addAction:v20];

    [(MFMailComposeController *)self _presentModalAlert:v16];
    [(MFMailComposeController *)self setSendingEmailAddress:0];
LABEL_14:

    goto LABEL_9;
  }

  if (![_allRecipients count])
  {
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v39 = [v16 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeController *)self _setSendingEmailAddressAsHME:v39];

    goto LABEL_14;
  }

  v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  sendingEmailAddress = self->_sendingEmailAddress;
  self->_sendingEmailAddress = v31;

  [mailComposeView setLoadingFromAddress:1];
  [(MFMailComposeController *)self _resetSecureCompositionManagerUsingNewAccount:1];
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  mEMORY[0x1E699ACD8]2 = [MEMORY[0x1E699ACD8] sharedInstance];
  firstObject = [_allRecipients firstObject];
  emailAddressValue = [firstObject emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v37 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstObject stringValue];
  }

  v40 = stringValue;

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __59__MFMailComposeController__getHMEEmailFromOriginalAddress___block_invoke_2;
  v41[3] = &unk_1E806E9A0;
  v42 = mailComposeView;
  selfCopy = self;
  v44 = addressCopy;
  [mEMORY[0x1E699ACD8]2 generateHideMyEmailAddressForEmailAddress:v40 completion:v41];

LABEL_9:
}

void __59__MFMailComposeController__getHMEEmailFromOriginalAddress___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v5 = a3;
  if (![*(a1 + 32) isLoadingFromAddress])
  {
    goto LABEL_20;
  }

  if (!v58)
  {
    v6 = [v5 domain];
    if ([v6 isEqualToString:*MEMORY[0x1E698DB28]])
    {
      v7 = [v5 code];

      if (v7 == -7070)
      {
        v8 = MEMORY[0x1E69DC650];
        v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"HME_2FA_ALERT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
        v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"HME_2FA_ALERT_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
        v13 = [v8 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

        v14 = MEMORY[0x1E69DC648];
        v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"CONTINUE_IN_SETTINGS" value:&stru_1F3CF3758 table:@"Main"];
        v17 = [v14 actionWithTitle:v16 style:0 handler:&__block_literal_global_315];
        [v13 addAction:v17];

        v18 = MEMORY[0x1E69DC648];
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
        v21 = [v18 actionWithTitle:v20 style:1 handler:0];
        [v13 addAction:v21];

        [*(a1 + 40) _presentModalAlert:v13];
LABEL_19:

        [*(a1 + 40) setSendingEmailAddress:0];
        [*(a1 + 32) setLoadingFromAddress:0];
        [*(a1 + 40) _updateSendAndCloseEnabled];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v22 = [v5 domain];
    v23 = *MEMORY[0x1E698DC20];
    if ([v22 isEqualToString:*MEMORY[0x1E698DC20]])
    {
      v24 = [v5 code];

      if (v24 == -11002)
      {
        v25 = MEMORY[0x1E69DC650];
        v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"HME_EMAIL_LIMIT_REACHED_TITLE" value:&stru_1F3CF3758 table:@"Main"];
        v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"HME_EMAIL_LIMIT_REACHED_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
        v13 = [v25 alertControllerWithTitle:v27 message:v29 preferredStyle:1];

        v30 = MEMORY[0x1E69DC648];
        v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
        v33 = [v30 actionWithTitle:v32 style:1 handler:0];
        [v13 addAction:v33];

        [*(a1 + 40) _presentModalAlert:v13];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v34 = [v5 domain];
    if ([v34 isEqualToString:v23])
    {
      v35 = [v5 code];

      if (v35 == -11003)
      {
        v36 = MEMORY[0x1E69DC650];
        v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"HME_MAX_LIMIT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
        v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v40 = [v39 localizedStringForKey:@"HME_MAX_LIMIT_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
        v13 = [v36 alertControllerWithTitle:v38 message:v40 preferredStyle:1];

        v41 = MEMORY[0x1E69DC648];
        v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v43 = [v42 localizedStringForKey:@"CONTINUE_IN_SETTINGS" value:&stru_1F3CF3758 table:@"Main"];
        v44 = [v41 actionWithTitle:v43 style:0 handler:&__block_literal_global_331];
        [v13 addAction:v44];

        v45 = MEMORY[0x1E69DC648];
        v46 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v47 = [v46 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
        v48 = [v45 actionWithTitle:v47 style:1 handler:0];
        [v13 addAction:v48];

        [*(a1 + 40) _presentModalAlert:v13];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v49 = MEMORY[0x1E69DC650];
    v50 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"HME_UNKNOWN_ERROR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v52 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"HME_UNKNOWN_ERROR_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
    v13 = [v49 alertControllerWithTitle:v51 message:v53 preferredStyle:1];

    v54 = MEMORY[0x1E69DC648];
    v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v56 = [v55 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
    v57 = [v54 actionWithTitle:v56 style:1 handler:0];
    [v13 addAction:v57];

    [*(a1 + 40) _presentModalAlert:v13];
    goto LABEL_19;
  }

  if ([*(a1 + 40) _setSendingEmailAddressAsHME:?])
  {
    [*(a1 + 40) _updateAutoBccSendingAddress:*(a1 + 48) withNewSendingAddress:v58];
  }

  [*(a1 + 32) setLoadingFromAddress:0];
  [*(a1 + 40) _resetSecureCompositionManagerUsingNewAccount:1];
  [*(a1 + 40) _updateSendAndCloseEnabled];
LABEL_20:
}

void __59__MFMailComposeController__getHMEEmailFromOriginalAddress___block_invoke_3()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

void __59__MFMailComposeController__getHMEEmailFromOriginalAddress___block_invoke_4()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/PRIVATE_EMAIL_MANAGE"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (BOOL)_checkWhetherForwardingAddressIsPresent
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  v3 = [emailAddresses countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
        forwardingEmailForPrimaryAccount = [mEMORY[0x1E699ACD8] forwardingEmailForPrimaryAccount];
        LOBYTE(v6) = [v6 ef_caseInsensitiveIsEqualToString:forwardingEmailForPrimaryAccount];

        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [emailAddresses countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setHideMyEmailAddressForMailToURLAddressString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    [(MFMailComposeController *)self setHideMyEmailAddressIfExists:stringCopy];
  }
}

- (BOOL)isQuickReply
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];

  return isQuickReply;
}

- (void)setIsQuickReply:(BOOL)reply
{
  replyCopy = reply;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setQuickReply:replyCopy];
}

- (void)_composeViewDidDraw:(id)draw
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (!self->_initialAttachmentCount)
  {
    [defaultCenter postNotificationName:@"_MFMailComposeViewControllerFirstDrawNotification" object:self];
    view = [(MFMailComposeController *)self view];
    [defaultCenter removeObserver:self name:@"MailComposeViewDidDraw" object:view];
  }

  if ([(MFMailComposeController *)self markupReplyAttachmentLoadingProgress]== 1)
  {
    v5 = dispatch_time(0, 100000000);
    dispatch_after(v5, MEMORY[0x1E69E96A0], &__block_literal_global_340);
    [(MFMailComposeController *)self setMarkupReplyAttachmentLoadingProgress:2];
    view2 = [(MFMailComposeController *)self view];
    [defaultCenter removeObserver:self name:@"MailComposeViewDidDraw" object:view2];
  }
}

- (void)didInsertBodyText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4)
  {
    LOWORD(v4) = [textCopy characterAtIndex:{objc_msgSend(textCopy, "length") - 1}];
  }

  self->_lastTypedCharacter = v4;
}

- (id)sendingEmailAddress
{
  sendingEmailAddress = self->_sendingEmailAddress;
  if (!sendingEmailAddress)
  {
    _defaultAccount = [(MFMailComposeController *)self _defaultAccount];
    v5 = _defaultAccount;
    if (_defaultAccount)
    {
      firstEmailAddress = [_defaultAccount firstEmailAddress];
      fullUserName = [v5 fullUserName];
      v8 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:firstEmailAddress];
      [v8 setDisplayName:fullUserName];
      emailAddressValue = [v8 emailAddressValue];
      stringValue = [emailAddressValue stringValue];
      [(MFMailComposeController *)self setSendingEmailAddress:stringValue];
    }

    sendingEmailAddress = self->_sendingEmailAddress;
  }

  return sendingEmailAddress;
}

- (id)sendingAccountProxy
{
  sendingEmailAddress = [(MFMailComposeController *)self sendingEmailAddress];
  accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
  v5 = [accountProxyGenerator accountProxyContainingEmailAddress:sendingEmailAddress includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];

  return v5;
}

- (id)allRecipientNamesAndAddresses
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v6 = [_allRecipientViews countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    obj = _allRecipientViews;
    v20 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        recipients = [v8 recipients];
        v10 = [recipients countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(recipients);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              uncommentedAddress = [v13 uncommentedAddress];
              [v3 ef_addOptionalObject:uncommentedAddress];
              displayString = [v13 displayString];
              v16 = displayString;
              if (displayString && ([displayString isEqualToString:uncommentedAddress] & 1) == 0)
              {
                [v4 addObject:v16];
              }
            }

            v10 = [recipients countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      _allRecipientViews = obj;
      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = [MEMORY[0x1E699B848] pairWithFirst:v4 second:v3];

  return v17;
}

- (id)_originalContentMessagesIfExists
{
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    originalContentMessagesFuture = [(MFMailComposeController *)self originalContentMessagesFuture];
    resultIfAvailable = [originalContentMessagesFuture resultIfAvailable];
  }

  else
  {
    resultIfAvailable = 0;
  }

  return resultIfAvailable;
}

- (id)_senderEmailAddress
{
  sendingEmailAddressIfExists = [(MFMailComposeController *)self sendingEmailAddressIfExists];
  if (sendingEmailAddressIfExists)
  {
    v3 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:sendingEmailAddressIfExists];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_recipientsFromRecipientTextView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (view)
  {
    recipients = [v3 recipients];
    v6 = [recipients ef_map:&__block_literal_global_345];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __60__MFMailComposeController__recipientsFromRecipientTextView___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 address];
  v3 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v2];

  return v3;
}

- (BOOL)_hasCustomSignatureConfigured
{
  hasCustomSignature = [(MFMailComposeController *)self hasCustomSignature];
  v4 = hasCustomSignature;
  if (hasCustomSignature)
  {
    bOOLValue = [hasCustomSignature BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailSignatureController hasCustomSigntureForSender:](self->_signatureController, "hasCustomSigntureForSender:", self->_sendingEmailAddress)}];
    [(MFMailComposeController *)self setHasCustomSignature:v6];

    bOOLValue = [0 BOOLValue];
  }

  v7 = bOOLValue;

  return v7;
}

- (id)_originalMessageCategorySubtype
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    compositionContext = [(MFMailComposeController *)self compositionContext];
    originalMessage = [compositionContext originalMessage];

    category = [originalMessage category];
    [category subtype];
    v6 = EMStringFromSubtype();
    lowercaseString = [v6 lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

- (id)inputContextHistory
{
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    v3 = objc_alloc(MEMORY[0x1E69ADD18]);
    smartReplyThreadIdentifier = [(MFMailComposeController *)self smartReplyThreadIdentifier];
    _senderEmailAddress = [(MFMailComposeController *)self _senderEmailAddress];
    v5 = [(MFMailComposeController *)self _recipientsFromRecipientTextView:?];
    v6 = [(MFMailComposeController *)self _recipientsFromRecipientTextView:?];
    subject = [(MFMailComposeController *)self subject];
    v8 = subject;
    if (subject)
    {
      v9 = subject;
    }

    else
    {
      v9 = &stru_1F3CF3758;
    }

    _hasCustomSignatureConfigured = [(MFMailComposeController *)self _hasCustomSignatureConfigured];
    _originalMessageCategorySubtype = [(MFMailComposeController *)self _originalMessageCategorySubtype];
    _originalContentMessagesIfExists = [(MFMailComposeController *)self _originalContentMessagesIfExists];
    LOBYTE(v15) = 0;
    v13 = [v3 initWithThreadIdentifier:smartReplyThreadIdentifier senderEmailAddress:_senderEmailAddress toRecipients:v5 ccRecipients:v6 subject:v9 hasCustomSignature:_hasCustomSignatureConfigured showSmartReplySuggestions:v15 originalMessageCategorySubtype:_originalMessageCategorySubtype originalContentMessages:_originalContentMessagesIfExists];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateManagedPasteboardOwner
{
  v5 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:self->_sendingEmailAddress];
  sourceIsManaged = [v5 sourceIsManaged];

  if (sourceIsManaged)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView _setDataOwnerForCopy:v4];

  mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView2 _setDataOwnerForPaste:v4];
}

- (BOOL)isAddressHideMyEmail:(id)email
{
  emailCopy = email;
  if (emailCopy && ([MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"HIDE_MY_EMAIL_TITLE", &stru_1F3CF3758, @"Main"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(emailCopy, "isEqualToString:", v6), v6, v5, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    v10 = hideMyEmailAddressIfExists;
    v8 = 0;
    if (emailCopy && hideMyEmailAddressIfExists)
    {
      hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
      v8 = [emailCopy isEqualToString:hideMyEmailAddressIfExists2];
    }
  }

  return v8;
}

- (BOOL)isHideMyEmailMessage
{
  hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
  v3 = [hideMyEmailAddressIfExists length] != 0;

  return v3;
}

- (void)setSendingEmailAddress:(id)address
{
  addressCopy = address;
  v4 = self->_sendingEmailAddress;
  if ([(MFMailComposeController *)self isAddressHideMyEmail:addressCopy])
  {
    [(MFMailComposeController *)self _getHMEEmailFromOriginalAddress:self->_sendingEmailAddress];
  }

  else
  {
    v5 = [(MFMailComposeController *)self isAddressHideMyEmail:v4];
    if ([(MFMailComposeController *)self _setSendingEmailAddress:addressCopy])
    {
      [(MFMailComposeController *)self _updateAutoBccSendingAddress:v4 withNewSendingAddress:addressCopy alwaysAdd:v5];
    }
  }

  [(MFMailComposeController *)self _presentSenderCollaborationAlertIfNecessaryForSendingAddress:self->_sendingEmailAddress];
}

- (BOOL)_setSendingEmailAddress:(id)address
{
  v74 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (!addressCopy)
  {
    _defaultAccount = [(MFMailComposeController *)self _defaultAccount];
    firstEmailAddress = [_defaultAccount firstEmailAddress];

    addressCopy = firstEmailAddress;
  }

  v56 = addressCopy;
  if (addressCopy != self->_sendingEmailAddress || ![(NSString *)addressCopy isEqualToString:?])
  {
    emailAddresses = [(MFMailComposeController *)self emailAddresses];
    v8 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v56];
    simpleAddress = [v8 simpleAddress];

    sendingEmailAddressIndex = self->_sendingEmailAddressIndex;
    v57 = simpleAddress;
    selfCopy = self;
    if (sendingEmailAddressIndex == 0x7FFFFFFFFFFFFFFFLL || sendingEmailAddressIndex >= [emailAddresses count] || (objc_msgSend(emailAddresses, "objectAtIndex:", self->_sendingEmailAddressIndex), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", simpleAddress), v11, (v12 & 1) == 0))
    {
      self->_sendingEmailAddressIndex = 0x7FFFFFFFFFFFFFFFLL;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v13 = emailAddresses;
      v14 = [v13 countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v14)
      {
        v15 = *v68;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v68 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v67 + 1) + 8 * i);
            if (![v17 caseInsensitiveCompare:simpleAddress])
            {
              selfCopy->_sendingEmailAddressIndex = [v13 indexOfObject:v17];
              goto LABEL_19;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v67 objects:v73 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      self = selfCopy;
    }

    if (self->_sendingEmailAddressIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      _availableAccountProxies = [(MFMailComposeController *)self _availableAccountProxies];
      v19 = [_availableAccountProxies countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v19)
      {
        obj = _availableAccountProxies;
        v20 = *v64;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v64 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v63 + 1) + 8 * j);
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v24 = MEMORY[0x1E699B240];
            fromEmailAddressesIncludingDisabled = [v22 fromEmailAddressesIncludingDisabled];
            v26 = [v24 emailAddressesFromStrings:fromEmailAddressesIncludingDisabled invalidAddresses:0];

            v27 = [v26 countByEnumeratingWithState:&v59 objects:v71 count:16];
            if (v27)
            {
              v28 = *v60;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v60 != v28)
                  {
                    objc_enumerationMutation(v26);
                  }

                  simpleAddress2 = [*(*(&v59 + 1) + 8 * k) simpleAddress];
                  [v23 addObject:simpleAddress2];
                }

                v27 = [v26 countByEnumeratingWithState:&v59 objects:v71 count:16];
              }

              while (v27);
            }

            if ([v23 containsObject:v57])
            {
              firstEmailAddress2 = [v22 firstEmailAddress];

              selfCopy->_sendingEmailAddressIndex = [emailAddresses indexOfObject:firstEmailAddress2];
              goto LABEL_38;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        firstEmailAddress2 = v56;
LABEL_38:
        _availableAccountProxies = obj;
      }

      else
      {
        firstEmailAddress2 = v56;
      }

      v32 = selfCopy;
      if (selfCopy->_sendingEmailAddressIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
        v56 = firstEmailAddress2;
LABEL_59:
        [(MFMailComposeController *)v32 _resetSecureCompositionManagerUsingNewAccount:1];
        [(MFMailComposeController *)v32 _updateManagedPasteboardOwner];

        goto LABEL_60;
      }

      v56 = firstEmailAddress2;
    }

    v33 = [v56 copy];
    sendingEmailAddress = selfCopy->_sendingEmailAddress;
    selfCopy->_sendingEmailAddress = v33;

    v35 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:selfCopy->_sendingEmailAddress];
    simpleAddress3 = [v35 simpleAddress];

    HasSafeDomain = MFAddressHasSafeDomain(simpleAddress3);
    [(MFMailComposeController *)selfCopy setHideMyEmailAddressIfExists:0];
    mailComposeView = [(MFMailComposeController *)selfCopy mailComposeView];
    fromField = [mailComposeView fromField];
    [fromField setSelectedAddress:simpleAddress3];

    multiField = [mailComposeView multiField];
    [multiField setAccountDescription:simpleAddress3];

    multiField2 = [mailComposeView multiField];
    [multiField2 setAccountHasUnsafeDomain:HasSafeDomain ^ 1u];

    multiField3 = [mailComposeView multiField];
    [multiField3 setAccountAutoselected:0];

    sendingAccountProxy = [(MFMailComposeController *)selfCopy sendingAccountProxy];
    supportsThreadOperations = [sendingAccountProxy supportsThreadOperations];
    subjectField = [mailComposeView subjectField];
    [subjectField setAllowsNotifyOption:supportsThreadOperations];

    webContentVariationField = [mailComposeView webContentVariationField];
    contentVariationName = [(MFMailComposeController *)selfCopy contentVariationName];
    [webContentVariationField setSelectedContentVariationLabel:contentVariationName];

    if (![(MFMailComposeController *)selfCopy removeSignatureForAutoSavedMessages])
    {
      [(MFMailComposeController *)selfCopy updateSignature];
    }

    if ([(MFMailComposeController *)selfCopy composeType])
    {
      v48 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:selfCopy->_sendingEmailAddress];
      v49 = v48;
      if (v48)
      {
        v50 = [v48 sourceIsManaged] ? 2 : 1;
        if (v50 != selfCopy->_sourceAccountManagement)
        {
          selfCopy->_sourceAccountManagement = v50;
          [(_MFMailCompositionContext *)selfCopy->_compositionContext setSourceAccountManagement:?];
          [(MFMailComposeController *)selfCopy _accountsChanged:0];
        }
      }
    }

    else
    {
      v49 = 0;
    }

    if (!selfCopy->_originalSendingEmailAddress)
    {
      goto LABEL_57;
    }

    if (![(NSString *)selfCopy->_sendingEmailAddress isEqualToString:?])
    {
      *(selfCopy + 1376) |= 1u;
    }

    if (!selfCopy->_originalSendingEmailAddress)
    {
LABEL_57:
      v51 = [v56 copy];
      originalSendingEmailAddress = selfCopy->_originalSendingEmailAddress;
      selfCopy->_originalSendingEmailAddress = v51;
    }

    v7 = 1;
    v32 = selfCopy;
    goto LABEL_59;
  }

  v7 = 0;
LABEL_60:

  return v7;
}

- (void)setSendingEmailAddressAsHME:(id)e isComposeTypeReply:(BOOL)reply
{
  replyCopy = reply;
  eCopy = e;
  [(MFMailComposeController *)self _setSendingEmailAddressAsHME:?];
  if (replyCopy)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView setReplyToHME:1];
  }
}

- (BOOL)_setSendingEmailAddressAsHME:(id)e
{
  eCopy = e;
  v5 = eCopy;
  if (!eCopy)
  {
    [(MFMailComposeController *)self _setSendingEmailAddress:0];
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  if (self->_sendingEmailAddress == eCopy && [(NSString *)eCopy isEqualToString:?])
  {
    goto LABEL_10;
  }

  _emailAddressesWithHME = [(MFMailComposeController *)self _emailAddressesWithHME];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  self->_sendingEmailAddressIndex = [_emailAddressesWithHME indexOfObject:v8];

  if (self->_sendingEmailAddressIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v9 = [(NSString *)v5 copy];
  v10 = self->_sendingEmailAddress;
  objc_storeStrong(&self->_sendingEmailAddress, v9);
  [(MFMailComposeController *)self setHideMyEmailAddressIfExists:v9];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  fromField = [mailComposeView fromField];
  [fromField setSelectedAddressToHME:v9];

  multiField = [mailComposeView multiField];
  [multiField setAccountDescription:v9];

  multiField2 = [mailComposeView multiField];
  [multiField2 setAccountHasUnsafeDomain:0];

  multiField3 = [mailComposeView multiField];
  [multiField3 setAccountAutoselected:0];

  sendingAccountProxy = [(MFMailComposeController *)self sendingAccountProxy];
  supportsThreadOperations = [sendingAccountProxy supportsThreadOperations];
  subjectField = [mailComposeView subjectField];
  [subjectField setAllowsNotifyOption:supportsThreadOperations];

  webContentVariationField = [mailComposeView webContentVariationField];
  contentVariationName = [(MFMailComposeController *)self contentVariationName];
  [webContentVariationField setSelectedContentVariationLabel:contentVariationName];

  [(MFMailComposeController *)self removeSignature];
  if (v10 && ![(NSString *)self->_sendingEmailAddress isEqualToString:v10])
  {
    *(self + 1376) |= 1u;
  }

  v21 = 1;
LABEL_11:

  return v21;
}

- (void)setCaretPosition:(unint64_t)position
{
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView setCaretPosition:position];
}

- (void)changeQuoteLevel:(int64_t)level
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    levelCopy = level;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Quote level changed: %ld", &v7, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView changeQuoteLevel:level];
}

- (void)stripCustomBodyIdentifiers
{
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView stripCustomBodyIdentifiers];
}

- (void)markupAttachment:(id)attachment
{
  v24[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Attachment markup started", buf, 2u);
  }

  if (attachmentCopy && [attachmentCopy contentTypeConformsToMarkup])
  {
    contentTypeIdentifier = [attachmentCopy contentTypeIdentifier];
    isDataAvailableLocally = [attachmentCopy isDataAvailableLocally];
    if (contentTypeIdentifier)
    {
      v8 = isDataAvailableLocally;
    }

    else
    {
      v8 = 0;
    }

    if (v8 == 1)
    {
      v9 = [_MFQLItemDataProvider alloc];
      fetchLocalData = [attachmentCopy fetchLocalData];
      fileName = [attachmentCopy fileName];
      v12 = [(_MFQLItemDataProvider *)v9 initWithData:fetchLocalData contentType:contentTypeIdentifier previewTitle:fileName];

      item = [(_MFQLItemDataProvider *)v12 item];
      if (item)
      {
        [(MFMailComposeController *)self setPreviewingAttachment:attachmentCopy];
        v14 = objc_alloc(getQLPreviewControllerClass());
        v24[0] = item;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v16 = [v14 initWithPreviewItems:v15];

        [v16 setIsContentManaged:{-[MFMailComposeController isManagedAccount](self, "isManagedAccount")}];
        [v16 setAppearanceActions:4];
        [v16 setDelegate:self];
        _backgroundColorForMarkupController = [(MFMailComposeController *)self _backgroundColorForMarkupController];
        [v16 setBackgroundColor:_backgroundColorForMarkupController];

        [(MFMailComposeController *)self setPreviewController:v16];
        [v16 setModalPresentationStyle:5];
        v20 = MEMORY[0x1E69E9820];
        selfCopy = self;
        v18 = v16;
        v22 = v18;
        mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
        [mainThreadScheduler performBlock:&v20];
      }

      else
      {
        v18 = MFComposeLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MFMailComposeController markupAttachment:];
        }
      }
    }
  }
}

void __44__MFMailComposeController_markupAttachment___block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveFirstResponder];
  [*(a1 + 32) _dismissPresentedHalfSheet];
  [*(a1 + 32) _dismissRichLinkMenu];
  v2 = [*(a1 + 32) parentViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)insertDrawing
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#CompositionServices Insert drawing started", buf, 2u);
  }

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  if ([mailComposeView isQuickReply])
  {
    view = [(MFMailComposeController *)self view];
    window = [view window];
    [window bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    view = [(MFMailComposeController *)self view];
    [view bounds];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = EMLogCompose();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v47.origin.x = v8;
    v47.origin.y = v10;
    v47.size.width = v12;
    v47.size.height = v14;
    v20 = NSStringFromCGRect(v47);
    *buf = 138543362;
    v41 = v20;
    _os_log_impl(&dword_1BE819000, v19, OS_LOG_TYPE_DEFAULT, "Will use %{public}@ as drawing canvas frame", buf, 0xCu);
  }

  v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v12, v14}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __40__MFMailComposeController_insertDrawing__block_invoke;
  v38[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v38[4] = v8;
  *&v38[5] = v10;
  *&v38[6] = v12;
  *&v38[7] = v14;
  v22 = [v21 PNGDataWithActions:v38];

  v23 = [_MFQLItemDataProvider alloc];
  _nextDrawingName = [(MFMailComposeController *)self _nextDrawingName];
  v25 = [(_MFQLItemDataProvider *)v23 initWithData:v22 contentType:*MEMORY[0x1E6963860] previewTitle:_nextDrawingName];

  item = [(_MFQLItemDataProvider *)v25 item];
  if (item)
  {
    v27 = objc_alloc(getQLPreviewControllerClass());
    v39 = item;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v29 = [v27 initWithPreviewItems:v28];

    [v29 setAppearanceActions:4];
    [v29 setDelegate:self];
    _backgroundColorForMarkupController = [(MFMailComposeController *)self _backgroundColorForMarkupController];
    [v29 setBackgroundColor:_backgroundColorForMarkupController];

    self->_insertingDrawing = 1;
    [(MFMailComposeController *)self setPreviewController:v29];
    [v29 setModalPresentationStyle:5];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __40__MFMailComposeController_insertDrawing__block_invoke_358;
    v36[3] = &unk_1E806C520;
    v36[4] = self;
    v31 = v29;
    v37 = v31;
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [mainThreadScheduler performBlock:v36];
  }

  else
  {
    v31 = MFComposeLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      if (v22)
      {
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "length")}];
      }

      else
      {
        v35 = @"nil";
      }

      *buf = 138543874;
      v41 = v34;
      v42 = 2048;
      selfCopy = self;
      v44 = 2114;
      v45 = v35;
      _os_log_error_impl(&dword_1BE819000, v31, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Failed to insert drawing, image data: %{public}@", buf, 0x20u);
      if (v22)
      {
      }
    }
  }
}

void __40__MFMailComposeController_insertDrawing__block_invoke(double *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 CGContext];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetFillColorWithColor(v3, [v4 CGColor]);

  [v5 fillRect:{a1[4], a1[5], a1[6], a1[7]}];
}

void __40__MFMailComposeController_insertDrawing__block_invoke_358(uint64_t a1)
{
  [*(a1 + 32) saveFirstResponder];
  [*(a1 + 32) _dismissPresentedHalfSheet];
  v2 = [*(a1 + 32) parentViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (id)_nextDrawingName
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DEFAULT_DRAWING_NAME" value:&stru_1F3CF3758 table:@"Main"];

  drawingSequenceNumber = self->_drawingSequenceNumber;
  if (drawingSequenceNumber)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = drawingSequenceNumber + 1;
    self->_drawingSequenceNumber = v7;
    v8 = [v6 localizedStringWithFormat:@"%@ %ld", v4, v7];
  }

  else
  {
    self->_drawingSequenceNumber = 1;
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (void)scanDocument
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document scanning started", v6, 2u);
  }

  [(MFMailComposeController *)self _dismissPresentedHalfSheet];
  [(MFMailComposeController *)self _dismissRichLinkMenu];
  v4 = objc_opt_new();
  [v4 setDelegate:self];
  [(MFMailComposeController *)self setDocumentCameraViewController:v4];
  [(MFMailComposeController *)self saveFirstResponder];
  parentViewController = [(MFMailComposeController *)self parentViewController];
  [parentViewController presentViewController:v4 animated:1 completion:0];
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  scanCopy = scan;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document scanning did finish scan", buf, 2u);
  }

  v7 = objc_alloc_init(MFScannedDocumentConverter);
  v8 = [(MFScannedDocumentConverter *)v7 pdfDocumentFromScannedDocument:scanCopy];
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke;
  v12[3] = &unk_1E806EA08;
  v12[4] = self;
  [v8 onScheduler:mainThreadScheduler addSuccessBlock:v12];

  mainThreadScheduler2 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke_2;
  v11[3] = &unk_1E806EA30;
  v11[4] = self;
  [v8 onScheduler:mainThreadScheduler2 addFailureBlock:v11];

  [(MFMailComposeController *)self _documentCameraViewControllerDidFinish];
}

void __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke_2(uint64_t a1, void *a2)
{
  v15[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke_2_cold_1();
  }

  v5 = MEMORY[0x1E69DC650];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SCAN_DOCUMENT_FAILED_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SCAN_DOCUMENT_FAILED_EXPLAIN" value:&stru_1F3CF3758 table:@"Main"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = MEMORY[0x1E69DC648];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke_374;
  v15[3] = &unk_1E806E958;
  v15[4] = *(a1 + 32);
  v14 = [v11 actionWithTitle:v13 style:1 handler:v15];
  [v10 addAction:v14];

  [*(a1 + 32) _presentModalAlert:v10];
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document scanning was cancelled", v5, 2u);
  }

  [(MFMailComposeController *)self _documentCameraViewControllerDidFinish];
}

- (void)_documentCameraViewControllerDidFinish
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document scanning finished", v5, 2u);
  }

  [(MFMailComposeController *)self dismissViewControllerAnimated:1 completion:0];
  [(MFMailComposeController *)self setDocumentCameraViewController:0];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView restoreFirstResponder];

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Drawing controller dismissed", v5, 2u);
  }

  self->_insertingDrawing = 0;
  [(MFMailComposeController *)self setPreviewingAttachment:0];
}

- (id)dismissActionsForPreviewController:(id)controller
{
  v20[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_insertingDrawing)
  {
    objc_initWeak(&location, self);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = getQLDismissActionClass_softClass;
    v19 = getQLDismissActionClass_softClass;
    if (!getQLDismissActionClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getQLDismissActionClass_block_invoke;
      v15[3] = &unk_1E806CA38;
      v15[4] = &v16;
      __getQLDismissActionClass_block_invoke(v15);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"INSERT_DRAWING_BUTTON" value:&stru_1F3CF3758 table:@"Main"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__MFMailComposeController_dismissActionsForPreviewController___block_invoke;
    v12[3] = &unk_1E806EA58;
    objc_copyWeak(&v13, &location);
    v9 = [v5 actionWithTitle:v8 handler:v12];

    v20[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__MFMailComposeController_dismissActionsForPreviewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v7 firstObject];
  v6 = [v5 editedFileURL];
  [(MFMailComposeController *)WeakRetained _insertDrawingFromExternalURL:v6];
}

- (void)_insertDrawingFromExternalURL:(uint64_t)l
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (l)
  {
    [v3 startAccessingSecurityScopedResource];
    lastPathComponent = [v4 lastPathComponent];
    v6 = MEMORY[0x1E695DFF8];
    v7 = NSTemporaryDirectory();
    v8 = [v6 fileURLWithPath:v7];

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [v8 URLByAppendingPathComponent:uUIDString isDirectory:1];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v24[0] = 0;
    [defaultManager createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v24];
    v13 = v24[0];

    if (v13)
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v13 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MFMailComposeController _insertDrawingFromExternalURL:];
      }
    }

    pathExtension = [lastPathComponent pathExtension];
    v16 = [pathExtension length] == 0;

    if (v16)
    {
      v17 = [lastPathComponent stringByAppendingPathExtension:@"png"];

      lastPathComponent = v17;
    }

    v18 = [v11 URLByAppendingPathComponent:lastPathComponent];

    v19 = v18;
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = v13;
    [defaultManager2 copyItemAtURL:v4 toURL:v19 error:&v23];
    v21 = v23;

    if (v21)
    {
      v22 = MFLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [v21 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MFMailComposeController _insertDrawingFromExternalURL:];
      }
    }

    [v4 stopAccessingSecurityScopedResource];
    [*(l + 1224) insertDocumentWithURL:v19 isDrawingFile:1];
  }
}

- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l
{
  lCopy = l;
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#CompositionServices Drawing controller did save", buf, 2u);
  }

  previewingAttachment = [(MFMailComposeController *)self previewingAttachment];

  if (previewingAttachment)
  {
    objc_initWeak(buf, self);
    previewingAttachment2 = [(MFMailComposeController *)self previewingAttachment];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__MFMailComposeController_previewController_didSaveEditedCopyOfPreviewItem_atURL___block_invoke;
    v10[3] = &unk_1E806EA80;
    objc_copyWeak(&v11, buf);
    [(MFMailComposeController *)self _replaceAttachment:previewingAttachment2 withDocumentAtURL:lCopy completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __82__MFMailComposeController_previewController_didSaveEditedCopyOfPreviewItem_atURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreviewingAttachment:v3];
}

- (void)_replaceAttachment:(void *)attachment withDocumentAtURL:(void *)l completion:
{
  v10 = a2;
  attachmentCopy = attachment;
  lCopy = l;
  if (self)
  {
    [attachmentCopy startAccessingSecurityScopedResource];
    composeWebView = [self composeWebView];
    [composeWebView replaceAttachment:v10 withDocumentAtURL:attachmentCopy completion:lCopy];

    [attachmentCopy stopAccessingSecurityScopedResource];
  }
}

- (void)addSignature:(BOOL)signature
{
  signatureController = self->_signatureController;
  sendingEmailAddress = self->_sendingEmailAddress;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [MFMailSignatureController addSignatureForSender:"addSignatureForSender:bodyField:prepend:" bodyField:sendingEmailAddress prepend:?];
}

- (void)updateSignature
{
  signatureController = self->_signatureController;
  sendingEmailAddress = self->_sendingEmailAddress;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [(MFMailSignatureController *)signatureController updateSignatureForSender:sendingEmailAddress bodyField:?];
}

- (void)removeSignature
{
  signatureController = self->_signatureController;
  sendingEmailAddress = self->_sendingEmailAddress;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [(MFMailSignatureController *)signatureController removeSignatureForSender:sendingEmailAddress bodyField:?];
}

- (void)finalizeSignature:(id)signature
{
  signatureCopy = signature;
  signatureController = self->_signatureController;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [(MFMailSignatureController *)signatureController finalizeSignatureForBodyField:composeWebView completionHandler:signatureCopy];
}

- (BOOL)sendingEmailDirtied
{
  sendingEmailAddress = self->_sendingEmailAddress;
  if (sendingEmailAddress | self->_originalSendingEmailAddress)
  {
    return ![(NSString *)sendingEmailAddress isEqualToString:v2, v3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)bccAddressesDirtied
{
  v34 = *MEMORY[0x1E69E9840];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  bccField = [mailComposeView bccField];
  addresses = [bccField addresses];

  v6 = [(NSArray *)self->_originalBccAddresses count];
  if (v6 == [addresses count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](self->_originalBccAddresses, "count")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_originalBccAddresses;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:*(*(&v28 + 1) + 8 * i)];
          simpleAddress = [v12 simpleAddress];
          [v7 addObject:simpleAddress];
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = addresses;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = *v25;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v24 + 1) + 8 * j);
          v19 = objc_alloc(MEMORY[0x1E699B240]);
          v20 = [v19 initWithString:{v18, v24}];
          simpleAddress2 = [v20 simpleAddress];
          v22 = [v7 containsObject:simpleAddress2];

          if ((v22 & 1) == 0)
          {
            LOBYTE(v15) = 1;
            goto LABEL_20;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (BOOL)canShowFromField
{
  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  v3 = [emailAddresses count] != 0;

  return v3;
}

- (BOOL)canShowImageSizeField
{
  v15 = *MEMORY[0x1E69E9840];
  traitCollection = [(MFMailComposeController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    [(MFMailComposeController *)self attachments];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v5 = v11 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) imageScalingFlags])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_focusGained:(id)gained
{
  gainedCopy = gained;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setKeyboardVisible:1 animate:1];
  object = [gainedCopy object];
  if (object == self->_composeWebView)
  {
    [mailComposeView viewDidBecomeFirstResponder:object];
  }
}

- (void)setSubject:(id)subject
{
  subjectCopy = subject;
  if (self->_subject != subjectCopy)
  {
    objc_storeStrong(&self->_subject, subject);
    [(MFComposeSubjectView *)self->_subjectField setText:subjectCopy];
    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
  }
}

- (NSString)subject
{
  if ((*(self + 1377) & 4) != 0)
  {
    text = self->_subject;
  }

  else
  {
    text = [(MFComposeSubjectView *)self->_subjectField text];
  }

  return text;
}

- (int64_t)_fieldForAddressField:(id)field
{
  fieldCopy = field;
  v5 = fieldCopy;
  if (self->_toField == fieldCopy)
  {
    v8 = 1;
  }

  else if (self->_ccField == fieldCopy)
  {
    v8 = 2;
  }

  else
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    bccField = [mailComposeView bccField];

    if (bccField == v5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_addressFieldForField:(int64_t)field
{
  switch(field)
  {
    case 3:
      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      bccField = [mailComposeView bccField];

      break;
    case 2:
      v3 = 1184;
      goto LABEL_6;
    case 1:
      v3 = 1176;
LABEL_6:
      bccField = *(&self->super.super.super.isa + v3);
      break;
    default:
      bccField = 0;
      break;
  }

  return bccField;
}

- (id)addressesForField:(int64_t)field
{
  v3 = [(MFMailComposeController *)self _addressFieldForField:field];
  addresses = [v3 addresses];

  return addresses;
}

- (id)csPeopleForField:(int64_t)field
{
  v3 = [(MFMailComposeController *)self _addressFieldForField:field];
  v4 = v3;
  if (v3)
  {
    people = [v3 people];
  }

  else
  {
    people = MEMORY[0x1E695E0F0];
  }

  return people;
}

- (id)_csPeopleFromAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = addressesCopy;
  if (addressesCopy)
  {
    v5 = [addressesCopy ef_compactMap:&__block_literal_global_388];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id __50__MFMailComposeController__csPeopleFromAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 em_person];

  return v3;
}

- (void)_setRecipients:(id)recipients forField:(int64_t)field
{
  recipientsCopy = recipients;
  v6 = [(MFMailComposeController *)self addressesForField:field];
  v7 = [v6 isEqualToArray:recipientsCopy];

  if ((v7 & 1) == 0)
  {
    self->_initializedRecipients = 0;
    [(MFMailComposeController *)self setAddresses:recipientsCopy field:field];
    *(self + 1376) |= 1u;
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView updateOptionalHeaderVisibility];
    [mailComposeView setNeedsLayout];
    self->_initializedRecipients = 1;
  }
}

- (id)toRecipients
{
  if ((*(self + 1377) & 4) != 0)
  {
    v2 = self->_toAddresses;
  }

  else
  {
    v2 = [(MFMailComposeController *)self addressesForField:1];
  }

  return v2;
}

- (id)ccRecipients
{
  if ((*(self + 1377) & 4) != 0)
  {
    v2 = self->_ccAddresses;
  }

  else
  {
    v2 = [(MFMailComposeController *)self addressesForField:2];
  }

  return v2;
}

- (id)bccRecipients
{
  if ((*(self + 1377) & 4) != 0)
  {
    v2 = self->_bccAddresses;
  }

  else
  {
    v2 = [(MFMailComposeController *)self addressesForField:3];
  }

  return v2;
}

- (void)setSavedHeaders:(id)headers
{
  headersCopy = headers;
  if (self->_savedHeaders != headersCopy)
  {
    v6 = headersCopy;
    objc_storeStrong(&self->_savedHeaders, headers);
    headersCopy = v6;
  }
}

- (id)composeWebView
{
  if ((*(self + 1376) & 0x20) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_composeWebView;
  }

  return v3;
}

- (void)_updateOriginalBccStatusForRestoreAddingAddress:(BOOL)address
{
  addressCopy = address;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [em_userDefaults BOOLForKey:*MEMORY[0x1E699AB48]];

  hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];

  sendingEmailAddress = [(MFMailComposeController *)self sendingEmailAddress];
  v8 = sendingEmailAddress;
  if (hideMyEmailAddressIfExists)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (v9 == 1)
  {
    v15 = sendingEmailAddress;
    v10 = [sendingEmailAddress length];
    v8 = v15;
    if (v10)
    {
      v11 = addressCopy ? *(self + 1376) : 0;
      v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v15, 0}];
      originalBccAddresses = self->_originalBccAddresses;
      self->_originalBccAddresses = v12;

      v8 = v15;
      if (addressCopy)
      {
        [(MFMailComposeController *)self addAddress:v15 field:3];
        *(self + 1376) = *(self + 1376) & 0xFE | v11 & 1;
        v8 = v15;
      }
    }
  }
}

- (void)_removeAutoBccSendingAddress:(id)address
{
  addressCopy = address;
  [MFMailComposeController removeAddress:"removeAddress:field:" field:?];
  [(MFMailComposeController *)self _draftContentDidChange];
  originalBccAddresses = self->_originalBccAddresses;
  self->_originalBccAddresses = 0;
}

- (void)_updateAutoBccSendingAddress:(id)address withNewSendingAddress:(id)sendingAddress alwaysAdd:(BOOL)add
{
  addCopy = add;
  addressCopy = address;
  sendingAddressCopy = sendingAddress;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v10 = [em_userDefaults BOOLForKey:*MEMORY[0x1E699AB48]];

  if (v10 && [addressCopy length])
  {
    v11 = [(MFMailComposeController *)self _addressFieldForField:3];
    recipients = [v11 recipients];
    v13 = [recipients count];

    if (([v11 containsAddress:addressCopy] | addCopy) == 1)
    {
      [(MFMailComposeController *)self addAddress:sendingAddressCopy field:3];
      v14 = [(MFMailComposeController *)self addressesForField:3];
      v15 = [v14 count];

      if (v15 > v13)
      {
        [(MFMailComposeController *)self removeAddress:addressCopy field:3];
      }

      [(MFMailComposeController *)self _draftContentDidChange];
      v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{sendingAddressCopy, 0}];
    }

    else
    {
      v16 = 0;
    }

    originalBccAddresses = self->_originalBccAddresses;
    self->_originalBccAddresses = v16;
  }
}

- (void)addAddress:(id)address field:(int64_t)field
{
  addressCopy = address;
  v6 = [(MFMailComposeController *)self _addressFieldForField:field];
  [v6 addAddress:addressCopy];
  addresses = [v6 addresses];
  v8 = [addresses count];

  if (v8)
  {
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  }
}

- (void)setAddresses:(id)addresses field:(int64_t)field
{
  addressesCopy = addresses;
  v6 = [(MFMailComposeController *)self _addressFieldForField:field];
  [v6 setAddresses:addressesCopy];
  if ([addressesCopy count])
  {
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  }
}

- (void)removeAddress:(id)address field:(int64_t)field
{
  addressCopy = address;
  v7 = [(MFMailComposeController *)self _addressFieldForField:field];
  recipients = [v7 recipients];
  if ([v7 containsAddress:addressCopy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__MFMailComposeController_removeAddress_field___block_invoke;
    v13[3] = &unk_1E806EAC8;
    v14 = addressCopy;
    v9 = [recipients ef_filter:v13];
    firstObject = [v9 firstObject];
    [v7 removeRecipient:firstObject];

    addresses = [v7 addresses];
    v12 = [addresses count];

    if (v12)
    {
      [(MFMailComposeController *)self _updateSendAndCloseEnabled];
    }
  }
}

uint64_t __47__MFMailComposeController_removeAddress_field___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 lowercaseString];
  v5 = [*(a1 + 32) lowercaseString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)_allRecipientViews
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{self->_toField, self->_ccField, 0}];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  bccField = [mailComposeView bccField];

  if (bccField)
  {
    [v3 addObject:bccField];
  }

  return v3;
}

- (id)_allRecipients
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v5 = [_allRecipientViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_allRecipientViews);
        }

        addresses = [*(*(&v10 + 1) + 8 * i) addresses];
        [v3 addObjectsFromArray:addresses];
      }

      v5 = [_allRecipientViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)_hasRecipients
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v3 = [_allRecipientViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(_allRecipientViews);
        }

        recipients = [*(*(&v9 + 1) + 8 * i) recipients];
        v7 = [recipients count] == 0;

        if (!v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_allRecipientViews countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_anyRecipientViewContainsAddress:(id)address
{
  v17 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:addressCopy];
  simpleAddress = [v5 simpleAddress];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v8 = [_allRecipientViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(_allRecipientViews);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsAddress:simpleAddress])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [_allRecipientViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)finishEnteringRecipients
{
  v17 = *MEMORY[0x1E69E9840];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  firstResponder = [mailComposeView firstResponder];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v6 = [_allRecipientViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_allRecipientViews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        textView = [v9 textView];
        v11 = textView == firstResponder;

        if (v11)
        {
          [v9 finishEnteringRecipient];
          goto LABEL_11;
        }
      }

      v6 = [_allRecipientViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (int64_t)compositionType
{
  compositionContext = [(MFMailComposeController *)self compositionContext];
  composeType = [compositionContext composeType];

  return composeType;
}

- (BOOL)isManagedAccount
{
  v2 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:self->_sendingEmailAddress];
  sourceIsManaged = [v2 sourceIsManaged];

  return sourceIsManaged;
}

- (void)_willPresentDocumentPicker
{
  if (self->_releaseActiveFocusedState)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailComposeController.m" lineNumber:3003 description:@"Expected _releaseActiveFocusedState to be nil"];
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  _retainActiveFocusedState = [composeWebView _retainActiveFocusedState];
  v4 = [_retainActiveFocusedState copy];
  releaseActiveFocusedState = self->_releaseActiveFocusedState;
  self->_releaseActiveFocusedState = v4;
}

- (void)_didDismissDocumentPicker
{
  releaseActiveFocusedState = self->_releaseActiveFocusedState;
  if (releaseActiveFocusedState)
  {
    releaseActiveFocusedState[2](releaseActiveFocusedState, a2);
    v4 = self->_releaseActiveFocusedState;
    self->_releaseActiveFocusedState = 0;
  }
}

- (void)importDocument
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document import started", v7, 2u);
  }

  [(MFMailComposeController *)self _dismissPresentedHalfSheet];
  [(MFMailComposeController *)self _dismissRichLinkMenu];
  supportedDocumentUTIs = [MEMORY[0x1E69B15D0] supportedDocumentUTIs];
  v5 = [objc_alloc(MEMORY[0x1E69DC968]) initWithDocumentTypes:supportedDocumentUTIs inMode:0];
  [v5 _setIsContentManaged:{-[MFMailComposeController isManagedAccount](self, "isManagedAccount")}];
  [v5 setDelegate:self];
  [(MFMailComposeController *)self saveFirstResponder];
  [(MFMailComposeController *)self _willPresentDocumentPicker];
  presentationController = [v5 presentationController];
  [presentationController setDelegate:self];

  [(MFMailComposeController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v26 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v17 = [lsCopy ef_map:&__block_literal_global_397];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v17;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document picker did import URLs: %{public}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = lsCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [MEMORY[0x1E69B15E8] securityScopedURL:v9];
        startReadAccess = [v10 startReadAccess];
        if (startReadAccess)
        {
          [(MFComposeWebView *)self->_composeWebView insertDocumentWithURL:startReadAccess isDrawingFile:0];
          [v10 stopAccess];
        }

        else
        {
          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = MEMORY[0x1E699B858];
            absoluteString = [v9 absoluteString];
            v15 = [v13 fullyRedactedStringForString:absoluteString];
            *buf = 138543362;
            v25 = v15;
            _os_log_error_impl(&dword_1BE819000, v12, OS_LOG_TYPE_ERROR, "#CompositionServices Error occurred when attempting to acquire a security scoped URL for document at URL: %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  [(MFMailComposeController *)self _didDismissDocumentPicker];
}

id __65__MFMailComposeController_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699B858];
  v3 = [a2 absoluteString];
  v4 = [v2 fullyRedactedStringForString:v3];

  return v4;
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Document picker cancelled", v5, 2u);
  }

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  [(MFMailComposeController *)self _didDismissDocumentPicker];
}

- (CGRect)_optimalRectForPresentingPopoverInComposeWebView
{
  composeWebView = [(MFMailComposeController *)self composeWebView];
  scrollView = [composeWebView scrollView];
  scrollView2 = [composeWebView scrollView];
  [scrollView2 visibleBounds];
  [scrollView convertRect:composeWebView toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v47.origin.x = v6;
  v47.origin.y = v8;
  v47.size.width = v10;
  v47.size.height = v12;
  MidX = CGRectGetMidX(v47);
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  MidY = CGRectGetMidY(v48);
  firstResponder = [composeWebView firstResponder];
  width = 1.0;
  if ([firstResponder conformsToProtocol:&unk_1F3D2A1F0])
  {
    selectedTextRange = [firstResponder selectedTextRange];
    if ([selectedTextRange isEmpty])
    {
      start = [selectedTextRange start];
      [firstResponder caretRectForPosition:start];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
    }

    else
    {
      start = [firstResponder selectionRectsForRange:selectedTextRange];
      firstObject = [start firstObject];
      v29 = firstObject;
      if (!firstObject)
      {

        height = 1.0;
        goto LABEL_8;
      }

      [firstObject rect];
      v20 = v30;
      v22 = v31;
      v24 = v32;
      v26 = v33;
    }

    textInputView = [firstResponder textInputView];
    [textInputView convertRect:composeWebView toView:{v20, v22, v24, v26}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v49.origin.x = v36;
    v49.origin.y = v38;
    v49.size.width = v40;
    v49.size.height = v42;
    v50 = CGRectInset(v49, -2.0, 0.0);
    MidX = v50.origin.x;
    MidY = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
LABEL_8:

    goto LABEL_9;
  }

  height = 1.0;
LABEL_9:

  v43 = MidX;
  v44 = MidY;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (void)showPhotoPickerWithSourceType:(int64_t)type fromSource:(id)source
{
  v11 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#CompositionServices Showing photo picker with source: %ld", &v9, 0xCu);
  }

  v8 = [MEMORY[0x1E69DCAD0] availableMediaTypesForSourceType:type];
  if ([v8 count])
  {
    if (type == 1)
    {
      [(MFMailComposeController *)self _showCamera:sourceCopy];
    }

    else if (_os_feature_enabled_impl())
    {
      [(MFMailComposeController *)self _showSystemPhotoPicker:sourceCopy];
    }

    else
    {
      [(MFMailComposeController *)self _showPhotoPicker:sourceCopy];
    }
  }
}

- (void)_showCamera:(id)camera
{
  [(MFMailComposeController *)self _dismissPresentedHalfSheet];
  [(MFMailComposeController *)self _dismissRichLinkMenu];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Presenting Camera", v8, 2u);
  }

  v5 = [MEMORY[0x1E69DCAD0] mf_systemImagePickerWithSourceType:1];
  cameraPickerController = self->_cameraPickerController;
  self->_cameraPickerController = v5;

  [(UIImagePickerController *)self->_cameraPickerController setDelegate:self];
  [(MFMailComposeController *)self saveFirstResponder];
  parentViewController = [(MFMailComposeController *)self parentViewController];
  [parentViewController presentViewController:self->_cameraPickerController animated:1 completion:0];
}

- (void)_showPhotoPicker:(id)picker
{
  v24[2] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  presentedViewController = [(MFMailComposeController *)self presentedViewController];
  if (presentedViewController)
  {
    photosPickerController = self->_photosPickerController;

    if (photosPickerController)
    {
      goto LABEL_15;
    }
  }

  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#CompositionServices Presenting Photo Picker", v23, 2u);
  }

  [(MFMailComposeController *)self _dismissPresentedHalfSheet];
  [(MFMailComposeController *)self _dismissRichLinkMenu];
  v8 = objc_alloc_init(MFPhotoPickerProgressManager);
  [(MFMailComposeController *)self setPhotoPickerProgressManager:v8];
  v9 = [[MFPhotoPickerController alloc] initWithPhotoPickerProgressManager:v8];
  v10 = self->_photosPickerController;
  self->_photosPickerController = v9;

  [(MFPhotoPickerController *)self->_photosPickerController setPickerDelegate:self];
  [(MFMailComposeController *)self _preparePhotoPicker];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_photosPickerController];
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    [v11 setModalPresentationStyle:7];
  }

  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setSourceView:pickerCopy];
    [(MFMailComposeController *)self _optimalRectForPresentingPopoverInComposeWebView];
    [popoverPresentationController setSourceRect:?];
    v15 = 12;
LABEL_11:
    [popoverPresentationController setPermittedArrowDirections:v15];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setBarButtonItem:pickerCopy];
    v15 = 14;
    goto LABEL_11;
  }

LABEL_12:
  presentationController = [v11 presentationController];
  [presentationController setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = presentationController;
    v18 = [(MFMailComposeController *)self _sheetDetentForIdentifier:@"PhotoPickerHalfDetent" viewController:self->_photosPickerController];
    v24[0] = v18;
    largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
    v24[1] = largeDetent;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v17 setDetents:v20];

    [v17 setLargestUndimmedDetentIdentifier:@"PhotoPickerHalfDetent"];
    [v17 setPrefersEdgeAttachedInCompactHeight:1];
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView retainFocusAfterPresenting];
  }

  parentViewController = [(MFMailComposeController *)self parentViewController];
  [parentViewController presentViewController:v11 animated:1 completion:0];

LABEL_15:
}

- (void)_showSystemPhotoPicker:(id)picker
{
  v25[2] = *MEMORY[0x1E69E9840];
  presentedViewController = [(MFMailComposeController *)self presentedViewController];
  if (!presentedViewController || (v5 = self->_systemPhotosPickerController, presentedViewController, !v5))
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#CompositionServices Presenting Photo Picker", buf, 2u);
    }

    [(MFMailComposeController *)self _dismissPresentedHalfSheet];
    [(MFMailComposeController *)self _dismissRichLinkMenu];
    v7 = MEMORY[0x1E695DFD8];
    composeWebView = [(MFMailComposeController *)self composeWebView];
    contentIDsForMediaAttachments = [composeWebView contentIDsForMediaAttachments];
    v10 = [v7 setWithArray:contentIDsForMediaAttachments];

    v11 = [[MFComposePhotoPickerController alloc] initWithPreselectedAssetIdentifiers:v10];
    systemPhotosPickerController = self->_systemPhotosPickerController;
    self->_systemPhotosPickerController = v11;

    [(MFComposePhotoPickerController *)self->_systemPhotosPickerController setDelegate:self];
    traitCollection = [(MFMailComposeController *)self traitCollection];
    LOBYTE(contentIDsForMediaAttachments) = [traitCollection mf_supportsPopoverPresentation];

    if ((contentIDsForMediaAttachments & 1) == 0)
    {
      pickerViewController = [(MFComposePhotoPickerController *)self->_systemPhotosPickerController pickerViewController];
      presentationController = [pickerViewController presentationController];

      [presentationController setDelegate:self];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = presentationController;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __50__MFMailComposeController__showSystemPhotoPicker___block_invoke;
        v23[3] = &unk_1E806EB10;
        v23[4] = self;
        v17 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"PhotoPickerHalfDetent" resolver:v23];
        v25[0] = v17;
        largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
        v25[1] = largeDetent;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
        [v16 setDetents:v19];

        [v16 setLargestUndimmedDetentIdentifier:@"PhotoPickerHalfDetent"];
        [v16 setPrefersEdgeAttachedInCompactHeight:1];
        [v16 setPrefersGrabberVisible:1];
        composeWebView2 = [(MFMailComposeController *)self composeWebView];
        [composeWebView2 retainFocusAfterPresenting];
      }
    }

    parentViewController = [(MFMailComposeController *)self parentViewController];
    pickerViewController2 = [(MFComposePhotoPickerController *)self->_systemPhotosPickerController pickerViewController];
    [parentViewController presentViewController:pickerViewController2 animated:1 completion:0];
  }
}

double __50__MFMailComposeController__showSystemPhotoPicker___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1152);
  v3 = [a2 containerTraitCollection];
  [v2 preferredHeightForTraitCollection:v3];
  v5 = v4;

  return v5;
}

- (void)_preparePhotoPicker
{
  composeWebView = [(MFMailComposeController *)self composeWebView];
  contentIDsForMediaAttachments = [composeWebView contentIDsForMediaAttachments];

  if (contentIDsForMediaAttachments)
  {
    [(MFPhotoPickerController *)self->_photosPickerController addSelectedAssetIdentifiers:contentIDsForMediaAttachments];
  }
}

- (void)photoPickerDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker dismissed", v7, 2u);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView releaseFocusAfterDismissing:1];

  [(MFPhotoPickerController *)self->_photosPickerController dismissViewControllerAnimated:1 completion:0];
  photosPickerController = self->_photosPickerController;
  self->_photosPickerController = 0;

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)photoPickerDidCancelSystemImagePicker:(id)picker
{
  pickerCopy = picker;
  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:?];
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)photoPicker:(id)picker didSelectAssetWithIdentifier:(id)identifier mediaInfo:(id)info
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did select asset %{public}@", &v10, 0xCu);
  }

  [(MFMailComposeController *)self insertPhotoOrVideoWithAssetIdentifier:identifierCopy info:infoCopy];
}

- (void)photoPicker:(id)picker didDeselectAssetWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = +[MFComposePhotoPickerItem contentIdentifierPrefix];
  v7 = [v6 stringByAppendingString:identifierCopy];

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did deselect asset with content identifier: %{public}@", &v9, 0xCu);
  }

  [(MFComposeWebView *)self->_composeWebView removeMediaWithContentIdentifier:v7];
}

- (id)presentingViewControllerForPhotoPicker:(id)picker
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    parentViewController = [(MFMailComposeController *)self parentViewController];
  }

  else
  {
    parentViewController = 0;
  }

  return parentViewController;
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did cancel", v5, 2u);
  }

  [(MFMailComposeController *)self _dismissAndCleanupCameraPickerController];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did finish", v10, 2u);
  }

  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DE968]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v8 = v9;
  }

  [(MFMailComposeController *)self insertPhotoOrVideoWithAssetIdentifier:v8 info:infoCopy];
  [(MFMailComposeController *)self _dismissAndCleanupCameraPickerController];
}

- (void)_dismissAndCleanupCameraPickerController
{
  [(UIImagePickerController *)self->_cameraPickerController dismissViewControllerAnimated:1 completion:0];
  cameraPickerController = self->_cameraPickerController;
  self->_cameraPickerController = 0;

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)photoPickerController:(id)controller didAddItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    assetIdentifier = [itemCopy assetIdentifier];
    *buf = 138543362;
    v14 = assetIdentifier;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did add asset %{public}@", buf, 0xCu);
  }

  composeWebView = self->_composeWebView;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MFMailComposeController_photoPickerController_didAddItem___block_invoke;
  v10[3] = &unk_1E806C520;
  v9 = itemCopy;
  v11 = v9;
  selfCopy = self;
  [(MFComposeWebView *)composeWebView insertMediaWithPhotoPickerItem:v9 completion:v10];
}

void __60__MFMailComposeController_photoPickerController_didAddItem___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) assetIdentifier];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "#CompositionServices webview did add asset %{public}@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) assetURL];
  [v4 _deleteFileAtURLIfInTmp:v5];
}

- (void)photoPickerController:(id)controller didRemoveAsset:(id)asset
{
  v11 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = +[MFComposePhotoPickerItem contentIdentifierPrefix];
  v7 = [v6 stringByAppendingString:assetCopy];

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker did remove asset with content identifier: %{public}@", &v9, 0xCu);
  }

  [(MFComposeWebView *)self->_composeWebView removeMediaWithContentIdentifier:v7];
}

- (void)photoPickerControllerDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo Picker dismissed", buf, 2u);
  }

  pickerViewController = [(MFComposePhotoPickerController *)self->_systemPhotosPickerController pickerViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MFMailComposeController_photoPickerControllerDidCancel___block_invoke;
  v6[3] = &unk_1E806C570;
  v6[4] = self;
  [pickerViewController dismissViewControllerAnimated:1 completion:v6];
}

- (void)_photoPickerDidDisappear
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#CompositionServices Photo picker has disappeared - performing cleanup", v6, 2u);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView releaseFocusAfterDismissing:1];

  systemPhotosPickerController = self->_systemPhotosPickerController;
  self->_systemPhotosPickerController = 0;

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)insertPhotoOrVideoWithAssetIdentifier:(id)identifier info:(id)info
{
  infoCopy = info;
  composeWebView = self->_composeWebView;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MFMailComposeController_insertPhotoOrVideoWithAssetIdentifier_info___block_invoke;
  v9[3] = &unk_1E806C520;
  v10 = infoCopy;
  selfCopy = self;
  v8 = infoCopy;
  [(MFComposeWebView *)composeWebView insertPhotoOrVideoWithAssetIdentifier:identifier infoDictionary:v8 completion:v9];
}

void __70__MFMailComposeController_insertPhotoOrVideoWithAssetIdentifier_info___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DDE08]];
  [*(a1 + 40) _deleteFileAtURLIfInTmp:?];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  [*(a1 + 40) _deleteFileAtURLIfInTmp:v2];
}

- (void)_deleteFileAtURLIfInTmp:(id)tmp
{
  v17 = *MEMORY[0x1E69E9840];
  tmpCopy = tmp;
  v4 = tmpCopy;
  if (tmpCopy)
  {
    relativePath = [tmpCopy relativePath];
    v6 = NSTemporaryDirectory();
    v7 = [relativePath hasPrefix:v6];

    if (v7)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      v9 = [defaultManager removeItemAtURL:v4 error:&v15];
      v10 = v15;

      if ((v9 & 1) == 0)
      {
        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = MEMORY[0x1E699B858];
          absoluteString = [v4 absoluteString];
          v14 = [v12 fullyRedactedStringForString:absoluteString];
          [(MFMailComposeController *)v14 _deleteFileAtURLIfInTmp:v16, v11, absoluteString];
        }
      }
    }
  }
}

- (void)_updateSendAndCloseEnabled
{
  _shouldEnableSendButton = [(MFMailComposeController *)self _shouldEnableSendButton];
  quickReplyActionButtonProvider = [(MFMailComposeController *)self quickReplyActionButtonProvider];
  quickReplySendButton = [quickReplyActionButtonProvider quickReplySendButton];
  quickReplyExpandButton = [quickReplyActionButtonProvider quickReplyExpandButton];
  [(UIBarButtonItem *)self->_sendButtonItem setEnabled:_shouldEnableSendButton];
  [(UIBarButtonItem *)self->_sendLaterButtonItem setEnabled:_shouldEnableSendButton];
  [quickReplySendButton setEnabled:_shouldEnableSendButton];
  [(UIButton *)self->_sendAccessoryButton setEnabled:_shouldEnableSendButton];
  [quickReplyExpandButton setUserInteractionEnabled:_shouldEnableSendButton];
  [quickReplyExpandButton setHidden:_shouldEnableSendButton ^ 1];
  [quickReplySendButton setUserInteractionEnabled:_shouldEnableSendButton];
  [(UIButton *)self->_sendAccessoryButton setUserInteractionEnabled:_shouldEnableSendButton];
  [(UIBarButtonItem *)self->_closeButtonItem setEnabled:[(MFMailComposeController *)self _shouldEnableCloseButton]];
  if (MFSolariumFeatureEnabled())
  {
    if (_shouldEnableSendButton)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(UIBarButtonItem *)self->_sendButtonItem setStyle:v6];
  }
}

- (void)_updateSendAndCloseButtonTintColor
{
  view = [(MFMailComposeController *)self view];
  window = [view window];
  tintColor = [window tintColor];

  mailInteractiveColor = tintColor;
  if (!tintColor)
  {
    mailInteractiveColor = [MEMORY[0x1E69DC888] mailInteractiveColor];
  }

  v9 = mailInteractiveColor;
  [(UIBarButtonItem *)self->_sendButtonItem setTintColor:?];
  [(UIButton *)self->_sendAccessoryButton setTintColor:v9];
  quickReplyActionButtonProvider = [(MFMailComposeController *)self quickReplyActionButtonProvider];
  quickReplyExpandButton = [quickReplyActionButtonProvider quickReplyExpandButton];
  [quickReplyExpandButton setTintColor:v9];
}

- (BOOL)_isPopoverOrActionSheetOrAlertVisible
{
  if ((*(self + 1377) & 2) == 0)
  {
    popoverAlert = [(MFMailComposeController *)self popoverAlert];
    if (popoverAlert)
    {
      v5 = 1;
LABEL_10:

      return v5;
    }

    photosPickerController = self->_photosPickerController;
    if (photosPickerController && (-[MFPhotoPickerController parentViewController](self->_photosPickerController, "parentViewController"), v2 = objc_claimAutoreleasedReturnValue(), [v2 modalPresentationStyle] == 7))
    {
      v5 = 1;
    }

    else
    {
      documentCameraViewController = [(MFMailComposeController *)self documentCameraViewController];
      v5 = documentCameraViewController != 0;

      if (!photosPickerController)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  return 1;
}

- (BOOL)_shouldEnableSendButton
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(MFMailComposeController *)self hasActiveWritingToolsSession])
  {
    mailComposeView = MFLogGeneral();
    if (os_log_type_enabled(mailComposeView, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18[0]) = 0;
      v4 = "#CompositionServices Has active writing tools session.";
LABEL_10:
      _os_log_impl(&dword_1BE819000, mailComposeView, OS_LOG_TYPE_DEFAULT, v4, v18, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([(MFMailComposeController *)self _isSetupForDelivery])
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    if ([mailComposeView isLoading])
    {
      _allRecipientViews = MFLogGeneral();
      if (os_log_type_enabled(_allRecipientViews, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18[0]) = 0;
        v6 = "#CompositionServices Composition loading.";
LABEL_15:
        _os_log_impl(&dword_1BE819000, _allRecipientViews, OS_LOG_TYPE_DEFAULT, v6, v18, 2u);
      }
    }

    else if ([(MFMailComposeController *)self _isPopoverOrActionSheetOrAlertVisible])
    {
      _allRecipientViews = MFLogGeneral();
      if (os_log_type_enabled(_allRecipientViews, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18[0]) = 0;
        v6 = "#CompositionServices Popover/alert visible.";
        goto LABEL_15;
      }
    }

    else
    {
      mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
      isQuickReply = [mailComposeView2 isQuickReply];

      if (isQuickReply && ![(MFMailComposeController *)self hasMessageBodyContent])
      {
        goto LABEL_11;
      }

      _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
      v11 = [_allRecipientViews ef_any:&__block_literal_global_648];
      v12 = [_allRecipientViews ef_any:&__block_literal_global_650];
      if ((v11 | v12))
      {
        if ([(MFMailComposeController *)self _wantsEncryption]&& v12 & 1 | !self->_encryptionStatusIsKnown)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            encryptionStatusIsKnown = self->_encryptionStatusIsKnown;
            v18[0] = 67109376;
            v18[1] = encryptionStatusIsKnown;
            v19 = 1024;
            v20 = v12;
            _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "#CompositionServices eKnown: %d, hasUnfinished: %d", v18, 0xEu);
          }
        }

        else if (([mailComposeView isLoadingFromAddress]& 1) == 0)
        {
          if ((*(self + 1376) & 2) != 0 || [(MFMailComposeController *)self hasAttachments])
          {
            v7 = 1;
          }

          else
          {
            whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            text = [(MFComposeSubjectView *)self->_subjectField text];
            v17 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v7 = ([v17 length] != 0) & (isQuickReply ^ 1);
          }

          goto LABEL_17;
        }
      }
    }

    v7 = 0;
LABEL_17:

    goto LABEL_18;
  }

  mailComposeView = MFLogGeneral();
  if (os_log_type_enabled(mailComposeView, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18[0]) = 0;
    v4 = "#CompositionServices Not set up for delivery.";
    goto LABEL_10;
  }

LABEL_11:
  v7 = 0;
LABEL_18:

  return v7;
}

BOOL __50__MFMailComposeController__shouldEnableSendButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recipients];
  v3 = [v2 count] != 0;

  return v3;
}

BOOL __50__MFMailComposeController__shouldEnableSendButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 editable])
  {
    v3 = [v2 text];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)sendingAccountIsExchange
{
  v2 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:self->_sendingEmailAddress];
  v3 = 0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 1;
    }
  }

  return v3;
}

- (id)shouldCreateRichTextRepresentation
{
  if ([(MFMailComposeController *)self useMailDrop]|| [(MFMailComposeController *)self sendingAccountIsExchange]&& [(MFMailComposeController *)self hasAttachments])
  {
    containsRichText = [MEMORY[0x1E699B7C8] futureWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    containsRichText = [(MFComposeWebView *)self->_composeWebView containsRichText];
  }

  return containsRichText;
}

- (id)attachments
{
  compositionContext = [(MFMailComposeController *)self compositionContext];
  contextID = [compositionContext contextID];

  if ([contextID length])
  {
    compositionContext2 = [(MFMailComposeController *)self compositionContext];
    attachmentManager = [compositionContext2 attachmentManager];
    v7 = [attachmentManager attachmentsForContext:contextID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasAttachments
{
  attachments = [(MFMailComposeController *)self attachments];
  v3 = [attachments count] != 0;

  return v3;
}

- (CGRect)frameForAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MFComposeWebView *)self->_composeWebView rectOfElementWithID:identifierCopy];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (!CGRectEqualToRect(v18, *MEMORY[0x1E695F058]))
  {
    view = [(MFMailComposeController *)self view];
    [view convertRect:self->_composeWebView fromView:{x, y, width, height}];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)rectOfAttachment:(id)attachment
{
  v4 = [attachment fileWrapperForcingDownload:0];
  contentID = [v4 contentID];
  [(MFMailComposeController *)self frameForAttachmentWithIdentifier:contentID];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setContentVisible:(BOOL)visible
{
  if (self->_contentVisible != visible)
  {
    self->_contentVisible = visible;
    composeWebView = self->_composeWebView;
    v4 = 0.0;
    if (visible)
    {
      v4 = 1.0;
    }

    [(MFComposeWebView *)composeWebView setAlpha:v4];
  }
}

- (void)didCreateAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([(MFMailComposeController *)self canShowImageSizeField])
  {
    imageScalingGroup = self->_imageScalingGroup;
    if (!imageScalingGroup)
    {
      v6 = dispatch_group_create();
      v7 = self->_imageScalingGroup;
      self->_imageScalingGroup = v6;

      imageScalingGroup = self->_imageScalingGroup;
    }

    dispatch_group_enter(imageScalingGroup);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__MFMailComposeController_didCreateAttachment___block_invoke;
    v21[3] = &unk_1E806EB58;
    v21[4] = self;
    [attachmentCopy enqueueScaleAttachmentWithCompletionBlock:v21];
    v8 = [MEMORY[0x1E69AD788] weakReferenceWithObject:self->_imageScalingGroup];
    objc_initWeak(&location, self);
    v9 = self->_imageScalingGroup;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __47__MFMailComposeController_didCreateAttachment___block_invoke_2;
    v17 = &unk_1E806EB80;
    v18 = v8;
    v10 = v8;
    objc_copyWeak(&v19, &location);
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], &v14);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  v11 = [(MFMailComposeController *)self mailComposeView:v14];
  isQuickReply = [v11 isQuickReply];

  if (isQuickReply)
  {
    quickReplyDelegate = [(MFMailComposeController *)self quickReplyDelegate];
    [quickReplyDelegate mailComposeController:self willMigrateToFullComposeWithReason:0];
  }
}

void __47__MFMailComposeController_didCreateAttachment___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) reference];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = dispatch_group_wait(v2, 0);
    v3 = v6;
    if (!v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [WeakRetained _updateImageSizeTitles];

      v3 = v6;
    }
  }
}

- (void)didInsertAttachment:(id)attachment
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];

  if (isQuickReply)
  {
    *(self + 1376) |= 1u;
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView setDirty:1];

    [(MFMailComposeController *)self expandQuickReplyToFullCompose];
  }
}

- (id)_attachmentToMarkup
{
  v21 = *MEMORY[0x1E69E9840];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  attachmentToMarkupContentID = [compositionContext attachmentToMarkupContentID];

  if (attachmentToMarkupContentID)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    attachments = [(MFMailComposeController *)self attachments];
    v6 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(attachments);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          contentID = [v9 contentID];
          compositionContext2 = [(MFMailComposeController *)self compositionContext];
          attachmentToMarkupContentID2 = [compositionContext2 attachmentToMarkupContentID];
          v13 = [contentID isEqualToString:attachmentToMarkupContentID2];

          if (v13)
          {
            v14 = v9;
            goto LABEL_12;
          }
        }

        v6 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)currentScaleImageSize
{
  v3 = [(MFMailComposeController *)self _sizeForScale:+[MFComposeTypeFactory imagesOnly:"imageScaleFromUserDefaults"], 1];
  if (v3)
  {
    v4 = v3;
    v5 = [(MFMailComposeController *)self _sizeForScale:0 imagesOnly:1];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v3 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v6];
  }

  return v3;
}

- (void)_updateImageSizeTitles
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView toggleImageSizeFieldIfNecessary];

  if ([(MFMailComposeController *)self canShowImageSizeField])
  {
    if (!self->_imageSizeField)
    {
      mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
      imageSizeField = [mailComposeView2 imageSizeField];
      imageSizeField = self->_imageSizeField;
      self->_imageSizeField = imageSizeField;

      [(MFComposeImageSizeView *)self->_imageSizeField setDelegate:self];
    }

    v7 = +[MFComposeTypeFactory imageScaleFromUserDefaults];
    v8 = [(MFMailComposeController *)self _sizeForScale:0 imagesOnly:1];
    if (v8)
    {
      v9 = v8;
      v10 = [(MFMailComposeController *)self _sizeForScale:4 imagesOnly:1];
      v11 = [(MFMailComposeController *)self _sizeForScale:2 imagesOnly:1];
      v12 = [(MFMailComposeController *)self _sizeForScale:1 imagesOnly:1];
      v13 = self->_imageSizeField;
      v14 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v9];
      [(MFComposeImageSizeView *)v13 setSizeDescription:v14 forScale:0];

      v15 = self->_imageSizeField;
      if (v10 >= v9)
      {
        [(MFComposeImageSizeView *)self->_imageSizeField removeSizeDescriptionForScale:4];
        if (v7 == 4)
        {
          v7 = 0;
        }
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v10];
        [(MFComposeImageSizeView *)v15 setSizeDescription:v16 forScale:4];
      }

      v17 = self->_imageSizeField;
      if (v11 >= v9)
      {
        [(MFComposeImageSizeView *)self->_imageSizeField removeSizeDescriptionForScale:2];
        if (v7 == 2)
        {
          v7 = 0;
        }
      }

      else
      {
        v18 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v11];
        [(MFComposeImageSizeView *)v17 setSizeDescription:v18 forScale:2];
      }

      v19 = self->_imageSizeField;
      if (v12 >= v9)
      {
        [(MFComposeImageSizeView *)self->_imageSizeField removeSizeDescriptionForScale:1];
        if (v7 == 1)
        {
          v7 = 0;
        }
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v12];
        [(MFComposeImageSizeView *)v19 setSizeDescription:v20 forScale:1];
      }
    }

    else
    {
      [(MFMailComposeController *)self _setInitialStateForImageField];
    }

    v21 = self->_imageSizeField;

    [(MFComposeImageSizeView *)v21 setScale:v7];
  }
}

- (void)_setInitialStateForImageField
{
  if ([(MFMailComposeController *)self canShowImageSizeField])
  {
    imageSizeField = self->_imageSizeField;
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v11 localizedStringForKey:@"IMAGE_SIZE_PLACEHOLDER_DURING_COMPUTATION" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeImageSizeView *)imageSizeField setSizeDescription:v4 forScale:0];

    v5 = self->_imageSizeField;
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v12 localizedStringForKey:@"IMAGE_SIZE_PLACEHOLDER_DURING_COMPUTATION" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeImageSizeView *)v5 setSizeDescription:v6 forScale:4];

    v7 = self->_imageSizeField;
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v13 localizedStringForKey:@"IMAGE_SIZE_PLACEHOLDER_DURING_COMPUTATION" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeImageSizeView *)v7 setSizeDescription:v8 forScale:2];

    v9 = self->_imageSizeField;
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v14 localizedStringForKey:@"IMAGE_SIZE_PLACEHOLDER_DURING_COMPUTATION" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeImageSizeView *)v9 setSizeDescription:v10 forScale:1];
  }
}

- (void)_scaleImages
{
  v3 = +[MFComposeTypeFactory imageScaleFromUserDefaults];
  [(MFMailComposeController *)self _beginBlockingBodyScroll];
  [(MFComposeWebView *)self->_composeWebView scaleImagesToScale:v3];

  [(MFMailComposeController *)self _endBlockingBodyScroll];
}

- (void)imageSizeView:(id)view changedSelectedScaleTo:(unint64_t)to
{
  v5 = MEMORY[0x1E695E000];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:to];
  [v5 mf_setCompositionServicesPreferenceValue:v6 forKey:*MEMORY[0x1E69B17D0]];

  [(MFMailComposeController *)self _scaleImages];
}

- (void)_setIsLoading:(BOOL)loading
{
  loadingCopy = loading;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setLoading:loadingCopy];

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (unint64_t)_sizeForScale:(unint64_t)scale imagesOnly:(BOOL)only
{
  onlyCopy = only;
  compositionContext = [(MFMailComposeController *)self compositionContext];
  attachmentManager = [compositionContext attachmentManager];
  compositionContext2 = [(MFMailComposeController *)self compositionContext];
  contextID = [compositionContext2 contextID];
  v11 = [attachmentManager sizeForScale:scale imagesOnly:onlyCopy forContext:contextID];

  return v11;
}

- (BOOL)_shouldAutoSaveQuickReply
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];

  if (isQuickReply)
  {
    isDirty = [(MFComposeWebView *)self->_composeWebView isDirty];
    if (isDirty)
    {
      LOBYTE(isDirty) = *(self + 1376) & 1;
    }
  }

  else
  {
    LOBYTE(isDirty) = 1;
  }

  return isDirty;
}

- (void)_startAutosaveTimerIfNeeded
{
  if (*(self + 1376) < 0 && !self->_autosaveTimer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__MFMailComposeController__startAutosaveTimerIfNeeded__block_invoke;
    v6[3] = &unk_1E806EBA8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.5];
    autosaveTimer = self->_autosaveTimer;
    self->_autosaveTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __54__MFMailComposeController__startAutosaveTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autosaveTimerFired:v3];
}

- (void)_setAutosaveIsValid:(BOOL)valid
{
  if (self->_autosaveIsValid != valid)
  {
    validCopy = valid;
    self->_autosaveIsValid = valid;
    if (!valid)
    {
      date = [MEMORY[0x1E695DF00] date];
      lastActiveDate = self->_lastActiveDate;
      self->_lastActiveDate = date;

      [(MFMailComposeController *)self _startAutosaveTimerIfNeeded];
    }

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v8 = [em_userDefaults BOOLForKey:@"AutosaveIndicator"];

    if (v8)
    {
      if (validCopy)
      {
        if (_setAutosaveIsValid__onceToken != -1)
        {
          [MFMailComposeController _setAutosaveIsValid:];
        }

        v9 = MEMORY[0x1E696AEC0];
        v10 = [_setAutosaveIsValid__dateFormatter stringFromDate:self->_autosavedDate];
        v11 = [v9 stringWithFormat:@"Autosaved @ %@", v10];

        [(MFMailComposeController *)self _setTitleBarSubtitleText:v11 style:1];
      }

      else
      {

        [(MFMailComposeController *)self _setTitleBarSubtitleText:@"Not Saved" style:2];
      }
    }
  }
}

void __47__MFMailComposeController__setAutosaveIsValid___block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v0 dateFormatFromTemplate:@"HH:mm:ss" options:0 locale:v1];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = _setAutosaveIsValid__dateFormatter;
  _setAutosaveIsValid__dateFormatter = v2;

  [_setAutosaveIsValid__dateFormatter setDateFormat:v4];
}

- (BOOL)_shouldAutosaveAfterTimerFiredWithInterval:(double)interval
{
  if ([(MFMailComposeController *)self _isDummyViewController])
  {
LABEL_28:
    LOBYTE(_shouldAutoSaveQuickReply) = 0;
    return _shouldAutoSaveQuickReply;
  }

  _shouldAutoSaveQuickReply = [(MFMailComposeController *)self _shouldAutoSaveQuickReply];
  if (_shouldAutoSaveQuickReply)
  {
    [(NSDate *)self->_autosavedDate timeIntervalSinceNow];
    if (self->_autosaveIsValid)
    {
      goto LABEL_28;
    }

    autosavedDate = self->_autosavedDate;
    if (autosavedDate && v13 >= -2.0)
    {
      goto LABEL_28;
    }

    lastTypedCharacter = self->_lastTypedCharacter;
    v17 = 0.5;
    if (lastTypedCharacter <= 0x6D3)
    {
      if (lastTypedCharacter == 10 || lastTypedCharacter == 46)
      {
        goto LABEL_21;
      }
    }

    else if (lastTypedCharacter == 1748 || lastTypedCharacter == 12290 || lastTypedCharacter == 65377)
    {
LABEL_21:
      if (autosavedDate)
      {
        v20 = v17 < -interval;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        goto LABEL_28;
      }

      if (fabs(v17 + -2.0) >= 0.00000011920929)
      {
        if (fabs(v17 + -0.5) >= 0.00000011920929)
        {
LABEL_33:
          LOBYTE(_shouldAutoSaveQuickReply) = 1;
          return _shouldAutoSaveQuickReply;
        }

        v21 = @"Autosaving now based on terminal edge";
      }

      else
      {
        v21 = @"Autosaving based on idle delay";
      }

      _MFAutosaveLog(v21, v6, v7, v8, v9, v10, v11, v12, v23);
      goto LABEL_33;
    }

    v17 = 2.0;
    goto LABEL_21;
  }

  return _shouldAutoSaveQuickReply;
}

- (void)_autosaveTimerFired:(id)fired
{
  [(NSDate *)self->_lastActiveDate timeIntervalSinceNow];
  if ([(MFMailComposeController *)self _shouldAutosaveAfterTimerFiredWithInterval:?]&& (*(self + 1376) & 0x20) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke;
    v6[3] = &unk_1E806DB30;
    v6[4] = self;
    [(MFMailComposeController *)self autosaveWithHandler:v6];
    composeCoordinator = [(MFMailComposeController *)self composeCoordinator];

    if (composeCoordinator)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke_3;
      v5[3] = &unk_1E806EC20;
      v5[4] = self;
      [(MFMailComposeController *)self _performBlockWithStrongComposeCoordinator:v5];
    }
  }
}

void __47__MFMailComposeController__autosaveTimerFired___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke_2;
  block[3] = &unk_1E806C570;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__MFMailComposeController__autosaveTimerFired___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MFMailComposeControllerDidSmartAutosaveNotification" object:*(a1 + 32)];
}

void __47__MFMailComposeController__autosaveTimerFired___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke_4;
  v6[3] = &unk_1E806C520;
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v5 performSyncBlock:v6];
}

void __47__MFMailComposeController__autosaveTimerFired___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) mailComposeView];
  v3 = [v2 composeWebView];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke_5;
  v5[3] = &unk_1E806EBF8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 getHTMLDataObject:v5];
}

void __47__MFMailComposeController__autosaveTimerFired___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mailComposeView];
  v5 = [v4 composeWebView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MFMailComposeController__autosaveTimerFired___block_invoke_6;
  v8[3] = &unk_1E806EBD0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v3;
  v10 = v7;
  [v5 getHTMLDataObjectRemovingSignature:1 completion:v8];
}

- (void)_setBodyAndSignatureWithCoordinator:(id)coordinator htmlDataObjectWithSignature:(id)signature htmlDataObject:(id)object
{
  coordinatorCopy = coordinator;
  objectCopy = object;
  plainTextAlternative = [signature plainTextAlternative];
  string = [plainTextAlternative string];

  v10 = MEMORY[0x1E69AD6C8];
  htmlString = [objectCopy htmlString];
  string2 = [htmlString string];
  v13 = [v10 plainTextFromHTMLSnippet:string2];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];
  v15 = [string stringByReplacingOccurrencesOfString:v14 withString:&stru_1F3CF3758];

  v16 = MEMORY[0x1E69AD6C8];
  bodyWithoutSignature = [coordinatorCopy bodyWithoutSignature];
  v18 = [v16 plainTextFromHTMLSnippet:bodyWithoutSignature];

  if ([v13 isEqual:@"\n"] & 1) != 0 || (objc_msgSend(v13, "isEqual:", v18))
  {
    if ([v15 length])
    {
      [coordinatorCopy setSignature:v15];
    }
  }

  else
  {
    [coordinatorCopy setBody:v13];
  }
}

- (NSString)autosaveIdentifier
{
  [(MFLock *)self->_autosaveLock lock];
  autosaveIdentifier = self->_autosaveIdentifier;
  if (!autosaveIdentifier)
  {
    autosaveIdentifier = [(_MFMailCompositionContext *)self->_compositionContext autosaveIdentifier];
    v5 = self->_autosaveIdentifier;
    self->_autosaveIdentifier = autosaveIdentifier;

    autosaveIdentifier = self->_autosaveIdentifier;
    if (!autosaveIdentifier)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v6 setScheme:@"x-apple-mail"];
      [v6 setHost:@"document"];
      v7 = MEMORY[0x1E696AEC0];
      documentID = [(MFMailComposeController *)self documentID];
      v9 = [v7 stringWithFormat:@"/%@", documentID];
      [v6 setPath:v9];

      v10 = [v6 URL];
      absoluteString = [v10 absoluteString];
      v12 = self->_autosaveIdentifier;
      self->_autosaveIdentifier = absoluteString;

      autosaveIdentifier = self->_autosaveIdentifier;
    }
  }

  v13 = autosaveIdentifier;
  [(MFLock *)self->_autosaveLock unlock];

  return v13;
}

- (void)setAutosaveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MFLock *)self->_autosaveLock lock];
  if (self->_autosaveIdentifier == identifierCopy)
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong(&self->_autosaveIdentifier, identifier);
    v5 = identifierCopy != 0;
  }

  [(MFLock *)self->_autosaveLock unlock];
  if (v5)
  {
    [(MFMailComposeController *)self _updateAutosaveSession];
  }
}

- (void)autosaveWithHandler:(id)handler
{
  handlerCopy = handler;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__5;
  v29[4] = __Block_byref_object_dispose__5;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__5;
  v27[4] = __Block_byref_object_dispose__5;
  v28 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__MFMailComposeController_autosaveWithHandler___block_invoke;
  v26[3] = &unk_1E806D360;
  v26[4] = self;
  v26[5] = v27;
  v26[6] = v29;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v26];

  v6 = atomic_fetch_add(&self->_autosaveCount, 1u) + 1;
  v7 = atomic_load(&self->_autosaveCount);
  _MFAutosaveLog(@"Autosave request in queue %i, request ID %i", v8, v9, v10, v11, v12, v13, v14, v7);
  _messageForAutosave = [(MFMailComposeController *)self _messageForAutosave];
  autosaveQueue = [(MFMailComposeController *)self autosaveQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__MFMailComposeController_autosaveWithHandler___block_invoke_2;
  v21[3] = &unk_1E806EC70;
  v25 = v6;
  v21[4] = self;
  v23 = v27;
  v24 = v29;
  v17 = handlerCopy;
  v22 = v17;
  [_messageForAutosave onScheduler:autosaveQueue addSuccessBlock:v21];

  if (v17)
  {
    autosaveQueue2 = [(MFMailComposeController *)self autosaveQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__MFMailComposeController_autosaveWithHandler___block_invoke_712;
    v19[3] = &unk_1E806EC98;
    v20 = v17;
    [_messageForAutosave onScheduler:autosaveQueue2 addFailureBlock:v19];
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

void __47__MFMailComposeController_autosaveWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _saveMessageValues];
  [*(a1 + 32) setHeadersForDraft];
  v2 = [*(a1 + 32) savedHeaders];
  v3 = [v2 headersForKey:*MEMORY[0x1E699B0E8]];
  v15 = [v3 firstObject];

  if (v15)
  {
    v4 = [MEMORY[0x1E699B340] tagValueListFromString:v15 error:0];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
    [*(a1 + 32) setHideMyEmailSenderAddress:v5];
  }

  v6 = [*(a1 + 32) autosaveIdentifier];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1480);
  *(v10 + 1480) = v9;

  v12 = [*(a1 + 32) subject];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(a1 + 32) _setAutosaveIsValid:1];
}

void __47__MFMailComposeController_autosaveWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  v12 = atomic_load((*(a1 + 32) + 1504));
  if (v12 == *(a1 + 64))
  {
    v13 = [v3 messageData];
    v14 = [MEMORY[0x1E69ADAC8] autosave];
    v15 = *(*(*(a1 + 48) + 8) + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__MFMailComposeController_autosaveWithHandler___block_invoke_3;
    v19[3] = &unk_1E806EC48;
    v16 = v11;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = v16;
    v21 = v17;
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v22 = v18;
    [v14 autosaveMessageData:v13 replacingIdentifier:v15 completion:v19];

    [v16 setMessageBody:0];
  }

  else
  {
    _MFAutosaveLog(@"Autosave request in queue %i, skipping request ID %i", v4, v5, v6, v7, v8, v9, v10, v12);
  }
}

void __47__MFMailComposeController_autosaveWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) ef_publicDescription];
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#Warning failed to autosave message %{public}@", buf, 0xCu);
    }
  }

  [*(a1 + 40) setAutosaveIdentifier:v5];
  _MFAutosaveLog(@"Autosaved %@ at %@. New ID: %@. Request ID %i", v9, v10, v11, v12, v13, v14, v15, *(*(*(a1 + 56) + 8) + 40));
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v5);
  }
}

- (void)autosaveIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MFMailComposeController *)self autosaveIsValid]|| (*(self + 1376) & 0x20) != 0)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    [(MFMailComposeController *)self autosaveWithHandler:handlerCopy];
  }
}

- (void)_updateAutosaveSession
{
  if (![(MFMailComposeController *)self _isDummyViewController])
  {
    autosaveIdentifier = [(MFMailComposeController *)self autosaveIdentifier];
    autosaveSession = [(MFMailComposeController *)self autosaveSession];
    if (!autosaveSession || (-[MFMailComposeController autosaveSession](self, "autosaveSession"), v5 = objc_claimAutoreleasedReturnValue(), [v5 autosaveIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(autosaveIdentifier, "isEqualToString:", v6), v6, v5, autosaveSession, (v7 & 1) == 0))
    {
      objc_initWeak(&location, self);
      autosave = [MEMORY[0x1E69ADAC8] autosave];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__MFMailComposeController__updateAutosaveSession__block_invoke;
      v9[3] = &unk_1E806ECC0;
      objc_copyWeak(&v10, &location);
      [autosave autosaveSessionForIdentifier:autosaveIdentifier completion:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __49__MFMailComposeController__updateAutosaveSession__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setAutosaveSession:v4];
  }
}

- (EMObjectID)originalMessageObjectID
{
  compositionContext = [(MFMailComposeController *)self compositionContext];
  originalMessage = [compositionContext originalMessage];
  objectID = [originalMessage objectID];

  return objectID;
}

- (void)setHeadersForDraft
{
  v31[3] = *MEMORY[0x1E69E9840];
  savedHeaders = self->_savedHeaders;
  if (!savedHeaders)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AD740]);
    v5 = self->_savedHeaders;
    self->_savedHeaders = v4;

    savedHeaders = self->_savedHeaders;
  }

  [(MFMailComposeController *)self _wantsEncryption];
  v6 = NSStringFromBOOL();
  [(MFMutableMessageHeaders *)savedHeaders setHeader:v6 forKey:*MEMORY[0x1E699B1B8]];

  v7 = self->_savedHeaders;
  [(MFComposeSubjectView *)self->_subjectField isNotifyOptionSelected];
  v8 = NSStringFromBOOL();
  [(MFMutableMessageHeaders *)v7 setHeader:v8 forKey:*MEMORY[0x1E699B1A8]];

  v9 = *MEMORY[0x1E699B1C0];
  v10 = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B1C0]];

  if (!v10)
  {
    v11 = self->_savedHeaders;
    documentID = [(MFMailComposeController *)self documentID];
    [(MFMutableMessageHeaders *)v11 setHeader:documentID forKey:v9];
  }

  hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];

  if (hideMyEmailAddressIfExists)
  {
    mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
    forwardingEmailForPrimaryAccount = [mEMORY[0x1E699ACD8] forwardingEmailForPrimaryAccount];

    if (forwardingEmailForPrimaryAccount && ([(MFMailComposeController *)self sendingEmailAddress], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(MFMailComposeController *)self isAddressHideMyEmail:v16], v16, v17))
    {
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_1BE819000, v18, OS_LOG_TYPE_DEFAULT, "Saving ECMessageHeaderKeyHMEDraft header for draft.", v29, 2u);
      }

      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      [mailComposeView isReplyToHME];
      v20 = NSStringFromBOOL();

      v30[0] = *MEMORY[0x1E699A750];
      hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
      v22 = *MEMORY[0x1E699A758];
      v31[0] = hideMyEmailAddressIfExists2;
      v31[1] = forwardingEmailForPrimaryAccount;
      v23 = *MEMORY[0x1E699A768];
      v30[1] = v22;
      v30[2] = v23;
      v31[2] = v20;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];

      v25 = [MEMORY[0x1E699B340] tagValueListFromDictionary:v24 error:0];
      v26 = self->_savedHeaders;
      stringRepresentation = [v25 stringRepresentation];
      [(MFMutableMessageHeaders *)v26 setHeader:stringRepresentation forKey:*MEMORY[0x1E699B0F0]];
    }

    else
    {
      v28 = MFLogGeneral();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_1BE819000, v28, OS_LOG_TYPE_DEFAULT, "Removing ECMessageHeaderKeyHMEDraft header for draft.", v29, 2u);
      }

      [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B0F0]];
    }
  }
}

- (void)_setUpDraftForHME
{
  v3 = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B0F0]];
  if (v3)
  {
    v7 = v3;
    v4 = [MEMORY[0x1E699B340] tagValueListFromString:v3 error:0];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699A758]];
    sendingEmailAddress = self->_sendingEmailAddress;
    self->_sendingEmailAddress = v5;

    v3 = v7;
  }
}

- (void)backUpDraft
{
  if (*(self + 1376) & 0x20) == 0 && ([(MFComposeWebView *)self->_composeWebView isDirty]|| (*(self + 1376)))
  {
    [(MFMailComposeController *)self setUpForSaveAsDraft];
    [(MFMailComposeController *)self setHeadersForDraft];
    [(MFMailComposeController *)self _setUpDraftForHME];
    [(MFComposeWebView *)self->_composeWebView setDirty:0];
    *(self + 1376) &= ~1u;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mailComposeControllerWantsToBackUpDraft:self];
    }
  }
}

- (void)finishedBackingUpDraftWithSuccess:(BOOL)success
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MFMailComposeController_finishedBackingUpDraftWithSuccess___block_invoke;
  v5[3] = &unk_1E806ECE8;
  objc_copyWeak(&v6, &location);
  successCopy = success;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__MFMailComposeController_finishedBackingUpDraftWithSuccess___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[170] = 0;
    v4 = MFComposeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(v3 + 170)];
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as the draft was backed up with success.", &v10, 0xCu);
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      [*(v3 + 153) setDirty:1];
      *(v3 + 1376) |= 1u;
    }

    v6 = [v3 didSaveQuickReplyDraftHandler];
    v7 = [v3 mailComposeView];
    v8 = [v7 isQuickReply];
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v6[2](v6, *(a1 + 40));
      [v3 setDidSaveQuickReplyDraftHandler:0];
    }
  }
}

- (void)close
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView parentWillClose];

  if ([(MFMailComposeController *)self resolution]== 3)
  {
    _messageForAutosave = [(MFMailComposeController *)self _messageForAutosave];
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [_messageForAutosave onScheduler:mainThreadScheduler addSuccessBlock:&__block_literal_global_718];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__MFMailComposeController_close__block_invoke_3;
    v9[3] = &unk_1E806C570;
    v9[4] = self;
    [_messageForAutosave always:v9];
  }

  selfCopy = self;
  mailComposeView2 = [(MFMailComposeController *)selfCopy mailComposeView];
  [mailComposeView2 parentDidClose];

  [(MFMailComposeController *)selfCopy _finishedComposing];
  userActivity = [(MFMailComposeController *)selfCopy userActivity];
  [userActivity invalidate];

  objc_storeWeak(&selfCopy->_savedFirstResponder, 0);
}

void __32__MFMailComposeController_close__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([MEMORY[0x1E69B15D8] hasPlaceholderRepresentation:v2])
  {
    [MEMORY[0x1E69B15D8] placeholderRepresentations:v2];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v3 = v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          if (MFIsMobileMail())
          {
            [MEMORY[0x1E69B15D8] removePlaceholder:v7];
          }

          else
          {
            v8 = MEMORY[0x1E69ADAE8];
            v9 = [v7 fileURL];
            [v8 deletePlaceholderAttachmentForURL:v9 completionBlock:&__block_literal_global_723];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  [v2 setMessageBody:{0, v10}];
}

void __32__MFMailComposeController_close__block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E69ADAC8] autosave];
  v2 = [*(a1 + 32) autosaveIdentifier];
  [v3 removeAutosavedMessageWithIdentifier:v2];
}

- (void)_closeShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  popoverAlert = [(MFMailComposeController *)self popoverAlert];

  if (!popoverAlert)
  {
    presentedViewController = [(MFMailComposeController *)self presentedViewController];

    if (presentedViewController)
    {
      [(MFMailComposeController *)self dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(MFMailComposeController *)self close:invokedCopy];
    }
  }
}

- (void)close:(id)close
{
  v34 = *MEMORY[0x1E69E9840];
  _isSetupForDelivery = [(MFMailComposeController *)self _isSetupForDelivery];
  composeType = [(MFMailComposeController *)self composeType];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView saveFirstResponder];
  firstResponder = [mailComposeView firstResponder];
  [firstResponder resignFirstResponder];

  if ((*(self + 1376) & 1) != 0 || [(MFComposeWebView *)self->_composeWebView isDirty])
  {
    v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    if (composeType == 2)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"DELETE_CHANGES" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      if (composeType == 3)
      {
        [v9 localizedStringForKey:@"DELETE" value:&stru_1F3CF3758 table:@"Main"];
      }

      else
      {
        [v9 localizedStringForKey:@"DELETE_DRAFT" value:&stru_1F3CF3758 table:@"Main"];
      }
      v10 = ;
    }

    v12 = v10;

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __33__MFMailComposeController_close___block_invoke;
    v31[3] = &unk_1E806ED50;
    v31[4] = self;
    v31[5] = composeType;
    v13 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:2 handler:v31];
    [v13 setAccessibilityIdentifier:*MEMORY[0x1E69ADB80]];
    [v8 addAction:v13];
    if (_isSetupForDelivery)
    {
      if (([mailComposeView isLoading] & 1) == 0)
      {
        v14 = MEMORY[0x1E69DC648];
        v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"SAVE_AS_DRAFT" value:&stru_1F3CF3758 table:@"Main"];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __33__MFMailComposeController_close___block_invoke_736;
        v30[3] = &unk_1E806E958;
        v30[4] = self;
        v17 = [v14 actionWithTitle:v16 style:0 handler:v30];

        [v17 setAccessibilityIdentifier:*MEMORY[0x1E69ADB88]];
        [v8 addAction:v17];
      }

      if (composeType == 3)
      {
        v18 = MEMORY[0x1E69DC648];
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"LEAVE_IN_OUTBOX" value:&stru_1F3CF3758 table:@"Main"];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __33__MFMailComposeController_close___block_invoke_2;
        v29[3] = &unk_1E806E958;
        v29[4] = self;
        v21 = [v18 actionWithTitle:v20 style:0 handler:v29];
        [v8 addAction:v21];
      }
    }

    v22 = MEMORY[0x1E69DC648];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __33__MFMailComposeController_close___block_invoke_3;
    v28[3] = &unk_1E806E958;
    v28[4] = self;
    v25 = [v22 actionWithTitle:v24 style:1 handler:v28];

    [v25 setAccessibilityIdentifier:*MEMORY[0x1E69ADB78]];
    [v8 addAction:v25];
    [(MFMailComposeController *)self _displayPopoverAlert:v8];
  }

  else
  {
    if (composeType == 3 && _isSetupForDelivery)
    {
      [(MFMailComposeController *)self _leaveMessageInOutbox];
    }

    else
    {
      self->_resolution = 3;
      v26 = MFComposeLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resolution];
        *buf = 138412290;
        v33 = v27;
        _os_log_impl(&dword_1BE819000, v26, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as an empty compose sheet was closed.", buf, 0xCu);
      }
    }

    [(MFMailComposeController *)self close];
  }
}

uint64_t __33__MFMailComposeController_close___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1376) &= ~1u;
  [*(*(a1 + 32) + 1224) setDirty:0];
  *(*(a1 + 32) + 1360) = 3;
  v2 = MFComposeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 1360)];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as the contents of the compose sheet were deleted.", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) == 2)
  {
    return [v4 close];
  }

  else
  {
    return [v4 finishPopoverAlertClosingComposition:1];
  }
}

uint64_t __33__MFMailComposeController_close___block_invoke_736(uint64_t a1)
{
  [*(a1 + 32) setUpForSaveAsDraft];
  v2 = *(a1 + 32);

  return [v2 finishPopoverAlertClosingComposition:1];
}

uint64_t __33__MFMailComposeController_close___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _leaveMessageInOutbox];
  v2 = *(a1 + 32);

  return [v2 finishPopoverAlertClosingComposition:1];
}

uint64_t __33__MFMailComposeController_close___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1360) = 0;
  v2 = MFComposeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 1360)];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as compose sheet was closed.", &v5, 0xCu);
  }

  return [*(a1 + 32) finishPopoverAlertClosingComposition:0];
}

- (void)_leaveMessageInOutbox
{
  v11 = *MEMORY[0x1E69E9840];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  originalMessage = [compositionContext originalMessage];

  v5 = [(EFFuture *)self->_undoMoveAction result:0];
  repository = [originalMessage repository];
  [repository performMessageChangeAction:v5];
  self->_resolution = 3;
  v7 = MFComposeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resolution];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as a message was left in the outbox.", &v9, 0xCu);
  }
}

- (id)_outgoingMessageWithSubstituteDocument:(id)document compositionSpecification:(id)specification useSuspendInfo:(BOOL)info endingEditing:(BOOL)editing
{
  editingCopy = editing;
  documentCopy = document;
  specificationCopy = specification;
  if (editingCopy)
  {
    view = [(MFMailComposeController *)self view];
    [view endEditing:1];
  }

  if (info)
  {
    if (self->_content)
    {
      *(self + 1377) |= 4u;
      v13 = [MFComposeTypeFactory headersFromDelegate:self originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
      *(self + 1377) &= ~4u;
      v14 = [objc_alloc(MEMORY[0x1E69B1640]) initWithCompositionSpecification:specificationCopy];
      [v14 setShouldWriteAttachmentPlaceholders:1];
      content = self->_content;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __120__MFMailComposeController__outgoingMessageWithSubstituteDocument_compositionSpecification_useSuspendInfo_endingEditing___block_invoke;
      v22[3] = &unk_1E806EDA0;
      v16 = v14;
      v23 = v16;
      selfCopy = self;
      v17 = v13;
      v25 = v17;
      v18 = [(EFFuture *)content then:v22];
    }

    else
    {
      v19 = MEMORY[0x1E699B7C8];
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
      v18 = [v19 futureWithError:v20];
    }
  }

  else
  {
    v18 = [MFComposeTypeFactory messageFromDelegate:self withSubstituteDOMDocument:documentCopy compositionSpecification:specificationCopy originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement writeAttachmentPlaceholders:1];
  }

  return v18;
}

id __120__MFMailComposeController__outgoingMessageWithSubstituteDocument_compositionSpecification_useSuspendInfo_endingEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B7C8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__MFMailComposeController__outgoingMessageWithSubstituteDocument_compositionSpecification_useSuspendInfo_endingEditing___block_invoke_2;
  v9[3] = &unk_1E806ED78;
  v10 = *(a1 + 32);
  v11 = v3;
  v5 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v5;
  v6 = v3;
  v7 = [v4 futureWithBlock:v9];

  return v7;
}

id __120__MFMailComposeController__outgoingMessageWithSubstituteDocument_compositionSpecification_useSuspendInfo_endingEditing___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E699B288] mf_utf8HTMLStringWithString:*(a1 + 40)];
  v6 = [*(a1 + 48) attachments];
  v7 = [v4 createMessageWithHTMLStringAndMIMECharset:v5 plainTextAlternative:0 otherHtmlStringsAndAttachments:v6 headers:*(a1 + 56)];

  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  [v7 setDateSentTimeIntervalSince1970:?];

  if (!v7)
  {
    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
  }

  return v7;
}

- (id)_messageWithCompositionSpecification:(id)specification useSuspendInfo:(BOOL)info endingEditing:(BOOL)editing
{
  v5 = [(MFMailComposeController *)self _outgoingMessageWithSubstituteDocument:0 compositionSpecification:specification useSuspendInfo:info endingEditing:editing];

  return v5;
}

- (id)_messageForDraft
{
  compositionSpecification = [(MFSecureMIMECompositionManager *)self->_secureCompositionManager compositionSpecification];
  v4 = [compositionSpecification mutableCopy];

  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69B1568]];
  v5 = [(MFMailComposeController *)self _messageWithCompositionSpecification:v4 useSuspendInfo:0 endingEditing:1];

  return v5;
}

- (Class)_deliveryClass
{
  [(MFMailComposeController *)self useMailDrop];
  v2 = objc_opt_class();

  return v2;
}

- (void)_setUpDeliveryObject:(unint64_t)object completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[MFMailComposeController signpostLog];
  v8 = v7;
  if (object - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v8, OS_SIGNPOST_EVENT, object, "MAIL SEND", "Setting up delivery object", buf, 2u);
  }

  v9 = [MFComposeTypeFactory headersFromDelegate:self originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
  firstSenderAddress = [v9 firstSenderAddress];
  v11 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:firstSenderAddress];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  shouldCreateRichTextRepresentation = [(MFMailComposeController *)self shouldCreateRichTextRepresentation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke;
  v17[3] = &unk_1E806EE40;
  objectCopy = object;
  v17[4] = self;
  v22 = isKindOfClass & 1;
  v14 = v9;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v16 = handlerCopy;
  v20 = v16;
  [shouldCreateRichTextRepresentation addSuccessBlock:v17];
}

void __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFMailComposeController signpostLog];
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v5, OS_SIGNPOST_EVENT, v6, "MAIL SEND", "Should create rich text representation", buf, 2u);
  }

  v7 = [MEMORY[0x1E699B868] promise];
  if ([v3 BOOLValue])
  {
    v8 = +[MFMailComposeController signpostLog];
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v9, OS_SIGNPOST_EVENT, v10, "MAIL SEND", "Getting HTML representation for the email", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 1224);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_748;
    v33[3] = &unk_1E806EDC8;
    v36 = *(a1 + 64);
    v33[4] = v11;
    v37 = *(a1 + 72);
    v34 = v7;
    v35 = *(a1 + 40);
    [v12 getHTMLDataObject:v33];

    v13 = v34;
  }

  else
  {
    v14 = +[MFMailComposeController signpostLog];
    v15 = v14;
    v16 = *(a1 + 64);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v15, OS_SIGNPOST_EVENT, v16, "MAIL SEND", "Getting text representation for the email", buf, 2u);
    }

    v17 = [*(*(a1 + 32) + 1224) plainTextContent];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_750;
    v27[3] = &unk_1E806EDF0;
    v31 = *(a1 + 64);
    v32 = *(a1 + 72);
    v18 = v7;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    [v17 addSuccessBlock:v27];

    v13 = v28;
  }

  v21 = [v7 future];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_752;
  v23[3] = &unk_1E806EE18;
  v22 = *(a1 + 32);
  v26 = *(a1 + 64);
  v23[4] = v22;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  [v21 addSuccessBlock:v23];
}

void __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_748(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v31 = [v28 htmlString];
  v32 = [v28 otherHTMLStringsAndAttachments];
  v29 = [v28 plainTextAlternative];
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Received HTML representation", buf, 2u);
  }

  if (!v32)
  {
    v5 = v31;
    v32 = [*(a1 + 32) attachments];
    goto LABEL_40;
  }

  v5 = v31;
  if (*(a1 + 64) == 1)
  {
    v34 = objc_opt_new();
    v6 = objc_opt_new();
    if (v31)
    {
      v7 = [v31 string];
      [v34 addObject:v7];

      v8 = [v31 charset];
    }

    else
    {
      v8 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v32;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (!v10)
    {

      goto LABEL_35;
    }

    v11 = *v36;
    v33 = 1;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:v13];
          continue;
        }

        v14 = v13;
        v15 = v14;
        if (!v8)
        {
          v8 = [v14 charset];
        }

        v16 = [v15 string];
        [v34 addObject:v16];

        v17 = [v15 charset];
        v18 = [v17 encoding];
        LOBYTE(v18) = v18 == [v8 encoding];

        if ((v18 & 1) == 0)
        {
          v19 = [v15 charset];
          if ([v19 encoding] == 4)
          {
            v20 = [v8 encoding] == 1;

            if (v20)
            {
              v21 = [v15 charset];

              v8 = v21;
              goto LABEL_29;
            }
          }

          else
          {
          }

          v22 = [v15 charset];
          if ([v22 encoding] == 1)
          {
            v23 = [v8 encoding] == 4;

            if (v23)
            {
              goto LABEL_29;
            }
          }

          else
          {
          }

          v33 = 0;
        }

LABEL_29:
      }

      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (!v10)
      {

        if ((v33 & 1) == 0)
        {
          v32 = v9;
          v5 = v31;
          goto LABEL_39;
        }

LABEL_35:
        v24 = [v34 componentsJoinedByString:@"\n"];
        if (v31)
        {
          v5 = [objc_alloc(MEMORY[0x1E699B288]) initWithString:v24 charset:v8];
          v25 = v31;
        }

        else
        {
          v25 = [objc_alloc(MEMORY[0x1E699B288]) initWithString:v24 charset:v8];
          v5 = 0;
          [v6 insertObject:v25 atIndex:0];
        }

        v32 = v6;
LABEL_39:

        break;
      }
    }
  }

LABEL_40:
  v26 = *(a1 + 40);
  v27 = [objc_msgSend(*(a1 + 32) "_deliveryClass")];
  [v26 finishWithResult:v27];
}

void __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_750(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFMailComposeController signpostLog];
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v5, OS_SIGNPOST_EVENT, v6, "MAIL SEND", "Received text representation", buf, 2u);
  }

  if (*(a1 + 64) == 1 && [v3 count] >= 2)
  {
    v7 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v3;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v9)
            {
              v14 = [v13 string];
              [v9 appendString:v14 withQuoteLevel:0];
            }

            else
            {
              v9 = v13;
            }
          }

          else
          {
            [v7 addObject:{v13, v17}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v15 = *(a1 + 32);
  v16 = [objc_msgSend(*(a1 + 40) _deliveryClass];
  [v15 finishWithResult:v16];
}

void __66__MFMailComposeController__setUpDeliveryObject_completionHandler___block_invoke_752(void *a1, void *a2)
{
  v4 = a2;
  v5 = +[MFMailComposeController signpostLog];
  v6 = v5;
  v7 = a1[7];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v6, OS_SIGNPOST_EVENT, v7, "MAIL SEND", "Finalizing delivery", buf, 2u);
  }

  objc_storeStrong((a1[4] + 1248), a2);
  [*(a1[4] + 1248) setArchiveAccount:a1[5]];
  v8 = [*(a1[4] + 1304) compositionSpecification];
  [*(a1[4] + 1248) setCompositionSpecification:v8];

  [*(a1[4] + 1248) setConversationFlags:{objc_msgSend(*(a1[4] + 1208), "isNotifyOptionSelected")}];
  v9 = [*(a1[4] + 1000) attachmentContext];
  [*(a1[4] + 1248) setAttachmentContext:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1[4] + 1248) setMailDropState:1];
  }

  v10 = [*(a1[4] + 1000) legacyMessage];
  v11 = v10;
  if (v10)
  {
    [*(a1[4] + 1248) setOriginalConversationId:{objc_msgSend(v10, "conversationID")}];
  }

  (*(a1[6] + 16))();
  v12 = +[MFMailComposeController signpostLog];
  v13 = v12;
  v14 = a1[7];
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v13, OS_SIGNPOST_INTERVAL_END, v14, "MAIL SEND", "Finished setting up delivery for sending", v15, 2u);
  }
}

- (id)_estimateMessageSize
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = [(MFMailComposeController *)self _sizeForScale:0 imagesOnly:0];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 2 * [(MFMailComposeController *)self _composeWebViewTextContentLength];
  containsRichText = [(MFComposeWebView *)self->_composeWebView containsRichText];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MFMailComposeController__estimateMessageSize__block_invoke;
  v6[3] = &unk_1E806EE68;
  v6[4] = v7;
  v6[5] = v8;
  v4 = [containsRichText then:v6];

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);

  return v4;
}

id __47__MFMailComposeController__estimateMessageSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 BOOLValue])
  {
    *(*(*(a1 + 32) + 8) + 24) *= 2;
  }

  *(*(*(a1 + 40) + 8) + 24) += *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) += 6120;
  *(*(*(a1 + 40) + 8) + 24) &= 0xFFFFFFFFFFFFFC00;
  v4 = MEMORY[0x1E699B7C8];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(*(*(a1 + 40) + 8) + 24)];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (void)performSend:(id)send
{
  v33 = *MEMORY[0x1E69E9840];
  sendCopy = send;
  v5 = MFComposeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> User tapped send button", buf, 0x16u);
  }

  v8 = _os_activity_create(&dword_1BE819000, "Send button pressed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  memset(buf, 170, 16);
  os_activity_scope_enter(v8, buf);
  v9 = +[MFMailComposeController signpostLog];
  v10 = os_signpost_id_generate(v9);

  v11 = +[MFMailComposeController signpostLog];
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MAIL SEND", "Finished setting up delivery for sending", v31, 2u);
  }

  v14 = +[MFMailComposeController signpostLog];
  v15 = v14;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v15, OS_SIGNPOST_EVENT, v10, "MAIL SEND", "Send Button Pressed", v31, 2u);
  }

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView saveFirstResponder];
  firstResponder = [mailComposeView firstResponder];
  [firstResponder resignFirstResponder];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__MFMailComposeController_performSend___block_invoke;
  v30[3] = &unk_1E806EC20;
  v30[4] = self;
  [(MFMailComposeController *)self _performBlockWithStrongComposeCoordinator:v30];
  [(UIBarButtonItem *)self->_sendButtonItem setEnabled:0];
  [(UIButton *)self->_sendAccessoryButton setUserInteractionEnabled:0];
  quickReplyActionButtonProvider = [(MFMailComposeController *)self quickReplyActionButtonProvider];
  quickReplySendButton = [quickReplyActionButtonProvider quickReplySendButton];
  [quickReplySendButton setUserInteractionEnabled:0];

  quickReplyExpandButton = [quickReplyActionButtonProvider quickReplyExpandButton];
  [quickReplyExpandButton setUserInteractionEnabled:0];

  [mailComposeView setSending:1];
  quickReplyDelegate = [(MFMailComposeController *)self quickReplyDelegate];
  [quickReplyDelegate mailComposeController:self isSending:1];

  +[_TtC9MessageUI20MessageUITipsManager donateHasSentEmailEvent];
  if ([sendCopy conformsToProtocol:&unk_1F3D1AE88])
  {
    v22 = sendCopy;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v24 = +[MFMailComposeController signpostLog];
  v25 = v24;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v25, OS_SIGNPOST_EVENT, v10, "MAIL SEND", "Send button disabled, starting checks now", v31, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__MFMailComposeController_performSend___block_invoke_761;
  v27[3] = &unk_1E806C548;
  v29 = v10;
  v27[4] = self;
  v26 = v23;
  v28 = v26;
  [(MFMailComposeController *)self _prepareHMEAddressesWithContinuation:v27];

  os_activity_scope_leave(buf);
}

void __39__MFMailComposeController_performSend___block_invoke_761(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished preparing HME addresses.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_762;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _checkForInvalidAddressesWithContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_762(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for invalid addresses.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_763;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _checkForEmptySubjectWithContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_763(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for empty subject.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_764;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _checkForUnencryptedWithContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_764(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for unencrypted email.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_765;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _checkForInFlightAssetDownloadsWithContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_765(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for in-flight asset downloads.", buf, 2u);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_766;
  v7[3] = &unk_1E806C548;
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _prepareImagesForSendFromPresentationSource:v8 withContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_766(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished preparing images for sending.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_767;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _promptForMailDropIfNecessaryWithContinuation:v7];
}

void __39__MFMailComposeController_performSend___block_invoke_767(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished prompting for MailDrop if necessary.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_768;
  v7[3] = &unk_1E806C548;
  v6 = a1[4];
  v5 = a1[5];
  v9 = a1[6];
  v7[4] = v6;
  v8 = v5;
  [v6 _checkForCanSendMailWithContinuation:v7];
}

uint64_t __39__MFMailComposeController_performSend___block_invoke_768(void *a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for canSendMail.", buf, 2u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MFMailComposeController_performSend___block_invoke_769;
  v9[3] = &unk_1E806C660;
  v7 = a1[6];
  v9[4] = v5;
  v9[5] = v7;
  return [v5 _checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource:v6 withContinuation:v9];
}

uint64_t __39__MFMailComposeController_performSend___block_invoke_769(uint64_t a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for omitted recipients or attachments.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_770;
  v7[3] = &unk_1E806C660;
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v8 _checkForShareParticipantsWithContinuation:v7];
}

uint64_t __39__MFMailComposeController_performSend___block_invoke_770(uint64_t a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for share participants.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MFMailComposeController_performSend___block_invoke_771;
  v7[3] = &unk_1E806C660;
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v8 _checkForSendLaterDisclaimerWithContinuation:v7];
}

uint64_t __39__MFMailComposeController_performSend___block_invoke_771(uint64_t a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished checking for send later disclaimer.", v6, 2u);
  }

  return [*(a1 + 32) sendMessage:*(a1 + 40)];
}

- (void)_prepareHMEAddressesWithContinuation:(id)continuation
{
  v29 = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];

  if (hideMyEmailAddressIfExists)
  {
    [(MFMailComposeController *)self _saveMessageValues];
    v6 = MFComposeLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v26 = v8;
      v27 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Verify HME address", buf, 0x16u);
    }

    _allRecipients = [(MFMailComposeController *)self _allRecipients];
    firstObject = [_allRecipients firstObject];

    hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    objc_initWeak(buf, self);
    mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
    hideMyEmailSenderAddress = [(MFMailComposeController *)self hideMyEmailSenderAddress];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke;
    v19[3] = &unk_1E806EEE0;
    objc_copyWeak(&v24, buf);
    v23 = continuationCopy;
    v16 = firstObject;
    v20 = v16;
    v17 = hideMyEmailAddressIfExists2;
    v21 = v17;
    v18 = aa_primaryAppleAccount;
    v22 = v18;
    [mEMORY[0x1E699ACD8] isHideMyEmailAddressValid:v17 senderAddress:hideMyEmailSenderAddress completion:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

void __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [WeakRetained mailComposeView];
      v9 = [v8 isReplyToHME];

      if (v9)
      {
        v10 = [MEMORY[0x1E699ACD8] sharedInstance];
        v11 = [v10 forwardingEmailForPrimaryAccount];
        v12 = v7[134];
        v7[134] = v11;

        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v24 = MFComposeLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138543618;
          v40 = v26;
          v41 = 2048;
          v42 = v7;
          _os_log_impl(&dword_1BE819000, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Generate HME for reply", buf, 0x16u);
        }

        objc_initWeak(buf, v7);
        v27 = [MEMORY[0x1E699ACD8] sharedInstance];
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        v30 = *(a1 + 48);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke_773;
        v35[3] = &unk_1E806EEB8;
        objc_copyWeak(&v38, buf);
        v36 = *(a1 + 32);
        v37 = *(a1 + 56);
        [v27 generateReplyToEmailForRecipient:v28 hmeAddress:v29 account:v30 completion:v35];

        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v13 = MFComposeLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = [v5 ef_publicDescription];
        *buf = 138543874;
        v40 = v32;
        v41 = 2048;
        v42 = v7;
        v43 = 2114;
        v44 = v33;
        _os_log_error_impl(&dword_1BE819000, v13, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Verifying HME failed with error: %{public}@", buf, 0x20u);
      }

      v14 = MEMORY[0x1E69DC650];
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"HME_UNAVAILABLE_ERROR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"HME_UNAVAILABLE_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
      v19 = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke_784;
      v34[3] = &unk_1E806E958;
      v34[4] = v7;
      v23 = [v20 actionWithTitle:v22 style:1 handler:v34];
      [v19 addAction:v23];

      [v7 _presentModalAlert:v19];
    }
  }
}

void __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke_773(id *a1, void *a2, void *a3)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v38 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (!v5 || v38)
    {
      v11 = MFComposeLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = [v38 ef_publicDescription];
        *buf = 138543874;
        v43 = v36;
        v44 = 2048;
        v45 = WeakRetained;
        v46 = 2114;
        v47 = v37;
        _os_log_error_impl(&dword_1BE819000, v11, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Generating HME failed with error: %{public}@", buf, 0x20u);
      }

      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"HME_CONFIRM_SEND_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
      v15 = a1[4];
      v16 = [v15 emailAddressValue];
      v17 = [v16 simpleAddress];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v15 stringValue];
      }

      v20 = v19;

      v7 = [v12 stringWithFormat:v14, v20];

      v21 = MEMORY[0x1E69DC650];
      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v9 = [v21 alertControllerWithTitle:v23 message:v7 preferredStyle:1];

      v24 = MEMORY[0x1E69DC648];
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke_777;
      v41[3] = &unk_1E806E958;
      v41[4] = WeakRetained;
      v27 = [v24 actionWithTitle:v26 style:1 handler:v41];
      [v9 addAction:v27];

      v28 = MEMORY[0x1E69DC648];
      v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __64__MFMailComposeController__prepareHMEAddressesWithContinuation___block_invoke_2;
      v39[3] = &unk_1E806EE90;
      v40 = a1[5];
      v31 = [v28 actionWithTitle:v30 style:0 handler:v39];
      [v9 addAction:v31];

      [WeakRetained _presentModalAlert:v9];
      goto LABEL_18;
    }

    v7 = [MEMORY[0x1E699B248] componentsWithString:v5];
    v8 = [a1[4] ea_addressComment];
    [v7 setDisplayName:v8];

    v9 = [v7 stringValue];
    if ([WeakRetained[127] containsObject:a1[4]])
    {
      v50[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      [WeakRetained setToRecipients:v10];
    }

    else if ([WeakRetained[128] containsObject:a1[4]])
    {
      v49 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      [WeakRetained setCcRecipients:v10];
    }

    else
    {
      if (![WeakRetained[129] containsObject:a1[4]])
      {
LABEL_17:
        v32 = [MEMORY[0x1E699ACD8] sharedInstance];
        v33 = [v32 forwardingEmailForPrimaryAccount];
        v34 = WeakRetained[134];
        WeakRetained[134] = v33;

        (*(a1[5] + 2))();
LABEL_18:

        goto LABEL_19;
      }

      v48 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      [WeakRetained setBccRecipients:v10];
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (void)_checkForInvalidAddressesWithContinuation:(id)continuation
{
  v49 = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(MFMailComposeController *)self addressesForField:1];
  [v4 addObjectsFromArray:v5];

  v6 = [(MFMailComposeController *)self addressesForField:2];
  [v4 addObjectsFromArray:v6];

  v7 = [(MFMailComposeController *)self addressesForField:3];
  [v4 addObjectsFromArray:v7];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v9)
  {
    v10 = *v45;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v45 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v44 + 1) + 8 * v11);
      v13 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v12];
      v14 = v13 == 0;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = MFComposeLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      objc_claimAutoreleasedReturnValue();
      [MFMailComposeController _checkForInvalidAddressesWithContinuation:];
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CONFIRM_SEND_MESSAGE %@" value:&stru_1F3CF3758 table:@"Main"];
    v39 = v15;
    emailAddressValue = [v39 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v23 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v39 stringValue];
    }

    v25 = stringValue;

    v26 = [v18 stringWithFormat:v20, v25];

    v27 = MEMORY[0x1E69DC650];
    v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"INVALID_ADDRESS_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v30 = [v27 alertControllerWithTitle:v29 message:v26 preferredStyle:1];

    v31 = MEMORY[0x1E69DC648];
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __69__MFMailComposeController__checkForInvalidAddressesWithContinuation___block_invoke;
    v43[3] = &unk_1E806E958;
    v43[4] = self;
    v34 = [v31 actionWithTitle:v33 style:1 handler:v43];
    [v30 addAction:v34];

    v35 = MEMORY[0x1E69DC648];
    v36 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __69__MFMailComposeController__checkForInvalidAddressesWithContinuation___block_invoke_2;
    v41[3] = &unk_1E806EE90;
    v42 = continuationCopy;
    v38 = [v35 actionWithTitle:v37 style:0 handler:v41];
    [v30 addAction:v38];

    [(MFMailComposeController *)self _presentModalAlert:v30];
  }

  else
  {
LABEL_9:

LABEL_15:
    continuationCopy[2]();
  }
}

- (void)_checkForEmptySubjectWithContinuation:(id)continuation
{
  v32[8] = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  text = [(MFComposeSubjectView *)self->_subjectField text];
  v6 = text;
  if (text)
  {
    draftSubject = text;
  }

  else
  {
    draftSubject = [(_MFMailCompositionContext *)self->_compositionContext draftSubject];
  }

  v8 = draftSubject;

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  if ([v10 length])
  {
    continuationCopy[2](continuationCopy);
  }

  else
  {
    v11 = MFComposeLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      objc_claimAutoreleasedReturnValue();
      [MFMailComposeController _checkForEmptySubjectWithContinuation:];
    }

    v13 = MEMORY[0x1E69DC650];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"EMPTY_SUBJECT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CONFIRM_EMPTY_SUBJECT_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
    v18 = [v13 alertControllerWithTitle:v15 message:v17 preferredStyle:1];

    v19 = MEMORY[0x1E69DC648];
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65__MFMailComposeController__checkForEmptySubjectWithContinuation___block_invoke;
    v32[3] = &unk_1E806E958;
    v32[4] = self;
    v22 = [v19 actionWithTitle:v21 style:1 handler:v32];
    [v18 addAction:v22];

    v23 = MEMORY[0x1E69DC648];
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __65__MFMailComposeController__checkForEmptySubjectWithContinuation___block_invoke_2;
    v30 = &unk_1E806EE90;
    v31 = continuationCopy;
    v26 = [v23 actionWithTitle:v25 style:0 handler:&v27];
    [v18 addAction:{v26, v27, v28, v29, v30}];

    [(MFMailComposeController *)self _presentModalAlert:v18];
  }
}

- (void)_checkForSendLaterDisclaimerWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  if ([MEMORY[0x1E69ADD30] shouldShowSendLaterDisclaimerAlertForContext:{-[_MFMailCompositionContext sendLaterContext](self->_compositionContext, "sendLaterContext")}])
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    [em_userDefaults setBool:1 forKey:*MEMORY[0x1E699ABC0]];

    v6 = MEMORY[0x1E69DC650];
    v7 = _EFLocalizedString();
    v8 = _EFLocalizedString();
    v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = MEMORY[0x1E69DC648];
    v11 = _EFLocalizedString();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__MFMailComposeController__checkForSendLaterDisclaimerWithContinuation___block_invoke;
    v13[3] = &unk_1E806EE90;
    v14 = continuationCopy;
    v12 = [v10 actionWithTitle:v11 style:1 handler:v13];
    [v9 addAction:v12];

    [(MFMailComposeController *)self _presentModalAlert:v9];
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

- (void)_checkForInFlightAssetDownloadsWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  photoPickerProgressManager = [(MFMailComposeController *)self photoPickerProgressManager];
  anyRequestExists = [photoPickerProgressManager anyRequestExists];

  if (anyRequestExists)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"IN_FLIGHT_ASSET_DOWNLOAD_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"IN_FLIGHT_ASSET_DOWNLOAD_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
    v12 = [v7 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = MEMORY[0x1E69DC648];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__MFMailComposeController__checkForInFlightAssetDownloadsWithContinuation___block_invoke;
    v26[3] = &unk_1E806E958;
    v26[4] = self;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v26];
    [v12 addAction:v16];

    v17 = MEMORY[0x1E69DC648];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __75__MFMailComposeController__checkForInFlightAssetDownloadsWithContinuation___block_invoke_2;
    v24 = &unk_1E806EE90;
    v25 = continuationCopy;
    v20 = [v17 actionWithTitle:v19 style:0 handler:&v21];
    [v12 addAction:{v20, v21, v22, v23, v24}];

    [(MFMailComposeController *)self _presentModalAlert:v12];
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

- (void)_checkForCanSendMailWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    toRecipients = [(MFMailComposeController *)self toRecipients];
    ccRecipients = [(MFMailComposeController *)self ccRecipients];
    v8 = [toRecipients arrayByAddingObjectsFromArray:ccRecipients];
    bccRecipients = [(MFMailComposeController *)self bccRecipients];
    v10 = [v8 arrayByAddingObjectsFromArray:bccRecipients];

    content = self->_content;
    htmlString = content;
    if (!content)
    {
      htmlString = [(MFComposeWebView *)self->_composeWebView htmlString];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__MFMailComposeController__checkForCanSendMailWithContinuation___block_invoke;
    v14[3] = &unk_1E806EF30;
    v15 = WeakRetained;
    selfCopy = self;
    v13 = v10;
    v17 = v13;
    v18 = continuationCopy;
    [htmlString addSuccessBlock:v14];
    if (!content)
    {
    }
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

void __64__MFMailComposeController__checkForCanSendMailWithContinuation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) navigationController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MFMailComposeController__checkForCanSendMailWithContinuation___block_invoke_2;
  v7[3] = &unk_1E806EF08;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 mailComposeController:v5 shouldSendMail:v3 toRecipients:v6 completion:v7];
}

uint64_t __64__MFMailComposeController__checkForCanSendMailWithContinuation___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_checkForUnencryptedWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  errorsByRecipient = [(MFMailComposeController *)self errorsByRecipient];
  v6 = [errorsByRecipient count];

  if (v6)
  {
    certificatesByRecipient = [(MFMailComposeController *)self certificatesByRecipient];
    v8 = [certificatesByRecipient count];

    if (v8)
    {
      errorsByRecipient2 = [(MFMailComposeController *)self errorsByRecipient];
      if ([errorsByRecipient2 count] >= 2)
      {
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        [v10 localizedStringForKey:@"CONFIRM_UNENCRYPTED_MESSAGE_MULT" value:&stru_1F3CF3758 table:@"Main"];
      }

      else
      {
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        [v10 localizedStringForKey:@"CONFIRM_UNENCRYPTED_MESSAGE_ONE" value:&stru_1F3CF3758 table:@"Main"];
      }
      v11 = ;
    }

    else
    {
      errorsByRecipient2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [errorsByRecipient2 localizedStringForKey:@"CONFIRM_UNENCRYPTED_MESSAGE_ANY" value:&stru_1F3CF3758 table:@"Main"];
    }

    v12 = MEMORY[0x1E69DC650];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"UNENCRYPTED_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v15 = [v12 alertControllerWithTitle:v14 message:v11 preferredStyle:1];

    v16 = MEMORY[0x1E69DC648];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__MFMailComposeController__checkForUnencryptedWithContinuation___block_invoke;
    v29[3] = &unk_1E806E958;
    v29[4] = self;
    v19 = [v16 actionWithTitle:v18 style:1 handler:v29];
    [v15 addAction:v19];

    v20 = MEMORY[0x1E69DC648];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SEND_ANYWAY" value:&stru_1F3CF3758 table:@"Main"];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __64__MFMailComposeController__checkForUnencryptedWithContinuation___block_invoke_2;
    v27 = &unk_1E806EE90;
    v28 = continuationCopy;
    v23 = [v20 actionWithTitle:v22 style:0 handler:&v24];
    [v15 addAction:{v23, v24, v25, v26, v27}];

    [(MFMailComposeController *)self _presentModalAlert:v15];
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

- (void)_checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource:(id)source withContinuation:(id)continuation
{
  sourceCopy = source;
  continuationCopy = continuation;
  v8 = MFComposeLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Checking for omitted recipients or attachments.", buf, 2u);
  }

  v9 = [(MFMailComposeController *)self _copyMessagePlainTextForDonationRemoveQuotes:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke;
  v12[3] = &unk_1E806F010;
  v12[4] = self;
  v10 = sourceCopy;
  v13 = v10;
  v11 = continuationCopy;
  v14 = v11;
  [v9 addSuccessBlock:v12];
}

void __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v71 = a2;
  if (![v71 count])
  {
    goto LABEL_45;
  }

  v3 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v4 = v71;
  v5 = [v4 countByEnumeratingWithState:&v82 objects:v94 count:16];
  v73 = a1;
  v6 = &stru_1F3CF3758;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v83;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v83 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v82 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 string], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v12 = [v9 contentIDs];
        [v3 addObjectsFromArray:v12];
      }

      else
      {
        v12 = [v9 string];
        v13 = [(__CFString *)v6 stringByAppendingString:v12];

        v6 = v13;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v82 objects:v94 count:16];
  }

  while (v5);
LABEL_15:

  v14 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v15 = [(__CFString *)v6 stringByTrimmingCharactersInSet:v14];

  if ([v15 length] <= 0x20000)
  {
    v21 = v15;
  }

  else
  {
    v16 = MFComposeLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 length];
      *buf = 134218240;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = 0x20000;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "Truncating body content. body.length = %ld kMaxLengthBodyContent = %ld", buf, 0x16u);
    }

    v18 = [v15 rangeOfComposedCharacterSequenceAtIndex:0x1FFFFLL];
    v20 = [v15 substringToIndex:v18 + v19];

    v21 = v20;
  }

  v70 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21];
  v69 = [*(v73 + 32) csPeopleForField:1];
  v68 = [*(v73 + 32) csPeopleForField:2];
  v67 = [*(v73 + 32) csPeopleForField:3];
  v22 = [*(v73 + 32) compositionContext];
  v72 = [v22 originalMessage];

  if (v72)
  {
    v23 = *(v73 + 32);
    v24 = [v72 toList];
    v25 = [v23 _csPeopleFromAddresses:v24];

    v26 = *(v73 + 32);
    v27 = [v72 ccList];
    v28 = [v26 _csPeopleFromAddresses:v27];

    v29 = [v72 senderList];
    v30 = [v29 firstObject];
    v31 = [v30 emailAddressValue];
    v32 = [v31 em_person];

    v33 = [*(v73 + 32) sendingEmailAddress];
    v34 = [v33 emailAddressValue];
    v35 = [v34 em_person];

    v36 = objc_opt_new();
    [v36 addObjectsFromArray:v28];
    [v36 addObjectsFromArray:v25];
    [v36 removeObject:v35];
    if (v32)
    {
      v93 = v32;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v38 = [*(v73 + 32) subject];
  v39 = v38;
  v40 = &stru_1F3CF3758;
  if (v38)
  {
    v40 = v38;
  }

  v66 = v40;

  v41 = [*(v73 + 32) attachments];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_831;
  v80[3] = &unk_1E806EF58;
  v42 = v3;
  v81 = v42;
  v65 = [v41 ef_compactMap:v80];

  v64 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v66];
  v43 = MEMORY[0x1E699B858];
  v44 = [v70 string];
  v63 = [v43 ec_partiallyRedactedStringForSubjectOrSummary:v44];

  v60 = [MEMORY[0x1E699B240] em_partiallyRedactedPeople:v69];
  v61 = [MEMORY[0x1E699B240] em_partiallyRedactedPeople:v68];
  v62 = [MEMORY[0x1E699B240] em_partiallyRedactedPeople:v67];
  v45 = [v65 ef_map:&__block_literal_global_836];
  v59 = [v45 componentsJoinedByString:{@", "}];

  v46 = MFComposeLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    *&buf[4] = v64;
    *&buf[12] = 2114;
    *&buf[14] = v63;
    *&buf[22] = 2114;
    v89 = v60;
    *v90 = 2114;
    *&v90[2] = v61;
    *&v90[10] = 2114;
    *&v90[12] = v62;
    v91 = 2114;
    v92 = v59;
    _os_log_impl(&dword_1BE819000, v46, OS_LOG_TYPE_DEFAULT, "Data to identify warnings. Subject: %{public}@ Body: %{public}@ To: %{public}@ Cc: %{public}@ Bcc: %{public}@ Attachments: %{public}@", buf, 0x3Eu);
  }

  v47 = [MEMORY[0x1E69992A0] serviceForMail];
  [v47 setSyncTimeout:1.0];
  v48 = [v70 string];
  v79 = 0;
  v49 = [v47 identifyComposeWarningsFromSubject:v66 content:v48 attributes:MEMORY[0x1E695E0F8] toRecipients:v69 ccRecipients:v68 bccRecipients:v67 originalToRecipients:v37 originalCcRecipients:v36 attachments:v65 error:&v79];
  v58 = v79;

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v89 = __Block_byref_object_copy__5;
  *v90 = __Block_byref_object_dispose__5;
  *&v90[8] = [*(v73 + 32) initialMissingAttachmentWarnings];
  if ([*(*&buf[8] + 40) count] && (objc_msgSend(v49, "ef_any:", &__block_literal_global_844) & 1) == 0)
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_2_846;
    v76[3] = &unk_1E806EFC0;
    v50 = *(v73 + 32);
    v78 = buf;
    v76[4] = v50;
    v77 = v47;
    v51 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v51 performBlock:v76];
  }

  if ([v49 count])
  {
    v52 = MFComposeLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *v86 = 138412290;
      v87 = v49;
      _os_log_impl(&dword_1BE819000, v52, OS_LOG_TYPE_DEFAULT, "Identified warnings: %@", v86, 0xCu);
    }

    if (![*(*&buf[8] + 40) count])
    {
      v53 = [v49 ef_filter:&__block_literal_global_849];
      [*(v73 + 32) setInitialMissingAttachmentWarnings:v53];
    }

    v55 = *(v73 + 32);
    v54 = *(v73 + 40);
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_2_850;
    v74[3] = &unk_1E806EFE8;
    v56 = *(v73 + 48);
    v74[4] = *(v73 + 32);
    v75 = v56;
    [v55 _presentWarnings:v49 index:0 suggestionsService:v47 presentationSource:v54 completionHandler:v74];
  }

  else
  {
    if (v58)
    {
      v57 = MFComposeLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_cold_1();
      }
    }

    (*(*(v73 + 48) + 16))();
  }

  _Block_object_dispose(buf, 8);

LABEL_45:
}

id __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_831(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 contentID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) != 0 || ([v3 fileName], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v14 = 0;
  }

  else
  {
    v7 = [v3 mimeType];
    v8 = v7;
    v9 = &stru_1F3CF3758;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = objc_alloc(MEMORY[0x1E6999230]);
    v12 = [v3 fileName];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "decodedFileSize")}];
    v14 = [v11 initWithFileName:v12 fileSizeInBytes:v13 fileDescription:v10 keywords:MEMORY[0x1E695E0F0] authors:MEMORY[0x1E695E0F0]];
  }

  return v14;
}

id __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 fileName];
  v3 = [v2 description];

  return v3;
}

uint64_t __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_841(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_2_846(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _reportUserEngagement:1 suggestionService:*(a1 + 40) warning:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) setInitialMissingAttachmentWarnings:0];
}

uint64_t __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_847(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_2_850(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _finishModalAlertClosingComposition:0];
  }

  v4 = *(a1 + 32);

  return [v4 setDidUseOmittedAttachmentsOrRecipients:a2 ^ 1u];
}

- (void)_checkForShareParticipantsWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  compositionContext = [(MFMailComposeController *)self compositionContext];
  sharingSandboxingURLWrapper = [compositionContext sharingSandboxingURLWrapper];

  v7 = [sharingSandboxingURLWrapper url];
  compositionContext2 = [(MFMailComposeController *)self compositionContext];
  ckShare = [compositionContext2 ckShare];

  compositionContext3 = [(MFMailComposeController *)self compositionContext];
  ckContainerSetupInfo = [compositionContext3 ckContainerSetupInfo];

  compositionContext4 = [(MFMailComposeController *)self compositionContext];
  ckSharePermissionType = [compositionContext4 ckSharePermissionType];

  compositionContext5 = [(MFMailComposeController *)self compositionContext];
  ckShareAllowOthersToInvite = [compositionContext5 ckShareAllowOthersToInvite];

  if (v7 | ckShare)
  {
    v30 = v7;
    v29 = objc_alloc_init(MEMORY[0x1E699B868]);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__5;
    v46 = __Block_byref_object_dispose__5;
    v47 = 0;
    CloudSharingClass = getCloudSharingClass();
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke;
    v33[3] = &unk_1E806F060;
    v33[4] = self;
    v34 = v7;
    v35 = sharingSandboxingURLWrapper;
    v39 = &v42;
    v40 = ckSharePermissionType;
    v41 = ckShareAllowOthersToInvite;
    v36 = ckShare;
    v16 = v29;
    v37 = v16;
    v38 = ckContainerSetupInfo;
    [CloudSharingClass sharingStatusForShare:v36 completionHandler:v33];
    future = [v16 future];
    result = [future result];

    if (v43[5])
    {
      v19 = MEMORY[0x1E69DC650];
      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"UNABLE_TO_SHARE_ICLOUD_DOCUMENT" value:&stru_1F3CF3758 table:@"Main"];
      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"UNABLE_TO_SHARE_ICLOUD_DOCUMENT_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
      v24 = [v19 alertControllerWithTitle:v21 message:v23 preferredStyle:1];

      v25 = MEMORY[0x1E69DC648];
      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_863;
      v32[3] = &unk_1E806E958;
      v32[4] = self;
      v28 = [v25 actionWithTitle:v27 style:1 handler:v32];
      [v24 addAction:v28];

      [(MFMailComposeController *)self _presentModalAlert:v24];
      v7 = v30;
    }

    else
    {
      continuationCopy[2](continuationCopy);
    }

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    continuationCopy[2](continuationCopy);
  }
}

void __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [*(a1 + 32) toRecipients];
  [v4 addObjectsFromArray:v5];

  v6 = [*(a1 + 32) ccRecipients];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) bccRecipients];
  [v4 addObjectsFromArray:v7];

  if ((a2 - 1) > 1)
  {
    v16 = MFComposeLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "No need to add share participants", buf, 2u);
    }

    [*(a1 + 64) finishWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v8 = MFComposeLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Adding participants to share as %@", buf, 0xCu);
    }

    if (*(a1 + 40) && (getCloudSharingClass(), (objc_opt_respondsToSelector() & 1) != 0))
    {
      CloudSharingClass = getCloudSharingClass();
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 96);
      v14 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_853;
      v23[3] = &unk_1E806F038;
      v15 = *(a1 + 88);
      v23[5] = *(a1 + 80);
      v23[4] = *(a1 + 64);
      [CloudSharingClass addParticipantsToShareWithURLWrapper:v11 share:v12 emailAddresses:v4 phoneNumbers:MEMORY[0x1E695E0F0] permissionType:v15 allowOthersToInvite:v13 completionHandler:v23];
    }

    else
    {
      v17 = getCloudSharingClass();
      v18 = *(a1 + 88);
      v19 = *(a1 + 96);
      v14 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_855;
      v22[3] = &unk_1E806F038;
      v20 = *(a1 + 72);
      v22[5] = *(a1 + 80);
      v21 = *(a1 + 56);
      v22[4] = *(a1 + 64);
      [v17 addParticipantsToShare:v21 containerSetupInfo:v20 emailAddresses:v4 phoneNumbers:MEMORY[0x1E695E0F0] permissionType:v18 allowOthersToInvite:v19 completionHandler:v22];
    }
  }
}

void __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_853(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MFComposeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "Adding participants to share finished", v9, 2u);
  }

  if (v6)
  {
    v8 = MFComposeLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_853_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
}

void __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_855(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MFComposeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "Adding participants to share finished", v9, 2u);
  }

  if (v6)
  {
    v8 = MFComposeLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_853_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
}

- (void)_presentSenderCollaborationAlertIfNecessaryForSendingAddress:(id)address
{
  v38 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (!-[MFMailComposeController hasPresentedSenderCollaborationAlert](self, "hasPresentedSenderCollaborationAlert") && [addressCopy length])
  {
    compositionContext = [(MFMailComposeController *)self compositionContext];
    ckShare = [compositionContext ckShare];
    currentUserParticipant = [ckShare currentUserParticipant];
    userIdentity = [currentUserParticipant userIdentity];

    lookupInfo = [userIdentity lookupInfo];
    emailAddress = [lookupInfo emailAddress];

    if ([emailAddress length])
    {
      v11 = [MEMORY[0x1E699B240] emailAddressWithString:emailAddress];
      simpleAddress = [v11 simpleAddress];
      v32 = [MEMORY[0x1E699B240] emailAddressWithString:addressCopy];
      simpleAddress2 = [v32 simpleAddress];
      if ((EFObjectsAreEqual() & 1) == 0)
      {
        v13 = MEMORY[0x1E696ADF8];
        nameComponents = [userIdentity nameComponents];
        v30 = [v13 localizedStringFromPersonNameComponents:nameComponents style:2 options:0];

        v15 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"ICLOUD_COLLABORATION_WARNING_FORMAT" value:&stru_1F3CF3758 table:@"Main"];
        v29 = [v15 localizedStringWithFormat:v17, v30, emailAddress];

        v18 = MEMORY[0x1E69DC650];
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"ICLOUD_COLLABORATION_WARNING_TITLE" value:&stru_1F3CF3758 table:@"Main"];
        v21 = [v18 alertControllerWithTitle:v20 message:v29 preferredStyle:1];

        v22 = MEMORY[0x1E69DC648];
        v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __88__MFMailComposeController__presentSenderCollaborationAlertIfNecessaryForSendingAddress___block_invoke;
        v33[3] = &unk_1E806E958;
        v33[4] = self;
        v25 = [v22 actionWithTitle:v24 style:1 handler:v33];
        [v21 addAction:v25];

        [(MFMailComposeController *)self _presentModalAlert:v21];
        v26 = MFComposeLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [v11 ef_publicDescription];
          ef_publicDescription2 = [v32 ef_publicDescription];
          *buf = 138543618;
          v35 = ef_publicDescription;
          v36 = 2114;
          v37 = ef_publicDescription2;
          _os_log_impl(&dword_1BE819000, v26, OS_LOG_TYPE_DEFAULT, "Presented sender collaboration alert. Sharing address: %{public}@ Sending address: %{public}@", buf, 0x16u);
        }

        [(MFMailComposeController *)self setHasPresentedSenderCollaborationAlert:1];
      }
    }
  }
}

- (void)_presentWarnings:(id)warnings index:(unint64_t)index suggestionsService:(id)service presentationSource:(id)source completionHandler:(id)handler
{
  warningsCopy = warnings;
  serviceCopy = service;
  sourceCopy = source;
  handlerCopy = handler;
  if ([warningsCopy count] > index)
  {
    v40 = [warningsCopy objectAtIndexedSubscript:index];
    snippet = [v40 snippet];
    v12 = &stru_1F3CF3758;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"OMITTED_ATTACHMENTS_TITLE" value:&stru_1F3CF3758 table:@"Main"];

      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CONFIRM_OMITTED_ATTACHMENTS_MESSAGE %@" value:&stru_1F3CF3758 table:@"Main"];
      v36 = [v14 stringWithFormat:v16, snippet];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(MFMailComposeController *)self _presentWarnings:warningsCopy index:index + 1 suggestionsService:serviceCopy presentationSource:sourceCopy completionHandler:handlerCopy];
        v36 = &stru_1F3CF3758;
LABEL_14:

        goto LABEL_15;
      }

      matchFoundInBCC = [v40 matchFoundInBCC];

      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      if (matchFoundInBCC)
      {
        v12 = [v18 localizedStringForKey:@"UPGRADE_BCC_RECIPIENTS_TITLE" value:&stru_1F3CF3758 table:@"Main"];

        v19 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        [v15 localizedStringForKey:@"CONFIRM_UPGRADE_BCC_RECIPIENTS_MESSAGE %@" value:&stru_1F3CF3758 table:@"Main"];
      }

      else
      {
        v12 = [v18 localizedStringForKey:@"OMITTED_RECIPIENTS_TITLE" value:&stru_1F3CF3758 table:@"Main"];

        v19 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        [v15 localizedStringForKey:@"CONFIRM_OMITTED_RECIPIENTS_MESSAGE %@" value:&stru_1F3CF3758 table:@"Main"];
      }
      v16 = ;
      v36 = [v19 stringWithFormat:v16, snippet];
    }

    v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v36 preferredStyle:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = MEMORY[0x1E69DC648];
      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"ADD_RECIPIENT" value:&stru_1F3CF3758 table:@"Main"];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __106__MFMailComposeController__presentWarnings_index_suggestionsService_presentationSource_completionHandler___block_invoke;
      v51[3] = &unk_1E806F088;
      v51[4] = self;
      v52 = serviceCopy;
      v53 = v40;
      v24 = [v21 actionWithTitle:v23 style:0 handler:v51];
      [v20 addAction:v24];
    }

    v25 = MEMORY[0x1E69DC648];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SEND_ANYWAY" value:&stru_1F3CF3758 table:@"Main"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __106__MFMailComposeController__presentWarnings_index_suggestionsService_presentationSource_completionHandler___block_invoke_2;
    v44[3] = &unk_1E806F0B0;
    v44[4] = self;
    v45 = serviceCopy;
    v46 = v40;
    v47 = warningsCopy;
    indexCopy = index;
    v28 = sourceCopy;
    v48 = v28;
    v29 = handlerCopy;
    v49 = v29;
    v30 = [v25 actionWithTitle:v27 style:0 handler:v44];
    [v20 addAction:v30];

    v31 = MEMORY[0x1E69DC648];
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __106__MFMailComposeController__presentWarnings_index_suggestionsService_presentationSource_completionHandler___block_invoke_3;
    v42[3] = &unk_1E806EE90;
    v43 = v29;
    v34 = [v31 actionWithTitle:v33 style:1 handler:v42];
    [v20 addAction:v34];

    [(MFMailComposeController *)self _presentModalAlert:v20 fromPresentationSource:v28];
    goto LABEL_14;
  }

  (*(handlerCopy + 2))(handlerCopy, 1);
LABEL_15:
}

void __106__MFMailComposeController__presentWarnings_index_suggestionsService_presentationSource_completionHandler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _reportUserEngagement:1 suggestionService:*(a1 + 40) warning:*(a1 + 48)];
  v2 = [*(a1 + 32) mailComposeView];
  v3 = [v2 isQuickReply];

  v4 = [*(a1 + 48) core];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v6 = *(a1 + 32);
  if (v3)
  {
    v8 = *MEMORY[0x1E69ADC48];
    v9 = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 expandQuickReplyToFullComposeAndPerformAction:2 additionalUserInfo:v7];
  }

  else
  {
    [v6 _updateAndStartCompletingCcFieldWithMissingRecipients:v5];
  }
}

uint64_t __106__MFMailComposeController__presentWarnings_index_suggestionsService_presentationSource_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reportUserEngagement:0 suggestionService:*(a1 + 40) warning:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80) + 1;

  return [v2 _presentWarnings:v4 index:v7 suggestionsService:v3 presentationSource:v5 completionHandler:v6];
}

- (void)_reportUserEngagement:(BOOL)engagement suggestionService:(id)service warning:(id)warning
{
  serviceCopy = service;
  warningCopy = warning;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MFMailComposeController__reportUserEngagement_suggestionService_warning___block_invoke;
  v12[3] = &unk_1E806F0D8;
  v9 = serviceCopy;
  v13 = v9;
  engagementCopy = engagement;
  v10 = warningCopy;
  v14 = v10;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:v12];
}

void __75__MFMailComposeController__reportUserEngagement_suggestionService_warning___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = 0;
  v5 = [v3 reportUserEngagement:v2 forWarning:v4 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = MFComposeLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = objc_opt_class();
      v10 = "negative";
      *buf = 136446722;
      if (v8)
      {
        v10 = "positive";
      }

      v14 = v10;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v6;
      v11 = v9;
      _os_log_error_impl(&dword_1BE819000, v7, OS_LOG_TYPE_ERROR, "Error occurred while reporting '%{public}s' engagement for warning %{public}@ to Suggestions : %{public}@", buf, 0x20u);
    }
  }
}

- (void)_updateAndStartCompletingCcFieldWithMissingRecipients:(id)recipients
{
  recipientsCopy = recipients;
  [(MFMailComposeRecipientTextView *)self->_ccField becomeFirstResponder];
  if ([recipientsCopy count] == 1)
  {
    firstObject = [recipientsCopy firstObject];
    [(MFMailComposeRecipientTextView *)self->_ccField appendText:firstObject];
  }
}

- (void)_promptForMailDropIfNecessaryWithContinuation:(id)continuation
{
  v66 = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  selfCopy = self;
  [(MFMailComposeController *)self attachments];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v4 = v62 = 0u;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v6)
  {
    v7 = *v62;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        scaledFileSize = [v9 scaledFileSize];
        if (!scaledFileSize)
        {
          scaledFileSize = [v9 decodedFileSize];
        }

        v5 += scaledFileSize;
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v6);
  }

  if (v5 > [MEMORY[0x1E69B15B8] currentUploadLimit])
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"TOO_BIG_FOR_CELL %d" value:&stru_1F3CF3758 table:@"Main"];
    v15 = [v12 localizedStringWithFormat:v14, 100];
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [CPGetDeviceRegionCode() isEqualToString:@"CH"];
    v18 = @"TOO_BIG_FOR_CELL_MESSAGE";
    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CH", @"TOO_BIG_FOR_CELL_MESSAGE"];
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_1F3CF3758 table:@"Main"];
    v20 = [v11 alertControllerWithTitle:v15 message:v19 preferredStyle:1];

    if (v17)
    {
    }

    v21 = MEMORY[0x1E69DC648];
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v24 = [v21 actionWithTitle:v23 style:1 handler:0];
    [v20 addAction:v24];

    [(MFMailComposeController *)selfCopy presentViewController:v20 animated:1 completion:0];
LABEL_28:

    goto LABEL_29;
  }

  if ([(MFMailComposeController *)selfCopy _shouldUseMailDrop])
  {
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v53 = [v25 localizedStringForKey:@"MAIL_DROP" value:&stru_1F3CF3758 table:@"Main"];

    if ([v4 count] < 2)
    {
      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v30 localizedStringForKey:@"MAIL_DROP_TITLE_FORMAT" value:&stru_1F3CF3758 table:@"Main"];

      v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v28 = [v31 localizedStringForKey:@"MAIL_DROP_NOT_USE_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];

      sendLaterDate = [(_MFMailCompositionContext *)selfCopy->_compositionContext sendLaterDate];

      if (sendLaterDate)
      {
LABEL_22:
        v33 = _EFLocalizedString();

        v34 = _EFLocalizedString();

        v20 = v33;
        v28 = v34;
      }
    }

    else
    {
      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v26 localizedStringForKey:@"MAIL_DROP_TITLE_MANY_FORMAT" value:&stru_1F3CF3758 table:@"Main"];

      v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"MAIL_DROP_NOT_USE_MESSAGE_PLURAL" value:&stru_1F3CF3758 table:@"Main"];

      sendLaterDate2 = [(_MFMailCompositionContext *)selfCopy->_compositionContext sendLaterDate];

      if (sendLaterDate2)
      {
        goto LABEL_22;
      }
    }

    sendLaterDate3 = [(_MFMailCompositionContext *)selfCopy->_compositionContext sendLaterDate];

    if (sendLaterDate3)
    {
      v36 = _EFLocalizedString();

      v53 = v36;
    }

    v50 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v5];
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v50];
    [(MFMailComposeController *)selfCopy setUseMailDrop:0];
    v37 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v53 message:v52 preferredStyle:0];
    [v37 setModalPresentationStyle:7];
    popoverPresentationController = [v37 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:selfCopy->_sendButtonItem];
    [popoverPresentationController setPermittedArrowDirections:1];
    sendLaterDate4 = [(_MFMailCompositionContext *)selfCopy->_compositionContext sendLaterDate];
    v39 = sendLaterDate4 == 0;

    if (v39)
    {
      v40 = MEMORY[0x1E69DC648];
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"MAIL_DROP_USE_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __73__MFMailComposeController__promptForMailDropIfNecessaryWithContinuation___block_invoke;
      v59[3] = &unk_1E806E0B8;
      v59[4] = selfCopy;
      v60 = continuationCopy;
      v43 = [v40 actionWithTitle:v42 style:0 handler:v59];
      [v37 addAction:v43];
    }

    v44 = MEMORY[0x1E69DC648];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __73__MFMailComposeController__promptForMailDropIfNecessaryWithContinuation___block_invoke_2;
    v57[3] = &unk_1E806EE90;
    v58 = continuationCopy;
    v45 = [v44 actionWithTitle:v28 style:0 handler:v57];
    [v37 addAction:v45];

    v46 = MEMORY[0x1E69DC648];
    v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v48 = [v47 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __73__MFMailComposeController__promptForMailDropIfNecessaryWithContinuation___block_invoke_3;
    v56[3] = &unk_1E806E958;
    v56[4] = selfCopy;
    v49 = [v46 actionWithTitle:v48 style:1 handler:v56];
    [v37 addAction:v49];

    [(MFMailComposeController *)selfCopy presentViewController:v37 animated:1 completion:0];
    goto LABEL_28;
  }

  continuationCopy[2]();
LABEL_29:
}

uint64_t __73__MFMailComposeController__promptForMailDropIfNecessaryWithContinuation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setUseMailDrop:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) attachments];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) placeholder];
        [v6 setUseMailDrop:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __73__MFMailComposeController__promptForMailDropIfNecessaryWithContinuation___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setUseMailDrop:0];
  v2 = *(a1 + 32);

  return [v2 _finishModalAlertClosingComposition:0];
}

- (BOOL)_shouldUseMailDrop
{
  v19 = *MEMORY[0x1E69E9840];
  sendingAccountProxy = [(MFMailComposeController *)self sendingAccountProxy];
  v4 = sendingAccountProxy;
  if ((!sendingAccountProxy || [sendingAccountProxy supportsMailDrop]) && objc_msgSend(MEMORY[0x1E69B15B8], "mailDropConfigured"))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    attachments = [(MFMailComposeController *)self attachments];
    v6 = 0;
    v7 = [attachments countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(attachments);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          scaledFileSize = [v10 scaledFileSize];
          if (!scaledFileSize)
          {
            scaledFileSize = [v10 decodedFileSize];
          }

          v6 += scaledFileSize;
        }

        v7 = [attachments countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = v6 > [MEMORY[0x1E69B15B8] mailDropThreshold];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_physicallyScaleImagesToScale:(unint64_t)scale attachments:(id)attachments
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attachmentsCopy = attachments;
  v7 = [attachmentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(attachmentsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 imageScalingFlags] & scale) != 0)
        {
          compositionContext = [(MFMailComposeController *)self compositionContext];
          contextID = [compositionContext contextID];
          v13 = [v10 scaledImageToFit:scale saveScaledImage:1 attachmentContextID:contextID];
        }
      }

      v7 = [attachmentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_prepareImagesForSendFromPresentationSource:(id)source withContinuation:(id)continuation
{
  v34 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  continuationCopy = continuation;
  [(MFMailComposeController *)self attachments];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v8 = v30 = 0u;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v9 |= [*(*(&v29 + 1) + 8 * v12++) imageScalingFlags];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke;
  aBlock[3] = &unk_1E806F128;
  aBlock[4] = self;
  v13 = v8;
  v27 = v13;
  v14 = continuationCopy;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  if ([(MFMailComposeController *)self canShowImageSizeField])
  {
    v16 = +[MFComposeTypeFactory imageScaleFromUserDefaults];
    if ((v16 & v9) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v15[2](v15, v17);
  }

  else if (v9)
  {
    objc_initWeak(&location, self);
    _estimateMessageSize = [(MFMailComposeController *)self _estimateMessageSize];
    prepareImagesForSendScheduler = [(MFMailComposeController *)self prepareImagesForSendScheduler];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_4;
    v20[3] = &unk_1E806F1A0;
    objc_copyWeak(v24, &location);
    v21 = v13;
    v24[1] = v9;
    v23 = v15;
    v22 = sourceCopy;
    [_estimateMessageSize onScheduler:prepareImagesForSendScheduler addSuccessBlock:v20];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v15[2](v15, 0);
  }
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke(id *a1, void *a2)
{
  objc_initWeak(&location, a1[4]);
  v4 = [a1[4] prepareImagesForSendScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_2;
  v5[3] = &unk_1E806F100;
  objc_copyWeak(v8, &location);
  v8[1] = a2;
  v6 = a1[5];
  v7 = a1[6];
  [v4 performBlock:v5];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _physicallyScaleImagesToScale:*(a1 + 56) attachments:*(a1 + 32)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_3;
  v4[3] = &unk_1E806D728;
  v5 = *(a1 + 40);
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:v4];
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_4(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v55 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [v55 unsignedLongValue];
  v58 = [WeakRetained _sizeForScale:0 imagesOnly:0];
  v57 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v2];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v73;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v73 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v72 + 1) + 8 * i) isDisplayableImage])
        {
          if (v5)
          {

            v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v56 = [v8 localizedStringForKey:@"LARGE_IMAGES_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
            goto LABEL_13;
          }

          v5 = 1;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v56 = [v8 localizedStringForKey:@"LARGE_SINGLE_IMAGE_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
LABEL_13:

  v9 = MEMORY[0x1E69DC650];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v56, v57];
  v59 = [v9 alertControllerWithTitle:v10 message:0 preferredStyle:0];

  memset(v80, 170, sizeof(v80));
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v80[0] = [v11 localizedStringForKey:@"SMALL_SIZE_UNKNOWN_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v80[1] = [v12 localizedStringForKey:@"MEDIUM_SIZE_UNKNOWN_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v80[2] = [v13 localizedStringForKey:@"LARGE_SIZE_UNKNOWN_TITLE" value:&stru_1F3CF3758 table:@"Main"];

  memset(v79, 170, sizeof(v79));
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v79[0] = [v14 localizedStringForKey:@"SMALL_SIZE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v79[1] = [v15 localizedStringForKey:@"MEDIUM_SIZE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v79[2] = [v16 localizedStringForKey:@"LARGE_SIZE_TITLE" value:&stru_1F3CF3758 table:@"Main"];

  v17 = 0;
  v60 = 0;
  v18 = 0;
  v77 = xmmword_1BE985880;
  v78 = 4;
  v19 = 1;
  memset(location, 0, sizeof(location));
  do
  {
    v20 = *(&v77 + v18);
    if ((v20 & *(a1 + 64)) == 0)
    {
      goto LABEL_25;
    }

    if (v17)
    {
      objc_storeStrong(&location[v18], v80[v18]);
LABEL_24:
      v17 = 1;
      goto LABEL_25;
    }

    v21 = [WeakRetained compositionContext];
    v22 = [v21 attachmentManager];
    v23 = [WeakRetained compositionContext];
    v24 = [v23 contextID];
    v25 = [v22 sizeForScale:v20 imagesOnly:0 forContext:v24];

    if (!v25)
    {
      v32 = 0;
      v33 = location;
      do
      {
        objc_storeStrong(v33++, v80[v32++]);
      }

      while (v19 != v32);
      goto LABEL_24;
    }

    v26 = MEMORY[0x1E696AEC0];
    v27 = v79[v18];
    v28 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v2 - v58 + v25];
    v29 = [v26 stringWithFormat:v27, v28];
    v30 = location[v18];
    location[v18] = v29;

    v17 = 0;
    if (v25 >= v58)
    {
      v31 = v20;
    }

    else
    {
      v31 = 0;
    }

    v60 |= v31;
LABEL_25:
    ++v18;
    ++v19;
  }

  while (v18 != 3);
  v34 = 0;
  v35 = v60;
  do
  {
    v36 = location[v34];
    if (v36)
    {
      v37 = *(&v77 + v34 * 8);
      if ((v37 & v35) == 0)
      {
        v38 = MEMORY[0x1E69DC648];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_5;
        v69[3] = &unk_1E806F178;
        v70 = *(a1 + 48);
        v71 = v37;
        v39 = [v38 actionWithTitle:v36 style:0 handler:v69];
        [v59 addAction:v39];

        v35 = v60;
      }
    }

    ++v34;
  }

  while (v34 != 3);
  v40 = MEMORY[0x1E69DC648];
  v41 = MEMORY[0x1E696AEC0];
  v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"ACTUAL_SIZE_TITLE %@" value:&stru_1F3CF3758 table:@"Main"];
  v44 = [v41 stringWithFormat:v43, v57];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_7;
  v67[3] = &unk_1E806EE90;
  v68 = *(a1 + 48);
  v45 = [v40 actionWithTitle:v44 style:0 handler:v67];
  [v59 addAction:v45];

  v46 = MEMORY[0x1E69DC648];
  v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v48 = [v47 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_9;
  v66[3] = &unk_1E806E958;
  v66[4] = WeakRetained;
  v49 = [v46 actionWithTitle:v48 style:1 handler:v66];
  [v59 addAction:v49];

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_11;
  v63[3] = &unk_1E806CC80;
  v63[4] = WeakRetained;
  v50 = v59;
  v64 = v50;
  v65 = *(a1 + 40);
  v51 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v51 performBlock:v63];

  for (j = 2; j != -1; --j)
  {
  }

  for (k = 2; k != -1; --k)
  {
  }

  for (m = 2; m != -1; --m)
  {
  }
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_5(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_6;
  v5[3] = &unk_1E806F150;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v4 performBlock:v5];
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_7(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_8;
  v2[3] = &unk_1E806D728;
  v3 = *(a1 + 32);
  v1 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v1 performBlock:v2];
}

void __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_9(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__MFMailComposeController__prepareImagesForSendFromPresentationSource_withContinuation___block_invoke_10;
  v2[3] = &unk_1E806C570;
  v2[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v1 performBlock:v2];
}

- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withHandler:(id)handler
{
  handlerCopy = handler;
  v12 = MEMORY[0x1E69ADAE8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__MFMailComposeController_serializedPlaceholderForFileName_fileSize_mimeType_contentID_withHandler___block_invoke;
  v14[3] = &unk_1E806F1C8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v12 placeholderAttachmentForFileName:name fileSize:size mimeType:type contentID:d completionBlock:v14];
}

- (void)securityScopeForURL:(id)l withHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = MEMORY[0x1E69ADAE8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MFMailComposeController_securityScopeForURL_withHandler___block_invoke;
  v11[3] = &unk_1E806F1F0;
  v12 = lCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [v8 securityScopeForPlaceholderURL:v10 completionBlock:v11];
}

void __59__MFMailComposeController_securityScopeForURL_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E69B15E8] securityScopedURL:*(a1 + 32) withToken:?];
  v4 = *(*(a1 + 40) + 1496);
  v5 = [*(a1 + 32) path];
  [v4 setValue:v3 forKey:v5];

  (*(*(a1 + 48) + 16))();
}

- (void)sendMessage:(unint64_t)message
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = +[MFMailComposeController signpostLog];
  v6 = v5;
  v7 = message - 1;
  if (message - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v6, OS_SIGNPOST_EVENT, message, "MAIL SEND", "Starting sendMessage", buf, 2u);
  }

  self->_resolution = 1;
  v8 = MFComposeLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resolution];
    *buf = 138412290;
    v44 = v9;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ as the send button was pressed.", buf, 0xCu);
  }

  v10 = MFComposeLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543618;
    v44 = v12;
    v45 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> User tapped send button", buf, 0x16u);
  }

  v13 = *MEMORY[0x1E699B0E8];
  forwardingEmailForPrimaryAccount = [(MFMutableMessageHeaders *)self->_savedHeaders firstHeaderForKey:*MEMORY[0x1E699B0E8]];
  if (!forwardingEmailForPrimaryAccount)
  {
    hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    v16 = hideMyEmailAddressIfExists == 0;

    if (v16)
    {
      goto LABEL_21;
    }

    mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
    forwardingEmailForPrimaryAccount = [mEMORY[0x1E699ACD8] forwardingEmailForPrimaryAccount];

    if (forwardingEmailForPrimaryAccount)
    {
      v41[0] = *MEMORY[0x1E699A750];
      hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
      v19 = *MEMORY[0x1E699A758];
      v42[0] = hideMyEmailAddressIfExists2;
      v42[1] = forwardingEmailForPrimaryAccount;
      v20 = *MEMORY[0x1E699A768];
      v41[1] = v19;
      v41[2] = v20;
      v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailComposeController isHideMyEmailMessage](self, "isHideMyEmailMessage")}];
      stringValue = [v21 stringValue];
      v42[2] = stringValue;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

      v40 = 0;
      v24 = [MEMORY[0x1E699B340] tagValueListFromDictionary:v23 error:&v40];
      v36 = v40;
      if (v24)
      {
        savedHeaders = self->_savedHeaders;
        stringRepresentation = [v24 stringRepresentation];
        [(MFMutableMessageHeaders *)savedHeaders setHeader:stringRepresentation forKey:v13];

        v27 = MFComposeLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BE819000, v27, OS_LOG_TYPE_DEFAULT, "[HME] succesfully set HME header", buf, 2u);
        }
      }

      else
      {
        v27 = MFComposeLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [MFMailComposeController sendMessage:];
        }
      }
    }

    else
    {
      v23 = MFComposeLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BE819000, v23, OS_LOG_TYPE_DEFAULT, "[HME] skip setting HME header, no forwarding address found.", buf, 2u);
      }
    }
  }

LABEL_21:
  [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B1B8]];
  [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B1A8]];
  [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B1C0]];
  [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B0F0]];
  [(MFMutableMessageHeaders *)self->_savedHeaders removeHeaderForKey:*MEMORY[0x1E699B0F8]];
  if (self->_composeWebViewFlags.respondsToCompositionWillFinish)
  {
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView compositionWillFinish];
  }

  photoPickerProgressManager = [(MFMailComposeController *)self photoPickerProgressManager];
  [photoPickerProgressManager cancelEverything];

  objc_initWeak(buf, self);
  v30 = +[MFMailComposeController signpostLog];
  v31 = v30;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v39 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v31, OS_SIGNPOST_EVENT, message, "MAIL SEND", "Starting to finalize Body Input", v39, 2u);
  }

  [(MFMailComposeController *)self stripCustomBodyIdentifiers];
  v32 = +[MFMailComposeController signpostLog];
  v33 = v32;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *v39 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v33, OS_SIGNPOST_EVENT, message, "MAIL SEND", "Finished finalizing Body Input", v39, 2u);
  }

  v34 = +[MFMailComposeController signpostLog];
  v35 = v34;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *v39 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v35, OS_SIGNPOST_EVENT, message, "MAIL SEND", "Starting to finalize signature", v39, 2u);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __39__MFMailComposeController_sendMessage___block_invoke;
  v37[3] = &unk_1E806E8B8;
  v38[1] = message;
  objc_copyWeak(v38, buf);
  [(MFMailComposeController *)self finalizeSignature:v37];
  objc_destroyWeak(v38);
  objc_destroyWeak(buf);
}

void __39__MFMailComposeController_sendMessage___block_invoke(uint64_t a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished finalizing signature", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!WeakRetained || (WeakRetained[1376] & 0x40) != 0)
  {
    v8 = +[MFMailComposeController signpostLog];
    v9 = v8;
    v10 = *(a1 + 40);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v9, OS_SIGNPOST_EVENT, v10, "MAIL SEND", "Delivery is not hosted", buf, 2u);
    }

    [v6 _finishedComposing];
  }

  else
  {
    objc_initWeak(buf, WeakRetained);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__MFMailComposeController_sendMessage___block_invoke_966;
    v11[3] = &unk_1E806E8B8;
    v12[1] = v7;
    objc_copyWeak(v12, buf);
    [v6 _setUpDeliveryObject:v7 completionHandler:v11];
    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }
}

void __39__MFMailComposeController_sendMessage___block_invoke_966(uint64_t a1)
{
  v2 = +[MFMailComposeController signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_EVENT, v4, "MAIL SEND", "Finished setting up delivery object", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedComposing];
}

- (void)setUpForSaveAsDraft
{
  v7 = *MEMORY[0x1E69E9840];
  self->_resolution = 2;
  v3 = MFComposeLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resolution];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "_resolution changed to %@ when setting up to save as a draft.", &v5, 0xCu);
  }
}

- (void)_explainAirplaneMode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MFMailComposeController__explainAirplaneMode__block_invoke;
  block[3] = &unk_1E806C570;
  block[4] = self;
  if (_explainAirplaneMode_onceToken != -1)
  {
    dispatch_once(&_explainAirplaneMode_onceToken, block);
  }
}

void __47__MFMailComposeController__explainAirplaneMode__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__MFMailComposeController__explainAirplaneMode__block_invoke_2;
  v2[3] = &unk_1E806C570;
  v2[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v1 performBlock:v2];
}

void __47__MFMailComposeController__explainAirplaneMode__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AIRPLANE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AIRPLANE_EXPLAIN" value:&stru_1F3CF3758 table:@"Main"];
  v7 = [v2 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F3CF3758 table:@"Main"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MFMailComposeController__explainAirplaneMode__block_invoke_3;
  v12[3] = &unk_1E806E958;
  v12[4] = *(a1 + 32);
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [*(a1 + 32) _presentModalAlert:v7];
}

- (void)deliverMessageRemotely:(id)remotely
{
  remotelyCopy = remotely;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 3;
  resolution = self->_resolution;
  v6 = resolution == 1;
  if (resolution == 1)
  {
    [(MFMailComposeController *)self _messageForRemoteDelivery];
  }

  else
  {
    [(MFMailComposeController *)self _messageForDraft];
  }
  v7 = ;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__MFMailComposeController_deliverMessageRemotely___block_invoke;
  v15[3] = &unk_1E806F290;
  v18 = v6;
  v15[4] = self;
  v17 = v19;
  v9 = remotelyCopy;
  v16 = v9;
  [v7 onScheduler:mainThreadScheduler addSuccessBlock:v15];

  mainThreadScheduler2 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MFMailComposeController_deliverMessageRemotely___block_invoke_2_976;
  v12[3] = &unk_1E806F2B8;
  v11 = v9;
  v13 = v11;
  v14 = v19;
  [v7 onScheduler:mainThreadScheduler2 addFailureBlock:v12];

  _Block_object_dispose(v19, 8);
}

void __50__MFMailComposeController_deliverMessageRemotely___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) useMailDrop])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v5 = [v4 stringValue];

    v6 = [v3 mutableHeaders];
    [v6 setHeader:v5 forKey:*MEMORY[0x1E69AD620]];
  }

  v7 = [v3 messageData];
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      v10 = [v9 isHideMyEmailMessage];
      v11 = [*(a1 + 32) compositionContext];
      v12 = [v11 sendLaterDate];

      v13 = MEMORY[0x1E69ADAF0];
      v14 = [*(a1 + 32) autosaveIdentifier];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __50__MFMailComposeController_deliverMessageRemotely___block_invoke_2;
      v26[3] = &unk_1E806F240;
      v15 = *(a1 + 32);
      v28 = *(a1 + 48);
      v26[4] = v15;
      v27 = v8;
      v16 = [v13 sendMessageData:v7 autosaveIdentifier:v14 isHMEMessage:v10 sendLaterDate:v12 completionBlock:v26];

      v17 = v27;
    }

    else
    {
      v18 = [v9 accountProxyGenerator];
      v19 = [*(a1 + 32) sendingEmailAddress];
      v20 = [v18 accountProxyContainingEmailAddress:v19 includingInactive:1 originatingBundleID:*(*(a1 + 32) + 1640) sourceAccountManagement:*(*(a1 + 32) + 1584)];
      v12 = [v20 uniqueID];

      v21 = MEMORY[0x1E69ADAE8];
      v22 = [*(a1 + 32) autosaveIdentifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__MFMailComposeController_deliverMessageRemotely___block_invoke_975;
      v23[3] = &unk_1E806F268;
      v25 = *(a1 + 48);
      v24 = v8;
      [v21 saveMessageData:v7 forAccountWithID:v12 autosaveIdentifier:v22 completionBlock:v23];

      v17 = v24;
    }

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [v3 setMessageBody:0];
  }

  (*(*(a1 + 40) + 16))();
}

void __50__MFMailComposeController_deliverMessageRemotely___block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 2;
    if (a3)
    {
      [*(a1 + 32) _explainAirplaneMode];
    }
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MFMailComposeController_deliverMessageRemotely___block_invoke_3;
  v10[3] = &unk_1E806F218;
  v12 = a2;
  v9 = v7;
  v11 = v9;
  [v8 _performBlockWithStrongComposeCoordinator:v10];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __50__MFMailComposeController_deliverMessageRemotely___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = MFComposeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#SiriMailComposeCoordinator setting sent state", &v7, 2u);
    }

    v5 = @"sent";
  }

  else
  {
    v4 = MFComposeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) description];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#SiriMailComposeCoordinator setting failed state due to error: %@", &v7, 0xCu);
    }

    v5 = @"failed";
  }

  [v3 setState:v5];
}

intptr_t __50__MFMailComposeController_deliverMessageRemotely___block_invoke_975(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_finishedComposing
{
  v46[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  autosave = [MEMORY[0x1E69ADAC8] autosave];
  autosaveIdentifier = [(MFMailComposeController *)self autosaveIdentifier];
  [autosave removeAutosavedMessageWithIdentifier:autosaveIdentifier];

  [(MFMailComposeController *)self setAutosaveSession:0];
  [(MFMailComposeController *)self setRemoveSignatureForAutoSavedMessages:0];
  attachments = [(MFMailComposeController *)self attachments];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MFMailComposeController__finishedComposing__block_invoke;
  aBlock[3] = &unk_1E806C570;
  v32 = attachments;
  v42 = v32;
  v7 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __45__MFMailComposeController__finishedComposing__block_invoke_979;
    v39[3] = &unk_1E806F2E0;
    objc_copyWeak(&v40, &location);
    [WeakRetained mailComposeControllerCompositionFinished:self prepareForDismissalHandler:v39];
    v7[2](v7);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __45__MFMailComposeController__finishedComposing__block_invoke_2;
  v37[3] = &unk_1E806F308;
  v37[4] = self;
  v38 = WeakRetained;
  v8 = _Block_copy(v37);
  needsDelivery = [(MFMailComposeController *)self needsDelivery];
  if (needsDelivery)
  {
    resolution = [(MFMailComposeController *)self resolution];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __45__MFMailComposeController__finishedComposing__block_invoke_986;
    v33[3] = &unk_1E806F350;
    v36 = resolution == 1;
    v33[4] = self;
    v34 = v7;
    v35 = v8;
    [(MFMailComposeController *)self deliverMessageRemotely:v33];
  }

  else
  {
    [(MFMailComposeController *)self _performBlockWithStrongComposeCoordinator:&__block_literal_global_985];
    v11 = MFComposeLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      location = 138543362;
      *location_4 = v13;
      _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> Composing an email was cancelled.", &location, 0xCu);
    }

    (*(v8 + 2))(v8, 0, 0);
  }

  if (needsDelivery)
  {
LABEL_9:
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Adding analytics for editable hyperlinks", &location, 2u);
    }

    v45 = @"sentWithEditableLink";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailComposeController hasAddedEditableHyperlink](self, "hasAddedEditableHyperlink")}];
    v46[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];

    v17 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.email.sent" collectionData:v16];
    analyticsCollector = [(MFMailComposeController *)self analyticsCollector];
    [analyticsCollector logOneTimeEvent:v17];

    hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    if (hideMyEmailAddressIfExists)
    {
    }

    else if (![(MFMailComposeController *)self hideMyEmailMultipleRecipient])
    {
LABEL_17:

      goto LABEL_18;
    }

    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
      hideMyEmailMultipleRecipient = [(MFMailComposeController *)self hideMyEmailMultipleRecipient];
      location = 67109376;
      *location_4 = hideMyEmailAddressIfExists2 != 0;
      *&location_4[4] = 1024;
      *&location_4[6] = hideMyEmailMultipleRecipient;
      _os_log_impl(&dword_1BE819000, v20, OS_LOG_TYPE_DEFAULT, "Adding Telemetry for the Compose Session for Hide My Email Send %d and Hide My Email Multiple recipients %d.", &location, 0xEu);
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v23 setObject:&unk_1F3D160E0 forKeyedSubscript:@"hideMyEmailSession"];
    v24 = MEMORY[0x1E696AD98];
    hideMyEmailAddressIfExists3 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    v26 = [v24 numberWithInt:hideMyEmailAddressIfExists3 != 0];
    [v23 setObject:v26 forKeyedSubscript:@"hideMyEmailSend"];

    v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[MFMailComposeController hideMyEmailMultipleRecipient](self, "hideMyEmailMultipleRecipient")}];
    [v23 setObject:v27 forKeyedSubscript:@"hideMyEmailMultipleRecipient"];

    v28 = objc_alloc(MEMORY[0x1E699AC78]);
    v29 = [v23 copy];
    v30 = [v28 initWithEventName:@"com.apple.mail.hideMyEmailMultipleRecipients" collectionData:v29];

    analyticsCollector2 = [(MFMailComposeController *)self analyticsCollector];
    [analyticsCollector2 logOneTimeEvent:v30];

    goto LABEL_17;
  }

LABEL_18:
}

void __45__MFMailComposeController__finishedComposing__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        MFGreenTeaLogger();
        v6 = getCTGreenTeaOsLogHandle();
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = [MEMORY[0x1E695DF00] date];
            v10 = [v5 contentTypeIdentifier];
            *buf = 138412546;
            v16 = v9;
            v17 = 2114;
            v18 = v10;
            _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_INFO, "%@ <Mail>[com.apple.mobilemail]:[com.apple.greentea:mobilemail] Transmitted attachment(s): filetype %{public}@", buf, 0x16u);
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v2);
  }
}

void __45__MFMailComposeController__finishedComposing__block_invoke_979(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sendAnalyticsSignalForResult:a2];
  }
}

void __45__MFMailComposeController__finishedComposing__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) _sendAnalyticsSignalForResult:a2];
  v6 = [MEMORY[0x1E69DC938] mf_isPadIdiom] ^ 1;
  if (a2 != 2)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) parentViewController];
    [v7 setModalTransitionStyle:13];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) navigationController];
    [v8 mailComposeController:v9 didFinishWithResult:a2 error:v5];

    if (v5)
    {
      v10 = MFComposeLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v5 localizedDescription];
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Compose error: %{public}@", &v14, 0x16u);
      }
    }
  }
}

void __45__MFMailComposeController__finishedComposing__block_invoke_983(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MFComposeLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "#SiriMailComposeCoordinator setting cancelled state", v4, 2u);
  }

  [v2 setState:@"cancelled"];
}

void __45__MFMailComposeController__finishedComposing__block_invoke_986(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMailComposeErrorDomain" code:*(a1 + 56) userInfo:0];
    v4 = MFComposeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 localizedDescription];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> Compose error: %{public}@", &v9, 0x16u);
    }

    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

- (void)setDraftMessage:(id)message
{
  messageCopy = message;
  [(MFMailComposeController *)self mf_lock];
  objc_storeStrong(&self->_lastDraftMessage, message);
  [(MFMailComposeController *)self mf_unlock];
}

- (void)setRecipientsKeyboardType:(int64_t)type
{
  textView = [(CNComposeRecipientTextView *)self->_toField textView];
  textInputTraits = [textView textInputTraits];
  [textInputTraits setKeyboardType:type];

  textView2 = [(CNComposeRecipientTextView *)self->_ccField textView];
  textInputTraits2 = [textView2 textInputTraits];
  [textInputTraits2 setKeyboardType:type];

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  bccField = [mailComposeView bccField];

  v8 = bccField;
  if (bccField)
  {
    textView3 = [bccField textView];
    textInputTraits3 = [textView3 textInputTraits];
    [textInputTraits3 setKeyboardType:type];

    v8 = bccField;
  }
}

- (id)contentVariationName
{
  if (self->_selectedContentVariationIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    name = 0;
  }

  else
  {
    contentVariations = [(_MFMailCompositionContext *)self->_compositionContext contentVariations];
    v5 = [contentVariations objectAtIndexedSubscript:self->_selectedContentVariationIndex];
    name = [v5 name];
  }

  return name;
}

- (BOOL)canShowContentVariationPicker
{
  contentVariations = [(_MFMailCompositionContext *)self->_compositionContext contentVariations];
  v3 = [contentVariations count] > 1;

  return v3;
}

- (void)loadView
{
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v3 = [[MFMailComposeView alloc] initWithFrame:0 options:[(_MFMailCompositionContext *)self->_compositionContext isQuickReply]& _os_feature_enabled_impl() isQuickReply:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 320.0, 320.0];
  [(MFMailComposeView *)v3 setComposeViewDelegate:self];
  [(MFMailComposeView *)v3 setComposeRecipientDelegate:self];
  toField = [(MFMailComposeView *)v3 toField];
  toField = self->_toField;
  self->_toField = toField;

  ccField = [(MFMailComposeView *)v3 ccField];
  ccField = self->_ccField;
  self->_ccField = ccField;

  bccField = [(MFMailComposeView *)v3 bccField];
  bccField = self->_bccField;
  self->_bccField = bccField;

  subjectField = [(MFMailComposeView *)v3 subjectField];
  subjectField = self->_subjectField;
  self->_subjectField = subjectField;

  [(MFComposeSubjectView *)self->_subjectField setDelegate:self];
  draftSubject = [(_MFMailCompositionContext *)self->_compositionContext draftSubject];
  [(MFComposeSubjectView *)self->_subjectField setText:draftSubject];

  composeWebView = [(MFMailComposeView *)v3 composeWebView];
  composeWebView = self->_composeWebView;
  self->_composeWebView = composeWebView;

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __35__MFMailComposeController_loadView__block_invoke;
  v27 = &unk_1E806E930;
  v15 = v3;
  v28 = v15;
  selfCopy = self;
  [(MFMailComposeController *)self _performBlockWithStrongComposeCoordinator:&v24];
  v16 = 0.0;
  if (self->_contentVisible)
  {
    v16 = 1.0;
  }

  [(MFComposeWebView *)self->_composeWebView setAlpha:v16, v24, v25, v26, v27];
  if ([(_MFMailCompositionContext *)self->_compositionContext prefersFirstLineSelection])
  {
    [(MFComposeWebView *)self->_composeWebView setPrefersFirstLineSelection];
  }

  composeWebView2 = [(MFMailComposeController *)self composeWebView];
  self->_composeWebViewFlags.respondsToCompositionWillFinish = objc_opt_respondsToSelector() & 1;

  composeWebView3 = [(MFMailComposeController *)self composeWebView];
  self->_composeWebViewFlags.respondsToCompositionDidFailToFinish = objc_opt_respondsToSelector() & 1;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = self->_subjectField;
  if (v20)
  {
    textView = [(MFComposeSubjectView *)v20 textView];
    [defaultCenter addObserver:self selector:sel__subjectTextChanged_ name:*MEMORY[0x1E69DE750] object:textView];
  }

  v22 = *MEMORY[0x1E6996390];
  [defaultCenter addObserver:self selector:sel__recipientTextChanged_ name:*MEMORY[0x1E6996390] object:self->_toField];
  [defaultCenter addObserver:self selector:sel__recipientTextChanged_ name:v22 object:self->_ccField];
  bccField2 = [(MFMailComposeView *)v15 bccField];
  [defaultCenter addObserver:self selector:sel__recipientTextChanged_ name:v22 object:bccField2];

  [defaultCenter addObserver:self selector:sel__composeViewDidDraw_ name:@"MailComposeViewDidDraw" object:v15];
  [defaultCenter addObserver:self selector:sel__focusGained_ name:*MEMORY[0x1E69DE5B8] object:0];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(MFMailComposeView *)v15 setToFieldDelegate:self];
  }

  [(MFMailComposeView *)v15 setNavigationBarDelegate:self];
  [(MFMailComposeView *)v15 setPreservesSuperviewLayoutMargins:1];
  [(MFMailComposeView *)v15 setInsetsLayoutMarginsFromSafeArea:0];
  [(MFMailComposeController *)self setView:v15];
  [(MFMailComposeController *)self _setInitialStateForImageField];
}

void __35__MFMailComposeController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setComposeCoordinator:?];
  [*(*(a1 + 40) + 1224) setComposeCoordinator:v3];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v13 viewDidLoad];
  if ((*(self + 1376) & 0x10) != 0)
  {
    [(MFMailComposeController *)self _restoreMessageValues];
    mailComposeView2 = [(MFMailComposeController *)self _addressFieldForField:self->_recipientFieldWhileViewUnloaded];
    [mailComposeView2 setExpanded:1];
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView setRecipientFieldsEditable:1 animated:0];

    if (mailComposeView2)
    {
      textView = [mailComposeView2 textView];
      [textView becomeFirstResponder];
    }

    self->_recipientFieldWhileViewUnloaded = 0;
    *(self + 1376) &= ~0x10u;
  }

  else
  {
    [(MFMailComposeController *)self _loadCompositionContext];
    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 setRecipientFieldsEditable:0 animated:0];
  }

  emailAddresses = [(MFMailComposeController *)self emailAddresses];
  mailComposeView3 = [(MFMailComposeController *)self mailComposeView];
  fromField = [mailComposeView3 fromField];
  [fromField setAvailableAddresses:emailAddresses];

  [(MFMailComposeController *)self _setupLargeTitleAccessory];
  [(MFMailComposeController *)self _setupNavigationBarItems];
  [(MFMailComposeController *)self _setupOrnamentViewController];
  [(MFMailComposeController *)self _setupSendLaterOnboardingPaletteIfNecessary];
  [(MFMailComposeController *)self _setupForQuickReply];
  mailComposeView4 = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView4 setPopoverOwner:self];

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  [compositionContext insertDeferredAttachmentsIntoComposeWebView:self->_composeWebView];

  v11 = [[_TtC9MessageUI20MessageUITipsManager alloc] initWith:self];
  tipsManager = self->_tipsManager;
  self->_tipsManager = v11;
}

- (void)viewWillUnload
{
  v4.receiver = self;
  v4.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v4 viewWillUnload];
  [(MFMailComposeController *)self _saveMessageValues];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setComposeViewDelegate:0];
  [mailComposeView setComposeRecipientDelegate:0];
  self->_recipientFieldWhileViewUnloaded = [(MFMailComposeController *)self _fieldForAddressField:self->_lastFocusedRecipientView];
  *(self + 1376) |= 0x10u;
}

- (void)viewDidUnload
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E3030] object:0];
  subjectField = self->_subjectField;
  if (subjectField)
  {
    textView = [(MFComposeSubjectView *)subjectField textView];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE750] object:textView];
  }

  [defaultCenter removeObserver:self name:*MEMORY[0x1E6996390] object:0];
  [defaultCenter removeObserver:self name:@"MFMailComposeContactsSearchControllerWillBeginSearch" object:0];
  [defaultCenter removeObserver:self name:@"MFMailComposeContactsSearchControllerDidEndSearch" object:0];
  [defaultCenter removeObserver:self name:@"MailComposeViewDidDraw" object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5B8] object:0];
  toField = self->_toField;
  self->_toField = 0;

  ccField = self->_ccField;
  self->_ccField = 0;

  imageSizeField = self->_imageSizeField;
  self->_imageSizeField = 0;

  [(MFComposeSubjectView *)self->_subjectField setDelegate:0];
  v9 = self->_subjectField;
  self->_subjectField = 0;

  composeWebView = self->_composeWebView;
  self->_composeWebView = 0;

  objc_storeWeak(&self->_savedFirstResponder, 0);
  v11.receiver = self;
  v11.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v11 viewDidUnload];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v14 viewDidLayoutSubviews];
  navigationItem = [(MFMailComposeController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  contentView = [_bottomPalette contentView];

  [contentView bounds];
  v7 = v6;
  [(MFMailComposeController *)self previousPaletteWidth];
  v9 = v7 - v8;
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 2.22044605e-16)
  {
    [(MFMailComposeController *)self setPreviousPaletteWidth:v7];
    [contentView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v11 = v10;
    navigationItem2 = [(MFMailComposeController *)self navigationItem];
    _bottomPalette2 = [navigationItem2 _bottomPalette];
    [_bottomPalette2 setPreferredHeight:v11];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v10 viewWillAppear:appear];
  [(MFMailComposeController *)self pickInitialFirstResponder];
  [(MFMailComposeController *)self setIsModal:1];
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if ((mf_supportsPopoverPresentation & 1) == 0)
  {
    contactViewController = [(MFMailComposeController *)self contactViewController];

    if (contactViewController)
    {
      [(MFMailComposeController *)self setContactViewController:0];
      [(MFMailComposeController *)self setRecipientPresentingCard:0];
      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      [mailComposeView restoreFirstResponderWithKeyboardPinning:1];
    }
  }

  [(MFMailComposeController *)self setDelayToShowMarkupHasPassed:0];
  v8 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MFMailComposeController_viewWillAppear___block_invoke;
  block[3] = &unk_1E806C570;
  block[4] = self;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

void __42__MFMailComposeController_viewWillAppear___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _attachmentToMarkup];
  v2 = [*(a1 + 32) attachmentToMarkupIsLoaded];
  if (v6)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    [v4 markupAttachment:?];
    v5 = [*(a1 + 32) compositionContext];
    [v5 setAttachmentToMarkupContentID:0];
  }

  else
  {
    [v4 setDelayToShowMarkupHasPassed:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v12 viewDidAppear:appear];
  view = [(MFMailComposeController *)self view];
  window = [view window];

  objc_storeWeak(&self->_containingWindow, window);
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  if ((*(self + 1376) & 0x80000000) == 0)
  {
    [(MFMailComposeController *)self _sendViewVisibilityNotification:@"MFMailComposeViewDidShow" window:window];
    *(self + 1376) |= 0x80u;
    [(MFMailComposeController *)self performSelector:sel_clearInitialTitle withObject:0 afterDelay:1.0];
    if ([(MFMailComposeController *)self canShowImageSizeField])
    {
      [(MFMailComposeController *)self _scaleImages];
    }
  }

  if ([(_MFMailCompositionContext *)self->_compositionContext caretPosition]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MFMailComposeController *)self setCaretPosition:[(_MFMailCompositionContext *)self->_compositionContext caretPosition]];
  }

  v6 = [(MFMailComposeController *)self popoverManagerCreateIfNeeded:1];
  [(MFMailComposeController *)self _startAutosaveTimerIfNeeded];
  [(MFMailComposeController *)self _updateAutosaveSession];
  [(MFMailComposeController *)self _makeComposeUserActivityCurrent];
  [(MFMailComposeController *)self _updateSendAndCloseButtonTintColor];
  tipsManager = [(MFMailComposeController *)self tipsManager];
  [tipsManager controllerDidAppear];

  [(MFMailComposeController *)self _performDeferredActionIfNecessary];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFMailComposeControllerDidLaunchNotification" object:self];

  v9 = +[MFMailComposeController signpostLog];
  signpostID = [(MFMailComposeController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MAIL COMPOSE", "MFMailComposeController viewDidAppear", v11, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v6 viewWillDisappear:disappear];
  [(NSTimer *)self->_autosaveTimer invalidate];
  autosaveTimer = self->_autosaveTimer;
  self->_autosaveTimer = 0;

  autosaveSession = self->_autosaveSession;
  self->_autosaveSession = 0;

  [(MFMailComposeController *)self dismissSheet];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v20.receiver = self;
  v20.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v20 viewDidDisappear:?];
  presentedViewController = [(MFMailComposeController *)self presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    presentedViewController2 = [(MFMailComposeController *)self presentedViewController];
    presentationController = [presentedViewController2 presentationController];
    adaptivePresentationStyle = [presentationController adaptivePresentationStyle];

    if (adaptivePresentationStyle == 7)
    {
      [(MFMailComposeController *)self dismissViewControllerAnimated:disappearCopy completion:0];
    }
  }

  presentedViewController3 = [(MFMailComposeController *)self presentedViewController];

  if (!presentedViewController3)
  {
    *(self + 1376) &= ~0x80u;
    [(MFMailComposeController *)self setDelayToShowMarkupHasPassed:0];
    WeakRetained = objc_loadWeakRetained(&self->_containingWindow);
    [(MFMailComposeController *)self _sendViewVisibilityNotification:@"MFMailComposeViewDidDismiss" window:WeakRetained];
  }

  if (self->_popoverManager)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"MFMailWillPresentPopoverNotification" object:0];

    popoverManager = self->_popoverManager;
    self->_popoverManager = 0;
  }

  if (self->_resolution == 1)
  {
    sendLaterDate = [(_MFMailCompositionContext *)self->_compositionContext sendLaterDate];

    if (!sendLaterDate)
    {
      +[MFSoundController playSentMailSound];
    }
  }

  userActivity = [(MFMailComposeController *)self userActivity];
  [userActivity resignCurrent];

  tipsManager = [(MFMailComposeController *)self tipsManager];
  [tipsManager controllerDidDisappear];

  v17 = +[MFMailComposeController signpostLog];
  signpostID = [(MFMailComposeController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v17, OS_SIGNPOST_INTERVAL_END, signpostID, "MAIL COMPOSE", "MFMailComposeController viewDidDisappear", v19, 2u);
  }
}

- (void)_sendViewVisibilityNotification:(id)notification window:(id)window
{
  v12[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  windowCopy = window;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = defaultCenter;
  if (windowCopy)
  {
    v11 = @"MFMailComposeViewWindowKey";
    v12[0] = windowCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v9 postNotificationName:notificationCopy object:self userInfo:v10];
  }

  else
  {
    [defaultCenter postNotificationName:notificationCopy object:self];
  }
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v3 applicationWillSuspend];
  [(MFMailComposeController *)self _prepareForSuspend];
}

- (void)_clearMessageValues
{
  toAddresses = self->_toAddresses;
  if (toAddresses)
  {
    self->_toAddresses = 0;
  }

  ccAddresses = self->_ccAddresses;
  if (ccAddresses)
  {
    self->_ccAddresses = 0;
  }

  bccAddresses = self->_bccAddresses;
  if (bccAddresses)
  {
    self->_bccAddresses = 0;
  }

  subject = self->_subject;
  if (subject)
  {
    self->_subject = 0;
  }

  content = self->_content;
  if (content)
  {
    self->_content = 0;
  }
}

- (void)_saveMessageValues
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [(MFMailComposeController *)self _clearMessageValues];
  addresses = [(CNComposeRecipientTextView *)self->_toField addresses];
  toAddresses = self->_toAddresses;
  self->_toAddresses = addresses;

  addresses2 = [(CNComposeRecipientTextView *)self->_ccField addresses];
  ccAddresses = self->_ccAddresses;
  self->_ccAddresses = addresses2;

  bccField = [mailComposeView bccField];
  addresses3 = [bccField addresses];
  bccAddresses = self->_bccAddresses;
  self->_bccAddresses = addresses3;

  text = [(MFComposeSubjectView *)self->_subjectField text];
  subject = self->_subject;
  self->_subject = text;

  htmlString = [(MFComposeWebView *)self->_composeWebView htmlString];
  content = self->_content;
  self->_content = htmlString;

  *(self + 1376) |= [(MFComposeWebView *)self->_composeWebView isDirty];
}

- (void)_restoreMessageValues
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  if (self->_toAddresses)
  {
    [(CNComposeRecipientTextView *)self->_toField setAddresses:?];
  }

  if (self->_ccAddresses)
  {
    [(CNComposeRecipientTextView *)self->_ccField setAddresses:?];
  }

  if (self->_bccAddresses)
  {
    bccField = [mailComposeView bccField];
    [bccField setAddresses:self->_bccAddresses];
  }

  if (self->_subject)
  {
    [(MFMailComposeController *)self setSubject:?];
  }

  [(MFMailComposeController *)self _clearMessageValues];
}

- (void)_prepareForSuspend
{
  if ((*(self + 1376) & 8) == 0)
  {
    [(MFMailComposeController *)self _dismissPeoplePicker:0];
    [(MFMailComposeController *)self finishEnteringRecipients];
    [(MFMailComposeController *)self _saveMessageValues];
    *(self + 1376) |= 8u;
  }
}

- (BOOL)_isActiveComposeController
{
  if ([(MFMailComposeController *)self hosted])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained mailComposeControllerIsActiveComposeController:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)didBecomeActiveComposeController
{
  if ([(MFMailComposeController *)self _isActiveComposeController])
  {
    view = [(MFMailComposeController *)self view];
    [view setAnimationDisabled:1];
    *(self + 1376) &= ~4u;
    [(MFMailComposeController *)self _restoreMessageValues];
    [view setAnimationDisabled:0];
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
    [(MFMailComposeController *)self _updateRecipientAtomStyles];
    *(self + 1376) &= ~8u;
    [(MFMailComposeController *)self _accountsChanged:0];
    [(MFMailComposeController *)self _makeComposeUserActivityCurrent];
  }
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v3 applicationDidResume];
  [(MFMailComposeController *)self didBecomeActiveComposeController];
}

- (id)popoverManagerCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  view = [(MFMailComposeController *)self view];
  window = [view window];

  popoverManager = self->_popoverManager;
  if (popoverManager)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8 && window != 0)
  {
    v10 = [MFMailPopoverManager managerForWindow:window createIfNeeded:1];
    v11 = self->_popoverManager;
    self->_popoverManager = v10;

    if (self->_popoverManager)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__popoverWillBePresented_ name:@"MFMailWillPresentPopoverNotification" object:self->_popoverManager];

      popoverManager = self->_popoverManager;
    }

    else
    {
      popoverManager = 0;
    }
  }

  v13 = popoverManager;

  return popoverManager;
}

- (void)_popoverWillBePresented:(id)presented
{
  if ([(MFMailComposeController *)self _isActiveComposeController])
  {
    traitCollection = [(MFMailComposeController *)self traitCollection];
    mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

    if (mf_supportsPopoverPresentation)
    {
      *(self + 1377) |= 2u;

      [(MFMailComposeController *)self _updateSendAndCloseEnabled];
    }
  }
}

- (void)viewLayoutMarginsDidChange
{
  v19.receiver = self;
  v19.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v19 viewLayoutMarginsDidChange];
  traitCollection = [(MFMailComposeController *)self traitCollection];
  view = [(MFMailComposeController *)self view];
  [view directionalLayoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(MFMailComposeController *)self view];
  [view2 safeAreaInsets];
  v18 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v6 safeAreaInsets:v8, v10, v12, v14, v15, v16, v17];
  [(MFMailComposeController *)self setDisplayMetrics:v18];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  view = [(MFMailComposeController *)self view];
  [view directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(MFMailComposeController *)self view];
  [view2 safeAreaInsets];
  v19 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v7 safeAreaInsets:v9, v11, v13, v15, v16, v17, v18];
  [(MFMailComposeController *)self setDisplayMetrics:v19];

  [(MFMailComposeController *)self _updateSendAndCloseButtonTintColor];
}

- (void)_displayMetricsDidChange
{
  if ((MFSolariumFeatureEnabled() & 1) == 0)
  {
    displayMetrics = [(MFMailComposeController *)self displayMetrics];
    [displayMetrics sendBarButtonItemImageInsets];
    [(UIBarButtonItem *)self->_sendButtonItem setImageInsets:?];
  }
}

- (void)_dismissPresentedViewController
{
  presentedViewController = [(MFMailComposeController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(MFMailComposeController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_dismissPresentedHalfSheet
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  if (![traitCollection mf_supportsPopoverPresentation])
  {
    presentedViewController = [(MFMailComposeController *)self presentedViewController];
    if (presentedViewController)
    {
      if (!self->_photosPickerController)
      {
        styleSelector = [(MFMailComposeController *)self styleSelector];
        if (!styleSelector)
        {
          styleSelector = [(MFMailComposeController *)self formattingController];
          if (!styleSelector)
          {
            systemPhotosPickerController = self->_systemPhotosPickerController;

            if (!systemPhotosPickerController)
            {
              return;
            }

            goto LABEL_8;
          }
        }
      }

LABEL_8:
      composeWebView = [(MFMailComposeController *)self composeWebView];
      [composeWebView releaseFocusAfterDismissing:0];

      presentedViewController2 = [(MFMailComposeController *)self presentedViewController];
      [presentedViewController2 dismissViewControllerAnimated:1 completion:0];

      photosPickerController = self->_photosPickerController;
      self->_photosPickerController = 0;

      v6 = self->_systemPhotosPickerController;
      self->_systemPhotosPickerController = 0;

      if (_os_feature_enabled_impl())
      {

        [(MFMailComposeController *)self setFormattingController:0];
      }

      else
      {

        [(MFMailComposeController *)self setStyleSelector:0];
      }

      return;
    }
  }
}

- (void)_dismissRichLinkMenu
{
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView hideMakeLinkAccessoryButtonMenu];
}

- (id)_messageToDonate
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sendingEmailAddress = [(MFMailComposeController *)self sendingEmailAddress];
  [v3 setObject:sendingEmailAddress forKeyedSubscript:*MEMORY[0x1E69ADC78]];

  toRecipients = [(MFMailComposeController *)self toRecipients];
  v6 = __43__MFMailComposeController__messageToDonate__block_invoke(toRecipients, toRecipients);
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69ADC88]];

  ccRecipients = [(MFMailComposeController *)self ccRecipients];
  v8 = __43__MFMailComposeController__messageToDonate__block_invoke(ccRecipients, ccRecipients);
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69ADC68]];

  bccRecipients = [(MFMailComposeController *)self bccRecipients];
  v10 = __43__MFMailComposeController__messageToDonate__block_invoke(bccRecipients, bccRecipients);
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69ADC60]];

  subject = [(MFMailComposeController *)self subject];
  [v3 setObject:subject forKeyedSubscript:*MEMORY[0x1E69ADC80]];

  _copyMessagePlainTextForDonation = [(MFMailComposeController *)self _copyMessagePlainTextForDonation];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__MFMailComposeController__messageToDonate__block_invoke_3;
  v16[3] = &unk_1E806F3C8;
  v13 = v3;
  v17 = v13;
  selfCopy = self;
  v14 = [_copyMessagePlainTextForDonation then:v16];

  return v14;
}

id __43__MFMailComposeController__messageToDonate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MFPersonTransformer);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MFMailComposeController__messageToDonate__block_invoke_2;
  v7[3] = &unk_1E806F378;
  v8 = v3;
  v4 = v3;
  v5 = [v2 ef_compactMap:v7];

  return v5;
}

id __43__MFMailComposeController__messageToDonate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transformedValue:a2];

  return v2;
}

id __43__MFMailComposeController__messageToDonate__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a2;
  if ([v17 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v17;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = *v21;
      v6 = &stru_1F3CF3758;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = MEMORY[0x1E696AEC0];
            v10 = [v8 string];
            v11 = [v9 stringWithFormat:@"%@%@", v6, v10];

            v6 = v11;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = &stru_1F3CF3758;
    }

    v12 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [(__CFString *)v6 stringByTrimmingCharactersInSet:v12];

    [*(a1 + 32) setObject:v13 forKeyedSubscript:*MEMORY[0x1E69ADC70]];
  }

  v14 = [*(a1 + 40) _copyMessagePlainTextForDonationRemoveQuotes:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__MFMailComposeController__messageToDonate__block_invoke_4;
  v18[3] = &unk_1E806F3A0;
  v19 = *(a1 + 32);
  v15 = [v14 then:v18];

  return v15;
}

id __43__MFMailComposeController__messageToDonate__block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a2;
  if ([v17 count])
  {
    v16 = a1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v17;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
      v6 = &stru_1F3CF3758;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = MEMORY[0x1E696AEC0];
            v10 = [v8 string];
            v11 = [v9 stringWithFormat:@"%@%@", v6, v10];

            v6 = v11;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = &stru_1F3CF3758;
    }

    v12 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [(__CFString *)v6 stringByTrimmingCharactersInSet:v12];

    [*(v16 + 32) setObject:v13 forKeyedSubscript:*MEMORY[0x1E69ADC90]];
    a1 = v16;
  }

  v14 = [MEMORY[0x1E699B7C8] futureWithResult:*(a1 + 32)];

  return v14;
}

- (BOOL)_isTabKeyCommandInvocationPossible
{
  if ([(MFMailComposeController *)self _isDummyViewController])
  {
    return 0;
  }

  view = [(MFMailComposeController *)self view];
  firstResponder = [view firstResponder];

  if (firstResponder)
  {
    v6 = firstResponder == self;
  }

  else
  {
    v6 = 1;
  }

  v3 = v6;

  return v3;
}

- (void)_focusBccHeaderCommandInvoked:(id)invoked
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  bccField = [mailComposeView bccField];
  [bccField becomeFirstResponder];
}

- (id)keyCommands
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = keyCommands_keyCommands_0;
  if (!keyCommands_keyCommands_0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v4 = keyCommands_keyCommands_0;
    keyCommands_keyCommands_0 = v3;

    v5 = keyCommands_keyCommands_0;
    v7 = __38__MFMailComposeController_keyCommands__block_invoke(v6, *MEMORY[0x1E69DDEA0], 0, sel__closeShortcutInvoked_, 0, 0);
    v13[0] = v7;
    v8 = __38__MFMailComposeController_keyCommands__block_invoke(v7, @"\t", 0, sel__tabKeyCommandInvoked_, 0, 1);
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [v5 arrayByAddingObjectsFromArray:v9];
    v11 = keyCommands_keyCommands_0;
    keyCommands_keyCommands_0 = v10;

    v2 = keyCommands_keyCommands_0;
  }

  return v2;
}

id __38__MFMailComposeController_keyCommands__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v10 = a5;
  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:a2 modifierFlags:a3 action:a4];
  [v11 setTitle:v10];
  if (a6)
  {
    v12 = [v11 repeatBehavior];
  }

  else
  {
    v12 = 2;
  }

  [v11 setRepeatBehavior:v12];

  return v11;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v10.receiver = self;
  v10.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v10 validateCommand:commandCopy];
  action = [commandCopy action];
  if (action == sel__focusBccHeaderCommandInvoked_)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    isBccFieldVisible = [mailComposeView isBccFieldVisible];

    if (!isBccFieldVisible)
    {
      [commandCopy setState:0];
      goto LABEL_9;
    }

    [commandCopy setState:1];
    goto LABEL_7;
  }

  if (action == sel__sendCommandInvoked_)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
    [commandCopy setTitle:v7];

    if (![(MFMailComposeController *)self _shouldEnableSendButton])
    {
LABEL_7:
      [commandCopy setAttributes:1];
    }
  }

LABEL_9:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(MFMailComposeController *)self _isDummyViewController])
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (sel_importDocument == action)
  {
    canShowAttachmentPicker = [(MFMailComposeController *)self canShowAttachmentPicker];
LABEL_13:
    v7 = canShowAttachmentPicker;
    goto LABEL_14;
  }

  if (sel_send_ == action)
  {
    canShowAttachmentPicker = [(MFMailComposeController *)self _shouldEnableSendButton];
    goto LABEL_13;
  }

  if (sel__tabKeyCommandInvoked_ == action)
  {
    canShowAttachmentPicker = [(MFMailComposeController *)self _isTabKeyCommandInvocationPossible];
    goto LABEL_13;
  }

  if (sel__replyAllCommandInvoked_ == action)
  {
    v10 = [(MFMailComposeController *)self composeType]== 4;
  }

  else
  {
    if (sel__replyCommandInvoked_ != action)
    {
      if (sel_close_ == action)
      {
        canShowAttachmentPicker = [(UIBarButtonItem *)self->_closeButtonItem isEnabled];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = MFMailComposeController;
        canShowAttachmentPicker = [(MFMailComposeController *)&v11 canPerformAction:action withSender:senderCopy];
      }

      goto LABEL_13;
    }

    v10 = [(MFMailComposeController *)self composeType]== 5;
  }

  v7 = v10;
LABEL_14:

  return v7;
}

- (BOOL)isVerticallyCompact
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  v3 = [traitCollection verticalSizeClass] == 1;

  return v3;
}

- (int64_t)popoverPresentationStyleForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  firstObject = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [controllerCopy viewControllers];
    firstObject = [viewControllers firstObject];
  }

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  searchViewController = [mailComposeView searchViewController];
  v9 = searchViewController;
  if (firstObject == searchViewController)
  {

    goto LABEL_7;
  }

  peoplePicker = [(MFMailComposeController *)self peoplePicker];

  if (firstObject == peoplePicker)
  {
LABEL_7:
    v11 = -1;
    goto LABEL_8;
  }

  v11 = 3;
LABEL_8:

  return v11;
}

- (void)_dismissPeoplePicker:(id)picker
{
  pickerCopy = picker;
  peoplePicker = [(MFMailComposeController *)self peoplePicker];

  if (peoplePicker)
  {
    peoplePicker2 = [(MFMailComposeController *)self peoplePicker];
    presentedViewController = [(MFMailComposeController *)self presentedViewController];

    if (peoplePicker2 == presentedViewController)
    {
      popoverPresentationController = [pickerCopy popoverPresentationController];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__MFMailComposeController__dismissPeoplePicker___block_invoke;
      v14[3] = &unk_1E806C570;
      v9 = popoverPresentationController;
      v15 = v9;
      [(MFMailComposeController *)self dismissViewControllerAnimated:1 completion:v14];
      traitCollection = [(MFMailComposeController *)self traitCollection];
      mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

      if ((mf_supportsPopoverPresentation & 1) == 0)
      {
        mailComposeView = [(MFMailComposeController *)self mailComposeView];
        [mailComposeView restoreFirstResponderWithKeyboardPinning:1];
      }
    }
  }

  [(MFMailComposeController *)self setPeoplePicker:0];
  mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView2 setShowingPeoplePicker:0];
}

void __48__MFMailComposeController__dismissPeoplePicker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 delegate];
    [v3 presentationControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  v8 = [emailAddresses objectAtIndex:0];
  value = [v8 value];

  v10 = [objc_alloc(MEMORY[0x1E6996400]) initWithContact:contactCopy address:value kind:0];
  v11 = v10;
  if ((*(self + 1376) & 0x10) == 0)
  {
    [(MFMailComposeRecipientTextView *)self->_lastFocusedRecipientView addRecipient:v10];
    goto LABEL_12;
  }

  recipientFieldWhileViewUnloaded = self->_recipientFieldWhileViewUnloaded;
  switch(recipientFieldWhileViewUnloaded)
  {
    case 3:
      v13 = 1032;
      bccAddresses = self->_bccAddresses;
      if (!bccAddresses)
      {
        break;
      }

      goto LABEL_11;
    case 2:
      v13 = 1024;
      bccAddresses = self->_ccAddresses;
      if (!bccAddresses)
      {
        break;
      }

      goto LABEL_11;
    case 1:
      v13 = 1016;
      bccAddresses = self->_toAddresses;
      if (bccAddresses)
      {
LABEL_11:
        commentedAddress = [v10 commentedAddress];
        v16 = [(NSArray *)bccAddresses arrayByAddingObject:commentedAddress];
        v17 = *(&self->super.super.super.isa + v13);
        *(&self->super.super.super.isa + v13) = v16;
      }

      break;
  }

LABEL_12:
  [(MFMailComposeController *)self composeRecipientViewDidFinishPickingRecipient:self->_lastFocusedRecipientView];
  [(MFMailComposeController *)self _dismissPeoplePicker:pickerCopy];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  value = [propertyCopy value];
  v8 = objc_alloc(MEMORY[0x1E6996400]);
  contact = [propertyCopy contact];
  v10 = [v8 initWithContact:contact address:value kind:0];

  [(MFMailComposeRecipientTextView *)self->_lastFocusedRecipientView addRecipient:v10];
  [(MFMailComposeController *)self _dismissPeoplePicker:pickerCopy];
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  controllerCopy = controller;
  propertyCopy = property;
  v8 = [propertyCopy key];
  if (![v8 isEqualToString:*MEMORY[0x1E695C208]])
  {
    recipientPresentingCard = v8;
LABEL_13:

    goto LABEL_14;
  }

  recipientPresentingCard = [(MFMailComposeController *)self recipientPresentingCard];

  if (recipientPresentingCard)
  {
    contact = [recipientPresentingCard contact];
    if (!contact || ([propertyCopy contact], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(contact, "isEqual:", v11), v11, (v12 & 1) == 0))
    {
      address = [recipientPresentingCard address];
      if (contact)
      {
        value = [propertyCopy value];
        [recipientPresentingCard setAddress:value];
      }

      else
      {
        value = [propertyCopy contact];
        [recipientPresentingCard setContact:value];
      }

      *(self + 1376) |= 1u;
      v14 = [propertyCopy key];
      identifier = [propertyCopy identifier];
      [controllerCopy highlightPropertyWithKey:v14 identifier:identifier];

      address2 = [recipientPresentingCard address];
      if (([address isEqualToString:address2] & 1) == 0)
      {
        secureCompositionManager = self->_secureCompositionManager;
        v18 = [MEMORY[0x1E695DFD8] setWithObject:address];
        [(MFSecureMIMECompositionManager *)secureCompositionManager removeRecipients:v18];

        v19 = self->_secureCompositionManager;
        v20 = [MEMORY[0x1E695DFD8] setWithObject:address2];
        [(MFSecureMIMECompositionManager *)v19 addRecipients:v20];
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return 0;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  if (contact)
  {
    [(MFMailComposeController *)self _dismissPersonCard];
  }
}

- (void)_dismissPersonCard
{
  [(MFMailComposeController *)self setRecipientPresentingCard:0];
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView cancelDelayedPopover];

    [(MFMailComposeController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(MFMailComposeController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView didRotateFromInterfaceOrientation:orientation];
}

- (void)_getRotationContentSettings:(id *)settings
{
  if (([MEMORY[0x1E69DC938] mf_isPadIdiom] & 1) == 0)
  {
    *&settings->var0 = 257;
    settings->var2 = 1;
    settings->var5 = 1.0;
  }
}

- (id)_sheetDetentForIdentifier:(id)identifier viewController:(id)controller
{
  controllerCopy = controller;
  v6 = MEMORY[0x1E69DCF58];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__MFMailComposeController__sheetDetentForIdentifier_viewController___block_invoke;
  v10[3] = &unk_1E806EB10;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = [v6 customDetentWithIdentifier:identifier resolver:v10];

  return v8;
}

double __68__MFMailComposeController__sheetDetentForIdentifier_viewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 containerTraitCollection];
  [v2 preferredHeightForTraitCollection:v3];
  v5 = v4;

  return v5;
}

- (void)composeSubjectViewTextFieldDidResignFirstResponder:(id)responder
{
  if (self->_subjectField == responder)
  {
    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
  }
}

- (void)composeSubjectViewTextFieldDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  if (self->_subjectField == responderCopy)
  {
    v6 = responderCopy;
    [(MFMailComposeController *)self _dismissPresentedHalfSheet];
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView viewDidBecomeFirstResponder:v6];

    responderCopy = v6;
  }
}

- (void)composeHeaderViewDidChangeValue:(id)value
{
  if (self->_subjectField == value)
  {
    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
    composeCoordinator = [(MFMailComposeController *)self composeCoordinator];
    text = [(MFComposeSubjectView *)self->_subjectField text];
    [composeCoordinator setSubject:text];
  }
}

- (void)composeHeaderViewDidConfirmValue:(id)value
{
  if (self->_subjectField == value)
  {
    [(MFMailComposeController *)self _updateNavigationBarTitleAnimated:0];
    if (self->_currentKeyModifierFlags == 0x20000)
    {
      bccField = self->_bccField;

      [(MFMailComposeRecipientTextView *)bccField becomeFirstResponder];
    }

    else
    {
      composeWebView = [(MFMailComposeController *)self composeWebView];
      [composeWebView becomeFirstResponder];
    }
  }
}

- (void)composeSubjectViewWillRemoveContent:(id)content
{
  if (self->_subjectField == content)
  {
    [MFComposeTypeFactory hijackThreadFromDelegate:self];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  self->_currentKeyModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  self->_currentKeyModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  self->_currentKeyModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  self->_currentKeyModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = MFMailComposeController;
  [(MFMailComposeController *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)_showOriginalAttachmentsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(_MFMailCompositionContext *)self->_compositionContext includeAttachmentsWhenAdding]&& [(MFMailComposeController *)self _shouldRestoreAttachments:necessaryCopy])
  {
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView showOriginalAttachments];
  }
}

- (BOOL)_shouldRestoreAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  if ([(MFMailComposeController *)self composeType]== 4 || [(MFMailComposeController *)self composeType]== 5)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self->_toAddresses, self->_bccAddresses, self->_ccAddresses, 0}];
    ef_flatten = [v5 ef_flatten];
    v7 = [ef_flatten ef_map:&__block_literal_global_1108];

    address = [attachmentsCopy address];
    emailAddressValue = [address emailAddressValue];
    v10 = emailAddressValue;
    if (emailAddressValue)
    {
      displayName = [emailAddressValue displayName];
      emailAddressValue2 = [displayName emailAddressValue];

      if (emailAddressValue2 && ([emailAddressValue2 stringValue], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "simpleAddress"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15 & 1) == 0))
      {
        simpleAddress = [v10 simpleAddress];
      }

      else
      {
        simpleAddress = [v10 stringValue];
      }

      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [address stringValue];
    }

    v18 = [v7 containsObject:stringValue] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

id __53__MFMailComposeController__shouldRestoreAttachments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  v36 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  recipientCopy = recipient;
  secureCompositionManager = self->_secureCompositionManager;
  v9 = MEMORY[0x1E695DFD8];
  address = [recipientCopy address];
  v11 = [v9 setWithObject:address];
  [(MFSecureMIMECompositionManager *)secureCompositionManager addRecipients:v11];

  if (self->_initializedRecipients)
  {
    [(MFMailComposeController *)self _showOriginalAttachmentsIfNecessary:recipientCopy];
  }

  if ([(MFMailComposeController *)self sourceAccountManagement]!= 2 && [(_MFMailCompositionContext *)self->_compositionContext isUsingDefaultAccount]&& self->_toField == viewCopy)
  {
    recipients = [(CNComposeRecipientTextView *)viewCopy recipients];
    v13 = [recipients count];

    v14 = objc_alloc(MEMORY[0x1E699B240]);
    preferredSendingAddress = [recipientCopy preferredSendingAddress];
    v16 = [v14 initWithString:preferredSendingAddress];
    simpleAddress = [v16 simpleAddress];

    if (v13 == 1 && simpleAddress)
    {
      v18 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
      simpleAddress2 = [v18 simpleAddress];

      v20 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_originalSendingEmailAddress];
      simpleAddress3 = [v20 simpleAddress];
      v22 = [simpleAddress2 compare:simpleAddress3];

      if (!v22 && [simpleAddress2 compare:simpleAddress])
      {
        sendingEmailAddress = [(MFMailComposeController *)self sendingEmailAddress];
        if ([(MFMailComposeController *)self _setSendingEmailAddress:simpleAddress])
        {
          v24 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
          v25 = MFLogGeneral();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v31 = v24;
            v26 = [v24 stringFromEmailAddressConvertible:sendingEmailAddress];
            v27 = [v24 stringFromEmailAddressConvertible:simpleAddress];
            *buf = 138543618;
            v33 = v26;
            v34 = 2114;
            v35 = v27;
            _os_log_impl(&dword_1BE819000, v25, OS_LOG_TYPE_INFO, "Setting to preferred sending account base on recipient from %{public}@ to %{public}@", buf, 0x16u);

            v24 = v31;
          }

          [(MFMailComposeController *)self _updateAutoBccSendingAddress:sendingEmailAddress withNewSendingAddress:simpleAddress alwaysAdd:0];
          mailComposeView = [(MFMailComposeController *)self mailComposeView];
          multiField = [mailComposeView multiField];
          [multiField setAccountAutoselected:1];
        }
      }
    }
  }

  if (self->_toField == viewCopy)
  {
    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 findCorecipientsWithRecipientView:self->_toField];
  }

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)self _updateSMIMEStatusControl];
  }

  else
  {
    [(MFMailComposeController *)self _updateSMIMEButtonEnabledForRecipientCount];
  }
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  viewCopy = view;
  address = [recipient address];
  if (![(MFMailComposeController *)self _anyRecipientViewContainsAddress:address])
  {
    secureCompositionManager = self->_secureCompositionManager;
    v8 = [MEMORY[0x1E695DFD8] setWithObject:address];
    [(MFSecureMIMECompositionManager *)secureCompositionManager removeRecipients:v8];
  }

  if (self->_toField == viewCopy)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView findCorecipientsWithRecipientView:self->_toField];
  }

  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)self _updateSMIMEStatusControl];
  }

  else
  {
    [(MFMailComposeController *)self _updateSMIMEButtonEnabledForRecipientCount];
  }

  [(MFMailComposeController *)self _recipientTextChangedForHME];
}

- (void)composeRecipientView:(id)view didReplaceRecipients:(id)recipients withRecipients:(id)withRecipients
{
  v32 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  withRecipientsCopy = withRecipients;
  v21 = recipientsCopy;
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(withRecipientsCopy, "count")}];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = withRecipientsCopy;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        address = [*(*(&v26 + 1) + 8 * v14) address];
        [v9 addObject:address];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v21;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        address2 = [*(*(&v22 + 1) + 8 * v19) address];
        if (([v9 containsObject:address2] & 1) == 0 && !-[MFMailComposeController _anyRecipientViewContainsAddress:](self, "_anyRecipientViewContainsAddress:", address2))
        {
          [v10 addObject:address2];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager removeRecipients:v10];
  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager addRecipients:v9];
  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)self _updateSMIMEStatusControl];
  }

  else
  {
    [(MFMailComposeController *)self _updateSMIMEButtonEnabledForRecipientCount];
  }

  [(MFMailComposeController *)self _recipientTextChangedForHME];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  viewCopy = view;
  addressCopy = address;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView clearSearchForRecipientView:viewCopy reflow:0 clear:1];
  if ([addressCopy length])
  {
    [mailComposeView didIgnoreSearchResults];
    [mailComposeView setChangingRecipients:1];
    [viewCopy addAddress:addressCopy];
    [mailComposeView setChangingRecipients:0];
  }
}

- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom
{
  viewCopy = view;
  atomCopy = atom;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  recipient = [atomCopy recipient];
  [mailComposeView disambiguateRecipient:recipient recipientView:viewCopy];
}

- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients
{
  v4 = [(MFMailComposeController *)self mailComposeView:view];
  [v4 dismissSearchResultsIfDisambiguating];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView layoutForChangedComposeHeaderView:viewCopy size:{width, height}];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  textView = [viewCopy textView];
  isFirstResponder = [textView isFirstResponder];
  if ((([changeCopy length] != 0) & isFirstResponder) == 1 && (objc_msgSend(mailComposeView, "isShowingPeoplePicker") & 1) == 0)
  {
    [mailComposeView beginSearchForText:changeCopy recipientView:viewCopy];
  }

  else
  {
    [mailComposeView clearSearchForActiveRecipientView];
  }

  [(MFMailComposeController *)self _draftContentDidChange];
  [(MFMailComposeController *)self _invalidateInputContextHistory];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v34[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  addButton = [recipientCopy addButton];
  v7 = [objc_alloc(MEMORY[0x1E695D120]) initWithNibName:0 bundle:0];
  v34[0] = *MEMORY[0x1E695C208];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [v7 setDisplayedPropertyKeys:v8];

  [v7 setDelegate:self];
  [v7 setHidesPromptInLandscape:1];
  [v7 setAllowsEditing:0];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"emailAddresses.@count > 0"];
  [v7 setPredicateForEnablingContact:v9];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"emailAddresses.@count == 1"];
  [v7 setPredicateForSelectionOfContact:v10];

  if (([MEMORY[0x1E69DC938] mf_isPadIdiom] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"SELECT_CONTACT" value:&stru_1F3CF3758 table:@"Main"];
    [v7 setPrompt:v12];
  }

  if (!-[MFMailComposeController _allowsAutorotation](self, "_allowsAutorotation") || (-[MFMailComposeController navigationController](self, "navigationController"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 _allowsAutorotation], v13, (v14 & 1) == 0))
  {
    [v7 _setAllowsAutorotation:0];
  }

  [(MFMailComposeController *)self setPeoplePicker:v7];
  [mailComposeView setShowingPeoplePicker:1];
  text = [recipientCopy text];
  [(MFMailComposeController *)self composeRecipientView:recipientCopy didFinishEnteringAddress:text];

  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 saveFirstResponderWithKeyboardPinning:1];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v19 = 4;
    }

    else
    {
      v19 = 8;
    }

    peoplePicker = [(MFMailComposeController *)self peoplePicker];
    [peoplePicker setModalPresentationStyle:7];

    peoplePicker2 = [(MFMailComposeController *)self peoplePicker];
    popoverPresentationController = [peoplePicker2 popoverPresentationController];

    [popoverPresentationController setSourceView:addButton];
    [addButton bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:v19];
    [popoverPresentationController setDelegate:self];
  }

  else
  {
    presentationController = [v7 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentationController2 = [v7 presentationController];
      [presentationController2 setPrefersGrabberVisible:1];
    }

    popoverPresentationController = [(MFMailComposeController *)self mailComposeView];
    [popoverPresentationController saveFirstResponderWithKeyboardPinning:0];
  }

  if (MFIsMobileMail())
  {
    peoplePicker3 = [(MFMailComposeController *)self peoplePicker];
    view = [peoplePicker3 view];
    [view _setContinuousCornerRadius:10.0];

    peoplePicker4 = [(MFMailComposeController *)self peoplePicker];
    view2 = [peoplePicker4 view];
    [view2 setClipsToBounds:1];

    peoplePicker5 = [(MFMailComposeController *)self peoplePicker];
    view3 = [peoplePicker5 view];
    layer = [view3 layer];
    [layer setMaskedCorners:3];
  }

  peoplePicker6 = [(MFMailComposeController *)self peoplePicker];
  [(MFMailComposeController *)self presentViewController:peoplePicker6 animated:1 completion:0];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setShowingPeoplePicker:0];

  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if ((mf_supportsPopoverPresentation & 1) == 0)
  {
    [(MFMailComposeController *)self dismissViewControllerAnimated:1 completion:0];
    v7 = [(MFMailComposeController *)self setPeoplePicker:0];

    MEMORY[0x1EEE4DF38](v7);
  }
}

- (unint64_t)presentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  _hasEncryptionIdentityError = [(MFMailComposeController *)self _hasEncryptionIdentityError];
  _defaultAtomPresentationOptions = [(MFMailComposeController *)self _defaultAtomPresentationOptions];
  address = [recipientCopy address];
  emailAddressValue = [address emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];

  v24 = _defaultAtomPresentationOptions;
  if (!_hasEncryptionIdentityError)
  {
    certificatesByRecipient = [(MFMailComposeController *)self certificatesByRecipient];
    v11 = [certificatesByRecipient objectForKey:address];
    if (v11)
    {

LABEL_4:
      _defaultAtomPresentationOptions = 128;
LABEL_5:
      v24 = _defaultAtomPresentationOptions;
      goto LABEL_6;
    }

    if (simpleAddress)
    {
      certificatesByRecipient2 = [(MFMailComposeController *)self certificatesByRecipient];
      v19 = [certificatesByRecipient2 objectForKey:simpleAddress];

      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    errorsByRecipient = [(MFMailComposeController *)self errorsByRecipient];
    v21 = [errorsByRecipient objectForKey:address];
    if (v21)
    {

LABEL_19:
      _defaultAtomPresentationOptions = 65;
      goto LABEL_5;
    }

    if (simpleAddress)
    {
      errorsByRecipient2 = [(MFMailComposeController *)self errorsByRecipient];
      v23 = [errorsByRecipient2 objectForKey:simpleAddress];

      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

LABEL_6:
  address2 = [recipientCopy address];
  HasSafeDomain = MFAddressHasSafeDomain(address2);

  if ((HasSafeDomain & 1) == 0)
  {
    _defaultAtomPresentationOptions |= 1uLL;
    v24 = _defaultAtomPresentationOptions;
  }

  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  if ([currentDevice isInternal])
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v16 = [em_userDefaults BOOLForKey:@"PresentationOptionsEncodedIntoAddress"];

    if (v16)
    {
      [MEMORY[0x1E6996398] presentationOptions:&v24 encodedIntoAddress:simpleAddress];
      _defaultAtomPresentationOptions = v24;
    }
  }

  else
  {
  }

  return _defaultAtomPresentationOptions;
}

- (void)_setLastFocusedRecipientView:(id)view
{
  viewCopy = view;
  lastFocusedRecipientView = self->_lastFocusedRecipientView;
  v8 = viewCopy;
  if (lastFocusedRecipientView != viewCopy)
  {
    [(CNComposeRecipientTextView *)lastFocusedRecipientView setExpanded:0];
    [(CNComposeRecipientTextView *)self->_lastFocusedRecipientView setShowsAddButtonWhenExpanded:0];
    [(CNComposeRecipientTextView *)v8 setExpanded:1];
    composeCoordinator = [(MFMailComposeController *)self composeCoordinator];
    [(CNComposeRecipientTextView *)v8 setShowsAddButtonWhenExpanded:composeCoordinator == 0];

    objc_storeStrong(&self->_lastFocusedRecipientView, view);
  }
}

- (void)recipientViewDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  [(MFMailComposeController *)self _setLastFocusedRecipientView:?];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setRecipientFieldsEditable:1 animated:1];
}

- (void)recipientViewDidResignFirstResponder:(id)responder
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  if (([mailComposeView isShowingPeoplePicker] & 1) == 0)
  {
    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 setRecipientFieldsEditable:0 animated:1];
  }
}

- (id)nextResponderForRecipientView:(id)view
{
  view = [(MFMailComposeController *)self view];

  return view;
}

- (void)composeRecipientViewTabPressed:(id)pressed
{
  pressedCopy = pressed;
  if (self->_currentKeyModifierFlags == 0x20000)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView focusFirstResponderBeforeRecipientView:pressedCopy];
  }

  else
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView focusFirstResponderAfterRecipientView:pressedCopy];
  }
}

- (void)composeRecipientViewReturnPressed:(id)pressed
{
  pressedCopy = pressed;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView focusFirstResponderAfterRecipientView:pressedCopy];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  [(MFMailComposeController *)self _dismissPresentedHalfSheet];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView viewDidBecomeFirstResponder:responderCopy];
}

- (void)composeRecipientView:(id)view showPersonCardForAtom:(id)atom
{
  viewCopy = view;
  atomCopy = atom;
  v7 = atomCopy;
  if (atomCopy)
  {
    recipient = [atomCopy recipient];
    v9 = [(MFMailComposeController *)self _contactViewControllerForRecipient:recipient];
    contentViewController = [v9 contentViewController];
    [contentViewController setContactDelegate:self];

    labeledValueIdentifier = [recipient labeledValueIdentifier];
    [v9 highlightPropertyWithKey:*MEMORY[0x1E695C208] identifier:labeledValueIdentifier];

    [(MFMailComposeController *)self setContactViewController:v9];
    if (v9)
    {
      navTitle = [viewCopy navTitle];
      [v9 setTitle:navTitle];

      [v9 setHidesBottomBarWhenPushed:1];
      [(MFMailComposeController *)self setRecipientPresentingCard:recipient];
      [(MFMailComposeController *)self _updatePersonCard];
      traitCollection = [(MFMailComposeController *)self traitCollection];
      mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

      if (mf_supportsPopoverPresentation)
      {
        navigationController = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
        [navigationController setModalPresentationStyle:7];
        if (!-[MFMailComposeController _allowsAutorotation](self, "_allowsAutorotation") || (-[MFMailComposeController navigationController](self, "navigationController"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 _allowsAutorotation], v16, (v17 & 1) == 0))
        {
          [navigationController _setAllowsAutorotation:0];
        }

        popoverPresentationController = [navigationController popoverPresentationController];
        [popoverPresentationController setSourceView:v7];
        [(MFMailComposeController *)self presentViewController:navigationController animated:1 completion:0];
      }

      else
      {
        mailComposeView = [(MFMailComposeController *)self mailComposeView];
        [mailComposeView saveFirstResponderWithKeyboardPinning:0];

        navigationController = [(MFMailComposeController *)self navigationController];
        [navigationController pushViewController:v9 animated:1];
      }
    }
  }
}

- (void)_removeRecent
{
  recipientPresentingCard = [(MFMailComposeController *)self recipientPresentingCard];
  if (recipientPresentingCard)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    searchController = [mailComposeView searchController];
    [searchController removeRecipient:recipientPresentingCard];

    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 invalidateSearchResultRecipient:recipientPresentingCard];

    [(MFMailComposeController *)self _dismissPersonCard];
  }
}

- (id)_contactViewControllerForRecipient:(id)recipient
{
  recipientCopy = recipient;
  contact = [recipientCopy contact];
  if (!contact)
  {
    displayString = [recipientCopy displayString];
    ec_personNameComponents = [displayString ec_personNameComponents];

    v8 = MEMORY[0x1E695CD58];
    uncommentedAddress = [recipientCopy uncommentedAddress];
    contact = [v8 em_contactWithPersonNameComponents:ec_personNameComponents emailAddress:uncommentedAddress emailAddressLabel:0 allowInvalidEmailAddress:1];
  }

  if ([contact isUnknown])
  {
    [MEMORY[0x1E695D148] viewControllerForUnknownContact:contact];
  }

  else
  {
    [MEMORY[0x1E695D148] viewControllerForContact:contact];
  }
  v10 = ;
  v11 = [MEMORY[0x1E695CE18] storeWithOptions:3];
  [v10 setContactStore:v11];

  [v10 setDelegate:self];

  return v10;
}

- (void)_showPersonCardForRecipient:(id)recipient showDeleteButton:(BOOL)button
{
  recipientCopy = recipient;
  v6 = [(MFMailComposeController *)self _contactViewControllerForRecipient:?];
  contact = [v6 contact];
  isSuggested = [contact isSuggested];

  if (!(isSuggested & 1 | !button))
  {
    contentViewController = [v6 contentViewController];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"REMOVE_RECENT" value:&stru_1F3CF3758 table:@"Main"];
    cardFooterGroup = [contentViewController cardFooterGroup];
    [contentViewController addActionWithTitle:v11 target:self selector:sel__removeRecent inGroup:cardFooterGroup destructive:1];
  }

  [(MFMailComposeController *)self setContactViewController:v6];
  [(MFMailComposeController *)self setRecipientPresentingCard:recipientCopy];
  [(MFMailComposeController *)self _updatePersonCard];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView saveFirstResponderWithKeyboardPinning:0];

  navigationControllerForRecentPersonCard = [(MFMailComposeController *)self navigationControllerForRecentPersonCard];
  [navigationControllerForRecentPersonCard pushViewController:v6 animated:1];
}

- (void)composeRecipientView:(id)view showPersonCardForRecipient:(id)recipient
{
  recipientCopy = recipient;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView saveFirstResponderWithKeyboardPinning:0];

  if ([recipientCopy isGroup])
  {
    v6 = objc_alloc_init(MEMORY[0x1E69963A8]);
    [v6 setGroup:recipientCopy];
    [v6 setDelegate:self];
    navigationControllerForRecentPersonCard = [(MFMailComposeController *)self navigationControllerForRecentPersonCard];
    [navigationControllerForRecentPersonCard pushViewController:v6 animated:1];

    [(MFMailComposeController *)self setRecipientPresentingCard:recipientCopy];
  }

  else
  {
    -[MFMailComposeController _showPersonCardForRecipient:showDeleteButton:](self, "_showPersonCardForRecipient:showDeleteButton:", recipientCopy, [recipientCopy isRemovableFromSearchResults]);
  }
}

- (BOOL)isShowingRecentPersonCard
{
  v14 = *MEMORY[0x1E69E9840];
  navigationControllerForRecentPersonCard = [(MFMailComposeController *)self navigationControllerForRecentPersonCard];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  viewControllers = [navigationControllerForRecentPersonCard viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v7 = 1;
        goto LABEL_13;
      }

      v4 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (id)navigationControllerForRecentPersonCard
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    presentedViewController = [(MFMailComposeController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController2 = [(MFMailComposeController *)self presentedViewController];
    }

    else
    {
      presentedViewController2 = 0;
    }
  }

  else
  {
    presentedViewController2 = [(MFMailComposeController *)self navigationController];
  }

  return presentedViewController2;
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = [objc_alloc(MEMORY[0x1E6996400]) initWithContact:0 address:addressCopy kind:0];

  return v5;
}

- (id)composeRecipientView:(id)view composeRecipientForContact:(id)contact
{
  contactCopy = contact;
  v5 = [objc_alloc(MEMORY[0x1E6996400]) initWithContact:contactCopy address:0 kind:0];

  return v5;
}

- (BOOL)composeRecipientViewShowingSearchResults:(id)results
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isSearching = [mailComposeView isSearching];

  return isSearching;
}

- (BOOL)presentSearchResultsForComposeRecipientView:(id)view
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  presentSearchResults = [mailComposeView presentSearchResults];

  return presentSearchResults;
}

- (void)dismissSearchResultsForComposeRecipientView:(id)view
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView dismissSearchResults];
}

- (void)selectNextSearchResultForComposeRecipientView:(id)view
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView selectNextSearchResult];
}

- (void)selectPreviousSearchResultForComposeRecipientView:(id)view
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView selectPreviousSearchResult];
}

- (BOOL)chooseSelectedSearchResultForComposeRecipientView:(id)view
{
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  chooseSelectedSearchResult = [mailComposeView chooseSelectedSearchResult];

  return chooseSelectedSearchResult;
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  v22 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  searchViewController = [mailComposeView searchViewController];
  recipients = [searchViewController recipients];

  v9 = [recipients countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(recipients);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      contact = [v12 contact];
      v14 = [contact isEqual:contactCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [recipients countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_13;
    }

    mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView2 invalidateSearchResultRecipient:v15];
  }

  else
  {
LABEL_9:
    v15 = recipients;
  }

LABEL_13:
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  recipientPresentingCard = [(MFMailComposeController *)self recipientPresentingCard];
  if ([keyCopy isEqualToString:*MEMORY[0x1E695C208]])
  {
    labeledValueIdentifier = [recipientPresentingCard labeledValueIdentifier];
    v14 = [identifierCopy isEqualToString:labeledValueIdentifier];

    if ((v14 & 1) == 0)
    {
      emailAddresses = [contactCopy emailAddresses];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __117__MFMailComposeController_contactViewController_shouldPerformDefaultActionForContact_propertyKey_propertyIdentifier___block_invoke;
      v28[3] = &unk_1E806F3F0;
      v29 = identifierCopy;
      v27 = [emailAddresses ef_firstObjectPassingTest:v28];

      secureCompositionManager = self->_secureCompositionManager;
      v17 = MEMORY[0x1E695DFD8];
      address = [recipientPresentingCard address];
      v19 = [v17 setWithObject:address];
      v20 = [v17 setWithObject:v19];
      [(MFSecureMIMECompositionManager *)secureCompositionManager removeRecipients:v20];

      value = [v27 value];
      [recipientPresentingCard setAddress:value];

      v22 = self->_secureCompositionManager;
      v23 = MEMORY[0x1E695DFD8];
      address2 = [recipientPresentingCard address];
      v25 = [v23 setWithObject:address2];
      [(MFSecureMIMECompositionManager *)v22 addRecipients:v25];

      [(MFMailComposeController *)self _resetSecureCompositionManager];
      if (contactCopy)
      {
        [(MFMailComposeController *)self _dismissPersonCard];
      }
    }
  }

  return 1;
}

uint64_t __117__MFMailComposeController_contactViewController_shouldPerformDefaultActionForContact_propertyKey_propertyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)autocompleteGroupDetailViewController:(id)controller didAskToRemoveGroup:(id)group
{
  groupCopy = group;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  searchController = [mailComposeView searchController];
  [searchController removeRecipient:groupCopy];

  mailComposeView2 = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView2 invalidateSearchResultRecipient:groupCopy];
}

- (void)autocompleteGroupDetailViewControllerDidCancel:(id)cancel
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if ((mf_supportsPopoverPresentation & 1) == 0)
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    [mailComposeView restoreFirstResponderWithKeyboardPinning:1];
  }
}

- (void)_presentModalAlert:(id)alert fromPresentationSource:(id)source
{
  alertCopy = alert;
  sourceCopy = source;
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  [(MFMailComposeController *)self _dismissPresentedViewController];
  if (MFSolariumFeatureEnabled())
  {
    popoverPresentationController = [alertCopy popoverPresentationController];
    [popoverPresentationController setSourceItem:sourceCopy];
  }

  [(MFMailComposeController *)self presentViewController:alertCopy animated:1 completion:0];
}

- (void)_finishModalAlertClosingComposition:(BOOL)composition
{
  compositionCopy = composition;
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setSending:0];
  quickReplyDelegate = [(MFMailComposeController *)self quickReplyDelegate];
  [quickReplyDelegate mailComposeController:self isSending:0];

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  hideMyEmailAddressIfExists = [(MFMailComposeController *)self hideMyEmailAddressIfExists];

  if (hideMyEmailAddressIfExists)
  {
    hideMyEmailAddressIfExists2 = [(MFMailComposeController *)self hideMyEmailAddressIfExists];
    sendingEmailAddress = self->_sendingEmailAddress;
    self->_sendingEmailAddress = hideMyEmailAddressIfExists2;
  }

  if (compositionCopy)
  {
    if (self->_composeWebViewFlags.respondsToCompositionWillFinish)
    {
      composeWebView = [(MFMailComposeController *)self composeWebView];
      [composeWebView compositionWillFinish];
    }

    if (self->_resolution == 2)
    {
      [(MFMailComposeController *)self setHeadersForDraft];
      [(MFMailComposeController *)self _setUpDraftForHME];
    }

    [(MFMailComposeController *)self close];
  }

  else
  {
    [mailComposeView restoreFirstResponder];
  }
}

- (void)_displayPopoverAlert:(id)alert
{
  alertCopy = alert;
  [(MFMailComposeController *)self setPopoverAlert:?];
  [alertCopy setModalPresentationStyle:7];
  popoverPresentationController = [alertCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setBarButtonItem:self->_closeButtonItem];
  [popoverPresentationController setPermittedArrowDirections:3];
  [(MFMailComposeController *)self _dismissPresentedViewController];
  [(MFMailComposeController *)self presentViewController:alertCopy animated:1 completion:0];
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  [mailComposeView setKeyboardVisible:0 animate:1];
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

- (void)finishPopoverAlertClosingComposition:(BOOL)composition
{
  compositionCopy = composition;
  [(MFMailComposeController *)self setPopoverAlert:0];

  [(MFMailComposeController *)self _finishModalAlertClosingComposition:compositionCopy];
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  presentedViewController = [controller presentedViewController];
  if (presentedViewController == self->_photosPickerController)
  {
    v13 = presentedViewController;
    *view = self->_composeWebView;
    [(MFMailComposeController *)self _optimalRectForPresentingPopoverInComposeWebView];
    rect->origin.x = v9;
    rect->origin.y = v10;
    rect->size.width = v11;
    rect->size.height = v12;
    presentedViewController = v13;
  }
}

- (void)_resetSecureCompositionManagerUsingNewAccount:(BOOL)account
{
  accountCopy = account;
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
  simpleAddress = [v5 simpleAddress];

  accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
  selfCopy = self;
  v7 = [accountProxyGenerator accountProxyContainingEmailAddress:simpleAddress includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
  mailAccount = [v7 mailAccount];

  v28 = mailAccount;
  if (mailAccount)
  {
    v9 = [mailAccount secureCompositionSigningPolicyForAddress:simpleAddress];
    if (accountCopy && self->_originalMessageWasEncrypted && self->_encryptionOverrideSetting)
    {
      encryptionOverrideSetting = 1;
    }

    else if ([mailAccount perMessageEncryptionEnabledForAddress:{simpleAddress, mailAccount}])
    {
      if (accountCopy)
      {
        encryptionOverrideSetting = [v28 secureCompositionEncryptionPolicyForAddress:simpleAddress];
        self->_encryptionOverrideSetting = encryptionOverrideSetting != 0;
      }

      else
      {
        encryptionOverrideSetting = self->_encryptionOverrideSetting;
      }
    }

    else
    {
      encryptionOverrideSetting = [v28 secureCompositionEncryptionPolicyForAddress:simpleAddress];
    }
  }

  else
  {
    encryptionOverrideSetting = 0;
    v9 = 0;
  }

  secureCompositionManager = self->_secureCompositionManager;
  if (secureCompositionManager)
  {
    sendingAccount = [(MFSecureMIMECompositionManager *)secureCompositionManager sendingAccount];
    if (sendingAccount == v28 && [(MFSecureMIMECompositionManager *)self->_secureCompositionManager signingPolicy]== v9 && [(MFSecureMIMECompositionManager *)self->_secureCompositionManager encryptionPolicy]== encryptionOverrideSetting)
    {
      sendingAddress = [(MFSecureMIMECompositionManager *)self->_secureCompositionManager sendingAddress];
      v14 = [sendingAddress isEqualToString:simpleAddress];

      if (v14)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }
  }

  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager invalidate];
  v15 = [objc_alloc(MEMORY[0x1E69B1690]) initWithSendingAccount:v28 signingPolicy:v9 encryptionPolicy:encryptionOverrideSetting];
  v16 = self->_secureCompositionManager;
  self->_secureCompositionManager = v15;

  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager setDelegate:self];
  [(MFMailComposeController *)self setCertificatesByRecipient:0];
  [(MFMailComposeController *)self setErrorsByRecipient:0];
  [(MFMailComposeController *)self setAddressForMissingIdentity:0];
  self->_signingIdentityStatus = v9 != 0;
  self->_encryptionIdentityStatus = encryptionOverrideSetting != 0;
  self->_encryptionStatusIsKnown = encryptionOverrideSetting == 0;
  [(MFSecureMIMECompositionManager *)self->_secureCompositionManager setSendingAddress:simpleAddress];
  v17 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(MFMailComposeController *)self _allRecipientViews];
  v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v18)
  {
    v32 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        recipients = [v20 recipients];
        v22 = [recipients countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v22)
        {
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(recipients);
              }

              address = [*(*(&v33 + 1) + 8 * j) address];
              emailAddressValue = [address emailAddressValue];
              simpleAddress2 = [emailAddressValue simpleAddress];
              [v17 ef_addOptionalObject:simpleAddress2];
            }

            v22 = [recipients countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v22);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v18);
  }

  [(MFSecureMIMECompositionManager *)selfCopy->_secureCompositionManager addRecipients:v17];
  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)selfCopy _updateSMIMEStatusControl];
  }

  else
  {
    [(MFMailComposeController *)selfCopy _updateSMIMEButtonEnabledForRecipientCount];
    [(MFMailComposeController *)selfCopy _updateSMIMEButtonForEncryptionStatus:[(MFSecureMIMECompositionManager *)selfCopy->_secureCompositionManager encryptionStatus]];
  }

  [(MFMailComposeController *)selfCopy _updateTitleBarForEncryptionStatus:[(MFSecureMIMECompositionManager *)selfCopy->_secureCompositionManager encryptionStatus]];
  [(MFMailComposeController *)selfCopy _updateSendAndCloseEnabled];
  [(MFMailComposeController *)selfCopy _updateRecipientAtomStyles];
  [(MFMailComposeController *)selfCopy _updatePersonCard];

LABEL_37:
}

- (BOOL)_secureCompositionManagerHasRecipients
{
  recipients = [(MFSecureMIMECompositionManager *)self->_secureCompositionManager recipients];
  v3 = [recipients count] != 0;

  return v3;
}

- (void)_updateRecipientAtomStyles
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  _allRecipientViews = [(MFMailComposeController *)self _allRecipientViews];
  v3 = [_allRecipientViews countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(_allRecipientViews);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidateAtomPresentationOptions];
      }

      while (v3 != v5);
      v3 = [_allRecipientViews countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_updateSMIMEButtonForEncryptionStatus:(int64_t)status
{
  v6 = self->_toField;
  if ([(MFMailComposeController *)self _wantsEncryption])
  {
    _secureCompositionManagerHasRecipients = [(MFMailComposeController *)self _secureCompositionManagerHasRecipients];
  }

  else
  {
    _secureCompositionManagerHasRecipients = 0;
  }

  [(MFMailComposeToField *)v6 setWantsEncryption:_secureCompositionManagerHasRecipients canEncrypt:status != 2 animated:1];
}

- (void)_updateTitleBarForEncryptionStatus:(int64_t)status
{
  if ([(MFMailComposeController *)self _wantsEncryption])
  {
    _secureCompositionManagerHasRecipients = [(MFMailComposeController *)self _secureCompositionManagerHasRecipients];
  }

  else
  {
    _secureCompositionManagerHasRecipients = 0;
  }

  _wantsSigning = [(MFMailComposeController *)self _wantsSigning];
  signingStatus = [(MFSecureMIMECompositionManager *)self->_secureCompositionManager signingStatus];
  if (!_secureCompositionManagerHasRecipients)
  {
    if (_wantsSigning && (signingStatus == 2 || !signingStatus))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (status)
  {
    if (status == 1)
    {
      if (![(MFMailComposeController *)self _hasEncryptionIdentityError])
      {
        [(MFMailComposeController *)self _hasRecipients];
LABEL_21:
        v8 = _EFLocalizedString();
        goto LABEL_22;
      }
    }

    else if (status == 2)
    {
      goto LABEL_21;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_22;
  }

  v10 = _EFLocalizedString();
  if (_wantsSigning && ![(MFMailComposeController *)self _hasSigningIdentityError])
  {
    v8 = v10;
  }

  else
  {
    v9 = _EFLocalizedString();

    v8 = v9;
  }

LABEL_22:
  v11 = v8;
  [MFMailComposeController _setTitleBarSubtitleText:"_setTitleBarSubtitleText:style:" style:?];
  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)self _updateSMIMEStatusControl];
  }
}

- (void)setOriginalMessageWasEncrypted:(BOOL)encrypted
{
  self->_originalMessageWasEncrypted = encrypted;
  if (encrypted && !self->_encryptionOverrideSetting)
  {
    self->_encryptionOverrideSetting = encrypted;
  }

  [(MFMailComposeController *)self _resetSecureCompositionManager];
}

- (unint64_t)_defaultAtomPresentationOptions
{
  if ([(MFMailComposeController *)self _wantsEncryption]&& ![(MFMailComposeController *)self _hasEncryptionIdentityError])
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (void)_updatePersonCard
{
  contactViewController = [(MFMailComposeController *)self contactViewController];
  encryptionPolicy = [(MFSecureMIMECompositionManager *)self->_secureCompositionManager encryptionPolicy];
  recipientPresentingCard = [(MFMailComposeController *)self recipientPresentingCard];
  if (encryptionPolicy && ![(MFMailComposeController *)self _hasEncryptionIdentityError]&& contactViewController && recipientPresentingCard)
  {
    address = [recipientPresentingCard address];
    v5 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:address];
    simpleAddress = [v5 simpleAddress];
    v7 = [simpleAddress copy];

    certificatesByRecipient = [(MFMailComposeController *)self certificatesByRecipient];
    v9 = [certificatesByRecipient objectForKey:v7];

    errorsByRecipient = [(MFMailComposeController *)self errorsByRecipient];
    v11 = [errorsByRecipient objectForKey:v7];

    if (v9 | v11)
    {
      if (v11)
      {
        v12 = MFLookupLocalizedString();
        [v11 localizedDescription];
        v13 = 0;
        v15 = v14 = v12;
      }

      else if (v9)
      {
        v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v13 = [v18 localizedStringForKey:@"ENCRYPTED" value:&stru_1F3CF3758 table:@"Main"];

        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"ENCRYPTION_EXPLANATION_FORMAT" value:&stru_1F3CF3758 table:@"Main"];

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, address];

        v14 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
      }

      if (_UISolariumEnabled())
      {
        v17 = objc_alloc_init(MFSecureMIMEContactHeaderViewModel);
        [(MFSecureMIMEContactHeaderViewModel *)v17 setSecureLabelText:v13];
        [(MFSecureMIMEContactHeaderViewModel *)v17 setWarningLabelText:v14];
        personHeaderView = 0;
        [(MFSecureMIMEContactHeaderViewModel *)v17 setExplanationText:v15];
      }

      else
      {
        contentViewController = [contactViewController contentViewController];
        personHeaderView = [contentViewController personHeaderView];

        if (!personHeaderView)
        {
          v22 = [MFSecureMIMEPersonHeaderView alloc];
          personHeaderView = [(MFSecureMIMEPersonHeaderView *)v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        }

        [(MFSecureMIMEPersonHeaderView *)personHeaderView setSecureLabelText:v13];
        [(MFSecureMIMEPersonHeaderView *)personHeaderView setWarningLabelText:v14];
        [(MFSecureMIMEPersonHeaderView *)personHeaderView setExplanationText:v15];
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
      personHeaderView = 0;
    }

    goto LABEL_21;
  }

  if (contactViewController)
  {
    personHeaderView = 0;
    v17 = 0;
LABEL_21:
    if (_UISolariumEnabled())
    {
      contactsCustomViewConfiguration = [(MFSecureMIMEContactHeaderViewModel *)v17 contactsCustomViewConfiguration];
      [contactViewController setCustomViewConfiguration:contactsCustomViewConfiguration];
    }

    else
    {
      contactsCustomViewConfiguration = [contactViewController contentViewController];
      [contactsCustomViewConfiguration setPersonHeaderView:personHeaderView];
    }
  }
}

- (void)_updateIdentityStatus:(int64_t *)status withPolicy:(int64_t)policy identity:(__SecIdentity *)identity error:(id)error
{
  errorCopy = error;
  if (&self->_signingIdentityStatus == status || &self->_encryptionIdentityStatus == status)
  {
    if (!policy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailComposeController.m" lineNumber:7374 description:@"status pointer must be valid"];

    if (!policy)
    {
      goto LABEL_10;
    }
  }

  v11 = *status;
  if (identity)
  {
    v12 = 0;
  }

  else
  {
    if (!errorCopy)
    {
      goto LABEL_10;
    }

    v12 = 2;
  }

  *status = v12;
  if (v11 != v12)
  {
    [(MFMailComposeController *)self _showMissingIdentityAlert];
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  }

LABEL_10:
}

- (id)_missingIdentityErrorWithFormat:(id)format title:(id)title
{
  formatCopy = format;
  titleCopy = title;
  v8 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
  simpleAddress = [v8 simpleAddress];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:formatCopy, simpleAddress];
  v11 = [MEMORY[0x1E69B15F8] errorWithDomain:*MEMORY[0x1E69B1560] code:1052 localizedDescription:v10 title:0 userInfo:0];
  [v11 setShortDescription:titleCopy];

  return v11;
}

- (void)_showMissingIdentityAlert
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#SMIMEErrors _showMissingIdentityAlert: %{public}@", v5);
}

void __52__MFMailComposeController__showMissingIdentityAlert__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSendAndCloseEnabled];
  v4 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:*(*(a1 + 32) + 1072)];
  v2 = [MFPreferencesURL advancedAccountInfoURLForAccount:?];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 openSensitiveURL:v2 withOptions:0];
}

uint64_t __52__MFMailComposeController__showMissingIdentityAlert__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mailComposeView];
  [v2 restoreFirstResponder];

  v3 = *(a1 + 32);

  return [v3 _updateSendAndCloseEnabled];
}

- (void)secureMIMECompositionManager:(id)manager signingStatusDidChange:(int64_t)change context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MFMailComposeController_secureMIMECompositionManager_signingStatusDidChange_context___block_invoke;
  block[3] = &unk_1E806CC80;
  v12 = managerCopy;
  selfCopy = self;
  v14 = contextCopy;
  v9 = contextCopy;
  v10 = managerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__MFMailComposeController_secureMIMECompositionManager_signingStatusDidChange_context___block_invoke(id *a1)
{
  if (a1[4] == *(a1[5] + 163))
  {
    v2 = [a1[6] objectForKey:*MEMORY[0x1E69B1580]];
    [a1[5] _updateIdentityStatus:a1[5] + 1336 withPolicy:objc_msgSend(a1[4] identity:"signingPolicy") error:{objc_msgSend(a1[6], "objectForKey:", *MEMORY[0x1E69B1588]), v2}];
    [a1[5] _updateTitleBarForEncryptionStatus:{objc_msgSend(a1[4], "encryptionStatus")}];
  }
}

- (void)secureMIMECompositionManager:(id)manager encryptionStatusDidChange:(int64_t)change context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__MFMailComposeController_secureMIMECompositionManager_encryptionStatusDidChange_context___block_invoke;
  v12[3] = &unk_1E806DC48;
  v13 = managerCopy;
  selfCopy = self;
  v15 = contextCopy;
  changeCopy = change;
  v10 = contextCopy;
  v11 = managerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __90__MFMailComposeController_secureMIMECompositionManager_encryptionStatusDidChange_context___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != *(*(a1 + 40) + 1304))
  {
    return;
  }

  v9 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69B1570]];
  v2 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69B1578]];
  v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69B1588]];

  v4 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69B1580]];
  [*(a1 + 40) _updateIdentityStatus:*(a1 + 40) + 1344 withPolicy:objc_msgSend(*(*(a1 + 40) + 1304) identity:"encryptionPolicy") error:{v3, v4}];
  v5 = *(a1 + 56);
  *(*(a1 + 40) + 1352) = v5 != 1;
  v6 = *(a1 + 40);
  if (v6[1352])
  {
    [v6 setCertificatesByRecipient:v9];
    [*(a1 + 40) setErrorsByRecipient:v2];
    v6 = *(a1 + 40);
LABEL_6:
    [v6 _updateRecipientAtomStyles];
    goto LABEL_7;
  }

  if (v5 == 2 && v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = _os_feature_enabled_impl();
  v8 = *(a1 + 40);
  if (v7)
  {
    [v8 _updateSMIMEStatusControl];
  }

  else
  {
    [v8 _updateSMIMEButtonForEncryptionStatus:*(a1 + 56)];
  }

  [*(a1 + 40) _updateTitleBarForEncryptionStatus:*(a1 + 56)];
  [*(a1 + 40) _updateSendAndCloseEnabled];
  [*(a1 + 40) _updatePersonCard];
}

- (MFSMIMEControl)smimeStatusControl
{
  v30[4] = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_3;
  }

  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];

  if (isQuickReply)
  {
    goto LABEL_3;
  }

  smimeStatusControl = self->_smimeStatusControl;
  if (!smimeStatusControl)
  {
    navigationItem = [(MFMailComposeController *)self navigationItem];
    titleView = [navigationItem titleView];

    navigationController = [(MFMailComposeController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    v29 = navigationBar;
    if (([titleView isDescendantOfView:navigationBar] & 1) == 0)
    {

LABEL_3:
      v5 = 0;
      goto LABEL_8;
    }

    v11 = [MFSMIMEControl alloc];
    v12 = [(MFSMIMEControl *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v13 = self->_smimeStatusControl;
    self->_smimeStatusControl = v12;

    [(MFSMIMEControl *)self->_smimeStatusControl setOpaque:1];
    [(MFSMIMEControl *)self->_smimeStatusControl setDelegate:self];
    [(MFSMIMEControl *)self->_smimeStatusControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFSMIMEControl *)self->_smimeStatusControl setContextMenuInteractionEnabled:0];
    [(MFSMIMEControl *)self->_smimeStatusControl setShowsMenuAsPrimaryAction:1];
    [navigationBar addSubview:self->_smimeStatusControl];
    v14 = MEMORY[0x1E696ACD8];
    topAnchor = [(MFSMIMEControl *)self->_smimeStatusControl topAnchor];
    topAnchor2 = [titleView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:?];
    v30[0] = v24;
    leadingAnchor = [(MFSMIMEControl *)self->_smimeStatusControl leadingAnchor];
    leadingAnchor2 = [titleView leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:80.0 constant:?];
    v30[1] = v22;
    bottomAnchor = [(MFSMIMEControl *)self->_smimeStatusControl bottomAnchor];
    bottomAnchor2 = [titleView bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[2] = v16;
    trailingAnchor = [(MFSMIMEControl *)self->_smimeStatusControl trailingAnchor];
    trailingAnchor2 = [titleView trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-80.0];
    v30[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v14 activateConstraints:v20];

    smimeStatusControl = self->_smimeStatusControl;
  }

  v5 = smimeStatusControl;
LABEL_8:

  return v5;
}

- (void)_updateSMIMEStatusControl
{
  _shouldEnableSMIMEMenu = [(MFMailComposeController *)self _shouldEnableSMIMEMenu];
  smimeStatusControl = [(MFMailComposeController *)self smimeStatusControl];
  [smimeStatusControl setContextMenuInteractionEnabled:_shouldEnableSMIMEMenu];
}

- (BOOL)_shouldEnableSMIMEMenu
{
  v3 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
  simpleAddress = [v3 simpleAddress];

  accountProxyGenerator = [(MFMailComposeController *)self accountProxyGenerator];
  v6 = [accountProxyGenerator accountProxyContainingEmailAddress:simpleAddress includingInactive:0 originatingBundleID:self->_originatingBundleID sourceAccountManagement:self->_sourceAccountManagement];
  mailAccount = [v6 mailAccount];

  LOBYTE(accountProxyGenerator) = [mailAccount perMessageEncryptionEnabledForAddress:simpleAddress];
  return accountProxyGenerator;
}

- (void)goToSettingsForControl:(id)control
{
  v5 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:self->_sendingEmailAddress];
  v3 = [MFPreferencesURL advancedAccountInfoURLForAccount:?];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (id)sendingAddressForControl:(id)control
{
  v3 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:self->_sendingEmailAddress];
  simpleAddress = [v3 simpleAddress];

  return simpleAddress;
}

- (unint64_t)smimeStatusOptionsForControl:(id)control
{
  if (![(MFMailComposeController *)self _shouldEnableSMIMEMenu])
  {
    return 1;
  }

  if ([(MFMailComposeController *)self _wantsEncryption])
  {
    if ([(MFMailComposeController *)self _secureCompositionManagerHasRecipients])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  if ([(MFSecureMIMECompositionManager *)self->_secureCompositionManager encryptionStatus]== 2)
  {
    errorsByRecipient = [(MFMailComposeController *)self errorsByRecipient];
    v7 = [errorsByRecipient count];

    v8 = 12;
    if (!v7)
    {
      v8 = 4;
    }

    v4 |= v8;
  }

  _wantsSigning = [(MFMailComposeController *)self _wantsSigning];
  _hasSigningIdentityError = [(MFMailComposeController *)self _hasSigningIdentityError];
  v11 = v4 | 0x10;
  if (!_wantsSigning)
  {
    v11 = v4;
  }

  if (_hasSigningIdentityError)
  {
    return v11 | 0x20;
  }

  else
  {
    return v11;
  }
}

- (void)_createAndAddHandoffProgressViewIfNecessary
{
  if (!self->_handoffProgressView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:1];
    handoffProgressView = self->_handoffProgressView;
    self->_handoffProgressView = v3;

    view = [(MFMailComposeController *)self view];
    [view bounds];
    v7 = v6;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);

    [(UIProgressView *)self->_handoffProgressView setBounds:v8, v9, v7, 2.5];
    navigationController = [(MFMailComposeController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar bounds];
    v13 = v12 + -1.25;

    [(UIProgressView *)self->_handoffProgressView setCenter:v7 * 0.5, v13];
    navigationItem = [(MFMailComposeController *)self navigationItem];
    titleView = [navigationItem titleView];

    v15 = titleView;
    if (!titleView)
    {
      navigationController2 = [(MFMailComposeController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];

      v15 = navigationBar2;
    }

    v19 = v15;
    [v15 addSubview:self->_handoffProgressView];
  }
}

- (void)_hideHandoffProgressViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__MFMailComposeController__hideHandoffProgressViewAnimated___block_invoke;
  aBlock[3] = &unk_1E806C570;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MFMailComposeController__hideHandoffProgressViewAnimated___block_invoke_2;
  v8[3] = &unk_1E806D6F0;
  v8[4] = self;
  v6 = _Block_copy(v8);
  v7 = v6;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v6 completion:0.35];
  }

  else
  {
    (*(v6 + 2))(v6, 1);
  }
}

void __60__MFMailComposeController__hideHandoffProgressViewAnimated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 1432) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1432);
    *(v3 + 1432) = 0;
  }
}

- (void)updateUserActivityState:(id)state
{
  v26[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:self->_sendingEmailAddress];
  v6 = v5;
  v7 = *MEMORY[0x1E69ADCA0];
  if (v5 && ([v5 supportsHandoffType:*MEMORY[0x1E69ADCA0]] & 1) == 0)
  {
    [stateCopy invalidate];
  }

  else
  {
    v25 = *MEMORY[0x1E69ADCB0];
    v26[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [stateCopy addUserInfoEntriesFromDictionary:v8];

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v10 = [em_userDefaults BOOLForKey:@"ComposeActivityOverLAN"];

    if (v10)
    {
      LANHandoffAgent = self->_LANHandoffAgent;
      if (!LANHandoffAgent)
      {
        v12 = objc_alloc_init(MFLANHandoffAgent);
        v13 = self->_LANHandoffAgent;
        self->_LANHandoffAgent = v12;

        v14 = self->_LANHandoffAgent;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __51__MFMailComposeController_updateUserActivityState___block_invoke;
        v21[3] = &unk_1E806F418;
        v21[4] = self;
        v22 = stateCopy;
        v15 = [(MFLANHandoffAgent *)v14 startServerWithCompletion:v21];

        LANHandoffAgent = self->_LANHandoffAgent;
      }

      handoffContext = [(MFLANHandoffAgent *)LANHandoffAgent handoffContext];
      v17 = handoffContext;
      if (handoffContext)
      {
        v23[0] = @"LANHostname";
        host = [handoffContext host];
        v24[0] = host;
        v23[1] = @"LANPortNumber";
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v17, "port")}];
        v24[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        [stateCopy addUserInfoEntriesFromDictionary:v20];
      }
    }
  }
}

- (void)_makeComposeUserActivityCurrent
{
  if (![(MFMailComposeController *)self _isDummyViewController])
  {
    userActivity = [(MFMailComposeController *)self userActivity];

    if (!userActivity)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [standardUserDefaults BOOLForKey:@"ComposeActivityFatPayloads"];

      v5 = MEMORY[0x1E69ADC98];
      if (!v4)
      {
        v5 = MEMORY[0x1E69ADCA0];
      }

      v21 = *v5;
      v6 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:v21];
      [(MFMailComposeController *)self setUserActivity:v6];

      userActivity2 = [(MFMailComposeController *)self userActivity];
      [userActivity2 setDelegate:self];

      userActivity3 = [(MFMailComposeController *)self userActivity];
      [userActivity3 setSupportsContinuationStreams:1];
    }

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v9 localizedStringForKey:@"DRAFT" value:&stru_1F3CF3758 table:@"Main"];

    text = [(MFComposeSubjectView *)self->_subjectField text];
    v11 = [text length];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"DRAFT_ACTIVITY_FORMAT %@" value:&stru_1F3CF3758 table:@"Main"];
      text2 = [(MFComposeSubjectView *)self->_subjectField text];
      v16 = [v12 stringWithFormat:v14, text2];

      v22 = v16;
    }

    userActivity4 = [(MFMailComposeController *)self userActivity];
    [userActivity4 setTitle:v22];

    userActivity5 = [(MFMailComposeController *)self userActivity];
    [(MFMailComposeController *)self updateUserActivityState:userActivity5];

    userActivity6 = [(MFMailComposeController *)self userActivity];
    [userActivity6 becomeCurrent];
  }
}

- (void)setProgressUIVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  if (visible)
  {
    progressIndicatorView = self->_progressIndicatorView;
    if (!progressIndicatorView)
    {
      v7 = [MFMessageContentProgressLayer alloc];
      v8 = [(MFMessageContentProgressLayer *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_progressIndicatorView;
      self->_progressIndicatorView = v8;

      view = [(MFMailComposeController *)self view];
      [view addSubview:self->_progressIndicatorView];

      progressIndicatorView = self->_progressIndicatorView;
    }

    [(MFMessageContentProgressLayer *)progressIndicatorView setAutoresizingMask:18];
    view2 = [(MFMailComposeController *)self view];
    [view2 bounds];
    [(MFMessageContentProgressLayer *)self->_progressIndicatorView setFrame:?];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MFMailComposeController_setProgressUIVisible_animated___block_invoke;
    aBlock[3] = &unk_1E806C570;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      [(MFMessageContentProgressLayer *)self->_progressIndicatorView setAlpha:0.0];
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.6];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    [(MFMailComposeController *)self _hideHandoffProgressViewAnimated:animated];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__MFMailComposeController_setProgressUIVisible_animated___block_invoke_2;
    v17[3] = &unk_1E806C570;
    v17[4] = self;
    v13 = _Block_copy(v17);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__MFMailComposeController_setProgressUIVisible_animated___block_invoke_3;
    v16[3] = &unk_1E806D6F0;
    v16[4] = self;
    v14 = _Block_copy(v16);
    v15 = v14;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:v14 completion:0.6];
    }

    else
    {
      (*(v14 + 2))(v14, 1);
    }
  }
}

void __57__MFMailComposeController_setProgressUIVisible_animated___block_invoke_3(uint64_t a1)
{
  kdebug_trace();
  [*(*(a1 + 32) + 1440) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1440);
  *(v2 + 1440) = 0;
}

- (void)handleLargeMessageComposeHandoffWithInputStream:(id)stream outputStream:(id)outputStream error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  outputStreamCopy = outputStream;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [errorCopy ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMailComposeController handleLargeMessageComposeHandoffWithInputStream:outputStream:error:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__MFMailComposeController_handleLargeMessageComposeHandoffWithInputStream_outputStream_error___block_invoke;
      block[3] = &unk_1E806CC80;
      v16 = WeakRetained;
      selfCopy = self;
      v18 = errorCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v13 = [MFComposeActivityHandoffOperation receivingOperationWithInputStream:streamCopy outputStream:outputStreamCopy];
    handoffOperation = self->_handoffOperation;
    self->_handoffOperation = v13;

    [(MFComposeActivityHandoffOperation *)self->_handoffOperation setDelegate:self];
    kdebug_trace();
    [(MFComposeActivityHandoffOperation *)self->_handoffOperation start];
  }
}

- (id)_copyMessageDataForActivityHandoff
{
  promise = [MEMORY[0x1E699B868] promise];
  originatingBundleID = [(MFMailComposeController *)self originatingBundleID];
  v5 = [MFComposeTypeFactory headersFromDelegate:self originatingBundleID:originatingBundleID sourceAccountManagement:[(MFMailComposeController *)self sourceAccountManagement]];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke;
  block[3] = &unk_1E806CC80;
  block[4] = self;
  v6 = v5;
  v12 = v6;
  v7 = promise;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  future = [v7 future];
  v9 = [future result:0];

  return v9;
}

void __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1528) isDefaultSignatureForSender:*(*(a1 + 32) + 1072)];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 1224);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke_2;
  v6[3] = &unk_1E806EBD0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 48);
  [v5 getHTMLDataObjectRemovingSignature:v2 completion:v6];
}

void __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 otherHTMLStringsAndAttachments];
  if (!v4)
  {
    v5 = [a1[4] compositionContext];
    v6 = [v5 attachmentManager];
    v7 = [*(a1[4] + 153) compositionContextID];
    v4 = [v6 attachmentsForContext:v7];
  }

  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke_3;
  v11[3] = &unk_1E806D988;
  v12 = v3;
  v13 = v4;
  v14 = a1[5];
  v15 = a1[6];
  v9 = v4;
  v10 = v3;
  dispatch_async(v8, v11);
}

void __61__MFMailComposeController__copyMessageDataForActivityHandoff__block_invoke_3(uint64_t a1)
{
  v7 = objc_alloc_init(MEMORY[0x1E69B1640]);
  v2 = [*(a1 + 32) htmlString];
  v3 = [*(a1 + 32) plainTextAlternative];
  v4 = [v7 createMessageWithHTMLStringAndMIMECharset:v2 plainTextAlternative:v3 otherHtmlStringsAndAttachments:*(a1 + 40) headers:*(a1 + 48)];

  v5 = *(a1 + 56);
  v6 = [v4 messageData];
  [v5 finishWithResult:v6];
}

- (id)_copyMessagePlainTextForDonationRemoveQuotes:(BOOL)quotes
{
  quotesCopy = quotes;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  promise = [MEMORY[0x1E699B868] promise];
  composeWebView = self->_composeWebView;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MFMailComposeController__copyMessagePlainTextForDonationRemoveQuotes___block_invoke;
  v8[3] = &unk_1E806F440;
  v8[4] = &v9;
  [(MFComposeWebView *)composeWebView getHTMLDataObjectRemovingSignature:1 removeQuotes:quotesCopy completion:v8];
  future = [v10[5] future];
  _Block_object_dispose(&v9, 8);

  return future;
}

void __72__MFMailComposeController__copyMessagePlainTextForDonationRemoveQuotes___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 plainTextAlternative];
  v5 = [v3 quotedAttachmentsInfo];
  v6 = v5;
  if (v4 && v5)
  {
    v12[0] = v4;
    v12[1] = v5;
    v7 = v12;
    v8 = 2;
  }

  else
  {
    if (v4)
    {
      v11 = v4;
      v7 = &v11;
    }

    else
    {
      if (!v5)
      {
        v9 = MEMORY[0x1E695E0F0];
        goto LABEL_10;
      }

      v10 = v5;
      v7 = &v10;
    }

    v8 = 1;
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:v8];
LABEL_10:
  [*(*(*(a1 + 32) + 8) + 40) finishWithResult:v9];
}

- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  if (pthread_main_np())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailComposeController.m" lineNumber:7818 description:@"Current thread is main"];
  }

  if (self->_composeWebViewFlags.respondsToCompositionWillFinish)
  {
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView compositionWillFinish];
  }

  _copyMessageDataForActivityHandoff = [(MFMailComposeController *)self _copyMessageDataForActivityHandoff];
  if (_copyMessageDataForActivityHandoff)
  {
    v12 = [MFComposeActivityHandoffOperation sendingOperationWithDraftData:_copyMessageDataForActivityHandoff inputStream:streamCopy outputStream:outputStreamCopy];
    handoffOperation = self->_handoffOperation;
    self->_handoffOperation = v12;

    [(MFComposeActivityHandoffOperation *)self->_handoffOperation setDelegate:self];
    kdebug_trace();
    [(MFComposeActivityHandoffOperation *)self->_handoffOperation start];
  }

  else
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MFMailComposeController userActivity:didReceiveInputStream:outputStream:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFActivityHandoffOperationError" code:-1 userInfo:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mailComposeController:self failedToHandoffCompositionWithError:v15];
    }

    if (self->_composeWebViewFlags.respondsToCompositionDidFailToFinish)
    {
      composeWebView2 = [(MFMailComposeController *)self composeWebView];
      [composeWebView2 compositionDidFailToFinish];
    }
  }
}

- (void)activityHandoffOperation:(id)operation didFinishReceivingData:(id)data
{
  dataCopy = data;
  kdebug_trace();
  if ([dataCopy length])
  {
    v6 = [[_MFMailCompositionContext alloc] initWithComposeType:9 RFC822Data:dataCopy];
    [(MFMailComposeController *)self setCompositionContext:v6];
    [(MFMailComposeController *)self setProgressUIVisible:0 animated:1];
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MFMailComposeController activityHandoffOperation:didFinishReceivingData:];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFActivityHandoffOperationError" code:-1 userInfo:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mailComposeController:self failedToHandoffCompositionWithError:v6];
    }
  }
}

- (void)activityHandoffOperation:(id)operation didFinishSendingDataWithResult:(int64_t)result
{
  v11 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    resultCopy = result;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_INFO, "#Hand-Off Delegate; finished sending! result: %lu", &v9, 0xCu);
  }

  handoffOperation = self->_handoffOperation;
  self->_handoffOperation = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (result == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained mailComposeControllerCompositionHandoffFinished:self];
  }
}

- (void)activityHandoffOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [errorCopy ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    [MFMailComposeController activityHandoffOperation:didFailWithError:];
  }

  handoffOperation = self->_handoffOperation;
  self->_handoffOperation = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mailComposeController:self failedToHandoffCompositionWithError:errorCopy];
  }

  if (self->_composeWebViewFlags.respondsToCompositionDidFailToFinish)
  {
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView compositionDidFailToFinish];
  }
}

- (void)activityHandoffOperationReceivedBytes:(id)bytes
{
  bytesCopy = bytes;
  [(MFMailComposeController *)self _createAndAddHandoffProgressViewIfNecessary];
  bytesReceived = [bytesCopy bytesReceived];
  v5 = bytesReceived / [bytesCopy bytesExpected];
  *&v5 = v5;
  [(UIProgressView *)self->_handoffProgressView setProgress:v5];
}

- (void)_bodyTextChanged
{
  v3 = *(self + 1376);
  if (v3)
  {
    isDirty = 1;
  }

  else
  {
    isDirty = [(MFComposeWebView *)self->_composeWebView isDirty];
    v3 = *(self + 1376);
  }

  *(self + 1376) = v3 & 0xFE | isDirty;
  *(self + 1376) |= 2u;
  [(MFMailComposeController *)self _updateSendAndCloseEnabled];

  [(MFMailComposeController *)self _draftContentDidChange];
}

- (void)_retainFocusOfComposeWebViewIfRequired:(id)required
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if ((mf_supportsPopoverPresentation & 1) == 0)
  {
    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView retainFocusAfterPresenting];
  }
}

- (void)composeWebViewDidTerminate:(id)terminate
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(MFMailComposeController *)self autosaveIdentifier];
    objc_claimAutoreleasedReturnValue();
    [(MFMailComposeController *)self autosaveIsValid];
    [MFMailComposeController composeWebViewDidTerminate:];
  }

  autosaveIdentifier = [(MFMailComposeController *)self autosaveIdentifier];
  if (autosaveIdentifier)
  {
    autosave = [MEMORY[0x1E69ADAC8] autosave];
    v7 = [autosave hasAutosavedMessageWithIdentifier:autosaveIdentifier];

    if (v7)
    {
      compositionContext = [(MFMailComposeController *)self compositionContext];
      originalMessage = [compositionContext originalMessage];

      repository = [originalMessage repository];
      v11 = [_MFMailCompositionContext alloc];
      subject = [originalMessage subject];
      subjectString = [subject subjectString];
      objectID = [originalMessage objectID];
      v15 = [(_MFMailCompositionContext *)v11 initRecoveredAutosavedMessageWithIdentifier:autosaveIdentifier draftSubject:subjectString messageRepository:repository originalMessageObjectID:objectID];

      [(MFMailComposeController *)self setCompositionContext:v15];
      [(MFMailComposeController *)self setRemoveSignatureForAutoSavedMessages:1];
    }
  }
}

- (UIEdgeInsets)additionalContentInsetForComposeWebView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  v6 = MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  photosPickerController = self->_photosPickerController;
  if (photosPickerController)
  {
    v9 = __67__MFMailComposeController_additionalContentInsetForComposeWebView___block_invoke(viewCopy, photosPickerController, self->_photosPickerController);
    goto LABEL_9;
  }

  styleSelector = [(MFMailComposeController *)self styleSelector];

  if (styleSelector)
  {
    styleSelector2 = [(MFMailComposeController *)self styleSelector];
    styleSelector3 = [(MFMailComposeController *)self styleSelector];
    v13 = __67__MFMailComposeController_additionalContentInsetForComposeWebView___block_invoke(styleSelector3, styleSelector2, styleSelector3);
LABEL_7:
    v9 = v13;

LABEL_8:
    goto LABEL_9;
  }

  formattingController = [(MFMailComposeController *)self formattingController];

  if (formattingController)
  {
    styleSelector2 = [(MFMailComposeController *)self formattingController];
    styleSelector3 = [(MFMailComposeController *)self formattingController];
    v13 = __67__MFMailComposeController_additionalContentInsetForComposeWebView___block_invoke(styleSelector3, styleSelector2, styleSelector3);
    goto LABEL_7;
  }

  systemPhotosPickerController = self->_systemPhotosPickerController;
  v9 = v7;
  if (systemPhotosPickerController)
  {
    styleSelector2 = [(MFComposePhotoPickerController *)systemPhotosPickerController pickerViewController];
    v9 = __67__MFMailComposeController_additionalContentInsetForComposeWebView___block_invoke(styleSelector2, styleSelector2, self->_systemPhotosPickerController);
    goto LABEL_8;
  }

LABEL_9:
  mailComposeView = [(MFMailComposeController *)self mailComposeView];
  isQuickReply = [mailComposeView isQuickReply];
  v17 = *v6;
  v18 = v6[1];
  v19 = v6[3];

  if (isQuickReply)
  {
    v9 = v7;
  }

  v20 = v17;
  v21 = v18;
  v22 = v9;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

double __67__MFMailComposeController_additionalContentInsetForComposeWebView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 navigationController];
  v7 = [v6 presentationController];

  if (v7 || ([v4 presentationController], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_opt_class();
    v8 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        v9 = [v7 containerView];
        v10 = [v9 traitCollection];

        [v5 preferredHeightForTraitCollection:v10];
        v8 = v11;
      }

      else
      {
        v10 = [v4 navigationController];
        v12 = [v10 view];
        [v12 bounds];
        v14 = v13;
        v15 = [v4 view];
        [v15 safeAreaInsets];
        v8 = v14 - v16;
      }
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)showMissingAttachmentDataAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ATTACHMENTS_FAILED_TO_LOAD_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ATTACHMENTS_FAILED_TO_LOAD_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"COMPOSE_ANYWAY" value:&stru_1F3CF3758 table:@"Main"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__MFMailComposeController_showMissingAttachmentDataAlert__block_invoke;
  v18[3] = &unk_1E806E958;
  v18[4] = self;
  v12 = [v9 actionWithTitle:v11 style:0 handler:v18];
  [v8 addAction:v12];

  v13 = MEMORY[0x1E69DC648];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__MFMailComposeController_showMissingAttachmentDataAlert__block_invoke_2;
  v17[3] = &unk_1E806E958;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v17];
  [v8 addAction:v16];

  [(MFMailComposeController *)self _presentModalAlert:v8];
}

void __57__MFMailComposeController_showMissingAttachmentDataAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mailComposeView];
  [v1 restoreFirstResponder];
}

- (void)composeWebViewDidChangeFontAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(MFMailComposeController *)self setFontAttributes:?];
  if (_os_feature_enabled_impl())
  {
    [(MFMailComposeController *)self formattingController];
  }

  else
  {
    [(MFMailComposeController *)self styleSelector];
  }
  v4 = ;
  [v4 updateStateUsingFontAttributes:attributesCopy];
}

- (void)showStyleSelector:(id)selector
{
  v30[1] = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Showing style selector", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = objc_alloc_init(MFComposeFormattingViewController);
    [(MFMailComposeController *)self setFormattingController:v6];

    formattingController = [(MFMailComposeController *)self formattingController];
    [formattingController setFormattingDelegate:self];
  }

  else
  {
    v8 = objc_alloc_init(MFComposeStyleSelectorViewController);
    [(MFMailComposeController *)self setStyleSelector:v8];

    formattingController = [(MFMailComposeController *)self styleSelector];
    [formattingController setStyleDelegate:self];
  }

  if (_os_feature_enabled_impl())
  {
    traitCollection = [(MFMailComposeController *)self traitCollection];
    if ([traitCollection mf_supportsPopoverPresentation])
    {
      v10 = objc_alloc(MEMORY[0x1E69DCCD8]);
      formattingController2 = [(MFMailComposeController *)self formattingController];
      v12 = [v10 initWithRootViewController:formattingController2];

      goto LABEL_12;
    }

    formattingController3 = [(MFMailComposeController *)self formattingController];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E69DCCD8]);
    traitCollection = [(MFMailComposeController *)self styleSelector];
    formattingController3 = [v13 initWithRootViewController:traitCollection];
  }

  v12 = formattingController3;
LABEL_12:

  parentViewController = [(MFMailComposeController *)self parentViewController];
  traitCollection2 = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection2 mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    [v12 setModalPresentationStyle:7];
    popoverPresentationController = [v12 popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    [(MFMailComposeController *)self _configureSender:selectorCopy asSourceForPopoverPresentationController:popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:14];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__MFMailComposeController_showStyleSelector___block_invoke;
    v27[3] = &unk_1E806DB80;
    objc_copyWeak(&v28, buf);
    [parentViewController presentViewController:v12 animated:1 completion:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    popoverPresentationController = [v12 presentationController];
    [popoverPresentationController setDelegate:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = popoverPresentationController;
      if (_os_feature_enabled_impl())
      {
        [v19 setLargestUndimmedDetentIdentifier:@"com.apple.UIKit.textFormatting"];
      }

      else
      {
        v20 = v19;
        styleSelector = [(MFMailComposeController *)self styleSelector];
        v22 = [(MFMailComposeController *)self _sheetDetentForIdentifier:@"StyleSelectorHalfDetent" viewController:styleSelector];

        v30[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        [v20 setDetents:v23];

        [v20 setSmallestUndimmedDetentIdentifier:@"StyleSelectorHalfDetent"];
      }

      [v19 setPrefersEdgeAttachedInCompactHeight:1];
    }

    composeWebView = [(MFMailComposeController *)self composeWebView];
    [composeWebView retainFocusAfterPresenting];

    [parentViewController presentViewController:v12 animated:1 completion:0];
    if (_os_feature_enabled_impl())
    {
      [(MFMailComposeController *)self formattingController];
    }

    else
    {
      [(MFMailComposeController *)self styleSelector];
    }
    v25 = ;
    fontAttributes = [(MFMailComposeController *)self fontAttributes];
    [v25 updateStateUsingFontAttributes:fontAttributes];
  }
}

void __45__MFMailComposeController_showStyleSelector___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (_os_feature_enabled_impl())
  {
    [WeakRetained formattingController];
  }

  else
  {
    [WeakRetained styleSelector];
  }
  v1 = ;
  v2 = [WeakRetained fontAttributes];
  [v1 updateStateUsingFontAttributes:v2];
}

- (void)_configureSender:(id)sender asSourceForPopoverPresentationController:(id)controller
{
  senderCopy = sender;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setBarButtonItem:senderCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = senderCopy;
      [controllerCopy setSourceView:v7];
      [v7 bounds];
      x = v12.origin.x;
      y = v12.origin.y;
      width = v12.size.width;
      height = v12.size.height;
      CGRectGetMidX(v12);
      v13.origin.x = x;
      v13.origin.y = y;
      v13.size.width = width;
      v13.size.height = height;
      CGRectGetMidY(v13);
      UIRectCenteredAboutPoint();
      [controllerCopy setSourceRect:?];
    }

    else
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MFMailComposeController _configureSender:asSourceForPopoverPresentationController:];
      }
    }
  }
}

- (void)takeFocusFromComposeWebView:(id)view inDirection:(unint64_t)direction
{
  viewCopy = view;
  if (direction == 16)
  {
    v6 = &OBJC_IVAR___MFMailComposeController__toField;
  }

  else
  {
    if (direction != 32)
    {
      goto LABEL_6;
    }

    v6 = &OBJC_IVAR___MFMailComposeController__subjectField;
  }

  [*(&self->super.super.super.isa + *v6) becomeFirstResponder];
LABEL_6:
}

- (id)sendLaterMenu
{
  v43 = *MEMORY[0x1E69E9840];
  contextForCurrentDate = [MEMORY[0x1E69ADD30] contextForCurrentDate];
  v29 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [&unk_1F3D167A8 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v3)
  {
    v4 = *v38;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(&unk_1F3D167A8);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        if (([v6 integerValue] & contextForCurrentDate) != 0)
        {
          v7 = [MEMORY[0x1E69ADD30] titleAndDateForSendLaterContext:{objc_msgSend(v6, "integerValue")}];
          objc_initWeak(location, self);
          v8 = MEMORY[0x1E69DC628];
          first = [v7 first];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __40__MFMailComposeController_sendLaterMenu__block_invoke;
          v33[3] = &unk_1E806F468;
          objc_copyWeak(&v36, location);
          v10 = v7;
          v34 = v10;
          v35 = v6;
          v11 = [v8 actionWithTitle:first image:0 identifier:0 handler:v33];

          v12 = MEMORY[0x1E696AEC0];
          first2 = [v10 first];
          v14 = [v12 stringWithFormat:@"mail.sendLaterContextMenu.%@", first2];
          [v11 setAccessibilityIdentifier:v14];

          [v29 addObject:v11];
          objc_destroyWeak(&v36);
          objc_destroyWeak(location);
        }
      }

      v3 = [&unk_1F3D167A8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v3);
  }

  if ((contextForCurrentDate & 0x20) != 0)
  {
    objc_initWeak(location, self);
    v15 = [MEMORY[0x1E69ADD30] titleAndDateForSendLaterContext:32];
    v16 = MEMORY[0x1E69DC628];
    first3 = [v15 first];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40__MFMailComposeController_sendLaterMenu__block_invoke_2;
    v30[3] = &unk_1E806F490;
    objc_copyWeak(&v32, location);
    v18 = v15;
    v31 = v18;
    v19 = [v16 actionWithTitle:first3 image:0 identifier:0 handler:v30];

    v20 = MEMORY[0x1E696AEC0];
    first4 = [v18 first];
    v22 = [v20 stringWithFormat:@"mail.sendLaterContextMenu.%@", first4];
    [v19 setAccessibilityIdentifier:v22];

    [v29 addObject:v19];
    objc_destroyWeak(&v32);

    objc_destroyWeak(location);
  }

  v23 = MFLogGeneral();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v29;
    _os_log_impl(&dword_1BE819000, v23, OS_LOG_TYPE_INFO, "Returning actions for send later menu %@", location, 0xCu);
  }

  v24 = MEMORY[0x1E69DCC60];
  v25 = [v29 copy];
  v26 = [v24 menuWithTitle:&stru_1F3CF3758 children:v25];

  return v26;
}

void __40__MFMailComposeController_sendLaterMenu__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v2 = [a1[4] second];
    [WeakRetained[125] setSendLaterDate:v2];

    [WeakRetained[125] setSendLaterContext:{objc_msgSend(a1[5], "integerValue")}];
    [WeakRetained send:0];
  }
}

void __40__MFMailComposeController_sendLaterMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [MFDatePickerViewController alloc];
  v5 = [*(a1 + 32) second];
  v6 = [(MFDatePickerViewController *)v4 initWithType:0 shouldShowDeleteButton:0 initialDate:v5];

  [(MFDatePickerViewController *)v6 setDelegate:WeakRetained];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:7];
  v8 = [v7 popoverPresentationController];
  v9 = [v11 presentationSourceItem];
  [v8 setSourceItem:v9];

  v10 = [WeakRetained parentViewController];
  [v10 presentViewController:v7 animated:1 completion:0];
}

- (void)addLink:(id)link
{
  linkCopy = link;
  v4 = _EFLocalizedString();
  [(MFMailComposeController *)self _presentLinkEditorWithName:v4 text:0 mode:0 completion:linkCopy];
}

- (void)editLink:(id)link completion:(id)completion
{
  linkCopy = link;
  completionCopy = completion;
  v7 = _EFLocalizedString();
  [(MFMailComposeController *)self _presentLinkEditorWithName:v7 text:linkCopy mode:0 completion:completionCopy];
}

- (void)editTextDescription:(id)description completion:(id)completion
{
  descriptionCopy = description;
  completionCopy = completion;
  v7 = _EFLocalizedString();
  [(MFMailComposeController *)self _presentLinkEditorWithName:v7 text:descriptionCopy mode:1 completion:completionCopy];
}

- (void)_presentLinkEditorWithName:(id)name text:(id)text mode:(unint64_t)mode completion:(id)completion
{
  nameCopy = name;
  textCopy = text;
  completionCopy = completion;
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:nameCopy message:0 preferredStyle:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__MFMailComposeController__presentLinkEditorWithName_text_mode_completion___block_invoke;
  v33[3] = &__block_descriptor_40_e21_v16__0__UITextField_8l;
  v33[4] = mode;
  [v13 addTextFieldWithConfigurationHandler:v33];
  textFields = [v13 textFields];
  firstObject = [textFields firstObject];
  [firstObject setText:textCopy];

  v16 = MEMORY[0x1E69DC648];
  v17 = _EFLocalizedString();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__MFMailComposeController__presentLinkEditorWithName_text_mode_completion___block_invoke_2;
  v31[3] = &unk_1E806EE90;
  v18 = completionCopy;
  v32 = v18;
  v19 = [v16 actionWithTitle:v17 style:1 handler:v31];

  v20 = MEMORY[0x1E69DC648];
  v21 = _EFLocalizedString();
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __75__MFMailComposeController__presentLinkEditorWithName_text_mode_completion___block_invoke_3;
  v28 = &unk_1E806E0B8;
  v22 = v13;
  v29 = v22;
  v23 = v18;
  v30 = v23;
  v24 = [v20 actionWithTitle:v21 style:0 handler:&v25];

  [v22 addAction:{v19, v25, v26, v27, v28}];
  [v22 addAction:v24];
  [(MFMailComposeController *)self presentViewController:v22 animated:1 completion:0];
}

void __75__MFMailComposeController__presentLinkEditorWithName_text_mode_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3 == 1)
  {
    v5 = _EFLocalizedString();
    [v6 setPlaceholder:v5];
  }

  else if (!v3)
  {
    v4 = _EFLocalizedString();
    [v6 setPlaceholder:v4];

    [v6 setKeyboardType:3];
    [v6 setAutocapitalizationType:0];
  }
}

void __75__MFMailComposeController__presentLinkEditorWithName_text_mode_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v4 = [v3 text];

  (*(*(a1 + 40) + 16))();
}

- (void)composeWebView:(id)view didChangeHeight:(double)height
{
  if (_os_feature_enabled_impl())
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    isQuickReply = [mailComposeView isQuickReply];

    if (isQuickReply)
    {
      quickReplyDelegate = [(MFMailComposeController *)self quickReplyDelegate];
      [quickReplyDelegate mailComposeController:self didChangeQuickReplyWebViewHeight:height];
    }
  }
}

- (void)composeWebView:(id)view composeBodyIsEmpty:(BOOL)empty
{
  emptyCopy = empty;
  if (_os_feature_enabled_impl())
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    isQuickReply = [mailComposeView isQuickReply];

    if (isQuickReply)
    {
      [(MFMailComposeController *)self setHasMessageBodyContent:emptyCopy ^ 1];
      [(MFMailComposeController *)self _updateSendAndCloseEnabled];
      quickReplyDelegate = [(MFMailComposeController *)self quickReplyDelegate];
      [quickReplyDelegate mailComposeController:self composeBodyIsEmpty:emptyCopy];
    }
  }
}

- (void)composeWebView:(id)view hasActiveWritingToolsSession:(BOOL)session
{
  sessionCopy = session;
  v11 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DD318] isWritingToolsAvailable] && -[MFMailComposeController hasActiveWritingToolsSession](self, "hasActiveWritingToolsSession") != sessionCopy)
  {
    v6 = EMLogCompose();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      selfCopy = self;
      v9 = 1024;
      v10 = sessionCopy;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "%p: [Writing Tools] updating appearance for writing-tools session: %{BOOL}d", &v7, 0x12u);
    }

    [(MFMailComposeController *)self setHasActiveWritingToolsSession:sessionCopy];
    [(MFMailComposeController *)self _updateSendAndCloseEnabled];
  }
}

- (BOOL)isCloudKitShare
{
  compositionContext = [(MFMailComposeController *)self compositionContext];
  ckShare = [compositionContext ckShare];
  v4 = ckShare != 0;

  return v4;
}

- (void)composeStyleSelector:(id)selector didSelectStyle:(id)style
{
  v15 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  styleCopy = style;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = styleCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did select style: %{public}@", &v13, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  styleType = [styleCopy styleType];
  if (styleType == 11)
  {
    v11 = 1;
  }

  else
  {
    if (styleType != 12)
    {
      v12 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:objc_msgSend(styleCopy target:"editSelector") object:{composeWebView, selectorCopy}];
      [v12 invoke];

      goto LABEL_9;
    }

    v11 = -1;
  }

  [composeWebView changeQuoteLevel:v11];
LABEL_9:
}

- (void)composeStyleSelector:(id)selector didChangeTextColor:(id)color
{
  v12 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  colorCopy = color;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = colorCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change text color: %{public}@", &v10, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setTextColor:colorCopy sender:selectorCopy];
}

- (void)composeStyleSelector:(id)selector didChangeFont:(id)font
{
  v12 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  fontCopy = font;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = fontCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change font: %{public}@", &v10, 0xCu);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:selectorCopy];
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setFont:fontCopy sender:selectorCopy];
}

- (void)composeStyleSelector:(id)selector didChangeFontSize:(double)size
{
  v11 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change font size: %f", &v9, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setFontSize:selectorCopy sender:size];
}

- (void)composeStyleSelectorDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector dismissed", v8, 2u);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView releaseFocusAfterDismissing:1];

  if (_os_feature_enabled_impl())
  {
    formattingController = [(MFMailComposeController *)self formattingController];
    [formattingController dismissViewControllerAnimated:1 completion:0];

    [(MFMailComposeController *)self setFormattingController:0];
  }

  else
  {
    styleSelector = [(MFMailComposeController *)self styleSelector];
    [styleSelector dismissViewControllerAnimated:1 completion:0];

    [(MFMailComposeController *)self setStyleSelector:0];
  }
}

- (void)composeStyleSelectorDidPresentColorPicker:(id)picker
{
  pickerCopy = picker;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector presented color picker", v6, 2u);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:pickerCopy];
}

- (void)composeStyleSelectorDidDismissFontPicker:(id)picker
{
  pickerCopy = picker;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Font picker dismissed", v6, 2u);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:pickerCopy];
}

- (id)presentingViewControllerForComposeStyleSelector:(id)selector
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    parentViewController = [(MFMailComposeController *)self parentViewController];
  }

  else
  {
    parentViewController = 0;
  }

  return parentViewController;
}

- (void)composeFormattingController:(id)controller didSelectTextStyle:(id)style
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  styleCopy = style;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = styleCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did select style: %{public}@", &v13, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  styleType = [styleCopy styleType];
  if (styleType == 11)
  {
    v11 = 1;
  }

  else
  {
    if (styleType != 12)
    {
      v12 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:objc_msgSend(styleCopy target:"editSelector") object:{composeWebView, controllerCopy}];
      [v12 invoke];

      goto LABEL_9;
    }

    v11 = -1;
  }

  [composeWebView changeQuoteLevel:v11];
LABEL_9:
}

- (void)composeFormattingController:(id)controller didChangeTextColor:(id)color
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  colorCopy = color;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = colorCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change text color: %{public}@", &v10, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setTextColor:colorCopy sender:controllerCopy];
}

- (void)composeFormattingController:(id)controller didChangeFont:(id)font
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  fontCopy = font;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = fontCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change font: %{public}@", &v10, 0xCu);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:controllerCopy];
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setFont:fontCopy sender:controllerCopy];
}

- (void)composeFormattingController:(id)controller didChangeFontSize:(double)size
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector did change font size: %f", &v9, 0xCu);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView _setFontSize:controllerCopy sender:size];
}

- (void)composeFormattingControllerDidCancel:(id)cancel
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector dismissed", v7, 2u);
  }

  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView releaseFocusAfterDismissing:1];

  formattingController = [(MFMailComposeController *)self formattingController];
  [formattingController dismissViewControllerAnimated:1 completion:0];

  [(MFMailComposeController *)self setFormattingController:0];
}

- (void)composeFormattingControllerDidPresentColorPicker:(id)picker
{
  pickerCopy = picker;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Compose style selector presented color picker", v6, 2u);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:pickerCopy];
}

- (void)composeFormattingControllerDidDismissFontPicker:(id)picker
{
  pickerCopy = picker;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#CompositionServices Font picker dismissed", v6, 2u);
  }

  [(MFMailComposeController *)self _retainFocusOfComposeWebViewIfRequired:pickerCopy];
}

- (id)presentingViewControllerForComposeFormattingController:(id)controller
{
  traitCollection = [(MFMailComposeController *)self traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  if (mf_supportsPopoverPresentation)
  {
    parentViewController = [(MFMailComposeController *)self parentViewController];
  }

  else
  {
    parentViewController = 0;
  }

  return parentViewController;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection mf_supportsPopoverPresentation])
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mailComposeView = [(MFMailComposeController *)self mailComposeView];
    peoplePicker = [(MFMailComposeController *)self peoplePicker];

    if (peoplePicker == presentedViewController)
    {
      [(MFMailComposeController *)self setPeoplePicker:0];
      [mailComposeView setShowingPeoplePicker:0];
    }

    else
    {
      [(MFMailComposeController *)self setContactViewController:0];
      [(MFMailComposeController *)self setRecipientPresentingCard:0];
    }

    *(self + 1377) &= ~2u;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [mailComposeView restoreFirstResponderWithKeyboardPinning:1];
    }

    else if ([mailComposeView isSearchResultsPopoverVisible])
    {
      [mailComposeView searchResultsPopoverWasDismissed];
    }

    navigationController = [(MFPhotoPickerController *)self->_photosPickerController navigationController];

    if (presentedViewController == navigationController)
    {
      photosPickerController = self->_photosPickerController;
      self->_photosPickerController = 0;
    }

    popoverAlert = [(MFMailComposeController *)self popoverAlert];

    if (presentedViewController == popoverAlert)
    {
      [(MFMailComposeController *)self setPopoverAlert:0];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MFMailComposeController *)self _didDismissDocumentPicker];
    }

    else
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __60__MFMailComposeController_presentationControllerDidDismiss___block_invoke;
      v17 = &unk_1E806F4D8;
      v18 = dismissCopy;
      selfCopy = self;
      v8 = _Block_copy(&v14);
      v8[2](v8, self->_photosPickerController);
      v9 = [(MFComposePhotoPickerController *)self->_systemPhotosPickerController pickerViewController:v14];
      v8[2](v8, v9);

      if (_os_feature_enabled_impl())
      {
        [(MFMailComposeController *)self formattingController];
      }

      else
      {
        [(MFMailComposeController *)self styleSelector];
      }
      v10 = ;
      v8[2](v8, v10);
    }
  }

  [(MFMailComposeController *)self _updateSendAndCloseEnabled];
}

void __60__MFMailComposeController_presentationControllerDidDismiss___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [*(a1 + 32) presentedViewController];
    if (v4 == v8)
    {
    }

    else
    {
      v5 = [*(a1 + 32) presentedViewController];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v6 = [*(a1 + 32) presentedViewController];
      v7 = [v6 topViewController];

      if (v7 != v8)
      {
LABEL_9:
        v3 = v8;
        goto LABEL_10;
      }
    }

    v5 = [*(a1 + 40) composeWebView];
    [v5 releaseFocusAfterDismissing:1];
    v4 = v8;
    v8 = 0;
    goto LABEL_8;
  }

LABEL_10:
}

- (BOOL)getPrefersLargeTitles
{
  navigationController = [(MFMailComposeController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  prefersLargeTitles = [navigationBar prefersLargeTitles];

  return prefersLargeTitles;
}

- (void)setPrefersLargeTitles:(BOOL)titles
{
  titlesCopy = titles;
  navigationController = [(MFMailComposeController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:titlesCopy];
}

- (void)datePickerViewController:(id)controller didSelectDate:(id)date
{
  dateCopy = date;
  [(_MFMailCompositionContext *)self->_compositionContext setSendLaterDate:?];
  [(_MFMailCompositionContext *)self->_compositionContext setSendLaterContext:32];
  [(MFMailComposeController *)self send:0];
}

- (void)_sendAnalyticsSignalForResult:(int64_t)result
{
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && result <= 2)
  {
    smartReplyThreadIdentifier = [(MFMailComposeController *)self smartReplyThreadIdentifier];
    compositionContext = [(MFMailComposeController *)self compositionContext];
    originalMessage = [compositionContext originalMessage];
    flags = [originalMessage flags];
    draft = [flags draft];

    [MEMORY[0x1E69ADD08] sendAnalyticsSignal:3 - result threadIdentifier:smartReplyThreadIdentifier isDraft:draft];
  }
}

- (void)_invalidateInputContextHistoryDebounced:(BOOL)debounced
{
  if (debounced)
  {
    inputContextHistoryInvalidationDebouncer = [(MFMailComposeController *)self inputContextHistoryInvalidationDebouncer];
    [inputContextHistoryInvalidationDebouncer debounceResult:0];
  }

  else
  {
    inputContextHistoryInvalidationDebouncer = [(MFMailComposeController *)self composeWebView];
    [inputContextHistoryInvalidationDebouncer invalidateInputContextHistory];
  }
}

- (id)smartReplyThreadIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  originalMessage = [compositionContext originalMessage];
  v5 = [v2 numberWithLongLong:{objc_msgSend(originalMessage, "conversationID")}];
  stringValue = [v5 stringValue];

  return stringValue;
}

- (id)_originalContentOfMessagesInReplyToMessage:(id)message
{
  messageCopy = message;
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ![(MFMailComposeController *)self isSmartReplyRestricted]&& ((*(*MEMORY[0x1E699B750] + 16))() & 1) == 0)
  {
    v7 = +[MFMailComposeController signpostLog];
    signpostID = [(MFMailComposeController *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "LOAD MESSAGE ORIGINAL CONTENT", "Begin loading message original content enableTelemetry=YES ", buf, 2u);
    }

    promise = [MEMORY[0x1E699B868] promise];
    objc_initWeak(buf, self);
    originalContentMessagesScheduler = [(MFMailComposeController *)self originalContentMessagesScheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke;
    v12[3] = &unk_1E806F5C0;
    v13 = messageCopy;
    objc_copyWeak(&v15, buf);
    v11 = promise;
    v14 = v11;
    [originalContentMessagesScheduler performBlock:v12];

    future = [v11 future];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    future = 0;
  }

  return future;
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke(id *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E699AC68]) initWithBuilder:&__block_literal_global_1296];
  v3 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_3;
  v5[3] = &unk_1E806F598;
  objc_copyWeak(&v8, a1 + 6);
  v6 = a1[5];
  v7 = a1[4];
  v4 = [v3 requestRepresentationWithOptions:v2 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedRepresentation:*MEMORY[0x1E699A700]];
  [v2 setNetworkUsage:0];
  [v2 setMaximumNumberOfOriginalContentMessagesToRequest:4];
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_3(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = +[MFMailComposeController signpostLog];
    v9 = [WeakRetained signpostID];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v8, OS_SIGNPOST_EVENT, v9, "LOAD MESSAGE ORIGINAL CONTENT", "Did complete message content representation request enableTelemetry=YES ", buf, 2u);
    }

    if (!v5 || v6)
    {
      if (v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
      }

      v12 = v11;
      v13 = EMLogCompose();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 ef_publicDescription];
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "[SmartReply] Message content representation request failed with error: %{public}@", buf, 0xCu);
      }

      [a1[4] finishWithError:v12];
    }

    else
    {
      objc_initWeak(buf, WeakRetained);
      v10 = [WeakRetained originalContentMessagesScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_1297;
      v15[3] = &unk_1E806F570;
      v16 = v5;
      objc_copyWeak(&v19, buf);
      v17 = a1[5];
      v18 = a1[4];
      [v10 performBlock:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_1297(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_2_1298;
  v3[3] = &unk_1E806F548;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 requestOriginalContentMessagesInReplyToContentItemWithCompletion:v3];

  objc_destroyWeak(&v6);
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_2_1298(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_3_1299;
  v10[3] = &unk_1E806F520;
  objc_copyWeak(&v15, a1 + 6);
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v13 = a1[4];
  v14 = a1[5];
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];

  objc_destroyWeak(&v15);
}

void __70__MFMailComposeController__originalContentOfMessagesInReplyToMessage___block_invoke_3_1299(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32) && !*(a1 + 40))
    {
      v3 = MFComposeLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) count];
        v6 = [*(a1 + 48) ef_publicDescription];
        v9 = 134349314;
        v10 = v5;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "[SmartReply] Retrieved %{public}lu original contents for message: %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v3 = MFComposeLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 48) ef_publicDescription];
        v9 = 138543362;
        v10 = v4;
        _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "[SmartReply] Failed to retrieve plain text for message: %{public}@", &v9, 0xCu);
      }
    }

    [*(a1 + 56) finishWithResult:*(a1 + 32) error:*(a1 + 40)];
    v7 = +[MFMailComposeController signpostLog];
    v8 = [WeakRetained signpostID];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BE819000, v7, OS_SIGNPOST_INTERVAL_END, v8, "LOAD MESSAGE ORIGINAL CONTENT", "End loading message original content enableTelemetry=YES ", &v9, 2u);
    }
  }
}

- (void)_managedConfigurationEffectiveSettingsDidChangeNotification:(id)notification
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v5, &location);
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __87__MFMailComposeController__managedConfigurationEffectiveSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    [WeakRetained setIsSmartReplyRestricted:{objc_msgSend(v2, "isMailSmartRepliesAllowed") ^ 1}];

    v3 = MFComposeLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = 138543874;
      v7 = v5;
      v8 = 2048;
      v9 = WeakRetained;
      v10 = 1024;
      v11 = [WeakRetained isSmartReplyRestricted];
      _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [SmartReply] update, isSmartReplyRestricted=%{BOOL}d", &v6, 0x1Cu);
    }
  }
}

- (void)expandQuickReplyToFullComposeAndPerformAction:(int64_t)action additionalUserInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __92__MFMailComposeController_expandQuickReplyToFullComposeAndPerformAction_additionalUserInfo___block_invoke;
  v11 = &unk_1E806F5E8;
  objc_copyWeak(v13, &location);
  v13[1] = action;
  v7 = infoCopy;
  v12 = v7;
  [(MFMailComposeController *)self setDidSaveQuickReplyDraftHandler:&v8];
  [(MFMailComposeController *)self _draftContentDidChange:v8];
  [(MFMailComposeController *)self backUpDraft];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __92__MFMailComposeController_expandQuickReplyToFullComposeAndPerformAction_additionalUserInfo___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v16 = WeakRetained;
    v5 = [WeakRetained userActivity];
    v6 = [v5 userInfo];
    v7 = [v6 mutableCopy];

    v8 = [v16 autosaveIdentifier];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69ADC18]];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69ADC20]];

    [v7 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69ADC28]];
    [v5 setUserInfo:v7];
    v10 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 UUIDString];
    }

    v11 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
    [v5 setTargetContentIdentifier:v11];

    if (!v8)
    {
    }

    v12 = [v16 mailComposeView];
    v13 = [v12 firstResponder];
    [v13 resignFirstResponder];

    v14 = [v16 quickReplyDelegate];
    v15 = [v16 userActivity];
    [v14 mailComposeController:v16 migrateToFullCompose:v15];

    WeakRetained = v16;
  }
}

- (void)_performDeferredActionIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  compositionContext = [(MFMailComposeController *)self compositionContext];
  deferredAction = [compositionContext deferredAction];

  compositionContext2 = [(MFMailComposeController *)self compositionContext];
  [compositionContext2 setDeferredAction:0];

  compositionContext3 = [(MFMailComposeController *)self compositionContext];
  deferredActionUserInfo = [compositionContext3 deferredActionUserInfo];

  compositionContext4 = [(MFMailComposeController *)self compositionContext];
  [compositionContext4 setDeferredActionUserInfo:0];

  if (deferredAction)
  {
    v9 = EMLogCompose();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134349056;
      v15 = deferredAction;
      _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "Will perform delayed action: %{public}ld", &v14, 0xCu);
    }

    v10 = [deferredActionUserInfo objectForKeyedSubscript:*MEMORY[0x1E69ADC30]];
    v11 = [deferredActionUserInfo objectForKeyedSubscript:*MEMORY[0x1E69ADC48]];
    if (deferredAction == 1)
    {
      mailComposeView = [(MFMailComposeController *)self mailComposeView];
      composeWebView = [mailComposeView composeWebView];
      [composeWebView becomeFirstResponder];

      -[MFMailComposeController setCaretPosition:](self, "setCaretPosition:", [v10 unsignedIntValue]);
    }

    else if (deferredAction != 2)
    {
      goto LABEL_9;
    }

    [(MFMailComposeController *)self _updateAndStartCompletingCcFieldWithMissingRecipients:v11];
LABEL_9:
  }
}

- (void)takeSnapshotWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  composeWebView = [(MFMailComposeController *)self composeWebView];
  [composeWebView takeSnapshotWithConfiguration:0 completionHandler:handlerCopy];
}

- (void)_performBlockWithStrongComposeCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);
  if (WeakRetained)
  {
    coordinatorCopy[2](coordinatorCopy, WeakRetained);
  }
}

- (BOOL)_canUseOrnamentViewController
{
  composeCoordinator = [(MFMailComposeController *)self composeCoordinator];

  return composeCoordinator == 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MFMailComposeControllerQuickReplyDelegate)quickReplyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quickReplyDelegate);

  return WeakRetained;
}

- (MFMailComposeControllerQuickReplyActionButtonProvider)quickReplyActionButtonProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_quickReplyActionButtonProvider);

  return WeakRetained;
}

- (MFMailComposeCoordinator)composeCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);

  return WeakRetained;
}

- (VNDocumentCameraViewController)documentCameraViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_documentCameraViewController);

  return WeakRetained;
}

- (QLPreviewController)previewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewController);

  return WeakRetained;
}

- (void)markupAttachment:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__MFMailComposeController_documentCameraViewController_didFinishWithScan___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#CompositionServices Unable to convert scanned document to PDF document: %{public}@", v5);
}

- (void)_insertDrawingFromExternalURL:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#Attachments Error unable to create temp directory: %{public}@", v5);
}

- (void)_insertDrawingFromExternalURL:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#Attachments Error unable to copy file: %{public}@", v5);
}

- (void)_deleteFileAtURLIfInTmp:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_0(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v6, v7, "#CompositionServices Error while deleting temporary file at path: %@", v8);
}

- (void)_checkForInvalidAddressesWithContinuation:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.8382e-34);
  _os_log_error_impl(&dword_1BE819000, v5, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Abort send -- found invalid recipient address", v4, 0x16u);
}

- (void)_checkForEmptySubjectWithContinuation:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.8382e-34);
  _os_log_error_impl(&dword_1BE819000, v5, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Abort send -- Subject is empty", v4, 0x16u);
}

void __114__MFMailComposeController__checkForOmittedRecipientsOrAttachmentsIfNeededFromPresentationSource_withContinuation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__MFMailComposeController__checkForShareParticipantsWithContinuation___block_invoke_853_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendMessage:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleLargeMessageComposeHandoffWithInputStream:outputStream:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#Hand-Off Error getting compose handoff streams: %{public}@", v5);
}

- (void)userActivity:didReceiveInputStream:outputStream:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)activityHandoffOperation:didFinishReceivingData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)activityHandoffOperation:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v3, v4, "#Hand-Off Delegate; error continuing: %{public}@", v5);
}

- (void)composeWebViewDidTerminate:.cold.1()
{
  OUTLINED_FUNCTION_4();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1 & 1;
  _os_log_error_impl(&dword_1BE819000, v5, OS_LOG_TYPE_ERROR, "Webview did terminate the delegate call in MFMailComposeViewDelegate: autosaveID %@, autosaveIsValid %{BOOL}d", v4, 0x12u);
}

- (void)_configureSender:asSourceForPopoverPresentationController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end