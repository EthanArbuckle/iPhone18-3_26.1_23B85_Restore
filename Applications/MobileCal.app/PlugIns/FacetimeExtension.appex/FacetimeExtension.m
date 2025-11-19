void sub_100000FD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 URL];

  if (v7)
  {
    v8 = [EKVirtualConferenceURLDescriptor alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"FaceTime" value:&stru_100004278 table:0];
    v11 = [v5 URL];
    v12 = [v8 initWithTitle:v10 URL:v11];

    v13 = [EKVirtualConferenceDescriptor alloc];
    v16 = v12;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
    v15 = [v13 initWithTitle:0 URLDescriptors:v14 conferenceDetails:0];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000128C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v5 = [NSError errorWithDomain:EKVirtualConferenceProviderErrorDomain code:4 userInfo:0];
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

void sub_100001408(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && ([v5 isLocallyCreated] & 1) != 0)
  {
    v8 = [a1[4] _conversationManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001530;
    v11[3] = &unk_1000041C8;
    v9 = a1[5];
    v10 = a1[4];
    v12 = v9;
    v13 = v10;
    v14 = v5;
    v15 = a1[6];
    [v8 checkLinkValidity:v14 completionHandler:v11];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_100001530(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !a2)
  {
    if (!a2)
    {
      v10 = v8;
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_9:
    v14 = [*(a1 + 40) _conversationManager];
    v15 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001730;
    v17[3] = &unk_1000041A0;
    v16 = *(a1 + 48);
    v18 = *(a1 + 56);
    [v14 renewLink:v16 expirationDate:v15 reason:1 completionHandler:v17];

    v10 = v18;
    goto LABEL_10;
  }

  if ([v7 compare:*(a1 + 32)] == -1)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (v10 || (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v19 = NSLocalizedDescriptionKey;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"URL is invalid value:possibly expired. Unable to renew." table:{&stru_100004278, 0}];
  v20 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v10 = [NSError errorWithDomain:EKVirtualConferenceProviderErrorDomain code:5 userInfo:v13];

LABEL_7:
  (*(*(a1 + 56) + 16))();
LABEL_10:
}

void sub_100001958(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [*(a1 + 32) __findFullLinkForLink:*(a1 + 40) completion:*(a1 + 48)];
  }
}