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
  objc_setAssociatedObject(a1, &_MKLabelMarkerShowCallout, v2, 0x303);
}

- (uint64_t)suppressCallout
{
  v1 = objc_getAssociatedObject(a1, &_MKLabelMarkerShowCallout);
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)_annotationTitle
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a1 featureType] == 6 && (objc_msgSend(a1, "relatedTexts"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = [a1 relatedTexts];
    v5 = [v4 _mapkit_componentsJoinedInCommaDelimitedList];
  }

  else if ([a1 isTransitLine])
  {
    v6 = [a1 relatedSubTexts];
    v7 = [a1 countFeatureIDs];
    v8 = v7;
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = [v6 firstObject];
      }

      else
      {
        v9 = _MKLocalizedStringFromThisBundle(@"%d lines");
        v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v8];
      }
    }

    if (![v8 length])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [a1 imageKeys];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
LABEL_13:
        v14 = 0;
        v15 = v8;
        while (1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v8 = [*(*(&v22 + 1) + 8 * v14) shieldText];

          if ([v8 length])
          {
            break;
          }

          ++v14;
          v15 = v8;
          if (v12 == v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v12)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }
    }

    if (![v8 length])
    {
      v16 = [a1 transitSystems];
      v17 = [v16 count];

      if (v17 == 1)
      {
        v18 = [a1 transitSystems];
        v19 = [v18 firstObject];

        v8 = v19;
      }
    }

    if (![v8 length])
    {
      v20 = [a1 text];

      v8 = v20;
    }

    v5 = v8;
  }

  else
  {
    v5 = [a1 text];
  }

  return v5;
}

- (MKMapItemIdentifier)flyoverTourIdentifier
{
  if ([a1 isFlyoverTour])
  {
    [a1 coordinate];
    v3 = v2;
    [a1 coordinate];
    v5 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [a1 featureID], 0, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKMapItemIdentifier)identifier
{
  [a1 coordinate];
  v3 = v2;
  [a1 coordinate];
  v5 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [a1 _mapkit_muid], 0, v3, v4);

  return v5;
}

- (uint64_t)_mapkit_muid
{
  if ([a1 hasBusinessID])
  {

    return [a1 businessID];
  }

  else
  {

    return [a1 featureID];
  }
}

@end