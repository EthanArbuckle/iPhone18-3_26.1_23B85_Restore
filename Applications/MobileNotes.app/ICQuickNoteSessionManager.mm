@interface ICQuickNoteSessionManager
+ (BOOL)lastViewedDateExpired:(id)a3 currentDate:(id)a4;
+ (BOOL)requirePasscodeInContext:(id)a3 stateArchive:(id)a4;
+ (BOOL)requirePasscodeInContext:(id)a3 stateArchive:(id)a4 currentDate:(id)a5;
+ (id)sharedManager;
- (BOOL)isQuickNoteFirstLaunch;
- (ICNote)createdNoteForSession;
- (ICViewControllerManager)viewControllerManager;
- (id)newEmptyNoteInContext:(id)a3;
- (id)noteForSessionCreatingIfNecessaryInContext:(id)a3 stateArchive:(id)a4 canResume:(BOOL)a5 currentDate:(id)a6 isNewlyCreated:(BOOL *)a7;
- (id)noteForSessionCreatingIfNecessaryInContext:(id)a3 stateArchive:(id)a4 canResume:(BOOL)a5 isNewlyCreated:(BOOL *)a6;
- (void)beginSessionWithNoteEditorViewController:(id)a3;
- (void)endSession;
- (void)saveSession;
- (void)setQuickNoteFirstLaunch:(BOOL)a3;
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
  v2 = [(ICQuickNoteSessionManager *)self noteEditorViewController];
  v3 = [v2 ic_viewControllerManager];

  return v3;
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

    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setQuickNoteFirstLaunch:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  [ICSettingsUtilities setObject:v3 forKey:@"QNFirstLaunchState"];
}

+ (BOOL)requirePasscodeInContext:(id)a3 stateArchive:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSDate date];
  LOBYTE(a1) = [a1 requirePasscodeInContext:v7 stateArchive:v6 currentDate:v8];

  return a1;
}

+ (BOOL)requirePasscodeInContext:(id)a3 stateArchive:(id)a4 currentDate:(id)a5
{
  v8 = a4;
  v9 = a5;
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
    v14 = [v8 currentNoteLastViewedDate];
    v11 = [a1 lastViewedDateExpired:v14 currentDate:v9];
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

- (id)noteForSessionCreatingIfNecessaryInContext:(id)a3 stateArchive:(id)a4 canResume:(BOOL)a5 isNewlyCreated:(BOOL *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[NSDate date];
  v13 = [(ICQuickNoteSessionManager *)self noteForSessionCreatingIfNecessaryInContext:v11 stateArchive:v10 canResume:v7 currentDate:v12 isNewlyCreated:a6];

  return v13;
}

- (id)noteForSessionCreatingIfNecessaryInContext:(id)a3 stateArchive:(id)a4 canResume:(BOOL)a5 currentDate:(id)a6 isNewlyCreated:(BOOL *)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (a7)
  {
    *a7 = 0;
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
    LODWORD(v70[0]) = v9;
    WORD2(v70[0]) = 2112;
    *(v70 + 6) = v15;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ %@ canResume %d currentDate %@", buf, 0x26u);
  }

  if (ICInternalSettingsIsSelectionStateTrackingEnabled())
  {
    if (v9 && +[ICQuickNoteSessionSettings showOnLockScreen]== 2)
    {
      v17 = [_TtC11MobileNotes25ICSelectionStateUtilities selectedNoteObjectIDFromArchive:v14 modernManagedObjectContext:v13 legacyManagedObjectContext:0];
      v18 = [ICNote ic_existingObjectWithID:v17 context:v13];
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
      v25 = [v14 currentNoteLastViewedDate];
      LOBYTE(v24) = [v24 lastViewedDateExpired:v25 currentDate:v15];

      if (v24)
      {
        goto LABEL_31;
      }

      v17 = [_TtC11MobileNotes25ICSelectionStateUtilities selectedNoteObjectIDFromArchive:v14 modernManagedObjectContext:v13 legacyManagedObjectContext:0];
      v18 = [ICNote ic_existingObjectWithID:v17 context:v13];
      v19 = os_log_create("com.apple.notes", "QuickNote");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }
    }

    v55 = objc_opt_class();
    v63 = NSStringFromClass(v55);
    v62 = NSStringFromSelector(a2);
    v56 = [v18 shortLoggingDescription];
    *buf = 138412802;
    v66 = v63;
    v67 = 2112;
    v68 = v62;
    v69 = 2112;
    v70[0] = v56;
    v57 = v56;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ %@ found %@", buf, 0x20u);

    goto LABEL_19;
  }

  if (v9 && +[ICQuickNoteSessionSettings showOnLockScreen]== 2)
  {
    v20 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = NSStringFromSelector(a2);
      v54 = [v14 currentNoteObjectIDURL];
      *buf = 138412802;
      v66 = v52;
      v67 = 2112;
      v68 = v53;
      v69 = 2112;
      v70[0] = v54;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@ %@ looking for current note %@", buf, 0x20u);
    }

    v21 = [v13 persistentStoreCoordinator];
    v22 = [v14 currentNoteObjectIDURL];
    v23 = [v21 ic_managedObjectIDForURIRepresentation:v22];
    v18 = [ICNote ic_existingObjectWithID:v23 context:v13];

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
      v50 = [v14 currentNoteObjectIDURL];
      *buf = 138412802;
      v66 = v48;
      v67 = 2112;
      v68 = v49;
      v69 = 2112;
      v70[0] = v50;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@ %@ looking for instant note %@", buf, 0x20u);
    }

    v27 = objc_opt_class();
    v28 = [v14 currentNoteLastViewedDate];
    LOBYTE(v27) = [v27 lastViewedDateExpired:v28 currentDate:v15];

    if (v27)
    {
      goto LABEL_31;
    }

    v29 = [v13 persistentStoreCoordinator];
    v30 = [v14 currentNoteObjectIDURL];
    v31 = [v29 ic_managedObjectIDForURIRepresentation:v30];
    v18 = [ICNote ic_existingObjectWithID:v31 context:v13];

    v19 = os_log_create("com.apple.notes", "QuickNote");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  v58 = objc_opt_class();
  v64 = NSStringFromClass(v58);
  v59 = NSStringFromSelector(a2);
  v60 = [v18 shortLoggingDescription];
  *buf = 138412802;
  v66 = v64;
  v67 = 2112;
  v68 = v59;
  v69 = 2112;
  v70[0] = v60;
  v61 = v60;
  _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ %@ found %@", buf, 0x20u);

LABEL_25:
  v17 = v19;
LABEL_26:

  if (v18)
  {
    if (![v18 isDeletedOrInTrash])
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
  v18 = [(ICQuickNoteSessionManager *)self createdNoteForSession];
  if (!v18)
  {
    v18 = [(ICQuickNoteSessionManager *)self newEmptyNoteInContext:v13];
    [(ICQuickNoteSessionManager *)self setCreatedNoteForSession:v18];
    if (a7)
    {
      *a7 = 1;
    }

    v33 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      v46 = [v18 shortLoggingDescription];
      *buf = 138412802;
      v66 = v44;
      v67 = 2112;
      v68 = v45;
      v69 = 2112;
      v70[0] = v46;
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
    v42 = [v18 shortLoggingDescription];
    *buf = 138412802;
    v66 = v40;
    v67 = 2112;
    v68 = v41;
    v69 = 2112;
    v70[0] = v42;
    _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@ %@ note %@", buf, 0x20u);
  }

  return v18;
}

- (void)beginSessionWithNoteEditorViewController:(id)a3
{
  v4 = a3;
  if ([(ICQuickNoteSessionManager *)self isQuickNoteSessionActive])
  {
    [ICAssert handleFailedAssertWithCondition:"!self.isQuickNoteSessionActive" functionName:"[ICQuickNoteSessionManager beginSessionWithNoteEditorViewController:]" simulateCrash:1 showAlert:0 format:@"Beginning a quicknote session when one is active"];
  }

  [(ICQuickNoteSessionManager *)self setQuickNoteSessionActive:1];
  [(ICQuickNoteSessionManager *)self setNoteEditorViewController:v4];

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

  v3 = [(ICQuickNoteSessionManager *)self noteEditorViewController];

  if (!v3)
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
    v5 = [(ICQuickNoteSessionManager *)self noteEditorViewController];

    if (v5)
    {
      v6 = [(ICQuickNoteSessionManager *)self viewControllerManager];
      v7 = [v6 windowStateArchive];

      v8 = +[ICAppDelegate sharedInstance];
      [v8 saveQuicknoteArchiveState:v7];

      v9 = +[ICAppDelegate sharedInstance];
      [v9 saveLastBackgroundedArchiveState:v7];
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
    v4 = [(ICQuickNoteSessionManager *)self noteEditorViewController];
    v5 = [v4 note];
    v6 = +[ICNoteContext sharedContext];
    [v6 setCurrentNote:v5];
  }

  [(ICQuickNoteSessionManager *)self saveSession];
  [(ICQuickNoteSessionManager *)self setQuickNoteSessionActive:0];
  [(ICQuickNoteSessionManager *)self setNoteEditorViewController:0];
  [(ICQuickNoteSessionManager *)self setCreatedNoteForSession:0];
}

- (id)newEmptyNoteInContext:(id)a3
{
  v3 = [ICAccount defaultAccountInContext:a3];
  v4 = [v3 defaultFolder];
  v5 = [ICNote newEmptyNoteInFolder:v4];

  objc_opt_class();
  v6 = [ICSettingsUtilities objectForKey:@"PaperStyle"];
  v7 = ICCheckedDynamicCast();
  v8 = [v7 intValue];

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [v5 setPaperStyleType:v9];

  return v5;
}

+ (BOOL)lastViewedDateExpired:(id)a3 currentDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[ICQuickNoteSessionSettings sessionDuration];
  v8 = v7;
  if (v7 == -1)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    if (v7 == -2)
    {
      v9 = [v5 ic_isToday] ^ 1;
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
      [v6 timeIntervalSinceDate:v5];
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
    v17 = v5;
    v18 = 2112;
    v19 = v6;
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