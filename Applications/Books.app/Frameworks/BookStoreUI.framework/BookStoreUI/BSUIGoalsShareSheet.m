@interface BSUIGoalsShareSheet
+ (void)presentShareSheetFromViewController:(id)a3 sourceView:(id)a4 sourceBarButtonItem:(id)a5 image:(id)a6 kind:(unint64_t)a7 year:(unint64_t)a8 title:(id)a9 sharingUrls:(id)a10 completion:(id)a11;
@end

@implementation BSUIGoalsShareSheet

+ (void)presentShareSheetFromViewController:(id)a3 sourceView:(id)a4 sourceBarButtonItem:(id)a5 image:(id)a6 kind:(unint64_t)a7 year:(unint64_t)a8 title:(id)a9 sharingUrls:(id)a10 completion:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a6;
  v23 = [[_BSUIGoalsSharableTextProvider alloc] initWithSharableImage:v22 kind:a7 year:a8 title:v21 sharingUrls:v20];

  v24 = [[_BSUIGoalsSharableImageProvider alloc] initWithSharableImage:v22];
  v25 = [UIActivityViewController alloc];
  v45[0] = v23;
  v45[1] = v24;
  v26 = [NSArray arrayWithObjects:v45 count:2];
  v27 = [v25 initWithActivityItems:v26 applicationActivities:0];

  if (objc_opt_respondsToSelector())
  {
    if (v17)
    {
      v28 = [v27 popoverPresentationController];
      [v28 setSourceView:v17];
    }

    else
    {
      if (!v18)
      {
        goto LABEL_7;
      }

      v28 = [v27 popoverPresentationController];
      [v28 setBarButtonItem:v18];
    }
  }

LABEL_7:
  v44[0] = UIActivityTypeAssignToContact;
  v44[1] = UIActivityTypeAddToReadingList;
  v44[2] = UIActivityTypeOpenInIBooks;
  v44[3] = UIActivityTypeMarkupAsPDF;
  v29 = [NSArray arrayWithObjects:v44 count:4];
  [v27 setExcludedActivityTypes:v29];

  v30 = [v16 view];
  v31 = [v30 window];

  if (([v31 isKeyWindow] & 1) == 0)
  {
    [v31 makeKeyWindow];
  }

  v32 = [v31 tintColor];
  v33 = +[UIColor bc_booksLabelColor];
  [v31 setTintColor:v33];

  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_9A60;
  v40 = &unk_386E10;
  v41 = v31;
  v42 = v32;
  v43 = v19;
  v34 = v19;
  v35 = v32;
  v36 = v31;
  [v27 setCompletionWithItemsHandler:&v37];
  [v16 presentViewController:v27 animated:1 completion:{0, v37, v38, v39, v40}];
}

@end