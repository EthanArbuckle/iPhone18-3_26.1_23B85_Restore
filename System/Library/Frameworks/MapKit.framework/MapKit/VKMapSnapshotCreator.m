@interface VKMapSnapshotCreator
@end

@implementation VKMapSnapshotCreator

void __90__VKMapSnapshotCreator_MapKitAdditions___mapkit_configureWithOptions_configuration_scale___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) _overlayRenderersForOverlayLevel:{a2, 0}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = MEMORY[0x1E69DF460];
        v11 = [v9 overlay];
        v12 = [v10 overlayWithDrawable:v9 forOverlay:v11 atLevel:a2];

        [v9 setContentScaleFactor:*(a1 + 48)];
        [*(a1 + 40) addOverlay:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

@end