@interface RAPReportComposerPhotosSection
- (RAPReportComposerPhotosSection)initWithQuestion:(id)question;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)headerTitle;
- (void)_startPickingPhotoFromView:(id)view sourceType:(int64_t)type;
- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo forSourceType:(int64_t)type;
@end

@implementation RAPReportComposerPhotosSection

- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion
{
  question = self->_question;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(RAPCommentQuestion *)question removePhotoForIdentifier:identifier]);
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo forSourceType:(int64_t)type
{
  photoCopy = photo;
  picker = self->_picker;
  if (!picker)
  {
    v8 = [RAPPhotoPickerController alloc];
    photos = [(RAPCommentQuestion *)self->_question photos];
    firstObject = [photos firstObject];
    v11 = [(RAPPhotoPickerController *)v8 initWithInitialPhoto:firstObject];
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
  anchoringView = [photoCopy anchoringView];
  [(RAPReportComposerPhotosSection *)self _startPickingPhotoFromView:anchoringView sourceType:type];
}

- (void)_startPickingPhotoFromView:(id)view sourceType:(int64_t)type
{
  viewCopy = view;
  presentingViewController = [(RAPTablePartSection *)self presentingViewController];
  [(RAPPhotoPickerController *)self->_picker setPresentingViewController:presentingViewController];

  [(RAPPhotoPickerController *)self->_picker setAnchoringView:viewCopy];
  picker = self->_picker;

  [(RAPPhotoPickerController *)picker startPickingWithSourceType:type];
}

- (id)cellForRowAtIndex:(int64_t)index
{
  v4 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"PhotoCell"];
  if (!v4)
  {
    v4 = [[RAPPhotoCarouselTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PhotoCell"];
    [(RAPPhotoCarouselTableViewCell *)v4 setPhotoCarouselController:self->_carouselViewModel];
    presentingViewController = [(RAPTablePartSection *)self presentingViewController];
    [(UGCPhotoCarouselController *)self->_carouselViewModel setPresentingViewController:presentingViewController];
  }

  return v4;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Photos [Add Photos Section]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPReportComposerPhotosSection)initWithQuestion:(id)question
{
  questionCopy = question;
  v27.receiver = self;
  v27.super_class = RAPReportComposerPhotosSection;
  v6 = [(RAPTablePartSection *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v22 = questionCopy;
    objc_storeStrong(&v6->_question, question);
    v8 = [[UGCPhotoCarouselController alloc] initWithDelegate:v7 maximumNumberOfPhotos:[(RAPCommentQuestion *)v7->_question maximumNumberOfPhotos] prefersMenu:1];
    carouselViewModel = v7->_carouselViewModel;
    v7->_carouselViewModel = v8;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    photos = [(RAPCommentQuestion *)v7->_question photos];
    v11 = [photos countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(photos);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = v7->_carouselViewModel;
          photo = [v15 photo];
          _maps_diffableDataSourceIdentifier = [v15 _maps_diffableDataSourceIdentifier];
          [(UGCPhotoCarouselController *)v16 addImage:photo forIdentifier:_maps_diffableDataSourceIdentifier];
        }

        v12 = [photos countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    questionCopy = v22;
    if ([(RAPCommentQuestion *)v7->_question emphasis]== 1)
    {
      localizedPhotosPickerLabel = [v22 localizedPhotosPickerLabel];
      [(RAPTablePartSection *)v7 setHeaderTitle:localizedPhotosPickerLabel];
    }

    localizedPhotosPickerExplanation = [v22 localizedPhotosPickerExplanation];
    [(RAPTablePartSection *)v7 setFooterTitle:localizedPhotosPickerExplanation];
  }

  return v7;
}

@end