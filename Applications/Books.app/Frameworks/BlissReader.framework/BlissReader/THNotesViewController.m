@interface THNotesViewController
+ (id)newNotesViewController;
- (THNotesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)annotationsForIndexPaths:(id)a3 updateChapterTitle:(BOOL)a4;
- (id)p_allAnnotationsForSearchText:(id)a3;
- (id)p_nonOrphanedAnnotationsForSearchText:(id)a3;
- (id)p_orphanedAnnotationsForSearchText:(id)a3;
- (id)p_subject;
- (unint64_t)numberOfNotes;
- (void)cleanup;
- (void)dealloc;
- (void)dismissActivityController:(BOOL)a3;
- (void)endEditingDidDelete:(BOOL)a3;
- (void)finishedDismissing;
- (void)handleAction:(id)a3;
- (void)handleDelete:(id)a3;
- (void)handleEmail:(id)a3;
- (void)hideForEnterStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)hideWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)noteWasDeleted;
- (void)p_deleteSelectedNotes;
- (void)p_releaseChildViewControllers;
- (void)p_setupChildViewControllers;
- (void)p_updateNotesExist;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setBookViewController:(id)a3;
- (void)showForExitStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)showWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)updateSectionProviders;
- (void)updateWithNavigationUnit:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation THNotesViewController

+ (id)newNotesViewController
{
  v2 = [THNotesViewControllerPad alloc];

  return [(THNotesViewControllerPad *)v2 initWithNibName:0 bundle:0];
}

- (THNotesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = THBundle();
  v9.receiver = self;
  v9.super_class = THNotesViewController;
  v7 = [(THNotesViewController *)&v9 initWithNibName:a3 bundle:v6];
  if (v7 && [(THNotesViewController *)v7 isMemberOfClass:objc_opt_class()])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v7;
}

- (void)dealloc
{
  [(THNotesViewController *)self cleanup];
  v3.receiver = self;
  v3.super_class = THNotesViewController;
  [(THNotesViewController *)&v3 dealloc];
}

- (void)cleanup
{
  self->_selectedAnnotations = 0;

  self->_mutableSectionProviders = 0;
  self->_mailComposeViewController = 0;

  self->_activityController = 0;

  [(THNotesViewController *)self p_releaseChildViewControllers];
}

- (void)setBookViewController:(id)a3
{
  if (self->_bookViewController != a3)
  {
    self->_bookViewController = a3;
    [(THNotesDetailTableViewController *)self->_notesDetailViewController setBookViewController:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THNotesViewController;
  [(THNotesViewController *)&v4 viewWillAppear:a3];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"keyboardDidHide:" object:UIKeyboardDidHideNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"keyboardDidShow:" object:UIKeyboardDidShowNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"keyboardWillHide:" object:UIKeyboardWillHideNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"keyboardWillShow:" object:UIKeyboardWillShowNotification, 0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THNotesViewController;
  [(THNotesViewController *)&v4 viewWillDisappear:a3];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIKeyboardDidHideNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIKeyboardDidShowNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIKeyboardWillHideNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIKeyboardWillShowNotification, 0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = THNotesViewController;
  [(THNotesViewController *)&v3 viewDidLoad];
  [-[THNotesViewController view](self "view")];
  [(THNotesViewController *)self p_setupChildViewControllers];
  self->_notesExist = 0;
}

- (id)p_allAnnotationsForSearchText:(id)a3
{
  v5 = [a3 length];
  annotationController = self->_annotationController;
  if (v5)
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForSearchText:a3];
  }

  else
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForAllNotes];
  }

  v8 = v7;
  v9 = self->_annotationController;

  return [(THAnnotationStorageController *)v9 cachedAnnotationsForFetchRequest:v8 migrateIfNecessary:0];
}

- (id)p_nonOrphanedAnnotationsForSearchText:(id)a3
{
  v5 = [a3 length];
  annotationController = self->_annotationController;
  if (v5)
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForNonOrphanedSearchText:a3];
  }

  else
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForNonOrphanedNotes];
  }

  v8 = v7;
  v9 = self->_annotationController;

  return [(THAnnotationStorageController *)v9 cachedAnnotationsForFetchRequest:v8 migrateIfNecessary:0];
}

- (id)p_orphanedAnnotationsForSearchText:(id)a3
{
  v5 = [a3 length];
  annotationController = self->_annotationController;
  if (v5)
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForOrphanedSearchText:a3];
  }

  else
  {
    v7 = [(THAnnotationStorageController *)annotationController annotationRequestForOrphanedNotes];
  }

  v8 = v7;
  v9 = self->_annotationController;

  return [(THAnnotationStorageController *)v9 cachedAnnotationsForFetchRequest:v8 migrateIfNecessary:0];
}

- (void)p_updateNotesExist
{
  if ([-[THNotesViewController searchText](self "searchText")])
  {
    v3 = [-[THNotesViewController p_allAnnotationsForSearchText:](self p_allAnnotationsForSearchText:{&stru_471858), "count"}];
  }

  else
  {
    v3 = [(THNotesViewController *)self numberOfNotes];
  }

  self->_notesExist = v3 != 0;
}

- (void)updateSectionProviders
{
  v3 = [(THNotesViewController *)self p_nonOrphanedAnnotationsForSearchText:[(THNotesViewController *)self searchText]];
  v4 = [(THNotesViewController *)self p_orphanedAnnotationsForSearchText:[(THNotesViewController *)self searchText]];
  v5 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mutableSectionProviders = self->_mutableSectionProviders;
  v7 = [(NSMutableArray *)mutableSectionProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(mutableSectionProviders);
        }

        [*(*(&v12 + 1) + 8 * i) updateWithAllAnnotations:v3 orphanedAnnotations:v4 annotationController:self->_annotationController navigationModel:v5];
      }

      v8 = [(NSMutableArray *)mutableSectionProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(THNotesViewController *)self p_updateNotesExist];
  [(THNotesSidebarViewController *)self->_notesSidebarViewController updateVisibleIndexes];
  if ([(THNotesSidebarViewController *)self->_notesSidebarViewController providerIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(NSMutableArray *)self->_mutableSectionProviders objectAtIndex:[(THNotesSidebarViewController *)self->_notesSidebarViewController providerIndex]];
  }

  -[THNotesDetailTableViewController reloadWithSections:force:](self->_notesDetailViewController, "reloadWithSections:force:", [v11 sectionArray], 1);
  [(THNotesViewController *)self sectionProvidersDidChange];
}

- (void)noteWasDeleted
{
  [-[THDocumentViewController canvasViewController](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];

  [(THNotesViewController *)self updateSectionProviders];
}

- (unint64_t)numberOfNotes
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mutableSectionProviders = self->_mutableSectionProviders;
  v3 = [(NSMutableArray *)mutableSectionProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(mutableSectionProviders);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      objc_opt_class();
      if (!TSUDynamicCast())
      {
        v5 += [v8 annotationCount];
      }
    }

    v4 = [(NSMutableArray *)mutableSectionProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5;
}

- (void)updateWithNavigationUnit:(id)a3
{
  annotationController = self->_annotationController;
  if (!annotationController)
  {
    annotationController = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
    self->_annotationController = annotationController;
    if (!annotationController)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      annotationController = self->_annotationController;
    }
  }

  [(THAnnotationStorageController *)annotationController ensureNonSponsoredAnnotationsAreMigrated];
  v6 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
  v20 = self;
  v7 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v10 = [v6 firstNavigationUnit];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [[THNotesViewChapter alloc] initWithNavigationUnit:v11 navigationModel:v6 tocModel:v7 chapterIndex:v12];
      [v9 addObject:v11];
      [v8 addObject:v14];

      if (a3 && (!v13 || [v11 isEqual:a3]))
      {
        v13 = v14;
      }

      v11 = [v6 navigationUnitFollowingNavigationUnit:v11];
      ++v12;
    }

    while (v11);
  }

  else
  {
    v13 = 0;
  }

  v15 = [[THNotesViewAllChapters alloc] initWithNavigationUnits:v9 navigationModel:v6];
  [v8 insertObject:v15 atIndex:0];

  v16 = objc_alloc_init(THNotesViewOrphans);
  [v8 addObject:v16];

  v17 = v8;
  v20->_mutableSectionProviders = v17;
  [(THNotesSidebarViewController *)v20->_notesSidebarViewController setSectionProviders:v17];
  if (TSUPadUI())
  {
    v18 = 1;
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v18 = [(NSMutableArray *)v20->_mutableSectionProviders indexOfObjectIdenticalTo:v13];
  }

  [(THNotesSidebarViewController *)v20->_notesSidebarViewController setProviderIndex:v18];
  [(THNotesViewController *)v20 updateSectionProviders];
  notesDetailViewController = v20->_notesDetailViewController;

  [(THNotesDetailTableViewController *)notesDetailViewController scrollToTop];
}

- (void)p_setupChildViewControllers
{
  notesSidebarViewController = self->_notesSidebarViewController;
  if (!notesSidebarViewController)
  {
    self->_notesSidebarViewController = [[THNotesSidebarViewController alloc] initWithNibName:0 bundle:THBundle()];
    [(THNotesSidebarViewController *)self->_notesSidebarViewController setSidebarDelegate:[(THNotesViewController *)self sizingDelegate]];
    notesSidebarViewController = self->_notesSidebarViewController;
  }

  [(THNotesSidebarViewController *)notesSidebarViewController view];
  [(UISearchBar *)[(THNotesSidebarViewController *)self->_notesSidebarViewController searchBar] setDelegate:self];
  v4 = [(THNotesViewController *)self bookViewController];
  notesDetailViewController = self->_notesDetailViewController;

  [(THNotesDetailTableViewController *)notesDetailViewController setBookViewController:v4];
}

- (void)p_releaseChildViewControllers
{
  [(THNotesDetailTableViewController *)self->_notesDetailViewController setDelegate:0];
  [(THNotesDetailTableViewController *)self->_notesDetailViewController setBookViewController:0];

  self->_notesDetailViewController = 0;
  self->_notesSidebarViewController = 0;
}

- (void)finishedDismissing
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THNotesViewController finishedDismissing]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:358 description:@"Subclass must implement"];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [a3 setText:0];
  [a3 resignFirstResponder];

  [(THNotesViewController *)self searchTextDidChange];
}

- (void)showWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THNotesViewController showWithPrepare:duration:completion:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:467 description:@"Subclass must implement"];
}

- (void)hideWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THNotesViewController hideWithPrepare:duration:completion:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:472 description:@"Subclass must implement"];
}

- (void)showForExitStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THNotesViewController showForExitStudyModeWithPrepare:duration:completion:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:477 description:@"Subclass must implement"];
}

- (void)hideForEnterStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THNotesViewController hideForEnterStudyModeWithPrepare:duration:completion:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:482 description:@"Subclass must implement"];
}

- (id)annotationsForIndexPaths:(id)a3 updateChapterTitle:(BOOL)a4
{
  v4 = a4;
  v18 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a3;
  v8 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v16 = v4;
    do
    {
      v11 = 0;
      v17 = v9;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [(THNotesDetailTableViewController *)self->_notesDetailViewController cachedAnnotationForIndexPath:v12];
        if (v4)
        {
          v14 = [(THNotesDetailTableViewController *)self->_notesDetailViewController sectionTitleForIndexPath:v12];
          if (!v14)
          {
            v4 = v16;
            v9 = v17;
            v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Chapter %lu: %@" value:&stru_471858 table:0], -[THNotesSidebarViewController providerIndex](self->_notesSidebarViewController, "providerIndex") + 1, objc_msgSend(-[NSMutableArray objectAtIndex:](self->_mutableSectionProviders, "objectAtIndex:", -[THNotesSidebarViewController providerIndex](self->_notesSidebarViewController, "providerIndex")), "title"));
          }

          v13 = [(THAnnotationStorageController *)[(THNotesViewController *)self annotationController] modifiedAnnotation:v13 withChapterTitle:v14 physicalPageNumber:[(THBookViewController *)self->_bookViewController pageNumberStringForAnnotation:v13]];
        }

        if (v13)
        {
          [v18 addObject:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v18;
}

- (void)handleEmail:(id)a3
{
  if (+[MFMailComposeViewController canSendMail])
  {
    v4 = [(NSMutableDictionary *)[(THNotesDetailTableViewController *)self->_notesDetailViewController selectedNotes] allKeys];
    if ([v4 count])
    {
      selectedAnnotations = [-[THNotesViewController annotationsForIndexPaths:updateChapterTitle:](self annotationsForIndexPaths:v4 updateChapterTitle:{1), "mutableCopy"}];
      self->_selectedAnnotations = selectedAnnotations;
    }

    else
    {
      selectedAnnotations = self->_selectedAnnotations;
    }

    v10 = [(NSMutableArray *)selectedAnnotations count];
    v11 = self->_selectedAnnotations;
    if (v10)
    {
      if (v11)
      {

        [(THNotesViewController *)self p_finishHandleEmail];
        return;
      }
    }

    else
    {

      self->_selectedAnnotations = 0;
    }

    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v12 = [THBundle() localizedStringForKey:@"Email Notes" value:&stru_471858 table:0];
    v7 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v12, [THBundle() localizedStringForKey:@"Cannot email notes; no valid annotations were selected" value:&stru_471858 table:0], 1);
    v8 = THBundle();
    v9 = @"Cancel";
  }

  else
  {
    v6 = [THBundle() localizedStringForKey:@"No email accounts configured" value:&stru_471858 table:0];
    v7 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v6, [THBundle() localizedStringForKey:@"Add a mail account in Settings to send mail from Apple Books." value:&stru_471858 table:0], 1);
    v8 = THBundle();
    v9 = @"OK";
  }

  -[UIAlertController addAction:](v7, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [v8 localizedStringForKey:v9 value:&stru_471858 table:0], 1, 0));

  [(THNotesViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)p_subject
{
  v3 = [(THBookViewController *)[(THNotesViewController *)self bookViewController] bookDescription];
  v4 = [(THNotesSidebarViewController *)self->_notesSidebarViewController providerIndex];
  v5 = [(NSMutableArray *)self->_mutableSectionProviders objectAtIndex:v4];
  v6 = [(THBookDescription *)v3 bookTitle];
  if (!v6)
  {
    v6 = [THBundle() localizedStringForKey:@"untitled book" value:@"Untitled" table:0];
  }

  if ([v5 isAllNotes])
  {
    v7 = THBundle();
    v8 = @"Notes from \\U201C%@,\\U201D All Chapters";
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v7 localizedStringForKey:v8 value:&stru_471858 table:0], v6, v11, v12);
  }

  if ([v5 isOrphanedNotes])
  {
    v7 = THBundle();
    v8 = @"Old Notes from \\U201C%@\\U201D";
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v7 localizedStringForKey:v8 value:&stru_471858 table:0], v6, v11, v12);
  }

  v10 = [v5 title];
  if (!v10)
  {
    v10 = [THBundle() localizedStringForKey:@"untitled chapter" value:@"Untitled" table:0];
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Notes from \\U201C%@ value:\\U201D Chapter %lu: %@" table:{&stru_471858, 0}], v6, v4 + 1, v10);
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  [(THNotesViewController *)self dismissViewControllerAnimated:1 completion:0, a5];

  self->_mailComposeViewController = 0;
}

- (void)dismissActivityController:(BOOL)a3
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = sub_13A8E8;
  v4[4] = sub_13A8F8;
  v4[5] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_13A904;
  v3[3] = &unk_45B000;
  v3[4] = v4;
  [-[IMActivityController viewController](-[THNotesViewController activityController](self "activityController")];
  _Block_object_dispose(v4, 8);
}

- (void)handleAction:(id)a3
{
  [(THNotesViewController *)self dismissActivityController:1];
  v5 = [(THNotesViewController *)self annotationsForIndexPaths:[(NSMutableDictionary *)[(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] selectedNotes] allKeys] updateChapterTitle:1];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [(THNotesViewController *)self bookViewController];
    v9 = v8;
    v10 = v7 == &dword_0 + 1 ? -[THBookViewController activityItemProviderWithCachedAnnotation:](v8, "activityItemProviderWithCachedAnnotation:", [v5 objectAtIndex:0]) : -[THBookViewController activityItemProviderWithCachedAnnotations:](v8, "activityItemProviderWithCachedAnnotations:", v5);
    if (v10)
    {
      v17 = v10;
      v11 = [[IMActivityController alloc] initWithActivityItems:+[NSArray arrayWithObjects:count:](NSArray applicationActivities:"arrayWithObjects:count:" shareType:&v17 propertySource:1) tracker:{0, objc_msgSend(v10, "shareType"), objc_msgSend(v10, "propertySource"), -[THNotesViewController ba_effectiveAnalyticsTracker](self, "ba_effectiveAnalyticsTracker")}];
      [(THNotesViewController *)self setActivityController:v11];
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3052000000;
      v16[3] = sub_13A8E8;
      v16[4] = sub_13A8F8;
      v16[5] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_13AC48;
      v15[3] = &unk_45DE38;
      v15[4] = v16;
      [(IMActivityController *)[(THNotesViewController *)self activityController] setCompletionHandler:v15];

      -[IMActivityController setManagedBook:](-[THNotesViewController activityController](self, "activityController"), "setManagedBook:", [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](v9 "documentViewController")]);
      v12 = [(IMActivityController *)[(THNotesViewController *)self activityController] viewController];
      [v12 setModalPresentationStyle:7];
      [v12 setOverrideUserInterfaceStyle:{-[THNotesViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
      v13 = [v12 popoverPresentationController];
      [v13 setPermittedArrowDirections:15];
      objc_opt_class();
      v14 = TSUDynamicCast();
      if (v14)
      {
        [v13 setBarButtonItem:v14];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v13 setSourceView:{objc_msgSend(a3, "superview")}];
        [a3 frame];
        [v13 setSourceRect:?];
      }

      [v13 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:self];
      [(THNotesViewController *)self bc_presentViewController:v12 animated:1 tintColor:+[UIColor completion:"bc_booksKeyColor"], 0];
      _Block_object_dispose(v16, 8);
    }
  }
}

- (void)endEditingDidDelete:(BOOL)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THNotesViewController endEditingDidDelete:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:695 description:@"subclass responsibility"];
}

- (void)p_deleteSelectedNotes
{
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] deleteSelectedNotes];

  [(THNotesViewController *)self endEditingDidDelete:1];
}

- (void)handleDelete:(id)a3
{
  [(THNotesViewController *)self dismissActivityController:1];
  if ([(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] countOfUserNotesToDelete])
  {
    v4 = [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] countOfItemsToDelete];
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = @"Delete Highlight";
      }

      else
      {
        v5 = @"Delete Highlights";
      }

      if (v4 == 1)
      {
        v6 = @"The associated note will also be deleted.";
      }

      else
      {
        v6 = @"Any associated notes will also be deleted.";
      }

      v7 = [THBundle() localizedStringForKey:v5 value:&stru_471858 table:0];
      v8 = [THBundle() localizedStringForKey:v6 value:&stru_471858 table:0];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = [THBundle() localizedStringForKey:@"Cancel" value:&stru_471858 table:0];
    v10 = [THBundle() localizedStringForKey:@"Delete" value:&stru_471858 table:0];
    v11 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    [(UIAlertController *)v11 addAction:[UIAlertAction actionWithTitle:v9 style:1 handler:0]];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_13AF18;
    v12[3] = &unk_45B358;
    v12[4] = self;
    [(UIAlertController *)v11 addAction:[UIAlertAction actionWithTitle:v10 style:2 handler:v12]];
    [(THNotesViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {

    [(THNotesViewController *)self p_deleteSelectedNotes];
  }
}

@end