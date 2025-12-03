@interface PhotosURLRedirectRequest
- (BOOL)_checkAndAlertSubscribedStreamsLimitReached;
- (PhotosURLRedirectRequest)initWithDestinationURL:(id)l rootController:(id)controller;
- (void)_navigateToSharedAlbumActivityFeed;
- (void)_showAlertForError:(unint64_t)error;
- (void)performRequest;
@end

@implementation PhotosURLRedirectRequest

- (void)performRequest
{
  if (!PLIsLockdownMode())
  {
    v3 = +[PLPhotoSharingHelper sharingPersonID];
    v4 = +[PLAccountStore pl_sharedAccountStore];
    cachedPrimaryAppleAccount = [v4 cachedPrimaryAppleAccount];

    if (cachedPrimaryAppleAccount)
    {
      v6 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
      photoLibraryURL = [v6 photoLibraryURL];
      v8 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:photoLibraryURL];

      if (v8)
      {
        if ([v3 length])
        {
          if ([(PhotosURLRedirectRequest *)self _checkAndAlertSubscribedStreamsLimitReached])
          {
            [(PhotosURLRedirectRequest *)self _navigateToSharedAlbumActivityFeed];
          }

          else
          {
            v12 = +[MSASConnection sharedConnection];
            invitationToken = self->_invitationToken;
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_100039810;
            v15[3] = &unk_10005C1B8;
            v15[4] = self;
            [v12 acceptInvitationWithToken:invitationToken personID:v3 completionBlock:v15];
          }
        }

        else
        {
          v11 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "ERROR: Failed to subscribe to shared stream because the personID was nil", v14, 2u);
          }
        }

        goto LABEL_13;
      }

      selfCopy2 = self;
      v10 = 2;
    }

    else
    {
      selfCopy2 = self;
      v10 = 1;
    }

    [(PhotosURLRedirectRequest *)selfCopy2 _showAlertForError:v10];
LABEL_13:

    return;
  }

  [(PhotosURLRedirectRequest *)self _showAlertForError:0];
}

- (BOOL)_checkAndAlertSubscribedStreamsLimitReached
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  v3 = [PLPhotoSharingHelper hasReachedLimitOfSubscribedStreamsInLibrary:v2];

  if (v3)
  {
    v4 = PLServicesLocalizedFrameworkString();
    v5 = PLServicesLocalizedFrameworkString();
    v13 = +[PLPhotoSharingHelper maxSubscribedStreams];
    v6 = PFLocalizedStringWithValidatedFormat();

    v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1, v13];
    v8 = PLLocalizedFrameworkString();
    v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
    [v7 addAction:v9];

    v10 = +[UIApplication sharedApplication];
    px_firstKeyWindow = [v10 px_firstKeyWindow];
    [px_firstKeyWindow pl_presentViewController:v7 animated:1];
  }

  return v3;
}

- (void)_navigateToSharedAlbumActivityFeed
{
  v3 = [[PXProgrammaticNavigationDestination alloc] initWithType:20 revealMode:3];
  if (([(PXProgrammaticNavigationParticipant *)self->_rootController routingOptionsForDestination:v3]& 1) != 0)
  {
    rootController = self->_rootController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100039CC0;
    v7[3] = &unk_10005C168;
    v8 = v3;
    [(PXProgrammaticNavigationParticipant *)rootController navigateToDestination:v8 options:0 completionHandler:v7];
    v4 = v8;
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      publicDescription = [v3 publicDescription];
      *buf = 138543362;
      v10 = publicDescription;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to programmatically navigate to %{public}@", buf, 0xCu);
    }
  }
}

- (void)_showAlertForError:(unint64_t)error
{
  if (error > 1)
  {
    if (error != 2)
    {
      if (error == 3)
      {
        v5 = PLLocalizedFrameworkString();
        v19 = PLLocalizedFrameworkString();
        v6 = [UIAlertController alertControllerWithTitle:v5 message:v19 preferredStyle:1];

        goto LABEL_12;
      }

      if (error == 4)
      {
        v5 = PLLocalizedFrameworkString();
        v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];
LABEL_12:

        v11 = PLLocalizedFrameworkString();
        v17 = v11;
        v18 = 1;
        v12 = 0;
        goto LABEL_13;
      }

LABEL_18:
      v33 = +[NSAssertionHandler currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"PhotosURLRedirectRequest.m" lineNumber:128 description:@"Unknown Request Error"];

      v6 = 0;
      goto LABEL_14;
    }

    v13 = PLLocalizedFrameworkString();
    v14 = PLLocalizedFrameworkString();
    v6 = [UIAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    v15 = PLLocalizedFrameworkString();
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v6 addAction:v16];

    v11 = PLLocalizedFrameworkString();
    v12 = &stru_10005C118;
LABEL_10:
    v17 = v11;
    v18 = 0;
LABEL_13:
    v20 = [UIAlertAction actionWithTitle:v17 style:v18 handler:v12];
    [v6 addAction:v20];

    goto LABEL_14;
  }

  if (error)
  {
    if (error != 1)
    {
      goto LABEL_18;
    }

    v7 = PLLocalizedFrameworkString();
    v8 = PLLocalizedFrameworkString();
    v6 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v9 = PLLocalizedFrameworkString();
    v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
    [v6 addAction:v10];

    v11 = PLLocalizedFrameworkString();
    v12 = &stru_10005C0F8;
    goto LABEL_10;
  }

  v23 = PXLocalizedString();
  v24 = PXLocalizedString();
  invitationToken = self->_invitationToken;
  v38 = 0;
  v39 = 0;
  v26 = PXSharedAlbumURLHandlingParseInvitationToken();
  v27 = 0;
  v28 = 0;
  if (v26)
  {
    v29 = PXLocalizedString();
    v34 = v27;
    v35 = v28;
    v30 = PXLocalizedStringWithValidatedFormat();

    v24 = v30;
  }

  v6 = [UIAlertController alertControllerWithTitle:v23 message:v24 preferredStyle:1, v34, v35];
  v31 = PLLocalizedFrameworkString();
  v32 = [UIAlertAction actionWithTitle:v31 style:1 handler:0];
  [v6 addAction:v32];

LABEL_14:
  v21 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A2F4;
  block[3] = &unk_10005C140;
  v37 = v6;
  v22 = v6;
  dispatch_after(v21, &_dispatch_main_q, block);
}

- (PhotosURLRedirectRequest)initWithDestinationURL:(id)l rootController:(id)controller
{
  lCopy = l;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (lCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PhotosURLRedirectRequest.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"URL"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PhotosURLRedirectRequest.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"rootController"}];

LABEL_3:
  v10 = PXSharedAlbumURLHandlingInvitationTokenForURL();
  if (v10)
  {
    v19.receiver = self;
    v19.super_class = PhotosURLRedirectRequest;
    v11 = [(PhotosURLRedirectRequest *)&v19 init];
    if (v11)
    {
      v12 = [v10 copy];
      invitationToken = v11->_invitationToken;
      v11->_invitationToken = v12;

      objc_storeStrong(&v11->_rootController, controller);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid URL: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end