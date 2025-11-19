@interface exfatFileSystem
- (BOOL)isChecksumBootRegionValid:(char *)a3 bytesPerSector:(unint64_t)a4;
- (id)startCheckWithTask:(id)a3 options:(id)a4 error:(id *)a5;
- (id)startFormatWithTask:(id)a3 options:(id)a4 error:(id *)a5;
- (id)syncRead:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6;
- (unsigned)getDirEntrySetChecksum:(exfat_file_entry_set *)a3;
- (void)getVolumeNameAndUUID:(id)a3 useAlt:(BOOL)a4 reply:(id)a5;
- (void)loadResource:(id)a3 options:(id)a4 replyHandler:(id)a5;
- (void)loadVolume:(id)a3 reply:(id)a4;
- (void)probeResource:(id)a3 replyHandler:(id)a4;
- (void)unloadResource:(id)a3 options:(id)a4 replyHandler:(id)a5;
@end

@implementation exfatFileSystem

- (void)loadVolume:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = fs_errorForPOSIXError();
  (*(a4 + 2))(v5, 0, v6);
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
      sub_1000103F8(v9);
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
      sub_100010484();
    }

    v9 = fs_errorForPOSIXError();
  }

  return v9;
}

- (BOOL)isChecksumBootRegionValid:(char *)a3 bytesPerSector:(unint64_t)a4
{
  v4 = 11 * a4;
  if (a4)
  {
    v5 = 0;
    v6 = 0;
    if (v4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 11 * a4;
    }

    do
    {
      if ((v5 - 106) > 6 || ((1 << (v5 - 106)) & 0x43) == 0)
      {
        HIDWORD(v9) = v6;
        LODWORD(v9) = v6;
        v6 = (v9 >> 1) + a3[v5];
      }

      ++v5;
    }

    while (v7 != v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = &a3[v4];
  v11 = &a3[12 * a4];
  do
  {
    v12 = v10;
    if (v10 >= v11)
    {
      break;
    }

    v10 += 4;
  }

  while (*v12 == v6);
  return v12 >= v11;
}

- (unsigned)getDirEntrySetChecksum:(exfat_file_entry_set *)a3
{
  v3 = 0;
  v4 = 0;
  do
  {
    if ((v3 & 0x7FFFFFFFFFFFFFFELL) != 2)
    {
      v4 = ((v4 >> 1) | (v4 << 15)) + *(&a3->var0.var0 + v3);
    }

    ++v3;
  }

  while (32 * a3->var0.var1 + 32 != v3);
  return v4;
}

- (void)getVolumeNameAndUUID:(id)a3 useAlt:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v77 = 0;
  v78 = 0;
  v10 = 12 * [v8 blockSize];
  v11 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
  if (!v11)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100010770();
    }

    v18 = fs_errorForPOSIXError();
    v19 = 0;
    v20 = 0;
    goto LABEL_24;
  }

  v12 = v11;
  if (v6)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(exfatFileSystem *)self syncRead:v8 into:v11 startingAt:v13 length:v10];
  if (v14)
  {
    goto LABEL_22;
  }

  if (*v12 != 0x54414658459076EBLL || *(v12 + 3) != 0x2020205441465845)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001050C();
    }

LABEL_21:

    v14 = fs_errorForPOSIXError();
    goto LABEL_22;
  }

  if (v12[105] << 8 != 256)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001058C();
    }

    goto LABEL_21;
  }

  v21 = v12[108];
  if ((v21 - 13) <= 0xFFFFFFFB)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100010A8C(v12 + 108);
    }

    goto LABEL_21;
  }

  if (12 << v21 > v10)
  {
    v22 = malloc_type_realloc(v12, 12 << v21, 0xE69120DAuLL);
    if (!v22)
    {
      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100010A0C();
      }

      v18 = fs_errorForPOSIXError();
      v19 = 0;
      v20 = 0;
      v12 = 0;
      goto LABEL_23;
    }

    v12 = v22;
    v14 = [(exfatFileSystem *)self syncRead:v8 into:&v22[v10] startingAt:v10 length:(12 << v21) - v10];
    if (v14)
    {
LABEL_22:
      v18 = v14;
      v19 = 0;
      v20 = 0;
      goto LABEL_23;
    }
  }

  v23 = 1 << v21;
  if (![(exfatFileSystem *)self isChecksumBootRegionValid:v12 bytesPerSector:1 << v21])
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001060C();
    }

    goto LABEL_21;
  }

  v24 = v12[109];
  v25 = v12[108];
  if ((v24 + v25) >= 0x1A)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100010988(v12 + 109);
    }

    goto LABEL_21;
  }

  v27 = v12[110];
  if ((v27 - 3) <= 0xFFFFFFFD)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100010904(v12 + 110);
    }

    goto LABEL_21;
  }

  if (v27 == 1 && (*(v12 + 53) & 1) != 0)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100010884();
    }

    goto LABEL_21;
  }

  v28 = *(v12 + 24);
  if (v28 < 2 || v28 > *(v12 + 23) + 1)
  {
    v55 = *(v12 + 24);
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000107F0();
    }

    goto LABEL_21;
  }

  v65 = *(v12 + 24);
  v61 = *(v12 + 23) + 1;
  v29 = *(v12 + 22);
  v30 = malloc_type_calloc(1uLL, 1 << v21, 0x100004077774924uLL);
  if (!v30)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100010770();
    }

    goto LABEL_21;
  }

  v67 = v30;
  v63 = malloc_type_calloc(1uLL, 1 << v21, 0x100004077774924uLL);
  if (!v63)
  {
    v56 = fskit_std_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_100010770();
    }

    v18 = fs_errorForPOSIXError();
    v19 = 0;
    v20 = 0;
    goto LABEL_98;
  }

  v20 = 0;
  v68 = 0;
  v31 = v23 << v24;
  v58 = (v29 << v25);
  v57 = (v23 - 1);
  v32 = v65;
  v62 = (v23 << v24);
  do
  {
    v66 = v32;
    if (v31)
    {
      v59 = v58 + v31 * (v32 - 2);
      v33 = v59;
      do
      {
        v64 = v33;
        v34 = [exfatFileSystem syncRead:"syncRead:into:startingAt:length:" into:v8 startingAt:v67 length:?];
        if (v34)
        {
          goto LABEL_99;
        }

        v35 = 0;
        v36 = v67;
        do
        {
          v37 = *v36;
          if (v37 == 160)
          {
            v44 = *(v36 + 1);
            if (v44 == [(exfatFileSystem *)self getDirEntrySetChecksum:v36])
            {
              v45 = *(v36 + 5);
              v46 = *(v36 + 6);
              v47 = *(v36 + 14);
              LODWORD(v77) = bswap32(*(v36 + 6));
              WORD2(v77) = bswap32(v45) >> 16;
              HIWORD(v77) = bswap32(v46) >> 16;
              v78 = v47;
              v68 = 1;
              goto LABEL_77;
            }

            v37 = *v36;
LABEL_63:
            if (!v37)
            {
              goto LABEL_86;
            }

            goto LABEL_77;
          }

          if (v37 != 131)
          {
            goto LABEL_63;
          }

          v38 = v36[1];
          if ((v38 - 1) > 0xA)
          {
            goto LABEL_77;
          }

          v39 = CFStringCreateWithBytes(kCFAllocatorDefault, v36 + 2, 2 * v38, 0x14000100u, 0);
          cf = v39;
          if (v39)
          {
            MutableCopy = CFStringCreateMutableCopy(0, 0, v39);
            if (MutableCopy)
            {
              v41 = MutableCopy;
              CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
              if (CFStringGetCString(v41, buffer, 36, 0x8000100u))
              {
                v42 = [[NSString alloc] initWithUTF8String:buffer];
                v43 = v20;
                v20 = v42;
              }

              else
              {
                v60 = fskit_std_log();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  sub_10001068C(&v70, &v71);
                }

                v43 = v60;
              }

              CFRelease(cf);
              v50 = v41;
LABEL_76:
              CFRelease(v50);
              goto LABEL_77;
            }
          }

          else
          {
            v48 = fskit_std_log();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_1000106D8(&v74, &v75);
            }
          }

          v49 = fskit_std_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_100010724(&v72, &v73);
          }

          v50 = cf;
          if (cf)
          {
            goto LABEL_76;
          }

LABEL_77:
          v35 += 32;
          v36 += 32;
        }

        while (v35 < v23);
        v33 = v64 + v23;
      }

      while (v64 + v23 - v59 < v62);
    }

    v51 = (4 * v66);
    v52 = *(v12 + 20) + (v51 >> v21);
    if (v52)
    {
      v34 = [(exfatFileSystem *)self syncRead:v8 into:v63 startingAt:v52 << v21 length:1 << v21];
      if (v34)
      {
LABEL_99:
        v18 = v34;
        v19 = 0;
        goto LABEL_89;
      }
    }

    v53 = *&v63[v51 & v57];
    v54 = v53 < 2 || v53 > v61;
    v32 = *&v63[v51 & v57];
    v31 = v62;
  }

  while (!v54);
LABEL_86:
  if ((v68 & 1) == 0)
  {
    uuid_create_md5_from_name(&v77, &unk_100017050, v12 + 100, 4u);
  }

  v19 = [[NSUUID alloc] initWithUUIDBytes:&v77];
  v18 = 0;
LABEL_89:
  free(v63);
LABEL_98:
  free(v67);
LABEL_23:
  free(v12);
LABEL_24:
  v9[2](v9, v20, v19, v18);
}

- (void)probeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000D6A4;
  v47 = sub_10000D6B4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000D6A4;
  v41 = sub_10000D6B4;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000D6A4;
  v35 = sub_10000D6B4;
  v36 = 0;
  if ([v6 kind] == 1)
  {
    v8 = [FSBlockDeviceResource dynamicCast:v6];
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[exfatFileSystem probeResource:replyHandler:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: device matches!", buf, 0xCu);
    }

    v10 = [v8 blockSize];
    v11 = malloc_type_malloc(v10, 0x955AA0CDuLL);
    if (!v11)
    {
      v12 = fskit_std_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100010B10();
      }

      v13 = fs_errorForPOSIXError();
      v14 = v32[5];
      v32[5] = v13;
    }

    if (v32[5] || ([(exfatFileSystem *)self syncRead:v8 into:v11 startingAt:0 length:v10], v15 = objc_claimAutoreleasedReturnValue(), v16 = v32[5], v32[5] = v15, v16, v32[5]))
    {
      v17 = 0;
LABEL_11:
      if (v11)
      {
        free(v11);
      }

      v7[2](v7, v17, v32[5]);
      goto LABEL_17;
    }

    v20 = +[FSProbeResult notRecognizedProbeResult];
    if (*v11 == 0x54414658459076EBLL && *(v11 + 3) == 0x2020205441465845)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000D6BC;
      v30[3] = &unk_10001C658;
      v30[4] = &v31;
      v30[5] = &v43;
      v30[6] = &v37;
      [(exfatFileSystem *)self getVolumeNameAndUUID:v8 useAlt:0 reply:v30];
      if (!v32[5])
      {
        v28 = v44[5];
        v26 = [v38[5] fs_containerIdentifier];
        v27 = [FSProbeResult usableProbeResultWithName:v28 containerID:v26];
        goto LABEL_33;
      }
    }

    else
    {
      v22 = -[exfatFileSystem syncRead:into:startingAt:length:](self, "syncRead:into:startingAt:length:", v8, v11, 12 * [v8 blockSize], v10);
      v23 = v32[5];
      v32[5] = v22;

      if (!v32[5] && *v11 == 0x54414658459076EBLL && *(v11 + 3) == 0x2020205441465845)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000D770;
        v29[3] = &unk_10001C658;
        v29[4] = &v31;
        v29[5] = &v43;
        v29[6] = &v37;
        [(exfatFileSystem *)self getVolumeNameAndUUID:v8 useAlt:1 reply:v29];
        if (!v32[5])
        {
          v25 = v44[5];
          v26 = [v38[5] fs_containerIdentifier];
          v27 = [FSProbeResult usableProbeResultWithName:v25 containerID:v26];
LABEL_33:
          v17 = v27;

          goto LABEL_11;
        }
      }
    }

    v17 = v20;
    goto LABEL_11;
  }

  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v50 = "[exfatFileSystem probeResource:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Given device is not a block device", buf, 0xCu);
  }

  v19 = fs_errorForPOSIXError();
  (v7)[2](v7, 0, v19);

  v8 = 0;
  v17 = 0;
LABEL_17:
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

- (id)startCheckWithTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v34 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSProgress);
  v43 = 0;
  v44 = &v43;
  v45 = 0x4810000000;
  v46 = &unk_10001B54A;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  *a5 = 0;
  v36 = v9;
  v35 = [FSTaskProgressUpdater progressUpdaterWithProgress:?];
  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v51 = "[exfatFileSystem startCheckWithTask:options:error:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: started to check resource", buf, 0xCu);
  }

  v11 = malloc_type_malloc(0x18uLL, 0x1080040622C3295uLL);
  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v11[1];
    v11[1] = v12;

    objc_storeStrong(v11, a3);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(v11 + 4) = 2;
    while (1)
    {
      v17 = [v8 taskOptions];
      v18 = v16 < [v17 count];

      if (!v18)
      {
        break;
      }

      v19 = [v8 taskOptions];
      v20 = [v19 objectAtIndexedSubscript:v16];

      if ([v20 isEqualToString:@"-d"])
      {
        v15 = 1;
      }

      else if ([v20 isEqualToString:@"-q"])
      {
        v14 = 1;
      }

      else if (([v20 isEqualToString:@"-y"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"-n") & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"-g") & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"-x") & 1) == 0)
      {
        [v20 isEqualToString:@"-S"];
      }

      ++v16;
    }

    fsck_set_debug(v15 != 0);
    fsck_set_quick(v14 & 1);
    fsck_set_fd([(FSBlockDeviceResource *)self->_resource fileDescriptor]);
    fsck_set_device_block_size([(FSBlockDeviceResource *)self->_resource blockSize]);
    fsck_set_device_block_count([(FSBlockDeviceResource *)self->_resource blockCount]);
    fsck_set_messages_func(fsckMsgsAskPrompt, fsckMsgsPrintFormat, fsckMsgsPrintRaw, fsckMsgsPrintRawError, 2, v11);
    [v36 setTotalUnitCount:100];
    v21 = v44;
    v44[5] = startCallbackFsck;
    v21[6] = endCallbackFsck;
    v21[4] = v35;
    v21[7] = v11;
    v22 = +[NSUUID UUID];
    v23 = [NSString stringWithFormat:@"fsck_exfat_bitmap_cache_%@", v22];

    v24 = NSTemporaryDirectory();
    v25 = [v24 stringByAppendingPathComponent:v23];
    v26 = v25;
    v27 = [v25 UTF8String];

    if (v27)
    {
      v28 = strdup(v27);
    }

    else
    {
      v28 = 0;
    }

    v44[8] = v28;
    v31 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DED0;
    block[3] = &unk_10001C680;
    v41 = &v43;
    v32 = v36;
    v39 = v32;
    v42 = v11;
    v40 = v34;
    dispatch_async(v31, block);

    v30 = v32;
  }

  else
  {
    v29 = fskit_std_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100010B90();
    }

    fs_errorForPOSIXError();
    *a5 = v30 = 0;
  }

  _Block_object_dispose(&v43, 8);

  return v30;
}

- (id)startFormatWithTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v111 = a3;
  v8 = a4;
  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = sub_10000D6A4;
  v148 = sub_10000D6B4;
  v149 = objc_alloc_init(NSProgress);
  v138 = 0;
  v139 = &v138;
  v140 = 0x4010000000;
  v141 = &unk_10001B54A;
  v142 = 0u;
  v143 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  memset(&v130, 0, sizeof(v130));
  v129 = 0;
  v109 = a5;
  *a5 = 0;
  location = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  if (!location)
  {
    v127 = newfs_ctx;
    v128 = qword_100026E38;
    newfs_print(&v127, 500, v9, v10, v11, v12, v13, v14, "[exfatFileSystem startFormatWithTask:options:error:]");
    v110 = 0;
    v99 = 12;
LABEL_55:
    v129 = v99;
    goto LABEL_56;
  }

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = location[2];
  location[2] = v15;

  v110 = [FSTaskProgressUpdater progressUpdaterWithProgress:v145[5]];
  objc_storeStrong(location, a3);
  objc_storeStrong(location + 3, self);
  objc_storeStrong(location + 1, self->_resource);
  if (!newfs_get_print_function_callback())
  {
    newfs_set_print_function_callback(sub_10000EB50);
  }

  if (!newfs_get_wipefs_function_callback())
  {
    newfs_set_wipefs_function_callback(sub_10000EBB0);
  }

  newfs_set_client(location);
  v17 = 0;
  v108 = 0;
  LOWORD(v134) = -1;
  WORD4(v137) = 256;
  while (1)
  {
    v18 = [v8 taskOptions];
    v19 = [v18 count];

    if (v17 >= v19)
    {
      break;
    }

    v20 = [v8 taskOptions];
    v21 = [v20 objectAtIndexedSubscript:v17];

    v22 = [v8 taskOptions];
    if (v17 + 1 >= [v22 count])
    {
      v25 = 0;
    }

    else
    {
      v23 = [v8 taskOptions];
      v24 = [v23 objectAtIndexedSubscript:v17 + 1];
      v25 = [v24 UTF8String];
    }

    if ([v21 isEqual:@"-N"])
    {
      BYTE8(v137) = 1;
      goto LABEL_49;
    }

    if ([v21 isEqual:@"-R"])
    {
      BYTE9(v137) = 0;
      goto LABEL_49;
    }

    if ([v21 isEqual:@"-I"])
    {
      DWORD2(v133) = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      goto LABEL_17;
    }

    if ([v21 isEqual:@"-S"])
    {
      uint32 = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      if (v129)
      {
        goto LABEL_70;
      }

      if ((uint32 & (uint32 - 1)) != 0 || (uint32 - 4097) <= 0xFFFFF1FE)
      {
        v127 = newfs_ctx;
        v128 = qword_100026E38;
        newfs_print(&v127, 501, v27, v28, v29, v30, v31, v32, uint32);
        goto LABEL_68;
      }

      LODWORD(v132) = uint32;
    }

    else if ([v21 isEqual:@"-a"])
    {
      v33 = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      HIDWORD(v132) = v33;
      if (v129)
      {
        goto LABEL_70;
      }

      if (!v33)
      {
        v127 = newfs_ctx;
        v128 = qword_100026E38;
        newfs_print(&v127, 502, v34, v35, v36, v37, v38, v39, usedBufLen);
        goto LABEL_68;
      }
    }

    else if ([v21 isEqual:@"-b"])
    {
      v40 = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      if (v129)
      {
        goto LABEL_70;
      }

      if ((v40 & (v40 - 1)) != 0 || (v40 - 33554433) <= 0xFE0001FE)
      {
        v127 = newfs_ctx;
        v128 = qword_100026E38;
        newfs_print(&v127, 503, v41, v42, v43, v44, v45, v46, v40);
        goto LABEL_68;
      }

      DWORD1(v132) = v40;
    }

    else if ([v21 isEqual:@"-c"])
    {
      v47 = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      LODWORD(v136) = v47;
      if (v129)
      {
        goto LABEL_70;
      }

      if (v47 > 0x10000 || (v54.i32[0] = v47, v55 = vcnt_s8(v54), v55.i16[0] = vaddlv_u8(v55), v55.i32[0] != 1))
      {
        v127 = newfs_ctx;
        v128 = qword_100026E38;
        newfs_print(&v127, 504, v48, v49, v50, v51, v52, v53, v47);
        goto LABEL_68;
      }
    }

    else if ([v21 isEqual:@"-n"])
    {
      v56 = get_uint32(*([v21 UTF8String] + 1), v25, &v129);
      HIDWORD(v133) = v56;
      if (v129)
      {
        goto LABEL_70;
      }

      if ((v56 - 3) <= 0xFFFFFFFD)
      {
        v127 = newfs_ctx;
        v128 = qword_100026E38;
        newfs_print(&v127, 505, v57, v58, v59, v60, v61, v62, v56);
        goto LABEL_68;
      }
    }

    else
    {
      if ([v21 isEqual:@"-s"])
      {
        *(&v131 + 1) = get_uint64(*([v21 UTF8String] + 1), v25, &v129);
LABEL_17:
        if (v129)
        {
          goto LABEL_70;
        }

        goto LABEL_49;
      }

      if ([v21 isEqual:@"-v"])
      {
        if (!verify_volume_name(v25))
        {
          v127 = newfs_ctx;
          v128 = qword_100026E38;
          newfs_print(&v127, 506, v63, v64, v65, v66, v67, v68, v25);
          goto LABEL_68;
        }

        Mutable = CFStringCreateMutable(0, 0);
        v76 = Mutable;
        if (!Mutable)
        {
          v127 = newfs_ctx;
          v128 = qword_100026E38;
          newfs_print(&v127, 507, v70, v71, v72, v73, v74, v75, usedBufLen);
          v104 = 12;
          goto LABEL_69;
        }

        CFStringAppendCString(Mutable, v25, 0x8000100u);
        CFStringNormalize(v76, kCFStringNormalizationFormC);
        Length = CFStringGetLength(v76);
        v126 = 0;
        v151.location = 0;
        v151.length = Length;
        if (CFStringGetBytes(v76, v151, 0x14000100u, 0, 0, &v134 + 2, 22, &v126) != Length)
        {
          v127 = newfs_ctx;
          v128 = qword_100026E38;
          newfs_print(&v127, 508, v78, v79, v80, v81, v82, v83, v25);
LABEL_68:
          v104 = 22;
LABEL_69:
          v129 = v104;
LABEL_70:

          v85 = 0;
          goto LABEL_71;
        }

        LOWORD(v134) = v126 >> 1;
        CFRelease(v76);
        v108 = v25;
      }
    }

LABEL_49:

    ++v17;
  }

  v84 = [(FSBlockDeviceResource *)self->_resource bsdName];
  v85 = [v84 UTF8String];

  newfs_set_fd([(FSBlockDeviceResource *)self->_resource fileDescriptor]);
  if (newfs_get_fd() == -1)
  {
    v127 = newfs_ctx;
    v128 = qword_100026E38;
    newfs_print(&v127, 509, v86, v87, v88, v89, v90, v91, "[exfatFileSystem startFormatWithTask:options:error:]");
    v99 = 22;
    goto LABEL_55;
  }

  fd = newfs_get_fd();
  if (fstat(fd, &v130))
  {
    v127 = newfs_ctx;
    v128 = qword_100026E38;
    newfs_print(&v127, 510, v93, v94, v95, v96, v97, v98, "[exfatFileSystem startFormatWithTask:options:error:]");
    v99 = 5;
    goto LABEL_55;
  }

LABEL_71:
  if (!v129)
  {
    newfs_set_volume_name(v108);
    newfs_set_device_path(v85);
    newfs_set_sector_size([(FSBlockDeviceResource *)self->_resource blockSize]);
    newfs_set_partition_offset([(FSBlockDeviceResource *)self->_resource partitionBase]);
    newfs_set_total_sectors([(FSBlockDeviceResource *)self->_resource blockCount]);
    [v145[5] setTotalUnitCount:100];
    v102 = v110;
    v105 = v139;
    v139[4] = v102;
    v105[5] = startCallbackNewfs;
    v105[6] = endCallbackNewfs;
    v105[7] = location;
    v106 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v121 = v134;
    v122 = v135;
    v123 = v136;
    v124 = v137;
    v118 = v131;
    v119 = v132;
    block[2] = sub_10000F018;
    block[3] = &unk_10001C6A8;
    v120 = v133;
    v116 = &v138;
    v117 = &v144;
    v125 = location;
    v101 = v111;
    v115 = v111;
    dispatch_async(v106, block);

    v100 = v145[5];
    goto LABEL_59;
  }

LABEL_56:
  *v109 = fs_errorForPOSIXError();
  if (location)
  {
    free(location);
  }

  v100 = 0;
  v102 = v110;
  v101 = v111;
LABEL_59:

  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(&v144, 8);

  return v100;
}

- (void)loadResource:(id)a3 options:(id)a4 replyHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[exfatFileSystem loadResource:options:replyHandler:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s:start", &buf, 0xCu);
  }

  resource = self->_resource;
  self->_resource = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_resource, a3);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = [v10 taskOptions];
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v14 |= [*(*(&v38 + 1) + 8 * i) containsString:@"-f"];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v15);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = sub_10000D6A4;
  v49 = sub_10000D6B4;
  v50 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000D6A4;
  v36 = sub_10000D6B4;
  v37 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000F974;
  v31[3] = &unk_10001C6D0;
  v31[4] = &v32;
  v31[5] = &buf;
  [(exfatFileSystem *)self probeResource:v9 replyHandler:v31];
  if (!v33[5])
  {
    if ([*(*(&buf + 1) + 40) result] == 3)
    {
      v20 = [*(*(&buf + 1) + 40) name];
      if (v20)
      {
        v18 = [*(*(&buf + 1) + 40) name];
      }

      else
      {
        v18 = &stru_10001C798;
      }

      v22 = [FSVolume alloc];
      v23 = [*(*(&buf + 1) + 40) containerID];
      v24 = [v23 volumeIdentifier];
      v25 = [FSFileName nameWithString:v18];
      v26 = [v22 initWithVolumeID:v24 volumeName:v25];

      if (v26)
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v28 = [*(*(&buf + 1) + 40) containerID];
          *v42 = 136315394;
          v43 = "[exfatFileSystem loadResource:options:replyHandler:]";
          v44 = 2112;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: loaded resource with volume ID (%@)", v42, 0x16u);
        }

        v29 = +[FSContainerStatus ready];
        [(exfatFileSystem *)self setContainerStatus:v29];

        v11[2](v11, v26, 0);
      }

      else
      {
        v30 = fs_errorForPOSIXError();
        (v11)[2](v11, 0, v30);
      }

      goto LABEL_30;
    }

    if ((v14 & 1) == 0)
    {
      if ([*(*(&buf + 1) + 40) result])
      {
        v18 = [NSError errorWithDomain:FSKitErrorDomain code:4503 userInfo:0];
        v21 = [FSContainerStatus notReadyWithStatus:v18];
        [(exfatFileSystem *)self setContainerStatus:v21];
      }

      else
      {
        v18 = fs_errorForPOSIXError();
      }

      (v11)[2](v11, 0, v18);
      goto LABEL_30;
    }

LABEL_14:
    v18 = fs_errorForPOSIXError();
    v19 = [FSContainerStatus notReadyWithStatus:v18];
    [(exfatFileSystem *)self setContainerStatus:v19];

    (v11)[2](v11, 0, v18);
LABEL_30:

    goto LABEL_31;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  (v11[2])(v11, 0);
LABEL_31:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)unloadResource:(id)a3 options:(id)a4 replyHandler:(id)a5
{
  resource = self->_resource;
  self->_resource = 0;
  _objc_release_x1();
}

@end