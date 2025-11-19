void sub_1450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1490(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_14A8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_2574(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained fetchInProgress])
  {
    v41 = NSLocalizedDescriptionKey;
    v42 = @"fetch already in progress resource";
    v3 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v4 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    [WeakRetained setFetchInProgress:1];
    v7 = [WeakRetained sharedResources];
    [v7 removeAllObjects];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [WeakRetained eventStore];
    v9 = [v8 sourcesEnabledForEntityType:0];

    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          if (([v13 isDelegate] & 1) == 0 && objc_msgSend(v13, "sourceType") == &dword_0 + 2 && objc_msgSend(v13, "supportsDelegation"))
          {
            dispatch_group_enter(*(a1 + 32));
            v14 = [WeakRetained eventStore];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_29A4;
            v30[3] = &unk_82B8;
            v31 = *(a1 + 40);
            objc_copyWeak(&v34, (a1 + 56));
            v32 = v13;
            v33 = *(a1 + 32);
            [v14 fetchGrantedDelegatesForSource:v13 results:v30];

            objc_destroyWeak(&v34);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [WeakRetained eventStore];
    v3 = [v15 calendarsForEntityType:0];

    v16 = [v3 countByEnumeratingWithState:&v26 objects:v39 count:16];
    if (v16)
    {
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v3);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [v19 source];
          v21 = [v20 isDelegate];

          if ((v21 & 1) == 0)
          {
            if (([v19 sharingStatus] == &dword_0 + 2 || objc_msgSend(v19, "sharingStatus") == &dword_0 + 1) && (objc_msgSend(v19, "sharees"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count") == 0, v22, !v23) || objc_msgSend(v19, "isPublished"))
            {
              v24 = [[CalendarSeparationSharedCalendar alloc] initWithCalendar:v19];
              v25 = [WeakRetained sharedResources];
              [v25 addObject:v24];
            }
          }
        }

        v16 = [v3 countByEnumeratingWithState:&v26 objects:v39 count:16];
      }

      while (v16);
    }
  }
}

void sub_29A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2A70;
  v8[3] = &unk_8290;
  objc_copyWeak(&v12, (a1 + 56));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);

  objc_destroyWeak(&v12);
}

void sub_2A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([*(a1 + 32) count])
  {
    v2 = [[CalendarSeparationSharedAccount alloc] initWithSource:*(a1 + 40) andDelegates:*(a1 + 32)];
    v3 = [WeakRetained sharedResources];
    [v3 addObject:v2];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_2B0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  if (*(*(*(v4 + 8) + 8) + 40))
  {
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v5 = [WeakRetained sharedResources];
    (*(v3 + 16))(v3, v5, 0);
  }

  [v6 setFetchInProgress:0];
}

void sub_2DB4(uint64_t a1)
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_2574;
  v31[4] = sub_2584;
  v32 = 0;
  v2 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [*(a1 + 32) sharedResources];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v4)
  {
    v5 = *v28;
    v15 = v20;
    obj = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [v7 participants];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          v10 = *v24;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v8);
              }

              if ([*(*(&v23 + 1) + 8 * j) matchesDSParticipation:*(a1 + 40)])
              {
                dispatch_group_enter(v2);
                v12 = *(a1 + 40);
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v20[0] = sub_30E0;
                v20[1] = &unk_8330;
                v22 = v31;
                v21 = v2;
                [v7 stopSharingWithParticipant:v12 completion:v19];

                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3148;
  block[3] = &unk_8268;
  v13 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = v31;
  dispatch_group_notify(v2, v13, block);

  _Block_object_dispose(v31, 8);
}

void sub_30E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_3224(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_2574;
  v20[4] = sub_2584;
  v21 = 0;
  v2 = dispatch_group_create();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) sharedResources];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  v9 = a1;
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        dispatch_group_enter(v2);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_3494;
        v13[3] = &unk_8330;
        v15 = v20;
        v14 = v2;
        [v7 stopSharingWithCompletion:v13];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_34FC;
  block[3] = &unk_8268;
  v8 = *(v9 + 40);
  v11 = *(v9 + 48);
  v12 = v20;
  dispatch_group_notify(v2, v8, block);

  _Block_object_dispose(v20, 8);
}

void sub_3494(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}