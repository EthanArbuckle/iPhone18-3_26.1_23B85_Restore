@interface MKPlaceViewController
@end

@implementation MKPlaceViewController

void __171___MKPlaceViewController_infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_moduleMetadata_feedbackDelegateSelector_actionRichProviderId_classification___block_invoke(uint64_t a1)
{
  v14 = +[MKMapService sharedService];
  v2 = *(a1 + 104);
  v13 = *(a1 + 108);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 96);
  v6 = [v4 _muid];
  v7 = [*(a1 + 40) _vendorID];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 112);
  v11 = [*(a1 + 40) _firstLocalizedCategoryName];
  LODWORD(v12) = v10;
  [v14 capturePlaceCardUserAction:v2 onTarget:v13 eventValue:v3 mapItem:v4 timestamp:0xFFFFFFFFLL resultIndex:v6 targetID:v5 providerID:v7 animationID:0 actionURL:v8 photoID:v9 placeCardType:v12 localizedMapItemCategory:v11 availableActions:*(a1 + 64) unactionableUIElements:*(a1 + 72) modules:0 commingledPhotoProviderIDs:0 actionRichProviderId:*(a1 + 80) classification:*(a1 + 88)];
}

void __190___MKPlaceViewController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke(uint64_t a1)
{
  v9 = +[MKMapService sharedService];
  v2 = *(a1 + 88);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = [v3 _vendorID];
  LODWORD(v8) = *(a1 + 92);
  [v9 captureTransitPlaceCardUserAction:v2 onTarget:201 eventValue:0 mapItem:v3 timestamp:v5 resultIndex:v6 targetID:v4 providerID:v7 animationID:-1 transitCardCategory:v8 transitSystem:*(a1 + 40) transitDepartureSequence:*(a1 + 48) transitIncident:*(a1 + 56)];
}

void __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MKGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) mapItem];
      v7 = [v6 name];
      v9 = 138412290;
      v10 = v7;
      v8 = "Successfully launched Maps in SAR mode for mapItem: %@";
LABEL_6:
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, v8, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v6 = [*(a1 + 32) mapItem];
    v7 = [v6 name];
    v9 = 138412290;
    v10 = v7;
    v8 = "Failed to launched Maps in SAR mode for mapItem: %@";
    goto LABEL_6;
  }
}

uint64_t __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _showShareSheet:*(result + 40)];
  }

  return result;
}

void __48___MKPlaceViewController__updateViewControllers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v15 = v5;
    v7 = [v5 count];
    v6 = v15;
    if (v7)
    {
      v8 = [v15 firstObject];
      v9 = *(a1 + 32);
      if ((*(v9 + 1352) & 1) != 0 || ([v8 _displayMapRegion], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 = *(a1 + 32), !v10))
      {
        v11 = [v9 viewControllers];
        v12 = [v11 containsObject:*(*(a1 + 32) + 1200)];

        if (v12)
        {
          [*(a1 + 32) removeAdditionalViewController:*(*(a1 + 32) + 1200)];
        }
      }

      else
      {
        [*(v9 + 1200) setMapItem:v8];
      }

      [*(*(a1 + 32) + 1192) setMapItem:v8];
      v13 = *(a1 + 32);
      v14 = [v13 contact];
      [v13 setMapItem:v8 contact:v14 updateOriginalContact:0];

      v6 = v15;
    }
  }
}

void __48___MKPlaceViewController__updateViewControllers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v14 = v5;
    v7 = [v5 count];
    v6 = v14;
    if (v7)
    {
      v8 = [v14 firstObject];
      v9 = *(a1 + 32);
      if ((*(v9 + 1352) & 1) != 0 || ([v8 _displayMapRegion], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 = *(a1 + 32), !v10))
      {
        v11 = [v9 viewControllers];
        v12 = [v11 containsObject:*(*(a1 + 32) + 1200)];

        if (v12)
        {
          [*(a1 + 32) removeAdditionalViewController:*(*(a1 + 32) + 1200)];
        }
      }

      else
      {
        [*(v9 + 1200) setMapItem:v8];
      }

      [*(*(a1 + 32) + 1192) setMapItem:v8];
      if (v8)
      {
        [v8 _placeCardContact];
      }

      else
      {
        [*(a1 + 32) contact];
      }
      v13 = ;
      [*(a1 + 32) setMapItem:v8 contact:v13 updateOriginalContact:0];

      v6 = v14;
    }
  }
}

@end