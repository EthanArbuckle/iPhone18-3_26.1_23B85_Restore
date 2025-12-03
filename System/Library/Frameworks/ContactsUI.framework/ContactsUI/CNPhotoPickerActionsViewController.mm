@interface CNPhotoPickerActionsViewController
+ (id)log;
- (CNPhotoPickerActionsViewController)initWithActionsModel:(id)model;
- (CNPhotoPickerActionsViewControllerDelegate)delegate;
- (void)actionsModel:(id)model didAssignToContact:(id)contact atIndexPath:(id)path;
- (void)actionsModel:(id)model didDelete:(id)delete atIndexPath:(id)path withSourceView:(id)view;
- (void)actionsModel:(id)model didDuplicate:(id)duplicate atIndexPath:(id)path completionBlock:(id)block;
- (void)actionsModel:(id)model didEdit:(id)edit atIndexPath:(id)path;
- (void)applyLayout:(id)layout;
- (void)didTapDone;
- (void)layoutViewFromModel:(id)model;
- (void)performDeleteTransitionToItem:(id)item;
- (void)performDuplicateTransitionToItem:(id)item fromView:(id)view completionBlock:(id)block;
- (void)presentDeleteConfirmationWithSourceView:(id)view withCompletion:(id)completion;
- (void)updateActionsModelWithProviderItem:(id)item;
- (void)updateButtonsFromModel:(id)model;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNPhotoPickerActionsViewController

- (CNPhotoPickerActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionsModel:(id)model didDelete:(id)delete atIndexPath:(id)path withSourceView:(id)view
{
  deleteCopy = delete;
  pathCopy = path;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__CNPhotoPickerActionsViewController_actionsModel_didDelete_atIndexPath_withSourceView___block_invoke;
  v13[3] = &unk_1E74E6E20;
  v13[4] = self;
  v14 = deleteCopy;
  v15 = pathCopy;
  v11 = pathCopy;
  v12 = deleteCopy;
  [(CNPhotoPickerActionsViewController *)self presentDeleteConfirmationWithSourceView:view withCompletion:v13];
}

void __88__CNPhotoPickerActionsViewController_actionsModel_didDelete_atIndexPath_withSourceView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerActionsViewController:*(a1 + 32) didPerformAction:3 withProviderItem:*(a1 + 40) atIndexPath:*(a1 + 48)];
}

- (void)actionsModel:(id)model didDuplicate:(id)duplicate atIndexPath:(id)path completionBlock:(id)block
{
  duplicateCopy = duplicate;
  pathCopy = path;
  blockCopy = block;
  imageContainerView = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__CNPhotoPickerActionsViewController_actionsModel_didDuplicate_atIndexPath_completionBlock___block_invoke;
  v16[3] = &unk_1E74E5E08;
  v16[4] = self;
  v17 = duplicateCopy;
  v18 = pathCopy;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = pathCopy;
  v15 = duplicateCopy;
  [(CNPhotoPickerActionsViewController *)self performDuplicateTransitionToItem:v15 fromView:imageContainerView completionBlock:v16];
}

uint64_t __92__CNPhotoPickerActionsViewController_actionsModel_didDuplicate_atIndexPath_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerActionsViewController:*(a1 + 32) didPerformAction:2 withProviderItem:*(a1 + 40) atIndexPath:*(a1 + 48)];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)actionsModel:(id)model didEdit:(id)edit atIndexPath:(id)path
{
  pathCopy = path;
  editCopy = edit;
  delegate = [(CNPhotoPickerActionsViewController *)self delegate];
  [delegate photoPickerActionsViewController:self didPerformAction:1 withProviderItem:editCopy atIndexPath:pathCopy];
}

- (void)actionsModel:(id)model didAssignToContact:(id)contact atIndexPath:(id)path
{
  pathCopy = path;
  contactCopy = contact;
  delegate = [(CNPhotoPickerActionsViewController *)self delegate];
  [delegate photoPickerActionsViewController:self didPerformAction:0 withProviderItem:contactCopy atIndexPath:pathCopy];
}

- (void)performDuplicateTransitionToItem:(id)item fromView:(id)view completionBlock:(id)block
{
  blockCopy = block;
  snapshotView = [view snapshotView];
  transitionContainerView = [(CNPhotoPickerActionsViewController *)self transitionContainerView];

  if (!transitionContainerView)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CNPhotoPickerActionsViewController *)self setTransitionContainerView:v10];

    imageContainerView = [(CNPhotoPickerActionsViewController *)self imageContainerView];
    [imageContainerView frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    transitionContainerView2 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
    [transitionContainerView2 setFrame:{v13, v15, v17, v19}];
  }

  transitionContainerView3 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [transitionContainerView3 frame];
  v57 = CGRectInset(v56, 20.0, 20.0);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;

  view = [(CNPhotoPickerActionsViewController *)self view];
  [view bounds];
  v27 = v26;

  memset(&v55, 0, sizeof(v55));
  CGAffineTransformMakeScale(&v55, 0.0, 0.0);
  [(CNPhotoPickerActionsViewController *)self setTransitionContainerView:snapshotView];
  imageContainerView2 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView2 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  transitionContainerView4 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [transitionContainerView4 setFrame:{v30, v32, v34, v36}];

  view2 = [(CNPhotoPickerActionsViewController *)self view];
  transitionContainerView5 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [view2 addSubview:transitionContainerView5];

  v54 = v55;
  imageContainerView3 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  v53 = v54;
  [imageContainerView3 setTransform:&v53];

  imageContainerView4 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView4 setAlpha:0.0];

  v42 = MEMORY[0x1E69DD250];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke;
  v52[3] = &unk_1E74E5428;
  v52[4] = self;
  *&v52[5] = x;
  *&v52[6] = y;
  *&v52[7] = width;
  *&v52[8] = height;
  v52[9] = v27;
  *&v52[10] = y;
  *&v52[11] = width;
  *&v52[12] = height;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_5;
  v50[3] = &unk_1E74E6FB0;
  v50[4] = self;
  v51 = blockCopy;
  v43 = blockCopy;
  [v42 animateKeyframesWithDuration:0 delay:v52 options:v50 animations:0.84 completion:0.0];
  v44 = MEMORY[0x1E69DD250];
  [(CNPhotoPickerActionsViewController *)self duplicateScaleDuration];
  v46 = v45;
  [(CNPhotoPickerActionsViewController *)self duplicateScaleDelay];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_32;
  v49[3] = &unk_1E74E6A88;
  v49[4] = self;
  [v44 animateWithDuration:0 delay:v49 usingSpringWithDamping:0 initialSpringVelocity:v46 options:v47 animations:0.6 completion:0.0];
}

uint64_t __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_2;
  v7[3] = &unk_1E74E5400;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_3;
  v4[3] = &unk_1E74E5400;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.2 animations:0.6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_4;
  v3[3] = &unk_1E74E6A88;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.4 animations:0.5];
}

void __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_5(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 transitionContainerView];
    [v4 removeFromSuperview];

    v5 = [*(a1 + 32) transitionContainerView];
    [v5 setAlpha:1.0];

    [*(a1 + 32) setTransitionContainerView:0];
    v6 = [*(a1 + 32) imageContainerView];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [*(a1 + 32) transitionContainerView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(v16 + 16);

      v17();
    }
  }

  else
  {
    v18 = [objc_opt_class() log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_199A75000, v18, OS_LOG_TYPE_DEFAULT, "[CNPhotoPickerActionsViewController] Duplicate transtion interrupted unexpectedly!", v19, 2u);
    }
  }
}

void __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_32(uint64_t a1)
{
  v1 = [*(a1 + 32) imageContainerView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

void __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionContainerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionContainerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __96__CNPhotoPickerActionsViewController_performDuplicateTransitionToItem_fromView_completionBlock___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) imageContainerView];
  [v1 setAlpha:1.0];
}

- (void)performDeleteTransitionToItem:(id)item
{
  itemCopy = item;
  imageContainerView = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  snapshotView = [imageContainerView snapshotView];

  [(CNPhotoPickerActionsViewController *)self updateActionsModelWithProviderItem:itemCopy];
  transitionContainerView = [(CNPhotoPickerActionsViewController *)self transitionContainerView];

  if (!transitionContainerView)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CNPhotoPickerActionsViewController *)self setTransitionContainerView:v8];
  }

  imageContainerView2 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  transitionContainerView2 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [transitionContainerView2 setFrame:{v11, v13, v15, v17}];

  imageContainerView3 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView3 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  view = [(CNPhotoPickerActionsViewController *)self view];
  [view bounds];
  v30 = v29;

  imageContainerView4 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView4 setFrame:{v30, v23, v25, v27}];

  v53.origin.x = v21;
  v53.origin.y = v23;
  v53.size.width = v25;
  v53.size.height = v27;
  v54 = CGRectInset(v53, -20.0, -20.0);
  y = v54.origin.y;
  x = v54.origin.x;
  width = v54.size.width;
  height = v54.size.height;
  [(CNPhotoPickerActionsViewController *)self setTransitionContainerView:snapshotView];
  transitionContainerView3 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [transitionContainerView3 setFrame:{v21, v23, v25, v27}];

  view2 = [(CNPhotoPickerActionsViewController *)self view];
  transitionContainerView4 = [(CNPhotoPickerActionsViewController *)self transitionContainerView];
  [view2 addSubview:transitionContainerView4];

  imageContainerView5 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
  [imageContainerView5 setAlpha:0.0];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke;
  v51[3] = &unk_1E74E5428;
  v51[4] = self;
  *&v51[5] = x;
  *&v51[6] = y;
  *&v51[7] = width;
  *&v51[8] = height;
  *&v51[9] = v21 + v25 * 0.5;
  *&v51[10] = v23 + v27 * 0.5;
  __asm { FMOV            V0.2D, #1.0 }

  v52 = _Q0;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_4;
  v50[3] = &unk_1E74E67A8;
  v50[4] = self;
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v51 options:v50 animations:0.84 completion:0.0];
  v42 = MEMORY[0x1E69DD250];
  [(CNPhotoPickerActionsViewController *)self deleteMoveInDuration];
  v44 = v43;
  [(CNPhotoPickerActionsViewController *)self deleteMoveInDelay];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_31;
  v49[3] = &unk_1E74E5400;
  v49[4] = self;
  *&v49[5] = v21;
  *&v49[6] = v23;
  *&v49[7] = v25;
  *&v49[8] = v27;
  [v42 animateWithDuration:0 delay:v49 usingSpringWithDamping:0 initialSpringVelocity:v44 options:v45 animations:0.8 completion:0.0];
}

uint64_t __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_2;
  v7[3] = &unk_1E74E5400;
  v7[4] = *(a1 + 32);
  v2 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v2;
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_3;
  v4[3] = &unk_1E74E5400;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.2 animations:0.3];
}

void __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 transitionContainerView];
    [v4 removeFromSuperview];

    v5 = [*(a1 + 32) transitionContainerView];
    [v5 setAlpha:1.0];

    [*(a1 + 32) setTransitionContainerView:0];
    v16 = [*(a1 + 32) imageContainerView];
    [v16 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [*(a1 + 32) transitionContainerView];
    [v14 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    v15 = [objc_opt_class() log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "[CNPhotoPickerActionsViewController] Delete transition interrupted unexpectedly!", buf, 2u);
    }
  }
}

void __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) imageContainerView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) imageContainerView];
  [v7 setFrame:{v3, v4, v5, v6}];
}

void __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionContainerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __68__CNPhotoPickerActionsViewController_performDeleteTransitionToItem___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) transitionContainerView];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) transitionContainerView];
  [v7 setAlpha:0.0];
}

- (void)updateActionsModelWithProviderItem:(id)item
{
  itemCopy = item;
  actionsModel = [(CNPhotoPickerActionsViewController *)self actionsModel];
  [actionsModel updateProviderItem:itemCopy];

  actionsModel2 = [(CNPhotoPickerActionsViewController *)self actionsModel];
  providerItem = [actionsModel2 providerItem];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__CNPhotoPickerActionsViewController_updateActionsModelWithProviderItem___block_invoke;
  v8[3] = &unk_1E74E73E8;
  v8[4] = self;
  [providerItem thumbnailViewWithCompletion:v8];
}

void __73__CNPhotoPickerActionsViewController_updateActionsModelWithProviderItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 imageContainerView];
  v6 = [v5 subviews];
  [v6 _cn_each:&__block_literal_global_29_48414];

  [v4 setAutoresizingMask:18];
  v7 = [*(a1 + 32) imageContainerView];
  [v7 bounds];
  v9 = v8;
  v10 = [*(a1 + 32) imageContainerView];
  [v10 bounds];
  [v4 setFrame:{0.0, 0.0, v9}];

  v11 = [*(a1 + 32) imageContainerView];
  [v11 addSubview:v4];

  v12 = *(a1 + 32);
  v13 = [v12 actionsModel];
  [v12 updateButtonsFromModel:v13];
}

- (void)presentDeleteConfirmationWithSourceView:(id)view withCompletion:(id)completion
{
  viewCopy = view;
  v6 = MEMORY[0x1E69DC650];
  completionCopy = completion;
  v8 = [v6 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v9 = MEMORY[0x1E69DC648];
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"PHOTO_ACTION_DELETE" value:&stru_1F0CE7398 table:@"Localized"];
  v12 = [v9 actionWithTitle:v11 style:2 handler:completionCopy];

  [v8 addAction:v12];
  v13 = MEMORY[0x1E69DC648];
  v14 = CNContactsUIBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v8 addAction:v16];
  if (viewCopy)
  {
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    [viewCopy bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    popoverPresentationController2 = [v8 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

    popoverPresentationController3 = [v8 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:15];
  }

  [(CNPhotoPickerActionsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)didTapDone
{
  delegate = [(CNPhotoPickerActionsViewController *)self delegate];
  [delegate photoPickerActionsViewControllerDidFinish:self];
}

- (void)applyLayout:(id)layout
{
  if (layout)
  {
    layoutCopy = layout;
    [layoutCopy imageContainerViewFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    imageContainerView = [(CNPhotoPickerActionsViewController *)self imageContainerView];
    [imageContainerView setFrame:{v5, v7, v9, v11}];

    v13 = MEMORY[0x1E69DC728];
    imageContainerView2 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
    [imageContainerView2 bounds];
    v15 = [v13 bezierPathWithOvalInRect:?];
    cGPath = [v15 CGPath];
    clippingLayer = [(CNPhotoPickerActionsViewController *)self clippingLayer];
    [clippingLayer setPath:cGPath];

    [layoutCopy actionButtonsViewFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    buttonsView = [(CNPhotoPickerActionsViewController *)self buttonsView];
    [buttonsView setFrame:{v19, v21, v23, v25}];

    [(CNPhotoPickerActionsViewController *)self setCurrentLayout:layoutCopy];
  }
}

- (void)updateButtonsFromModel:(id)model
{
  inlineActionButtons = [model inlineActionButtons];
  v4 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:inlineActionButtons];
  [v4 setAxis:1];
  [v4 setDistribution:1];
  [v4 setSpacing:10.0];
  view = [(CNPhotoPickerActionsViewController *)self view];
  [view addSubview:v4];

  buttonsView = [(CNPhotoPickerActionsViewController *)self buttonsView];

  if (buttonsView)
  {
    buttonsView2 = [(CNPhotoPickerActionsViewController *)self buttonsView];
    [buttonsView2 removeFromSuperview];
  }

  [(CNPhotoPickerActionsViewController *)self setButtonsView:v4];
}

- (void)layoutViewFromModel:(id)model
{
  modelCopy = model;
  imageContainerView = [(CNPhotoPickerActionsViewController *)self imageContainerView];

  if (!imageContainerView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    view = [(CNPhotoPickerActionsViewController *)self view];
    [view bounds];
    v8 = [v6 initWithFrame:?];
    [(CNPhotoPickerActionsViewController *)self setImageContainerView:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CNPhotoPickerActionsViewController *)self setClippingLayer:v9];

    clippingLayer = [(CNPhotoPickerActionsViewController *)self clippingLayer];
    imageContainerView2 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
    layer = [imageContainerView2 layer];
    [layer setMask:clippingLayer];

    view2 = [(CNPhotoPickerActionsViewController *)self view];
    imageContainerView3 = [(CNPhotoPickerActionsViewController *)self imageContainerView];
    [view2 addSubview:imageContainerView3];
  }

  actionsModel = [(CNPhotoPickerActionsViewController *)self actionsModel];
  providerItem = [actionsModel providerItem];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__CNPhotoPickerActionsViewController_layoutViewFromModel___block_invoke;
  v24[3] = &unk_1E74E73E8;
  v24[4] = self;
  [providerItem thumbnailViewWithCompletion:v24];

  [(CNPhotoPickerActionsViewController *)self updateButtonsFromModel:modelCopy];
  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone];
  navigationItem = [(CNPhotoPickerActionsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v17];

  navigationItem2 = [(CNPhotoPickerActionsViewController *)self navigationItem];
  [navigationItem2 _setBackgroundHidden:1];

  navigationController = [(CNPhotoPickerActionsViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isTranslucent = [navigationBar isTranslucent];

  if ((isTranslucent & 1) == 0)
  {
    [(CNPhotoPickerActionsViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  currentLayout = [(CNPhotoPickerActionsViewController *)self currentLayout];
  [(CNPhotoPickerActionsViewController *)self applyLayout:currentLayout];
}

void __58__CNPhotoPickerActionsViewController_layoutViewFromModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutoresizingMask:18];
  v4 = [*(a1 + 32) imageContainerView];
  [v4 frame];
  [v3 setFrame:?];

  v5 = [*(a1 + 32) imageContainerView];
  [v5 addSubview:v3];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNPhotoPickerActionsViewController;
  [(CNPhotoPickerActionsViewController *)&v21 viewDidLayoutSubviews];
  v3 = [CNPhotoPickerActionsViewControllerLayout alloc];
  view = [(CNPhotoPickerActionsViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  view2 = [(CNPhotoPickerActionsViewController *)self view];
  [view2 safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  buttonsView = [(CNPhotoPickerActionsViewController *)self buttonsView];
  arrangedSubviews = [buttonsView arrangedSubviews];
  v20 = -[CNPhotoPickerActionsViewControllerLayout initWithContainerSize:insets:buttonCount:](v3, "initWithContainerSize:insets:buttonCount:", [arrangedSubviews count], v6, v8, v11, v13, v15, v17);

  [(CNPhotoPickerActionsViewController *)self applyLayout:v20];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerActionsViewController;
  [(CNPhotoPickerActionsViewController *)&v8 viewDidLoad];
  actionsModel = [(CNPhotoPickerActionsViewController *)self actionsModel];
  [(CNPhotoPickerActionsViewController *)self layoutViewFromModel:actionsModel];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(CNPhotoPickerActionsViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  navigationController = [(CNPhotoPickerActionsViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];
}

- (CNPhotoPickerActionsViewController)initWithActionsModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = CNPhotoPickerActionsViewController;
  v6 = [(CNPhotoPickerActionsViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionsModel, model);
    [(CNPhotoPickerActionsModel *)v7->_actionsModel setDelegate:v7];
    v8 = v7;
  }

  return v7;
}

+ (id)log
{
  if (log_cn_once_token_1_48446 != -1)
  {
    dispatch_once(&log_cn_once_token_1_48446, &__block_literal_global_48447);
  }

  v3 = log_cn_once_object_1_48448;

  return v3;
}

uint64_t __41__CNPhotoPickerActionsViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoPickerActions");
  v1 = log_cn_once_object_1_48448;
  log_cn_once_object_1_48448 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end