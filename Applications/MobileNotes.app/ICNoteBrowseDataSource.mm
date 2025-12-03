@interface ICNoteBrowseDataSource
- (BOOL)isTrashFolder;
- (BOOL)needsReindexWithCollectionDifference:(id)difference controller:(id)controller identifiersToReload:(id)reload;
- (BOOL)shouldIncludeInvitations;
- (BOOL)shouldIncludeSubfolders;
- (BOOL)shouldIncludeTagDetail;
- (BOOL)shouldIncludeTags;
- (BOOL)shouldStyleForCalculator;
- (ICFolderCustomNoteSortType)sortType;
- (ICFolderDataSource)folderDataSource;
- (ICNAViewController)presentingViewController;
- (ICNoteBrowseDataSource)initWithCollectionView:(id)view presentingViewController:(id)controller noteContainerViewMode:(int64_t)mode folderDataSource:(id)source persistenceConfiguration:(id)configuration;
- (ICNoteContainer)noteContainer;
- (ICNoteCoreDataIndexer)indexer;
- (ICQuery)noteQuery;
- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder;
- (NSManagedObjectContext)legacyViewContext;
- (NSManagedObjectContext)modernBackgroundContext;
- (NSManagedObjectContext)modernViewContext;
- (NoteCollectionObject)noteCollection;
- (id)emptyConfigurationForNoteWithObjectID:(id)d;
- (int64_t)dateHeadersType;
- (unint64_t)pinnedNotesSectionMinimumCount;
- (unint64_t)totalFolderCount;
- (unint64_t)totalInvitationsCount;
- (unint64_t)totalNoteCount;
- (void)accountHidesNotesInCustomFoldersDidChange:(id)change;
- (void)dealloc;
- (void)managedObjectContextUpdaterDidMerge:(id)merge;
- (void)noteLockManagerDidToggleLock:(id)lock;
- (void)setDateHeadersType:(int64_t)type;
- (void)setNoteCollection:(id)collection;
- (void)setNoteContainer:(id)container;
- (void)setNoteContainerViewMode:(int64_t)mode;
- (void)setNoteQuery:(id)query;
- (void)setShouldIncludeInvitations:(BOOL)invitations;
- (void)setShouldIncludeSubfolders:(BOOL)subfolders;
- (void)setShouldIncludeTagDetail:(BOOL)detail;
- (void)setShouldIncludeTags:(BOOL)tags;
- (void)setSortType:(id)type force:(BOOL)force;
- (void)setVirtualSmartFolder:(id)folder;
- (void)updateIndexerForCurrentNoteContainerViewMode;
@end

@implementation ICNoteBrowseDataSource

- (NSManagedObjectContext)legacyViewContext
{
  persistenceConfiguration = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  legacyViewContext = [persistenceConfiguration legacyViewContext];

  return legacyViewContext;
}

- (NSManagedObjectContext)modernBackgroundContext
{
  persistenceConfiguration = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  modernBackgroundContext = [persistenceConfiguration modernBackgroundContext];

  return modernBackgroundContext;
}

- (ICNoteContainer)noteContainer
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  noteContainer = [indexer noteContainer];

  return noteContainer;
}

- (ICNoteCoreDataIndexer)indexer
{
  objc_opt_class();
  v6.receiver = self;
  v6.super_class = ICNoteBrowseDataSource;
  indexer = [(ICNoteBrowseDataSource *)&v6 indexer];
  v4 = ICDynamicCast();

  return v4;
}

- (NoteCollectionObject)noteCollection
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  noteCollection = [indexer noteCollection];

  return noteCollection;
}

- (BOOL)shouldIncludeSubfolders
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  shouldIncludeSubfolders = [indexer shouldIncludeSubfolders];

  return shouldIncludeSubfolders;
}

- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  virtualSmartFolder = [indexer virtualSmartFolder];

  return virtualSmartFolder;
}

- (void)updateIndexerForCurrentNoteContainerViewMode
{
  pinnedNotesSectionMinimumCount = [(ICNoteBrowseDataSource *)self pinnedNotesSectionMinimumCount];
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setPinnedNotesSectionMinimumCount:pinnedNotesSectionMinimumCount];

  indexer2 = [(ICNoteBrowseDataSource *)self indexer];
  [indexer2 setShouldIncludeOutlineParentItems:1];

  v6 = [(ICNoteBrowseDataSource *)self noteContainerViewMode]== 0;
  indexer3 = [(ICNoteBrowseDataSource *)self indexer];
  folderIndexer = [indexer3 folderIndexer];
  [folderIndexer setShouldIncludeSubfolders:v6];

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

  noteContainer = [(ICNoteBrowseDataSource *)self noteContainer];
  if ([noteContainer isShowingDateHeaders])
  {
    goto LABEL_6;
  }

  virtualSmartFolder = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
  if ([virtualSmartFolder isShowingDateHeaders])
  {

LABEL_6:
    return 1;
  }

  indexer = [(ICNoteBrowseDataSource *)self indexer];
  isShowingDateHeaders = [indexer isShowingDateHeaders];

  if (isShowingDateHeaders)
  {
    return 1;
  }

  noteContainerViewMode = [(ICNoteBrowseDataSource *)self noteContainerViewMode];
  switch(noteContainerViewMode)
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
  noteContainer = [(ICNoteBrowseDataSource *)self noteContainer];
  if ([noteContainer isTrashFolder])
  {
    isTrashFolder = 1;
  }

  else
  {
    virtualSmartFolder = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    isTrashFolder = [virtualSmartFolder isTrashFolder];
  }

  return isTrashFolder;
}

- (unint64_t)totalNoteCount
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  totalNoteCount = [indexer totalNoteCount];

  return totalNoteCount;
}

- (unint64_t)totalFolderCount
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  totalFolderCount = [indexer totalFolderCount];

  return totalFolderCount;
}

- (unint64_t)totalInvitationsCount
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  totalInvitationsCount = [indexer totalInvitationsCount];

  return totalInvitationsCount;
}

- (ICQuery)noteQuery
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  noteQuery = [indexer noteQuery];

  return noteQuery;
}

- (ICNoteBrowseDataSource)initWithCollectionView:(id)view presentingViewController:(id)controller noteContainerViewMode:(int64_t)mode folderDataSource:(id)source persistenceConfiguration:(id)configuration
{
  viewCopy = view;
  controllerCopy = controller;
  sourceCopy = source;
  configurationCopy = configuration;
  v84 = viewCopy;
  v15 = viewCopy;
  v16 = configurationCopy;
  objc_initWeak(location, v15);
  objc_initWeak(&from, self);
  [(ICNoteBrowseDataSource *)self setPersistenceConfiguration:v16];
  legacyViewContext = [v16 legacyViewContext];
  [(ICNoteBrowseDataSource *)self setLegacyViewContext:legacyViewContext];

  modernViewContext = [v16 modernViewContext];
  [(ICNoteBrowseDataSource *)self setModernViewContext:modernViewContext];

  modernBackgroundContext = [v16 modernBackgroundContext];
  [(ICNoteBrowseDataSource *)self setModernBackgroundContext:modernBackgroundContext];

  v20 = [ICNoteCoreDataIndexer alloc];
  legacyViewContext2 = [(ICNoteBrowseDataSource *)self legacyViewContext];
  modernBackgroundContext2 = [(ICNoteBrowseDataSource *)self modernBackgroundContext];
  v83 = [v20 initWithLegacyManagedObjectContext:legacyViewContext2 modernManagedObjectContext:modernBackgroundContext2];

  v23 = objc_opt_class();
  v131[0] = _NSConcreteStackBlock;
  v131[1] = 3221225472;
  v131[2] = sub_10003D97C;
  v131[3] = &unk_100645610;
  v132[1] = mode;
  objc_copyWeak(v132, &from);
  v24 = [UICollectionViewCellRegistration registrationWithCellClass:v23 configurationHandler:v131];
  v77 = v16;
  objc_initWeak(&v130, controllerCopy);
  v25 = objc_opt_class();
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_10003DAE4;
  v126[3] = &unk_100645638;
  objc_copyWeak(&v127, &from);
  objc_copyWeak(&v128, &v130);
  objc_copyWeak(&v129, location);
  v26 = [UICollectionViewCellRegistration registrationWithCellClass:v25 configurationHandler:v126];
  modeCopy = mode;
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
  obj = controllerCopy;
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
    objc_storeWeak(&v50->_folderDataSource, sourceCopy);
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
    collectionViewDiffableDataSource = [(ICNoteBrowseDataSource *)v50 collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource setSectionSnapshotHandlers:v53];

    [(ICNoteBrowseDataSource *)v50 setSectionTypes:&off_10066E2C0];
    collectionViewDiffableDataSource2 = [(ICNoteBrowseDataSource *)v50 collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource2 setSupplementaryViewProvider:v78];

    [(ICNoteBrowseDataSource *)v50 setNoteContainerViewMode:modeCopy];
    v56 = [[ICSelectorDelayer alloc] initWithTarget:v50 selector:"reindexDataAnimatedYes" delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:0.3];
    lockedNotesMigratorDidMigrateNoteDelayer = v50->_lockedNotesMigratorDidMigrateNoteDelayer;
    v50->_lockedNotesMigratorDidMigrateNoteDelayer = v56;

    v58 = +[ICNoteContext sharedContext];
    crossProcessChangeCoordinator = [v58 crossProcessChangeCoordinator];
    v60 = ICLockedNotesModeMigratorDidMigrateNoteNotification;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10003EDB0;
    v88[3] = &unk_100645900;
    objc_copyWeak(&v89, location);
    objc_copyWeak(&v90, &from);
    v61 = [crossProcessChangeCoordinator registerForCrossProcessNotificationName:v60 block:v88];
    noteMigrationObserver = v50->_noteMigrationObserver;
    v50->_noteMigrationObserver = v61;

    v63 = +[ICNoteContext sharedContext];
    crossProcessChangeCoordinator2 = [v63 crossProcessChangeCoordinator];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10003EE4C;
    v85[3] = &unk_100645900;
    objc_copyWeak(&v86, location);
    objc_copyWeak(&v87, &from);
    v65 = [crossProcessChangeCoordinator2 registerForEditorExtensionDidSaveNotificationWithBlock:v85];
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
  crossProcessChangeCoordinator = [v3 crossProcessChangeCoordinator];
  noteMigrationObserver = [(ICNoteBrowseDataSource *)self noteMigrationObserver];
  [crossProcessChangeCoordinator removeCrossProcessNotificationObserver:noteMigrationObserver];

  v6 = +[ICNoteContext sharedContext];
  crossProcessChangeCoordinator2 = [v6 crossProcessChangeCoordinator];
  editorExtensionDidSaveNotificationObserver = [(ICNoteBrowseDataSource *)self editorExtensionDidSaveNotificationObserver];
  [crossProcessChangeCoordinator2 removeCrossProcessNotificationObserver:editorExtensionDidSaveNotificationObserver];

  v9.receiver = self;
  v9.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v9 dealloc];
}

- (void)setShouldIncludeSubfolders:(BOOL)subfolders
{
  subfoldersCopy = subfolders;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setShouldIncludeSubfolders:subfoldersCopy];
}

- (BOOL)shouldIncludeTags
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  shouldIncludeTags = [indexer shouldIncludeTags];

  return shouldIncludeTags;
}

- (void)setShouldIncludeTags:(BOOL)tags
{
  tagsCopy = tags;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setShouldIncludeTags:tagsCopy];
}

- (BOOL)shouldIncludeTagDetail
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  shouldIncludeTagDetail = [indexer shouldIncludeTagDetail];

  return shouldIncludeTagDetail;
}

- (void)setShouldIncludeTagDetail:(BOOL)detail
{
  detailCopy = detail;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setShouldIncludeTagDetail:detailCopy];
}

- (BOOL)shouldIncludeInvitations
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  shouldIncludeInvitations = [indexer shouldIncludeInvitations];

  return shouldIncludeInvitations;
}

- (void)setShouldIncludeInvitations:(BOOL)invitations
{
  invitationsCopy = invitations;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setShouldIncludeInvitations:invitationsCopy];
}

- (void)setNoteContainer:(id)container
{
  containerCopy = container;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setNoteContainer:containerCopy];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteCollection:(id)collection
{
  collectionCopy = collection;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setNoteCollection:collectionCopy];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteQuery:(id)query
{
  queryCopy = query;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setNoteQuery:queryCopy];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setVirtualSmartFolder:(id)folder
{
  folderCopy = folder;
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setVirtualSmartFolder:folderCopy];

  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
}

- (void)setNoteContainerViewMode:(int64_t)mode
{
  if (self->_noteContainerViewMode != mode)
  {
    self->_noteContainerViewMode = mode;
    collectionView = [(ICNoteBrowseDataSource *)self collectionView];
    [collectionView setNoteContainerViewMode:mode];

    [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
  }
}

- (ICFolderCustomNoteSortType)sortType
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  sortType = [indexer sortType];

  return sortType;
}

- (void)setSortType:(id)type force:(BOOL)force
{
  forceCopy = force;
  typeCopy = type;
  [(ICNoteBrowseDataSource *)self updateIndexerForCurrentNoteContainerViewMode];
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setSortType:typeCopy force:forceCopy];
}

- (int64_t)dateHeadersType
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  dateHeadersType = [indexer dateHeadersType];

  return dateHeadersType;
}

- (void)setDateHeadersType:(int64_t)type
{
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer setDateHeadersType:type];
}

- (BOOL)needsReindexWithCollectionDifference:(id)difference controller:(id)controller identifiersToReload:(id)reload
{
  differenceCopy = difference;
  controllerCopy = controller;
  reloadCopy = reload;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v25.receiver = self;
  v25.super_class = ICNoteBrowseDataSource;
  v29 = [(ICNoteBrowseDataSource *)&v25 needsReindexWithCollectionDifference:differenceCopy controller:controllerCopy identifiersToReload:reloadCopy];
  if (v27[3])
  {
    v11 = 1;
  }

  else
  {
    indexer = [(ICNoteBrowseDataSource *)self indexer];
    isShowingDateHeaders = [indexer isShowingDateHeaders];

    if (isShowingDateHeaders)
    {
      v14 = +[NSMutableSet set];
      insertions = [differenceCopy insertions];
      removals = [differenceCopy removals];
      v17 = [insertions arrayByAddingObjectsFromArray:removals];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10003F6F4;
      v20[3] = &unk_100645950;
      v18 = v14;
      v21 = v18;
      selfCopy = self;
      v24 = &v26;
      v22 = controllerCopy;
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
  persistenceConfiguration = [(ICNoteBrowseDataSource *)self persistenceConfiguration];
  modernViewContext = [persistenceConfiguration modernViewContext];

  return modernViewContext;
}

- (id)emptyConfigurationForNoteWithObjectID:(id)d
{
  dCopy = d;
  if ([dCopy ic_isModernNoteType])
  {
    modernViewContext = [(ICNoteBrowseDataSource *)self modernViewContext];
    v6 = [modernViewContext ic_existingObjectWithID:dCopy];

    v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v6];
    noteContainer = [(ICNoteBrowseDataSource *)self noteContainer];
    customNoteSortType = [noteContainer customNoteSortType];
    [(ICNoteResultsCellConfiguration *)v7 setFolderNoteSortType:customNoteSortType];

    virtualSmartFolder = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    type = [virtualSmartFolder type];
    -[ICNoteResultsCellConfiguration setShowParticipantsInfo:](v7, "setShowParticipantsInfo:", [type isEqual:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou]);

    virtualSmartFolder2 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
    type2 = [virtualSmartFolder2 type];
    v14 = [type2 isEqualToString:ICVirtualSmartFolderItemIdentifierTypeSystemPaper];

    if ([(ICNoteBrowseDataSource *)self shouldStyleForCalculator]|| (v14 & 1) != 0)
    {
      [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:0];
    }

    else
    {
      noteContainer2 = [(ICNoteBrowseDataSource *)self noteContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        noteContainer3 = [(ICNoteBrowseDataSource *)self noteContainer];
        v17 = ICDynamicCast();
        if ([v17 isSmartFolder])
        {
          [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:1];
        }

        else
        {
          noteQuery = [(ICNoteBrowseDataSource *)self noteQuery];
          [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:noteQuery != 0];
        }
      }

      else
      {
        [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:1];
      }
    }

    objc_opt_class();
    noteContainer4 = [(ICNoteBrowseDataSource *)self noteContainer];
    v28 = ICDynamicCast();
    [(ICNoteResultsCellConfiguration *)v7 setIsDisplayedInFolder:v28 != 0];

    folderDataSource = [(ICNoteBrowseDataSource *)self folderDataSource];
    if ([folderDataSource countOfAllVisibleAccounts] >= 2)
    {
      noteQuery2 = [(ICNoteBrowseDataSource *)self noteQuery];
      if (!noteQuery2)
      {
        virtualSmartFolder3 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
        if (virtualSmartFolder3)
        {
          virtualSmartFolder4 = [(ICNoteBrowseDataSource *)self virtualSmartFolder];
          accountObjectID = [virtualSmartFolder4 accountObjectID];
          [(ICNoteResultsCellConfiguration *)v7 setShowAccountName:accountObjectID == 0];
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

  if ([dCopy ic_isLegacyNoteType])
  {
    legacyViewContext = [(ICNoteBrowseDataSource *)self legacyViewContext];
    v6 = [legacyViewContext ic_existingObjectWithID:dCopy];

    v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v6];
    noteCollection = [(ICNoteBrowseDataSource *)self noteCollection];
    objc_opt_class();
    [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:objc_opt_isKindOfClass() & 1];

    folderDataSource = [(ICNoteBrowseDataSource *)self noteCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      noteQuery2 = [(ICNoteBrowseDataSource *)self folderDataSource];
      v22 = [noteQuery2 countOfAllVisibleAccounts] > 1;
      v23 = v7;
      goto LABEL_21;
    }

LABEL_22:
    [(ICNoteResultsCellConfiguration *)v7 setShowAccountName:0];
LABEL_28:

    [(ICNoteResultsCellConfiguration *)v7 setHideThumbnailImage:[(ICNoteBrowseDataSource *)self isTrashFolder]];
    goto LABEL_29;
  }

  if (![dCopy ic_isInvitationType])
  {
    v7 = 0;
    goto LABEL_30;
  }

  modernViewContext2 = [(ICNoteBrowseDataSource *)self modernViewContext];
  v6 = [modernViewContext2 ic_existingObjectWithID:dCopy];

  v7 = [[ICNoteResultsCellConfiguration alloc] initWithInvitation:v6];
  folderDataSource2 = [(ICNoteBrowseDataSource *)self folderDataSource];
  -[ICNoteResultsCellConfiguration setShowAccountName:](v7, "setShowAccountName:", [folderDataSource2 countOfAllVisibleAccounts] > 1);

  [(ICNoteResultsCellConfiguration *)v7 setShowFolderName:0];
LABEL_29:

LABEL_30:

  return v7;
}

- (BOOL)shouldStyleForCalculator
{
  collectionView = [(ICNoteBrowseDataSource *)self collectionView];
  v3 = [collectionView ic_behavior] == 1;

  return v3;
}

- (void)accountHidesNotesInCustomFoldersDidChange:(id)change
{
  v19.receiver = self;
  v19.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v19 accountHidesNotesInCustomFoldersDidChange:change];
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  [indexer updateContainerPredicate];

  [(ICNoteBrowseDataSource *)self reloadDataAnimated:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  collectionView = [(ICNoteBrowseDataSource *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        collectionView2 = [(ICNoteBrowseDataSource *)self collectionView];
        v13 = [collectionView2 cellForItemAtIndexPath:v11];
        v14 = ICDynamicCast();

        [v14 updateNoteCount];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)noteLockManagerDidToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];
  v6 = ICCheckedDynamicCast();

  updatedNote = [v6 updatedNote];

  if (updatedNote)
  {
    updatedNote2 = [v6 updatedNote];
    objectID = [updatedNote2 objectID];
    v10 = [NSSet setWithObject:objectID];
    v11 = [(ICNoteBrowseDataSource *)self associatedCellsForItemIdentifiers:v10];
    anyObject = [v11 anyObject];

    updatedNote3 = [v6 updatedNote];
    objectID2 = [updatedNote3 objectID];
    v15 = [(ICNoteBrowseDataSource *)self emptyConfigurationForNoteWithObjectID:objectID2];
    objc_opt_class();
    v16 = ICDynamicCast();
    [v16 setConfiguration:v15];
  }

  v17.receiver = self;
  v17.super_class = ICNoteBrowseDataSource;
  [(ICNoteBrowseDataSource *)&v17 noteLockManagerDidToggleLock:lockCopy];
}

- (void)managedObjectContextUpdaterDidMerge:(id)merge
{
  mergeCopy = merge;
  objc_opt_class();
  userInfo = [mergeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:ICManagedObjectContextUpdaterChangeDictionaryKey];
  v7 = ICCheckedDynamicCast();

  v8 = [v7 objectForKey:NSInsertedObjectIDsKey];
  v9 = [v7 objectForKey:NSDeletedObjectIDsKey];
  v10 = [v7 objectForKey:NSUpdatedObjectIDsKey];
  indexer = [(ICNoteBrowseDataSource *)self indexer];
  noteContainer = [indexer noteContainer];
  isAllNotesContainer = [noteContainer isAllNotesContainer];

  if (!isAllNotesContainer)
  {
    indexer2 = [(ICNoteBrowseDataSource *)self indexer];
    noteContainer2 = [indexer2 noteContainer];

    indexer3 = [(ICNoteBrowseDataSource *)self indexer];
    v24 = indexer3;
    if (noteContainer2)
    {
      noteContainer3 = [indexer3 noteContainer];
      objectID = [noteContainer3 objectID];
      v27 = [v10 containsObject:objectID];

      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      noteCollection = [indexer3 noteCollection];

      if (noteCollection)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    collectionView = [(ICNoteBrowseDataSource *)self collectionView];
    window = [collectionView window];
    v30 = window != 0;

    [(ICNoteBrowseDataSource *)self reloadDataAnimated:v30];
    goto LABEL_11;
  }

  if ([v8 ic_containsObjectPassingTest:&stru_100645990] & 1) != 0 || (objc_msgSend(v9, "ic_containsObjectPassingTest:", &stru_100645990))
  {
    goto LABEL_10;
  }

LABEL_4:
  indexer4 = [(ICNoteBrowseDataSource *)self indexer];
  noteCollection2 = [indexer4 noteCollection];

  if (!noteCollection2)
  {
    v32 = v9;
    v33 = [v10 objectsPassingTest:&stru_100645990];
    v16 = [v33 mutableCopy];
    collectionViewDiffableDataSource = [(ICNoteBrowseDataSource *)self collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];
    v20 = [NSSet setWithArray:itemIdentifiers];
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