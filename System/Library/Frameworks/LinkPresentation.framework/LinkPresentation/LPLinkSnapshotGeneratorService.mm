@interface LPLinkSnapshotGeneratorService
- (void)internalSnapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5;
- (void)snapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5;
@end

@implementation LPLinkSnapshotGeneratorService

- (void)snapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__LPLinkSnapshotGeneratorService_snapshotForMetadata_configurations_completionHandler___block_invoke;
  v14[3] = &unk_1E7A35A18;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __87__LPLinkSnapshotGeneratorService_snapshotForMetadata_configurations_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __87__LPLinkSnapshotGeneratorService_snapshotForMetadata_configurations_completionHandler___block_invoke_2;
  activity_block[3] = &unk_1E7A35A18;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  _os_activity_initiate(&dword_1AE886000, "LPLinkSnapshotGeneratorService: snapshot request", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_autoreleasePoolPop(v2);
}

- (void)internalSnapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v51 = a4;
  v49 = v7;
  v50 = a5;
  v8 = [[LPLinkView alloc] initWithMetadata:v7];
  [(LPLinkView *)v8 _setUseLowMemoryImageFilters:1];
  [(LPLinkView *)v8 _setDisableAutoPlay:1];
  [(LPLinkView *)v8 _setAllowsAsynchronousImageDecoding:0];
  [(LPLinkView *)v8 _setUseCPURenderingForMaterials:1];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v51;
  v10 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v10)
  {
    v11 = *v55;
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v14 = 0;
      do
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v54 + 1) + 8 * v14);
        v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v17 = [v15 traitCollection];
        v18 = [v17 userInterfaceStyle];
        v19 = [v16 traitOverrides];
        [v19 setUserInterfaceStyle:v18];

        v20 = [v15 traitCollection];
        v21 = [v20 userInterfaceIdiom];
        v22 = [v16 traitOverrides];
        [v22 setUserInterfaceIdiom:v21];

        [v15 scale];
        v24 = v23;
        v25 = [v16 traitOverrides];
        [v25 setDisplayScale:v24];

        [v16 addSubview:v8];
        [v16 updateTraitsIfNeeded];
        [(LPLinkView *)v8 updateTraitsIfNeeded];
        -[LPLinkView _setPreferredSizeClass:](v8, "_setPreferredSizeClass:", [v15 preferredSizeClass]);
        v26 = [v15 sizeClassParameters];
        [(LPLinkView *)v8 _setSizeClassParameters:v26];

        v27 = [v15 overrideBackgroundColor];
        [(LPLinkView *)v8 _setOverrideBackgroundColor:v27];

        [v15 size];
        if (v29 == v12 && v28 == v13)
        {
          [v15 maximumSize];
          v31 = v30;
          [v15 maximumSize];
          [(LPLinkView *)v8 sizeThatFits:?];
        }

        else
        {
          [v15 size];
          v31 = v33;
          [v15 size];
        }

        [(LPLinkView *)v8 setFrame:0.0, 0.0, v31, v32];
        [(LPLinkView *)v8 _effectiveCornerRadius];
        v35 = v34;
        v36 = [(LPLinkView *)v8 layer];
        [v36 setCornerRadius:v35];

        [(LPLinkView *)v8 layoutIfNeeded];
        [(LPLinkView *)v8 updateTraitsIfNeeded];
        [(LPLinkView *)v8 bounds];
        v38 = v37;
        v40 = v39;
        [v15 scale];
        v42 = v41;
        v60.width = v38;
        v60.height = v40;
        UIGraphicsBeginImageContextWithOptions(v60, 0, v42);
        v43 = [(LPLinkView *)v8 layer];
        [v43 renderInContext:UIGraphicsGetCurrentContext()];

        if ([v15 showDebugIndicators])
        {
          CurrentContext = UIGraphicsGetCurrentContext();
          CGContextSetRGBFillColor(CurrentContext, 0.0, 0.0, 1.0, 0.2);
          v45 = UIGraphicsGetCurrentContext();
          [(LPLinkView *)v8 bounds];
          CGContextFillRect(v45, v61);
        }

        v46 = UIGraphicsGetImageFromCurrentImageContext();
        v47 = UIImagePNGRepresentation(v46);
        [v9 addObject:v47];

        UIGraphicsEndImageContext();
        ++v14;
      }

      while (v10 != v14);
      v10 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v10);
  }

  v48 = LPLogChannelSnapshotGenerator();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE886000, v48, OS_LOG_TYPE_DEFAULT, "LPLinkSnapshotGeneratorService: finished snapshotting", buf, 2u);
  }

  v50[2](v50, 0, v9);
}

@end