@interface MKPlaceCollectionMapItem
- (GEOQuickLink)appClip;
- (MKPlaceCollectionMapItem)initWithMapItem:(id)a3 placeCollectionItem:(id)a4;
- (id)description;
@end

@implementation MKPlaceCollectionMapItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MKPlaceCollectionMapItem *)self mapItem];
  v5 = [v4 description];
  v6 = [(MKPlaceCollectionMapItem *)self placeCollectionItem];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ %@", v5, v7];

  return v8;
}

- (GEOQuickLink)appClip
{
  v53 = *MEMORY[0x1E69E9840];
  placeCollectionItem = self->_placeCollectionItem;
  if (placeCollectionItem)
  {
    v4 = [(GEOPlaceCollectionItem *)placeCollectionItem appClip];
    if ([v4 type] == 2)
    {
      v5 = v4;
    }

    else if (([(GEOPlaceCollectionItem *)self->_placeCollectionItem disableAppClipFallback]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      [(MKMapItem *)self->_mapItem _externalActionLinks];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v6 = v48 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v7)
      {
        v8 = *v46;
        v32 = v6;
        v27 = *v46;
        do
        {
          v9 = 0;
          v28 = v7;
          do
          {
            if (*v46 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v45 + 1) + 8 * v9);
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v31 = v10;
            v11 = [v10 actionProviders];
            v30 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v30)
            {
              v12 = *v42;
              v29 = *v42;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v42 != v12)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v14 = *(*(&v41 + 1) + 8 * i);
                  v37 = 0u;
                  v38 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v15 = [v14 supportedIntegrations];
                  v16 = [v15 countByEnumeratingWithState:&v37 objects:v50 count:16];
                  if (v16)
                  {
                    v17 = v16;
                    v18 = *v38;
                    while (2)
                    {
                      for (j = 0; j != v17; ++j)
                      {
                        if (*v38 != v18)
                        {
                          objc_enumerationMutation(v15);
                        }

                        v20 = *(*(&v37 + 1) + 8 * j);
                        if ([v20 type] == 1)
                        {
                          v24 = [v31 actionName];
                          v5 = [v20 appClipRepresentedAsQuickLinkWithTitle:v24];

                          v6 = v32;
                          v25 = v32;
                          goto LABEL_41;
                        }
                      }

                      v17 = [v15 countByEnumeratingWithState:&v37 objects:v50 count:16];
                      if (v17)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v12 = v29;
                  v6 = v32;
                }

                v8 = v27;
                v30 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
              }

              while (v30);
            }

            ++v9;
          }

          while (v9 != v28);
          v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v7);
      }

      [(MKMapItem *)self->_mapItem _quickLinks];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = v36 = 0u;
      v5 = [v11 countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v5)
      {
        v21 = *v34;
        while (2)
        {
          for (k = 0; k != v5; k = k + 1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v11);
            }

            v23 = *(*(&v33 + 1) + 8 * k);
            if ([v23 type] == 2)
            {
              v5 = v23;
              goto LABEL_40;
            }
          }

          v5 = [v11 countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
      v25 = v11;
LABEL_41:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKPlaceCollectionMapItem)initWithMapItem:(id)a3 placeCollectionItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKPlaceCollectionMapItem;
  v9 = [(MKPlaceCollectionMapItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    objc_storeStrong(&v10->_placeCollectionItem, a4);
  }

  return v10;
}

@end