@interface BSUIGoalsShareSheet
+ (void)presentShareSheetFromViewController:(id)controller sourceView:(id)view sourceBarButtonItem:(id)item image:(id)image kind:(unint64_t)kind year:(unint64_t)year title:(id)title sharingUrls:(id)self0 completion:(id)self1;
@end

@implementation BSUIGoalsShareSheet

+ (void)presentShareSheetFromViewController:(id)controller sourceView:(id)view sourceBarButtonItem:(id)item image:(id)image kind:(unint64_t)kind year:(unint64_t)year title:(id)title sharingUrls:(id)self0 completion:(id)self1
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  completionCopy = completion;
  urlsCopy = urls;
  titleCopy = title;
  imageCopy = image;
  v23 = [[_BSUIGoalsSharableTextProvider alloc] initWithSharableImage:imageCopy kind:kind year:year title:titleCopy sharingUrls:urlsCopy];

  v24 = [[_BSUIGoalsSharableImageProvider alloc] initWithSharableImage:imageCopy];
  v25 = [UIActivityViewController alloc];
  v45[0] = v23;
  v45[1] = v24;
  v26 = [NSArray arrayWithObjects:v45 count:2];
  v27 = [v25 initWithActivityItems:v26 applicationActivities:0];

  if (objc_opt_respondsToSelector())
  {
    if (viewCopy)
    {
      popoverPresentationController = [v27 popoverPresentationController];
      [popoverPresentationController setSourceView:viewCopy];
    }

    else
    {
      if (!itemCopy)
      {
        goto LABEL_7;
      }

      popoverPresentationController = [v27 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:itemCopy];
    }
  }

LABEL_7:
  v44[0] = UIActivityTypeAssignToContact;
  v44[1] = UIActivityTypeAddToReadingList;
  v44[2] = UIActivityTypeOpenInIBooks;
  v44[3] = UIActivityTypeMarkupAsPDF;
  v29 = [NSArray arrayWithObjects:v44 count:4];
  [v27 setExcludedActivityTypes:v29];

  view = [controllerCopy view];
  window = [view window];

  if (([window isKeyWindow] & 1) == 0)
  {
    [window makeKeyWindow];
  }

  tintColor = [window tintColor];
  v33 = +[UIColor bc_booksLabelColor];
  [window setTintColor:v33];

  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_9A60;
  v40 = &unk_386E10;
  v41 = window;
  v42 = tintColor;
  v43 = completionCopy;
  v34 = completionCopy;
  v35 = tintColor;
  v36 = window;
  [v27 setCompletionWithItemsHandler:&v37];
  [controllerCopy presentViewController:v27 animated:1 completion:{0, v37, v38, v39, v40}];
}

@end