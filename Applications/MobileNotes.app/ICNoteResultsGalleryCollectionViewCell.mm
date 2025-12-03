@interface ICNoteResultsGalleryCollectionViewCell
+ (ICNoteResultsGalleryCollectionViewCell)sizingCell;
+ (double)heightForItemWidth:(double)width showsParticipantsInfo:(BOOL)info showsFolderAndOrAccountName:(BOOL)name;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICNoteResultsGalleryCollectionViewCell)initWithCoder:(id)coder;
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
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)editing;
- (void)setSelected:(BOOL)selected;
- (void)updateConstraints;
- (void)updateFromConfiguration;
- (void)updateSelectionIndicator;
- (void)updateThumbnail;
- (void)updateViewStateProperties;
@end

@implementation ICNoteResultsGalleryCollectionViewCell

- (ICNoteResultsGalleryCollectionViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsGalleryCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithCoder:coder];
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
  primaryFont = [(ICNoteResultsGalleryCollectionViewCell *)self primaryFont];
  titleLabel = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [titleLabel setFont:primaryFont];

  secondaryFont = [(ICNoteResultsGalleryCollectionViewCell *)self secondaryFont];
  summaryLabel = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
  [summaryLabel setFont:secondaryFont];

  participantsLabel = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [participantsLabel setFont:secondaryFont];

  folderAndAccountLabel = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
  [folderAndAccountLabel setFont:secondaryFont];

  thumbnailView = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  pinnedBadgeView = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
  [thumbnailView bringSubviewToFront:pinnedBadgeView];

  thumbnailView2 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  selectionIndicatorView = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [thumbnailView2 bringSubviewToFront:selectionIndicatorView];

  thumbnailView3 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  collaboratorsBadgeView = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  [thumbnailView3 bringSubviewToFront:collaboratorsBadgeView];

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

  thumbnailTitleSpacerHeightConstraint = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailTitleSpacerHeightConstraint];
  [thumbnailTitleSpacerHeightConstraint setConstant:v3];
}

- (id)primaryFont
{
  ic_hasCompactWidth = [(ICNoteResultsGalleryCollectionViewCell *)self ic_hasCompactWidth];
  v3 = &UIFontTextStyleSubheadline;
  if (!ic_hasCompactWidth)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = [UIFont ic_preferredFontForStyle:*v3 symbolicTraits:0x8000];
  ic_fontWithSingleLineA = [v4 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

- (id)secondaryFont
{
  v3 = &UIFontTextStyleFootnote;
  if ((+[UIDevice ic_isVision]& 1) == 0 && ![(ICNoteResultsGalleryCollectionViewCell *)self ic_hasCompactWidth])
  {
    v3 = &UIFontTextStyleSubheadline;
  }

  v4 = [UIFont ic_preferredFontForStyle:*v3 symbolicTraits:0x8000];
  ic_fontWithSingleLineA = [v4 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v5 layoutSubviews];
  [(ICNoteResultsGalleryCollectionViewCell *)self bounds];
  Width = CGRectGetWidth(v6);
  titleLabel = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:Width];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v4 dealloc];
}

+ (double)heightForItemWidth:(double)width showsParticipantsInfo:(BOOL)info showsFolderAndOrAccountName:(BOOL)name
{
  nameCopy = name;
  infoCopy = info;
  v9 = +[UITraitCollection currentTraitCollection];
  horizontalSizeClass = [v9 horizontalSizeClass];
  sizingCell = [self sizingCell];
  traitOverrides = [sizingCell traitOverrides];
  [traitOverrides setHorizontalSizeClass:horizontalSizeClass];

  v13 = +[UITraitCollection currentTraitCollection];
  verticalSizeClass = [v13 verticalSizeClass];
  sizingCell2 = [self sizingCell];
  traitOverrides2 = [sizingCell2 traitOverrides];
  [traitOverrides2 setVerticalSizeClass:verticalSizeClass];

  sizingCell3 = [self sizingCell];
  [sizingCell3 updateTraitsIfNeeded];

  v18 = [ICNoteResultsCellConfiguration sizingConfigurationWithShowParticipantsInfo:infoCopy showsFolderName:nameCopy];
  sizingCell4 = [self sizingCell];
  [sizingCell4 setConfiguration:v18];

  sizingCell5 = [self sizingCell];
  [sizingCell5 updateFromConfiguration];

  sizingCell6 = [self sizingCell];
  LODWORD(v22) = 1148846080;
  LODWORD(v23) = 1112014848;
  [sizingCell6 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v22, v23}];
  v25 = v24;

  return v25;
}

- (void)updateViewStateProperties
{
  v5.receiver = self;
  v5.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v5 updateViewStateProperties];
  secondaryFont = [(ICNoteResultsGalleryCollectionViewCell *)self secondaryFont];
  participantsLabel = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [participantsLabel setFont:secondaryFont];

  [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
}

- (void)updateFromConfiguration
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showParticipantsInfo = [configuration showParticipantsInfo];
  participantsLabel = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [participantsLabel setHidden:showParticipantsInfo ^ 1];

  configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showFolderName = [configuration2 showFolderName];
  if (showFolderName)
  {
    v8 = 0;
  }

  else
  {
    participantsLabel = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v8 = [participantsLabel showAccountName] ^ 1;
  }

  folderAndAccountLabelStackView = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabelStackView];
  [folderAndAccountLabelStackView setHidden:v8];

  if ((showFolderName & 1) == 0)
  {
  }

  configuration3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  isDataLoaded = [configuration3 isDataLoaded];

  configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v13 = configuration4;
  if ((isDataLoaded & 1) == 0)
  {
    note = [configuration4 note];
    title = [note title];
    titleLabel = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
    [titleLabel setText:title];

    summaryLabel = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
    [summaryLabel setText:@" "];

    configuration5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    LODWORD(note) = [configuration5 showParticipantsInfo];

    if (note)
    {
      participantsLabel2 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
      [participantsLabel2 setText:@" "];
    }

    configuration6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showsNoteContainer = [configuration6 showsNoteContainer];

    if (showsNoteContainer)
    {
      folderAndAccountLabel = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
      [folderAndAccountLabel setText:@" "];
    }

    statusIndicatorImageView = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [statusIndicatorImageView setHidden:1];

    pinnedBadgeView = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
    [pinnedBadgeView setHidden:1];

    collaboratorsBadgeView = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    note2 = collaboratorsBadgeView;
    goto LABEL_19;
  }

  titleString = [configuration4 titleString];
  titleLabel2 = [(ICNoteResultsGalleryCollectionViewCell *)self titleLabel];
  [titleLabel2 setText:titleString];

  configuration7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  dateString = [configuration7 dateString];
  summaryLabel2 = [(ICNoteResultsGalleryCollectionViewCell *)self summaryLabel];
  [summaryLabel2 setText:dateString];

  configuration8 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  participantsInfoString = [configuration8 participantsInfoString];
  participantsLabel3 = [(ICNoteResultsGalleryCollectionViewCell *)self participantsLabel];
  [participantsLabel3 setText:participantsInfoString];

  configuration9 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  folderAndAccountInfoString = [configuration9 folderAndAccountInfoString];
  folderAndAccountLabel2 = [(ICNoteResultsGalleryCollectionViewCell *)self folderAndAccountLabel];
  [folderAndAccountLabel2 setText:folderAndAccountInfoString];

  configuration10 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  folderImage = [configuration10 folderImage];
  folderImageView = [(ICNoteResultsGalleryCollectionViewCell *)self folderImageView];
  [folderImageView setImage:folderImage];

  configuration11 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  LODWORD(folderImage) = [configuration11 showUnreadIndicator];

  statusIndicatorImageView2 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
  v30 = statusIndicatorImageView2;
  if (folderImage)
  {
    [statusIndicatorImageView2 setHidden:0];

    configuration12 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    unreadIndicatorImage = [configuration12 unreadIndicatorImage];
    statusIndicatorImageView3 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [statusIndicatorImageView3 setImage:unreadIndicatorImage];
  }

  else
  {
    [statusIndicatorImageView2 setHidden:1];

    statusIndicatorImageView4 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    image = [statusIndicatorImageView4 image];

    if (!image)
    {
      goto LABEL_17;
    }

    configuration12 = [(ICNoteResultsGalleryCollectionViewCell *)self statusIndicatorImageView];
    [configuration12 setImage:0];
  }

LABEL_17:
  configuration13 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showPinnedBadge = [configuration13 showPinnedBadge];
  pinnedBadgeView2 = [(ICNoteResultsGalleryCollectionViewCell *)self pinnedBadgeView];
  [pinnedBadgeView2 setHidden:showPinnedBadge ^ 1];

  configuration14 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showCollaboratorsBadge = [configuration14 showCollaboratorsBadge];

  collaboratorsBadgeView = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  note2 = collaboratorsBadgeView;
  if (showCollaboratorsBadge)
  {
    [collaboratorsBadgeView setHidden:0];

    configuration15 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    note2 = [configuration15 note];

    objc_opt_class();
    v55 = ICDynamicCast();
    serverShareCheckingParent = [v55 serverShareCheckingParent];
    collaboratorsBadgeView2 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
    [collaboratorsBadgeView2 setShare:serverShareCheckingParent];

    goto LABEL_20;
  }

LABEL_19:
  [collaboratorsBadgeView setHidden:1];
LABEL_20:

  [(ICNoteResultsGalleryCollectionViewCell *)self updateThumbnail];
}

- (void)contentSizeCategoryDidChange:(id)change
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
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  note = [configuration note];
  thumbnailView = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  [thumbnailView setNote:note];

  configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  invitation = [configuration2 invitation];
  thumbnailView2 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  [thumbnailView2 setInvitation:invitation];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(ICNoteResultsGalleryCollectionViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v6 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
  }
}

- (void)setEditing:(BOOL)editing
{
  v4.receiver = self;
  v4.super_class = ICNoteResultsGalleryCollectionViewCell;
  [(ICNoteResultsGalleryCollectionViewCell *)&v4 setEditing:editing];
  [(ICNoteResultsGalleryCollectionViewCell *)self updateSelectionIndicator];
}

- (id)accessibilityLabel
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  accessibilityLabel = [configuration accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v13.receiver = self;
  v13.super_class = ICNoteResultsGalleryCollectionViewCell;
  accessibilityValue = [(ICNoteResultsGalleryCollectionViewCell *)&v13 accessibilityValue];
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showCollaboratorsBadge = [configuration showCollaboratorsBadge];

  if (showCollaboratorsBadge)
  {
    cloudSharingParticipantNames = [(ICBaseNoteResultsCollectionViewCell *)self cloudSharingParticipantNames];
    if ([cloudSharingParticipantNames count])
    {
      v7 = [cloudSharingParticipantNames componentsJoinedByString:{@", "}];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Note participants: %@" value:&stru_100661CF0 table:0];

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
  accessibilityCustomActionsDelegate = [(ICNoteResultsGalleryCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    accessibilityCustomActionsDelegate2 = [(ICNoteResultsGalleryCollectionViewCell *)self accessibilityCustomActionsDelegate];
    configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    note = [configuration note];
    objectID = [note objectID];
    v9 = [accessibilityCustomActionsDelegate2 customAccessibilityActionsForObjectID:objectID galleryView:1];
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
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  note = [configuration note];
  v6 = ICDynamicCast();
  icaxGalleryViewCustomContentDescription = [v6 icaxGalleryViewCustomContentDescription];

  if (icaxGalleryViewCustomContentDescription)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Thumbnail description" value:&stru_100661CF0 table:0];

    v10 = [AXCustomContent customContentWithLabel:v9 value:icaxGalleryViewCustomContentDescription];
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
  block[4] = self;
  if (qword_1006CB380 != -1)
  {
    dispatch_once(&qword_1006CB380, block);
  }

  v2 = qword_1006CB378;

  return v2;
}

- (void)updateSelectionIndicator
{
  isEditing = [(ICNoteResultsGalleryCollectionViewCell *)self isEditing];
  selectionIndicatorView = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [selectionIndicatorView setHidden:isEditing ^ 1];

  selectionIndicatorView2 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  LODWORD(selectionIndicatorView) = [selectionIndicatorView2 isSelected];
  if (selectionIndicatorView == [(ICNoteResultsGalleryCollectionViewCell *)self isSelected])
  {
    isEditing2 = [(ICNoteResultsGalleryCollectionViewCell *)self isEditing];

    if ((isEditing2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  isSelected = [(ICNoteResultsGalleryCollectionViewCell *)self isSelected];
  selectionIndicatorView3 = [(ICNoteResultsGalleryCollectionViewCell *)self selectionIndicatorView];
  [selectionIndicatorView3 setSelected:isSelected];

LABEL_5:
  if (![(ICNoteResultsGalleryCollectionViewCell *)self isEditing])
  {
    if ([(ICNoteResultsGalleryCollectionViewCell *)self isFocused]&& ([(ICNoteResultsGalleryCollectionViewCell *)self isSelected]& 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    thumbnailView = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
    layer = [thumbnailView layer];
    [layer setBorderWidth:1.0];

    tintColor = +[UIColor quaternaryLabelColor];
    goto LABEL_12;
  }

  if (([(ICNoteResultsGalleryCollectionViewCell *)self isSelected]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  thumbnailView2 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  layer2 = [thumbnailView2 layer];
  [layer2 setBorderWidth:2.0];

  tintColor = [(ICNoteResultsGalleryCollectionViewCell *)self tintColor];
LABEL_12:
  v18 = tintColor;
  v14 = tintColor;
  cGColor = [v18 CGColor];
  thumbnailView3 = [(ICNoteResultsGalleryCollectionViewCell *)self thumbnailView];
  layer3 = [thumbnailView3 layer];
  [layer3 setBorderColor:cGColor];
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