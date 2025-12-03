@interface ICAttachmentInspectorViewController
- (BOOL)canCopy:(id)copy;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (ICAttachmentInspectorViewController)initWithAttachment:(id)attachment;
- (NSSet)subAttachmentIdentifiers;
- (NSSet)subAttachments;
- (NSString)subAttachmentIdentifiersString;
- (UIImageView)attachmentImageView;
- (id)attachmentInfoAtRow:(int64_t)row;
- (id)attachmentInfoCellAtRow:(int64_t)row;
- (id)attachmentInfoTypeAtRow:(int64_t)row;
- (id)defaultCellForRowInSection:(int64_t)section;
- (id)defaultCellTextAtSection:(int64_t)section;
- (id)dequeueOrRegisterCellWithIdentifier:(id)identifier style:(int64_t)style;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)spotlightAttributeCellAtRow:(int64_t)row;
- (id)spotlightAttributeValueToCopyAtRow:(int64_t)row;
- (id)stringToCopyAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)clearAtIndexPath:(id)path;
- (void)confirmShowSubAttachmentsIfNeeded;
- (void)copy:(id)copy;
- (void)doneAction:(id)action;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)presentEditMenuAtIndexPath:(id)path;
- (void)savePKDrawingData;
- (void)setAttachment:(id)attachment;
- (void)setUpViews;
- (void)startCoreSpotlightSearch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateViews;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ICAttachmentInspectorViewController

- (ICAttachmentInspectorViewController)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [NSBundle bundleForClass:v6];
  v14.receiver = self;
  v14.super_class = ICAttachmentInspectorViewController;
  v9 = [(ICAttachmentInspectorViewController *)&v14 initWithNibName:v7 bundle:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_attachment, attachment);
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICAttachmentInspectorViewController;
  [(ICAttachmentInspectorViewController *)&v4 viewDidDisappear:disappear];
  if ([(ICAttachmentInspectorViewController *)self regenerateMetadataOnClose])
  {
    dispatchMainAfterDelay();
    [(ICAttachmentInspectorViewController *)self setRegenerateMetadataOnClose:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ((section - 1) < 6 || section == 8)
  {
    return 1;
  }

  if (section != 7)
  {
    return 13;
  }

  spotlightResults = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v7 = [spotlightResults count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section > 6)
  {
    if (section == 7)
    {
      v8 = -[ICAttachmentInspectorViewController spotlightAttributeCellAtRow:](self, "spotlightAttributeCellAtRow:", [pathCopy row]);
      goto LABEL_4;
    }

    if (section == 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((section - 1) < 6)
    {
LABEL_3:
      v8 = [(ICAttachmentInspectorViewController *)self defaultCellForRowInSection:section];
LABEL_4:
      v4 = v8;
      goto LABEL_5;
    }

    if (!section)
    {
      v8 = -[ICAttachmentInspectorViewController attachmentInfoCellAtRow:](self, "attachmentInfoCellAtRow:", [pathCopy row]);
      goto LABEL_4;
    }
  }

LABEL_5:

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    section = [pathCopy section];
  }

  else
  {
    v6 = [pathCopy row];
    section = [pathCopy section];
    if (v6 == 9)
    {
      [(ICAttachmentInspectorViewController *)self confirmShowSubAttachmentsIfNeeded];
      goto LABEL_9;
    }
  }

  if (section == 8)
  {
    [(ICAttachmentInspectorViewController *)self savePKDrawingData];
  }

  else
  {
    section2 = [pathCopy section];
    v8 = pathCopy;
    if (!section2)
    {
      goto LABEL_10;
    }

    [(ICAttachmentInspectorViewController *)self presentEditMenuAtIndexPath:pathCopy];
  }

LABEL_9:
  v8 = pathCopy;
LABEL_10:
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v6 = [actions mutableCopy];
  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if ([(ICAttachmentInspectorViewController *)self canClear:indexPathForSelectedRow])
  {
    v9 = [UIImage systemImageNamed:@"trash"];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100157AF8;
    v17 = &unk_100646870;
    selfCopy = self;
    v19 = indexPathForSelectedRow;
    v10 = [UIAction actionWithTitle:@"Clear" image:v9 identifier:0 handler:&v14];

    [v10 setAttributes:{objc_msgSend(v10, "attributes", v14, v15, v16, v17, selfCopy) | 2}];
    [v6 addObject:v10];
  }

  v11 = [v6 copy];
  v12 = [UIMenu menuWithChildren:v11];

  return v12;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v8 = [(ICAttachmentInspectorViewController *)self tableView:interaction];
  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  [v8 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v6 = [(ICAttachmentInspectorViewController *)self tableView:action];
  indexPathForSelectedRow = [v6 indexPathForSelectedRow];

  v8 = [(ICAttachmentInspectorViewController *)self stringToCopyAtIndexPath:indexPathForSelectedRow];

  if (!v8)
  {
    tableView = [(ICAttachmentInspectorViewController *)self tableView];
    [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

    goto LABEL_5;
  }

  if ("copy:" != action)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [(ICAttachmentInspectorViewController *)self canCopy:indexPathForSelectedRow];
LABEL_6:

  return v9;
}

- (void)copy:(id)copy
{
  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  v5 = [(ICAttachmentInspectorViewController *)self stringToCopyAtIndexPath:indexPathForSelectedRow];
  if (v5)
  {
    v6 = +[UIPasteboard generalPasteboard];
    [v6 setString:v5];
  }
}

- (void)presentEditMenuAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  v5 = [tableView cellForRowAtIndexPath:pathCopy];

  interactions = [v5 interactions];
  v7 = [interactions ic_firstObjectOfClass:objc_opt_class()];

  if (!v7)
  {
    v7 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
    [v5 addInteraction:v7];
  }

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy section]);
  [v5 center];
  v9 = [UIEditMenuConfiguration configurationWithIdentifier:v8 sourcePoint:?];

  [v7 presentEditMenuWithConfiguration:v9];
}

- (void)savePKDrawingData
{
  objc_opt_class();
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    objc_opt_class();
    attachment2 = [(ICAttachmentInspectorViewController *)self attachment];
    attachmentModel2 = [attachment2 attachmentModel];
    v8 = ICDynamicCast();
    newDrawingFromMergeableData = [v8 newDrawingFromMergeableData];

    goto LABEL_5;
  }

  attachment3 = [(ICAttachmentInspectorViewController *)self attachment];
  attachmentType = [attachment3 attachmentType];

  if (attachmentType == 13)
  {
    attachment2 = [(ICAttachmentInspectorViewController *)self attachment];
    newDrawingFromMergeableData = [ICSystemPaperDocumentHelper drawingForPaperAttachment:attachment2];
LABEL_5:

    dataRepresentation = [newDrawingFromMergeableData dataRepresentation];
    v13 = dataRepresentation;
    if (newDrawingFromMergeableData)
    {
      if (dataRepresentation)
      {
LABEL_7:
        v30 = NSTemporaryDirectory();
        +[NSFileManager defaultManager];
        v14 = v31 = v5;
        v15 = [NSURL fileURLWithPath:v30];
        attachment4 = [(ICAttachmentInspectorViewController *)self attachment];
        title = [attachment4 title];
        ic_trimmedString = [title ic_trimmedString];
        ic_stringByReplacingNewlineCharactersWithWhiteSpace = [ic_trimmedString ic_stringByReplacingNewlineCharactersWithWhiteSpace];
        ic_sanitizedFilenameString = [ic_stringByReplacingNewlineCharactersWithWhiteSpace ic_sanitizedFilenameString];

        if ([(__CFString *)ic_sanitizedFilenameString length])
        {
          v21 = ic_sanitizedFilenameString;
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

        view = [(ICAttachmentInspectorViewController *)self view];
        popoverPresentationController = [v26 popoverPresentationController];
        [popoverPresentationController setSourceView:view];

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
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  if ([attachment attachmentType] == 10)
  {

    return 9;
  }

  attachment2 = [(ICAttachmentInspectorViewController *)self attachment];
  attachmentType = [attachment2 attachmentType];

  if (attachmentType == 13)
  {
    return 9;
  }

  return 8;
}

- (id)attachmentInfoAtRow:(int64_t)row
{
  selfCopy = self;
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  v6 = attachment;
  switch(row)
  {
    case 0:
      title = [attachment title];
      goto LABEL_15;
    case 1:
      title = [attachment userTitle];
      goto LABEL_15;
    case 2:
      title = [attachment identifier];
      goto LABEL_15;
    case 3:
      title = [attachment typeUTI];
      goto LABEL_15;
    case 4:
      [attachment attachmentType];
      title = NSStringFromICAttachmentType();
      goto LABEL_15;
    case 5:
      [attachment minimumSupportedNotesVersion];
      title = NSStringFromNotesVersion();
      goto LABEL_15;
    case 6:
      [attachment originX];
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
      title = NSStringFromCGRect(v22);
      goto LABEL_15;
    case 7:
      [attachment orientation];
      title = NSStringFromICImageClassOrientation();
      goto LABEL_15;
    case 8:
      croppingQuad = [attachment croppingQuad];
      v20 = [croppingQuad description];
      selfCopy = [v20 ic_trimmedString];

      goto LABEL_19;
    case 9:
      title = [selfCopy subAttachmentIdentifiersString];
LABEL_15:
      selfCopy = title;
      break;
    case 10:
      parentAttachment = [attachment parentAttachment];
      goto LABEL_17;
    case 11:
      parentAttachment2 = [attachment parentAttachment];
      goto LABEL_13;
    case 12:
      parentAttachment = [attachment note];
LABEL_17:
      croppingQuad = parentAttachment;
      title2 = [parentAttachment title];
      goto LABEL_18;
    case 13:
      parentAttachment2 = [attachment note];
LABEL_13:
      croppingQuad = parentAttachment2;
      title2 = [parentAttachment2 identifier];
LABEL_18:
      selfCopy = title2;
LABEL_19:

      break;
    default:
      break;
  }

  return selfCopy;
}

- (id)spotlightAttributeValueToCopyAtRow:(int64_t)row
{
  spotlightResults = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v6 = [spotlightResults objectAtIndexedSubscript:row];
  v7 = [v6 key];
  v8 = sub_100158580(v7);
  spotlightResults2 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v10 = [spotlightResults2 objectAtIndexedSubscript:row];
  value = [v10 value];
  v12 = sub_100158580(value);
  v13 = [NSString stringWithFormat:@"%@: %@", v8, v12];

  return v13;
}

- (id)spotlightAttributeCellAtRow:(int64_t)row
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"SectionSpotlightAttributeCell" style:3];
  spotlightResults = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v7 = [spotlightResults objectAtIndexedSubscript:row];
  v8 = [v7 key];
  v9 = sub_100158580(v8);
  textLabel = [v5 textLabel];
  [textLabel setText:v9];

  spotlightResults2 = [(ICAttachmentInspectorViewController *)self spotlightResults];
  v12 = [spotlightResults2 objectAtIndexedSubscript:row];
  value = [v12 value];
  v14 = sub_100158580(value);
  detailTextLabel = [v5 detailTextLabel];
  [detailTextLabel setText:v14];

  return v5;
}

- (id)attachmentInfoCellAtRow:(int64_t)row
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"SectionInfoCell" style:3];
  v6 = [(ICAttachmentInspectorViewController *)self attachmentInfoTypeAtRow:row];
  textLabel = [v5 textLabel];
  [textLabel setText:v6];

  v8 = [(ICAttachmentInspectorViewController *)self attachmentInfoAtRow:row];
  v9 = sub_100158580(v8);
  detailTextLabel = [v5 detailTextLabel];
  [detailTextLabel setText:v9];

  [v5 setAccessoryType:row == 9];

  return v5;
}

- (id)attachmentInfoTypeAtRow:(int64_t)row
{
  if ((row - 1) > 0xC)
  {
    return @"Title";
  }

  else
  {
    return *(&off_10064B6B0 + row - 1);
  }
}

- (BOOL)canCopy:(id)copy
{
  copyCopy = copy;
  if ([copyCopy section])
  {
    v4 = 1;
  }

  else
  {
    v4 = [copyCopy row] != 9;
  }

  if ([copyCopy row] == 8)
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearAtIndexPath:(id)path
{
  pathCopy = path;
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  section = [pathCopy section];
  if (section > 3)
  {
    if ((section - 6) >= 2)
    {
      if (section != 4)
      {
        if (section == 5)
        {
          [attachment setAdditionalIndexableText:0];
        }

        goto LABEL_15;
      }

      [attachment setOcrSummary:0];
      goto LABEL_14;
    }
  }

  else
  {
    if (section > 1)
    {
      if (section == 2)
      {
        [attachment updateHandwritingSummary:0];
      }

      else
      {
        [attachment setImageClassificationSummary:0];
      }

      goto LABEL_14;
    }

    if (section)
    {
      if (section != 1)
      {
LABEL_15:
        [attachment attachmentDidChange];
        managedObjectContext = [attachment managedObjectContext];
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100158AD4;
        v14[3] = &unk_100645E30;
        v10 = managedObjectContext;
        v15 = v10;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100158ADC;
        v11[3] = &unk_1006459B8;
        objc_copyWeak(&v13, &location);
        v12 = pathCopy;
        [v10 ic_performBlock:v14 andPerformBlockOnMainThread:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);

        goto LABEL_16;
      }

      [attachment setSummary:0];
      parentAttachment = [attachment parentAttachment];
      [parentAttachment setSummary:0];

      parentAttachment2 = [attachment parentAttachment];
      [parentAttachment2 attachmentDidChange];

LABEL_14:
      [(ICAttachmentInspectorViewController *)self setRegenerateMetadataOnClose:1];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)confirmShowSubAttachmentsIfNeeded
{
  subAttachments = [(ICAttachmentInspectorViewController *)self subAttachments];
  v3 = [subAttachments count];

  if (v3)
  {
    v4 = [UIAlertController alertControllerWithTitle:@"Sub-attachments" message:0 preferredStyle:0];
    objc_initWeak(&location, self);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subAttachments2 = [(ICAttachmentInspectorViewController *)self subAttachments];
    v6 = [subAttachments2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(subAttachments2);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          identifier = [v9 identifier];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100158F34;
          v19[3] = &unk_10064B600;
          objc_copyWeak(&v20, &location);
          v19[4] = v9;
          v11 = [UIAlertAction actionWithTitle:identifier style:0 handler:v19];
          [v4 addAction:v11];

          objc_destroyWeak(&v20);
        }

        v6 = [subAttachments2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    tableView = [(ICAttachmentInspectorViewController *)self tableView];
    tableView2 = [(ICAttachmentInspectorViewController *)self tableView];
    indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
    [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (id)defaultCellForRowInSection:(int64_t)section
{
  v5 = [(ICAttachmentInspectorViewController *)self dequeueOrRegisterCellWithIdentifier:@"DefaultCell" style:3];
  v6 = [(ICAttachmentInspectorViewController *)self defaultCellTextAtSection:section];
  v7 = sub_100158580(v6);
  detailTextLabel = [v5 detailTextLabel];
  [detailTextLabel setText:v7];

  return v5;
}

- (id)defaultCellTextAtSection:(int64_t)section
{
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  v5 = attachment;
  path = 0;
  if (section <= 3)
  {
    switch(section)
    {
      case 1:
        summary = [attachment summary];
        break;
      case 2:
        summary = [attachment handwritingSummary];
        break;
      case 3:
        summary = [attachment imageClassificationSummary];
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (section <= 5)
  {
    if (section == 4)
    {
      [attachment ocrSummary];
    }

    else
    {
      [attachment additionalIndexableText];
    }
    summary = ;
LABEL_18:
    path = summary;
    goto LABEL_19;
  }

  if (section == 6)
  {
    media = [attachment media];
    mediaURL = [media mediaURL];
    path = [mediaURL path];
  }

  else if (section == 8)
  {
    path = @"Export Drawing";
  }

  else
  {
    path = 0;
  }

LABEL_19:

  return path;
}

- (id)dequeueOrRegisterCellWithIdentifier:(id)identifier style:(int64_t)style
{
  identifierCopy = identifier;
  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  v8 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifierCopy];
    textLabel = [v8 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];
  }

  return v8;
}

- (void)doneAction:(id)action
{
  presentingViewController = [(ICAttachmentInspectorViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)setAttachment:(id)attachment
{
  objc_storeStrong(&self->_attachment, attachment);

  [(ICAttachmentInspectorViewController *)self updateViews];
}

- (void)setUpViews
{
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneAction:"];
  navigationItem = [(ICAttachmentInspectorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(ICAttachmentInspectorViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  [(ICAttachmentInspectorViewController *)self updateViews];
}

- (id)stringToCopyAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section > 6)
  {
    if (section == 7)
    {
      v7 = -[ICAttachmentInspectorViewController spotlightAttributeValueToCopyAtRow:](self, "spotlightAttributeValueToCopyAtRow:", [pathCopy row]);
      goto LABEL_4;
    }

    if (section == 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((section - 1) < 6)
    {
LABEL_3:
      v7 = [(ICAttachmentInspectorViewController *)self defaultCellTextAtSection:section];
LABEL_4:
      v3 = v7;
      goto LABEL_5;
    }

    if (!section)
    {
      v7 = -[ICAttachmentInspectorViewController attachmentInfoAtRow:](self, "attachmentInfoAtRow:", [pathCopy row]);
      goto LABEL_4;
    }
  }

LABEL_5:

  return v3;
}

- (NSSet)subAttachments
{
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  parentAttachment = [attachment parentAttachment];
  v4 = parentAttachment;
  if (parentAttachment)
  {
    v5 = parentAttachment;
  }

  else
  {
    v5 = attachment;
  }

  v6 = v5;

  subAttachments = [v6 subAttachments];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015966C;
  v11[3] = &unk_10064B650;
  v12 = attachment;
  v8 = attachment;
  v9 = [subAttachments ic_compactMap:v11];

  return v9;
}

- (NSSet)subAttachmentIdentifiers
{
  subAttachments = [(ICAttachmentInspectorViewController *)self subAttachments];
  v3 = [subAttachments ic_compactMap:&stru_10064B690];

  return v3;
}

- (NSString)subAttachmentIdentifiersString
{
  subAttachmentIdentifiers = [(ICAttachmentInspectorViewController *)self subAttachmentIdentifiers];
  allObjects = [subAttachmentIdentifiers allObjects];
  v4 = [allObjects sortedArrayUsingSelector:"compare:"];

  v5 = [v4 componentsJoinedByString:@"\n"];

  return v5;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v3 = @"Attachment";
  if (section > 4)
  {
    v6 = @"Spotlight Attributes";
    v7 = @"Export Drawing";
    if (section != 8)
    {
      v7 = @"Attachment";
    }

    if (section != 7)
    {
      v6 = v7;
    }

    v8 = @"Additional Indexable";
    v9 = @"Media URL";
    if (section != 6)
    {
      v9 = @"Attachment";
    }

    if (section != 5)
    {
      v8 = v9;
    }

    if (section <= 6)
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
    if (section > 2)
    {
      if (section == 3)
      {
        attachment = [(ICAttachmentInspectorViewController *)self attachment];
        v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [attachment imageClassificationSummaryVersion]);
        [NSString localizedStringWithFormat:@"Image Classification (v%@)", v5];
      }

      else
      {
        attachment = [(ICAttachmentInspectorViewController *)self attachment];
        v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [attachment ocrSummaryVersion]);
        [NSString localizedStringWithFormat:@"OCR Summary (v%@)", v5];
      }
    }

    else
    {
      if (section == 1)
      {
        v3 = @"Summary";
        goto LABEL_22;
      }

      if (section != 2)
      {
        goto LABEL_22;
      }

      attachment = [(ICAttachmentInspectorViewController *)self attachment];
      v5 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [attachment handwritingSummaryVersion]);
      [NSString localizedStringWithFormat:@"Handwriting Summary (v%@)", v5];
    }
    v3 = ;
  }

LABEL_22:

  return v3;
}

- (void)updateViews
{
  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  image = [attachment image];
  attachmentImageView = [(ICAttachmentInspectorViewController *)self attachmentImageView];
  [attachmentImageView setImage:image];

  tableView = [(ICAttachmentInspectorViewController *)self tableView];
  [tableView reloadData];
}

- (void)startCoreSpotlightSearch
{
  searchOperationQueue = [(ICAttachmentInspectorViewController *)self searchOperationQueue];
  [searchOperationQueue cancelAllOperations];

  attachment = [(ICAttachmentInspectorViewController *)self attachment];
  note = [attachment note];
  searchIndexingIdentifier = [note searchIndexingIdentifier];
  v7 = [NSString stringWithFormat:@"(_ICItemRelatedNoteUniqueIdentifier == %@)", searchIndexingIdentifier];

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
  searchOperationQueue2 = [(ICAttachmentInspectorViewController *)self searchOperationQueue];
  [searchOperationQueue2 addOperation:v10];

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