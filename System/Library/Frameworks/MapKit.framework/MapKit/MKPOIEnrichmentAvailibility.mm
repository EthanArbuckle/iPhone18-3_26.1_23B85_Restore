@interface MKPOIEnrichmentAvailibility
+ (BOOL)_isMapsApplication;
+ (BOOL)_shouldAllowUserToAddContributionsForMapItem:(id)item;
+ (BOOL)shouldShowAddPhotoButtonOnEndOfPhotoSliderForMapItem:(id)item;
+ (BOOL)shouldShowAddPhotoButtonOnMorePhotosGalleryForMapItem:(id)item usingAttributionsByProviderIds:(id)ids;
+ (BOOL)shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:(id)item photoAttribution:(id)attribution;
+ (BOOL)shouldShowAppleRatingsForMapItem:(id)item;
+ (BOOL)shouldShowCallToActionForMapItem:(id)item;
+ (BOOL)shouldShowCallToActionForMapItem:(id)item options:(unint64_t)options;
+ (BOOL)shouldShowPhotosCallToActionForMapItem:(id)item;
+ (BOOL)shouldShowRatingInfoCallToActionOnPlaceCardHeaderForMapItem:(id)item;
+ (BOOL)shouldShowRatingsCallToActionForMapItem:(id)item;
+ (BOOL)shouldShowReportAnIssueOnPhotoGalleryForMapItem:(id)item photoAttribution:(id)attribution;
@end

@implementation MKPOIEnrichmentAvailibility

+ (BOOL)_isMapsApplication
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

  return v4;
}

+ (BOOL)_shouldAllowUserToAddContributionsForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
  canShowCallToAction = [_placeQuestionnaire canShowCallToAction];

  if (!canShowCallToAction || !GEOCanUserMakeLagunaBeachContributions())
  {
    return 0;
  }

  return GEODoesUserHaveValidAccountForMakingContributions();
}

+ (BOOL)shouldShowReportAnIssueOnPhotoGalleryForMapItem:(id)item photoAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (_MKRAPIsAvailable())
  {
    supportsReportingIssue = [attributionCopy supportsReportingIssue];
  }

  else
  {
    supportsReportingIssue = 0;
  }

  _isMapsApplication = [self _isMapsApplication];

  return supportsReportingIssue & _isMapsApplication;
}

+ (BOOL)shouldShowAddPhotoButtonOnMorePhotosGalleryForMapItem:(id)item usingAttributionsByProviderIds:(id)ids
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  idsCopy = ids;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [idsCopy allValues];
    v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isUserSubmitted] & 1) == 0 && !objc_msgSend(v13, "isBusinessOwned"))
          {

            goto LABEL_14;
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [self shouldShowPhotosCallToActionForMapItem:itemCopy];
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldShowRatingInfoCallToActionOnPlaceCardHeaderForMapItem:(id)item
{
  itemCopy = item;
  if (MapsFeature_IsEnabled_LagunaBeach() && [self _isMapsApplication] && GEOCanUserMakeLagunaBeachContributions() && GEODoesUserHaveValidAccountForMakingContributions())
  {
    v5 = [self shouldShowAppleRatingsForMapItem:itemCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAddPhotoButtonOnEndOfPhotoSliderForMapItem:(id)item
{
  itemCopy = item;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v5 = [self shouldShowPhotosCallToActionForMapItem:itemCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:(id)item photoAttribution:(id)attribution
{
  itemCopy = item;
  if (MapsFeature_IsEnabled_LagunaBeach() && GEOConfigGetBOOL())
  {
    v6 = [self shouldShowPhotosCallToActionForMapItem:itemCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldShowPhotosCallToActionForMapItem:(id)item
{
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];

  v7 = [_placeQuestionnaire canCollectPhotos] && (objc_msgSend(self, "shouldShowCallToActionForMapItem:", itemCopy) & 1) != 0;
  return v7;
}

+ (BOOL)shouldShowRatingsCallToActionForMapItem:(id)item
{
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];

  v7 = [_placeQuestionnaire canCollectRatings] && (objc_msgSend(self, "shouldShowCallToActionForMapItem:", itemCopy) & 1) != 0;
  return v7;
}

+ (BOOL)shouldShowCallToActionForMapItem:(id)item options:(unint64_t)options
{
  if ((options & 0xA0000000) == 0x20000000)
  {
    return [self shouldShowCallToActionForMapItem:item];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowCallToActionForMapItem:(id)item
{
  itemCopy = item;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v5 = [self _shouldAllowUserToAddContributionsForMapItem:itemCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldShowAppleRatingsForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  _hasAppleRatings = [_geoMapItem _hasAppleRatings];

  return _hasAppleRatings;
}

@end