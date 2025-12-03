@interface _SFAutoFillInternalFeedbackCollectionViewController
- (_SFAutoFillInternalFeedbackCollectionViewController)initWithDiagnosticsData:(id)data reportHandler:(id)handler;
- (id)_createCollectionViewLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_updateContinueInTapToRadarButton;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionViewListCellButtonPressed:(id)pressed;
- (void)textFieldCellTextDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation _SFAutoFillInternalFeedbackCollectionViewController

- (_SFAutoFillInternalFeedbackCollectionViewController)initWithDiagnosticsData:(id)data reportHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _createCollectionViewLayout = [(_SFAutoFillInternalFeedbackCollectionViewController *)self _createCollectionViewLayout];
  v23.receiver = self;
  v23.super_class = _SFAutoFillInternalFeedbackCollectionViewController;
  v9 = [(_SFAutoFillInternalFeedbackCollectionViewController *)&v23 initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69C8E90]) initWithDiagnosticsData:dataCopy];
    feedbackController = v9->_feedbackController;
    v9->_feedbackController = v10;

    v12 = _Block_copy(handlerCopy);
    reportHandler = v9->_reportHandler;
    v9->_reportHandler = v12;

    titleText = [MEMORY[0x1E69C8E90] titleText];
    navigationItem = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 navigationItem];
    [navigationItem setTitle:titleText];

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v9 action:sel__dismiss_];
    navigationItem2 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 navigationItem];
    [navigationItem2 setRightBarButtonItem:v16];

    collectionView = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [collectionView setDelegate:v9];

    collectionView2 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [collectionView2 setDataSource:v9];

    collectionView3 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v9 collectionView];
    [collectionView3 setSelfSizingInvalidation:2];

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
  collectionView = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = *MEMORY[0x1E69DDC00];
  v6 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  [collectionView registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  collectionView2 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = *MEMORY[0x1E69DDC08];
  v10 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  [collectionView2 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  collectionView3 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v12 = objc_opt_class();
  v13 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
  [collectionView3 registerClass:v12 forCellWithReuseIdentifier:v13];

  collectionView4 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v15 = objc_opt_class();
  v16 = +[_SFButtonCollectionViewListCell reuseIdentifier];
  [collectionView4 registerClass:v15 forCellWithReuseIdentifier:v16];

  collectionView5 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v18 = objc_opt_class();
  v19 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
  [collectionView5 registerClass:v18 forCellWithReuseIdentifier:v19];
}

- (void)_updateContinueInTapToRadarButton
{
  collectionView = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:4];
  v5 = [collectionView cellForItemAtIndexPath:v4];

  [v5 setEnabled:{-[WBSAutoFillInternalFeedbackController canContinueInTapToRadar](self->_feedbackController, "canContinueInTapToRadar")}];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section <= 1)
  {
    if (!section)
    {
      v7 = 7;
      goto LABEL_15;
    }

    if (section == 1)
    {
      detailTypesForSelectedFeedbackCategory = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
      v7 = 2 * [detailTypesForSelectedFeedbackCategory count];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (section != 2)
  {
    if (section == 3)
    {
      v7 = 2;
      goto LABEL_15;
    }

    if (section == 4)
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = 0;
  if (section > 1)
  {
    if (section == 2)
    {
      v16 = [pathCopy row];
      if (v16 == 1)
      {
        v29 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
        v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:pathCopy];

        [v9 setDelegate:self];
        knownWorkingBuild = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController knownWorkingBuild];
        [v9 setText:knownWorkingBuild];

        knownWorkingBuildPlaceholderText = [MEMORY[0x1E69C8E90] knownWorkingBuildPlaceholderText];
        [v9 setPlaceholder:knownWorkingBuildPlaceholderText];

        goto LABEL_20;
      }

      if (!v16)
      {
        v17 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
        v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:pathCopy];

        isRegressionOptionText = [MEMORY[0x1E69C8E90] isRegressionOptionText];
        [v9 setText:isRegressionOptionText];

        isRegression = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController isRegression];
LABEL_16:
        [v9 setChecked:isRegression];
        goto LABEL_20;
      }
    }

    else if (section != 3)
    {
      if (section == 4)
      {
        v10 = +[_SFButtonCollectionViewListCell reuseIdentifier];
        v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

        [v9 setDelegate:self];
        v11 = _WBSLocalizedString();
        [v9 setTitle:v11];

        [v9 setEnabled:{-[WBSAutoFillInternalFeedbackController canContinueInTapToRadar](self->_feedbackController, "canContinueInTapToRadar")}];
      }

      goto LABEL_20;
    }

    v20 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:pathCopy];

    v21 = [pathCopy row];
    v22 = [MEMORY[0x1E69C8E90] titleForAttachmentsType:v21];
    [v9 setText:v22];

    selectedAttachmentsType = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType];
LABEL_15:
    isRegression = selectedAttachmentsType == v21;
    goto LABEL_16;
  }

  if (!section)
  {
    v24 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:pathCopy];

    v21 = [pathCopy row] + 1;
    v25 = [MEMORY[0x1E69C8E90] titleForFeedbackCategory:v21];
    [v9 setText:v25];

    selectedAttachmentsType = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory];
    goto LABEL_15;
  }

  if (section == 1)
  {
    detailTypesForSelectedFeedbackCategory = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
    v13 = [detailTypesForSelectedFeedbackCategory objectAtIndex:{objc_msgSend(pathCopy, "row") / 2}];

    if ([pathCopy row])
    {
      v26 = +[_SFAutoFillInternalFeedbackDetailQuestionTextFieldCell reuseIdentifier];
      v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:pathCopy];

      [v9 setDelegate:self];
      v27 = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController responseForDetailType:v13];
      [v9 setText:v27];

      v28 = [MEMORY[0x1E69C8E90] placeholderForFeedbackDetailType:v13];
      [v9 setPlaceholder:v28];
    }

    else
    {
      v14 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
      v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

      v15 = [MEMORY[0x1E69C8E90] titleForFeedbackDetailType:v13];
      [v9 setText:v15];

      [v9 setChecked:0];
    }
  }

LABEL_20:

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = [kindCopy isEqualToString:*MEMORY[0x1E69DDC08]];
  section = [pathCopy section];
  if (!v11)
  {
    if (section == 3)
    {
      v16 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
      v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v16 forIndexPath:pathCopy];

      attachmentDetailsText = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController attachmentDetailsText];
      goto LABEL_7;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_11;
  }

  if (section == 3)
  {
    v18 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
    v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v18 forIndexPath:pathCopy];

    v17 = _WBSLocalizedString();
    localizedUppercaseString = [v17 localizedUppercaseString];
    [v14 setText:localizedUppercaseString];

    goto LABEL_10;
  }

  if (section)
  {
    goto LABEL_8;
  }

  v13 = +[_SFCollectionViewListTextSupplementaryView reuseIdentifier];
  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v13 forIndexPath:pathCopy];

  attachmentDetailsText = [MEMORY[0x1E69C8E90] informativeText];
LABEL_7:
  v17 = attachmentDetailsText;
  [v14 setText:attachmentDetailsText];
LABEL_10:

LABEL_11:

  return v14;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  switch(section)
  {
    case 3:
      goto LABEL_10;
    case 2:
      v11 = [pathCopy row];
      if (v11 == 1)
      {
        break;
      }

      if (!v11)
      {
        v12 = [viewCopy cellForItemAtIndexPath:pathCopy];
        -[WBSAutoFillInternalFeedbackController setRegression:](self->_feedbackController, "setRegression:", [v12 isChecked] ^ 1);
        [v12 setChecked:{-[WBSAutoFillInternalFeedbackController isRegression](self->_feedbackController, "isRegression")}];
        collectionView = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
        [collectionView reloadData];
LABEL_14:

        break;
      }

LABEL_10:
      v14 = [pathCopy row];
      if (v14 == [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType])
      {
        break;
      }

      selectedAttachmentsType = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedAttachmentsType];
      v16 = [MEMORY[0x1E696AC88] indexPathForRow:selectedAttachmentsType inSection:3];
      v12 = [viewCopy cellForItemAtIndexPath:v16];

      [v12 setChecked:0];
      collectionView = [viewCopy cellForItemAtIndexPath:pathCopy];
      [collectionView setChecked:1];
      [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setSelectedAttachmentsType:v14];
      goto LABEL_14;
    case 0:
      v8 = [pathCopy row] + 1;
      if (v8 != [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory])
      {
        selectedFeedbackCategory = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController selectedFeedbackCategory];
        if (selectedFeedbackCategory)
        {
          v10 = [MEMORY[0x1E696AC88] indexPathForRow:selectedFeedbackCategory - 1 inSection:0];
        }

        else
        {
          v10 = 0;
        }

        v12 = [viewCopy cellForItemAtIndexPath:v10];

        [v12 setChecked:0];
        collectionView = [viewCopy cellForItemAtIndexPath:pathCopy];
        [collectionView setChecked:1];
        [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setSelectedFeedbackCategory:v8];
        collectionView2 = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
        [collectionView2 reloadData];

        [(_SFAutoFillInternalFeedbackCollectionViewController *)self _updateContinueInTapToRadarButton];
        goto LABEL_14;
      }

      break;
  }
}

- (void)collectionViewListCellButtonPressed:(id)pressed
{
  [(_SFAutoFillInternalFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  reportHandler = self->_reportHandler;
  continueInTapToRadarURL = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController continueInTapToRadarURL];
  reportHandler[2](reportHandler, continueInTapToRadarURL);
}

- (void)textFieldCellTextDidChange:(id)change
{
  changeCopy = change;
  collectionView = [(_SFAutoFillInternalFeedbackCollectionViewController *)self collectionView];
  v5 = [collectionView indexPathForCell:changeCopy];

  if ([v5 section] == 2)
  {
    text = [changeCopy text];
    [(WBSAutoFillInternalFeedbackController *)self->_feedbackController setKnownWorkingBuild:text];
  }

  else
  {
    detailTypesForSelectedFeedbackCategory = [(WBSAutoFillInternalFeedbackController *)self->_feedbackController detailTypesForSelectedFeedbackCategory];
    text = [detailTypesForSelectedFeedbackCategory objectAtIndex:{objc_msgSend(v5, "row") / 2}];

    feedbackController = self->_feedbackController;
    text2 = [changeCopy text];
    [(WBSAutoFillInternalFeedbackController *)feedbackController setResponse:text2 forDetailType:text];

    [(_SFAutoFillInternalFeedbackCollectionViewController *)self _updateContinueInTapToRadarButton];
  }
}

@end