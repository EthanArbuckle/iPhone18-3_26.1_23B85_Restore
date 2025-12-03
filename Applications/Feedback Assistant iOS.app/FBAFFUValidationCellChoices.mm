@interface FBAFFUValidationCellChoices
+ (void)showValidationChoicesForCellAtIndexPath:(id)path followup:(id)followup fromViewController:(id)controller completion:(id)completion;
@end

@implementation FBAFFUValidationCellChoices

+ (void)showValidationChoicesForCellAtIndexPath:(id)path followup:(id)followup fromViewController:(id)controller completion:(id)completion
{
  pathCopy = path;
  followupCopy = followup;
  controllerCopy = controller;
  completionCopy = completion;
  noChoiceText = [followupCopy noChoiceText];
  v46[0] = noChoiceText;
  negativeChoice = [followupCopy negativeChoice];
  v46[1] = negativeChoice;
  v34 = followupCopy;
  positiveChoice = [followupCopy positiveChoice];
  v46[2] = positiveChoice;
  v36 = [NSArray arrayWithObjects:v46 count:3];

  v33 = controllerCopy;
  tableView = [controllerCopy tableView];
  v16 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v17 = 2;
  do
  {
    v18 = [v36 objectAtIndex:v17];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002BFA8;
    v37[3] = &unk_1000DF540;
    v19 = tableView;
    v38 = v19;
    v20 = pathCopy;
    v39 = v20;
    v21 = completionCopy;
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

  popoverPresentationController = [v16 popoverPresentationController];
  tableView2 = [v33 tableView];
  v32 = [tableView2 cellForRowAtIndexPath:v26];

  [popoverPresentationController setSourceView:v32];
  [v32 bounds];
  [popoverPresentationController setSourceRect:?];
  [popoverPresentationController setPermittedArrowDirections:15];
  [v33 presentViewController:v29 animated:1 completion:&stru_1000DF560];
}

@end