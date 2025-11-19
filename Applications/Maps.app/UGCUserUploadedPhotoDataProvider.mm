@interface UGCUserUploadedPhotoDataProvider
- (BOOL)hasDataToShow;
- (NSArray)photoList;
- (UGCPhotoAlbumCategory)albumCategory;
- (UGCUserUploadedPhotoDataProvider)initWithLookupResult:(id)a3 delegate:(id)a4;
- (unint64_t)totalNumberOfPhotos;
- (void)_setupPhotos;
- (void)fetchNextBatchRequestIfNeeded;
@end

@implementation UGCUserUploadedPhotoDataProvider

- (unint64_t)totalNumberOfPhotos
{
  v2 = [(UGCUserUploadedPhotoDataProvider *)self photoList];
  v3 = [v2 count];

  return v3;
}

- (UGCPhotoAlbumCategory)albumCategory
{
  v2 = [UGCPhotoAlbumCategory alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Your Photos Header [UGC]" value:@"localized string not found" table:0];
  v5 = [(UGCPhotoAlbumCategory *)v2 initWithTitle:v4 categoryType:2];

  return v5;
}

- (NSArray)photoList
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100EA7B0C;
  v11 = sub_100EA7B1C;
  v12 = 0;
  userSubmittedPhotosResult = self->_userSubmittedPhotosResult;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EA7B24;
  v6[3] = &unk_10165E808;
  v6[4] = &v7;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100EA7B34;
  v5[3] = &unk_10165E590;
  v5[4] = &v7;
  [userSubmittedPhotosResult withValue:v6 orError:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)_setupPhotos
{
  v3 = [(UGCSubmissionLookupResult *)self->_lookupResult previousSubmission];
  v4 = [v3 images];
  v9 = sub_100021DB0(v4, &stru_1016576C0);

  if ([v9 count])
  {
    v5 = [Result resultWithValue:v9];
    userSubmittedPhotosResult = self->_userSubmittedPhotosResult;
    self->_userSubmittedPhotosResult = v5;
  }

  else
  {
    userSubmittedPhotosResult = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
    v7 = [Result resultWithError:userSubmittedPhotosResult];
    v8 = self->_userSubmittedPhotosResult;
    self->_userSubmittedPhotosResult = v7;
  }
}

- (void)fetchNextBatchRequestIfNeeded
{
  if (!self->_hasNotifiedDelegate)
  {
    v3 = [(UGCPhotoViewerDataProvider *)self delegate];

    if (v3)
    {
      v4 = [(UGCPhotoViewerDataProvider *)self delegate];
      v5 = [(UGCUserUploadedPhotoDataProvider *)self photoList];
      [v4 photoViewerDataProvider:self didUpdateWithPhotos:v5];

      self->_hasNotifiedDelegate = 1;
    }
  }
}

- (BOOL)hasDataToShow
{
  v2 = [(UGCUserUploadedPhotoDataProvider *)self photoList];
  v3 = [v2 count] != 0;

  return v3;
}

- (UGCUserUploadedPhotoDataProvider)initWithLookupResult:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UGCUserUploadedPhotoDataProvider;
  v9 = [(UGCUserUploadedPhotoDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lookupResult, a3);
    [(UGCPhotoViewerDataProvider *)v10 setDelegate:v8];
    [(UGCUserUploadedPhotoDataProvider *)v10 _setupPhotos];
  }

  return v10;
}

@end