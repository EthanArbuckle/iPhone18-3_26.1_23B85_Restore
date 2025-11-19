@interface _SFAutoFillInternalFeedbackCollectionViewController
- (_SFAutoFillInternalFeedbackCollectionViewController)initWithDiagnosticsData:(id)a3 reportHandler:(id)a4;
- (id)_createCollectionViewLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_updateContinueInTapToRadarButton;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionViewListCellButtonPressed:(id)a3;
- (void)textFieldCellTextDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation _SFAutoFillInternalFeedbackCollectionViewController

- (_SFAutoFillInternalFeedbackCollectionViewController)initWithDiagnosticsData:(id)a3 reportHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self _createCollectionViewLayout];
  v23.receiver = self;
  v23.super_class = _SFAutoFillInternalFeedbackCollectionViewController;
  v9 = [(_SFAutoFillInternalFeedbackCollectionViewController *)&v23 initWithCollectionViewLayout:v8];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69C8E90]) initWithDiagnosticsData:v6];
    feedbackController = v9->_feedbackController;
    v9->_feedbackController = v10;

    v12 = _Block_copy(v7);
    reportHandler = v9->_reportHandler;
    v9->_reportHandler = v12;

    v14 = [MEMORY[0x1E69C8E90] titleText];
    v15 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 navigationItem];
    [v15 setTitle:v14];

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v9 action:sel__dismiss_];
    v17 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 navigationItem];
    [v17 setRightBarButtonItem:v16];

    v18 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [v18 setDelegate:v9];

    v19 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [v19 setDataSource:v9];

    v20 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [v20 setSelfSizingInvalidation:2];

    v21 = v9;
  }

  return v9;
}

- (id)_createCollectionViewLayout
{
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82___SFAutoFillInternalFeedbackCollectionViewController__createCollectionViewLayout__block_invoke;
  v6[3] = &unk_1E8490318;
  v6[4] = self;
  v4 = [v3 initWithSectionProvider:v6];

  return v4;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = _SFAutoFillInternalFeedbackCollectionViewController;
  [(_SFAutoFillInternalFeedbackCollectionViewController *)&v20 viewDidLoad];
  v3 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = *MEMORY[0x1E69DDC00];
  v6 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  v7 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = *MEMORY[0x1E69DDC08];
  v10 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  [v7 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  v11 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v12 = objc_opt_class();
  v13 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
  [v11 registerClass:v12 forCellWithReuseIdentifier:v13];

  v14 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v15 = objc_opt_class();
  v16 = +[_SFButtonCollectionViewListCell reuseIdentifier];
  [v14 registerClass:v15 forCellWithReuseIdentifier:v16];

  v17 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v18 = objc_opt_class();
  v19 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
  [v17 registerClass:v18 forCellWithReuseIdentifier:v19];
}

- (void)_updateContinueInTapToRadarButton
{
  v3 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:4];
  v5 = [v3 cellForItemAtIndexPath:v4];

  [v5 setEnabled:{-[WBSAutoFillInternalFeedbackController canContinueInTapToRadar](self->_feedbackController, "canContinueInTapToRadar")}];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 1)
  {
    if (!a4)
    {
      v7 = 7;
      goto LABEL_15;
    }

    if (a4 == 1)
    {
      v8 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
      v7 = 2 * [v8 count];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      v7 = 2;
      goto LABEL_15;
    }

    if (a4 == 4)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ([(WBSAutoFillInternalFeedbackController *)self->_feedbackController isRegression])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v16 = [v7 row];
      if (v16 == 1)
      {
        v29 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
        v9 = [v6 dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:v7];

        [v9 setDelegate:self];
        v30 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController knownWorkingBuild];
        [v9 setText:v30];

        v31 = [MEMORY[0x1E69C8E90] knownWorkingBuildPlaceholderText];
        [v9 setPlaceholder:v31];

        goto LABEL_20;
      }

      if (!v16)
      {
        v17 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
        v9 = [v6 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v7];

        v18 = [MEMORY[0x1E69C8E90] isRegressionOptionText];
        [v9 setText:v18];

        v19 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController isRegression];
LABEL_16:
        [v9 setChecked:v19];
        goto LABEL_20;
      }
    }

    else if (v8 != 3)
    {
      if (v8 == 4)
      {
        v10 = +[_SFButtonCollectionViewListCell reuseIdentifier];
        v9 = [v6 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v7];

        [v9 setDelegate:self];
        v11 = _WBSLocalizedString();
        [v9 setTitle:v11];

        [v9 setEnabled:{-[WBSAutoFillInternalFeedbackController canContinueInTapToRadar](self->_feedbackController, "canContinueInTapToRadar")}];
      }

      goto LABEL_20;
    }

    v20 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v7];

    v21 = [v7 row];
    v22 = [MEMORY[0x1E69C8E90] titleForAttachmentsType:v21];
    [v9 setText:v22];

    v23 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType];
LABEL_15:
    v19 = v23 == v21;
    goto LABEL_16;
  }

  if (!v8)
  {
    v24 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:v7];

    v21 = [v7 row] + 1;
    v25 = [MEMORY[0x1E69C8E90] titleForFeedbackCategory:v21];
    [v9 setText:v25];

    v23 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory];
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v12 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
    v13 = [v12 objectAtIndex:{objc_msgSend(v7, "row") / 2}];

    if ([v7 row])
    {
      v26 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v7];

      [v9 setDelegate:self];
      v27 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController responseForDetailType:v13];
      [v9 setText:v27];

      v28 = [MEMORY[0x1E69C8E90] placeholderForFeedbackDetailType:v13];
      [v9 setPlaceholder:v28];
    }

    else
    {
      v14 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v7];

      v15 = [MEMORY[0x1E69C8E90] titleForFeedbackDetailType:v13];
      [v9 setText:v15];

      [v9 setChecked:0];
    }
  }

LABEL_20:

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 isEqualToString:*MEMORY[0x1E69DDC08]];
  v12 = [v10 section];
  if (!v11)
  {
    if (v12 == 3)
    {
      v16 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
      v14 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v16 forIndexPath:v10];

      v15 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController attachmentDetailsText];
      goto LABEL_7;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_11;
  }

  if (v12 == 3)
  {
    v18 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
    v14 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v18 forIndexPath:v10];

    v17 = _WBSLocalizedString();
    v19 = [v17 localizedUppercaseString];
    [v14 setText:v19];

    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  v14 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v13 forIndexPath:v10];

  v15 = [MEMORY[0x1E69C8E90] informativeText];
LABEL_7:
  v17 = v15;
  [v14 setText:v15];
LABEL_10:

LABEL_11:

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v6 section];
  switch(v7)
  {
    case 3:
      goto LABEL_10;
    case 2:
      v11 = [v6 row];
      if (v11 == 1)
      {
        break;
      }

      if (!v11)
      {
        v12 = [v18 cellForItemAtIndexPath:v6];
        -[WBSAutoFillInternalFeedbackController setRegression:](self->_feedbackController, "setRegression:", [v12 isChecked] ^ 1);
        [v12 setChecked:{-[WBSAutoFillInternalFeedbackController isRegression](self->_feedbackController, "isRegression")}];
        v13 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
        [v13 reloadData];
LABEL_14:

        break;
      }

LABEL_10:
      v14 = [v6 row];
      if (v14 == [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType])
      {
        break;
      }

      v15 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType];
      v16 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:3];
      v12 = [v18 cellForItemAtIndexPath:v16];

      [v12 setChecked:0];
      v13 = [v18 cellForItemAtIndexPath:v6];
      [v13 setChecked:1];
      [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setSelectedAttachmentsType:v14];
      goto LABEL_14;
    case 0:
      v8 = [v6 row] + 1;
      if (v8 != [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory])
      {
        v9 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory];
        if (v9)
        {
          v10 = [MEMORY[0x1E696AC88] indexPathForRow:v9 - 1 inSection:0];
        }

        else
        {
          v10 = 0;
        }

        v12 = [v18 cellForItemAtIndexPath:v10];

        [v12 setChecked:0];
        v13 = [v18 cellForItemAtIndexPath:v6];
        [v13 setChecked:1];
        [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setSelectedFeedbackCategory:v8];
        v17 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
        [v17 reloadData];

        [(_SFAutoFillInternalFeedbackCollectionViewController *)self _updateContinueInTapToRadarButton];
        goto LABEL_14;
      }

      break;
  }
}

- (void)collectionViewListCellButtonPressed:(id)a3
{
  [(_SFAutoFillInternalFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  reportHandler = self->_reportHandler;
  v5 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController continueInTapToRadarURL];
  reportHandler[2](reportHandler, v5);
}

- (void)textFieldCellTextDidChange:(id)a3
{
  v10 = a3;
  v4 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v5 = [v4 indexPathForCell:v10];

  if ([v5 section] == 2)
  {
    v6 = [v10 text];
    [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setKnownWorkingBuild:v6];
  }

  else
  {
    v7 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
    v6 = [v7 objectAtIndex:{objc_msgSend(v5, "row") / 2}];

    feedbackController = self->_feedbackController;
    v9 = [v10 text];
    [(WBSAutoFillInternalFeedbackController *)feedbackController setResponse:v9 forDetailType:v6];

    [(_SFAutoFillInternalFeedbackCollectionViewController *)self _updateContinueInTapToRadarButton];
  }
}

@end