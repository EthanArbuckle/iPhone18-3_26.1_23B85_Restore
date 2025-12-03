@interface VKLabelMarker(MapKitExtras)
- (MKMapItemIdentifier)flyoverTourIdentifier;
- (MKMapItemIdentifier)identifier;
- (id)_annotationTitle;
- (uint64_t)_mapkit_muid;
- (uint64_t)suppressCallout;
- (void)setSuppressCallout:()MapKitExtras;
@end

@implementation VKLabelMarker(MapKitExtras)

- (void)setSuppressCallout:()MapKitExtras
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &_MKLabelMarkerShowCallout, v2, 0x303);
}

- (uint64_t)suppressCallout
{
  v1 = objc_getAssociatedObject(self, &_MKLabelMarkerShowCallout);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)_annotationTitle
{
  v27 = *MEMORY[0x1E69E9840];
  if ([self featureType] == 6 && (objc_msgSend(self, "relatedTexts"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    relatedTexts = [self relatedTexts];
    _mapkit_componentsJoinedInCommaDelimitedList = [relatedTexts _mapkit_componentsJoinedInCommaDelimitedList];
  }

  else if ([self isTransitLine])
  {
    relatedSubTexts = [self relatedSubTexts];
    countFeatureIDs = [self countFeatureIDs];
    firstObject = countFeatureIDs;
    if (countFeatureIDs)
    {
      if (countFeatureIDs == 1)
      {
        firstObject = [relatedSubTexts firstObject];
      }

      else
      {
        v9 = _MKLocalizedStringFromThisBundle(@"%d lines");
        firstObject = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, firstObject];
      }
    }

    if (![firstObject length])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      imageKeys = [self imageKeys];
      v11 = [imageKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
LABEL_13:
        v14 = 0;
        v15 = firstObject;
        while (1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(imageKeys);
          }

          firstObject = [*(*(&v22 + 1) + 8 * v14) shieldText];

          if ([firstObject length])
          {
            break;
          }

          ++v14;
          v15 = firstObject;
          if (v12 == v14)
          {
            v12 = [imageKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v12)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }
    }

    if (![firstObject length])
    {
      transitSystems = [self transitSystems];
      v17 = [transitSystems count];

      if (v17 == 1)
      {
        transitSystems2 = [self transitSystems];
        firstObject2 = [transitSystems2 firstObject];

        firstObject = firstObject2;
      }
    }

    if (![firstObject length])
    {
      text = [self text];

      firstObject = text;
    }

    _mapkit_componentsJoinedInCommaDelimitedList = firstObject;
  }

  else
  {
    _mapkit_componentsJoinedInCommaDelimitedList = [self text];
  }

  return _mapkit_componentsJoinedInCommaDelimitedList;
}

- (MKMapItemIdentifier)flyoverTourIdentifier
{
  if ([self isFlyoverTour])
  {
    [self coordinate];
    v3 = v2;
    [self coordinate];
    v5 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [self featureID], 0, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKMapItemIdentifier)identifier
{
  [self coordinate];
  v3 = v2;
  [self coordinate];
  v5 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [self _mapkit_muid], 0, v3, v4);

  return v5;
}

- (uint64_t)_mapkit_muid
{
  if ([self hasBusinessID])
  {

    return [self businessID];
  }

  else
  {

    return [self featureID];
  }
}

@end