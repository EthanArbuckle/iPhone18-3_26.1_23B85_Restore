void sub_100000DFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "thumbnailProvider: image: %@ error: %@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100000FDC;
      v13[3] = &unk_100004140;
      v13[4] = v9;
      v14 = v5;
      v11 = *(a1 + 40);
      v15 = 0;
      v16 = v11;
      dispatch_async(v10, v13);

      goto LABEL_8;
    }

    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001324(v12);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
LABEL_8:
}

void sub_100000FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_createPreviewImageDataWithImage:*(a1 + 40)];
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [NSString stringWithFormat:@"%@.png", v4];

  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingPathComponent:v5];

  v13 = 0;
  [v2 writeToFile:v7 options:0 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "thumbnailProvider: failed to save image with error: %@", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = [NSURL fileURLWithPath:v7];
    v12 = [QLThumbnailReply replyWithImageFileURL:v11];

    (*(*(a1 + 56) + 16))();
  }
}

id sub_1000012EC(uint64_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  return [*(a1 + 32) drawAtPoint:{vmulq_f64(vsubq_f64(*(a1 + 40), *(a1 + 56)), _Q1)}];
}