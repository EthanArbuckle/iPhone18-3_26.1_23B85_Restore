@interface MKPOIEnrichmentAvailibility
+ (BOOL)_isMapsApplication;
+ (BOOL)_shouldAllowUserToAddContributionsForMapItem:(id)a3;
+ (BOOL)shouldShowAddPhotoButtonOnEndOfPhotoSliderForMapItem:(id)a3;
+ (BOOL)shouldShowAddPhotoButtonOnMorePhotosGalleryForMapItem:(id)a3 usingAttributionsByProviderIds:(id)a4;
+ (BOOL)shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:(id)a3 photoAttribution:(id)a4;
+ (BOOL)shouldShowAppleRatingsForMapItem:(id)a3;
+ (BOOL)shouldShowCallToActionForMapItem:(id)a3;
+ (BOOL)shouldShowCallToActionForMapItem:(id)a3 options:(unint64_t)a4;
+ (BOOL)shouldShowPhotosCallToActionForMapItem:(id)a3;
+ (BOOL)shouldShowRatingInfoCallToActionOnPlaceCardHeaderForMapItem:(id)a3;
+ (BOOL)shouldShowRatingsCallToActionForMapItem:(id)a3;
+ (BOOL)shouldShowReportAnIssueOnPhotoGalleryForMapItem:(id)a3 photoAttribution:(id)a4;
@end

@implementation MKPOIEnrichmentAvailibility

+ (BOOL)_isMapsApplication
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A1A78]];

  return v4;
}

+ (BOOL)_shouldAllowUserToAddContributionsForMapItem:(id)a3
{
  v3 = [a3 _geoMapItem];
  v4 = [v3 _placeQuestionnaire];
  v5 = [v4 canShowCallToAction];

  if (!v5 || !GEOCanUserMakeLagunaBeachContributions())
  {
    return 0;
  }

  return GEODoesUserHaveValidAccountForMakingContributions();
}

+ (BOOL)shouldShowReportAnIssueOnPhotoGalleryForMapItem:(id)a3 photoAttribution:(id)a4
{
  v5 = a4;
  if (_MKRAPIsAvailable())
  {
    v6 = [v5 supportsReportingIssue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 _isMapsApplication];

  return v6 & v7;
}

+ (BOOL)shouldShowAddPhotoButtonOnMorePhotosGalleryForMapItem:(id)a3 usingAttributionsByProviderIds:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 allValues];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isUserSubmitted] & 1) == 0 && !objc_msgSend(v13, "isBusinessOwned"))
          {

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [a1 shouldShowPhotosCallToActionForMapItem:v6];
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldShowRatingInfoCallToActionOnPlaceCardHeaderForMapItem:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach() && [a1 _isMapsApplication] && GEOCanUserMakeLagunaBeachContributions() && GEODoesUserHaveValidAccountForMakingContributions())
  {
    v5 = [a1 shouldShowAppleRatingsForMapItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAddPhotoButtonOnEndOfPhotoSliderForMapItem:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v5 = [a1 shouldShowPhotosCallToActionForMapItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:(id)a3 photoAttribution:(id)a4
{
  v5 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v6 = [a1 shouldShowPhotosCallToActionForMapItem:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldShowPhotosCallToActionForMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _geoMapItem];
  v6 = [v5 _placeQuestionnaire];

  v7 = [v6 canCollectPhotos] && (objc_msgSend(a1, "shouldShowCallToActionForMapItem:", v4) & 1) != 0;
  return v7;
}

+ (BOOL)shouldShowRatingsCallToActionForMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _geoMapItem];
  v6 = [v5 _placeQuestionnaire];

  v7 = [v6 canCollectRatings] && (objc_msgSend(a1, "shouldShowCallToActionForMapItem:", v4) & 1) != 0;
  return v7;
}

+ (BOOL)shouldShowCallToActionForMapItem:(id)a3 options:(unint64_t)a4
{
  if ((a4 & 0xA0000000) == 0x20000000)
  {
    return [a1 shouldShowCallToActionForMapItem:a3];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowCallToActionForMapItem:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v5 = [a1 _shouldAllowUserToAddContributionsForMapItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAppleRatingsForMapItem:(id)a3
{
  v3 = [a3 _geoMapItem];
  v4 = [v3 _hasAppleRatings];

  return v4;
}

@end