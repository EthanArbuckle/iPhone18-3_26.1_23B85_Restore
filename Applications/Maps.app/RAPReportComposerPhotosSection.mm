@interface RAPReportComposerPhotosSection
- (RAPReportComposerPhotosSection)initWithQuestion:(id)a3;
- (id)cellForRowAtIndex:(int64_t)a3;
- (id)headerTitle;
- (void)_startPickingPhotoFromView:(id)a3 sourceType:(int64_t)a4;
- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3 forSourceType:(int64_t)a4;
@end

@implementation RAPReportComposerPhotosSection

- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5
{
  question = self->_question;
  v7 = a5;
  v7[2](v7, [(RAPCommentQuestion *)question removePhotoForIdentifier:a4]);
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3 forSourceType:(int64_t)a4
{
  v6 = a3;
  picker = self->_picker;
  if (!picker)
  {
    v8 = [RAPPhotoPickerController alloc];
    v9 = [(RAPCommentQuestion *)self->_question photos];
    v10 = [v9 firstObject];
    v11 = [(RAPPhotoPickerController *)v8 initWithInitialPhoto:v10];
    v12 = self->_picker;
    self->_picker = v11;

    v13 = self->_carouselViewModel;
    v14 = self->_question;
    v15 = self->_picker;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100D16110;
    v22 = &unk_101651618;
    v23 = v14;
    v24 = v13;
    v16 = v13;
    v17 = v14;
    [(RAPPhotoPickerController *)v15 addObserver:self changeHandler:&v19];

    picker = self->_picker;
  }

  [(RAPPhotoPickerController *)picker clearSelectedPhoto:v19];
  v18 = [v6 anchoringView];
  [(RAPReportComposerPhotosSection *)self _startPickingPhotoFromView:v18 sourceType:a4];
}

- (void)_startPickingPhotoFromView:(id)a3 sourceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(RAPTablePartSection *)self presentingViewController];
  [(RAPPhotoPickerController *)self->_picker setPresentingViewController:v7];

  [(RAPPhotoPickerController *)self->_picker setAnchoringView:v6];
  picker = self->_picker;

  [(RAPPhotoPickerController *)picker startPickingWithSourceType:a4];
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v4 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"PhotoCell"];
  if (!v4)
  {
    v4 = [[RAPPhotoCarouselTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PhotoCell"];
    [(RAPPhotoCarouselTableViewCell *)v4 setPhotoCarouselController:self->_carouselViewModel];
    v5 = [(RAPTablePartSection *)self presentingViewController];
    [(UGCPhotoCarouselController *)self->_carouselViewModel setPresentingViewController:v5];
  }

  return v4;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Photos [Add Photos Section]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPReportComposerPhotosSection)initWithQuestion:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = RAPReportComposerPhotosSection;
  v6 = [(RAPTablePartSection *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v22 = v5;
    objc_storeStrong(&v6->_question, a3);
    v8 = [[UGCPhotoCarouselController alloc] initWithDelegate:v7 maximumNumberOfPhotos:[(RAPCommentQuestion *)v7->_question maximumNumberOfPhotos] prefersMenu:1];
    carouselViewModel = v7->_carouselViewModel;
    v7->_carouselViewModel = v8;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(RAPCommentQuestion *)v7->_question photos];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = v7->_carouselViewModel;
          v17 = [v15 photo];
          v18 = [v15 _maps_diffableDataSourceIdentifier];
          [(UGCPhotoCarouselController *)v16 addImage:v17 forIdentifier:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v5 = v22;
    if ([(RAPCommentQuestion *)v7->_question emphasis]== 1)
    {
      v19 = [v22 localizedPhotosPickerLabel];
      [(RAPTablePartSection *)v7 setHeaderTitle:v19];
    }

    v20 = [v22 localizedPhotosPickerExplanation];
    [(RAPTablePartSection *)v7 setFooterTitle:v20];
  }

  return v7;
}

@end