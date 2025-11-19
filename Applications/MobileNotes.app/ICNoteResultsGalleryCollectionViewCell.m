@interface ICNoteResultsGalleryCollectionViewCell
+ (ICNoteResultsGalleryCollectionViewCell)sizingCell;
+ (double)heightForItemWidth:(double)a3 showsParticipantsInfo:(BOOL)a4 showsFolderAndOrAccountName:(BOOL)a5;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICNoteResultsGalleryCollectionViewCell)initWithCoder:(id)a3;
- (ICNoteResultsImageBadgeView)pinnedBadgeView;
- (ICNoteResultsSelectionIndicatorView)selectionIndicatorView;
- (ICNoteResultsThumbnailView)thumbnailView;
- (NSLayoutConstraint)thumbnailTitleSpacerHeightConstraint;
- (UIImageView)folderImageView;
- (UIImageView)statusIndicatorImageView;
- (UILabel)folderAndAccountLabel;
- (UILabel)participantsLabel;
- (UILabel)summaryLabel;
- (UILabel)titleLabel;
- (UIStackView)folderAndAccountLabelStackView;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)primaryFont;
- (id)secondaryFont;
- (void)awakeFromNib;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateConstraints;
- (void)updateFromConfiguration;
- (void)updateSelectionIndicator;
- (void)updateThumbnail;
- (void)updateViewStateProperties;
@end

@implementation ICNoteResultsGalleryCollectionViewCell

- (ICNoteResultsGalleryCollectionViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsGalleryCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithCoder:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)awakeFromNib
{
  v16.receiver = self;
  v16.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v16 awakeFromNib];
  v3 = +[UIBackgroundConfiguration clearConfiguration];
  [(ICNoteResultsGalleryCollectionViewCell *)self setBackgroundConfiguration:v3];
  v4 = [(ICNoteResultsGalleryCollectionViewCell *)self primaryFont];
  v5 = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(ICNoteResultsGalleryCollectionViewCell *)self secondaryFont];
  v7 = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
  [v7 setFont:v6];

  v8 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [v8 setFont:v6];

  v9 = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
  [v9 setFont:v6];

  v10 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  v11 = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
  [v10 bringSubviewToFront:v11];

  v12 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  v13 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [v12 bringSubviewToFront:v13];

  v14 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  v15 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  [v14 bringSubviewToFront:v15];

  [(ICNoteResultsGalleryCollectionViewCell *)self updateViewStateProperties];
}

- (void)updateConstraints
{
  v5.receiver = self;
  v5.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v5 updateConstraints];
  v3 = 8.0;
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    if ([(ICNoteResultsGalleryCollectionViewCell *)self ic_hasCompactWidth])
    {
      v3 = 10.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  v4 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailTitleSpacerHeightConstraint];
  [v4 setConstant:v3];
}

- (id)primaryFont
{
  v2 = [(ICNoteResultsGalleryCollectionViewCell *)self ic_hasCompactWidth];
  v3 = &UIFontTextStyleSubheadline;
  if (!v2)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = [UIFont ic_preferredFontForStyle:*v3 symbolicTraits:0x8000];
  v5 = [v4 ic_fontWithSingleLineA];

  return v5;
}

- (id)secondaryFont
{
  v3 = &UIFontTextStyleFootnote;
  if ((+[UIDevice ic_isVision]& 1) == 0 && ![(ICNoteResultsGalleryCollectionViewCell *)self ic_hasCompactWidth])
  {
    v3 = &UIFontTextStyleSubheadline;
  }

  v4 = [UIFont ic_preferredFontForStyle:*v3 symbolicTraits:0x8000];
  v5 = [v4 ic_fontWithSingleLineA];

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v5 layoutSubviews];
  [(ICNoteResultsGalleryCollectionViewCell *)self bounds];
  Width = CGRectGetWidth(v6);
  v4 = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [v4 setPreferredMaxLayoutWidth:Width];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v4 dealloc];
}

+ (double)heightForItemWidth:(double)a3 showsParticipantsInfo:(BOOL)a4 showsFolderAndOrAccountName:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = +[UITraitCollection currentTraitCollection];
  v10 = [v9 horizontalSizeClass];
  v11 = [a1 sizingCell];
  v12 = [v11 traitOverrides];
  [v12 setHorizontalSizeClass:v10];

  v13 = +[UITraitCollection currentTraitCollection];
  v14 = [v13 verticalSizeClass];
  v15 = [a1 sizingCell];
  v16 = [v15 traitOverrides];
  [v16 setVerticalSizeClass:v14];

  v17 = [a1 sizingCell];
  [v17 updateTraitsIfNeeded];

  v18 = [ICNoteResultsCellConfiguration sizingConfigurationWithShowParticipantsInfo:v6 showsFolderName:v5];
  v19 = [a1 sizingCell];
  [v19 setConfiguration:v18];

  v20 = [a1 sizingCell];
  [v20 updateFromConfiguration];

  v21 = [a1 sizingCell];
  LODWORD(v22) = 1148846080;
  LODWORD(v23) = 1112014848;
  [v21 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v22, v23}];
  v25 = v24;

  return v25;
}

- (void)updateViewStateProperties
{
  v5.receiver = self;
  v5.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v5 updateViewStateProperties];
  v3 = [(ICNoteResultsGalleryCollectionViewCell *)self secondaryFont];
  v4 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [v4 setFont:v3];

  [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
}

- (void)updateFromConfiguration
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v4 = [v3 showParticipantsInfo];
  v5 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [v5 setHidden:v4 ^ 1];

  v6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v7 = [v6 showFolderName];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v8 = [v5 showAccountName] ^ 1;
  }

  v9 = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabelStackView];
  [v9 setHidden:v8];

  if ((v7 & 1) == 0)
  {
  }

  v10 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v11 = [v10 isDataLoaded];

  v12 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    v34 = [v12 note];
    v35 = [v34 title];
    v36 = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
    [v36 setText:v35];

    v37 = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
    [v37 setText:@" "];

    v38 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    LODWORD(v34) = [v38 showParticipantsInfo];

    if (v34)
    {
      v39 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
      [v39 setText:@" "];
    }

    v40 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v41 = [v40 showsNoteContainer];

    if (v41)
    {
      v42 = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
      [v42 setText:@" "];
    }

    v43 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [v43 setHidden:1];

    v44 = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
    [v44 setHidden:1];

    v45 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    v46 = v45;
    goto LABEL_19;
  }

  v14 = [v12 titleString];
  v15 = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [v15 setText:v14];

  v16 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v17 = [v16 dateString];
  v18 = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
  [v18 setText:v17];

  v19 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v20 = [v19 participantsInfoString];
  v21 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [v21 setText:v20];

  v22 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v23 = [v22 folderAndAccountInfoString];
  v24 = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
  [v24 setText:v23];

  v25 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v26 = [v25 folderImage];
  v27 = [(ICNoteResultsGalleryCollectionViewCell *)self folderImageView];
  [v27 setImage:v26];

  v28 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  LODWORD(v26) = [v28 showUnreadIndicator];

  v29 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
  v30 = v29;
  if (v26)
  {
    [v29 setHidden:0];

    v31 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v32 = [v31 unreadIndicatorImage];
    v33 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [v33 setImage:v32];
  }

  else
  {
    [v29 setHidden:1];

    v47 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    v48 = [v47 image];

    if (!v48)
    {
      goto LABEL_17;
    }

    v31 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [v31 setImage:0];
  }

LABEL_17:
  v49 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v50 = [v49 showPinnedBadge];
  v51 = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
  [v51 setHidden:v50 ^ 1];

  v52 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v53 = [v52 showCollaboratorsBadge];

  v45 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  v46 = v45;
  if (v53)
  {
    [v45 setHidden:0];

    v54 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v46 = [v54 note];

    objc_opt_class();
    v55 = ICDynamicCast();
    v56 = [v55 serverShareCheckingParent];
    v57 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    [v57 setShare:v56];

    goto LABEL_20;
  }

LABEL_19:
  [v45 setHidden:1];
LABEL_20:

  [(ICNoteResultsGalleryCollectionViewCell *)self updateThumbnail];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v3 = qword_1006CB378;
  if (qword_1006CB378)
  {
    qword_1006CB378 = 0;

    qword_1006CB380 = 0;
  }
}

- (void)updateThumbnail
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v4 = [v3 note];
  v5 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  [v5 setNote:v4];

  v8 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v6 = [v8 invitation];
  v7 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  [v7 setInvitation:v6];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteResultsGalleryCollectionViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
  }
}

- (void)setEditing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v4 setEditing:a3];
  [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
}

- (id)accessibilityLabel
{
  v2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v13.receiver = self;
  v13.super_class = ICNoteResultsGalleryCollectionViewCell;
  v3 = [(ICNoteResultsGalleryCollectionViewCell *)&v13 accessibilityValue];
  v4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v5 = [v4 showCollaboratorsBadge];

  if (v5)
  {
    v6 = [(ICBaseNoteResultsCollectionViewCell *)self cloudSharingParticipantNames];
    if ([v6 count])
    {
      v7 = [v6 componentsJoinedByString:{@", "}];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Note participants: %@" value:&stru_100661CF0 table:0];

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
  v3 = [(ICNoteResultsGalleryCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICNoteResultsGalleryCollectionViewCell *)self accessibilityCustomActionsDelegate];
    v6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v7 = [v6 note];
    v8 = [v7 objectID];
    v9 = [v5 customAccessibilityActionsForObjectID:v8 galleryView:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accessibilityCustomContent
{
  v3 = +[NSMutableArray array];
  objc_opt_class();
  v4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v5 = [v4 note];
  v6 = ICDynamicCast();
  v7 = [v6 icaxGalleryViewCustomContentDescription];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Thumbnail description" value:&stru_100661CF0 table:0];

    v10 = [AXCustomContent customContentWithLabel:v9 value:v7];
    [v3 addObject:v10];
  }

  return v3;
}

+ (ICNoteResultsGalleryCollectionViewCell)sizingCell
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEBE4;
  block[3] = &unk_100648758;
  block[4] = a1;
  if (qword_1006CB380 != -1)
  {
    dispatch_once(&qword_1006CB380, block);
  }

  v2 = qword_1006CB378;

  return v2;
}

- (void)updateSelectionIndicator
{
  v3 = [(ICNoteResultsGalleryCollectionViewCell *)self isEditing];
  v4 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [v4 setHidden:v3 ^ 1];

  v5 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  LODWORD(v4) = [v5 isSelected];
  if (v4 == [(ICNoteResultsGalleryCollectionViewCell *)self isSelected])
  {
    v6 = [(ICNoteResultsGalleryCollectionViewCell *)self isEditing];

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v7 = [(ICNoteResultsGalleryCollectionViewCell *)self isSelected];
  v8 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [v8 setSelected:v7];

LABEL_5:
  if (![(ICNoteResultsGalleryCollectionViewCell *)self isEditing])
  {
    if ([(ICNoteResultsGalleryCollectionViewCell *)self isFocused]&& ([(ICNoteResultsGalleryCollectionViewCell *)self isSelected]& 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
    v10 = [v9 layer];
    [v10 setBorderWidth:1.0];

    v11 = +[UIColor quaternaryLabelColor];
    goto LABEL_12;
  }

  if (([(ICNoteResultsGalleryCollectionViewCell *)self isSelected]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  v13 = [v12 layer];
  [v13 setBorderWidth:2.0];

  v11 = [(ICNoteResultsGalleryCollectionViewCell *)self tintColor];
LABEL_12:
  v18 = v11;
  v14 = v11;
  v15 = [v18 CGColor];
  v16 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  v17 = [v16 layer];
  [v17 setBorderColor:v15];
}

- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityCustomActionsDelegate);

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

- (UILabel)participantsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_participantsLabel);

  return WeakRetained;
}

- (UILabel)folderAndAccountLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_folderAndAccountLabel);

  return WeakRetained;
}

- (UIImageView)folderImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderImageView);

  return WeakRetained;
}

- (UIStackView)folderAndAccountLabelStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderAndAccountLabelStackView);

  return WeakRetained;
}

- (ICNoteResultsImageBadgeView)pinnedBadgeView
{
  WeakRetained = objc_loadWeakRetained(&self->_pinnedBadgeView);

  return WeakRetained;
}

- (ICNoteResultsSelectionIndicatorView)selectionIndicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionIndicatorView);

  return WeakRetained;
}

- (UIImageView)statusIndicatorImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_statusIndicatorImageView);

  return WeakRetained;
}

- (ICNoteResultsThumbnailView)thumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);

  return WeakRetained;
}

- (NSLayoutConstraint)thumbnailTitleSpacerHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailTitleSpacerHeightConstraint);

  return WeakRetained;
}

@end