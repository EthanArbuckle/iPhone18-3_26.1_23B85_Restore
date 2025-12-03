@interface RAPPlaceMenuQuestion
- (MKMapItem)snippetMapItem;
- (RAPPlaceMenuQuestion)initWithReport:(id)report parentQuestion:(id)question reportedPlace:(id)place;
- (id)_alternateMapViewContext;
- (id)followUpQuestionForCategory:(int64_t)category;
- (id)mainMenuItems;
- (int64_t)snippetStyle;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPPlaceMenuQuestion

- (id)followUpQuestionForCategory:(int64_t)category
{
  if (category == 9)
  {
    v4 = off_1015F6540;
    goto LABEL_5;
  }

  if (category == 1)
  {
    v4 = off_1015F6548;
LABEL_5:
    v5 = objc_alloc(*v4);
    report = [(RAPQuestion *)self report];
    v7 = [v5 initWithReport:report parentQuestion:self];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (MKMapItem)snippetMapItem
{
  reportedPlace = [(RAPPlaceMenuQuestion *)self reportedPlace];
  mapItem = [reportedPlace mapItem];

  return mapItem;
}

- (int64_t)snippetStyle
{
  reportedPlace = [(RAPPlaceMenuQuestion *)self reportedPlace];

  return reportedPlace != 0;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v6];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:1];

  v8.receiver = self;
  v8.super_class = RAPPlaceMenuQuestion;
  [(RAPMenuQuestion *)&v8 _fillSubmissionParameters:parametersCopy];
}

- (id)_alternateMapViewContext
{
  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  _alternateMapViewContext = [selectedMenuItem _alternateMapViewContext];

  return _alternateMapViewContext;
}

- (id)mainMenuItems
{
  mainMenuItems = self->super._mainMenuItems;
  if (!mainMenuItems)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [v4 copy];
    v6 = self->super._mainMenuItems;
    self->super._mainMenuItems = v5;

    mainMenuItems = self->super._mainMenuItems;
  }

  return mainMenuItems;
}

- (RAPPlaceMenuQuestion)initWithReport:(id)report parentQuestion:(id)question reportedPlace:(id)place
{
  placeCopy = place;
  v13.receiver = self;
  v13.super_class = RAPPlaceMenuQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:question];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedPlace, place);
  }

  return v11;
}

@end