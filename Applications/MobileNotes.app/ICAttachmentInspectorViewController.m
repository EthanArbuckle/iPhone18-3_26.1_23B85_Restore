@interface ICAttachmentInspectorViewController
- (BOOL)canCopy:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (ICAttachmentInspectorViewController)initWithAttachment:(id)a3;
- (NSSet)subAttachmentIdentifiers;
- (NSSet)subAttachments;
- (NSString)subAttachmentIdentifiersString;
- (UIImageView)attachmentImageView;
- (id)attachmentInfoAtRow:(int64_t)a3;
- (id)attachmentInfoCellAtRow:(int64_t)a3;
- (id)attachmentInfoTypeAtRow:(int64_t)a3;
- (id)defaultCellForRowInSection:(int64_t)a3;
- (id)defaultCellTextAtSection:(int64_t)a3;
- (id)dequeueOrRegisterCellWithIdentifier:(id)a3 style:(int64_t)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)spotlightAttributeCellAtRow:(int64_t)a3;
- (id)spotlightAttributeValueToCopyAtRow:(int64_t)a3;
- (id)stringToCopyAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForHeaderInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)clearAtIndexPath:(id)a3;
- (void)confirmShowSubAttachmentsIfNeeded;
- (void)copy:(id)a3;
- (void)doneAction:(id)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)presentEditMenuAtIndexPath:(id)a3;
- (void)savePKDrawingData;
- (void)setAttachment:(id)a3;
- (void)setUpViews;
- (void)startCoreSpotlightSearch;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateViews;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ICAttachmentInspectorViewController

- (ICAttachmentInspectorViewController)initWithAttachment:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [NSBundle bundleForClass:v6];
  v14.receiver = self;
  v14.super_class = ICAttachmentInspectorViewController;
  v9 = [(ICAttachmentInspectorViewController *)&v14 initWithNibName:v7 bundle:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_attachment, a3);
    spotlightResults = v9->_spotlightResults;
    v9->_spotlightResults = &__NSArray0__struct;

    v11 = objc_alloc_init(NSOperationQueue);
    searchOperationQueue = v9->_searchOperationQueue;
    v9->_searchOperationQueue = v11;
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICAttachmentInspectorViewController;
  [(ICAttachmentInspectorViewController *)&v3 viewDidLoad];
  [(ICAttachmentInspectorViewController *)self setUpViews];
  [(ICAttachmentInspectorViewController *)self startCoreSpotlightSearch];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICAttachmentInspectorViewController;
  [(ICAttachmentInspectorViewController *)&v4 viewDidDisappear:a3];
  if ([(ICAttachmentInspectorViewController *)self regenerateMetadataOnClose])
  {
    dispatchMainAfterDelay();
    [(ICAttachmentInspectorViewController *)self setRegenerateMetadataOnClose:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ((a4 - 1) < 6 || a4 == 8)
  {
    return 1;
  }

  if (a4 != 7)
  {
    return 13;
  }

  v6 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [v6 section];
  if (v7 > 6)
  {
    if (v7 == 7)
    {
      v8 = -[ICAttachmentInspectorViewController spotlightAttributeCellAtRow:](self, "spotlightAttributeCellAtRow:", [v6 row]);
      goto LABEL_4;
    }

    if (v7 == 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((v7 - 1) < 6)
    {
LABEL_3:
      v8 = [(ICAttachmentInspectorViewController *)self defaultCellForRowInSection:v7];
LABEL_4:
      v4 = v8;
      goto LABEL_5;
    }

    if (!v7)
    {
      v8 = -[ICAttachmentInspectorViewController attachmentInfoCellAtRow:](self, "attachmentInfoCellAtRow:", [v6 row]);
      goto LABEL_4;
    }
  }

LABEL_5:

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a4;
  if ([v9 section])
  {
    v5 = [v9 section];
  }

  else
  {
    v6 = [v9 row];
    v5 = [v9 section];
    if (v6 == 9)
    {
      [(ICAttachmentInspectorViewController *)self confirmShowSubAttachmentsIfNeeded];
      goto LABEL_9;
    }
  }

  if (v5 == 8)
  {
    [(ICAttachmentInspectorViewController *)self savePKDrawingData];
  }

  else
  {
    v7 = [v9 section];
    v8 = v9;
    if (!v7)
    {
      goto LABEL_10;
    }

    [(ICAttachmentInspectorViewController *)self presentEditMenuAtIndexPath:v9];
  }

LABEL_9:
  v8 = v9;
LABEL_10:
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = [a5 mutableCopy];
  v7 = [(ICAttachmentInspectorViewController *)self tableView];
  v8 = [v7 indexPathForSelectedRow];

  if ([(ICAttachmentInspectorViewController *)self canClear:v8])
  {
    v9 = [UIImage systemImageNamed:@"trash"];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100157AF8;
    v17 = &unk_100646870;
    v18 = self;
    v19 = v8;
    v10 = [UIAction actionWithTitle:@"Clear" image:v9 identifier:0 handler:&v14];

    [v10 setAttributes:{objc_msgSend(v10, "attributes", v14, v15, v16, v17, v18) | 2}];
    [v6 addObject:v10];
  }

  v11 = [v6 copy];
  v12 = [UIMenu menuWithChildren:v11];

  return v12;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = [(ICAttachmentInspectorViewController *)self tableView:a3];
  v6 = [(ICAttachmentInspectorViewController *)self tableView];
  v7 = [v6 indexPathForSelectedRow];
  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = [(ICAttachmentInspectorViewController *)self tableView:a3];
  v7 = [v6 indexPathForSelectedRow];

  v8 = [(ICAttachmentInspectorViewController *)self stringToCopyAtIndexPath:v7];

  if (!v8)
  {
    v10 = [(ICAttachmentInspectorViewController *)self tableView];
    [v10 deselectRowAtIndexPath:v7 animated:1];

    goto LABEL_5;
  }

  if ("copy:" != a3)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [(ICAttachmentInspectorViewController *)self canCopy:v7];
LABEL_6:

  return v9;
}

- (void)copy:(id)a3
{
  v4 = [(ICAttachmentInspectorViewController *)self tableView];
  v7 = [v4 indexPathForSelectedRow];

  v5 = [(ICAttachmentInspectorViewController *)self stringToCopyAtIndexPath:v7];
  if (v5)
  {
    v6 = +[UIPasteboard generalPasteboard];
    [v6 setString:v5];
  }
}

- (void)presentEditMenuAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = [(ICAttachmentInspectorViewController *)self tableView];
  v5 = [v4 cellForRowAtIndexPath:v10];

  v6 = [v5 interactions];
  v7 = [v6 ic_firstObjectOfClass:objc_opt_class()];

  if (!v7)
  {
    v7 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
    [v5 addInteraction:v7];
  }

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 section]);
  [v5 center];
  v9 = [UIEditMenuConfiguration configurationWithIdentifier:v8 sourcePoint:?];

  [v7 presentEditMenuWithConfiguration:v9];
}

- (void)savePKDrawingData
{
  objc_opt_class();
  v3 = [(ICAttachmentInspectorViewController *)self attachment];
  v4 = [v3 attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    objc_opt_class();
    v6 = [(ICAttachmentInspectorViewController *)self attachment];
    v7 = [v6 attachmentModel];
    v8 = ICDynamicCast();
    v9 = [v8 newDrawingFromMergeableData];

    goto LABEL_5;
  }

  v10 = [(ICAttachmentInspectorViewController *)self attachment];
  v11 = [v10 attachmentType];

  if (v11 == 13)
  {
    v6 = [(ICAttachmentInspectorViewController *)self attachment];
    v9 = [ICSystemPaperDocumentHelper drawingForPaperAttachment:v6];
LABEL_5:

    v12 = [v9 dataRepresentation];
    v13 = v12;
    if (v9)
    {
      if (v12)
      {
LABEL_7:
        v30 = NSTemporaryDirectory();
        +[NSFileManager defaultManager];
        v14 = v31 = v5;
        v15 = [NSURL fileURLWithPath:v30];
        v16 = [(ICAttachmentInspectorViewController *)self attachment];
        v17 = [v16 title];
        v18 = [v17 ic_trimmedString];
        v19 = [v18 ic_stringByReplacingNewlineCharactersWithWhiteSpace];
        v20 = [v19 ic_sanitizedFilenameString];

        if ([(__CFString *)v20 length])
        {
          v21 = v20;
        }

        else
        {
          v21 = @"Drawing";
        }

        v22 = [v15 URLByAppendingPathComponent:v21 isDirectory:0];

        v23 = [v22 URLByAppendingPathExtension:@"pkdrawingdata"];

        [v14 removeItemAtURL:v23 error:0];
        [v13 writeToURL:v23 atomically:1];
        v24 = [UIActivityViewController alloc];
        v33 = v23;
        v25 = [NSArray arrayWithObjects:&v33 count:1];
        v26 = [v24 initWithActivityItems:v25 applicationActivities:0];

        v32[0] = UIActivityTypeOpenInIBooks;
        v32[1] = ICActivityTypeShareToNote;
        v32[2] = UIActivityTypeSharePlay;
        v27 = [NSArray arrayWithObjects:v32 count:3];
        [v26 setExcludedActivityTypes:v27];

        v28 = [(ICAttachmentInspectorViewController *)self view];
        v29 = [v26 popoverPresentationController];
        [v29 setSourceView:v28];

        [(ICAttachmentInspectorViewController *)self presentViewController:v26 animated:1 completion:0];
        v5 = v31;

        goto LABEL_13;
      }
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"((drawing) != nil)" functionName:"[ICAttachmentInspectorViewController savePKDrawingData]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "drawing"];
      if (v13)
      {
        goto LABEL_7;
      }
    }

    [ICAssert handleFailedAssertWithCondition:"((data) != nil)" functionName:"[ICAttachmentInspectorViewController savePKDrawingData]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "data"];
LABEL_13:
  }
}

- (int64_t)numberOfSections
{
  v3 = [(ICAttachmentInspectorViewController *)self attachment];
  if ([v3 attachmentType] == 10)
  {

    return 9;
  }

  v4 = [(ICAttachmentInspectorViewController *)self attachment];
  v5 = [v4 attachmentType];

  if (v5 == 13)
  {
    return 9;
  }

  return 8;
}

- (id)attachmentInfoAtRow:(int64_t)a3
{
  v4 = self;
  v5 = [(ICAttachmentInspectorViewController *)self attachment];
  v6 = v5;
  switch(a3)
  {
    case 0:
      v7 = [v5 title];
      goto LABEL_15;
    case 1:
      v7 = [v5 userTitle];
      goto LABEL_15;
    case 2:
      v7 = [v5 identifier];
      goto LABEL_15;
    case 3:
      v7 = [v5 typeUTI];
      goto LABEL_15;
    case 4:
      [v5 attachmentType];
      v7 = NSStringFromICAttachmentType();
      goto LABEL_15;
    case 5:
      [v5 minimumSupportedNotesVersion];
      v7 = NSStringFromNotesVersion();
      goto LABEL_15;
    case 6:
      [v5 originX];
      v13 = v12;
      [v6 originY];
      v15 = v14;
      [v6 sizeWidth];
      v17 = v16;
      [v6 sizeHeight];
      v22.size.height = v18;
      v22.origin.x = v13;
      v22.origin.y = v15;
      v22.size.width = v17;
      v7 = NSStringFromCGRect(v22);
      goto LABEL_15;
    case 7:
      [v5 orientation];
      v7 = NSStringFromICImageClassOrientation();
      goto LABEL_15;
    case 8:
      v10 = [v5 croppingQuad];
      v20 = [v10 description];
      v4 = [v20 ic_trimmedString];

      goto LABEL_19;
    case 9:
      v7 = [v4 subAttachmentIdentifiersString];
LABEL_15:
      v4 = v7;
      break;
    case 10:
      v9 = [v5 parentAttachment];
      goto LABEL_17;
    case 11:
      v8 = [v5 parentAttachment];
      goto LABEL_13;
    case 12:
      v9 = [v5 note];
LABEL_17:
      v10 = v9;
      v11 = [v9 title];
      goto LABEL_18;
    case 13:
      v8 = [v5 note];
LABEL_13:
      v10 = v8;
      v11 = [v8 identifier];
LABEL_18:
      v4 = v11;
LABEL_19:

      break;
    default:
      break;
  }

  return v4;
}

- (id)spotlightAttributeValueToCopyAtRow:(int64_t)a3
{
  v5 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 key];
  v8 = sub_100158580(v7);
  v9 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v10 value];
  v12 = sub_100158580(v11);
  v13 = [NSString stringWithFormat:@"%@: %@", v8, v12];

  return v13;
}

- (id)spotlightAttributeCellAtRow:(int64_t)a3
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"SectionSpotlightAttributeCell" style:3];
  v6 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 key];
  v9 = sub_100158580(v8);
  v10 = [v5 textLabel];
  [v10 setText:v9];

  v11 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v12 = [v11 objectAtIndexedSubscript:a3];
  v13 = [v12 value];
  v14 = sub_100158580(v13);
  v15 = [v5 detailTextLabel];
  [v15 setText:v14];

  return v5;
}

- (id)attachmentInfoCellAtRow:(int64_t)a3
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"SectionInfoCell" style:3];
  v6 = [(ICAttachmentInspectorViewController *)self attachmentInfoTypeAtRow:a3];
  v7 = [v5 textLabel];
  [v7 setText:v6];

  v8 = [(ICAttachmentInspectorViewController *)self attachmentInfoAtRow:a3];
  v9 = sub_100158580(v8);
  v10 = [v5 detailTextLabel];
  [v10 setText:v9];

  [v5 setAccessoryType:a3 == 9];

  return v5;
}

- (id)attachmentInfoTypeAtRow:(int64_t)a3
{
  if ((a3 - 1) > 0xC)
  {
    return @"Title";
  }

  else
  {
    return *(&off_10064B6B0 + a3 - 1);
  }
}

- (BOOL)canCopy:(id)a3
{
  v3 = a3;
  if ([v3 section])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 row] != 9;
  }

  if ([v3 row] == 8)
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentInspectorViewController *)self attachment];
  v6 = [v4 section];
  if (v6 > 3)
  {
    if ((v6 - 6) >= 2)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          [v5 setAdditionalIndexableText:0];
        }

        goto LABEL_15;
      }

      [v5 setOcrSummary:0];
      goto LABEL_14;
    }
  }

  else
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        [v5 updateHandwritingSummary:0];
      }

      else
      {
        [v5 setImageClassificationSummary:0];
      }

      goto LABEL_14;
    }

    if (v6)
    {
      if (v6 != 1)
      {
LABEL_15:
        [v5 attachmentDidChange];
        v9 = [v5 managedObjectContext];
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100158AD4;
        v14[3] = &unk_100645E30;
        v10 = v9;
        v15 = v10;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100158ADC;
        v11[3] = &unk_1006459B8;
        objc_copyWeak(&v13, &location);
        v12 = v4;
        [v10 ic_performBlock:v14 andPerformBlockOnMainThread:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);

        goto LABEL_16;
      }

      [v5 setSummary:0];
      v7 = [v5 parentAttachment];
      [v7 setSummary:0];

      v8 = [v5 parentAttachment];
      [v8 attachmentDidChange];

LABEL_14:
      [(ICAttachmentInspectorViewController *)self setRegenerateMetadataOnClose:1];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)confirmShowSubAttachmentsIfNeeded
{
  v2 = [(ICAttachmentInspectorViewController *)self subAttachments];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [UIAlertController alertControllerWithTitle:@"Sub-attachments" message:0 preferredStyle:0];
    objc_initWeak(&location, self);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(ICAttachmentInspectorViewController *)self subAttachments];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = [v9 identifier];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100158F34;
          v19[3] = &unk_10064B600;
          objc_copyWeak(&v20, &location);
          v19[4] = v9;
          v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v19];
          [v4 addAction:v11];

          objc_destroyWeak(&v20);
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100159038;
    v17[3] = &unk_10064B628;
    objc_copyWeak(&v18, &location);
    v12 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v17];
    [v4 addAction:v12];
    [(ICAttachmentInspectorViewController *)self presentViewController:v4 animated:1 completion:0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [(ICAttachmentInspectorViewController *)self tableView];
    v13 = [(ICAttachmentInspectorViewController *)self tableView];
    v14 = [v13 indexPathForSelectedRow];
    [v15 deselectRowAtIndexPath:v14 animated:1];
  }
}

- (id)defaultCellForRowInSection:(int64_t)a3
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"DefaultCell" style:3];
  v6 = [(ICAttachmentInspectorViewController *)self defaultCellTextAtSection:a3];
  v7 = sub_100158580(v6);
  v8 = [v5 detailTextLabel];
  [v8 setText:v7];

  return v5;
}

- (id)defaultCellTextAtSection:(int64_t)a3
{
  v4 = [(ICAttachmentInspectorViewController *)self attachment];
  v5 = v4;
  v6 = 0;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v7 = [v4 summary];
        break;
      case 2:
        v7 = [v4 handwritingSummary];
        break;
      case 3:
        v7 = [v4 imageClassificationSummary];
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      [v4 ocrSummary];
    }

    else
    {
      [v4 additionalIndexableText];
    }
    v7 = ;
LABEL_18:
    v6 = v7;
    goto LABEL_19;
  }

  if (a3 == 6)
  {
    v8 = [v4 media];
    v9 = [v8 mediaURL];
    v6 = [v9 path];
  }

  else if (a3 == 8)
  {
    v6 = @"Export Drawing";
  }

  else
  {
    v6 = 0;
  }

LABEL_19:

  return v6;
}

- (id)dequeueOrRegisterCellWithIdentifier:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(ICAttachmentInspectorViewController *)self tableView];
  v8 = [v7 dequeueReusableCellWithIdentifier:v6];

  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:a4 reuseIdentifier:v6];
    v9 = [v8 textLabel];
    [v9 setNumberOfLines:0];

    v10 = [v8 detailTextLabel];
    [v10 setNumberOfLines:0];
  }

  return v8;
}

- (void)doneAction:(id)a3
{
  v3 = [(ICAttachmentInspectorViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)setAttachment:(id)a3
{
  objc_storeStrong(&self->_attachment, a3);

  [(ICAttachmentInspectorViewController *)self updateViews];
}

- (void)setUpViews
{
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneAction:"];
  v3 = [(ICAttachmentInspectorViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v6];

  v4 = [(ICAttachmentInspectorViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = [(ICAttachmentInspectorViewController *)self tableView];
  [v5 setEstimatedRowHeight:44.0];

  [(ICAttachmentInspectorViewController *)self updateViews];
}

- (id)stringToCopyAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 section];
  if (v6 > 6)
  {
    if (v6 == 7)
    {
      v7 = -[ICAttachmentInspectorViewController spotlightAttributeValueToCopyAtRow:](self, "spotlightAttributeValueToCopyAtRow:", [v5 row]);
      goto LABEL_4;
    }

    if (v6 == 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((v6 - 1) < 6)
    {
LABEL_3:
      v7 = [(ICAttachmentInspectorViewController *)self defaultCellTextAtSection:v6];
LABEL_4:
      v3 = v7;
      goto LABEL_5;
    }

    if (!v6)
    {
      v7 = -[ICAttachmentInspectorViewController attachmentInfoAtRow:](self, "attachmentInfoAtRow:", [v5 row]);
      goto LABEL_4;
    }
  }

LABEL_5:

  return v3;
}

- (NSSet)subAttachments
{
  v2 = [(ICAttachmentInspectorViewController *)self attachment];
  v3 = [v2 parentAttachment];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  v7 = [v6 subAttachments];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015966C;
  v11[3] = &unk_10064B650;
  v12 = v2;
  v8 = v2;
  v9 = [v7 ic_compactMap:v11];

  return v9;
}

- (NSSet)subAttachmentIdentifiers
{
  v2 = [(ICAttachmentInspectorViewController *)self subAttachments];
  v3 = [v2 ic_compactMap:&stru_10064B690];

  return v3;
}

- (NSString)subAttachmentIdentifiersString
{
  v2 = [(ICAttachmentInspectorViewController *)self subAttachmentIdentifiers];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

  v5 = [v4 componentsJoinedByString:@"\n"];

  return v5;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v3 = @"Attachment";
  if (a3 > 4)
  {
    v6 = @"Spotlight Attributes";
    v7 = @"Export Drawing";
    if (a3 != 8)
    {
      v7 = @"Attachment";
    }

    if (a3 != 7)
    {
      v6 = v7;
    }

    v8 = @"Additional Indexable";
    v9 = @"Media URL";
    if (a3 != 6)
    {
      v9 = @"Attachment";
    }

    if (a3 != 5)
    {
      v8 = v9;
    }

    if (a3 <= 6)
    {
      v3 = v8;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v4 = [(ICAttachmentInspectorViewController *)self attachment];
        v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v4 imageClassificationSummaryVersion]);
        [NSString localizedStringWithFormat:@"Image Classification (v%@)", v5];
      }

      else
      {
        v4 = [(ICAttachmentInspectorViewController *)self attachment];
        v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v4 ocrSummaryVersion]);
        [NSString localizedStringWithFormat:@"OCR Summary (v%@)", v5];
      }
    }

    else
    {
      if (a3 == 1)
      {
        v3 = @"Summary";
        goto LABEL_22;
      }

      if (a3 != 2)
      {
        goto LABEL_22;
      }

      v4 = [(ICAttachmentInspectorViewController *)self attachment];
      v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v4 handwritingSummaryVersion]);
      [NSString localizedStringWithFormat:@"Handwriting Summary (v%@)", v5];
    }
    v3 = ;
  }

LABEL_22:

  return v3;
}

- (void)updateViews
{
  v3 = [(ICAttachmentInspectorViewController *)self attachment];
  v4 = [v3 image];
  v5 = [(ICAttachmentInspectorViewController *)self attachmentImageView];
  [v5 setImage:v4];

  v6 = [(ICAttachmentInspectorViewController *)self tableView];
  [v6 reloadData];
}

- (void)startCoreSpotlightSearch
{
  v3 = [(ICAttachmentInspectorViewController *)self searchOperationQueue];
  [v3 cancelAllOperations];

  v4 = [(ICAttachmentInspectorViewController *)self attachment];
  v5 = [v4 note];
  v6 = [v5 searchIndexingIdentifier];
  v7 = [NSString stringWithFormat:@"(_ICItemRelatedNoteUniqueIdentifier == %@)", v6];

  v8 = [ICSearchQueryOperation alloc];
  v17 = @"_kMDItemSDBInfo";
  v9 = [NSArray arrayWithObjects:&v17 count:1];
  v10 = [v8 initWithQueryString:v7 rankingQueries:&__NSArray0__struct attributes:v9];

  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100159C30;
  v12[3] = &unk_100645900;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v10 setCompletionBlock:v12];
  v11 = [(ICAttachmentInspectorViewController *)self searchOperationQueue];
  [v11 addOperation:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (UIImageView)attachmentImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentImageView);

  return WeakRetained;
}

@end