@interface THAnnotationSearchIndexBuildOperation
- (THAnnotationSearchIndexBuildOperation)initWithDelegate:(id)delegate documentRoot:(id)root;
- (void)main;
@end

@implementation THAnnotationSearchIndexBuildOperation

- (THAnnotationSearchIndexBuildOperation)initWithDelegate:(id)delegate documentRoot:(id)root
{
  v7.receiver = self;
  v7.super_class = THAnnotationSearchIndexBuildOperation;
  result = [(THAnnotationSearchIndexBuildOperation *)&v7 init];
  if (result)
  {
    result->mDelegate = delegate;
    result->mDocumentRoot = root;
  }

  return result;
}

- (void)main
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = +[NSMutableDictionary dictionary];
  annotationSearchIndex = [(THDocumentRoot *)self->mDocumentRoot annotationSearchIndex];
  [(THSearchIndex *)annotationSearchIndex unload];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allAnnotations = [(THAnnotationStorageController *)[(THDocumentRoot *)self->mDocumentRoot annotationController] allAnnotations];
  v7 = [allAnnotations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allAnnotations);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(THAnnotationSearchIndex *)annotationSearchIndex addTermsForAnnotation:v10];
        if ([objc_msgSend(v10 "annotationNote")])
        {
          [v4 setObject:objc_msgSend(v10 forKey:{"annotationNote"), objc_msgSend(v10, "annotationUuid")}];
        }
      }

      v7 = [allAnnotations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(THAnnotationSearchIndexBuildOperationDelegate *)self->mDelegate setAnnotationSearchRefText:v4];
}

@end