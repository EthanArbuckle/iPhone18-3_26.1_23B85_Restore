@interface RAPPlaceMenuQuestion
- (MKMapItem)snippetMapItem;
- (RAPPlaceMenuQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 reportedPlace:(id)a5;
- (id)_alternateMapViewContext;
- (id)followUpQuestionForCategory:(int64_t)a3;
- (id)mainMenuItems;
- (int64_t)snippetStyle;
- (void)_fillSubmissionParameters:(id)a3;
@end

@implementation RAPPlaceMenuQuestion

- (id)followUpQuestionForCategory:(int64_t)a3
{
  if (a3 == 9)
  {
    v4 = off_1015F6540;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = off_1015F6548;
LABEL_5:
    v5 = objc_alloc(*v4);
    v6 = [(RAPQuestion *)self report];
    v7 = [v5 initWithReport:v6 parentQuestion:self];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (MKMapItem)snippetMapItem
{
  v2 = [(RAPPlaceMenuQuestion *)self reportedPlace];
  v3 = [v2 mapItem];

  return v3;
}

- (int64_t)snippetStyle
{
  v2 = [(RAPPlaceMenuQuestion *)self reportedPlace];

  return v2 != 0;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v4 setCommonContext:v6];
  }

  v7 = [v4 commonContext];
  [v7 addUserPath:1];

  v8.receiver = self;
  v8.super_class = RAPPlaceMenuQuestion;
  [(RAPMenuQuestion *)&v8 _fillSubmissionParameters:v4];
}

- (id)_alternateMapViewContext
{
  v2 = [(RAPMenuQuestion *)self selectedMenuItem];
  v3 = [v2 _alternateMapViewContext];

  return v3;
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

- (RAPPlaceMenuQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 reportedPlace:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RAPPlaceMenuQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedPlace, a5);
  }

  return v11;
}

@end