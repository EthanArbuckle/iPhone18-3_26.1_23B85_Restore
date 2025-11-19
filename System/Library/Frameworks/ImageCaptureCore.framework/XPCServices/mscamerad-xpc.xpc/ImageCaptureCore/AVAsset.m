@interface AVAsset
- (BOOL)decodableVideoNamed:(id)a3 width:(double *)a4 height:(double *)a5;
- (unsigned)videoOrientation;
@end

@implementation AVAsset

- (unsigned)videoOrientation
{
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x5010000000;
  v16 = &unk_100020021;
  v4 = *&CGAffineTransformIdentity.c;
  v17 = *&CGAffineTransformIdentity.a;
  v18 = v4;
  v19 = *&CGAffineTransformIdentity.tx;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __45__AVAsset_VideoOrientation__videoOrientation__block_invoke;
  v10[3] = &unk_1000248A0;
  v12 = &v13;
  v5 = v3;
  v11 = v5;
  [(AVAsset *)self loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v10];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v14[4];
  if (v6 != 0.0)
  {
    goto LABEL_10;
  }

  v7 = v14[5];
  if (v7 != 1.0 || v14[6] != -1.0 || v14[7] != 0.0)
  {
    if (v7 == -1.0 && v14[6] == 1.0 && v14[7] == 0.0)
    {
      v8 = 6;
      goto LABEL_11;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v8 = 8;
LABEL_11:
  if (v6 == 1.0 && v14[5] == 0.0 && v14[6] == 0.0 && v14[7] == 1.0)
  {
    v8 = 1;
  }

  if (v6 == -1.0 && v14[5] == 0.0 && v14[6] == 0.0 && v14[7] == -1.0)
  {
    v8 = 3;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __45__AVAsset_VideoOrientation__videoOrientation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = v4;
    if (v4)
    {
      [v4 preferredTransform];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v6 = *(*(a1 + 40) + 8);
    v6[2] = v7;
    v6[3] = v8;
    v6[4] = v9;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)decodableVideoNamed:(id)a3 width:(double *)a4 height:(double *)a5
{
  v8 = a3;
  v9 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3010000000;
  v23[3] = &unk_100020021;
  v24 = CGSizeZero;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3010000000;
  v21[3] = &unk_100020021;
  v22 = v24;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __62__AVAsset_VideoOrientation__decodableVideoNamed_width_height___block_invoke;
  v13[3] = &unk_1000248C8;
  v16 = &v25;
  v17 = v23;
  v18 = v21;
  v19 = a5;
  v20 = a4;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [(AVAsset *)self loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v13];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v26 + 24);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);

  return self;
}

void __62__AVAsset_VideoOrientation__decodableVideoNamed_width_height___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v33;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v32 + 1) + 8 * i) isDecodable])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v6);
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v9 = [v4 objectAtIndexedSubscript:0];
      v10 = [v9 formatDescriptions];
      if ([v10 count])
      {
        v11 = [v10 objectAtIndexedSubscript:0];

        *(*(*(a1 + 56) + 8) + 32) = CMVideoFormatDescriptionGetPresentationDimensions(v11, 1u, 1u);
        v12 = *(*(a1 + 56) + 8);
        if (v9)
        {
          [v9 preferredTransform];
          v13 = *buf;
          v14 = *&buf[16];
        }

        else
        {
          v13 = 0uLL;
          v14 = 0uLL;
        }

        *(*(*(a1 + 64) + 8) + 32) = vmlaq_n_f64(vmulq_n_f64(v14, *(v12 + 40)), v13, *(v12 + 32));
        *(*(*(a1 + 64) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32);
        *(*(*(a1 + 64) + 8) + 40) = *(*(*(a1 + 56) + 8) + 40);
        **(a1 + 72) = *(*(*(a1 + 64) + 8) + 40);
        **(a1 + 80) = *(*(*(a1 + 64) + 8) + 32);
        goto LABEL_32;
      }

      __ICOSLogCreate();
      v19 = *(a1 + 32);
      if ([v19 length]>= 0x15)
      {
        v25 = [v19 substringWithRange:0, 18];
        v26 = [v25 stringByAppendingString:@".."];

        v19 = v26;
      }

      v27 = [NSString stringWithFormat:@"AVAsset: missing format descriptions", v32];
      v28 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v19;
        v30 = v28;
        v31 = [v19 UTF8String];
        *buf = 136446466;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

LABEL_29:
      goto LABEL_32;
    }

    __ICOSLogCreate();
    v9 = *(a1 + 32);
    if ([v9 length] >= 0x15)
    {
      v20 = [v9 substringWithRange:{0, 18}];
      v21 = [v20 stringByAppendingString:@".."];

      v9 = v21;
    }

    v10 = [NSString stringWithFormat:@"AVAsset: is not decodable", v32];
    v22 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v9;
      v19 = v22;
      v24 = [v9 UTF8String];
      *buf = 136446466;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      goto LABEL_23;
    }
  }

  else
  {
    __ICOSLogCreate();
    v9 = *(a1 + 32);
    if ([v9 length] >= 0x15)
    {
      v15 = [v9 substringWithRange:{0, 18}];
      v16 = [v15 stringByAppendingString:@".."];

      v9 = v16;
    }

    v10 = [NSString stringWithFormat:@"AVAsset: contains no tracks"];
    v17 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v9;
      v19 = v17;
      *buf = 136446466;
      *&buf[4] = [v9 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v10;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      goto LABEL_29;
    }
  }

LABEL_32:

  dispatch_semaphore_signal(*(a1 + 40));
}

@end