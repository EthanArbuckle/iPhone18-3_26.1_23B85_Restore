@interface ATConcreteAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATConcreteAssetLink)initWithMessageLink:(id)a3;
- (BOOL)open;
- (id)_keyForATAssetInReaderMap:(id)a3;
- (id)_urlForWritingAsset:(id)a3 withFileName:(id)a4;
- (id)enqueueAssets:(id)a3 force:(BOOL)a4;
- (void)_finishAsset:(id)a3 withError:(id)a4;
- (void)_requestAsset:(id)a3;
- (void)cancelAssets:(id)a3;
- (void)close;
@end

@implementation ATConcreteAssetLink

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_keyForATAssetInReaderMap:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 assetParts];

  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"%@-%ld-%@", v5, v6, v8];

  return v9;
}

- (void)_requestAsset:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  v6 = [v4 storeInfo];
  v7 = [v6 syncID];
  [v5 setIdentifier:v7];

  v8 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = self;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Cloning %{public}@ to %{public}@ to request asset from the companion", buf, 0x20u);
  }

  v9 = objc_alloc(MEMORY[0x277CEA458]);
  v10 = [v4 dataclass];
  v11 = [v5 serializedAsset];
  v12 = [v9 initWithCommand:@"RequestAsset" dataClass:v10 parameters:v11];

  messageLink = self->_messageLink;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke;
  v16[3] = &unk_2784E96F8;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  [(ATMessageLink *)messageLink sendRequest:v12 withCompletion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 72);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_2;
  v12[3] = &unk_2784E95B8;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_2(uint64_t a1)
{
  v82[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || ([*(a1 + 40) error], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v4 = *(a1 + 56);
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) error];
      *buf = 138544130;
      v73 = v5;
      v74 = 2114;
      v75 = v4;
      v76 = 2114;
      v77 = v6;
      v78 = 2114;
      v79 = v7;
      _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Finishing %{public}@ because of stream error %{public}@ response error %{public}@", buf, 0x2Au);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    if (*(a1 + 32))
    {
      [*(a1 + 48) _finishAsset:*(a1 + 56) withError:?];
    }

    else
    {
      v10 = [*(a1 + 40) error];
      [v8 _finishAsset:v9 withError:v10];
    }
  }

  else
  {
    [*(a1 + 56) setAssetState:1];
    v11 = [*(a1 + 48) delegate];
    v12 = *(a1 + 48);
    v82[0] = *(a1 + 56);
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
    [v11 assetLink:v12 didTransitionAssetStates:v13];

    v14 = +[ATAssetLinkPowerLogger sharedInstance];
    [v14 logAssetLinkOfType:1 didBeginDownloadingAsset:*(a1 + 56)];

    v15 = [*(a1 + 40) parameters];
    v48 = [v15 objectForKey:@"_AssetClientParams"];

    if (v48)
    {
      [*(a1 + 56) setClientParams:v48];
    }

    v16 = [*(a1 + 40) parameters];
    v47 = [v16 objectForKey:@"_AssetFileName"];

    v17 = [*(a1 + 40) parameters];
    v18 = [v17 objectForKey:@"_AssetSize"];

    if (v18)
    {
      [*(a1 + 56) setTotalBytes:{objc_msgSend(v18, "unsignedLongLongValue")}];
      [*(a1 + 56) setBytesRemaining:{objc_msgSend(*(a1 + 56), "totalBytes")}];
    }

    v19 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 48);
      v21 = [*(a1 + 56) shortDescription];
      *buf = 138544130;
      v73 = v20;
      v74 = 2114;
      v75 = v21;
      v76 = 2050;
      v77 = [v18 unsignedLongLongValue];
      v78 = 2114;
      v79 = v47;
      _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ starting download of asset %{public}@. size=%{public}lld, name=%{public}@", buf, 0x2Au);
    }

    v22 = [*(a1 + 48) _urlForWritingAsset:*(a1 + 56) withFileName:v47];
    v23 = [MEMORY[0x277CBEA90] data];
    [v23 writeToURL:v22 options:0 error:0];

    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__2064;
    v70 = __Block_byref_object_dispose__2065;
    v65 = 0;
    v24 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v22 error:&v65];
    v46 = v65;
    v71 = v24;
    if (v67[5])
    {
      v25 = [v22 path];
      [*(a1 + 56) setPath:v25];

      v26 = objc_alloc(MEMORY[0x277D27F20]);
      v27 = [*(a1 + 40) dataStream];
      v28 = [v26 initWithInputStream:v27 queue:*(*(a1 + 48) + 72)];

      v29 = [*(a1 + 48) _keyForATAssetInReaderMap:*(a1 + 56)];
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x2020000000;
      v64[3] = 0;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_43;
      v60[3] = &unk_2784E95E0;
      v60[4] = *(a1 + 48);
      v63 = &v66;
      v61 = *(a1 + 56);
      v30 = v29;
      v62 = v30;
      v31 = MEMORY[0x223DED9F0](v60);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_47;
      v55[3] = &unk_2784E9680;
      v55[4] = *(a1 + 48);
      v56 = *(a1 + 56);
      v58 = &v66;
      v59 = v64;
      v32 = v31;
      v57 = v32;
      [v28 setDidReadDataBlock:v55];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_51;
      v52[3] = &unk_2784E96A8;
      v33 = *(a1 + 56);
      v52[4] = *(a1 + 48);
      v53 = v33;
      v34 = v32;
      v54 = v34;
      [v28 setDidFinishReadingBlock:v52];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_52;
      v49[3] = &unk_2784E96D0;
      v35 = *(a1 + 56);
      v49[4] = *(a1 + 48);
      v50 = v35;
      v36 = v34;
      v51 = v36;
      [v28 setDidEncounterErrorBlock:v49];
      [*(*(a1 + 48) + 40) addObject:v28];
      [*(*(a1 + 48) + 56) setObject:v28 forKey:v30];
      v37 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 48);
        v39 = *(a1 + 56);
        v40 = *(v38 + 40);
        v41 = *(v38 + 56);
        *buf = 138544386;
        v73 = v38;
        v74 = 2114;
        v75 = v28;
        v76 = 2114;
        v77 = v39;
        v78 = 2114;
        v79 = v40;
        v80 = 2114;
        v81 = v41;
        _os_log_impl(&dword_22392A000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding reader %{public}@ for %{public}@ activeReaders %{public}@, readerToAssetMap %{public}@", buf, 0x34u);
      }

      [v28 start];
      _Block_object_dispose(v64, 8);
    }

    else
    {
      v42 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 48);
        v44 = *(a1 + 56);
        *buf = 138543874;
        v73 = v43;
        v74 = 2114;
        v75 = v44;
        v76 = 2114;
        v77 = v46;
        _os_log_impl(&dword_22392A000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get file handle for writing asset %{public}@ - error %{public}@", buf, 0x20u);
      }

      [*(a1 + 48) _finishAsset:*(a1 + 56) withError:v46];
    }

    _Block_object_dispose(&v66, 8);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_43(uint64_t a1, void *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_2_44;
  block[3] = &unk_2784E9590;
  v41 = *(a1 + 56);
  block[4] = v7;
  v40 = v6;
  v9 = a2;
  dispatch_barrier_sync(v8, block);
  [*(a1 + 32) _finishAsset:*(a1 + 40) withError:v9];

  v10 = *(a1 + 32);
  if (*(v10 + 16) != 1)
  {
    v12 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 138543618;
      v43 = v20;
      v44 = 2114;
      v45 = v21;
      _os_log_impl(&dword_22392A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Not handling completion block for %{public}@ as the link is already closed", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (*(a1 + 48))
  {
    v11 = [*(v10 + 56) objectForKey:?];
    if (!v11)
    {
      v22 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(v23 + 40);
        *buf = 138543874;
        v43 = v23;
        v44 = 2114;
        v45 = v24;
        v46 = 2114;
        v47 = v25;
        _os_log_impl(&dword_22392A000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not materialize reader for %{public}@ - active readers %{public}@", buf, 0x20u);
      }

      v12 = 0;
      goto LABEL_20;
    }

    v12 = v11;
    v13 = *(a1 + 32);
    if (a3)
    {
      if (([*(v13 + 48) containsObject:*(a1 + 48)] & 1) == 0)
      {
        [*(*(a1 + 32) + 48) addObject:*(a1 + 48)];
        dispatch_group_enter(*(*(a1 + 32) + 96));
        v30 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 32);
          v32 = *(a1 + 40);
          v33 = *(v31 + 48);
          *buf = 138543874;
          v43 = v31;
          v44 = 2114;
          v45 = v32;
          v46 = 2114;
          v47 = v33;
          _os_log_impl(&dword_22392A000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping stream reader for %{public}@ readersPendingStop %{public}@", buf, 0x20u);
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_45;
        v35[3] = &unk_2784E95B8;
        v35[4] = *(a1 + 32);
        v12 = v12;
        v36 = v12;
        v37 = *(a1 + 48);
        v38 = *(a1 + 40);
        [v12 stopWithCompletion:v35];

        goto LABEL_20;
      }

      v14 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        *buf = 138543618;
        v43 = v15;
        v44 = 2114;
        v45 = v16;
        v17 = "%{public}@ Reader for %{public}@ is already pending stop";
        v18 = v14;
        v19 = 22;
LABEL_15:
        _os_log_impl(&dword_22392A000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      [*(v13 + 40) removeObject:v11];
      [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 48)];
      v14 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(v26 + 40);
        v29 = *(v26 + 56);
        *buf = 138544130;
        v43 = v26;
        v44 = 2114;
        v45 = v27;
        v46 = 2114;
        v47 = v28;
        v48 = 2114;
        v49 = v29;
        v17 = "%{public}@ Removed reader for %{public}@ from our list - active readers %{public}@, readerMap %{public}@";
        v18 = v14;
        v19 = 42;
        goto LABEL_15;
      }
    }

LABEL_20:
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_47(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1[4] + 32) containsObject:a1[5]])
  {
    v4 = [v3 length];
    v5 = atomic_fetch_add_explicit((a1[4] + 104), v4, memory_order_relaxed) + v4;
    v6 = *(a1[4] + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_2_48;
    block[3] = &unk_2784E9658;
    v14 = a1[7];
    v16 = v3;
    v13 = *(a1 + 2);
    v7 = *(&v13 + 1);
    *&v8 = v14;
    *(&v8 + 1) = a1[8];
    v17 = v13;
    v18 = v8;
    dispatch_async(v6, block);
    if (v5 >= 0x200000)
    {
      dispatch_semaphore_wait(*(a1[4] + 112), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v9 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ handling didReadDataBlock for %{public}@ that's not in our list", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ATConcreteAssetLink__requestAsset___block_invoke_51(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished reading asset %{public}@", &v7, 0x16u);
  }

  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_52(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not sync %{public}@ - error %{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_2_48(uint64_t a1)
{
  [*(*(*(a1 + 56) + 8) + 40) writeData:*(a1 + 32)];
  v2 = [*(a1 + 32) length];
  add_explicit = atomic_fetch_add_explicit((*(a1 + 40) + 104), -v2, memory_order_relaxed);
  if (add_explicit >= 0x200000 && add_explicit - v2 < 0x200000)
  {
    dispatch_semaphore_signal(*(*(a1 + 40) + 112));
  }

  v4 = *(*(a1 + 40) + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_3;
  v8[3] = &unk_2784E9630;
  v9 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = v6;
  dispatch_async(v4, v8);
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) bytesRemaining])
  {
    [*(a1 + 32) setBytesRemaining:{objc_msgSend(*(a1 + 32), "bytesRemaining") - objc_msgSend(*(a1 + 40), "length")}];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v3 = *(*(a1 + 56) + 8);
    if (v2 - *(v3 + 24) > 0.5)
    {
      *(v3 + 24) = v2;
      v4 = *(a1 + 48);
      v5 = *(v4 + 88);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __37__ATConcreteAssetLink__requestAsset___block_invoke_4;
      v6[3] = &unk_2784E9608;
      v6[4] = v4;
      v7 = *(a1 + 32);
      dispatch_async(v5, v6);
    }
  }
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didUpdateAsset:*(a1 + 40) progress:{(objc_msgSend(*(a1 + 40), "totalBytes") / objc_msgSend(*(a1 + 40), "bytesRemaining"))}];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_2_44(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    [v2 closeFile];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Closing write fileHandle for %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __37__ATConcreteAssetLink__requestAsset___block_invoke_45(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1[4] + 72));
  [*(a1[4] + 40) removeObject:a1[5]];
  [*(a1[4] + 56) removeObjectForKey:a1[6]];
  dispatch_group_leave(*(a1[4] + 96));
  v2 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[7];
    v5 = *(v3 + 40);
    v6 = *(v3 + 56);
    v8 = 138544130;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing stop message for %{public}@ - active readers %{public}@, readerMap %{public}@", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_urlForWritingAsset:(id)a3 withFileName:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CEA430] sharedInstance];
  v8 = [v5 dataclass];
  v9 = [v7 pathForDataclass:v8];

  v10 = [MEMORY[0x277CEA430] sharedInstance];
  v11 = [v5 dataclass];
  v33[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v10 createAirlockForDataclasses:v12];

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = v6;
  v32 = v5;
  if (v6 && [v6 length])
  {
    v14 = v6;
  }

  else
  {
    v15 = [v5 prettyName];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v5 identifier];
    }

    v14 = v17;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    if (v18)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [v14 stringByDeletingPathExtension];
      v22 = [v14 pathExtension];
      v23 = [v20 stringWithFormat:@"%@_%d.%@", v21, v18, v22];
    }

    else
    {
      v23 = v14;
    }

    v24 = [v9 stringByAppendingPathComponent:v23];

    v25 = [v13 fileExistsAtPath:v24];
    ++v18;

    v19 = v24;
  }

  while ((v25 & 1) != 0);
  v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
  v27 = [MEMORY[0x277CBEA90] data];
  [v27 writeToURL:v26 options:0 error:0];

  v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_finishAsset:(id)a3 withError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_outstandingAssets containsObject:v6])
  {
    v8 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished asset %{public}@: %{public}@", buf, 0x20u);
    }

    v9 = +[ATAssetLinkPowerLogger sharedInstance];
    [v9 logAssetLinkOfType:1 didFinishAsset:v6 withError:v7];

    [(NSMutableArray *)self->_outstandingAssets removeObject:v6];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ATConcreteAssetLink__finishAsset_withError___block_invoke;
    block[3] = &unk_2784E9568;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_async(callbackQueue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__ATConcreteAssetLink__finishAsset_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didFinishAsset:*(a1 + 40) error:*(a1 + 48) retryable:1];
}

- (void)cancelAssets:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__2064;
  v11[4] = __Block_byref_object_dispose__2065;
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  readerQueue = self->_readerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ATConcreteAssetLink_cancelAssets___block_invoke;
  block[3] = &unk_2784E9590;
  v8 = v4;
  v9 = self;
  v10 = v11;
  v6 = v4;
  dispatch_async(readerQueue, block);

  _Block_object_dispose(v11, 8);
}

void __36__ATConcreteAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if ([*(*(a1 + 40) + 32) containsObject:v7])
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * j);
        v14 = *(a1 + 40);
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:{0, v17}];
        [v14 _finishAsset:v13 withError:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)enqueueAssets:(id)a3 force:(BOOL)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2064;
  v34 = __Block_byref_object_dispose__2065;
  v35 = [MEMORY[0x277CBEA60] array];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  readerQueue = self->_readerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ATConcreteAssetLink_enqueueAssets_force___block_invoke;
  block[3] = &unk_2784E94F8;
  block[4] = self;
  block[5] = v29;
  dispatch_sync(readerQueue, block);
  accessQueue = self->_accessQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __43__ATConcreteAssetLink_enqueueAssets_force___block_invoke_2;
  v23[3] = &unk_2784E9540;
  v23[4] = self;
  v25 = v29;
  v27 = a4;
  v9 = v6;
  v24 = v9;
  v26 = &v30;
  dispatch_sync(accessQueue, v23);
  v10 = self->_readerQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__ATConcreteAssetLink_enqueueAssets_force___block_invoke_3;
  v22[3] = &unk_2784E94F8;
  v22[4] = self;
  v22[5] = &v30;
  dispatch_sync(v10, v22);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v31[5];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v36 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(ATConcreteAssetLink *)self _requestAsset:*(*(&v18 + 1) + 8 * i), v18];
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v36 count:16];
    }

    while (v12);
  }

  v15 = v31[5];
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __43__ATConcreteAssetLink_enqueueAssets_force___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

unint64_t __43__ATConcreteAssetLink_enqueueAssets_force___block_invoke_2(unint64_t result)
{
  if (*(*(result + 32) + 16) != 1)
  {
    return result;
  }

  v1 = result;
  v2 = *(*(*(result + 48) + 8) + 24);
  v3 = *(result + 64);
  if (v2 > 1)
  {
    if ((*(result + 64) & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = [*(result + 40) count];
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (*(result + 64))
  {
    goto LABEL_10;
  }

  v4 = 2 - v2;
  result = [*(result + 40) count];
  if (v4 >= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
LABEL_11:
    v6 = [*(v1 + 40) subarrayWithRange:0];
    v7 = *(*(v1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)close
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__2064;
  v4[4] = __Block_byref_object_dispose__2065;
  v5 = 0;
  accessQueue = self->_accessQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__ATConcreteAssetLink_close__block_invoke;
  v3[3] = &unk_2784E94F8;
  v3[4] = self;
  v3[5] = v4;
  dispatch_sync(accessQueue, v3);
  _Block_object_dispose(v4, 8);
}

void __28__ATConcreteAssetLink_close__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__ATConcreteAssetLink_close__block_invoke_2;
    block[3] = &unk_2784E94F8;
    v4 = *(a1 + 40);
    block[4] = v1;
    block[5] = v4;
    dispatch_sync(v3, block);
    v5 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(*(*(a1 + 40) + 8) + 40) count];
      *buf = 138543618;
      v29 = v6;
      v30 = 2048;
      v31 = v7;
      _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Closing .... outstanding asset count:%ld", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 0;
    [*(*(a1 + 32) + 8) removeObserver:?];
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __28__ATConcreteAssetLink_close__block_invoke_11;
      v25[3] = &unk_2784E94F8;
      v26 = *(a1 + 32);
      dispatch_async(*(v26 + 88), v25);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 72);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __28__ATConcreteAssetLink_close__block_invoke_2_12;
    v24[3] = &unk_2784E94D0;
    v24[4] = v12;
    dispatch_sync(v13, v24);
    dispatch_group_wait(*(*(a1 + 32) + 96), 0xFFFFFFFFFFFFFFFFLL);
    v14 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v29 = v15;
      _os_log_impl(&dword_22392A000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished waiting for readers to process their stop messages", buf, 0xCu);
    }

    dispatch_barrier_sync(*(*(a1 + 32) + 72), &__block_literal_global_2104);
    v16 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_22392A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished waiting for readerQueue to drain", buf, 0xCu);
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __28__ATConcreteAssetLink_close__block_invoke_15;
    v23[3] = &unk_2784E94D0;
    v23[4] = v18;
    dispatch_sync(v19, v23);
    v20 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Wrapped up ...", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __28__ATConcreteAssetLink_close__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 32);

  return [v5 removeAllObjects];
}

void __28__ATConcreteAssetLink_close__block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didCloseWithOutstandingAssets:*(*(*(a1 + 40) + 8) + 40)];
}

void __28__ATConcreteAssetLink_close__block_invoke_2_12(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 56) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138543618;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 48) containsObject:{v8, v13}] & 1) == 0)
        {
          v9 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            *buf = v13;
            v20 = v10;
            v21 = 2114;
            v22 = v8;
            _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping reader for assetID/Part %{public}@", buf, 0x16u);
          }

          dispatch_group_enter(*(*(a1 + 32) + 96));
          v11 = [*(*(a1 + 32) + 56) objectForKey:v8];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __28__ATConcreteAssetLink_close__block_invoke_13;
          v14[3] = &unk_2784E94D0;
          v14[4] = *(a1 + 32);
          [v11 stopWithCompletion:v14];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __28__ATConcreteAssetLink_close__block_invoke_15(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 40) count];
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing %ld readers from our collection", &v7, 0x16u);
  }

  result = [*(*(a1 + 32) + 40) removeAllObjects];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)open
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ATConcreteAssetLink_open__block_invoke;
  block[3] = &unk_2784E94D0;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  return 1;
}

void __27__ATConcreteAssetLink_open__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    [*(*(a1 + 32) + 8) addObserver:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ATConcreteAssetLink_open__block_invoke_2;
    block[3] = &unk_2784E94D0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __27__ATConcreteAssetLink_open__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 assetLink:*(a1 + 32) didOpenWithPendingAssets:0];
  }
}

- (ATConcreteAssetLink)initWithMessageLink:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = ATConcreteAssetLink;
  v6 = [(ATConcreteAssetLink *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageLink, a3);
    v8 = dispatch_queue_create("com.apple.AirTraffic.ATFoundation.ATConcreteAssetLink.accessQueue", 0);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v8;

    v10 = dispatch_queue_create("com.apple.AirTraffic.ATFoundation.ATConcreteAssetLink.fileIOQueue", 0);
    fileIOQueue = v7->_fileIOQueue;
    v7->_fileIOQueue = v10;

    v12 = dispatch_queue_create("com.apple.AirTraffic.ATFoundation.ATConcreteAssetLink.callbackQueue", 0);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v12;

    v14 = dispatch_queue_create("com.apple.AirTraffic.ATFoundation.ATConcreteAssetLink.streamReaderQueue", 0);
    readerQueue = v7->_readerQueue;
    v7->_readerQueue = v14;

    v16 = dispatch_group_create();
    readersPendingStopGroup = v7->_readersPendingStopGroup;
    v7->_readersPendingStopGroup = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    outstandingAssets = v7->_outstandingAssets;
    v7->_outstandingAssets = v18;

    v20 = objc_opt_new();
    readers = v7->_readers;
    v7->_readers = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    readersPendingStop = v7->_readersPendingStop;
    v7->_readersPendingStop = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    readersToAssetsMap = v7->_readersToAssetsMap;
    v7->_readersToAssetsMap = v24;

    v26 = dispatch_semaphore_create(0);
    pendingWriteSemaphore = v7->_pendingWriteSemaphore;
    v7->_pendingWriteSemaphore = v26;

    v7->_pendingWriteAmount = 0;
  }

  return v7;
}

@end