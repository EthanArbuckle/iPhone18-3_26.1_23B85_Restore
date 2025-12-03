@interface msdosFileSystem
- (id)startCheckWithTask:(id)task options:(id)options error:(id *)error;
- (id)startFormatWithTask:(id)task options:(id)options error:(id *)error;
- (id)syncRead:(id)read into:(void *)into startingAt:(int64_t)at length:(unint64_t)length;
- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)probeResource:(id)resource replyHandler:(id)handler;
- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler;
@end

@implementation msdosFileSystem

- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[msdosFileSystem loadResource:options:replyHandler:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s:start", &buf, 0xCu);
  }

  resource = self->_resource;
  self->_resource = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_resource, resource);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  taskOptions = [optionsCopy taskOptions];
  v14 = 0;
  v15 = [taskOptions countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v15)
  {
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(taskOptions);
        }

        v14 |= [*(*(&v37 + 1) + 8 * i) containsString:@"-f"];
      }

      v15 = [taskOptions countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v15);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = sub_100026304;
  v48 = sub_100026314;
  v49 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100026304;
  v35 = sub_100026314;
  v36 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000269E4;
  v30[3] = &unk_100051490;
  v30[4] = &v31;
  v30[5] = &buf;
  [(msdosFileSystem *)self probeResource:resourceCopy replyHandler:v30];
  if (!v32[5])
  {
    if ([*(*(&buf + 1) + 40) result] == 3)
    {
      v20 = [msdosVolume alloc];
      containerID = [*(*(&buf + 1) + 40) containerID];
      volumeIdentifier = [containerID volumeIdentifier];
      name = [*(*(&buf + 1) + 40) name];
      v24 = [(msdosVolume *)v20 initWithResource:resourceCopy volumeID:volumeIdentifier volumeName:name];
      volume = self->_volume;
      self->_volume = v24;

      if (self->_volume)
      {
        v26 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          containerID2 = [*(*(&buf + 1) + 40) containerID];
          *v41 = 136315394;
          v42 = "[msdosFileSystem loadResource:options:replyHandler:]";
          v43 = 2112;
          v44 = containerID2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: loaded resource with volume ID (%@)", v41, 0x16u);
        }

        v28 = +[FSContainerStatus ready];
        [(msdosFileSystem *)self setContainerStatus:v28];

        volume = [(msdosFileSystem *)self volume];
        handlerCopy[2](handlerCopy, volume, 0);
      }

      else
      {
        volume = fs_errorForPOSIXError();
        (handlerCopy)[2](handlerCopy, 0, volume);
      }

      goto LABEL_27;
    }

    if ((v14 & 1) == 0)
    {
      if ([*(*(&buf + 1) + 40) result])
      {
        volume = [NSError errorWithDomain:FSKitErrorDomain code:4503 userInfo:0];
        v29 = [FSContainerStatus notReadyWithStatus:volume];
        [(msdosFileSystem *)self setContainerStatus:v29];
      }

      else
      {
        volume = fs_errorForPOSIXError();
      }

      (handlerCopy)[2](handlerCopy, 0, volume);
      goto LABEL_27;
    }

LABEL_14:
    volume = fs_errorForPOSIXError();
    v19 = [FSContainerStatus notReadyWithStatus:volume];
    [(msdosFileSystem *)self setContainerStatus:v19];

    (handlerCopy)[2](handlerCopy, 0, volume);
LABEL_27:

    goto LABEL_28;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  (handlerCopy[2])(handlerCopy, 0);
LABEL_28:
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  resource = self->_resource;
  if (resource)
  {
    self->_resource = 0;

    volume = self->_volume;
    self->_volume = 0;
  }

  handlerCopy[2](handlerCopy, 0);
}

- (id)syncRead:(id)read into:(void *)into startingAt:(int64_t)at length:(unint64_t)length
{
  v11 = 0;
  v7 = [read readInto:into startingAt:at length:length error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033828();
    }
  }

  else if (v7 == length)
  {
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000338B0(length, v7);
    }

    v9 = fs_errorForPOSIXError();
  }

  return v9;
}

- (void)probeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = +[FSProbeResult notRecognizedProbeResult];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = resourceCopy) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "[msdosFileSystem probeResource:replyHandler:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Given device is not a block device", &v27, 0xCu);
    }

    v10 = 0;
    v15 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  blockSize = [v9 blockSize];
  v12 = [[NSMutableData alloc] initWithLength:blockSize];
  v13 = -[msdosFileSystem syncRead:into:startingAt:length:](self, "syncRead:into:startingAt:length:", v10, [v12 mutableBytes], 0, blockSize);
  if (!v13)
  {
    bytes = [v12 bytes];
    if ((*bytes | 2) != 0xEB)
    {
      goto LABEL_17;
    }

    v17 = bytes;
    bytes2 = [v12 bytes];
    if (*bytes2 == 0x54414658459076EBLL && *(bytes2 + 3) == 0x2020205441465845)
    {
      goto LABEL_17;
    }

    v21 = *(v17 + 11);
    if (v21 < 0x200)
    {
      goto LABEL_17;
    }

    v15 = 0;
    if (v21 > 0x1000)
    {
      goto LABEL_9;
    }

    v19.i32[0] = *(v17 + 11);
    if (vaddlv_u8(vcnt_s8(v19)) > 1u)
    {
      goto LABEL_9;
    }

    if ((v17[13] ^ (v17[13] - 1)) > (v17[13] - 1) && v17[16] && (*(v17 + 19) || *(v17 + 8)) && (*(v17 + 17) || *(v17 + 11)))
    {
      v15 = [Utilities getVolumeName:"getVolumeName:bps:spc:bootsector:flags:" bps:v10 spc:? bootsector:? flags:?];
      v22 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      if (v22)
      {
        v23 = v22;
        v24 = [Utilities generateVolumeUuid:v17 uuid:v22];
        v25 = [[FSContainerIdentifier alloc] initWithUUID:v24];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10003394C();
        }

        v26 = [FSProbeResult usableProbeResultWithName:v15 containerID:v25];

        free(v23);
        v8 = v26;
      }

      else
      {
        v14 = fs_errorForPOSIXError();
        if (v14)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_17:
      v15 = 0;
    }

LABEL_9:
    handlerCopy[2](handlerCopy, v8, 0);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = 0;
LABEL_5:
  (handlerCopy)[2](handlerCopy, 0, v14);

LABEL_10:
}

- (id)startCheckWithTask:(id)task options:(id)options error:(id *)error
{
  taskCopy = task;
  optionsCopy = options;
  taskOptions = [optionsCopy taskOptions];
  v8 = objc_alloc_init(NSProgress);
  v36 = [[msdosProgressHelper alloc] initWithProgress:v8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x6810000000;
  v57 = &unk_10004CC8D;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v38 = self->_resource;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v64 = "[msdosFileSystem startCheckWithTask:options:error:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: started to check resource", buf, 0xCu);
  }

  v35 = v8;
  [v8 setTotalUnitCount:100];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v9 = taskCopy;
  v51 = v9;
  fsck_set_context_properties(sub_1000276F0, sub_1000277F8, v9);
  fsck_set_maxmem(20971520);
  for (i = 0; i < [taskOptions count]; ++i)
  {
    v11 = [taskOptions objectAtIndexedSubscript:i];
    if ([v11 isEqualToString:@"-q"])
    {
      fsck_set_quick(1);
      goto LABEL_12;
    }

    if ([v11 isEqualToString:@"-n"])
    {
      fsck_set_alwaysno(1);
      fsck_set_alwaysyes(0);
LABEL_11:
      fsck_set_preen(0);
      goto LABEL_12;
    }

    if ([v11 isEqualToString:@"-y"])
    {
      fsck_set_alwaysyes(1);
      fsck_set_alwaysno(0);
      goto LABEL_11;
    }

    if ([v11 isEqualToString:@"-p"])
    {
      fsck_set_preen(1);
      fsck_set_alwaysno(0);
      fsck_set_alwaysyes(0);
      goto LABEL_12;
    }

    if (![v11 isEqualToString:@"-M"])
    {
      bzero(buf, 0x400uLL);
      v28 = v11;
      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "Option '%s' not recognized\n", [v11 UTF8String]);
      sub_1000276F0(v49[3], v29, buf, 0);
      goto LABEL_41;
    }

    v47 = 0;
    v46 = 0;
    bzero(buf, 0x400uLL);
    if (++i == [taskOptions count])
    {
      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "Size argument missing\n");
      sub_1000276F0(v49[3], v30, buf, 0);
      v12 = v11;
      goto LABEL_40;
    }

    v12 = [taskOptions objectAtIndexedSubscript:i];

    v13 = v12;
    uTF8String = [v12 UTF8String];
    if (!sscanf(uTF8String, "%zi%n", &v46, &v47))
    {
      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "Size argument '%s' not recognized\n", uTF8String);
      goto LABEL_39;
    }

    v15 = &uTF8String[v47];
    v16 = *v15;
    if (v16 > 0x4C)
    {
      if (v16 == 77)
      {
        goto LABEL_22;
      }

      if (v16 != 107)
      {
        if (v16 != 109)
        {
          goto LABEL_38;
        }

LABEL_22:
        v46 <<= 10;
      }

LABEL_25:
      v17 = v46 << 10;
      v46 <<= 10;
      if (v15[1])
      {
LABEL_38:
        __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "Size multiplier '%s' not recognized\n", &uTF8String[v47]);
LABEL_39:
        sub_1000276F0(v49[3], v31, buf, 0);
LABEL_40:
        v11 = v12;
LABEL_41:

        if (error)
        {
          *error = fs_errorForPOSIXError();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *error;
          *buf = 136315394;
          v64 = "[msdosFileSystem startCheckWithTask:options:error:]";
          v65 = 2112;
          v66 = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:done:error(%@)", buf, 0x16u);
        }

        v26 = 0;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (*v15)
    {
      if (v16 != 75)
      {
        goto LABEL_38;
      }

      goto LABEL_25;
    }

    v17 = v46;
LABEL_28:
    fsck_set_maxmem(v17);
    v11 = v12;
LABEL_12:
  }

  bSDName = [(FSBlockDeviceResource *)v38 BSDName];
  v19 = bSDName;
  fsck_set_dev([bSDName UTF8String]);

  v20 = v36;
  v21 = v55;
  v55[4] = v20;
  v21[5] = startCallback;
  v21[6] = endCallback;
  v22 = self->_resource;
  v23 = v55;
  v55[7] = v22;
  v23[8] = readHelper;
  v23[9] = writeHelper;
  v23[10] = fstatHelper;
  v24 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027BBC;
  block[3] = &unk_1000514B8;
  v43 = v52;
  v40 = v38;
  v44 = &v54;
  v25 = v35;
  v41 = v25;
  v45 = &v48;
  v42 = v9;
  dispatch_async(v24, block);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v64 = "[msdosFileSystem startCheckWithTask:options:error:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: done", buf, 0xCu);
  }

  v26 = v25;

LABEL_32:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(&v54, 8);

  return v26;
}

- (id)startFormatWithTask:(id)task options:(id)options error:(id *)error
{
  taskCopy = task;
  optionsCopy = options;
  taskOptions = [optionsCopy taskOptions];
  v9 = objc_alloc_init(NSProgress);
  v76 = [[msdosProgressHelper alloc] initWithProgress:v9];
  v78 = self->_resource;
  v134 = 0;
  v135 = &v134;
  v136 = 0x5010000000;
  v137 = &unk_10004CC8D;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2020000000;
  v133 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v142 = "[msdosFileSystem startFormatWithTask:options:error:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: started to format resource", buf, 0xCu);
  }

  v75 = v9;
  [v9 setTotalUnitCount:100];
  v155 = 0;
  v154 = 0;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0;
  v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  location = v10;
  if (!v10)
  {
    v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      sub_100033BDC(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    v27 = 0;
    goto LABEL_100;
  }

  objc_storeStrong(v10, task);
  objc_storeStrong(location + 1, self->_resource);
  objc_storeStrong(location + 2, self);
  if (!newfs_get_print_function_callback())
  {
    newfs_set_print_function_callback(sub_1000289C0);
  }

  if (!newfs_get_wipefs_function_callback())
  {
    newfs_set_wipefs_function_callback(wipeFSCallback);
  }

  newfs_set_client(location);
  v11 = 0;
  v59 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v77 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v12 = 0;
  for (i = 0; ; ++i)
  {
    if (i >= [taskOptions count])
    {
      bSDName = [(FSBlockDeviceResource *)v78 BSDName];
      v20 = bSDName;
      uTF8String = [bSDName UTF8String];

      if (v11)
      {
        v22 = v11;
        if (!strchr(v11, 47))
        {
          __snprintf_chk(__s1, 0x400uLL, 0, 0x400uLL, "/boot/%s", v11);
          v22 = strdup(__s1);
          if (!v22)
          {
            v23 = __error();
            v14 = [NSString stringWithFormat:@"%s", strerror(*v23)];
            v24 = v14;
            uTF8String2 = [v14 UTF8String];
            sub_1000289C0(location, v26, uTF8String2, 0);
            v27 = 0;
            goto LABEL_99;
          }
        }
      }

      else
      {
        v22 = 0;
      }

      blockSize = [(FSBlockDeviceResource *)v78 blockSize];
      blockCount = [(FSBlockDeviceResource *)v78 blockCount];
      physicalBlockSize = [(FSBlockDeviceResource *)v78 physicalBlockSize];
      v39 = v76;
      v40 = v135;
      v135[4] = v39;
      v40[5] = startCallback;
      v40[6] = endCallback;
      v41 = self->_resource;
      v42 = v135;
      v135[7] = v41;
      v42[8] = readHelper;
      v42[9] = writeHelper;
      v43 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      v124 = v147;
      v125 = v148;
      v122 = v145;
      v123 = v146;
      v128 = v151;
      v129 = v152;
      v126 = v149;
      v127 = v150;
      block[2] = sub_100028AEC;
      block[3] = &unk_1000514E0;
      v85 = v11;
      v86 = v59;
      v87 = v70;
      v88 = v66;
      v89 = v77;
      v90 = HIDWORD(v71);
      v91 = HIDWORD(v69);
      v92 = HIDWORD(v68);
      v93 = v68;
      v94 = HIDWORD(v67);
      v95 = v67;
      v96 = HIDWORD(v65);
      v97 = v65;
      v98 = HIDWORD(v64);
      v99 = v64;
      v100 = v63;
      v101 = v62;
      v102 = HIDWORD(v61);
      v103 = v61;
      v104 = v60;
      v105 = v69;
      v106 = v12;
      v107 = v71;
      v108 = HIDWORD(v63);
      v112 = uTF8String;
      v113 = physicalBlockSize;
      v115 = v155;
      v114 = v154;
      v116 = blockCount;
      v117 = blockSize;
      v119 = v22;
      v121 = v144;
      v120 = -1;
      v130 = v153;
      v83 = v132;
      v84 = &v134;
      v109 = HIDWORD(v62);
      v111 = 0;
      v110 = 0;
      v118 = 0;
      v44 = v75;
      v81 = v44;
      v131 = location;
      v82 = taskCopy;
      dispatch_async(v43, block);

      v45 = v44;
      v27 = 0;
      goto LABEL_103;
    }

    v14 = [taskOptions objectAtIndexedSubscript:i];
    if (i + 1 >= [taskOptions count])
    {
      uTF8String3 = 0;
    }

    else
    {
      v15 = [taskOptions objectAtIndexedSubscript:?];
      v16 = v15;
      uTF8String3 = [v15 UTF8String];
    }

    if ([v14 isEqualToString:@"-N"])
    {
      v12 = 1;
      goto LABEL_35;
    }

    if ([v14 isEqualToString:@"-B"])
    {
      v11 = uTF8String3;
      goto LABEL_35;
    }

    if ([v14 isEqualToString:@"-F"])
    {
      if (!uTF8String3)
      {
        goto LABEL_98;
      }

      v18 = *uTF8String3;
      if (v18 == 51)
      {
        if (uTF8String3[1] != 50)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v18 != 49)
        {
          goto LABEL_97;
        }

        if (uTF8String3[1] == 50 && !uTF8String3[2])
        {
LABEL_34:
          v77 = atoi(uTF8String3);
          goto LABEL_35;
        }

        if (uTF8String3[1] != 54)
        {
          goto LABEL_97;
        }
      }

      if (uTF8String3[2])
      {
LABEL_97:
        v27 = [[NSString alloc] initWithFormat:@"Invalid FAT type (%s), must be 12/16 or 32", uTF8String3];
        v46 = v27;
        uTF8String4 = [v27 UTF8String];
        sub_1000289C0(location, v48, uTF8String4, 0);
        goto LABEL_99;
      }

      goto LABEL_34;
    }

    if ([v14 isEqualToString:@"-I"])
    {
      if (!uTF8String3)
      {
        goto LABEL_98;
      }

      HIDWORD(v71) = argtou(uTF8String3, 0, 0xFFFFFFFF);
      LODWORD(v71) = 1;
      goto LABEL_35;
    }

    if (![v14 isEqualToString:@"-O"])
    {
      break;
    }

    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    if (strlen(uTF8String3) >= 9)
    {
      v27 = [[NSString alloc] initWithFormat:@"Bad OEM string (%s)", uTF8String3];
      v53 = v27;
      uTF8String5 = [v27 UTF8String];
      sub_1000289C0(location, v55, uTF8String5, 0);
      goto LABEL_99;
    }

    v70 = uTF8String3;
LABEL_35:
  }

  if ([v14 isEqualToString:@"-S"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v69) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-P"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v69) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-a"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v68) = argtou(uTF8String3, 1u, 0xFFFFFFFF);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-b"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v68) = argtou(uTF8String3, 1u, 0xFFFFFFFF);
    HIDWORD(v67) = 0;
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-c"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v67) = argtou(uTF8String3, 1u, 0xFFu);
    LODWORD(v68) = 0;
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-e"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v67) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-f"])
  {
    v66 = uTF8String3;
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-h"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v65) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-i"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v65) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-k"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v64) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-m"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v64) = argtou(uTF8String3, 0, 0xFFu);
    HIDWORD(v63) = 1;
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-n"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v63) = argtou(uTF8String3, 1u, 0xFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-o"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v62) = argtou(uTF8String3, 0, 0xFFFFFFFF);
    HIDWORD(v62) = 1;
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-r"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    HIDWORD(v61) = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-s"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    LODWORD(v61) = argtou(uTF8String3, 1u, 0xFFFFFFFF);
    goto LABEL_35;
  }

  if ([v14 isEqualToString:@"-u"])
  {
    if (!uTF8String3)
    {
      goto LABEL_98;
    }

    v60 = argtou(uTF8String3, 1u, 0xFFFFu);
    goto LABEL_35;
  }

  if (![v14 isEqualToString:@"-v"])
  {
    goto LABEL_35;
  }

  if (!uTF8String3)
  {
LABEL_98:
    v27 = [[NSString alloc] initWithFormat:@"Option %@ requires a value", v14];
    v49 = v27;
    uTF8String6 = [v27 UTF8String];
    sub_1000289C0(location, v51, uTF8String6, 0);
    goto LABEL_99;
  }

  if (oklabel(uTF8String3))
  {
    v59 = uTF8String3;
    goto LABEL_35;
  }

  v27 = [[NSString alloc] initWithFormat:@"Given volume name (%s) is invalid for this file system", uTF8String3];
  v56 = v27;
  uTF8String7 = [v27 UTF8String];
  sub_1000289C0(location, v58, uTF8String7, 0);
LABEL_99:

  free(location);
LABEL_100:
  if (error)
  {
    fs_errorForPOSIXError();
    *error = v45 = 0;
  }

  else
  {
    v45 = 0;
  }

LABEL_103:
  _Block_object_dispose(v132, 8);

  _Block_object_dispose(&v134, 8);

  return v45;
}

@end