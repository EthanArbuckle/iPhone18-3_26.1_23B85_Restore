@interface ICSendNoteActivityViewController
+ (id)fallbackImageWithNote:(id)note;
- (ICSendNoteActivityViewController)initWithNote:(id)note presentingViewController:(id)controller eventReporter:(id)reporter;
- (id)excludedActivityTypes;
@end

@implementation ICSendNoteActivityViewController

- (ICSendNoteActivityViewController)initWithNote:(id)note presentingViewController:(id)controller eventReporter:(id)reporter
{
  obj = note;
  noteCopy = note;
  controllerCopy = controller;
  reporterCopy = reporter;
  reporterCopy2 = reporter;
  v10 = +[NSMutableArray array];
  v41 = +[NSMutableArray array];
  if ([noteCopy canBeSharedViaICloud] && (objc_msgSend(noteCopy, "isSharedThroughParent", obj, reporter) & 1) == 0 && objc_msgSend(noteCopy, "canCurrentUserShare"))
  {
    v11 = objc_alloc_init(NSItemProvider);
    v12 = +[ICCollaborationController sharedInstance];
    [v12 registerShareForObject:noteCopy itemProvider:v11 generateThumbnails:1];

    [v10 addObject:v11];
  }

  if (+[_TtC11MobileNotes14ICFeatureFlags pagesHandoffEnabled]&& [ICPagesHandoffManager canLaunchPagesForNote:noteCopy])
  {
    v13 = [[ICPagesHandoffActivity alloc] initWithNote:noteCopy viewController:controllerCopy];
    [v41 addObject:v13];
  }

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    v14 = [ICExportMarkdownActivity alloc];
    v44 = noteCopy;
    v15 = [NSArray arrayWithObjects:&v44 count:1];
    v16 = [(ICExportMarkdownActivity *)v14 initWithObjects:v15 presentingViewController:controllerCopy];

    [v41 addObject:v16];
  }

  v38 = objc_alloc_init(ICShareNoteExporter);
  v37 = [noteCopy noteActivityItemsForSharingWithNoteExporter:?];
  [v10 addObjectsFromArray:?];
  airDropActivityItemSource = [noteCopy airDropActivityItemSource];
  [v10 ic_addNonNilObject:?];
  v17 = +[ICCollaborationController shareSheetNoteThumbnailImage];
  if (!v17)
  {
    v17 = [objc_opt_class() fallbackImageWithNote:noteCopy];
  }

  v18 = [ICLinkPresentationMetadata alloc];
  title = [noteCopy title];
  v20 = [(ICLinkPresentationMetadata *)v18 initWithTitle:title image:v17];

  [v10 addObject:v20];
  v21 = [ICNotePrintActivityItemSource alloc];
  v40 = controllerCopy;
  view = [controllerCopy view];
  [view bounds];
  v25 = [(ICNotePrintActivityItemSource *)v21 initWithNote:noteCopy size:v23, v24];

  v26 = +[UIPrintInfo printInfo];
  title2 = [noteCopy title];
  [v26 setJobName:title2];

  v43[0] = v26;
  v43[1] = v25;
  v28 = [NSArray arrayWithObjects:v43 count:2];
  [v10 addObjectsFromArray:v28];

  v29 = [v10 copy];
  v30 = [v41 copy];
  v42.receiver = self;
  v42.super_class = ICSendNoteActivityViewController;
  v31 = [(ICSendNoteActivityViewController *)&v42 initWithActivityItems:v29 applicationActivities:v30];

  if (v31)
  {
    objc_storeStrong(&v31->_note, obja);
    objc_storeStrong(&v31->_noteExporter, v38);
    objc_storeStrong(&v31->_eventReporter, reporterCopy);
  }

  return v31;
}

- (id)excludedActivityTypes
{
  v3 = [NSMutableArray alloc];
  v10[0] = ICActivityTypeShareToNote;
  v10[1] = UIActivityTypeOpenInIBooks;
  v10[2] = UIActivityTypeSharePlay;
  v4 = [NSArray arrayWithObjects:v10 count:3];
  v5 = [v3 initWithArray:v4];

  additionalExcludedTypes = [(ICSendNoteActivityViewController *)self additionalExcludedTypes];
  v7 = [additionalExcludedTypes count];

  if (v7)
  {
    additionalExcludedTypes2 = [(ICSendNoteActivityViewController *)self additionalExcludedTypes];
    [v5 addObjectsFromArray:additionalExcludedTypes2];
  }

  return v5;
}

+ (id)fallbackImageWithNote:(id)note
{
  noteCopy = note;
  v4 = [[ICThumbnailConfiguration alloc] initForNoteNavigationBarIconWithNote:noteCopy preferredSize:{90.0, 72.0}];

  v5 = +[ICThumbnailService sharedThumbnailService];
  v6 = [v5 thumbnailWithConfiguration:v4];
  image = [v6 image];

  return image;
}

@end