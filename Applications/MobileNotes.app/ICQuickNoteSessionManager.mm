@interface ICQuickNoteSessionManager
+ (BOOL)lastViewedDateExpired:(id)expired currentDate:(id)date;
+ (BOOL)requirePasscodeInContext:(id)context stateArchive:(id)archive;
+ (BOOL)requirePasscodeInContext:(id)context stateArchive:(id)archive currentDate:(id)date;
+ (id)sharedManager;
- (BOOL)isQuickNoteFirstLaunch;
- (ICNote)createdNoteForSession;
- (ICViewControllerManager)viewControllerManager;
- (id)newEmptyNoteInContext:(id)context;
- (id)noteForSessionCreatingIfNecessaryInContext:(id)context stateArchive:(id)archive canResume:(BOOL)resume currentDate:(id)date isNewlyCreated:(BOOL *)created;
- (id)noteForSessionCreatingIfNecessaryInContext:(id)context stateArchive:(id)archive canResume:(BOOL)resume isNewlyCreated:(BOOL *)created;
- (void)beginSessionWithNoteEditorViewController:(id)controller;
- (void)endSession;
- (void)saveSession;
- (void)setQuickNoteFirstLaunch:(BOOL)launch;
@end

@implementation ICQuickNoteSessionManager

+ (id)sharedManager
{
  if (qword_1006CB2D8 != -1)
  {
    sub_100027938();
  }

  v3 = qword_1006CB2D0;

  return v3;
}

- (ICViewControllerManager)viewControllerManager
{
  noteEditorViewController = [(ICQuickNoteSessionManager *)self noteEditorViewController];
  ic_viewControllerManager = [noteEditorViewController ic_viewControllerManager];

  return ic_viewControllerManager;
}

- (BOOL)isQuickNoteFirstLaunch
{
  objc_opt_class();
  v2 = [ICSettingsUtilities objectForKey:@"QNFirstLaunchState"];
  v3 = ICCheckedDynamicCast();

  if (v3 && ([v3 BOOLValue] & 1) == 0)
  {
    objc_opt_class();
    v5 = [ICSettingsUtilities objectForKey:@"QNForceFirstLaunchStateTrue"];
    v6 = ICCheckedDynamicCast();

    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setQuickNoteFirstLaunch:(BOOL)launch
{
  v3 = [NSNumber numberWithBool:launch];
  [ICSettingsUtilities setObject:v3 forKey:@"QNFirstLaunchState"];
}

+ (BOOL)requirePasscodeInContext:(id)context stateArchive:(id)archive
{
  archiveCopy = archive;
  contextCopy = context;
  v8 = +[NSDate date];
  LOBYTE(self) = [self requirePasscodeInContext:contextCopy stateArchive:archiveCopy currentDate:v8];

  return self;
}

+ (BOOL)requirePasscodeInContext:(id)context stateArchive:(id)archive currentDate:(id)date
{
  archiveCopy = archive;
  dateCopy = date;
  if (+[ICQuickNoteSessionSettings showOnLockScreen](ICQuickNoteSessionSettings, "showOnLockScreen") == 1 || +[ICQuickNoteSessionSettings showOnLockScreen]== 3)
  {
    v10 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DC45C();
    }

    v11 = 0;
  }

  else if (+[ICQuickNoteSessionSettings showOnLockScreen]== 2)
  {
    currentNoteLastViewedDate = [archiveCopy currentNoteLastViewedDate];
    v11 = [self lastViewedDateExpired:currentNoteLastViewedDate currentDate:dateCopy];
  }

  else
  {
    v11 = 1;
  }

  v12 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = 138413058;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = +[ICQuickNoteSessionSettings showOnLockScreen];
    v24 = 2048;
    v25 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ %@ showOnLockScreen %ld requirePasscode %ld", &v18, 0x2Au);
  }

  return v11;
}

- (id)noteForSessionCreatingIfNecessaryInContext:(id)context stateArchive:(id)archive canResume:(BOOL)resume isNewlyCreated:(BOOL *)created
{
  resumeCopy = resume;
  archiveCopy = archive;
  contextCopy = context;
  v12 = +[NSDate date];
  v13 = [(ICQuickNoteSessionManager *)self noteForSessionCreatingIfNecessaryInContext:contextCopy stateArchive:archiveCopy canResume:resumeCopy currentDate:v12 isNewlyCreated:created];

  return v13;
}

- (id)noteForSessionCreatingIfNecessaryInContext:(id)context stateArchive:(id)archive canResume:(BOOL)resume currentDate:(id)date isNewlyCreated:(BOOL *)created
{
  resumeCopy = resume;
  contextCopy = context;
  archiveCopy = archive;
  dateCopy = date;
  if (created)
  {
    *created = 0;
  }

  v16 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    *buf = 138413058;
    v66 = v37;
    v67 = 2112;
    v68 = v38;
    v69 = 1024;
    LODWORD(v70[0]) = resumeCopy;
    WORD2(v70[0]) = 2112;
    *(v70 + 6) = dateCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ %@ canResume %d currentDate %@", buf, 0x26u);
  }

  if (ICInternalSettingsIsSelectionStateTrackingEnabled())
  {
    if (resumeCopy && +[ICQuickNoteSessionSettings showOnLockScreen]== 2)
    {
      v17 = [_TtC11MobileNotes25ICSelectionStateUtilities selectedNoteObjectIDFromArchive:archiveCopy modernManagedObjectContext:contextCopy legacyManagedObjectContext:0];
      createdNoteForSession = [ICNote ic_existingObjectWithID:v17 context:contextCopy];
      v19 = os_log_create("com.apple.notes", "QuickNote");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_19:

        goto LABEL_26;
      }
    }

    else
    {
      if (+[ICQuickNoteSessionSettings showOnLockScreen]!= 3)
      {
        goto LABEL_31;
      }

      v24 = objc_opt_class();
      currentNoteLastViewedDate = [archiveCopy currentNoteLastViewedDate];
      LOBYTE(v24) = [v24 lastViewedDateExpired:currentNoteLastViewedDate currentDate:dateCopy];

      if (v24)
      {
        goto LABEL_31;
      }

      v17 = [_TtC11MobileNotes25ICSelectionStateUtilities selectedNoteObjectIDFromArchive:archiveCopy modernManagedObjectContext:contextCopy legacyManagedObjectContext:0];
      createdNoteForSession = [ICNote ic_existingObjectWithID:v17 context:contextCopy];
      v19 = os_log_create("com.apple.notes", "QuickNote");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }
    }

    v55 = objc_opt_class();
    v63 = NSStringFromClass(v55);
    v62 = NSStringFromSelector(a2);
    shortLoggingDescription = [createdNoteForSession shortLoggingDescription];
    *buf = 138412802;
    v66 = v63;
    v67 = 2112;
    v68 = v62;
    v69 = 2112;
    v70[0] = shortLoggingDescription;
    v57 = shortLoggingDescription;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ %@ found %@", buf, 0x20u);

    goto LABEL_19;
  }

  if (resumeCopy && +[ICQuickNoteSessionSettings showOnLockScreen]== 2)
  {
    v20 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = NSStringFromSelector(a2);
      currentNoteObjectIDURL = [archiveCopy currentNoteObjectIDURL];
      *buf = 138412802;
      v66 = v52;
      v67 = 2112;
      v68 = v53;
      v69 = 2112;
      v70[0] = currentNoteObjectIDURL;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@ %@ looking for current note %@", buf, 0x20u);
    }

    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    currentNoteObjectIDURL2 = [archiveCopy currentNoteObjectIDURL];
    v23 = [persistentStoreCoordinator ic_managedObjectIDForURIRepresentation:currentNoteObjectIDURL2];
    createdNoteForSession = [ICNote ic_existingObjectWithID:v23 context:contextCopy];

    v19 = os_log_create("com.apple.notes", "QuickNote");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (+[ICQuickNoteSessionSettings showOnLockScreen]!= 3)
    {
      goto LABEL_31;
    }

    v26 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = NSStringFromSelector(a2);
      currentNoteObjectIDURL3 = [archiveCopy currentNoteObjectIDURL];
      *buf = 138412802;
      v66 = v48;
      v67 = 2112;
      v68 = v49;
      v69 = 2112;
      v70[0] = currentNoteObjectIDURL3;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@ %@ looking for instant note %@", buf, 0x20u);
    }

    v27 = objc_opt_class();
    currentNoteLastViewedDate2 = [archiveCopy currentNoteLastViewedDate];
    LOBYTE(v27) = [v27 lastViewedDateExpired:currentNoteLastViewedDate2 currentDate:dateCopy];

    if (v27)
    {
      goto LABEL_31;
    }

    persistentStoreCoordinator2 = [contextCopy persistentStoreCoordinator];
    currentNoteObjectIDURL4 = [archiveCopy currentNoteObjectIDURL];
    v31 = [persistentStoreCoordinator2 ic_managedObjectIDForURIRepresentation:currentNoteObjectIDURL4];
    createdNoteForSession = [ICNote ic_existingObjectWithID:v31 context:contextCopy];

    v19 = os_log_create("com.apple.notes", "QuickNote");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  v58 = objc_opt_class();
  v64 = NSStringFromClass(v58);
  v59 = NSStringFromSelector(a2);
  shortLoggingDescription2 = [createdNoteForSession shortLoggingDescription];
  *buf = 138412802;
  v66 = v64;
  v67 = 2112;
  v68 = v59;
  v69 = 2112;
  v70[0] = shortLoggingDescription2;
  v61 = shortLoggingDescription2;
  _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ %@ found %@", buf, 0x20u);

LABEL_25:
  v17 = v19;
LABEL_26:

  if (createdNoteForSession)
  {
    if (![createdNoteForSession isDeletedOrInTrash])
    {
      goto LABEL_37;
    }

    v32 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DC49C();
    }
  }

LABEL_31:
  createdNoteForSession = [(ICQuickNoteSessionManager *)self createdNoteForSession];
  if (!createdNoteForSession)
  {
    createdNoteForSession = [(ICQuickNoteSessionManager *)self newEmptyNoteInContext:contextCopy];
    [(ICQuickNoteSessionManager *)self setCreatedNoteForSession:createdNoteForSession];
    if (created)
    {
      *created = 1;
    }

    v33 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      shortLoggingDescription3 = [createdNoteForSession shortLoggingDescription];
      *buf = 138412802;
      v66 = v44;
      v67 = 2112;
      v68 = v45;
      v69 = 2112;
      v70[0] = shortLoggingDescription3;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%@ %@ created new note %@", buf, 0x20u);
    }
  }

LABEL_37:
  v34 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = NSStringFromSelector(a2);
    shortLoggingDescription4 = [createdNoteForSession shortLoggingDescription];
    *buf = 138412802;
    v66 = v40;
    v67 = 2112;
    v68 = v41;
    v69 = 2112;
    v70[0] = shortLoggingDescription4;
    _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@ %@ note %@", buf, 0x20u);
  }

  return createdNoteForSession;
}

- (void)beginSessionWithNoteEditorViewController:(id)controller
{
  controllerCopy = controller;
  if ([(ICQuickNoteSessionManager *)self isQuickNoteSessionActive])
  {
    [ICAssert handleFailedAssertWithCondition:"!self.isQuickNoteSessionActive" functionName:"[ICQuickNoteSessionManager beginSessionWithNoteEditorViewController:]" simulateCrash:1 showAlert:0 format:@"Beginning a quicknote session when one is active"];
  }

  [(ICQuickNoteSessionManager *)self setQuickNoteSessionActive:1];
  [(ICQuickNoteSessionManager *)self setNoteEditorViewController:controllerCopy];

  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC540(self);
  }
}

- (void)saveSession
{
  if (![(ICQuickNoteSessionManager *)self isQuickNoteSessionActive])
  {
    [ICAssert handleFailedAssertWithCondition:"self.isQuickNoteSessionActive" functionName:"[ICQuickNoteSessionManager saveSession]" simulateCrash:1 showAlert:0 format:@"Attempting to save a quicknote session when one is not active"];
  }

  noteEditorViewController = [(ICQuickNoteSessionManager *)self noteEditorViewController];

  if (!noteEditorViewController)
  {
    [ICAssert handleFailedAssertWithCondition:"self.noteEditorViewController" functionName:"[ICQuickNoteSessionManager saveSession]" simulateCrash:1 showAlert:0 format:@"Attempting to save a quicknote session without a note editor"];
  }

  v4 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC608(self);
  }

  if ([(ICQuickNoteSessionManager *)self isQuickNoteSessionActive])
  {
    noteEditorViewController2 = [(ICQuickNoteSessionManager *)self noteEditorViewController];

    if (noteEditorViewController2)
    {
      viewControllerManager = [(ICQuickNoteSessionManager *)self viewControllerManager];
      windowStateArchive = [viewControllerManager windowStateArchive];

      v8 = +[ICAppDelegate sharedInstance];
      [v8 saveQuicknoteArchiveState:windowStateArchive];

      v9 = +[ICAppDelegate sharedInstance];
      [v9 saveLastBackgroundedArchiveState:windowStateArchive];
    }
  }
}

- (void)endSession
{
  if (![(ICQuickNoteSessionManager *)self isQuickNoteSessionActive])
  {
    [ICAssert handleFailedAssertWithCondition:"self.isQuickNoteSessionActive" functionName:"[ICQuickNoteSessionManager endSession]" simulateCrash:1 showAlert:0 format:@"Ending a quicknote session when one is not active"];
  }

  v3 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC6D0(self);
  }

  if (+[ICQuickNoteSessionSettings showOnLockScreen]== 2)
  {
    noteEditorViewController = [(ICQuickNoteSessionManager *)self noteEditorViewController];
    note = [noteEditorViewController note];
    v6 = +[ICNoteContext sharedContext];
    [v6 setCurrentNote:note];
  }

  [(ICQuickNoteSessionManager *)self saveSession];
  [(ICQuickNoteSessionManager *)self setQuickNoteSessionActive:0];
  [(ICQuickNoteSessionManager *)self setNoteEditorViewController:0];
  [(ICQuickNoteSessionManager *)self setCreatedNoteForSession:0];
}

- (id)newEmptyNoteInContext:(id)context
{
  v3 = [ICAccount defaultAccountInContext:context];
  defaultFolder = [v3 defaultFolder];
  v5 = [ICNote newEmptyNoteInFolder:defaultFolder];

  objc_opt_class();
  v6 = [ICSettingsUtilities objectForKey:@"PaperStyle"];
  v7 = ICCheckedDynamicCast();
  intValue = [v7 intValue];

  if (intValue <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = intValue;
  }

  [v5 setPaperStyleType:v9];

  return v5;
}

+ (BOOL)lastViewedDateExpired:(id)expired currentDate:(id)date
{
  expiredCopy = expired;
  dateCopy = date;
  v7 = +[ICQuickNoteSessionSettings sessionDuration];
  v8 = v7;
  if (v7 == -1)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (expiredCopy)
  {
    if (v7 == -2)
    {
      v9 = [expiredCopy ic_isToday] ^ 1;
      v10 = os_log_create("com.apple.notes", "QuickNote");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DC894();
      }

LABEL_12:

      goto LABEL_14;
    }

    if (v7 >= 1)
    {
      [dateCopy timeIntervalSinceDate:expiredCopy];
      v12 = v11;
      v13 = os_log_create("com.apple.notes", "QuickNote");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DC798();
      }

      v9 = v12 > v8;
      v10 = os_log_create("com.apple.notes", "QuickNote");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DC810();
      }

      goto LABEL_12;
    }
  }

  v9 = 1;
LABEL_14:
  v14 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138413058;
    v17 = expiredCopy;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    v23 = v9;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "lastViewedDateExpired:%@ currentDate:%@ sessionDuration %f expired %d", &v16, 0x26u);
  }

  return v9;
}

- (ICNote)createdNoteForSession
{
  WeakRetained = objc_loadWeakRetained(&self->_createdNoteForSession);

  return WeakRetained;
}

@end