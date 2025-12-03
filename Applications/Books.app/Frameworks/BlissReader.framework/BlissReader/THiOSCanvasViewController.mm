@interface THiOSCanvasViewController
- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)type modifierFlags:(int64_t)initialTextInteractionModifiers;
- (BOOL)shouldPreventGestureFromEditingController:(id)controller;
- (BOOL)shouldSelectAndShowEditMenuOnFirstTapForRep:(id)rep;
- (CGRect)p_glossaryTargetRect;
- (CGRect)rectForPresentedMenuForTextInteraction;
- (THInteractiveCanvasController)interactiveCanvasController;
- (THiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_NSRange)glossaryRangeInRep;
- (id)_selectionDisplayInteraction;
- (id)newNavigationControllerForGlossaryView:(id)view;
- (id)p_activityItemsConfigurationWithSelectedAnnotation:(id)annotation;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)p_styleForPresentation:(id)presentation;
- (void)_accessibilityInvertColorsStatusDidChange:(id)change;
- (void)_adjustZPositionIfNecessary;
- (void)_scheduleInteractionReset;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)buildMenuWithBuilder:(id)builder;
- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)completion;
- (void)createHighlightForSelectionWithStyle:(int)style;
- (void)dealloc;
- (void)dismissGlossaryIfPopoverAnimated:(BOOL)animated;
- (void)dismissSharePopover;
- (void)doneButtonPressed:(id)pressed;
- (void)hideEditMenu;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)p_cleanupGlossaryPopover;
- (void)p_dismissGlossaryPopoverAnimated:(BOOL)animated cleanup:(BOOL)cleanup;
- (void)p_presentGlossaryPopoverOfType:(int)type withTerm:(id)term targetRect:(CGRect)rect;
- (void)p_releaseOutlets;
- (void)presentGlossaryPopoverOfType:(int)type withTerm:(id)term rangeInRep:(_NSRange)rep rep:(id)a6;
- (void)presentSharePopoverWithItemProvider:(id)provider targetRect:(CGRect)rect;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)replaceGlossaryPopoverWithDictionaryForTerm:(id)term;
- (void)repositionGlossaryIfPopoverAnimated:(BOOL)animated;
- (void)resetHighlightGestureRecognizers;
- (void)setStyleOfExistingHighlight:(id)highlight to:(int)to;
- (void)setUpGestureRecognizers;
- (void)shareSelection:(id)selection;
- (void)translateSelection:(id)selection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation THiOSCanvasViewController

- (THiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = THiOSCanvasViewController;
  v4 = [(THiOSCanvasViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(THiOSCanvasViewController *)v4 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (THInteractiveCanvasController)interactiveCanvasController
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)dealloc
{
  [(THiOSCanvasViewController *)self p_releaseOutlets];

  self->_menuAnnotationUUID = 0;
  v3.receiver = self;
  v3.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v3 dealloc];
}

- (void)p_releaseOutlets
{
  [(THiOSCanvasViewController *)self setSingleTFTapGestureRecognizer:0];
  [(THiOSCanvasViewController *)self setDelayedTFTapGestureRecognizer:0];
  [(THiOSCanvasViewController *)self setHighlightGestureController:0];
  [(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] dismissViewControllerAnimated:0 completion:0];
  [(THiOSCanvasViewController *)self p_cleanupGlossaryPopover];
  [(UIViewController *)[(THiOSCanvasViewController *)self sharePopoverController] dismissViewControllerAnimated:0 completion:0];
  [(THiOSCanvasViewController *)self setSharePopoverController:0];
  [(BCDDParsecCollectionViewController *)[(THiOSCanvasViewController *)self lookupController] dismissViewControllerAnimated:0 completion:0];
  [(THiOSCanvasViewController *)self setLookupController:0];
  [(LTUITranslationViewController *)[(THiOSCanvasViewController *)self translationController] dismissViewControllerAnimated:0 completion:0];
  [(THiOSCanvasViewController *)self setTranslationController:0];
  [(THiOSCanvasViewController *)self setTrackingController:0];

  self->_traitsCache = 0;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v4 viewDidLoad];
  [-[THiOSCanvasViewController view](self "view")];
  [(THiOSCanvasViewController *)self setTakeFirstResponderOnTap:1];
  [-[THiOSCanvasViewController view](self "view")];
  v3 = objc_opt_new();
  [(THiOSCanvasViewController *)self setTraitsCache:v3];

  -[THiOSCanvasViewController setEditMenuInteraction:](self, "setEditMenuInteraction:", [[UIEditMenuInteraction alloc] initWithDelegate:self]);
  [-[THiOSCanvasViewController view](self "view")];
}

- (id)_selectionDisplayInteraction
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  view = [-[THiOSCanvasViewController view](self view];
  result = [view countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(view);
      }

      objc_opt_class();
      result = TSUDynamicCast();
      if (result)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [view countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (void)_adjustZPositionIfNecessary
{
  _selectionDisplayInteraction = [(THiOSCanvasViewController *)self _selectionDisplayInteraction];
  [objc_msgSend(objc_msgSend(_selectionDisplayInteraction "highlightView")];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  handleViews = [_selectionDisplayInteraction handleViews];
  v4 = [handleViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(handleViews);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v7) "layer")];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [handleViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v4 viewWillAppear:appear];
  [(THiOSTraitsCache *)[(THiOSCanvasViewController *)self traitsCache] updateTraitsWithCollection:[(THiOSCanvasViewController *)self traitCollection]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v4 viewDidAppear:appear];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"_accessibilityInvertColorsStatusDidChange:" object:UIAccessibilityInvertColorsStatusDidChangeNotification, 0];
  [(THiOSCanvasViewController *)self _adjustZPositionIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v4 viewWillDisappear:disappear];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIAccessibilityInvertColorsStatusDidChangeNotification, 0];
}

- (void)_accessibilityInvertColorsStatusDidChange:(id)change
{
  interactiveCanvasController = [(THiOSCanvasViewController *)self interactiveCanvasController];

  [(THInteractiveCanvasController *)interactiveCanvasController invalidateLayers];
}

- (void)setUpGestureRecognizers
{
  v34.receiver = self;
  v34.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v34 setUpGestureRecognizers];
  if (TSUSupportsTextInteraction())
  {
    interactiveCanvasController = [(THiOSCanvasViewController *)self interactiveCanvasController];
    v4 = TSWPImmediatePress;
    v37 = TSWPImmediatePress;
    [(THInteractiveCanvasController *)interactiveCanvasController enableGestureKinds:[NSArray arrayWithObjects:&v37 count:1]];
  }

  else
  {
    v4 = TSWPImmediatePress;
  }

  gestureDispatcher = [(THInteractiveCanvasController *)[(THiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher];
  v6 = [THShortTapGestureRecognizer alloc];
  [(THiOSCanvasViewController *)self setSingleTFTapGestureRecognizer:[(THShortTapGestureRecognizer *)v6 initWithGestureDispatcher:gestureDispatcher gestureKind:TSDShortTap]];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self singleTFTapGestureRecognizer] setAllowedTouchTypes:&off_49D9F8];
  [-[THiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{-[THiOSCanvasViewController singleTFTapGestureRecognizer](self, "singleTFTapGestureRecognizer")), "addGestureRecognizer:", -[THiOSCanvasViewController singleTFTapGestureRecognizer](self, "singleTFTapGestureRecognizer")}];
  v7 = [THShortTapGestureRecognizer alloc];
  [(THiOSCanvasViewController *)self setDelayedTFTapGestureRecognizer:[(THShortTapGestureRecognizer *)v7 initWithGestureDispatcher:gestureDispatcher gestureKind:TSDDelayedShortTap]];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self delayedTFTapGestureRecognizer] setAllowedTouchTypes:&off_49DA10];
  [-[THiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{-[THiOSCanvasViewController delayedTFTapGestureRecognizer](self, "delayedTFTapGestureRecognizer")), "addGestureRecognizer:", -[THiOSCanvasViewController delayedTFTapGestureRecognizer](self, "delayedTFTapGestureRecognizer")}];
  v8 = [(THInteractiveCanvasController *)[(THiOSCanvasViewController *)self interactiveCanvasController] gestureRecognizerWithKind:v4];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self singleTFTapGestureRecognizer] requireGestureRecognizerToFail:v8];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self delayedTFTapGestureRecognizer] requireGestureRecognizerToFail:v8];
  [(THiOSCanvasViewController *)self setHighlightGestureController:objc_alloc_init(THHighlightGestureController)];
  [(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] setInteractiveCanvasController:[(THiOSCanvasViewController *)self interactiveCanvasController]];
  [(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] setUpGestureRecognizers];
  [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] highlightGestureRecognizer] requireGestureRecognizerToFail:v8];
  interactiveCanvasController2 = [(THiOSCanvasViewController *)self interactiveCanvasController];
  v10 = TSWPLongPress;
  [-[THInteractiveCanvasController gestureRecognizerWithKind:](interactiveCanvasController2 gestureRecognizerWithKind:{TSWPLongPress), "requireGestureRecognizerToFail:", -[THHighlightGestureController highlightGestureRecognizer](-[THiOSCanvasViewController highlightGestureController](self, "highlightGestureController"), "highlightGestureRecognizer")}];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self singleTFTapGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] marginNotesGestureRecognizer]];
  [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self delayedTFTapGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] marginNotesGestureRecognizer]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  panGestureRecognizers = [(THiOSCanvasViewController *)self panGestureRecognizers];
  v12 = [panGestureRecognizers countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(panGestureRecognizers);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        [v16 requireGestureRecognizerToFail:{-[THHighlightGestureController marginNotesGestureRecognizer](-[THiOSCanvasViewController highlightGestureController](self, "highlightGestureController"), "marginNotesGestureRecognizer")}];
        [v16 requireGestureRecognizerToFail:{-[THHighlightGestureController highlightGestureRecognizer](-[THiOSCanvasViewController highlightGestureController](self, "highlightGestureController"), "highlightGestureRecognizer")}];
        [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v8, v16, 0}];
      }

      v13 = [panGestureRecognizers countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{-[THInteractiveCanvasController gestureRecognizerWithKind:](-[THiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), "gestureRecognizerWithKind:", v10), -[THHighlightGestureController highlightGestureRecognizer](-[THiOSCanvasViewController highlightGestureController](self, "highlightGestureController"), "highlightGestureRecognizer"), 0}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [-[THiOSCanvasViewController view](self "view")];
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    v21 = TSWPTapAndTouch;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        if ([v23 gestureKind] == v21)
        {
          [(UITapGestureRecognizer *)[(THiOSCanvasViewController *)self delayedTFTapGestureRecognizer] requireGestureRecognizerToFail:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
  }

  v24 = [THWFreeTransformGestureRecognizer alloc];
  v25 = [(THWFreeTransformGestureRecognizer *)v24 initWithGestureDispatcher:gestureDispatcher gestureKind:TSDFreeTransform];
  [(THWFreeTransformGestureRecognizer *)v25 setAllowedTouchTypes:&off_49DA28];
  [-[THiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v25), "addGestureRecognizer:", v25}];
  objc_opt_class();
  [(THiOSCanvasViewController *)self delegate];
  -[THWFreeTransformGestureRecognizer setUnmovingParentView:](v25, "setUnmovingParentView:", [TSUDynamicCast() view]);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] setEnabled:0];
  v8.receiver = self;
  v8.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  [(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] setEnabled:1];
}

- (BOOL)shouldSelectAndShowEditMenuOnFirstTapForRep:(id)rep
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = THiOSCanvasViewController;
  return [(THiOSCanvasViewController *)&v6 shouldSelectAndShowEditMenuOnFirstTapForRep:rep];
}

- (BOOL)shouldPreventGestureFromEditingController:(id)controller
{
  [controller locationInView:{-[THiOSCanvasViewController view](self, "view")}];
  v5 = v4;
  v7 = v6;
  [(THInteractiveCanvasController *)[(THiOSCanvasViewController *)self interactiveCanvasController] hitRep:v4, v6];
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {

    LOBYTE(v8) = [v8 hasMarginNoteAtCanvasPoint:{v5, v7}];
  }

  return v8;
}

- (void)hideEditMenu
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 postNotificationName:AEAnnotationPopoverShouldHideNotification object:self];
  v4.receiver = self;
  v4.super_class = THiOSCanvasViewController;
  [(THiOSCanvasViewController *)&v4 hideEditMenu];
}

- (void)buildMenuWithBuilder:(id)builder
{
  [builder removeMenuForIdentifier:UIMenuLookup];
  [builder removeMenuForIdentifier:UIMenuServices];
  [builder replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:&stru_45DE10];
  y = CGPointZero.y;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  view = [objc_msgSend(-[THiOSCanvasViewController view](self view];
  v7 = [view countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *&y;
    x = CGPointZero.x;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(view);
        }

        objc_opt_class();
        v13 = TSUDynamicCast();
        if (v13)
        {
          [v13 locationInView:{-[THiOSCanvasViewController view](self, "view")}];
          v16 = v14;
          v17 = v15;
          if (CGPointZero.x == v14 && y == v15)
          {
            v10 = *&v15;
            x = v14;
          }

          else
          {
            v10 = 0x7FEFFFFFFFFFFFFFLL;
            v19 = v14 == 1.79769313e308 && v15 == 1.79769313e308;
            x = 1.79769313e308;
            if (!v19)
            {
              goto LABEL_21;
            }
          }
        }
      }

      v8 = [view countByEnumeratingWithState:&v27 objects:v33 count:16];
      v17 = *&v10;
      v16 = x;
    }

    while (v8);
  }

  else
  {
    v17 = y;
    v16 = CGPointZero.x;
  }

LABEL_21:
  v20 = [(THInteractiveCanvasController *)[(THiOSCanvasViewController *)self interactiveCanvasController] menuForHighlightAtLocation:v16, v17];
  if (v20)
  {
    v21 = v20;
    builderCopy2 = builder;
    v23 = UIMenuStandardEdit;
  }

  else
  {
    v32 = +[UIKeyCommand commandWithTitle:image:action:input:modifierFlags:propertyList:](UIKeyCommand, "commandWithTitle:image:action:input:modifierFlags:propertyList:", [THBundle() localizedStringForKey:@"Copy" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"doc.on.doc"), "copy:", @"C", 0x80000, 0);
    [builder insertSiblingMenu:+[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu afterMenuForIdentifier:{"menuWithTitle:image:identifier:options:children:", &stru_471858, 0, @"com.apple.iBooks.EditMenuGroup", 17, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v32, 1)), UIMenuStandardEdit}];
    v24 = [_TtC8BookCore23BECustomViewMenuElement createHighlightMenuElementFor:4 annotationUUID:0 delegate:self];
    v25 = +[UIKeyCommand commandWithTitle:image:action:input:modifierFlags:propertyList:](UIKeyCommand, "commandWithTitle:image:action:input:modifierFlags:propertyList:", [THBundle() localizedStringForKey:@"Add Note" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"note.text"), "addNote:", @"N", 0x80000, 0);
    v31[0] = v24;
    v31[1] = v25;
    [builder insertSiblingMenu:+[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu afterMenuForIdentifier:{"menuWithTitle:image:identifier:options:children:", &stru_471858, 0, @"com.apple.iBooks.AnnotationMenuGroup", 17, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v31, 2)), @"com.apple.iBooks.EditMenuGroup"}];
    v26 = +[NSMutableArray array];
    [v26 addObject:{+[UICommand commandWithTitle:image:action:propertyList:](UICommand, "commandWithTitle:image:action:propertyList:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Look Up", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"magnifyingglass.circle", "showDictionary:", 0)}];
    [v26 addObject:{+[UICommand commandWithTitle:image:action:propertyList:](UICommand, "commandWithTitle:image:action:propertyList:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Translate", &stru_471858, 0), +[UIImage _systemImageNamed:](UIImage, "_systemImageNamed:", @"translate", "translateSelection:", 0)}];
    [v26 addObject:{+[UICommand commandWithTitle:image:action:propertyList:](UICommand, "commandWithTitle:image:action:propertyList:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Search", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"doc.text.magnifyingglass", "searchSelection:", 0)}];
    [v26 addObject:{+[UICommand commandWithTitle:image:action:propertyList:](UICommand, "commandWithTitle:image:action:propertyList:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Share", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"square.and.arrow.up", "shareSelection:", 0)}];
    v21 = [UIMenu menuWithTitle:&stru_471858 image:0 identifier:@"com.apple.iBooks.OtherMenuGroup" options:17 children:v26];
    builderCopy2 = builder;
    v23 = @"com.apple.iBooks.AnnotationMenuGroup";
  }

  [builderCopy2 insertSiblingMenu:v21 afterMenuForIdentifier:v23];
  [builder removeMenuForIdentifier:UIMenuStandardEdit];
}

- (void)shareSelection:(id)selection
{
  interactiveCanvasController = [(THiOSCanvasViewController *)self interactiveCanvasController];
  objc_opt_class();
  [-[THInteractiveCanvasController editorController](interactiveCanvasController "editorController")];
  v5 = TSUDynamicCast();

  [v5 shareSelection:self];
}

- (void)translateSelection:(id)selection
{
  interactiveCanvasController = [(THiOSCanvasViewController *)self interactiveCanvasController];
  objc_opt_class();
  [-[THInteractiveCanvasController editorController](interactiveCanvasController "editorController")];
  v5 = TSUDynamicCast();

  [v5 translateSelection:self];
}

- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)completion
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (completion)
  {
    v4 = *(completion + 2);

    v4(completion, 0);
  }
}

- (void)createHighlightForSelectionWithStyle:(int)style
{
  v3 = *&style;
  interactiveCanvasController = [(THiOSCanvasViewController *)self interactiveCanvasController];
  objc_opt_class();
  [-[THInteractiveCanvasController editorController](interactiveCanvasController "editorController")];
  v6 = TSUDynamicCast();
  [v6 addHighlightWithStyle:v3 forSender:self];

  [v6 setSelection:0];
}

- (void)setStyleOfExistingHighlight:(id)highlight to:(int)to
{
  v4 = [TSUAssertionHandler currentHandler:highlight];
  v5 = [NSString stringWithUTF8String:"[THiOSCanvasViewController setStyleOfExistingHighlight:to:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THiOSCanvasViewController.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:704 description:@"THiOSCanvasViewController setStyleOfExistingHighlight:to: not implemented"];
}

- (id)p_activityItemsConfigurationWithSelectedAnnotation:(id)annotation
{
  if (!annotation)
  {
    return 0;
  }

  v4 = [[NSItemProvider alloc] initWithObject:{+[AEAnnotationCatalystItemProvider itemProviderWithAnnotation:propertyProvider:](AEAnnotationCatalystItemProvider, "itemProviderWithAnnotation:propertyProvider:", annotation, 0)}];
  return [[UIActivityItemsConfiguration alloc] initWithItemProviders:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 1)}];
}

- (int64_t)p_styleForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentation || (presentationCopy = [(THiOSCanvasViewController *)self traitCollection]) != 0)
  {
    horizontalSizeClass = [presentationCopy horizontalSizeClass];
    if ([presentationCopy verticalSizeClass] == &dword_0 + 1 || horizontalSizeClass == &dword_0 + 1)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  traitCollection = [(THiOSCanvasViewController *)self traitCollection];

  return [(THiOSCanvasViewController *)self adaptivePresentationStyleForPresentationController:controller traitCollection:traitCollection];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  v6 = [(THiOSCanvasViewController *)self p_styleForPresentation:collection];
  presentedViewController = [controller presentedViewController];
  if (presentedViewController == [(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] navigationController])
  {
    [-[THGlossaryPopoverViewController navigationController](-[THiOSCanvasViewController glossaryPopoverViewController](self "glossaryPopoverViewController")];
  }

  return v6;
}

- (void)p_cleanupGlossaryPopover
{
  [(THiOSCanvasViewController *)self setGlossaryPopoverViewController:0];
  [(THiOSCanvasViewController *)self setGlossaryPopoverNavController:0];

  [(THiOSCanvasViewController *)self setGlossaryHitInfo:0];
}

- (void)doneButtonPressed:(id)pressed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_136468;
  v3[3] = &unk_45AE00;
  v3[4] = self;
  [(THiOSCanvasViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  if (presentedViewController == [(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] navigationController])
  {

    [(THiOSCanvasViewController *)self p_cleanupGlossaryPopover];
  }

  else if (presentedViewController == [(THiOSCanvasViewController *)self lookupController])
  {

    [(THiOSCanvasViewController *)self setLookupController:0];
  }

  else if (presentedViewController == [(THiOSCanvasViewController *)self sharePopoverController])
  {

    [(THiOSCanvasViewController *)self setSharePopoverController:0];
  }

  else if (presentedViewController == [(THiOSCanvasViewController *)self translationController])
  {

    [(THiOSCanvasViewController *)self setTranslationController:0];
  }
}

- (id)newNavigationControllerForGlossaryView:(id)view
{
  if (([(THiOSCanvasViewController *)self im_isCompactWidth]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THiOSCanvasViewController *)self im_isCompactHeight]^ 1;
  }

  v6 = [[UINavigationController alloc] initWithRootViewController:view];
  [v6 setNavigationBarHidden:v5];
  [v6 setToolbarHidden:0];
  toolbar = [v6 toolbar];
  [toolbar setOpaque:0];
  [toolbar setTranslucent:1];
  [toolbar _setHidesShadow:1];
  themePage = [view themePage];
  popoverBackgroundColor = [themePage popoverBackgroundColor];
  keyColor = [themePage keyColor];
  dividerColor = [themePage dividerColor];
  v12 = [[BEHairlineDividerView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [toolbar addSubview:v12];
  heightAnchor = [v12 heightAnchor];
  [+[UIScreen mainScreen](UIScreen scale];
  v23[0] = [heightAnchor constraintEqualToConstant:1.0 / v14];
  v23[1] = [objc_msgSend(v12 "leadingAnchor")];
  v23[2] = [objc_msgSend(v12 "trailingAnchor")];
  v23[3] = [objc_msgSend(v12 "topAnchor")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v23 count:4]];
  identifier = [themePage identifier];
  if ([identifier isEqualToString:kIMThemeIdentifierBlissClassicTheme])
  {
    popoverBackgroundColor = [UIColor colorWithWhite:1.0 alpha:0.97];
    keyColor = +[UIColor systemBlueColor];
  }

  [toolbar setBackgroundColor:popoverBackgroundColor];
  [toolbar setBarTintColor:popoverBackgroundColor];
  [toolbar setTintColor:keyColor];
  [v12 setBackgroundColor:dividerColor];
  [v6 setOverrideUserInterfaceStyle:{objc_msgSend(themePage, "userInterfaceStyle")}];
  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
  [objc_msgSend(view "navigationItem")];

  v17 = [[UIBarButtonItem alloc] initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Glossary Index" action:{&stru_471858, 0), 0, view, "showGlossaryIndex"}];
  v18 = [[UIBarButtonItem alloc] initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Look Up" action:{&stru_471858, 0), 0, view, "showDictionaryEntry"}];
  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
  +[THGlossaryPopoverViewController toolbarButtonHInset];
  [v20 setWidth:?];
  v22[0] = v20;
  v22[1] = v17;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v20;
  [view setToolbarItems:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v22, 5)}];

  return v6;
}

- (CGRect)p_glossaryTargetRect
{
  objc_opt_class();
  [(THInteractiveCanvasController *)[(THiOSCanvasViewController *)self interactiveCanvasController] repForInfo:[(THiOSCanvasViewController *)self glossaryHitInfo]];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    glossaryRangeInRep = [(THiOSCanvasViewController *)self glossaryRangeInRep];
    [v4 popoverPresentationRectForRange:{glossaryRangeInRep, v6}];
    v8 = v7;
    v10 = v9;
    [v4 frameInUnscaledCanvas];
    TSDAddPoints();
    [objc_msgSend(v4 "interactiveCanvasController")];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)presentGlossaryPopoverOfType:(int)type withTerm:(id)term rangeInRep:(_NSRange)rep rep:(id)a6
{
  if (a6)
  {
    v9 = *&type;
    [(THiOSCanvasViewController *)self setGlossaryRangeInRep:rep.location, rep.length];
    -[THiOSCanvasViewController setGlossaryHitInfo:](self, "setGlossaryHitInfo:", [a6 info]);
    [(THiOSCanvasViewController *)self p_glossaryTargetRect];

    [(THiOSCanvasViewController *)self p_presentGlossaryPopoverOfType:v9 withTerm:term targetRect:?];
  }

  else
  {

    [(THiOSCanvasViewController *)self setGlossaryHitInfo:0, term, rep.location, rep.length];
  }
}

- (void)replaceGlossaryPopoverWithDictionaryForTerm:(id)term
{
  glossaryHitInfo = [(THiOSCanvasViewController *)self glossaryHitInfo];
  if (term && glossaryHitInfo)
  {
    [(THiOSCanvasViewController *)self p_glossaryTargetRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(THiOSCanvasViewController *)self p_dismissGlossaryPopoverAnimated:0 cleanup:0];

    [(THiOSCanvasViewController *)self p_presentGlossaryPopoverOfType:2 withTerm:term targetRect:v7, v9, v11, v13];
  }
}

- (void)p_presentGlossaryPopoverOfType:(int)type withTerm:(id)term targetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_opt_class();
  [(THiOSCanvasViewController *)self delegate];
  v12 = TSUDynamicCast();
  view = [v12 view];
  [view convertRect:-[THiOSCanvasViewController view](self fromView:{"view"), x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ([v12 im_isCompactWidth])
  {
    im_isCompactHeight = 1;
  }

  else
  {
    im_isCompactHeight = [v12 im_isCompactHeight];
  }

  if (type == 3)
  {
    v29 = objc_alloc_init(LTUITranslationViewController);
    v36 = [[NSAttributedString alloc] initWithString:term];
    if ((im_isCompactHeight & 1) == 0)
    {
      [v29 setModalPresentationStyle:7];
    }

    [v29 setText:{v36, v36}];
    [v29 setIsSourceEditable:0];
    [v29 setOverrideUserInterfaceStyle:{objc_msgSend(v12, "overrideUserInterfaceStyle")}];
    popoverPresentationController = [v29 popoverPresentationController];
    [popoverPresentationController setSourceView:view];
    [popoverPresentationController setSourceRect:{v15, v17, v19, v21}];
    [popoverPresentationController setPermittedArrowDirections:15];
    [popoverPresentationController setDelegate:self];
    [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v12];
    [(THiOSCanvasViewController *)self bc_presentViewController:v29 animated:1 tintColor:+[UIColor completion:"bc_booksKeyColor"], 0];
    [(THiOSCanvasViewController *)self setTranslationController:v29];

LABEL_21:

    return;
  }

  if (type != 2)
  {
    if (type)
    {
      return;
    }

    v23 = [objc_msgSend(v12 "documentRoot")];
    v24 = v23;
    if (im_isCompactHeight)
    {
      v25 = [objc_msgSend(v23 "model")];
      v26 = [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];

      [v26 showGlossaryEntry:v25];
      return;
    }

    v31 = [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
    v37 = [[THGlossaryPopoverViewController alloc] initWithTerm:term glossaryController:v24];
    [(THGlossaryPopoverViewController *)v37 setBookViewController:v31];
    objc_opt_class();
    [(THiOSCanvasViewController *)self im_theme];
    v32 = TSUDynamicCast();
    if (v32)
    {
      [(THGlossaryPopoverViewController *)v37 setTheme:v32];
    }

    [(THiOSCanvasViewController *)self setGlossaryPopoverViewController:v37];

    self->_glossaryPopoverNavController = 0;
    self->_glossaryPopoverNavController = [(THiOSCanvasViewController *)self newNavigationControllerForGlossaryView:v37];
    [(THGlossaryPopoverViewController *)v37 preferredContentSize];
    [(UINavigationController *)[(THiOSCanvasViewController *)self glossaryPopoverNavController] setPreferredContentSize:v33, v34];
    [(THGlossaryPopoverViewController *)v37 setGlossaryPresenting:self];
    [(UINavigationController *)[(THiOSCanvasViewController *)self glossaryPopoverNavController] setModalPresentationStyle:7];
    popoverPresentationController2 = [(UINavigationController *)[(THiOSCanvasViewController *)self glossaryPopoverNavController] popoverPresentationController];
    [popoverPresentationController2 setSourceView:view];
    [popoverPresentationController2 setSourceRect:{v15, v17, v19, v21}];
    [popoverPresentationController2 setPermittedArrowDirections:3];
    [popoverPresentationController2 setDelegate:self];
    [popoverPresentationController2 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v37];
    [(THiOSCanvasViewController *)self presentViewController:[(THiOSCanvasViewController *)self glossaryPopoverNavController] animated:1 completion:0];
    goto LABEL_21;
  }

  v27 = [[BCDDParsecCollectionViewController alloc] initWithString:term range:{0, objc_msgSend(term, "length")}];
  [v27 setOverrideUserInterfaceStyle:{objc_msgSend(v12, "overrideUserInterfaceStyle")}];
  if ((im_isCompactHeight & 1) == 0)
  {
    [v27 setModalPresentationStyle:7];
  }

  popoverPresentationController3 = [v27 popoverPresentationController];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1370E4;
  v38[3] = &unk_45B8B0;
  v38[4] = [v27 dismissCompletionHandler];
  [v27 setDismissCompletionHandler:v38];
  [popoverPresentationController3 setSourceView:view];
  [popoverPresentationController3 setSourceRect:{v15, v17, v19, v21}];
  [popoverPresentationController3 setPermittedArrowDirections:15];
  [popoverPresentationController3 setDelegate:self];
  [popoverPresentationController3 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v12];
  [(THiOSCanvasViewController *)self bc_presentViewController:v27 animated:1 tintColor:+[UIColor completion:"bc_booksKeyColor"], 0];
  [(THiOSCanvasViewController *)self setLookupController:v27];
}

- (void)dismissGlossaryIfPopoverAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] _isInPopoverPresentation]& 1) != 0 || ([(BCDDParsecCollectionViewController *)[(THiOSCanvasViewController *)self lookupController] _isInPopoverPresentation]& 1) != 0 || [(LTUITranslationViewController *)[(THiOSCanvasViewController *)self translationController] _isInPopoverPresentation])
  {

    [(THiOSCanvasViewController *)self dismissGlossaryPopoverAnimated:animatedCopy];
  }
}

- (void)p_dismissGlossaryPopoverAnimated:(BOOL)animated cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  animatedCopy = animated;
  [(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] dismissViewControllerAnimated:animated completion:0];
  [(BCDDParsecCollectionViewController *)[(THiOSCanvasViewController *)self lookupController] dismissViewControllerAnimated:animatedCopy completion:0];
  [(THiOSCanvasViewController *)self setLookupController:0];
  [(LTUITranslationViewController *)[(THiOSCanvasViewController *)self translationController] dismissViewControllerAnimated:animatedCopy completion:0];
  [(THiOSCanvasViewController *)self setTranslationController:0];
  if (cleanupCopy)
  {

    [(THiOSCanvasViewController *)self p_cleanupGlossaryPopover];
  }
}

- (void)resetHighlightGestureRecognizers
{
  [(THHighlightGestureController *)[(THiOSCanvasViewController *)self highlightGestureController] setEnabled:0];
  highlightGestureController = [(THiOSCanvasViewController *)self highlightGestureController];

  [(THHighlightGestureController *)highlightGestureController setEnabled:1];
}

- (void)repositionGlossaryIfPopoverAnimated:(BOOL)animated
{
  if ([(THiOSCanvasViewController *)self glossaryHitInfo])
  {
    [(THiOSCanvasViewController *)self p_glossaryTargetRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    objc_opt_class();
    [(THiOSCanvasViewController *)self delegate];
    [objc_msgSend(TSUDynamicCast() "view")];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (([(THGlossaryPopoverViewController *)[(THiOSCanvasViewController *)self glossaryPopoverViewController] _isInPopoverPresentation]& 1) != 0)
    {
      [-[UINavigationController popoverPresentationController](-[THiOSCanvasViewController glossaryPopoverNavController](self "glossaryPopoverNavController")];
    }

    [-[BCDDParsecCollectionViewController popoverPresentationController](-[THiOSCanvasViewController lookupController](self "lookupController")];
    popoverPresentationController = [(LTUITranslationViewController *)[(THiOSCanvasViewController *)self translationController] popoverPresentationController];

    [popoverPresentationController setSourceRect:{v13, v15, v17, v19}];
  }
}

- (void)presentSharePopoverWithItemProvider:(id)provider targetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_opt_class();
  [(THiOSCanvasViewController *)self delegate];
  v10 = TSUDynamicCast();
  v13 = [[IMActivityController alloc] initWithActivityItems:+[NSArray arrayWithObject:](NSArray applicationActivities:"arrayWithObject:" shareType:provider) propertySource:0 tracker:{objc_msgSend(provider, "shareType"), objc_msgSend(provider, "propertySource"), -[THiOSCanvasViewController ba_effectiveAnalyticsTracker](self, "ba_effectiveAnalyticsTracker")}];
  [v13 setManagedBook:{objc_msgSend(objc_msgSend(objc_msgSend(-[THInteractiveCanvasController documentRoot](-[THiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), "documentRoot"), "bookDescription"), "asset"), "isManagedBook")}];
  viewController = [v13 viewController];
  [viewController setModalPresentationStyle:7];
  [viewController setOverrideUserInterfaceStyle:{objc_msgSend(v10, "overrideUserInterfaceStyle")}];
  popoverPresentationController = [viewController popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPermittedArrowDirections:15];
  [popoverPresentationController setSourceView:{-[THInteractiveCanvasController canvasView](-[THiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v10];
  [(THiOSCanvasViewController *)self setSharePopoverController:viewController];
  [(THiOSCanvasViewController *)self bc_presentViewController:viewController animated:1 tintColor:+[UIColor completion:"bc_booksKeyColor"], 0];
}

- (void)dismissSharePopover
{
  sharePopoverController = [(THiOSCanvasViewController *)self sharePopoverController];
  if (sharePopoverController)
  {
    v4 = sharePopoverController;
    if ([(UIViewController *)sharePopoverController _isInPopoverPresentation])
    {
      [(UIViewController *)v4 dismissViewControllerAnimated:0 completion:0];

      [(THiOSCanvasViewController *)self setSharePopoverController:0];
    }
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  if (result == 3)
  {
    v6 = [THBundle() localizedStringForKey:@"Error" value:&stru_471858 table:0];
    v7 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v6, [THBundle() localizedStringForKey:@"Failed to send email" value:&stru_471858 table:0], 1);
    -[UIAlertController addAction:](v7, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, 0));
    [(THiOSCanvasViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  [(THiOSCanvasViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(THiOSCanvasViewController *)self traitsCache:change];
  traitCollection = [(THiOSCanvasViewController *)self traitCollection];

  [(THiOSTraitsCache *)v5 updateTraitsWithCollection:traitCollection];
}

- (void)_scheduleInteractionReset
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_resetInteractionTracking" object:0];

  [(THiOSCanvasViewController *)self performSelector:"_resetInteractionTracking" withObject:0 afterDelay:0.25];
}

- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)type modifierFlags:(int64_t)initialTextInteractionModifiers
{
  if (type == 3)
  {
    if (self->_haveDeterminedInitialModifiers)
    {
      initialTextInteractionModifiers = self->_initialTextInteractionModifiers;
    }

    else
    {
      self->_haveDeterminedInitialModifiers = 1;
      self->_initialTextInteractionModifiers = initialTextInteractionModifiers;
    }

    v4 = (initialTextInteractionModifiers >> 20) & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  [(THiOSCanvasViewController *)self _scheduleInteractionReset];
  return v4;
}

- (_NSRange)glossaryRangeInRep
{
  p_glossaryRangeInRep = &self->_glossaryRangeInRep;
  location = self->_glossaryRangeInRep.location;
  length = p_glossaryRangeInRep->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)rectForPresentedMenuForTextInteraction
{
  x = self->_rectForPresentedMenuForTextInteraction.origin.x;
  y = self->_rectForPresentedMenuForTextInteraction.origin.y;
  width = self->_rectForPresentedMenuForTextInteraction.size.width;
  height = self->_rectForPresentedMenuForTextInteraction.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end