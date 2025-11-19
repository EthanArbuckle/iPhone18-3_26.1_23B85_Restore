@interface THAEHelper
- (BOOL)acknowledgeAnnotationProvider:(id)a3 willMergeAnnotationsWithAssetVersionMismatch:(id)a4 assetID:(id)a5 assetURL:(id)a6;
- (BOOL)helperValidateBookAuthorizationWithError:(id *)a3 needsCoordination:(BOOL)a4;
- (THAEHelper)initWithURL:(id)a3 withOptions:(id)a4;
- (id)bookCoverDescription;
- (id)bookDescription;
- (id)helperCoverImage;
- (id)helperMetadataForKey:(id)a3 needsCoordination:(BOOL)a4;
- (id)helperMinifiedController;
- (void)dealloc;
- (void)helperDeletePersistentCache;
- (void)helperViewControllerWithOptions:(id)a3 completion:(id)a4;
@end

@implementation THAEHelper

- (THAEHelper)initWithURL:(id)a3 withOptions:(id)a4
{
  v8.receiver = self;
  v8.super_class = THAEHelper;
  v6 = [(THAEHelper *)&v8 init];
  if (v6)
  {
    v6->mURL = a3;
    v6->mOptions = a4;
  }

  return v6;
}

- (void)dealloc
{
  self->mURL = 0;

  self->mBookDescription = 0;
  self->mBookCoverDescription = 0;

  self->mOptions = 0;
  v3.receiver = self;
  v3.super_class = THAEHelper;
  [(THAEHelper *)&v3 dealloc];
}

- (id)bookDescription
{
  result = self->mBookDescription;
  if (!result)
  {
    result = [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
    self->mBookDescription = result;
  }

  return result;
}

- (id)bookCoverDescription
{
  result = self->mBookCoverDescription;
  if (!result)
  {
    result = [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
    self->mBookCoverDescription = result;
  }

  return result;
}

- (id)helperCoverImage
{
  result = [objc_msgSend(-[THAEHelper url](self "url")];
  if (result)
  {
    v4 = [(THAEHelper *)self url];
    result = +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", [objc_msgSend(v4 URLByAppendingPathComponent:kIMLibraryPlistArtworkName isDirectory:{0), "path"}]);
    if (!result)
    {
      result = [(THAEHelper *)self bookCoverDescription];
      if (result)
      {
        v5 = [-[THAEHelper bookCoverDescription](self "bookCoverDescription")];
        result = +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", [v5 path]);
        if (!result)
        {
          result = [-[THAEHelper bookCoverDescription](self "bookCoverDescription")];
          if (result)
          {
            result = [result dataWithContentsOfFile:objc_msgSend(v5 error:{"path"), 0}];
            if (result)
            {

              return [UIImage imageWithData:result];
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)helperMetadataForKey:(id)a3 needsCoordination:(BOOL)a4
{
  v4 = a4;
  if ([a3 isEqualToString:AEHelperStringMetadataAssetIDKey])
  {
    v7 = [(THAEHelper *)self bookDescription];

    return [v7 annotationID];
  }

  else
  {
    v9 = [+[AEAssetEngine libraryMgr](AEAssetEngine "libraryMgr")];
    if (v9)
    {
      v10 = v9;
      if ([a3 isEqualToString:AEHelperStringMetadataAuthorKey])
      {
        result = [IMLibraryPlist authorFromPlistEntry:v10];
        if (result)
        {
          return result;
        }
      }

      else if ([a3 isEqualToString:AEHelperStringMetadataTitleKey])
      {
        result = [IMLibraryPlist titleFromPlistEntry:v10];
        if (result)
        {
          return result;
        }
      }

      else if ([a3 isEqualToString:AEHelperStringMetadataGenreKey])
      {
        result = [IMLibraryPlist genreFromPlistEntry:v10];
        if (result)
        {
          return result;
        }
      }
    }

    result = [(THAEHelper *)self bookDescription];
    if (result)
    {
      v11 = result;
      if ([a3 isEqualToString:AEHelperStringMetadataAuthorKey])
      {

        return [v11 bookAuthor];
      }

      else if ([a3 isEqualToString:AEHelperStringMetadataTitleKey])
      {

        return [v11 bookTitle];
      }

      else if ([a3 isEqualToString:AEHelperStringMetadataGenreKey])
      {

        return [v11 genre];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)helperDeletePersistentCache
{
  v2 = [-[THAEHelper bookDescription](self "bookDescription")];
  if (v2)
  {
    v3 = v2;
    v5 = 0;
    v4 = +[NSFileManager defaultManager];
    if ([(NSFileManager *)v4 fileExistsAtPath:v3 isDirectory:&v5])
    {
      if (v5 == 1)
      {
        [(NSFileManager *)v4 removeItemAtPath:v3 error:0];
      }
    }
  }
}

- (id)helperMinifiedController
{
  v2 = [[THiBooksMinifiedController alloc] initWithHelper:self];

  return v2;
}

- (void)helperViewControllerWithOptions:(id)a3 completion:(id)a4
{
  v7 = +[THApplePubAssetPlugin sharedPlugin];

  [v7 helper:self viewControllerWithOptions:a3 completion:a4];
}

- (BOOL)helperValidateBookAuthorizationWithError:(id *)a3 needsCoordination:(BOOL)a4
{
  if (a3)
  {
    *a3 = 0;
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_msgSend(-[THAEHelper bookDescription](self "bookDescription")];
    if (!v7 || (v8 = v7, ![v7 length]))
    {
      v22 = [NSError alloc];
      v23 = 0;
      *a3 = [v22 initWithDomain:AssetEngineErrorDomain code:1001 userInfo:0];
LABEL_23:
      objc_autoreleasePoolPop(v6);
      v27 = *a3;
      return v23;
    }

    v9 = +[PFAXPackage rightsInfoForArchiveAtPath:](PFAXPackage, "rightsInfoForArchiveAtPath:", [objc_msgSend(+[BLLibrary defaultBookLibrary](BLLibrary "defaultBookLibrary")]);
    v10 = [PFAXPackage newAllEncryptionInfoFromAssetForArchiveAtPath:v8];
    v11 = v10;
    if (!v9 && ![objc_msgSend(v10 "allKeys")])
    {
      v24 = v11 == 0;
      goto LABEL_19;
    }

    v12 = [[PFDContext alloc] initWithRoot:v8 pVwXvin61ocxeAjqxjwz:v11 andRights:v9];
    v13 = v12;
    v29 = 0;
    if (v12)
    {
      [(PFDContext *)v12 dataRepresentationForEntryName:@"OPS/assets/ncxExtensions.xml" error:&v29];
      v14 = [v29 domain];
      v15 = [v29 code];
      if ([v14 isEqualToString:@"ibookserrors"])
      {
        if (v15 + 42597 > 2)
        {
          if (![PFDContext isBagRefetchRequiredForStatus:v15])
          {
            goto LABEL_16;
          }

          v25 = [NSError alloc];
          v26 = AssetEngineErrorDomain;
          v18 = [v29 userInfo];
          v19 = v25;
          v20 = v26;
          v21 = 2002;
        }

        else
        {
          v16 = [NSError alloc];
          v17 = AssetEngineErrorDomain;
          v18 = [v29 userInfo];
          v19 = v16;
          v20 = v17;
          v21 = 2003;
        }

        *a3 = [v19 initWithDomain:v20 code:v21 userInfo:v18];
      }
    }

LABEL_16:

    if (v13)
    {
      v24 = v29 == 0;
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
    v23 = v24;

    goto LABEL_23;
  }

  return 0;
}

- (BOOL)acknowledgeAnnotationProvider:(id)a3 willMergeAnnotationsWithAssetVersionMismatch:(id)a4 assetID:(id)a5 assetURL:(id)a6
{
  if (a5)
  {
    v11 = [-[THAEHelper bookDescription](self "bookDescription")];
    -[THAnnotationSerializationManager handleAnnotationProvider:willMergeVersionMismatchedAnnotationsWithIncomingAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:](+[THAnnotationSerializationManager annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:](THAnnotationSerializationManager, "annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:", a5, a6, v11, [-[THAEHelper bookDescription](self "bookDescription")], objc_msgSend(objc_msgSend(-[THAEHelper bookDescription](self, "bookDescription"), "asset"), "isManagedBook")), "handleAnnotationProvider:willMergeVersionMismatchedAnnotationsWithIncomingAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:", a3, +[THBookVersion bookVersionWithVersionString:](THBookVersion, "bookVersionWithVersionString:", a4), +[THBookVersion bookVersionWithVersionString:](THBookVersion, "bookVersionWithVersionString:", v11), a5, a6);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  return 0;
}

@end