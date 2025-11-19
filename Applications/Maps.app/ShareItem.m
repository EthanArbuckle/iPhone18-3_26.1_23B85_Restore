@interface ShareItem
+ (id)shareItemForCurrentLocationIncludingPrintActivity:(BOOL)a3 withBackingMapItem:(id)a4;
+ (id)shareItemForObject:(id)a3;
+ (id)shareItemWithRoute:(id)a3 includeRoutingApps:(BOOL)a4;
+ (id)shareItemWithSearchResult:(id)a3 contact:(id)a4 includePrintActivity:(BOOL)a5 applicationActivities:(id)a6;
+ (void)loadURLForShareItem:(id)a3 completion:(id)a4;
@end

@implementation ShareItem

+ (void)loadURLForShareItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v20 = a4;
  v21 = [[UIActivityViewController alloc] initWithActivityItems:&__NSArray0__struct applicationActivities:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v5;
  v6 = [v5 activityProviders];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 activityViewController:v21 itemForActivityType:UIActivityTypeCopyToPasteboard];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = [UTTypeURL identifier];
            v16 = [v14 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

            if (v16)
            {
              v17 = [UTTypeURL identifier];
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v22[2] = sub_100CD982C;
              v22[3] = &unk_10165E2E0;
              v23 = v20;
              v18 = [v14 loadDataRepresentationForTypeIdentifier:v17 completionHandler:v22];

              goto LABEL_17;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

+ (id)shareItemForObject:(id)a3
{
  v3 = a3;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100CD9E44;
  v57 = sub_100CD9E54;
  v58 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v54;
    v5 = v3;
    v6 = v4[5];
    v4[5] = v5;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v10 = [v6 MKMapItem];

    if (v10)
    {
      v11 = [SearchResult alloc];
      v12 = [v6 MKMapItem];
      v13 = [(SearchResult *)v11 initWithMapItem:v12];
      v14 = v54[5];
      v54[5] = v13;
    }

    if ([v6 type] == 7)
    {
      [v54[5] setReverseGeocoded:1];
    }

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_4:
      v7 = v54[5];
      if (v7)
      {
        v8 = [v7 unknownContact];
        v9 = [ShareItem shareItemWithSearchResult:v54[5] contact:v8 includePrintActivity:1];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_12;
    }

    v6 = v3;
    v30 = +[Recents sharedRecents];
    v31 = [v30 cachedMapItemForContactID:{objc_msgSend(v6, "contactID")}];

    if (v31)
    {
      v32 = [[SearchResult alloc] initWithMapItem:v31];
      v33 = v54[5];
      v54[5] = v32;
    }

LABEL_3:
    goto LABEL_4;
  }

  v16 = v3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100CD9E44;
  v51 = sub_100CD9E54;
  v52 = 0;
  v17 = [v16 historyEntry];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100CD9E5C;
  v46[3] = &unk_1016508A0;
  v46[4] = &v53;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100CD9EB4;
  v45[3] = &unk_101661C68;
  v45[4] = &v47;
  [v17 ifSearch:0 ifRoute:v46 ifPlaceDisplay:v45 ifTransitLineItem:0];

  if (v48[5])
  {
    v18 = [SearchResult alloc];
    v19 = [MKMapItem alloc];
    v20 = [v19 initWithGeoMapItem:v48[5] isPlaceHolderPlace:0];
    v21 = [(SearchResult *)v18 initWithMapItem:v20];
    v22 = v54[5];
    v54[5] = v21;
  }

  v23 = v16;
  v9 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
  objc_opt_class();
  v24 = v23;
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  if (v26 && ([v26 historyEntry], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "conformsToProtocol:", v9), v27, v28))
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v34 = v24;
    v35 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
    objc_opt_class();
    v36 = v34;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    if (v38 && ([v38 historyEntry], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "conformsToProtocol:", v35), v39, v40))
    {
      v41 = v36;
    }

    else
    {
      v41 = 0;
    }

    v42 = [CuratedCollectionShareItemSource alloc];
    v43 = [v41 historyEntry];
    v44 = [v43 placeCollection];
    v9 = [(CuratedCollectionShareItemSource *)v42 initWithPlaceCollection:v44 refinedMapItems:&__NSArray0__struct];
  }

  _Block_object_dispose(&v47, 8);

  if (!v29)
  {
    goto LABEL_4;
  }

LABEL_12:
  _Block_object_dispose(&v53, 8);

  return v9;
}

+ (id)shareItemWithRoute:(id)a3 includeRoutingApps:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[ShareItemRoute alloc] initWithRoute:v5 includeRoutingApps:v4];

  return v6;
}

+ (id)shareItemForCurrentLocationIncludingPrintActivity:(BOOL)a3 withBackingMapItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[SearchResult currentLocationSearchResult];
  v8 = v7;
  if (v6)
  {
    [v7 setMapItem:v6];
  }

  v9 = objc_alloc_init(CNContactStore);
  v10 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v28 = v10;
  v11 = [NSArray arrayWithObjects:&v28 count:1];
  v26 = v9;
  v27 = 0;
  v12 = [v9 _ios_meContactWithKeysToFetch:v11 error:&v27];
  v13 = v27;

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v16 = [CNContactFormatter stringFromContact:v12 style:0];
    if ([v16 length])
    {
      v17 = +[NSBundle mainBundle];
      [v17 localizedStringForKey:@"Person_Name_Location_Callout_Label" value:@"localized string not found" table:0];
      v25 = v6;
      v18 = a1;
      v20 = v19 = v4;
      v21 = [NSString stringWithFormat:v20, v16];

      v4 = v19;
      a1 = v18;
      v6 = v25;

      v22 = [v8 place];
      [v22 setName:v21];

      v16 = v21;
    }

    v15 = objc_alloc_init(CNMutableContact);
    [v15 setContactType:0];
    [v15 setGivenName:v16];
  }

  else
  {
    v15 = [v8 unknownContact];
  }

  v23 = [a1 shareItemWithSearchResult:v8 contact:v15 includePrintActivity:v4];

  return v23;
}

+ (id)shareItemWithSearchResult:(id)a3 contact:(id)a4 includePrintActivity:(BOOL)a5 applicationActivities:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[ShareItemSearchResult alloc] initWithSearchResult:v11 contact:v10 includePrintActivity:v6 applicationActivities:v9];

  return v12;
}

@end