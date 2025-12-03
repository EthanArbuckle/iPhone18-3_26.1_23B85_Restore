@interface CRLSEImportItemFactory
- (BOOL)p_file:(id)p_file conformsTo:(id)to;
- (BOOL)p_stringIsConsideredEmpty:(id)empty;
- (BOOL)p_urlIsValidImage:(id)image;
- (CRLSEImportItemFactory)init;
- (id)p_makeEmptyStringCharacterSet;
- (void)createImportItems:(id)items skipTextAttachments:(BOOL)attachments completion:(id)completion;
- (void)p_logItemProviderError:(id)error error:(id)a4;
@end

@implementation CRLSEImportItemFactory

- (CRLSEImportItemFactory)init
{
  v7.receiver = self;
  v7.super_class = CRLSEImportItemFactory;
  v2 = [(CRLSEImportItemFactory *)&v7 init];
  v3 = v2;
  if (v2)
  {
    p_makeEmptyStringCharacterSet = [(CRLSEImportItemFactory *)v2 p_makeEmptyStringCharacterSet];
    emptyStringCharacterSet = v3->_emptyStringCharacterSet;
    v3->_emptyStringCharacterSet = p_makeEmptyStringCharacterSet;
  }

  return v3;
}

- (void)createImportItems:(id)items skipTextAttachments:(BOOL)attachments completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v39 = objc_alloc_init(NSMutableArray);
  v7 = dispatch_group_create();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      v11 = 0;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        if (CRLSharingExtensionCat_init_token != -1)
        {
          sub_10007C1F0();
        }

        v13 = CRLSharingExtensionCat_log_t;
        if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_DEBUG))
        {
          sub_10007C218(v65, v13, v12, &v66);
        }

        identifier = [UTTypeURL identifier];
        v15 = [v12 hasItemConformingToTypeIdentifier:identifier];

        if (v15)
        {
          dispatch_group_enter(v7);
          identifier2 = [UTTypeURL identifier];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10000E644;
          v58[3] = &unk_1000A66B0;
          v58[4] = self;
          v59 = v39;
          v60 = v7;
          [v12 loadItemForTypeIdentifier:identifier2 options:0 completionHandler:v58];

          v17 = v59;
LABEL_17:

          goto LABEL_18;
        }

        identifier3 = [UTTypePlainText identifier];
        v19 = [v12 hasItemConformingToTypeIdentifier:identifier3];

        if (v19)
        {
          if (attachments)
          {
            goto LABEL_18;
          }

          dispatch_group_enter(v7);
          identifier4 = [UTTypePlainText identifier];
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_10000E6DC;
          v55[3] = &unk_1000A66D8;
          v55[4] = self;
          v56 = v39;
          v57 = v7;
          [v12 loadItemForTypeIdentifier:identifier4 options:0 completionHandler:v55];

          v17 = v56;
          goto LABEL_17;
        }

        identifier5 = [UTTypeRAWImage identifier];
        v22 = [v12 hasItemConformingToTypeIdentifier:identifier5];

        if (v22)
        {
          dispatch_group_enter(v7);
          identifier6 = [UTTypeRAWImage identifier];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_10000E7C0;
          v52[3] = &unk_1000A6740;
          v52[4] = self;
          v52[5] = v12;
          v53 = v39;
          v54 = v7;
          [v12 loadItemForTypeIdentifier:identifier6 options:0 completionHandler:v52];

          v17 = v53;
          goto LABEL_17;
        }

        identifier7 = [UTTypeImage identifier];
        v25 = [v12 hasItemConformingToTypeIdentifier:identifier7];

        if (v25)
        {
          dispatch_group_enter(v7);
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10000ECB4;
          v49[3] = &unk_1000A6818;
          v49[4] = self;
          v49[5] = v12;
          v50 = v39;
          v51 = v7;
          v26 = [v12 loadFileRepresentationForContentType:UTTypeImage openInPlace:0 completionHandler:v49];

          v17 = v50;
          goto LABEL_17;
        }

        if (([v12 hasItemConformingToTypeIdentifier:@"com.apple.mapkit.map-item"] & 1) == 0)
        {
          identifier8 = [UTTypePDF identifier];
          v28 = [v12 hasItemConformingToTypeIdentifier:identifier8];

          dispatch_group_enter(v7);
          if (v28)
          {
            identifier9 = [UTTypePDF identifier];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_10000F3D4;
            v46[3] = &unk_1000A6740;
            v46[4] = self;
            v46[5] = v12;
            v47 = v39;
            v48 = v7;
            [v12 loadItemForTypeIdentifier:identifier9 options:0 completionHandler:v46];

            v17 = v47;
          }

          else
          {
            identifier10 = [UTTypeData identifier];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10000F750;
            v43[3] = &unk_1000A68A0;
            v43[4] = self;
            v43[5] = v12;
            v44 = v39;
            v45 = v7;
            [v12 loadItemForTypeIdentifier:identifier10 options:0 completionHandler:v43];

            v17 = v44;
          }

          goto LABEL_17;
        }

LABEL_18:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v31 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      v9 = v31;
    }

    while (v31);
  }

  v32 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F888;
  block[3] = &unk_1000A68C8;
  v41 = v39;
  v42 = completionCopy;
  v33 = v39;
  v34 = completionCopy;
  dispatch_group_notify(v7, v32, block);
}

- (void)p_logItemProviderError:(id)error error:(id)a4
{
  errorCopy = error;
  v6 = a4;
  if (CRLSharingExtensionCat_init_token != -1)
  {
    sub_10007C758();
  }

  v7 = CRLSharingExtensionCat_log_t;
  if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10007C76C(v7, errorCopy, v6);
  }
}

- (BOOL)p_urlIsValidImage:(id)image
{
  v8 = kCGImageSourceShouldCache;
  v9 = &__kCFBooleanFalse;
  imageCopy = image;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = CGImageSourceCreateWithURL(imageCopy, v4);

  Count = CGImageSourceGetCount(v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Count != 0;
}

- (id)p_makeEmptyStringCharacterSet
{
  v7 = -4;
  v2 = [NSString stringWithCharacters:&v7 length:1];
  v3 = [NSMutableCharacterSet characterSetWithCharactersInString:v2];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = [v3 copy];

  return v5;
}

- (BOOL)p_stringIsConsideredEmpty:(id)empty
{
  v3 = [empty stringByTrimmingCharactersInSet:self->_emptyStringCharacterSet];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)p_file:(id)p_file conformsTo:(id)to
{
  p_fileCopy = p_file;
  toCopy = to;
  if ([p_fileCopy isFileURL])
  {
    v13 = 0;
    v12 = 0;
    [p_fileCopy getResourceValue:&v13 forKey:NSURLContentTypeKey error:&v12];
    v7 = v13;
    v8 = v12;
    if (v7)
    {
      v9 = [v7 conformsToType:toCopy];
    }

    else
    {
      if (CRLSharingExtensionCat_init_token != -1)
      {
        sub_10007C840();
      }

      v10 = CRLSharingExtensionCat_log_t;
      if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10007C868(p_fileCopy, v10, v8);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end