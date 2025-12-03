@interface IllustratorPreviewProvider
- (BOOL)_illustratorFileContainsPDFAtURL:(id)l type:(id)type;
- (void)providePreviewForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation IllustratorPreviewProvider

- (void)providePreviewForFileRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  fileURL = [request fileURL];
  NSLog(@"Getting content type for file at url: %@", fileURL);
  v19 = 0;
  v18 = 0;
  v8 = [fileURL getResourceValue:&v19 forKey:NSURLContentTypeKey error:&v18];
  v9 = v19;
  v10 = v18;
  v11 = v9;
  if (v8)
  {
    if ([(IllustratorPreviewProvider *)self _illustratorFileContainsPDFAtURL:fileURL type:v11])
    {
      NSLog(@"The Illustrator document contains PDF data.");
      v12 = [QLPreviewReply alloc];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100000E64;
      v16[3] = &unk_100004118;
      v17 = fileURL;
      v13 = [v12 initForPDFWithPageSize:v16 documentCreationBlock:{500.0, 500.0}];
      handlerCopy[2](handlerCopy, v13, 0);
    }

    else
    {
      NSLog(@"%@", @"The Illustrator document doesn't contain PDF data.");
      v20 = NSDebugDescriptionErrorKey;
      v21 = @"The Illustrator document doesn't contain PDF data.";
      v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:v14];

      (handlerCopy)[2](handlerCopy, 0, v15);
    }
  }

  else
  {
    NSLog(@"The content type of the edited copy could not be determined: %@", v10);
    (handlerCopy)[2](handlerCopy, 0, v10);
  }
}

- (BOOL)_illustratorFileContainsPDFAtURL:(id)l type:(id)type
{
  lCopy = l;
  typeCopy = type;
  v7 = [UTType typeWithIdentifier:@"com.adobe.illustrator.ai-image"];
  v8 = v7;
  v9 = 0;
  if (typeCopy && v7)
  {
    if ([typeCopy conformsToType:v7] && CFURLGetFileSystemRepresentation(lCopy, 1u, buffer, 1024) && (v10 = open(buffer, 0, 0), v10 != -1))
    {
      v11 = v10;
      v9 = read(v10, &v13, 4uLL) == 4 && v13 == 1178882085;
      close(v11);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end