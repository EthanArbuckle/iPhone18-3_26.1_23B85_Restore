@interface ICNoteResultsCellConfiguration
+ (NSManagedObjectContext)legacyBackgroundContext;
+ (NSManagedObjectContext)modernBackgroundContext;
+ (OS_dispatch_queue)loadDataQueue;
+ (id)sizingConfigurationWithShowParticipantsInfo:(BOOL)a3 showsFolderName:(BOOL)a4;
- (BOOL)isLargerThanAXLarge;
- (BOOL)showsNoteContainer;
- (CGRect)estimatedSummaryLabelFrame;
- (CGRect)estimatedTitleLabelFrame;
- (ICNoteResultsCellConfiguration)initWithInvitation:(id)a3;
- (ICNoteResultsCellConfiguration)initWithNote:(id)a3;
- (ICNoteResultsCellConfiguration)initWithSearchResult:(id)a3;
- (double)maxLengthForAttributes:(id)a3 frame:(CGRect)a4;
- (id)accessibilityLabel;
- (id)symbolImageConfiguration;
- (void)clearData;
- (void)commonInit;
- (void)loadDataWithCompletion:(id)a3;
- (void)loadDataWithContext:(id)a3;
- (void)loadInvitationDataWithContext:(id)a3;
- (void)loadNoteDataWithContext:(id)a3;
- (void)synchronouslyLoadData;
- (void)updateTitleLabelAttributes:(id)a3 summaryLabelAttributes:(id)a4;
- (void)updateTitleLabelAttributes:(id)a3 summaryLabelAttributes:(id)a4 folderAndAccountLabelAttributes:(id)a5 estimatedTitleLabelFrame:(CGRect)a6 estimatedSummaryLabelFrame:(CGRect)a7;
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

- (ICNoteResultsCellConfiguration)initWithNote:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, a3);
    [(ICNoteResultsCellConfiguration *)v7 commonInit];
  }

  return v7;
}

- (ICNoteResultsCellConfiguration)initWithSearchResult:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, a3);
    v7->_showFolderName = 1;
    v8 = [v5 object];
    note = v7->_note;
    v7->_note = v8;

    [(ICNoteResultsCellConfiguration *)v7 commonInit];
  }

  return v7;
}

- (ICNoteResultsCellConfiguration)initWithInvitation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICNoteResultsCellConfiguration;
  v6 = [(ICNoteResultsCellConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invitation, a3);
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
      v3 = [(ICSearchIndexableNote *)self->_note hasThumbnailImage];
    }

    else
    {
      v3 = 0;
    }

    self->_hasThumbnailImage = v3;
  }
}

+ (id)sizingConfigurationWithShowParticipantsInfo:(BOOL)a3 showsFolderName:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(ICNoteResultsCellConfiguration);
  [(ICNoteResultsCellConfiguration *)v6 setShowFolderName:v4];
  [(ICNoteResultsCellConfiguration *)v6 setIsDataLoaded:1];
  [(ICNoteResultsCellConfiguration *)v6 setTitleString:@"Two\nLines"];
  [(ICNoteResultsCellConfiguration *)v6 setParticipantsInfoString:@"Participants"];
  [(ICNoteResultsCellConfiguration *)v6 setFolderAndAccountInfoString:@"Folder"];
  [(ICNoteResultsCellConfiguration *)v6 setDateString:@"Date"];
  [(ICNoteResultsCellConfiguration *)v6 setShowParticipantsInfo:v5];

  return v6;
}

- (void)updateTitleLabelAttributes:(id)a3 summaryLabelAttributes:(id)a4 folderAndAccountLabelAttributes:(id)a5 estimatedTitleLabelFrame:(CGRect)a6 estimatedSummaryLabelFrame:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v11 = a6.size.height;
  v12 = a6.size.width;
  v13 = a6.origin.y;
  v14 = a6.origin.x;
  v21 = a3;
  v18 = a4;
  v19 = a5;
  v20 = self;
  objc_sync_enter(v20);
  [(ICNoteResultsCellConfiguration *)v20 setTitleLabelAttributes:v21];
  [(ICNoteResultsCellConfiguration *)v20 setSummaryLabelAttributes:v18];
  [(ICNoteResultsCellConfiguration *)v20 setFolderAndAccountLabelAttributes:v19];
  [(ICNoteResultsCellConfiguration *)v20 setEstimatedTitleLabelFrame:v14, v13, v12, v11];
  [(ICNoteResultsCellConfiguration *)v20 setEstimatedSummaryLabelFrame:x, y, width, height];
  objc_sync_exit(v20);
}

- (void)updateTitleLabelAttributes:(id)a3 summaryLabelAttributes:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(ICNoteResultsCellConfiguration *)v7 setTitleLabelAttributes:v8];
  [(ICNoteResultsCellConfiguration *)v7 setSummaryLabelAttributes:v6];
  objc_sync_exit(v7);
}

- (void)synchronouslyLoadData
{
  v3 = [(ICNoteResultsCellConfiguration *)self note];
  v4 = [v3 managedObjectContext];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(ICNoteResultsCellConfiguration *)self invitation];
    v6 = [v7 managedObjectContext];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001165A8;
  v9[3] = &unk_100645BA0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

- (void)loadDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() loadDataQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011666C;
  v7[3] = &unk_100645E80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)loadDataWithContext:(id)a3
{
  v6 = a3;
  [(ICNoteResultsCellConfiguration *)self clearData];
  v4 = [(ICNoteResultsCellConfiguration *)self note];

  if (v4)
  {
    [(ICNoteResultsCellConfiguration *)self loadNoteDataWithContext:v6];
  }

  else
  {
    v5 = [(ICNoteResultsCellConfiguration *)self invitation];

    if (v5)
    {
      [(ICNoteResultsCellConfiguration *)self loadInvitationDataWithContext:v6];
    }
  }

  [(ICNoteResultsCellConfiguration *)self setIsDataLoaded:1];
}

- (void)loadNoteDataWithContext:(id)a3
{
  v120 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICNoteResultsCellConfiguration *)v4 titleLabelAttributes];
  v6 = [v5 copy];

  v7 = [(ICNoteResultsCellConfiguration *)v4 summaryLabelAttributes];
  v8 = [v7 copy];

  v9 = [(ICNoteResultsCellConfiguration *)v4 folderAndAccountLabelAttributes];
  v119 = [v9 copy];

  [(ICNoteResultsCellConfiguration *)v4 estimatedTitleLabelFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(ICNoteResultsCellConfiguration *)v4 estimatedSummaryLabelFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_sync_exit(v4);

  v26 = [(ICNoteResultsCellConfiguration *)v4 note];
  v27 = [v26 objectID];
  v28 = [v120 ic_existingObjectWithID:v27];

  v29 = [(ICNoteResultsCellConfiguration *)v4 folderNoteSortType];
  v30 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:v28 folderNoteSortType:v29];
  v31 = [v30 ic_briefFormattedDate];
  [(ICNoteResultsCellConfiguration *)v4 setDateString:v31];

  objc_opt_class();
  v32 = ICDynamicCast();
  if (v32 && [v28 isSharedViaICloud] && (objc_msgSend(v32, "isSharedRootObject") & 1) == 0)
  {
    v33 = ([(ICNoteResultsCellConfiguration *)v4 isDisplayedInFolder]^ 1);
  }

  else
  {
    v33 = [v28 isSharedViaICloud];
  }

  [(ICNoteResultsCellConfiguration *)v4 setShowCollaboratorsBadge:v33];
  if ([v28 isPinned])
  {
    v34 = [v28 isDeletedOrInTrash] ^ 1;
  }

  else
  {
    v34 = 0;
  }

  [(ICNoteResultsCellConfiguration *)v4 setShowPinnedBadge:v34];
  v118 = v32;
  if ([v28 hasUnreadChanges])
  {
    v35 = [v28 isSharedViaICloud];
  }

  else
  {
    v35 = 0;
  }

  [(ICNoteResultsCellConfiguration *)v4 setShowUnreadIndicator:v35];
  v36 = [v28 currentStatus];
  if ([(ICNoteResultsCellConfiguration *)v4 showUnreadIndicator]|| v36)
  {
    if ([(ICNoteResultsCellConfiguration *)v4 showUnreadIndicator])
    {
      v37 = objc_alloc_init(ICNoteIndicatorUnreadChanges);
      v38 = [(ICNoteIndicatorUnreadChanges *)v37 imageName];
      [(ICNoteResultsCellConfiguration *)v4 symbolImageConfiguration];
      v39 = v8;
      v41 = v40 = v6;
      v42 = [UIImage systemImageNamed:v38 withConfiguration:v41];
      [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImage:v42];

      v6 = v40;
      v8 = v39;

      v43 = [(ICNoteIndicatorUnreadChanges *)v37 tintColor];
      [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImageTintColor:v43];

      v44 = [(ICNoteResultsCellConfiguration *)v4 primaryStatusImage];
      [(ICNoteResultsCellConfiguration *)v4 setUnreadIndicatorImage:v44];
    }

    if (v36)
    {
      v45 = v8;
      v46 = v6;
      v47 = [[ICNoteIndicatorStatus alloc] initWithStatusType:v36 isDisplayedInFolder:[(ICNoteResultsCellConfiguration *)v4 isDisplayedInFolder]];
      v48 = [(ICNoteIndicatorStatus *)v47 imageName];
      v49 = [(ICNoteResultsCellConfiguration *)v4 symbolImageConfiguration];
      v50 = [UIImage systemImageNamed:v48 withConfiguration:v49];

      v51 = [(ICNoteResultsCellConfiguration *)v4 primaryStatusImage];

      if (v51)
      {
        [(ICNoteResultsCellConfiguration *)v4 setSecondaryStatusImage:v50];
        v52 = [(ICNoteIndicatorStatus *)v47 tintColor];
        [(ICNoteResultsCellConfiguration *)v4 setSecondaryStatusImageTintColor:v52];
      }

      else
      {
        [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImage:v50];
        v52 = [(ICNoteIndicatorStatus *)v47 tintColor];
        [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImageTintColor:v52];
      }

      v6 = v46;
      v8 = v45;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = [v28 hasThumbnailImage];
  }

  else
  {
    v53 = 0;
  }

  [(ICNoteResultsCellConfiguration *)v4 setHasThumbnailImage:v53];
  v54 = [(ICNoteResultsCellConfiguration *)v4 searchResult];

  if (!v54)
  {
    v65 = [v28 title];
    v69 = [v28 attributedTitle];
    [(ICNoteResultsCellConfiguration *)v4 maxLengthForAttributes:v6 frame:v11, v13, v15, v17];
    if (v70 > 0.0)
    {
      v71 = v70;
      v72 = [v65 length];
      if (v71 <= v72)
      {
        v72 = v71;
      }

      v73 = v72;
      if (!v69)
      {
        v75 = [v65 ic_substringWithRange:{0, v73}];

        v65 = v75;
        goto LABEL_39;
      }

      v74 = [v69 attributedSubstringFromRange:{0, v73}];

      v69 = v74;
    }

    if (v69)
    {
      [(ICNoteResultsCellConfiguration *)v4 setTitleAttributedString:v69];

LABEL_40:
      if ([v28 isUnsupported])
      {
        v76 = +[NSBundle mainBundle];
        v77 = [v76 localizedStringForKey:@"Content hidden" value:&stru_100661CF0 table:0];
        v78 = [v77 ic_attributedString];
      }

      else
      {
        v78 = [v28 attributedContentInfoText];
      }

      if (![(ICNoteResultsCellConfiguration *)v4 isLargerThanAXLarge])
      {
        v79 = [(ICNoteResultsCellConfiguration *)v4 dateString];
        if (v79)
        {
          v80 = v79;
          v81 = [v78 length];

          if (v81)
          {
            v82 = [(ICNoteResultsCellConfiguration *)v4 dateString];
            v83 = [NSString stringWithFormat:@"%@  ", v82];
            [v78 ic_attributedStringByPrependingString:v83];
            v84 = v8;
            v86 = v85 = v6;

            v78 = v86;
            v6 = v85;
            v8 = v84;
          }
        }
      }

      [(ICNoteResultsCellConfiguration *)v4 maxLengthForAttributes:v8 frame:v19, v21, v23, v25];
      if (v87 > 0.0)
      {
        v88 = v87;
        v89 = [v78 length];
        if (v88 <= v89)
        {
          v89 = v88;
        }

        v90 = [v78 ic_attributedSubstringFromRange:{0, v89}];

        v78 = v90;
      }

      [(ICNoteResultsCellConfiguration *)v4 setSummaryAttributedString:v78];

      goto LABEL_52;
    }

LABEL_39:
    [(ICNoteResultsCellConfiguration *)v4 setTitleString:v65];
    goto LABEL_40;
  }

  v55 = [(ICNoteResultsCellConfiguration *)v4 searchResult];
  v56 = [(ICNoteResultsCellConfiguration *)v4 highlightColor];
  v57 = [v55 attributedTitleWithBaseAttributes:v6 highlightColor:v56 insideFrame:{v11, v13, v15, v17}];
  [(ICNoteResultsCellConfiguration *)v4 setTitleAttributedString:v57];

  v58 = [(ICNoteResultsCellConfiguration *)v4 searchResult];
  v59 = [(ICNoteResultsCellConfiguration *)v4 highlightColor];
  v60 = [v58 attributedSummaryWithBaseAttributes:v8 highlightColor:v59 insideFrame:{v19, v21, v23, v25}];
  [(ICNoteResultsCellConfiguration *)v4 setSummaryAttributedString:v60];

  if ([(ICNoteResultsCellConfiguration *)v4 isLargerThanAXLarge])
  {
    goto LABEL_53;
  }

  v61 = [(ICNoteResultsCellConfiguration *)v4 dateString];
  v62 = v61;
  v63 = &stru_100661CF0;
  if (v61)
  {
    v63 = v61;
  }

  v64 = v63;

  v65 = [[NSMutableAttributedString alloc] initWithString:v64 attributes:v8];
  v66 = [(ICNoteResultsCellConfiguration *)v4 summaryAttributedString];

  if (v66)
  {
    [v65 ic_appendString:@"  "];
    v67 = [(ICNoteResultsCellConfiguration *)v4 summaryAttributedString];
    [v65 appendAttributedString:v67];

    v68 = [v65 copy];
    [(ICNoteResultsCellConfiguration *)v4 setSummaryAttributedString:v68];
  }

  else
  {
    [(ICNoteResultsCellConfiguration *)v4 setSummaryAttributedString:v65];
  }

LABEL_52:

LABEL_53:
  if ([(ICNoteResultsCellConfiguration *)v4 showParticipantsInfo])
  {
    objc_opt_class();
    v91 = ICDynamicCast();
    v92 = [v91 participantsInfoDescription];
    [(ICNoteResultsCellConfiguration *)v4 setParticipantsInfoString:v92];
  }

  if ([(ICNoteResultsCellConfiguration *)v4 showsNoteContainer])
  {
    if ([(ICNoteResultsCellConfiguration *)v4 showFolderName]&& [(ICNoteResultsCellConfiguration *)v4 showAccountName])
    {
      v93 = [v28 folderName];
      v94 = v93;
      v95 = &stru_100661CF0;
      if (v93)
      {
        v95 = v93;
      }

      v96 = v95;

      v97 = [v28 accountName];
      v98 = [NSString localizedStringWithFormat:@"%@ — %@", v96, v97];
    }

    else
    {
      if ([(ICNoteResultsCellConfiguration *)v4 showAccountName])
      {
        v99 = [v28 accountName];
        v97 = v99;
        v100 = &stru_100661CF0;
        if (v99)
        {
          v100 = v99;
        }
      }

      else
      {
        v98 = &stru_100661CF0;
        if (![(ICNoteResultsCellConfiguration *)v4 showFolderName])
        {
          goto LABEL_71;
        }

        v101 = [v28 folderName];
        v97 = v101;
        if (v101)
        {
          v100 = v101;
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
    [(ICNoteResultsCellConfiguration *)v4 setFolderAndAccountInfoString:v102];

    if ([(ICNoteResultsCellConfiguration *)v4 showFolderName]|| ([(ICNoteResultsCellConfiguration *)v4 searchResult], v103 = objc_claimAutoreleasedReturnValue(), v103, v103))
    {
      v104 = v8;
      objc_opt_class();
      v105 = ICDynamicCast();
      v106 = [v105 folderSystemImageName];
      v107 = v106;
      v108 = v6;
      if (v106)
      {
        v109 = v106;
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

      [(ICNoteResultsCellConfiguration *)v4 setFolderImage:v114];

      v6 = v108;
      v8 = v104;
    }
  }
}

- (void)loadInvitationDataWithContext:(id)a3
{
  v64 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICNoteResultsCellConfiguration *)v4 titleLabelAttributes];
  v6 = [v5 copy];

  v7 = [(ICNoteResultsCellConfiguration *)v4 summaryLabelAttributes];
  v8 = [v7 copy];

  [(ICNoteResultsCellConfiguration *)v4 estimatedTitleLabelFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(ICNoteResultsCellConfiguration *)v4 estimatedSummaryLabelFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_sync_exit(v4);

  v25 = [(ICNoteResultsCellConfiguration *)v4 invitation];
  v26 = [v25 objectID];
  v27 = [v64 ic_existingObjectWithID:v26];

  [(ICNoteResultsCellConfiguration *)v4 maxLengthForAttributes:v6 frame:v10, v12, v14, v16];
  v29 = v28;
  v30 = [v27 title];
  if (v30)
  {
    [(ICNoteResultsCellConfiguration *)v4 setTitleString:v30];
  }

  else
  {
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Invitation" value:&stru_100661CF0 table:0];
    [(ICNoteResultsCellConfiguration *)v4 setTitleString:v32];
  }

  v33 = [(ICNoteResultsCellConfiguration *)v4 titleString];
  if (v29 == 0.0)
  {
    [(ICNoteResultsCellConfiguration *)v4 setTitleString:v33];
  }

  else
  {
    v34 = [(ICNoteResultsCellConfiguration *)v4 titleString];
    v35 = [v34 length];

    v36 = v35;
    if (v29 <= v35)
    {
      v36 = v29;
    }

    v37 = [v33 ic_substringWithRange:{0, v36}];
    [(ICNoteResultsCellConfiguration *)v4 setTitleString:v37];
  }

  v38 = [v27 creationDate];
  v39 = [v38 ic_briefFormattedDate];
  [(ICNoteResultsCellConfiguration *)v4 setDateString:v39];

  v40 = [v27 contentDescription];
  [(ICNoteResultsCellConfiguration *)v4 setSummaryString:v40];

  if (![(ICNoteResultsCellConfiguration *)v4 isLargerThanAXLarge])
  {
    v41 = [(ICNoteResultsCellConfiguration *)v4 dateString];
    if ([v41 length])
    {
      v42 = [(ICNoteResultsCellConfiguration *)v4 summaryString];
      v43 = [v42 length];

      if (!v43)
      {
        goto LABEL_14;
      }

      v41 = [(ICNoteResultsCellConfiguration *)v4 dateString];
      v44 = [(ICNoteResultsCellConfiguration *)v4 summaryString];
      v45 = [NSString stringWithFormat:@"%@  %@", v41, v44];
      [(ICNoteResultsCellConfiguration *)v4 setSummaryString:v45];
    }
  }

LABEL_14:
  [(ICNoteResultsCellConfiguration *)v4 maxLengthForAttributes:v8 frame:v18, v20, v22, v24];
  v47 = v46;
  v48 = [(ICNoteResultsCellConfiguration *)v4 summaryString];
  if (v47 == 0.0)
  {
    [(ICNoteResultsCellConfiguration *)v4 setSummaryString:v48];
  }

  else
  {
    v49 = [(ICNoteResultsCellConfiguration *)v4 summaryString];
    v50 = [v49 length];

    v51 = v50;
    if (v47 <= v50)
    {
      v51 = v47;
    }

    v52 = [v48 ic_substringWithRange:{0, v51}];
    [(ICNoteResultsCellConfiguration *)v4 setSummaryString:v52];
  }

  if ([v27 hasThumbnail])
  {
    [(ICNoteResultsCellConfiguration *)v4 setHasThumbnailImage:1];
  }

  else
  {
    v53 = [v27 rootObjectType];
    -[ICNoteResultsCellConfiguration setHasThumbnailImage:](v4, "setHasThumbnailImage:", [v53 isEqualToString:@"com.apple.notes.folder"]);
  }

  v54 = [(ICNoteResultsCellConfiguration *)v4 symbolImageConfiguration];
  v55 = [UIImage systemImageNamed:@"arrow.down.message" withConfiguration:v54];
  [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImage:v55];

  v56 = +[UIColor secondaryLabelColor];
  [(ICNoteResultsCellConfiguration *)v4 setPrimaryStatusImageTintColor:v56];

  v57 = [v27 typeDescription];
  [(ICNoteResultsCellConfiguration *)v4 setFolderAndAccountInfoString:v57];

  if ([(ICNoteResultsCellConfiguration *)v4 showAccountName])
  {
    v58 = [v27 account];

    if (v58)
    {
      v59 = [(ICNoteResultsCellConfiguration *)v4 folderAndAccountInfoString];
      if (v59)
      {
        v60 = [(ICNoteResultsCellConfiguration *)v4 folderAndAccountInfoString];
        v61 = [v27 account];
        v62 = [v61 localizedName];
        v63 = [NSString stringWithFormat:@"%@ — %@", v60, v62];
        [(ICNoteResultsCellConfiguration *)v4 setFolderAndAccountInfoString:v63];
      }

      else
      {
        v60 = [v27 account];
        v61 = [v60 localizedName];
        [(ICNoteResultsCellConfiguration *)v4 setFolderAndAccountInfoString:v61];
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
  v3 = [v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame;

  return v4;
}

- (id)symbolImageConfiguration
{
  if ([(ICNoteResultsCellConfiguration *)self isLargerThanAXLarge])
  {
    v2 = [UIFont ic_preferredFontForBodyTextWithContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  }

  else
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v2 = [v3 ic_fontWithSingleLineA];
  }

  v4 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:1];

  return v4;
}

- (double)maxLengthForAttributes:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [@"." sizeWithAttributes:a3];
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
  v3 = [(ICNoteResultsCellConfiguration *)self invitation];

  if (v3)
  {
    v4 = [(ICNoteResultsCellConfiguration *)self invitation];
    v5 = [v4 rootObjectType];
    v6 = [v5 isEqualToString:@"com.apple.notes.folder"];
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

    v11 = [(ICNoteResultsCellConfiguration *)self invitation];
    v12 = [v11 title];
    v13 = [NSString localizedStringWithFormat:v10, v12];

    v14 = [(ICNoteResultsCellConfiguration *)self invitation];
    v15 = [v14 receivedDate];
    v16 = [v15 ic_briefFormattedDate];

    v17 = [(ICNoteResultsCellConfiguration *)self invitation];
    v18 = [v17 contentDescription];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Shared with me via iCloud" value:&stru_100661CF0 table:0];

    v21 = __ICAccessibilityStringForVariables();
    goto LABEL_30;
  }

  v22 = [(ICNoteResultsCellConfiguration *)self note];
  v58 = [v22 title];

  v23 = [(ICNoteResultsCellConfiguration *)self note];
  v24 = [(ICNoteResultsCellConfiguration *)self folderNoteSortType];
  v25 = [ICNoteListSortUtilities dateForCurrentSortTypeAccessibilityStringForNote:v23 folderNoteSortType:v24];

  v26 = [(ICNoteResultsCellConfiguration *)self note];
  v16 = [v26 contentInfoText];

  v27 = [v16 paragraphRangeForRange:{0, 0}];
  v18 = [v16 substringWithRange:{v27, v28}];
  v20 = 0;
  if ([(ICNoteResultsCellConfiguration *)self showPinnedBadge])
  {
    v29 = +[NSBundle mainBundle];
    v20 = [v29 localizedStringForKey:@"pinned" value:&stru_100661CF0 table:0];
  }

  v30 = [(ICNoteResultsCellConfiguration *)self note];
  v31 = [v30 folderName];

  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"In folder %@" value:&stru_100661CF0 table:0];

  v56 = v33;
  v57 = v31;
  v59 = [NSString localizedStringWithFormat:v33, v31];
  v34 = [(ICNoteResultsCellConfiguration *)self note];
  v35 = [v34 currentStatus];

  v36 = 0;
  if (v35 > 2)
  {
    if (v35 == 3)
    {
      objc_opt_class();
      v46 = [(ICNoteResultsCellConfiguration *)self note];
      v38 = ICDynamicCast();

      LODWORD(v46) = [v38 isOwnedByCurrentUser];
      v47 = +[NSBundle mainBundle];
      v37 = v47;
      if (v46)
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
      if (v35 != 4)
      {
        v55 = 0;
        v10 = v58;
        goto LABEL_25;
      }

      objc_opt_class();
      v39 = [(ICNoteResultsCellConfiguration *)self note];
      v38 = ICDynamicCast();

      v40 = [v38 folder];
      v41 = [v40 isOwnedByCurrentUser];
      v42 = +[NSBundle mainBundle];
      v43 = v42;
      if (v41)
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
    v10 = v58;
    goto LABEL_24;
  }

  if (v35 == 1)
  {
    v37 = +[NSBundle mainBundle];
    v36 = [v37 localizedStringForKey:@"Locked" value:&stru_100661CF0 table:0];
    v55 = 0;
    v38 = v18;
    v18 = 0;
    goto LABEL_23;
  }

  v10 = v58;
  if (v35 == 2)
  {
    v37 = +[NSBundle mainBundle];
    v36 = [v37 localizedStringForKey:@"Unlocked" value:&stru_100661CF0 table:0];
    v55 = 0;
    v38 = v18;
    v18 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v55 = 0;
LABEL_25:
  objc_opt_class();
  v49 = [(ICNoteResultsCellConfiguration *)self note];
  v50 = ICDynamicCast();

  if ([v50 isSharedViaICloud] && objc_msgSend(v50, "hasUnreadChanges"))
  {
    v51 = v25;
    v52 = +[NSBundle mainBundle];
    v53 = [v52 localizedStringForKey:@"has unread changes" value:&stru_100661CF0 table:0];

    v10 = v58;
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