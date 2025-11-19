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
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setFolder:(id)a3;
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
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self smartFolderBadgeView];
  [v3 setSystemImageName:@"gearshape.fill"];

  v4 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_hasCompactWidth];
  v5 = UIFontTextStyleBody;
  if (v4)
  {
    v5 = UIFontTextStyleSubheadline;
  }

  v6 = v5;
  v7 = [UIFont ic_preferredFontForStyle:v6 symbolicTraits:0x8000];
  v8 = [v7 ic_fontWithSingleLineA];

  v9 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  [v9 setFont:v8];

  if (+[UIDevice ic_isVision])
  {
    v10 = UIFontTextStyleFootnote;
  }

  else
  {
    v11 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_hasCompactWidth];
    v10 = UIFontTextStyleCaption1;
    if (!v11)
    {
      v10 = UIFontTextStyleSubheadline;
    }
  }

  v12 = v10;
  v13 = [UIFont ic_preferredFontForStyle:v12 symbolicTraits:0x8000];
  v14 = [v13 ic_fontWithSingleLineA];

  v15 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  [v15 setFont:v14];

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

  v18 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailTitleSpaceConstraint];
  [v18 setConstant:v17];
}

- (void)updateFromConfiguration
{
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateTextAndStatus];

  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateThumbnail];
}

- (void)setFolder:(id)a3
{
  objc_storeStrong(&self->_folder, a3);

  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateUI];
}

- (UIView)contextMenuInteractionPreview
{
  v2 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  v3 = [v2 contextMenuInteractionPreview];

  return v3;
}

- (void)updateTextAndStatus
{
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v4 = [v3 localizedTitle];
  v5 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  [v5 setText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"%lu Notes" value:&stru_100661CF0 table:0];
  v8 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v9 = [v8 visibleNotes];
  v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v7, [v9 count]);
  v11 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  [v11 setText:v10];

  v12 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  LODWORD(v10) = [v12 isSharedRootObject];

  v13 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  v14 = v13;
  if (v10)
  {
    [v13 setHidden:0];

    v14 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
    v15 = [v14 serverShareCheckingParent];
    v16 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    [v16 setShare:v15];
  }

  else
  {
    [v13 setHidden:1];
  }

  v19 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v17 = [v19 isSmartFolder];
  v18 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self smartFolderBadgeView];
  [v18 setHidden:v17 ^ 1];
}

- (void)updateThumbnail
{
  v4 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [v3 setFolder:v4];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [v5 isEqual:self];

  if (v6)
  {

    [(ICNoteBrowseGalleryFolderCollectionViewCell *)self updateFocusEffect];
  }
}

- (id)accessibilityLabel
{
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v4 = [v3 isSharedViaICloud];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"Shared Folder";
  }

  else
  {
    v7 = @"Folder";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100661CF0 table:0];

  v9 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self titleLabel];
  v10 = [v9 text];
  v11 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self summaryLabel];
  v14 = [v11 text];
  v12 = __ICAccessibilityStringForVariables();

  return v12;
}

- (id)accessibilityValue
{
  v13.receiver = self;
  v13.super_class = ICNoteBrowseGalleryFolderCollectionViewCell;
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)&v13 accessibilityValue];
  v4 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  v5 = [v4 isSharedViaICloud];

  if (v5)
  {
    v6 = [(ICBaseNoteResultsCollectionViewCell *)self cloudSharingParticipantNames];
    if ([v6 count])
    {
      v7 = [v6 componentsJoinedByString:{@", "}];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Folder participants: %@" value:&stru_100661CF0 table:0];

      v10 = [NSString localizedStringWithFormat:v9, v7];

      v3 = v10;
    }

    v11 = v3;
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (id)accessibilityCustomActions
{
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self accessibilityCustomActionsDelegate];
    v6 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
    v7 = [v6 objectID];
    v8 = [v5 customAccessibilityActionsForObjectID:v7 galleryView:1];
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
  v3 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self folder];
  [(ICNoteBrowseGalleryFolderCollectionViewCell *)self ic_annotateWithFolder:v3];
}

- (void)updateFocusEffect
{
  v14 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [v14 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ICNoteBrowseGalleryFolderCollectionViewCell *)self thumbnailView];
  [v11 cornerRadius];
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