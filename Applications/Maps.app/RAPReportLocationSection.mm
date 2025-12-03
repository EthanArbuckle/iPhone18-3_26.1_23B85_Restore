@interface RAPReportLocationSection
- (NSData)imageDataOfMapAndInstructionsCell;
- (RAPReportLocationSection)initWithQuestion:(id)question;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)headerTitle;
- (void)registerReuseIdentifiersForCells;
@end

@implementation RAPReportLocationSection

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Information [RAP]" value:@"localized string not found" table:0];

  return v3;
}

- (id)cellForRowAtIndex:(int64_t)index
{
  if (index == 1)
  {
    listItem = [(RAPInstructionCorrectionQuestion *)self->_question listItem];

    provider = self->_provider;
    tableView = [(RAPTablePartSection *)self tableView];
    question = self->_question;
    if (listItem)
    {
      listItem2 = [(RAPInstructionCorrectionQuestion *)question listItem];
      v19 = [(RAPInstructionDetailRouteCellProvider *)provider transitDirectionsCellForTableView:tableView item:listItem2];
      instructionCell = self->_instructionCell;
      self->_instructionCell = v19;

      tableView = [(RAPTablePartSection *)self tableView];
      [tableView bounds];
      [(UITableViewCell *)self->_instructionCell setSeparatorInset:0.0, 0.0, 0.0, CGRectGetWidth(v27)];
    }

    else
    {
      composedRouteStep = [(RAPInstructionCorrectionQuestion *)question composedRouteStep];
      v23 = [(RAPInstructionDetailRouteCellProvider *)provider directionStepCellForTableView:tableView step:composedRouteStep];
      v24 = self->_instructionCell;
      self->_instructionCell = v23;
    }

    p_instructionCell = &self->_instructionCell;
    goto LABEL_10;
  }

  if (index)
  {
    v21 = 0;
    goto LABEL_12;
  }

  tableView2 = [(RAPTablePartSection *)self tableView];
  v5 = [tableView2 dequeueReusableCellWithIdentifier:@"RAPRouteStepMapViewCell"];
  p_instructionCell = &self->_mapViewCell;
  mapViewCell = self->_mapViewCell;
  self->_mapViewCell = v5;

  v8 = self->_mapViewCell;
  if (!v8)
  {
    v9 = [RAPRouteStepMapViewCell alloc];
    route = self->_route;
    composedRouteStep2 = [(RAPInstructionCorrectionQuestion *)self->_question composedRouteStep];
    v12 = [(RAPRouteStepMapViewCell *)v9 initWithIdentifier:@"RAPRouteStepMapViewCell" route:route routeStep:composedRouteStep2];
    v13 = *p_instructionCell;
    *p_instructionCell = v12;

LABEL_10:
    v8 = *p_instructionCell;
  }

  v21 = v8;
LABEL_12:

  return v21;
}

- (NSData)imageDataOfMapAndInstructionsCell
{
  [(RAPRouteStepMapViewCell *)self->_mapViewCell bounds];
  v4 = v3;
  [(RAPRouteStepMapViewCell *)self->_mapViewCell bounds];
  v6 = v5;
  [(UITableViewCell *)self->_instructionCell bounds];
  v16.height = v7 + v6;
  v16.width = v4;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [(RAPRouteStepMapViewCell *)self->_mapViewCell layer];
  [layer renderInContext:CurrentContext];

  [(RAPRouteStepMapViewCell *)self->_mapViewCell bounds];
  CGContextTranslateCTM(CurrentContext, 0.0, v10);
  layer2 = [(UITableViewCell *)self->_instructionCell layer];
  [layer2 renderInContext:CurrentContext];

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v13 = UIImagePNGRepresentation(v12);

  return v13;
}

- (void)registerReuseIdentifiersForCells
{
  provider = self->_provider;
  tableView = [(RAPTablePartSection *)self tableView];
  [(RAPInstructionDetailRouteCellProvider *)provider registerCellsForTableView:tableView];
}

- (RAPReportLocationSection)initWithQuestion:(id)question
{
  questionCopy = question;
  v22.receiver = self;
  v22.super_class = RAPReportLocationSection;
  v6 = [(RAPTablePartSection *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, question);
    parentQuestion = [(RAPQuestion *)v7->_question parentQuestion];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = parentQuestion;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      parentQuestion2 = [v10 parentQuestion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = parentQuestion2;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      parentQuestion3 = [v13 parentQuestion];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = parentQuestion3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        routeFromRecording = [v16 routeFromRecording];
        route = v7->_route;
        v7->_route = routeFromRecording;

        v19 = [[RAPInstructionDetailRouteCellProvider alloc] initWithRoute:v7->_route];
        provider = v7->_provider;
        v7->_provider = v19;
      }
    }
  }

  return v7;
}

@end