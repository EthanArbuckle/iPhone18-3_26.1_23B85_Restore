@interface AEAssetActivityItemProvider
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (AEAssetActivityItemProvider)initWithAnnotation:(id)annotation propertySource:(id)source;
- (AEAssetActivityItemProvider)initWithAnnotations:(id)annotations propertySource:(id)source;
- (AEAssetActivityItemProvider)initWithPropertySource:(id)source;
- (BOOL)itemProviderSource:(id)source shouldShareActivityType:(id)type;
- (id)expandedItemProviders;
- (id)pasteboardString;
- (void)dealloc;
@end

@implementation AEAssetActivityItemProvider

- (AEAssetActivityItemProvider)initWithAnnotation:(id)annotation propertySource:(id)source
{
  sourceCopy = source;
  v7 = [NSArray arrayWithObject:annotation];
  v8 = [(AEAssetActivityItemProvider *)self initWithAnnotations:v7 propertySource:sourceCopy];

  if (v8)
  {
    v8->_shareType = 0;
  }

  return v8;
}

- (AEAssetActivityItemProvider)initWithAnnotations:(id)annotations propertySource:(id)source
{
  annotationsCopy = annotations;
  v8 = [(AEAssetActivityItemProvider *)self initWithPropertySource:source];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_annotations, annotations);
    v9->_shareType = 1;
  }

  return v9;
}

- (AEAssetActivityItemProvider)initWithPropertySource:(id)source
{
  sourceCopy = source;
  v5 = [(AEAssetActivityItemProvider *)self init];
  if (v5)
  {
    v6 = [sourceCopy copy];
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
  shareType = [(AEAssetActivityItemProvider *)self shareType];
  if (shareType == 2)
  {
    propertySource = [(AEAssetActivityItemProvider *)self propertySource];
    v8 = [AEAssetTextActivityItemProvider textItemWithPropertySource:propertySource];
  }

  else
  {
    if (shareType || ![(AEAssetActivityItemProvider *)self areCitationsAllowed])
    {
      v9 = 0;
      goto LABEL_8;
    }

    annotations = [(AEAssetActivityItemProvider *)self annotations];
    propertySource2 = [(AEAssetActivityItemProvider *)self propertySource];
    propertySource = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTextActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource2];

    [propertySource setCitationsAllowed:1];
    paginationDataSource = [(AEAssetActivityItemProvider *)self paginationDataSource];
    [propertySource setPaginationDataSource:paginationDataSource];

    v8 = [propertySource activityViewController:0 itemForActivityType:UIActivityTypeCopyToPasteboard];
  }

  v9 = v8;

LABEL_8:

  return v9;
}

- (id)expandedItemProviders
{
  areCitationsAllowed = [(AEAssetActivityItemProvider *)self areCitationsAllowed];
  propertySource = [(AEAssetActivityItemProvider *)self propertySource];
  paginationDataSource = [(AEAssetActivityItemProvider *)self paginationDataSource];
  shareType = [(AEAssetActivityItemProvider *)self shareType];
  if (shareType == 2)
  {
    v14 = [[AEAssetTextActivityItemProvider alloc] initWithDelegate:self propertySource:propertySource];
    [(AEAssetActivityItemProvider *)self setTextProvider:v14];

    v15 = [[AEAssetNotesActivityItemProvider alloc] initWithDelegate:self propertySource:propertySource];
    [(AEAssetActivityItemProvider *)self setNotesProvider:v15];

    annotations = [[AEAssetLinkPresentationActivityItemProvider alloc] initWithDelegate:self propertySource:propertySource];
    textProvider = [(AEAssetActivityItemProvider *)self textProvider];
    v28[0] = textProvider;
    notesProvider = [(AEAssetActivityItemProvider *)self notesProvider];
    v28[1] = notesProvider;
    v28[2] = annotations;
    v11 = [NSArray arrayWithObjects:v28 count:3];

    v12 = [[AEAssetURLActivityItemProvider alloc] initWithDelegate:self propertySource:propertySource];
    propertyProvider = [(AEAssetBaseActivityItemProvider *)v12 propertyProvider];
    if ([propertyProvider isStoreAsset])
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

  if (shareType == 1)
  {
    annotations = [(AEAssetActivityItemProvider *)self annotations];
    v12 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGroupHTMLActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    [(AEAssetURLActivityItemProvider *)v12 setCitationsAllowed:areCitationsAllowed];
    [(AEAssetURLActivityItemProvider *)v12 setPaginationDataSource:paginationDataSource];
    v11 = [(AEAnnotationActivityItemProviderSource *)[AEAnnotationLinkPresentationItemProvider alloc] initWithAnnotations:annotations propertySource:propertySource];
    v29[0] = v12;
    v29[1] = v11;
    v13 = [NSArray arrayWithObjects:v29 count:2];
LABEL_13:
    v20 = v13;
LABEL_16:

    v11 = v20;
    goto LABEL_17;
  }

  if (shareType)
  {
    v11 = &__NSArray0__struct;
    goto LABEL_19;
  }

  annotations = [(AEAssetActivityItemProvider *)self annotations];
  v8 = [(AEAssetLinkPresentationActivityItemProvider *)annotations objectAtIndexedSubscript:0];
  annotationHasNote = [v8 annotationHasNote];

  if (areCitationsAllowed | annotationHasNote)
  {
    v10 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGroupHTMLActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    [v10 setCitationsAllowed:areCitationsAllowed];
    [v10 setPaginationDataSource:paginationDataSource];
    v31 = v10;
    v11 = [NSArray arrayWithObjects:&v31 count:1];

    if (!areCitationsAllowed)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v11 = &__NSArray0__struct;
  if (areCitationsAllowed)
  {
LABEL_15:
    v12 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationFacebookActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    v21 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTwitterWeiboActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    v22 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationTextActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    v23 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationAirDropTextActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    v24 = [(AEAnnotationActivityItemProviderSource *)AEAnnotationGenericTextActivityItemProvider activityItemProviderSourceWithAnnotations:annotations propertySource:propertySource];
    [(AEAssetURLActivityItemProvider *)v12 setCitationsAllowed:1];
    [(AEAnnotationActivityItemProviderSource *)v21 setCitationsAllowed:1];
    [v22 setCitationsAllowed:1];
    [v23 setCitationsAllowed:1];
    [v24 setCitationsAllowed:1];
    [(AEAssetURLActivityItemProvider *)v12 setPaginationDataSource:paginationDataSource];
    v27 = v21;
    [(AEAnnotationActivityItemProviderSource *)v21 setPaginationDataSource:paginationDataSource];
    [v22 setPaginationDataSource:paginationDataSource];
    [v23 setPaginationDataSource:paginationDataSource];
    [v24 setPaginationDataSource:paginationDataSource];
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

- (BOOL)itemProviderSource:(id)source shouldShareActivityType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  notesProvider = [(AEAssetActivityItemProvider *)self notesProvider];
  v9 = [notesProvider supportsActivityType:typeCopy];

  propertyProvider = [sourceCopy propertyProvider];
  isStoreAsset = [propertyProvider isStoreAsset];

  v12 = sub_12148(sourceCopy, typeCopy);
  textProvider = [(AEAssetActivityItemProvider *)self textProvider];

  if (textProvider == sourceCopy)
  {
    if ((isStoreAsset | v12))
    {
      urlProvider = [(AEAssetActivityItemProvider *)self urlProvider];
      v17 = urlProvider == 0;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    urlProvider2 = [(AEAssetActivityItemProvider *)self urlProvider];

    if (urlProvider2 == sourceCopy)
    {
      if (v9)
      {
        v17 = v12;
      }

      else
      {
        v17 = isStoreAsset | v12;
      }
    }

    else
    {
      notesProvider2 = [(AEAssetActivityItemProvider *)self notesProvider];
      v16 = notesProvider2 == sourceCopy;

      v17 = v16 & v9 & isStoreAsset;
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