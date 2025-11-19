@interface FBAFFUValidationCellChoices
+ (void)showValidationChoicesForCellAtIndexPath:(id)a3 followup:(id)a4 fromViewController:(id)a5 completion:(id)a6;
@end

@implementation FBAFFUValidationCellChoices

+ (void)showValidationChoicesForCellAtIndexPath:(id)a3 followup:(id)a4 fromViewController:(id)a5 completion:(id)a6
{
  v35 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 noChoiceText];
  v46[0] = v12;
  v13 = [v9 negativeChoice];
  v46[1] = v13;
  v34 = v9;
  v14 = [v9 positiveChoice];
  v46[2] = v14;
  v36 = [NSArray arrayWithObjects:v46 count:3];

  v33 = v10;
  v15 = [v10 tableView];
  v16 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v17 = 2;
  do
  {
    v18 = [v36 objectAtIndex:v17];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002BFA8;
    v37[3] = &unk_1000DF540;
    v19 = v15;
    v38 = v19;
    v20 = v35;
    v39 = v20;
    v21 = v11;
    v40 = v21;
    v41 = v17;
    v22 = [UIAlertAction actionWithTitle:v18 style:0 handler:v37];

    [v16 addAction:v22];
    --v17;
  }

  while (v17);
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:0];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10002BF58;
  v42[3] = &unk_1000DF518;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v25 = v21;
  v26 = v20;
  v27 = v19;
  v28 = [UIAlertAction actionWithTitle:v24 style:1 handler:v42];

  v29 = v16;
  [v16 addAction:v28];

  v30 = [v16 popoverPresentationController];
  v31 = [v33 tableView];
  v32 = [v31 cellForRowAtIndexPath:v26];

  [v30 setSourceView:v32];
  [v32 bounds];
  [v30 setSourceRect:?];
  [v30 setPermittedArrowDirections:15];
  [v33 presentViewController:v29 animated:1 completion:&stru_1000DF560];
}

@end