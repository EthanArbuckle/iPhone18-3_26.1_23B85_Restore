@interface ICNoteResultsCellConfiguration
+ (NSManagedObjectContext)legacyBackgroundContext;
+ (NSManagedObjectContext)modernBackgroundContext;
+ (OS_dispatch_queue)loadDataQueue;
+ (id)sizingConfigurationWithShowParticipantsInfo:(BOOL)info showsFolderName:(BOOL)name;
- (BOOL)isLargerThanAXLarge;
- (BOOL)showsNoteContainer;
- (CGRect)estimatedSummaryLabelFrame;
- (CGRect)estimatedTitleLabelFrame;
- (ICNoteResultsCellConfiguration)initWithInvitation:(id)invitation;
- (ICNoteResultsCellConfiguration)initWithNote:(id)note;
- (ICNoteResultsCellConfiguration)initWithSearchResult:(id)result;
- (double)maxLengthForAttributes:(id)attributes frame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)symbolImageConfiguration;
- (void)clearData;
- (void)commonInit;
- (void)loadDataWithCompletion:(id)completion;
- (void)loadDataWithContext:(id)context;
- (void)loadInvitationDataWithContext:(id)context;
- (void)loadNoteDataWithContext:(id)context;
- (void)synchronouslyLoadData;
- (void)updateTitleLabelAttributes:(id)attributes summaryLabelAttributes:(id)labelAttributes;
- (void)updateTitleLabelAttributes:(id)attributes summaryLabelAttributes:(id)labelAttributes folderAndAccountLabelAttributes:(id)accountLabelAttributes estimatedTitleLabelFrame:(CGRect)frame estimatedSummaryLabelFrame:(CGRect)labelFrame;
@end

@implementation ICNoteResultsCellConfiguration

+ (NSManagedObjectContext)legacyBackgroundContext
{
  if (qword_1006CB3F8 != -1)
  {
    sub_1004E06F8();
  }

  v3 = qword_1006CB400;

  return v3;
}

+ (NSManagedObjectContext)modernBackgroundContext
{
  if (qword_1006CB408 != -1)
  {
    sub_1004E070C();
  }

  v3 = qword_1006CB410;

  return v3;
}

+ (OS_dispatch_queue)loadDataQueue
{
  if (qword_1006CB418 != -1)
  {
    sub_1004E0720();
  }

  v3 = qword_1006CB420;

  return v3;
}

- (ICNoteResultsCellConfiguration)initWithNote:(id)note
{
  noteCopy = note;
  v9.receiver = self;
  v9.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, note);
    [(ICNoteResultsCellConfiguration *)v7 commonInit];
  }

  return v7;
}

- (ICNoteResultsCellConfiguration)initWithSearchResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, result);
    v7->_showFolderName = 1;
    object = [resultCopy object];
    note = v7->_note;
    v7->_note = object;

    [(ICNoteResultsCellConfiguration *)v7 commonInit];
  }

  return v7;
}

- (ICNoteResultsCellConfiguration)initWithInvitation:(id)invitation
{
  invitationCopy = invitation;
  v9.receiver = self;
  v9.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invitation, invitation);
    v7->_showFolderName = 1;
    [(ICNoteResultsCellConfiguration *)v7 commonInit];
  }

  return v7;
}

- (void)commonInit
{
  self->_maxNumberOfLabelLines = 1;
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasThumbnailImage = [(ICSearchIndexableNote *)self->_note hasThumbnailImage];
    }

    else
    {
      hasThumbnailImage = 0;
    }

    self->_hasThumbnailImage = hasThumbnailImage;
  }
}

+ (id)sizingConfigurationWithShowParticipantsInfo:(BOOL)info showsFolderName:(BOOL)name
{
  nameCopy = name;
  infoCopy = info;
  v6 = objc_alloc_init(ICNoteResultsCellConfiguration);
  [(ICNoteResultsCellConfiguration *)v6 setShowFolderName:nameCopy];
  [(ICNoteResultsCellConfiguration *)v6 setIsDataLoaded:1];
  [(ICNoteResultsCellConfiguration *)v6 setTitleString:@"Two\nLines"];
  [(ICNoteResultsCellConfiguration *)v6 setParticipantsInfoString:@"Participants"];
  [(ICNoteResultsCellConfiguration *)v6 setFolderAndAccountInfoString:@"Folder"];
  [(ICNoteResultsCellConfiguration *)v6 setDateString:@"Date"];
  [(ICNoteResultsCellConfiguration *)v6 setShowParticipantsInfo:infoCopy];

  return v6;
}

- (void)updateTitleLabelAttributes:(id)attributes summaryLabelAttributes:(id)labelAttributes folderAndAccountLabelAttributes:(id)accountLabelAttributes estimatedTitleLabelFrame:(CGRect)frame estimatedSummaryLabelFrame:(CGRect)labelFrame
{
  height = labelFrame.size.height;
  width = labelFrame.size.width;
  y = labelFrame.origin.y;
  x = labelFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  attributesCopy = attributes;
  labelAttributesCopy = labelAttributes;
  accountLabelAttributesCopy = accountLabelAttributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ICNoteResultsCellConfiguration *)selfCopy setTitleLabelAttributes:attributesCopy];
  [(ICNoteResultsCellConfiguration *)selfCopy setSummaryLabelAttributes:labelAttributesCopy];
  [(ICNoteResultsCellConfiguration *)selfCopy setFolderAndAccountLabelAttributes:accountLabelAttributesCopy];
  [(ICNoteResultsCellConfiguration *)selfCopy setEstimatedTitleLabelFrame:v14, v13, v12, v11];
  [(ICNoteResultsCellConfiguration *)selfCopy setEstimatedSummaryLabelFrame:x, y, width, height];
  objc_sync_exit(selfCopy);
}

- (void)updateTitleLabelAttributes:(id)attributes summaryLabelAttributes:(id)labelAttributes
{
  attributesCopy = attributes;
  labelAttributesCopy = labelAttributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ICNoteResultsCellConfiguration *)selfCopy setTitleLabelAttributes:attributesCopy];
  [(ICNoteResultsCellConfiguration *)selfCopy setSummaryLabelAttributes:labelAttributesCopy];
  objc_sync_exit(selfCopy);
}

- (void)synchronouslyLoadData
{
  note = [(ICNoteResultsCellConfiguration *)self note];
  managedObjectContext = [note managedObjectContext];
  v5 = managedObjectContext;
  if (managedObjectContext)
  {
    managedObjectContext2 = managedObjectContext;
  }

  else
  {
    invitation = [(ICNoteResultsCellConfiguration *)self invitation];
    managedObjectContext2 = [invitation managedObjectContext];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001165A8;
  v9[3] = &unk_100645BA0;
  v9[4] = self;
  v10 = managedObjectContext2;
  v8 = managedObjectContext2;
  [v8 performBlockAndWait:v9];
}

- (void)loadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  loadDataQueue = [objc_opt_class() loadDataQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011666C;
  v7[3] = &unk_100645E80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(loadDataQueue, v7);
}

- (void)loadDataWithContext:(id)context
{
  contextCopy = context;
  [(ICNoteResultsCellConfiguration *)self clearData];
  note = [(ICNoteResultsCellConfiguration *)self note];

  if (note)
  {
    [(ICNoteResultsCellConfiguration *)self loadNoteDataWithContext:contextCopy];
  }

  else
  {
    invitation = [(ICNoteResultsCellConfiguration *)self invitation];

    if (invitation)
    {
      [(ICNoteResultsCellConfiguration *)self loadInvitationDataWithContext:contextCopy];
    }
  }

  [(ICNoteResultsCellConfiguration *)self setIsDataLoaded:1];
}

- (void)loadNoteDataWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  titleLabelAttributes = [(ICNoteResultsCellConfiguration *)selfCopy titleLabelAttributes];
  v6 = [titleLabelAttributes copy];

  summaryLabelAttributes = [(ICNoteResultsCellConfiguration *)selfCopy summaryLabelAttributes];
  v8 = [summaryLabelAttributes copy];

  folderAndAccountLabelAttributes = [(ICNoteResultsCellConfiguration *)selfCopy folderAndAccountLabelAttributes];
  v119 = [folderAndAccountLabelAttributes copy];

  [(ICNoteResultsCellConfiguration *)selfCopy estimatedTitleLabelFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(ICNoteResultsCellConfiguration *)selfCopy estimatedSummaryLabelFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_sync_exit(selfCopy);

  note = [(ICNoteResultsCellConfiguration *)selfCopy note];
  objectID = [note objectID];
  v28 = [contextCopy ic_existingObjectWithID:objectID];

  folderNoteSortType = [(ICNoteResultsCellConfiguration *)selfCopy folderNoteSortType];
  v30 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:v28 folderNoteSortType:folderNoteSortType];
  ic_briefFormattedDate = [v30 ic_briefFormattedDate];
  [(ICNoteResultsCellConfiguration *)selfCopy setDateString:ic_briefFormattedDate];

  objc_opt_class();
  v32 = ICDynamicCast();
  if (v32 && [v28 isSharedViaICloud] && (objc_msgSend(v32, "isSharedRootObject") & 1) == 0)
  {
    isSharedViaICloud = ([(ICNoteResultsCellConfiguration *)selfCopy isDisplayedInFolder]^ 1);
  }

  else
  {
    isSharedViaICloud = [v28 isSharedViaICloud];
  }

  [(ICNoteResultsCellConfiguration *)selfCopy setShowCollaboratorsBadge:isSharedViaICloud];
  if ([v28 isPinned])
  {
    v34 = [v28 isDeletedOrInTrash] ^ 1;
  }

  else
  {
    v34 = 0;
  }

  [(ICNoteResultsCellConfiguration *)selfCopy setShowPinnedBadge:v34];
  v118 = v32;
  if ([v28 hasUnreadChanges])
  {
    isSharedViaICloud2 = [v28 isSharedViaICloud];
  }

  else
  {
    isSharedViaICloud2 = 0;
  }

  [(ICNoteResultsCellConfiguration *)selfCopy setShowUnreadIndicator:isSharedViaICloud2];
  currentStatus = [v28 currentStatus];
  if ([(ICNoteResultsCellConfiguration *)selfCopy showUnreadIndicator]|| currentStatus)
  {
    if ([(ICNoteResultsCellConfiguration *)selfCopy showUnreadIndicator])
    {
      v37 = objc_alloc_init(ICNoteIndicatorUnreadChanges);
      imageName = [(ICNoteIndicatorUnreadChanges *)v37 imageName];
      [(ICNoteResultsCellConfiguration *)selfCopy symbolImageConfiguration];
      v39 = v8;
      v41 = v40 = v6;
      v42 = [UIImage systemImageNamed:imageName withConfiguration:v41];
      [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImage:v42];

      v6 = v40;
      v8 = v39;

      tintColor = [(ICNoteIndicatorUnreadChanges *)v37 tintColor];
      [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImageTintColor:tintColor];

      primaryStatusImage = [(ICNoteResultsCellConfiguration *)selfCopy primaryStatusImage];
      [(ICNoteResultsCellConfiguration *)selfCopy setUnreadIndicatorImage:primaryStatusImage];
    }

    if (currentStatus)
    {
      v45 = v8;
      v46 = v6;
      v47 = [[ICNoteIndicatorStatus alloc] initWithStatusType:currentStatus isDisplayedInFolder:[(ICNoteResultsCellConfiguration *)selfCopy isDisplayedInFolder]];
      imageName2 = [(ICNoteIndicatorStatus *)v47 imageName];
      symbolImageConfiguration = [(ICNoteResultsCellConfiguration *)selfCopy symbolImageConfiguration];
      v50 = [UIImage systemImageNamed:imageName2 withConfiguration:symbolImageConfiguration];

      primaryStatusImage2 = [(ICNoteResultsCellConfiguration *)selfCopy primaryStatusImage];

      if (primaryStatusImage2)
      {
        [(ICNoteResultsCellConfiguration *)selfCopy setSecondaryStatusImage:v50];
        tintColor2 = [(ICNoteIndicatorStatus *)v47 tintColor];
        [(ICNoteResultsCellConfiguration *)selfCopy setSecondaryStatusImageTintColor:tintColor2];
      }

      else
      {
        [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImage:v50];
        tintColor2 = [(ICNoteIndicatorStatus *)v47 tintColor];
        [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImageTintColor:tintColor2];
      }

      v6 = v46;
      v8 = v45;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasThumbnailImage = [v28 hasThumbnailImage];
  }

  else
  {
    hasThumbnailImage = 0;
  }

  [(ICNoteResultsCellConfiguration *)selfCopy setHasThumbnailImage:hasThumbnailImage];
  searchResult = [(ICNoteResultsCellConfiguration *)selfCopy searchResult];

  if (!searchResult)
  {
    title = [v28 title];
    attributedTitle = [v28 attributedTitle];
    [(ICNoteResultsCellConfiguration *)selfCopy maxLengthForAttributes:v6 frame:v11, v13, v15, v17];
    if (v70 > 0.0)
    {
      v71 = v70;
      v72 = [title length];
      if (v71 <= v72)
      {
        v72 = v71;
      }

      v73 = v72;
      if (!attributedTitle)
      {
        v75 = [title ic_substringWithRange:{0, v73}];

        title = v75;
        goto LABEL_39;
      }

      v74 = [attributedTitle attributedSubstringFromRange:{0, v73}];

      attributedTitle = v74;
    }

    if (attributedTitle)
    {
      [(ICNoteResultsCellConfiguration *)selfCopy setTitleAttributedString:attributedTitle];

LABEL_40:
      if ([v28 isUnsupported])
      {
        v76 = +[NSBundle mainBundle];
        v77 = [v76 localizedStringForKey:@"Content hidden" value:&stru_100661CF0 table:0];
        ic_attributedString = [v77 ic_attributedString];
      }

      else
      {
        ic_attributedString = [v28 attributedContentInfoText];
      }

      if (![(ICNoteResultsCellConfiguration *)selfCopy isLargerThanAXLarge])
      {
        dateString = [(ICNoteResultsCellConfiguration *)selfCopy dateString];
        if (dateString)
        {
          v80 = dateString;
          v81 = [ic_attributedString length];

          if (v81)
          {
            dateString2 = [(ICNoteResultsCellConfiguration *)selfCopy dateString];
            v83 = [NSString stringWithFormat:@"%@  ", dateString2];
            [ic_attributedString ic_attributedStringByPrependingString:v83];
            v84 = v8;
            v86 = v85 = v6;

            ic_attributedString = v86;
            v6 = v85;
            v8 = v84;
          }
        }
      }

      [(ICNoteResultsCellConfiguration *)selfCopy maxLengthForAttributes:v8 frame:v19, v21, v23, v25];
      if (v87 > 0.0)
      {
        v88 = v87;
        v89 = [ic_attributedString length];
        if (v88 <= v89)
        {
          v89 = v88;
        }

        v90 = [ic_attributedString ic_attributedSubstringFromRange:{0, v89}];

        ic_attributedString = v90;
      }

      [(ICNoteResultsCellConfiguration *)selfCopy setSummaryAttributedString:ic_attributedString];

      goto LABEL_52;
    }

LABEL_39:
    [(ICNoteResultsCellConfiguration *)selfCopy setTitleString:title];
    goto LABEL_40;
  }

  searchResult2 = [(ICNoteResultsCellConfiguration *)selfCopy searchResult];
  highlightColor = [(ICNoteResultsCellConfiguration *)selfCopy highlightColor];
  v57 = [searchResult2 attributedTitleWithBaseAttributes:v6 highlightColor:highlightColor insideFrame:{v11, v13, v15, v17}];
  [(ICNoteResultsCellConfiguration *)selfCopy setTitleAttributedString:v57];

  searchResult3 = [(ICNoteResultsCellConfiguration *)selfCopy searchResult];
  highlightColor2 = [(ICNoteResultsCellConfiguration *)selfCopy highlightColor];
  v60 = [searchResult3 attributedSummaryWithBaseAttributes:v8 highlightColor:highlightColor2 insideFrame:{v19, v21, v23, v25}];
  [(ICNoteResultsCellConfiguration *)selfCopy setSummaryAttributedString:v60];

  if ([(ICNoteResultsCellConfiguration *)selfCopy isLargerThanAXLarge])
  {
    goto LABEL_53;
  }

  dateString3 = [(ICNoteResultsCellConfiguration *)selfCopy dateString];
  v62 = dateString3;
  v63 = &stru_100661CF0;
  if (dateString3)
  {
    v63 = dateString3;
  }

  v64 = v63;

  title = [[NSMutableAttributedString alloc] initWithString:v64 attributes:v8];
  summaryAttributedString = [(ICNoteResultsCellConfiguration *)selfCopy summaryAttributedString];

  if (summaryAttributedString)
  {
    [title ic_appendString:@"  "];
    summaryAttributedString2 = [(ICNoteResultsCellConfiguration *)selfCopy summaryAttributedString];
    [title appendAttributedString:summaryAttributedString2];

    v68 = [title copy];
    [(ICNoteResultsCellConfiguration *)selfCopy setSummaryAttributedString:v68];
  }

  else
  {
    [(ICNoteResultsCellConfiguration *)selfCopy setSummaryAttributedString:title];
  }

LABEL_52:

LABEL_53:
  if ([(ICNoteResultsCellConfiguration *)selfCopy showParticipantsInfo])
  {
    objc_opt_class();
    v91 = ICDynamicCast();
    participantsInfoDescription = [v91 participantsInfoDescription];
    [(ICNoteResultsCellConfiguration *)selfCopy setParticipantsInfoString:participantsInfoDescription];
  }

  if ([(ICNoteResultsCellConfiguration *)selfCopy showsNoteContainer])
  {
    if ([(ICNoteResultsCellConfiguration *)selfCopy showFolderName]&& [(ICNoteResultsCellConfiguration *)selfCopy showAccountName])
    {
      folderName = [v28 folderName];
      v94 = folderName;
      v95 = &stru_100661CF0;
      if (folderName)
      {
        v95 = folderName;
      }

      v96 = v95;

      accountName = [v28 accountName];
      v98 = [NSString localizedStringWithFormat:@"%@ — %@", v96, accountName];
    }

    else
    {
      if ([(ICNoteResultsCellConfiguration *)selfCopy showAccountName])
      {
        accountName2 = [v28 accountName];
        accountName = accountName2;
        v100 = &stru_100661CF0;
        if (accountName2)
        {
          v100 = accountName2;
        }
      }

      else
      {
        v98 = &stru_100661CF0;
        if (![(ICNoteResultsCellConfiguration *)selfCopy showFolderName])
        {
          goto LABEL_71;
        }

        folderName2 = [v28 folderName];
        accountName = folderName2;
        if (folderName2)
        {
          v100 = folderName2;
        }

        else
        {
          v100 = &stru_100661CF0;
        }
      }

      v98 = v100;
    }

LABEL_71:
    v102 = [@" " stringByAppendingString:v98];
    [(ICNoteResultsCellConfiguration *)selfCopy setFolderAndAccountInfoString:v102];

    if ([(ICNoteResultsCellConfiguration *)selfCopy showFolderName]|| ([(ICNoteResultsCellConfiguration *)selfCopy searchResult], v103 = objc_claimAutoreleasedReturnValue(), v103, v103))
    {
      v104 = v8;
      objc_opt_class();
      v105 = ICDynamicCast();
      folderSystemImageName = [v105 folderSystemImageName];
      v107 = folderSystemImageName;
      v108 = v6;
      if (folderSystemImageName)
      {
        v109 = folderSystemImageName;
      }

      else
      {
        v109 = +[ICFolder defaultSystemImageName];
      }

      v110 = v109;

      v111 = [UIImage ic_systemImageNamed:v110];
      v112 = [v119 objectForKeyedSubscript:NSFontAttributeName];
      v113 = [UIImageSymbolConfiguration configurationWithFont:v112 scale:1];
      v114 = [v111 imageWithConfiguration:v113];

      [v114 alignmentRectInsets];
      if (v116 > 0.0 || v115 > 0.0)
      {
        v117 = [v114 imageWithAlignmentRectInsets:?];

        v114 = v117;
      }

      [(ICNoteResultsCellConfiguration *)selfCopy setFolderImage:v114];

      v6 = v108;
      v8 = v104;
    }
  }
}

- (void)loadInvitationDataWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  titleLabelAttributes = [(ICNoteResultsCellConfiguration *)selfCopy titleLabelAttributes];
  v6 = [titleLabelAttributes copy];

  summaryLabelAttributes = [(ICNoteResultsCellConfiguration *)selfCopy summaryLabelAttributes];
  v8 = [summaryLabelAttributes copy];

  [(ICNoteResultsCellConfiguration *)selfCopy estimatedTitleLabelFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(ICNoteResultsCellConfiguration *)selfCopy estimatedSummaryLabelFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_sync_exit(selfCopy);

  invitation = [(ICNoteResultsCellConfiguration *)selfCopy invitation];
  objectID = [invitation objectID];
  v27 = [contextCopy ic_existingObjectWithID:objectID];

  [(ICNoteResultsCellConfiguration *)selfCopy maxLengthForAttributes:v6 frame:v10, v12, v14, v16];
  v29 = v28;
  title = [v27 title];
  if (title)
  {
    [(ICNoteResultsCellConfiguration *)selfCopy setTitleString:title];
  }

  else
  {
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Invitation" value:&stru_100661CF0 table:0];
    [(ICNoteResultsCellConfiguration *)selfCopy setTitleString:v32];
  }

  titleString = [(ICNoteResultsCellConfiguration *)selfCopy titleString];
  if (v29 == 0.0)
  {
    [(ICNoteResultsCellConfiguration *)selfCopy setTitleString:titleString];
  }

  else
  {
    titleString2 = [(ICNoteResultsCellConfiguration *)selfCopy titleString];
    v35 = [titleString2 length];

    v36 = v35;
    if (v29 <= v35)
    {
      v36 = v29;
    }

    v37 = [titleString ic_substringWithRange:{0, v36}];
    [(ICNoteResultsCellConfiguration *)selfCopy setTitleString:v37];
  }

  creationDate = [v27 creationDate];
  ic_briefFormattedDate = [creationDate ic_briefFormattedDate];
  [(ICNoteResultsCellConfiguration *)selfCopy setDateString:ic_briefFormattedDate];

  contentDescription = [v27 contentDescription];
  [(ICNoteResultsCellConfiguration *)selfCopy setSummaryString:contentDescription];

  if (![(ICNoteResultsCellConfiguration *)selfCopy isLargerThanAXLarge])
  {
    dateString = [(ICNoteResultsCellConfiguration *)selfCopy dateString];
    if ([dateString length])
    {
      summaryString = [(ICNoteResultsCellConfiguration *)selfCopy summaryString];
      v43 = [summaryString length];

      if (!v43)
      {
        goto LABEL_14;
      }

      dateString = [(ICNoteResultsCellConfiguration *)selfCopy dateString];
      summaryString2 = [(ICNoteResultsCellConfiguration *)selfCopy summaryString];
      v45 = [NSString stringWithFormat:@"%@  %@", dateString, summaryString2];
      [(ICNoteResultsCellConfiguration *)selfCopy setSummaryString:v45];
    }
  }

LABEL_14:
  [(ICNoteResultsCellConfiguration *)selfCopy maxLengthForAttributes:v8 frame:v18, v20, v22, v24];
  v47 = v46;
  summaryString3 = [(ICNoteResultsCellConfiguration *)selfCopy summaryString];
  if (v47 == 0.0)
  {
    [(ICNoteResultsCellConfiguration *)selfCopy setSummaryString:summaryString3];
  }

  else
  {
    summaryString4 = [(ICNoteResultsCellConfiguration *)selfCopy summaryString];
    v50 = [summaryString4 length];

    v51 = v50;
    if (v47 <= v50)
    {
      v51 = v47;
    }

    v52 = [summaryString3 ic_substringWithRange:{0, v51}];
    [(ICNoteResultsCellConfiguration *)selfCopy setSummaryString:v52];
  }

  if ([v27 hasThumbnail])
  {
    [(ICNoteResultsCellConfiguration *)selfCopy setHasThumbnailImage:1];
  }

  else
  {
    rootObjectType = [v27 rootObjectType];
    -[ICNoteResultsCellConfiguration setHasThumbnailImage:](selfCopy, "setHasThumbnailImage:", [rootObjectType isEqualToString:@"com.apple.notes.folder"]);
  }

  symbolImageConfiguration = [(ICNoteResultsCellConfiguration *)selfCopy symbolImageConfiguration];
  v55 = [UIImage systemImageNamed:@"arrow.down.message" withConfiguration:symbolImageConfiguration];
  [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImage:v55];

  v56 = +[UIColor secondaryLabelColor];
  [(ICNoteResultsCellConfiguration *)selfCopy setPrimaryStatusImageTintColor:v56];

  typeDescription = [v27 typeDescription];
  [(ICNoteResultsCellConfiguration *)selfCopy setFolderAndAccountInfoString:typeDescription];

  if ([(ICNoteResultsCellConfiguration *)selfCopy showAccountName])
  {
    account = [v27 account];

    if (account)
    {
      folderAndAccountInfoString = [(ICNoteResultsCellConfiguration *)selfCopy folderAndAccountInfoString];
      if (folderAndAccountInfoString)
      {
        folderAndAccountInfoString2 = [(ICNoteResultsCellConfiguration *)selfCopy folderAndAccountInfoString];
        account2 = [v27 account];
        localizedName = [account2 localizedName];
        v63 = [NSString stringWithFormat:@"%@ — %@", folderAndAccountInfoString2, localizedName];
        [(ICNoteResultsCellConfiguration *)selfCopy setFolderAndAccountInfoString:v63];
      }

      else
      {
        folderAndAccountInfoString2 = [v27 account];
        account2 = [folderAndAccountInfoString2 localizedName];
        [(ICNoteResultsCellConfiguration *)selfCopy setFolderAndAccountInfoString:account2];
      }
    }
  }
}

- (void)clearData
{
  [(ICNoteResultsCellConfiguration *)self setTitleString:0];
  [(ICNoteResultsCellConfiguration *)self setTitleAttributedString:0];
  [(ICNoteResultsCellConfiguration *)self setSummaryString:0];
  [(ICNoteResultsCellConfiguration *)self setSummaryAttributedString:0];
  [(ICNoteResultsCellConfiguration *)self setDateString:0];
  [(ICNoteResultsCellConfiguration *)self setFolderAndAccountInfoString:0];
  [(ICNoteResultsCellConfiguration *)self setShowCollaboratorsBadge:0];
  [(ICNoteResultsCellConfiguration *)self setHasThumbnailImage:0];
  [(ICNoteResultsCellConfiguration *)self setShowPinnedBadge:0];
  [(ICNoteResultsCellConfiguration *)self setShowUnreadIndicator:0];
  [(ICNoteResultsCellConfiguration *)self setPrimaryStatusImage:0];
  [(ICNoteResultsCellConfiguration *)self setPrimaryStatusImageTintColor:0];
  [(ICNoteResultsCellConfiguration *)self setSecondaryStatusImage:0];

  [(ICNoteResultsCellConfiguration *)self setSecondaryStatusImageTintColor:0];
}

- (BOOL)isLargerThanAXLarge
{
  v2 = +[UITraitCollection currentTraitCollection];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame;

  return v4;
}

- (id)symbolImageConfiguration
{
  if ([(ICNoteResultsCellConfiguration *)self isLargerThanAXLarge])
  {
    ic_fontWithSingleLineA = [UIFont ic_preferredFontForBodyTextWithContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  }

  else
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    ic_fontWithSingleLineA = [v3 ic_fontWithSingleLineA];
  }

  v4 = [UIImageSymbolConfiguration configurationWithFont:ic_fontWithSingleLineA scale:1];

  return v4;
}

- (double)maxLengthForAttributes:(id)attributes frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [@"." sizeWithAttributes:attributes];
  v10 = v9;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15);
  v12 = 1.0;
  if (v10 >= 1.0)
  {
    v12 = v10;
  }

  v13 = (v11 / v12);
  if ([(ICNoteResultsCellConfiguration *)self maxNumberOfLabelLines]>= 2)
  {
    v13 *= [(ICNoteResultsCellConfiguration *)self maxNumberOfLabelLines];
  }

  return v13;
}

- (id)accessibilityLabel
{
  invitation = [(ICNoteResultsCellConfiguration *)self invitation];

  if (invitation)
  {
    invitation2 = [(ICNoteResultsCellConfiguration *)self invitation];
    rootObjectType = [invitation2 rootObjectType];
    v6 = [rootObjectType isEqualToString:@"com.apple.notes.folder"];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (v6)
    {
      v9 = @"Invitation for folder titled %@";
    }

    else
    {
      v9 = @"Invitation for note titled %@";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_100661CF0 table:0];

    invitation3 = [(ICNoteResultsCellConfiguration *)self invitation];
    title = [invitation3 title];
    v13 = [NSString localizedStringWithFormat:v10, title];

    invitation4 = [(ICNoteResultsCellConfiguration *)self invitation];
    receivedDate = [invitation4 receivedDate];
    ic_briefFormattedDate = [receivedDate ic_briefFormattedDate];

    invitation5 = [(ICNoteResultsCellConfiguration *)self invitation];
    contentDescription = [invitation5 contentDescription];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Shared with me via iCloud" value:&stru_100661CF0 table:0];

    v21 = __ICAccessibilityStringForVariables();
    goto LABEL_30;
  }

  note = [(ICNoteResultsCellConfiguration *)self note];
  title2 = [note title];

  note2 = [(ICNoteResultsCellConfiguration *)self note];
  folderNoteSortType = [(ICNoteResultsCellConfiguration *)self folderNoteSortType];
  v25 = [ICNoteListSortUtilities dateForCurrentSortTypeAccessibilityStringForNote:note2 folderNoteSortType:folderNoteSortType];

  note3 = [(ICNoteResultsCellConfiguration *)self note];
  ic_briefFormattedDate = [note3 contentInfoText];

  v27 = [ic_briefFormattedDate paragraphRangeForRange:{0, 0}];
  contentDescription = [ic_briefFormattedDate substringWithRange:{v27, v28}];
  v20 = 0;
  if ([(ICNoteResultsCellConfiguration *)self showPinnedBadge])
  {
    v29 = +[NSBundle mainBundle];
    v20 = [v29 localizedStringForKey:@"pinned" value:&stru_100661CF0 table:0];
  }

  note4 = [(ICNoteResultsCellConfiguration *)self note];
  folderName = [note4 folderName];

  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"In folder %@" value:&stru_100661CF0 table:0];

  v56 = v33;
  v57 = folderName;
  v59 = [NSString localizedStringWithFormat:v33, folderName];
  note5 = [(ICNoteResultsCellConfiguration *)self note];
  currentStatus = [note5 currentStatus];

  v36 = 0;
  if (currentStatus > 2)
  {
    if (currentStatus == 3)
    {
      objc_opt_class();
      note6 = [(ICNoteResultsCellConfiguration *)self note];
      v38 = ICDynamicCast();

      LODWORD(note6) = [v38 isOwnedByCurrentUser];
      v47 = +[NSBundle mainBundle];
      v37 = v47;
      if (note6)
      {
        v48 = @"Shared by me via iCloud";
      }

      else
      {
        v48 = @"Shared with me via iCloud";
      }

      v55 = [v47 localizedStringForKey:v48 value:&stru_100661CF0 table:0];
      v36 = 0;
    }

    else
    {
      if (currentStatus != 4)
      {
        v55 = 0;
        v10 = title2;
        goto LABEL_25;
      }

      objc_opt_class();
      note7 = [(ICNoteResultsCellConfiguration *)self note];
      v38 = ICDynamicCast();

      folder = [v38 folder];
      isOwnedByCurrentUser = [folder isOwnedByCurrentUser];
      v42 = +[NSBundle mainBundle];
      v43 = v42;
      if (isOwnedByCurrentUser)
      {
        v44 = @"In a folder shared by me called %@";
      }

      else
      {
        v44 = @"In a folder shared with me called %@";
      }

      v37 = [v42 localizedStringForKey:v44 value:&stru_100661CF0 table:0];

      v45 = [NSString localizedStringWithFormat:v37, v57];

      v36 = 0;
      v55 = 0;
      v59 = v45;
    }

LABEL_23:
    v10 = title2;
    goto LABEL_24;
  }

  if (currentStatus == 1)
  {
    v37 = +[NSBundle mainBundle];
    v36 = [v37 localizedStringForKey:@"Locked" value:&stru_100661CF0 table:0];
    v55 = 0;
    v38 = contentDescription;
    contentDescription = 0;
    goto LABEL_23;
  }

  v10 = title2;
  if (currentStatus == 2)
  {
    v37 = +[NSBundle mainBundle];
    v36 = [v37 localizedStringForKey:@"Unlocked" value:&stru_100661CF0 table:0];
    v55 = 0;
    v38 = contentDescription;
    contentDescription = 0;
LABEL_24:

    goto LABEL_25;
  }

  v55 = 0;
LABEL_25:
  objc_opt_class();
  note8 = [(ICNoteResultsCellConfiguration *)self note];
  v50 = ICDynamicCast();

  if ([v50 isSharedViaICloud] && objc_msgSend(v50, "hasUnreadChanges"))
  {
    v51 = v25;
    v52 = +[NSBundle mainBundle];
    v53 = [v52 localizedStringForKey:@"has unread changes" value:&stru_100661CF0 table:0];

    v10 = title2;
  }

  else
  {
    v51 = v25;
    v53 = 0;
  }

  [(ICNoteResultsCellConfiguration *)self showsNoteContainer];
  v21 = __ICAccessibilityStringForVariables();

  v13 = v51;
LABEL_30:

  return v21;
}

- (BOOL)showsNoteContainer
{
  if ([(ICNoteResultsCellConfiguration *)self showFolderName])
  {
    return 1;
  }

  return [(ICNoteResultsCellConfiguration *)self showAccountName];
}

- (CGRect)estimatedTitleLabelFrame
{
  objc_copyStruct(v6, &self->_estimatedTitleLabelFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)estimatedSummaryLabelFrame
{
  objc_copyStruct(v6, &self->_estimatedSummaryLabelFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end