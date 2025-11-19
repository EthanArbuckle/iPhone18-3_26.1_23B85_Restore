@interface AEAssetActivityItemProvider
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (AEAssetActivityItemProvider)initWithAnnotation:(id)a3 propertySource:(id)a4;
- (AEAssetActivityItemProvider)initWithAnnotations:(id)a3 propertySource:(id)a4;
- (AEAssetActivityItemProvider)initWithPropertySource:(id)a3;
- (BOOL)itemProviderSource:(id)a3 shouldShareActivityType:(id)a4;
- (id)expandedItemProviders;
- (id)pasteboardString;
- (void)dealloc;
@end

@implementation AEAssetActivityItemProvider

- (AEAssetActivityItemProvider)initWithAnnotation:(id)a3 propertySource:(id)a4
{
  v6 = a4;
  v7 = [NSArray arrayWithObject:a3];
  v8 = [(AEAssetActivityItemProvider *)self initWithAnnotations:v7 propertySource:v6];

  if (v8)
  {
    v8->_shareType = 0;
  }

  return v8;
}

- (AEAssetActivityItemProvider)initWithAnnotations:(id)a3 propertySource:(id)a4
{
  v7 = a3;
  v8 = [(AEAssetActivityItemProvider *)self initWithPropertySource:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_annotations, a3);
    v9->_shareType = 1;
  }

  return v9;
}

- (AEAssetActivityItemProvider)initWithPropertySource:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetActivityItemProvider *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    propertySource = v5->_propertySource;
    v5->_propertySource = v6;

    v5->_shareType = 2;
  }

  return v5;
}

- (void)dealloc
{
  propertySource = self->_propertySource;
  self->_propertySource = 0;

  objc_storeWeak(&self->_paginationDataSource, 0);
  v4.receiver = self;
  v4.super_class = AEAssetActivityItemProvider;
  [(AEAssetActivityItemProvider *)&v4 dealloc];
}

- (id)pasteboardString
{
  v3 = [(AEAssetActivityItemProvider *)self shareType];
  if (v3 == 2)
  {
    v6 = [(AEAssetActivityItemProvider *)self propertySource];
    v8 = [AEAssetTextActivityItemProvider textItemWithPropertySource:v6];
  }

  else
  {
    if (v3 || ![(AEAssetActivityItemProvider *)self areCitationsAllowed])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v4 = [(AEAssetActivityItemProvider *)self annotations];
    v5 = [(AEAssetActivityItemProvider *)self propertySource];
    v6 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTextActivityItemProvider activityItemProviderSourceWithAnnotations:v4 propertySource:v5];

    [v6 setCitationsAllowed:1];
    v7 = [(AEAssetActivityItemProvider *)self paginationDataSource];
    [v6 setPaginationDataSource:v7];

    v8 = [v6 activityViewController:0 itemForActivityType:UIActivityTypeCopyToPasteboard];
  }

  v9 = v8;

LABEL_8:

  return v9;
}

- (id)expandedItemProviders
{
  v3 = [(AEAssetActivityItemProvider *)self areCitationsAllowed];
  v4 = [(AEAssetActivityItemProvider *)self propertySource];
  v5 = [(AEAssetActivityItemProvider *)self paginationDataSource];
  v6 = [(AEAssetActivityItemProvider *)self shareType];
  if (v6 == 2)
  {
    v14 = [[AEAssetTextActivityItemProvider alloc] initWithDelegate:self propertySource:v4];
    [(AEAssetActivityItemProvider *)self setTextProvider:v14];

    v15 = [[AEAssetNotesActivityItemProvider alloc] initWithDelegate:self propertySource:v4];
    [(AEAssetActivityItemProvider *)self setNotesProvider:v15];

    v7 = [[AEAssetLinkPresentationActivityItemProvider alloc] initWithDelegate:self propertySource:v4];
    v16 = [(AEAssetActivityItemProvider *)self textProvider];
    v28[0] = v16;
    v17 = [(AEAssetActivityItemProvider *)self notesProvider];
    v28[1] = v17;
    v28[2] = v7;
    v11 = [NSArray arrayWithObjects:v28 count:3];

    v12 = [[AEAssetURLActivityItemProvider alloc] initWithDelegate:self propertySource:v4];
    v18 = [(AEAssetBaseActivityItemProvider *)v12 propertyProvider];
    if ([v18 isStoreAsset])
    {
    }

    else
    {
      v19 = sub_12148(v12, 0);

      if ((v19 & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    [(AEAssetActivityItemProvider *)self setUrlProvider:v12];
    v13 = [(AEAnnotationLinkPresentationItemProvider *)v11 arrayByAddingObject:v12];
    goto LABEL_13;
  }

  if (v6 == 1)
  {
    v7 = [(AEAssetActivityItemProvider *)self annotations];
    v12 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGroupHTMLActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    [(AEAssetURLActivityItemProvider *)v12 setCitationsAllowed:v3];
    [(AEAssetURLActivityItemProvider *)v12 setPaginationDataSource:v5];
    v11 = [(AEAnnotationActivityItemProviderSource *)[AEAnnotationLinkPresentationItemProvider alloc] initWithAnnotations:v7 propertySource:v4];
    v29[0] = v12;
    v29[1] = v11;
    v13 = [NSArray arrayWithObjects:v29 count:2];
LABEL_13:
    v20 = v13;
LABEL_16:

    v11 = v20;
    goto LABEL_17;
  }

  if (v6)
  {
    v11 = &__NSArray0__struct;
    goto LABEL_19;
  }

  v7 = [(AEAssetActivityItemProvider *)self annotations];
  v8 = [(AEAssetLinkPresentationActivityItemProvider *)v7 objectAtIndexedSubscript:0];
  v9 = [v8 annotationHasNote];

  if (v3 | v9)
  {
    v10 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGroupHTMLActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    [v10 setCitationsAllowed:v3];
    [v10 setPaginationDataSource:v5];
    v31 = v10;
    v11 = [NSArray arrayWithObjects:&v31 count:1];

    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v11 = &__NSArray0__struct;
  if (v3)
  {
LABEL_15:
    v12 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationFacebookActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    v21 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTwitterWeiboActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    v22 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTextActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    v23 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationAirDropTextActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    v24 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGenericTextActivityItemProvider activityItemProviderSourceWithAnnotations:v7 propertySource:v4];
    [(AEAssetURLActivityItemProvider *)v12 setCitationsAllowed:1];
    [(AEAnnotationActivityItemProviderSource *)v21 setCitationsAllowed:1];
    [v22 setCitationsAllowed:1];
    [v23 setCitationsAllowed:1];
    [v24 setCitationsAllowed:1];
    [(AEAssetURLActivityItemProvider *)v12 setPaginationDataSource:v5];
    v27 = v21;
    [(AEAnnotationActivityItemProviderSource *)v21 setPaginationDataSource:v5];
    [v22 setPaginationDataSource:v5];
    [v23 setPaginationDataSource:v5];
    [v24 setPaginationDataSource:v5];
    v30[0] = v12;
    v30[1] = v21;
    v30[2] = v22;
    v30[3] = v23;
    v30[4] = v24;
    v25 = [NSArray arrayWithObjects:v30 count:5];
    v20 = [(AEAnnotationLinkPresentationItemProvider *)v11 arrayByAddingObjectsFromArray:v25];

    v11 = v27;
    goto LABEL_16;
  }

LABEL_18:

LABEL_19:

  return v11;
}

- (BOOL)itemProviderSource:(id)a3 shouldShareActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEAssetActivityItemProvider *)self notesProvider];
  v9 = [v8 supportsActivityType:v7];

  v10 = [v6 propertyProvider];
  v11 = [v10 isStoreAsset];

  v12 = sub_12148(v6, v7);
  v13 = [(AEAssetActivityItemProvider *)self textProvider];

  if (v13 == v6)
  {
    if ((v11 | v12))
    {
      v18 = [(AEAssetActivityItemProvider *)self urlProvider];
      v17 = v18 == 0;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v14 = [(AEAssetActivityItemProvider *)self urlProvider];

    if (v14 == v6)
    {
      if (v9)
      {
        v17 = v12;
      }

      else
      {
        v17 = v11 | v12;
      }
    }

    else
    {
      v15 = [(AEAssetActivityItemProvider *)self notesProvider];
      v16 = v15 == v6;

      v17 = v16 & v9 & v11;
    }
  }

  return v17 & 1;
}

- (AEAnnotationPaginationDataSource)paginationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationDataSource);

  return WeakRetained;
}

@end