@interface APFSFileSystem
- (id)startCheckWithTask:(id)a3 options:(id)a4 error:(id *)a5;
- (id)startFormatWithTask:(id)a3 options:(id)a4 error:(id *)a5;
- (id)syncRead:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6;
- (void)dispatchAsyncBlock:(id)a3;
- (void)loadResource:(id)a3 options:(id)a4 replyHandler:(id)a5;
- (void)probeResource:(id)a3 replyHandler:(id)a4;
- (void)unloadResource:(id)a3 options:(id)a4 replyHandler:(id)a5;
@end

@implementation APFSFileSystem

- (void)loadResource:(id)a3 options:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[APFSFileSystem loadResource:options:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:start", &buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [FSBlockDeviceResource dynamicCast:v8];
    resource = self->_resource;
    self->_resource = v12;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [v9 taskOptions];
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v16)
    {
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v15 |= [*(*(&v34 + 1) + 8 * i) containsString:@"-f"];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v16);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v43 = 0x3032000000;
    v44 = sub_100058AA4;
    v45 = sub_100058AB4;
    v46 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100058AA4;
    v32 = sub_100058AB4;
    v33 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100058ABC;
    v27[3] = &unk_1000E4FB8;
    v27[4] = &v28;
    v27[5] = &buf;
    [(APFSFileSystem *)self probeResource:v8 replyHandler:v27];
    if (v29[5])
    {
      if ((v15 & 1) == 0)
      {
        v10[2](v10, 0);
        goto LABEL_22;
      }
    }

    else
    {
      if ([*(*(&buf + 1) + 40) result] == 3 || objc_msgSend(*(*(&buf + 1) + 40), "result") == 2)
      {
        v22 = fskit_std_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [*(*(&buf + 1) + 40) containerID];
          *v38 = 136315394;
          v39 = "[APFSFileSystem loadResource:options:replyHandler:]";
          v40 = 2112;
          v41 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: loaded resource with ID (%@)", v38, 0x16u);
        }

        v24 = +[FSContainerStatus ready];
        [(APFSFileSystem *)self setContainerStatus:v24];

        (v10[2])(v10, &__NSArray0__struct, 0);
        goto LABEL_22;
      }

      if ((v15 & 1) == 0)
      {
        if ([*(*(&buf + 1) + 40) result])
        {
          v25 = [NSError errorWithDomain:FSKitErrorDomain code:4503 userInfo:0];
          v26 = [FSContainerStatus notReadyWithStatus:v25];
          [(APFSFileSystem *)self setContainerStatus:v26];
        }

        v19 = fs_errorForPOSIXError();
        (v10[2])(v10, 0, v19);
        goto LABEL_14;
      }
    }

    v19 = fs_errorForPOSIXError();
    v20 = [FSContainerStatus notReadyWithStatus:v19];
    [(APFSFileSystem *)self setContainerStatus:v20];

    (v10[2])(v10, 0, v19);
LABEL_14:

LABEL_22:
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&buf, 8);
    goto LABEL_23;
  }

  v21 = fs_errorForPOSIXError();
  (v10[2])(v10, 0, v21);

LABEL_23:
}

- (void)unloadResource:(id)a3 options:(id)a4 replyHandler:(id)a5
{
  resource = self->_resource;
  if (resource)
  {
    self->_resource = 0;
    v7 = a5;

    v8 = 0;
  }

  else
  {
    v9 = a5;
    v8 = fs_errorForPOSIXError();
  }

  v10 = v8;
  (*(a5 + 2))(a5);
}

- (id)syncRead:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6
{
  v13 = 0;
  v7 = [a3 readInto:a4 startingAt:a5 length:a6 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = v8;
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7B04(v9, v10);
    }
  }

  else if (v7 == a6)
  {
    v9 = 0;
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7B98();
    }

    v9 = fs_errorForPOSIXError();
  }

  return v9;
}

- (void)probeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 kind] == 1)
  {
    v8 = [FSBlockDeviceResource dynamicCast:v6];
    v9 = [v8 blockSize];
    if (v9 <= 0x1000)
    {
      v10 = 4096;
    }

    else
    {
      v10 = v9;
    }

    v11 = [[NSMutableData alloc] initWithLength:v10];
    v12 = -[APFSFileSystem syncRead:into:startingAt:length:](self, "syncRead:into:startingAt:length:", v8, [v11 mutableBytes], 0, v10);
    if (!v12)
    {
      v13 = [v11 mutableBytes];
      if (!nx_check_superblock(v13, 0x10001u, 0, v14, v15))
      {
        v23 = *(v13 + 72);
        v18 = [[NSUUID alloc] initWithUUIDBytes:&v23];
        v19 = [FSContainerIdentifier alloc];
        v20 = [v19 initWithUUID:{v18, v23}];
        if ((*(v13 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          v21 = [FSProbeResult resultWithResult:1 name:0 containerID:v20];
          v7[2](v7, v21, 0);
        }

        else
        {
          if (*(v13 + 7))
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

          v21 = [FSProbeResult resultWithResult:v22 name:0 containerID:v20];
          v7[2](v7, v21, 0);
        }

        goto LABEL_9;
      }

      v12 = fs_errorForPOSIXError();
    }

    v16 = v12;
    v7[2](v7, 0, v12);

LABEL_9:
    goto LABEL_13;
  }

  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "[APFSFileSystem probeResource:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Given device is not a block device", &v23, 0xCu);
  }

  v11 = fs_errorForPOSIXError();
  (v7)[2](v7, 0, v11);
LABEL_13:
}

- (void)dispatchAsyncBlock:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  dispatch_async(v4, a3);
}

- (id)startCheckWithTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v10 = objc_alloc_init(NSProgress);
  v11 = [v9 taskOptions];
  v12 = [FSBlockDeviceResource dynamicCast:self->_resource];
  v13 = &unk_100103000;
  v42 = a5;
  if (!v12)
  {
    v31 = 0;
    v14 = 0;
LABEL_20:
    v32 = 0;
    v21 = 0;
    goto LABEL_33;
  }

  fsck_apfs_state_init(&v56);
  v14 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  if (!v14)
  {
    v31 = 0;
    goto LABEL_20;
  }

  v15 = [v8 connection];
  v16 = *v14;
  *v14 = v15;

  v38 = self;
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = v14[2];
  v14[2] = v17;

  qword_1001037A0 = v14;
  LODWORD(v58) = 1;
  [v10 setTotalUnitCount:2];
  if (![v11 count])
  {
    v21 = 0;
    goto LABEL_26;
  }

  v39 = v10;
  v40 = v9;
  v41 = v8;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    v23 = [v11 objectAtIndexedSubscript:v19];
    if ([v23 isEqual:@"-q"])
    {
      BYTE8(v58) = 1;
      if ((v20 & 1) == 0)
      {
        v20 = 0;
        LODWORD(v58) = 1;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ([v23 isEqual:@"-n"])
    {
      v22 = 1;
      LODWORD(v58) = 1;
      goto LABEL_13;
    }

    if ([v23 isEqual:@"-y"])
    {
      LODWORD(v58) = 2;
      BYTE9(v58) = 0;
LABEL_12:
      v20 = 1;
      goto LABEL_13;
    }

    if ([v23 isEqual:@"-E"])
    {
      v21 = strdup("pass");
      if (!v21)
      {

        v31 = 0;
        v32 = 0;
        v9 = v40;
        v8 = v41;
        v10 = v39;
        goto LABEL_32;
      }
    }

LABEL_13:

    ++v19;
  }

  while (v19 < [v11 count]);
  if (v20 & v22)
  {
    log_err("%s:%d: Invalid options can't have -n (check only) and -y (repair) together \n", v24, v25, v26, v27, v28, v29, v30, "[APFSFileSystem startCheckWithTask:options:error:]");
    v31 = 0;
    v32 = 0;
    v9 = v40;
    v8 = v41;
    v10 = v39;
    goto LABEL_32;
  }

  v9 = v40;
  v8 = v41;
  v10 = v39;
LABEL_26:
  v33 = [v12 devicePath];
  v31 = strdup([v33 UTF8String]);

  if (!v31)
  {
    v32 = 0;
    goto LABEL_32;
  }

  v13 = &unk_100103000;
  if (([v12 fileDescriptor] & 0x80000000) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = malloc_type_malloc(0x28uLL, 0x1010040E0C58372uLL);
    if (v32)
    {
      v32[7] = [v12 fileDescriptor];
      v32[4] = [v12 physicalBlockSize];
      v32[2] = [v12 blockCount];
      v32[3] = [v12 blockSize];
      *(v32 + 24) = [v12 isWritable];
      v32[5] = [v12 partitionBase];
      v34 = [v12 devicePath];
      *v32 = strdup([v34 UTF8String]);

      if (*v32)
      {
        v32[8] = [v12 state];
        *(&v60 + 1) = v21;
        v61 = v32;
        *&v56 = v31;
        fsck_apfs_init(0, &v56);
        [v10 setCompletedUnitCount:1];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000594CC;
        v43[3] = &unk_1000E4FE0;
        v44 = v8;
        v35 = v10;
        v49 = v58;
        v50 = v59;
        v51 = v60;
        v47 = v56;
        v48 = v57;
        v45 = v35;
        v46 = v14;
        v52 = v61;
        v53 = v32;
        v54 = v21;
        v55 = v31;
        [(APFSFileSystem *)v38 dispatchAsyncBlock:v43];
        *v42 = 0;
        v36 = v35;

        goto LABEL_36;
      }

LABEL_32:
      v13 = &unk_100103000;
    }
  }

LABEL_33:
  *v42 = fs_errorForPOSIXError();
  free(v14);
  v13[244] = 0;
  free(v21);
  free(v31);
  if (v32)
  {
    free(*v32);
    free(v32);
  }

  v36 = 0;
LABEL_36:

  return v36;
}

- (id)startFormatWithTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  memset(__str, 0, sizeof(__str));
  v62 = 0;
  *out = 0u;
  v61 = 0u;
  v9 = [a4 taskOptions];
  v10 = [FSBlockDeviceResource dynamicCast:self->_resource];
  v11 = objc_alloc_init(NSProgress);
  v12 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = [v8 connection];
  v14 = *v12;
  *v12 = v13;

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = v12[2];
  v12[2] = v15;

  qword_1001037A0 = v12;
  parse_nx_format_options(0, out);
  v17 = malloc_type_malloc(0x28uLL, 0x1010040E0C58372uLL);
  if (!v17)
  {
LABEL_29:
    free(v12);
    qword_1001037A0 = 0;
    if (!a5)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v18 = v17;
  v17[7] = [v10 fileDescriptor];
  v18[4] = [v10 physicalBlockSize];
  v18[2] = [v10 blockCount];
  v18[3] = [v10 blockSize];
  *(v18 + 24) = [v10 isWritable];
  v18[5] = [v10 partitionBase];
  v19 = [v10 devicePath];
  *v18 = strdup([v19 UTF8String]);

  if (!*v18)
  {
    free(v12);
    goto LABEL_41;
  }

  v18[8] = [v10 state];
  v62 = v18;
  [v11 setTotalUnitCount:2];
  memset(__src, 0, sizeof(__src));
  parse_apfs_format_options(0, __src);
  if (![v9 count])
  {
    v33 = 0;
    v42 = -1;
    goto LABEL_37;
  }

  v40 = a5;
  v41 = v8;
  v43 = 0;
  v39 = 0;
  v20 = 0;
  v42 = -1;
  do
  {
    v21 = [v9 objectAtIndexedSubscript:v20];
    if (++v20 >= [v9 count])
    {
      v22 = 0;
    }

    else
    {
      v22 = [v9 objectAtIndexedSubscript:v20];
    }

    if ([v21 isEqual:@"-v"])
    {
      snprintf(__str, 0x110uLL, "volname=%s", [v22 UTF8String]);
      if (parse_apfs_format_options(__str, __src))
      {
        v38 = "[APFSFileSystem startFormatWithTask:options:error:]";
        v34 = "%s:%d: invalid value for -v\n";
LABEL_35:
        log_err(v34, v23, v24, v25, v26, v27, v28, v29, v38);

        v8 = v41;
        a5 = v40;
        goto LABEL_40;
      }

      goto LABEL_17;
    }

    if ([v21 isEqual:@"-i"])
    {
      v30 = "case=insensitive";
LABEL_16:
      parse_apfs_format_options(v30, __src);
      goto LABEL_17;
    }

    if ([v21 isEqual:@"-e"])
    {
      v30 = "case=sensitive";
      goto LABEL_16;
    }

    if ([v21 isEqual:@"-E"])
    {
      v31 = "encrypted";
LABEL_24:
      parse_apfs_format_options(v31, __src);
      BYTE4(v43) = 1;
      goto LABEL_17;
    }

    if ([v21 isEqual:@"-S"])
    {
      if ((v43 & 0x100000000) == 0)
      {
        v34 = "invalid option -S should follow -E\n";
        goto LABEL_35;
      }

      snprintf(__str, 0x110uLL, "password=%s", [v22 UTF8String]);
      v31 = __str;
      goto LABEL_24;
    }

    if (([v21 isEqual:@"-A"] & 1) == 0)
    {
      if (![v21 isEqual:@"-D"])
      {
        goto LABEL_17;
      }

      v42 = [v22 intValue];
      v39 = 1;
    }

    LODWORD(v43) = 1;
LABEL_17:
  }

  while (v20 < [v9 count]);
  if (v39)
  {
    BYTE4(v43) = 1;
    LOBYTE(v33) = 1;
    v8 = v41;
    a5 = v40;
    goto LABEL_38;
  }

  v8 = v41;
  a5 = v40;
  v33 = v43;
LABEL_37:
  __strlcpy_chk();
  v43 = v33;
LABEL_38:
  if (!os_variant_has_internal_content() && (v33 & 1) != 0)
  {
LABEL_40:
    free(v12);
LABEL_41:
    qword_1001037A0 = 0;
    free(*v18);
    free(v18);
    if (!a5)
    {
LABEL_42:
      v32 = 0;
      goto LABEL_46;
    }

LABEL_30:
    fs_errorForPOSIXError();
    *a5 = v32 = 0;
    goto LABEL_46;
  }

  v35 = fskit_std_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v58 = "[APFSFileSystem startFormatWithTask:options:error:]";
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: started to format resource", buf, 0xCu);
  }

  [v11 setCompletedUnitCount:1];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100059CB4;
  v44[3] = &unk_1000E5008;
  v45 = v8;
  v36 = v11;
  v46 = v36;
  v55 = v43 & 1;
  v56 = BYTE4(v43);
  memcpy(v48, __src, sizeof(v48));
  v49 = *out;
  v50 = v61;
  v51 = v62;
  v47 = v10;
  v52 = v18;
  v54 = v42;
  v53 = v12;
  [(APFSFileSystem *)self dispatchAsyncBlock:v44];
  v32 = v36;

LABEL_46:

  return v32;
}

@end