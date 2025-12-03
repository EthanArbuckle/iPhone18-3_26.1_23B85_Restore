@interface ICNoteBrowseGalleryFolderCollectionViewCell
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICNoteBrowseFolderThumbnailView)thumbnailView;
- (ICNoteResultsImageBadgeView)smartFolderBadgeView;
- (NSLayoutConstraint)thumbnailTitleSpaceConstraint;
- (UILabel)summaryLabel;
- (UILabel)titleLabel;
- (UIView)contextMenuInteractionPreview;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setFolder:(id)folder;
- (void)updateFocusEffect;
- (void)updateFromConfiguration;
- (void)updateTextAndStatus;
- (void)updateThumbnail;
- (void)updateUI;
@end

@implementation ICNoteBrowseGalleryFolderCollectionViewCell

- (void)awakeFromNib
{
  v19.receiver = self;
  v19.super_class = ICNoteBrowseGalleryFolderCollectionViewCell;
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)&v19 awakeFromNib];
  smartFolderBadgeView = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self smartFolderBadgeView];
  [smartFolderBadgeView setSystemImageName:@"gearshape.fill"];

  ic_hasCompactWidth = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_hasCompactWidth];
  v5 = UIFontTextStyleBody;
  if (ic_hasCompactWidth)
  {
    v5 = UIFontTextStyleSubheadline;
  }

  v6 = v5;
  v7 = [UIFont ic_preferredFontForStyle:v6 symbolicTraits:0x8000];
  ic_fontWithSingleLineA = [v7 ic_fontWithSingleLineA];

  titleLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  [titleLabel setFont:ic_fontWithSingleLineA];

  if (+[UIDevice ic_isVision])
  {
    v10 = UIFontTextStyleFootnote;
  }

  else
  {
    ic_hasCompactWidth2 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_hasCompactWidth];
    v10 = UIFontTextStyleCaption1;
    if (!ic_hasCompactWidth2)
    {
      v10 = UIFontTextStyleSubheadline;
    }
  }

  v12 = v10;
  v13 = [UIFont ic_preferredFontForStyle:v12 symbolicTraits:0x8000];
  ic_fontWithSingleLineA2 = [v13 ic_fontWithSingleLineA];

  summaryLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  [summaryLabel setFont:ic_fontWithSingleLineA2];

  v16 = +[UIBackgroundConfiguration clearConfiguration];
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self setBackgroundConfiguration:v16];

  v17 = 8.0;
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    if ([(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_hasCompactWidth])
    {
      v17 = 10.0;
    }

    else
    {
      v17 = 12.0;
    }
  }

  thumbnailTitleSpaceConstraint = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailTitleSpaceConstraint];
  [thumbnailTitleSpaceConstraint setConstant:v17];
}

- (void)updateFromConfiguration
{
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateTextAndStatus];

  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateThumbnail];
}

- (void)setFolder:(id)folder
{
  objc_storeStrong(&self->_folder, folder);

  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateUI];
}

- (UIView)contextMenuInteractionPreview
{
  thumbnailView = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  contextMenuInteractionPreview = [thumbnailView contextMenuInteractionPreview];

  return contextMenuInteractionPreview;
}

- (void)updateTextAndStatus
{
  folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  localizedTitle = [folder localizedTitle];
  titleLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  [titleLabel setText:localizedTitle];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"%lu Notes" value:&stru_100661CF0 table:0];
  folder2 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  visibleNotes = [folder2 visibleNotes];
  v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v7, [visibleNotes count]);
  summaryLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  [summaryLabel setText:v10];

  folder3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  LODWORD(v10) = [folder3 isSharedRootObject];

  collaboratorsBadgeView = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  folder4 = collaboratorsBadgeView;
  if (v10)
  {
    [collaboratorsBadgeView setHidden:0];

    folder4 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
    serverShareCheckingParent = [folder4 serverShareCheckingParent];
    collaboratorsBadgeView2 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    [collaboratorsBadgeView2 setShare:serverShareCheckingParent];
  }

  else
  {
    [collaboratorsBadgeView setHidden:1];
  }

  folder5 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  isSmartFolder = [folder5 isSmartFolder];
  smartFolderBadgeView = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self smartFolderBadgeView];
  [smartFolderBadgeView setHidden:isSmartFolder ^ 1];
}

- (void)updateThumbnail
{
  folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  thumbnailView = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [thumbnailView setFolder:folder];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = [nextFocusedItem isEqual:self];

  if (v6)
  {

    [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateFocusEffect];
  }
}

- (id)accessibilityLabel
{
  folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  isSharedViaICloud = [folder isSharedViaICloud];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (isSharedViaICloud)
  {
    v7 = @"Shared Folder";
  }

  else
  {
    v7 = @"Folder";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100661CF0 table:0];

  titleLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  text = [titleLabel text];
  summaryLabel = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  text2 = [summaryLabel text];
  v12 = __ICAccessibilityStringForVariables();

  return v12;
}

- (id)accessibilityValue
{
  v13.receiver = self;
  v13.super_class = ICNoteBrowseGalleryFolderCollectionViewCell;
  accessibilityValue = [(ICNoteBrowseGalleryFolderCollectionViewCell *)&v13 accessibilityValue];
  folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  isSharedViaICloud = [folder isSharedViaICloud];

  if (isSharedViaICloud)
  {
    cloudSharingParticipantNames = [(ICBaseNoteResultsCollectionViewCell *)self cloudSharingParticipantNames];
    if ([cloudSharingParticipantNames count])
    {
      v7 = [cloudSharingParticipantNames componentsJoinedByString:{@", "}];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Folder participants: %@" value:&stru_100661CF0 table:0];

      v10 = [NSString localizedStringWithFormat:v9, v7];

      accessibilityValue = v10;
    }

    v11 = accessibilityValue;
  }

  else
  {
    v11 = accessibilityValue;
  }

  return v11;
}

- (id)accessibilityCustomActions
{
  accessibilityCustomActionsDelegate = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    accessibilityCustomActionsDelegate2 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self accessibilityCustomActionsDelegate];
    folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
    objectID = [folder objectID];
    v8 = [accessibilityCustomActionsDelegate2 customAccessibilityActionsForObjectID:objectID galleryView:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateUI
{
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateTextAndStatus];
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateThumbnail];
  folder = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_annotateWithFolder:folder];
}

- (void)updateFocusEffect
{
  thumbnailView = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [thumbnailView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  thumbnailView2 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [thumbnailView2 cornerRadius];
  v13 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v12];
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self setFocusEffect:v13];
}

- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityCustomActionsDelegate);

  return WeakRetained;
}

- (ICNoteResultsImageBadgeView)smartFolderBadgeView
{
  WeakRetained = objc_loadWeakRetained(&self->_smartFolderBadgeView);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)summaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryLabel);

  return WeakRetained;
}

- (ICNoteBrowseFolderThumbnailView)thumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);

  return WeakRetained;
}

- (NSLayoutConstraint)thumbnailTitleSpaceConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailTitleSpaceConstraint);

  return WeakRetained;
}

@end