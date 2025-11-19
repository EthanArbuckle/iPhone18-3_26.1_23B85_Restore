uint64_t sub_1194(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_124C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = dispatch_group_create();
  v4 = [NSMutableArray arrayWithCapacity:2];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dispatch_group_enter(v3);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_148C;
        v18[3] = &unk_8258;
        v19 = v4;
        v20 = v3;
        [v10 stopSharingWithCompletion:v18];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14D0;
  block[3] = &unk_8280;
  v12 = *(a1 + 32);
  v16 = v4;
  v17 = v12;
  v13 = v4;
  dispatch_group_notify(v3, v11, block);
}

void sub_148C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_14D0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ([*(a1 + 32) count])
    {
      v5[0] = NSLocalizedDescriptionKey;
      v5[1] = NSMultipleUnderlyingErrorsKey;
      v2 = *(a1 + 32);
      v6[0] = @"Failed to stop sharing to all participants and resources";
      v6[1] = v2;
      v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
      v4 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:8 userInfo:v3];
    }

    else
    {
      v4 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_16A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1750(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3)
    {
      v7[0] = NSLocalizedDescriptionKey;
      v7[1] = NSUnderlyingErrorKey;
      v8[0] = @"Failed to stop sharing specified participants";
      v8[1] = v3;
      v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
      v6 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:1 userInfo:v5];

      v4 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(v4, v6);
  }
}

void sub_2144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3)
    {
      v7[0] = NSLocalizedDescriptionKey;
      v7[1] = NSUnderlyingErrorKey;
      v8[0] = @"Failed to stop sharing library";
      v8[1] = v3;
      v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
      v6 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:4 userInfo:v5];

      v4 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(v4, v6);
  }
}

void sub_2E80(uint64_t a1)
{
  v2 = [PHCloudSharedAlbumChangeRequest changeRequestForCloudSharedAlbum:*(*(a1 + 32) + 24)];
  [v2 setIsPublic:*(a1 + 40) == 2];
}

void sub_30F0(uint64_t a1)
{
  v2 = [PHCloudSharedAlbumChangeRequest changeRequestForCloudSharedAlbum:*(*(a1 + 32) + 24)];
  v3 = [*(a1 + 40) representedObject];

  if (v3)
  {
    v4 = [*(a1 + 40) representedObject];
    v6 = v4;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [v2 removeCloudSharedAlbumInvitationRecords:v5];
  }
}

void sub_33F0(uint64_t a1)
{
  v1 = [PHCloudSharedAlbumChangeRequest changeRequestForCloudSharedAlbum:*(*(a1 + 32) + 24)];
  [v1 setIsPublic:0];
  [v1 stopSharing];
}

void sub_3FAC(uint64_t a1)
{
  v2 = [PHCollectionShareChangeRequest changeRequestForCollectionShare:*(*(a1 + 32) + 24)];
  v4 = v2;
  if (*(a1 + 40) == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setPublicURLState:v3];
}

void sub_4220(uint64_t a1)
{
  v2 = [PHCollectionShareChangeRequest changeRequestForCollectionShare:*(*(a1 + 32) + 24)];
  v3 = [*(a1 + 40) representedObject];
  v4 = v3;
  if (v3 && [v3 role] != 1)
  {
    v6 = v4;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [v2 stopSharingWithParticipants:v5];
  }
}

void sub_4318(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v1 = [NSArray arrayWithObjects:&v2 count:1];
  [PHCollectionShareChangeRequest unsubscribeCollectionShares:v1];
}

void sub_4578(uint64_t a1)
{
  v2 = [*(a1 + 32) participants];
  v4 = [v2 _pl_map:&stru_8378];

  v3 = [PHCollectionShareChangeRequest changeRequestForCollectionShare:*(*(a1 + 32) + 24)];
  [v3 setPublicURLState:1];
  [v3 stopSharingWithParticipants:v4];
}

void sub_4634(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v1 = [NSArray arrayWithObjects:&v2 count:1];
  [PHCollectionShareChangeRequest unsubscribeCollectionShares:v1];
}

id sub_46E8(id a1, PhotosSeparationCollectionShareParticipant *a2)
{
  v2 = a2;
  v3 = [(PhotosSeparationCollectionShareParticipant *)v2 representedObject];
  if ([v3 role] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PhotosSeparationCollectionShareParticipant *)v2 representedObject];
  }

  return v4;
}