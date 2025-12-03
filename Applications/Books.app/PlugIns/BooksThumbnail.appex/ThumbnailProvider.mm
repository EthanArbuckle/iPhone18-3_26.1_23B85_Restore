@interface ThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation ThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v6 = BooksThumbsLog();
  fileURL = [requestCopy fileURL];
  [requestCopy maximumSize];
  if (v8 < 8.0)
  {
    v8 = 8.0;
  }

  v10 = fmin(v8, 1024.0);
  if (v9 >= 8.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 8.0;
  }

  v12 = fmin(v11, 1024.0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = fileURL;
    v47 = 2048;
    v48 = v10;
    v49 = 2048;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "provideThumbnailForFileRequest for URL: %{public}@ size: %f,%f", buf, 0x20u);
  }

  if ([BUZipFileArchive isZipArchiveAtURL:fileURL error:0])
  {
    v13 = +[IMLibraryPlist purchasesRepositoryPath];
    v14 = v6;
    v15 = v13;
    v16 = +[NSFileManager defaultManager];
    *buf = 0;
    v17 = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:buf];
    v18 = *buf;

    if ((v17 & 1) == 0 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000018A8();
    }

    v19 = +[NSFileManager defaultManager];
    lastPathComponent = [fileURL lastPathComponent];
    v21 = [v19 bu_nonCollidingNameForFileName:lastPathComponent inDestPath:v15];

    v22 = [v15 stringByAppendingPathComponent:v21];
    v23 = [NSURL fileURLWithPath:v22];

    v45 = 0;
    v24 = [BUZipFileArchive extractArchiveFromURL:fileURL toURL:v23 options:0 error:&v45];
    v25 = v45;
    if (v24)
    {
      v26 = sub_10000141C(v14, v23);
      v27 = +[NSFileManager defaultManager];
      [v27 removeItemAtURL:v23 error:0];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = sub_10000141C(v6, fileURL);
    v25 = 0;
  }

  if (v26)
  {
    v28 = [[UIImage alloc] initWithData:v26];
    v29 = v28;
    if (v28)
    {
      [v28 size];
      v32 = v30;
      v33 = v31;
      if (v30 <= v10 && v31 <= v12)
      {
        goto LABEL_37;
      }

      if (v30 == 0.0 || v31 == 0.0)
      {
        v37 = BooksThumbsLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100001910(v37);
        }
      }

      else
      {
        if (v30 / v31 > v10 / v12)
        {
          v33 = v31 * (v10 / v30);
          v32 = v10;
LABEL_37:
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10000182C;
          v41[3] = &unk_1000041D8;
          v35 = v29;
          v42 = v35;
          v43 = v32;
          v44 = v33;
          v36 = [QLThumbnailReply replyWithContextSize:v41 currentContextDrawingBlock:v32, v33];

          goto LABEL_38;
        }

        if (v30 / v31 < v10 / v12)
        {
          v32 = v30 * (v12 / v31);
LABEL_36:
          v33 = v12;
          goto LABEL_37;
        }
      }

      v32 = v10;
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100001954();
  }

  v35 = 0;
  v36 = 0;
LABEL_38:
  v38 = objc_retainBlock(handlerCopy);
  v39 = v38;
  if (v38)
  {
    (*(v38 + 2))(v38, v36, v25);
  }
}

@end