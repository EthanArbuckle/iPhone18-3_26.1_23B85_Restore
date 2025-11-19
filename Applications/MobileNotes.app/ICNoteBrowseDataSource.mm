@interface ICNoteBrowseDataSource
- (BOOL)isTrashFolder;
- (BOOL)needsReindexWithCollectionDifference:(id)a3 controller:(id)a4 identifiersToReload:(id)a5;
- (BOOL)shouldIncludeInvitations;
- (BOOL)shouldIncludeSubfolders;
- (BOOL)shouldIncludeTagDetail;
- (BOOL)shouldIncludeTags;
- (BOOL)shouldStyleForCalculator;
- (ICFolderCustomNoteSortType)sortType;
- (ICFolderDataSource)folderDataSource;
- (ICNAViewController)presentingViewController;
- (ICNoteBrowseDataSource)initWithCollectionView:(id)a3 presentingViewController:(id)a4 noteContainerViewMode:(int64_t)a5 folderDataSource:(id)a6 persistenceConfiguration:(id)a7;
- (ICNoteContainer)noteContainer;
- (ICNoteCoreDataIndexer)indexer;
- (ICQuery)noteQuery;
- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder;
- (NSManagedObjectContext)legacyViewContext;
- (NSManagedObjectContext)modernBackgroundContext;
- (NSManagedObjectContext)modernViewContext;
- (NoteCollectionObject)noteCollection;
- (id)emptyConfigurationForNoteWithObjectID:(id)a3;
- (int64_t)dateHeadersType;
- (unint64_t)pinnedNotesSectionMinimumCount;
- (unint64_t)totalFolderCount;
- (unint64_t)totalInvitationsCount;
- (unint64_t)totalNoteCount;
- (void)accountHidesNotesInCustomFoldersDidChange:(id)a3;
- (void)dealloc;
- (void)managedObjectContextUpdaterDidMerge:(id)a3;
- (void)noteLockManagerDidToggleLock:(id)a3;
- (void)setDateHeadersType:(int64_t)a3;
- (void)setNoteCollection:(id)a3;
- (void)setNoteContainer:(id)a3;
- (void)setNoteContainerViewMode:(int64_t)a3;
- (void)setNoteQuery:(id)a3;
- (void)setShouldIncludeInvitations:(BOOL)a3;
- (void)setShouldIncludeSubfolders:(BOOL)a3;
- (void)setShouldIncludeTagDetail:(BOOL)a3;
- (void)setShouldIncludeTags:(BOOL)a3;
- (void)setSortType:(id)a3 force:(BOOL)a4;
- (void)setVirtualSmartFolder:(id)a3;
- (void)updateIndexerForCurrentNoteContainerViewMode;
@end

@implementation ICNoteBrowseDataSource

- (NSManagedObjectContext)legacyViewContext
{
  v2 = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  v3 = [v2 legacyViewContext];

  return v3;
}

- (NSManagedObjectContext)modernBackgroundContext
{
  v2 = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  v3 = [v2 modernBackgroundContext];

  return v3;
}

- (ICNoteContainer)noteContainer
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 noteContainer];

  return v3;
}

- (ICNoteCoreDataIndexer)indexer
{
  objc_opt_class();
  v6.receiver = self;
  v6.super_class = ICNoteBrowseDataSource;
  v3 = [(ICNoteBrowseDataSource *)&v6 indexer];
  v4 = ICDynamicCast();

  return v4;
}

- (NoteCollectionObject)noteCollection
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 noteCollection];

  return v3;
}

- (BOOL)shouldIncludeSubfolders
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 shouldIncludeSubfolders];

  return v3;
}

- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 virtualSmartFolder];

  return v3;
}

- (void)updateIndexerForCurrentNoteContainerViewMode
{
  v3 = [(ICNoteBrowseDataSource *)self pinnedNotesSectionMinimumCount];
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setPinnedNotesSectionMinimumCount:v3];

  v5 = [(ICNoteBrowseDataSource *)self indexer];
  [v5 setShouldIncludeOutlineParentItems:1];

  v6 = [(ICNoteBrowseDataSource *)self noteContainerViewMode]== 0;
  v7 = [(ICNoteBrowseDataSource *)self indexer];
  v8 = [v7 folderIndexer];
  [v8 setShouldIncludeSubfolders:v6];

  if ([(ICNoteBrowseDataSource *)self noteContainerViewMode]== 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [(ICNoteBrowseDataSource *)self setAutoExpandMode:v9];
}

- (unint64_t)pinnedNotesSectionMinimumCount
{
  if ([(ICNoteBrowseDataSource *)self isTrashFolder])
  {
    return -1;
  }

  v4 = [(ICNoteBrowseDataSource *)self noteContainer];
  if ([v4 isShowingDateHeaders])
  {
    goto LABEL_6;
  }

  v5 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
  if ([v5 isShowingDateHeaders])
  {

LABEL_6:
    return 1;
  }

  v6 = [(ICNoteBrowseDataSource *)self indexer];
  v7 = [v6 isShowingDateHeaders];

  if (v7)
  {
    return 1;
  }

  v8 = [(ICNoteBrowseDataSource *)self noteContainerViewMode];
  switch(v8)
  {
    case -1:
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1004D7E74(v9);
      }

      return 1;
    case 0:
      return 1;
    case 1:
      return 5;
    default:
      return 0;
  }
}

- (BOOL)isTrashFolder
{
  v3 = [(ICNoteBrowseDataSource *)self noteContainer];
  if ([v3 isTrashFolder])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    v4 = [v5 isTrashFolder];
  }

  return v4;
}

- (unint64_t)totalNoteCount
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 totalNoteCount];

  return v3;
}

- (unint64_t)totalFolderCount
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 totalFolderCount];

  return v3;
}

- (unint64_t)totalInvitationsCount
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 totalInvitationsCount];

  return v3;
}

- (ICQuery)noteQuery
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 noteQuery];

  return v3;
}

- (ICNoteBrowseDataSource)initWithCollectionView:(id)a3 presentingViewController:(id)a4 noteContainerViewMode:(int64_t)a5 folderDataSource:(id)a6 persistenceConfiguration:(id)a7
{
  v12 = a3;
  v13 = a4;
  v82 = a6;
  v14 = a7;
  v84 = v12;
  v15 = v12;
  v16 = v14;
  objc_initWeak(location, v15);
  objc_initWeak(&from, self);
  [(ICNoteBrowseDataSource *)self setPersistenceConfiguration:v16];
  v17 = [v16 legacyViewContext];
  [(ICNoteBrowseDataSource *)self setLegacyViewContext:v17];

  v18 = [v16 modernViewContext];
  [(ICNoteBrowseDataSource *)self setModernViewContext:v18];

  v19 = [v16 modernBackgroundContext];
  [(ICNoteBrowseDataSource *)self setModernBackgroundContext:v19];

  v20 = [ICNoteCoreDataIndexer alloc];
  v21 = [(ICNoteBrowseDataSource *)self legacyViewContext];
  v22 = [(ICNoteBrowseDataSource *)self modernBackgroundContext];
  v83 = [v20 initWithLegacyManagedObjectContext:v21 modernManagedObjectContext:v22];

  v23 = objc_opt_class();
  v131[0] = _NSConcreteStackBlock;
  v131[1] = 3221225472;
  v131[2] = sub_10003D97C;
  v131[3] = &unk_100645610;
  v132[1] = a5;
  objc_copyWeak(v132, &from);
  v24 = [UICollectionViewCellRegistration registrationWithCellClass:v23 configurationHandler:v131];
  v77 = v16;
  objc_initWeak(&v130, v13);
  v25 = objc_opt_class();
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_10003DAE4;
  v126[3] = &unk_100645638;
  objc_copyWeak(&v127, &from);
  objc_copyWeak(&v128, &v130);
  objc_copyWeak(&v129, location);
  v26 = [UICollectionViewCellRegistration registrationWithCellClass:v25 configurationHandler:v126];
  v69 = a5;
  v27 = objc_opt_class();
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10003DC90;
  v123[3] = &unk_100645660;
  objc_copyWeak(&v124, &from);
  objc_copyWeak(&v125, location);
  v28 = [UICollectionViewCellRegistration registrationWithCellClass:v27 configurationHandler:v123];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [UINib nibWithNibName:v30 bundle:0];

  v120[0] = _NSConcreteStackBlock;
  v120[1] = 3221225472;
  v120[2] = sub_10003DDA4;
  v120[3] = &unk_100645688;
  objc_copyWeak(&v121, &from);
  objc_copyWeak(&v122, location);
  v81 = v31;
  v32 = [UICollectionViewCellRegistration registrationWithCellNib:v31 configurationHandler:v120];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = [UINib nibWithNibName:v34 bundle:0];

  v117[0] = _NSConcreteStackBlock;
  v117[1] = 3221225472;
  v117[2] = sub_10003DEB8;
  v117[3] = &unk_1006456B0;
  objc_copyWeak(&v118, &from);
  objc_copyWeak(&v119, location);
  v80 = v35;
  v36 = [UICollectionViewCellRegistration registrationWithCellNib:v35 configurationHandler:v117];
  v37 = objc_opt_class();
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_10003DFBC;
  v115[3] = &unk_100645740;
  objc_copyWeak(&v116, &from);
  v38 = [UICollectionViewCellRegistration registrationWithCellClass:v37 configurationHandler:v115];
  v39 = objc_opt_class();
  obj = v13;
  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_10003E2DC;
  v113[3] = &unk_1006457B8;
  objc_copyWeak(&v114, &from);
  v40 = [UICollectionViewCellRegistration registrationWithCellClass:v39 configurationHandler:v113];
  v41 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionHeader configurationHandler:&stru_1006457F8];
  v42 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionFooter configurationHandler:&stru_100645838];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_10003E768;
  v104[3] = &unk_100645860;
  v76 = v24;
  v105 = v76;
  v75 = v38;
  v106 = v75;
  v74 = v40;
  v107 = v74;
  objc_copyWeak(&v112, &from);
  v43 = v26;
  v108 = v43;
  v73 = v36;
  v109 = v73;
  v44 = v28;
  v110 = v44;
  v45 = v32;
  v111 = v45;
  v46 = objc_retainBlock(v104);
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_10003E950;
  v100[3] = &unk_100645888;
  objc_copyWeak(&v103, &from);
  v47 = v41;
  v101 = v47;
  v48 = v42;
  v102 = v48;
  v78 = objc_retainBlock(v100);
  v99.receiver = self;
  v99.super_class = ICNoteBrowseDataSource;
  v49 = [(ICNoteBrowseDataSource *)&v99 initWithCollectionView:v84 cellProvider:v46 indexer:v83];
  v50 = v49;
  v70 = v47;
  v71 = v45;
  v72 = v43;
  v52 = v80;
  v51 = v81;
  if (v49)
  {
    objc_storeWeak(&v49->_presentingViewController, obj);
    objc_storeWeak(&v50->_folderDataSource, v82);
    v53 = objc_alloc_init(UICollectionViewDiffableDataSourceSectionSnapshotHandlers);
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_10003EA98;
    v97[3] = &unk_1006458B0;
    objc_copyWeak(&v98, &from);
    [v53 setShouldExpandItemHandler:v97];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_10003EB24;
    v95[3] = &unk_1006458B0;
    objc_copyWeak(&v96, &from);
    [v53 setShouldCollapseItemHandler:v95];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_10003EBB0;
    v93[3] = &unk_1006458D8;
    objc_copyWeak(&v94, &from);
    [v53 setWillExpandItemHandler:v93];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10003ECB0;
    v91[3] = &unk_1006458D8;
    objc_copyWeak(&v92, &from);
    [v53 setWillCollapseItemHandler:v91];
    v54 = [(ICNoteBrowseDataSource *)v50 collectionViewDiffableDataSource];
    [v54 setSectionSnapshotHandlers:v53];

    [(ICNoteBrowseDataSource *)v50 setSectionTypes:&off_10066E2C0];
    v55 = [(ICNoteBrowseDataSource *)v50 collectionViewDiffableDataSource];
    [v55 setSupplementaryViewProvider:v78];

    [(ICNoteBrowseDataSource *)v50 setNoteContainerViewMode:v69];
    v56 = [[ICSelectorDelayer alloc] initWithTarget:v50 selector:"reindexDataAnimatedYes" delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:0.3];
    lockedNotesMigratorDidMigrateNoteDelayer = v50->_lockedNotesMigratorDidMigrateNoteDelayer;
    v50->_lockedNotesMigratorDidMigrateNoteDelayer = v56;

    v58 = +[ICNoteContext sharedContext];
    v59 = [v58 crossProcessChangeCoordinator];
    v60 = ICLockedNotesModeMigratorDidMigrateNoteNotification;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10003EDB0;
    v88[3] = &unk_100645900;
    objc_copyWeak(&v89, location);
    objc_copyWeak(&v90, &from);
    v61 = [v59 registerForCrossProcessNotificationName:v60 block:v88];
    noteMigrationObserver = v50->_noteMigrationObserver;
    v50->_noteMigrationObserver = v61;

    v63 = +[ICNoteContext sharedContext];
    v64 = [v63 crossProcessChangeCoordinator];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10003EE4C;
    v85[3] = &unk_100645900;
    objc_copyWeak(&v86, location);
    objc_copyWeak(&v87, &from);
    v65 = [v64 registerForEditorExtensionDidSaveNotificationWithBlock:v85];
    editorExtensionDidSaveNotificationObserver = v50->_editorExtensionDidSaveNotificationObserver;
    v50->_editorExtensionDidSaveNotificationObserver = v65;

    objc_destroyWeak(&v87);
    objc_destroyWeak(&v86);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&v89);
    objc_destroyWeak(&v92);
    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&v98);

    v52 = v80;
    v51 = v81;
  }

  v67 = v50;

  objc_destroyWeak(&v103);
  objc_destroyWeak(&v112);

  objc_destroyWeak(&v114);
  objc_destroyWeak(&v116);

  objc_destroyWeak(&v119);
  objc_destroyWeak(&v118);

  objc_destroyWeak(&v122);
  objc_destroyWeak(&v121);

  objc_destroyWeak(&v125);
  objc_destroyWeak(&v124);

  objc_destroyWeak(&v129);
  objc_destroyWeak(&v128);
  objc_destroyWeak(&v127);
  objc_destroyWeak(&v130);

  objc_destroyWeak(v132);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  return v67;
}

- (void)dealloc
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 crossProcessChangeCoordinator];
  v5 = [(ICNoteBrowseDataSource *)self noteMigrationObserver];
  [v4 removeCrossProcessNotificationObserver:v5];

  v6 = +[ICNoteContext sharedContext];
  v7 = [v6 crossProcessChangeCoordinator];
  v8 = [(ICNoteBrowseDataSource *)self editorExtensionDidSaveNotificationObserver];
  [v7 removeCrossProcessNotificationObserver:v8];

  v9.receiver = self;
  v9.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v9 dealloc];
}

- (void)setShouldIncludeSubfolders:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setShouldIncludeSubfolders:v3];
}

- (BOOL)shouldIncludeTags
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 shouldIncludeTags];

  return v3;
}

- (void)setShouldIncludeTags:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setShouldIncludeTags:v3];
}

- (BOOL)shouldIncludeTagDetail
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 shouldIncludeTagDetail];

  return v3;
}

- (void)setShouldIncludeTagDetail:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setShouldIncludeTagDetail:v3];
}

- (BOOL)shouldIncludeInvitations
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 shouldIncludeInvitations];

  return v3;
}

- (void)setShouldIncludeInvitations:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setShouldIncludeInvitations:v3];
}

- (void)setNoteContainer:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseDataSource *)self indexer];
  [v5 setNoteContainer:v4];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteCollection:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseDataSource *)self indexer];
  [v5 setNoteCollection:v4];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteQuery:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseDataSource *)self indexer];
  [v5 setNoteQuery:v4];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setVirtualSmartFolder:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseDataSource *)self indexer];
  [v5 setVirtualSmartFolder:v4];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteContainerViewMode:(int64_t)a3
{
  if (self->_noteContainerViewMode != a3)
  {
    self->_noteContainerViewMode = a3;
    v6 = [(ICNoteBrowseDataSource *)self collectionView];
    [v6 setNoteContainerViewMode:a3];

    [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
  }
}

- (ICFolderCustomNoteSortType)sortType
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 sortType];

  return v3;
}

- (void)setSortType:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
  v7 = [(ICNoteBrowseDataSource *)self indexer];
  [v7 setSortType:v6 force:v4];
}

- (int64_t)dateHeadersType
{
  v2 = [(ICNoteBrowseDataSource *)self indexer];
  v3 = [v2 dateHeadersType];

  return v3;
}

- (void)setDateHeadersType:(int64_t)a3
{
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 setDateHeadersType:a3];
}

- (BOOL)needsReindexWithCollectionDifference:(id)a3 controller:(id)a4 identifiersToReload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v25.receiver = self;
  v25.super_class = ICNoteBrowseDataSource;
  v29 = [(ICNoteBrowseDataSource *)&v25 needsReindexWithCollectionDifference:v8 controller:v9 identifiersToReload:v10];
  if (v27[3])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(ICNoteBrowseDataSource *)self indexer];
    v13 = [v12 isShowingDateHeaders];

    if (v13)
    {
      v14 = +[NSMutableSet set];
      v15 = [v8 insertions];
      v16 = [v8 removals];
      v17 = [v15 arrayByAddingObjectsFromArray:v16];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10003F6F4;
      v20[3] = &unk_100645950;
      v18 = v14;
      v21 = v18;
      v23 = self;
      v24 = &v26;
      v22 = v9;
      [v17 enumerateObjectsUsingBlock:v20];
      v11 = *(v27 + 24);
    }

    else
    {
      v11 = *(v27 + 24);
    }
  }

  _Block_object_dispose(&v26, 8);

  return v11 & 1;
}

- (NSManagedObjectContext)modernViewContext
{
  v2 = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  v3 = [v2 modernViewContext];

  return v3;
}

- (id)emptyConfigurationForNoteWithObjectID:(id)a3
{
  v4 = a3;
  if ([v4 ic_isModernNoteType])
  {
    v5 = [(ICNoteBrowseDataSource *)self modernViewContext];
    v6 = [v5 ic_existingObjectWithID:v4];

    v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v6];
    v8 = [(ICNoteBrowseDataSource *)self noteContainer];
    v9 = [v8 customNoteSortType];
    [(ICNoteResultsCellConfiguration *)v7 setFolderNoteSortType:v9];

    v10 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    v11 = [v10 type];
    -[ICNoteResultsCellConfiguration setShowParticipantsInfo:](v7, "setShowParticipantsInfo:", [v11 isEqual:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou]);

    v12 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    v13 = [v12 type];
    v14 = [v13 isEqualToString:ICVirtualSmartFolderItemIdentifierTypeSystemPaper];

    if ([(ICNoteBrowseDataSource *)self shouldStyleForCalculator]|| (v14 & 1) != 0)
    {
      [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:0];
    }

    else
    {
      v15 = [(ICNoteBrowseDataSource *)self noteContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v16 = [(ICNoteBrowseDataSource *)self noteContainer];
        v17 = ICDynamicCast();
        if ([v17 isSmartFolder])
        {
          [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:1];
        }

        else
        {
          v26 = [(ICNoteBrowseDataSource *)self noteQuery];
          [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:v26 != 0];
        }
      }

      else
      {
        [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:1];
      }
    }

    objc_opt_class();
    v27 = [(ICNoteBrowseDataSource *)self noteContainer];
    v28 = ICDynamicCast();
    [(ICNoteResultsCellConfiguration *)v7 setIsDisplayedInFolder:v28 != 0];

    v20 = [(ICNoteBrowseDataSource *)self folderDataSource];
    if ([v20 countOfAllVisibleAccounts] >= 2)
    {
      v21 = [(ICNoteBrowseDataSource *)self noteQuery];
      if (!v21)
      {
        v29 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
        if (v29)
        {
          v30 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
          v31 = [v30 accountObjectID];
          [(ICNoteResultsCellConfiguration *)v7 setShowAccountName:v31 == 0];
        }

        else
        {
          [(ICNoteResultsCellConfiguration *)v7 setShowAccountName:0];
        }

        goto LABEL_27;
      }

      v23 = v7;
      v22 = 1;
LABEL_21:
      [(ICNoteResultsCellConfiguration *)v23 setShowAccountName:v22];
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if ([v4 ic_isLegacyNoteType])
  {
    v18 = [(ICNoteBrowseDataSource *)self legacyViewContext];
    v6 = [v18 ic_existingObjectWithID:v4];

    v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v6];
    v19 = [(ICNoteBrowseDataSource *)self noteCollection];
    objc_opt_class();
    [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:objc_opt_isKindOfClass() & 1];

    v20 = [(ICNoteBrowseDataSource *)self noteCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(ICNoteBrowseDataSource *)self folderDataSource];
      v22 = [v21 countOfAllVisibleAccounts] > 1;
      v23 = v7;
      goto LABEL_21;
    }

LABEL_22:
    [(ICNoteResultsCellConfiguration *)v7 setShowAccountName:0];
LABEL_28:

    [(ICNoteResultsCellConfiguration *)v7 setHideThumbnailImage:[(ICNoteBrowseDataSource *)self isTrashFolder]];
    goto LABEL_29;
  }

  if (![v4 ic_isInvitationType])
  {
    v7 = 0;
    goto LABEL_30;
  }

  v24 = [(ICNoteBrowseDataSource *)self modernViewContext];
  v6 = [v24 ic_existingObjectWithID:v4];

  v7 = [[ICNoteResultsCellConfiguration alloc] initWithInvitation:v6];
  v25 = [(ICNoteBrowseDataSource *)self folderDataSource];
  -[ICNoteResultsCellConfiguration setShowAccountName:](v7, "setShowAccountName:", [v25 countOfAllVisibleAccounts] > 1);

  [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:0];
LABEL_29:

LABEL_30:

  return v7;
}

- (BOOL)shouldStyleForCalculator
{
  v2 = [(ICNoteBrowseDataSource *)self collectionView];
  v3 = [v2 ic_behavior] == 1;

  return v3;
}

- (void)accountHidesNotesInCustomFoldersDidChange:(id)a3
{
  v19.receiver = self;
  v19.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v19 accountHidesNotesInCustomFoldersDidChange:a3];
  v4 = [(ICNoteBrowseDataSource *)self indexer];
  [v4 updateContainerPredicate];

  [(ICNoteBrowseDataSource *)self reloadDataAnimated:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICNoteBrowseDataSource *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        v12 = [(ICNoteBrowseDataSource *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v11];
        v14 = ICDynamicCast();

        [v14 updateNoteCount];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)noteLockManagerDidToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = ICCheckedDynamicCast();

  v7 = [v6 updatedNote];

  if (v7)
  {
    v8 = [v6 updatedNote];
    v9 = [v8 objectID];
    v10 = [NSSet setWithObject:v9];
    v11 = [(ICNoteBrowseDataSource *)self associatedCellsForItemIdentifiers:v10];
    v12 = [v11 anyObject];

    v13 = [v6 updatedNote];
    v14 = [v13 objectID];
    v15 = [(ICNoteBrowseDataSource *)self emptyConfigurationForNoteWithObjectID:v14];
    objc_opt_class();
    v16 = ICDynamicCast();
    [v16 setConfiguration:v15];
  }

  v17.receiver = self;
  v17.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v17 noteLockManagerDidToggleLock:v4];
}

- (void)managedObjectContextUpdaterDidMerge:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:ICManagedObjectContextUpdaterChangeDictionaryKey];
  v7 = ICCheckedDynamicCast();

  v8 = [v7 objectForKey:NSInsertedObjectIDsKey];
  v9 = [v7 objectForKey:NSDeletedObjectIDsKey];
  v10 = [v7 objectForKey:NSUpdatedObjectIDsKey];
  v11 = [(ICNoteBrowseDataSource *)self indexer];
  v12 = [v11 noteContainer];
  v13 = [v12 isAllNotesContainer];

  if (!v13)
  {
    v21 = [(ICNoteBrowseDataSource *)self indexer];
    v22 = [v21 noteContainer];

    v23 = [(ICNoteBrowseDataSource *)self indexer];
    v24 = v23;
    if (v22)
    {
      v25 = [v23 noteContainer];
      v26 = [v25 objectID];
      v27 = [v10 containsObject:v26];

      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v31 = [v23 noteCollection];

      if (v31)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    v28 = [(ICNoteBrowseDataSource *)self collectionView];
    v29 = [v28 window];
    v30 = v29 != 0;

    [(ICNoteBrowseDataSource *)self reloadDataAnimated:v30];
    goto LABEL_11;
  }

  if ([v8 ic_containsObjectPassingTest:&stru_100645990] & 1) != 0 || (objc_msgSend(v9, "ic_containsObjectPassingTest:", &stru_100645990))
  {
    goto LABEL_10;
  }

LABEL_4:
  v14 = [(ICNoteBrowseDataSource *)self indexer];
  v15 = [v14 noteCollection];

  if (!v15)
  {
    v32 = v9;
    v33 = [v10 objectsPassingTest:&stru_100645990];
    v16 = [v33 mutableCopy];
    v17 = [(ICNoteBrowseDataSource *)self collectionViewDiffableDataSource];
    v18 = [v17 snapshot];
    v19 = [v18 itemIdentifiers];
    v20 = [NSSet setWithArray:v19];
    [v16 intersectSet:v20];

    if ([v16 count])
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v35, &location);
      v34 = v16;
      performBlockOnMainThread();

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    v9 = v32;
  }

LABEL_11:
}

- (ICFolderDataSource)folderDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_folderDataSource);

  return WeakRetained;
}

- (ICNAViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end