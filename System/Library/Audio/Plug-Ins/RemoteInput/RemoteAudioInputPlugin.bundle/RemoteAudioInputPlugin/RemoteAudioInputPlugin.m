void sub_D5C(id a1)
{
  qword_CF68 = objc_alloc_init(MRAPRecordingEndpoint);

  _objc_release_x1();
}

uint64_t sub_F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_F7C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v10 + 1) + 8 * v7))
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v2;
}

void sub_11E0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v10 + 1) + 8 * v8) == *(a1 + 40))
        {
          v7 = v9;
        }

        ++v9;
        v8 = v8 + 1;
      }

      while (v4 != v8);
      v5 += v4;
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 32) + 16) removePointerAtIndex:{v7, v10}];
      [*(*(a1 + 32) + 16) compact];
    }
  }

  else
  {
  }
}

uint64_t sub_13A4(uint64_t a1)
{
  v2 = [[NSPointerArray alloc] initWithOptions:5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

uint64_t sub_21F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2208(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_2338(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_2630(uint64_t a1, void *a2)
{
  v23 = objc_alloc_init(NSMutableOrderedSet);
  v4 = [[NSMutableOrderedSet alloc] initWithArray:*(*(a1 + 32) + 8)];
  v22 = [[NSMutableOrderedSet alloc] initWithArray:*(*(a1 + 32) + 8)];
  v5 = a2;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v5 count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Loaded %lu devices", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_2968;
        v28[3] = &unk_8340;
        v28[4] = v12;
        v13 = [v4 indexOfObjectPassingTest:v28];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [[MRAPInputDevice alloc] initWithInputDevice:v12];
          [v23 addObject:v14];
        }

        else
        {
          [v4 removeObjectAtIndex:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  [v22 minusOrderedSet:v4];
  [v22 unionOrderedSet:v23];
  v15 = [v22 array];
  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  *(v16 + 8) = v15;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  if (WeakRetained)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_29A4;
    block[3] = &unk_8368;
    v20 = v4;
    v21 = *(a1 + 32);
    v25 = v20;
    v26 = v21;
    v27 = v23;
    dispatch_async(v19, block);
  }
}

BOOL sub_2968(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRemoteDeviceID];
  v4 = *(a1 + 32);
  return v3 == MRVirtualVoiceInputDeviceGetUniqueIdentifier();
}

void sub_29A4(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
        [WeakRetained inputPlugin:*(a1 + 40) didUnpublishDevice:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = objc_loadWeakRetained((*(a1 + 40) + 24));
        [v15 inputPlugin:*(a1 + 40) didPublishDevice:{v14, v16}];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

void sub_2C54(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 mediaRemoteDeviceID] == *(a1 + 48))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_2F50(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[RecordingEndpoint] Device with ID %{public}u connected", v2, 8u);
}

void sub_2FC8(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[RecordingEndpoint] Device with ID %{public}u disconnected", v2, 8u);
}

void sub_3040(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[AudioPluginDevice] Device started recording: %{public}@", &v2, 0xCu);
}

void sub_30B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[AudioPluginDevice] Device stopped recording: %{public}@", &v2, 0xCu);
}

void sub_3174(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[AudioPlugin] Unknown audio device with ID %{public}d", v2, 8u);
}