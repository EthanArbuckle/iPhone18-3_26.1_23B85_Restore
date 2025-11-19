void sub_1000156F8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100015780;
  v2[3] = &unk_100035668;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _closeAllWithCompletionHandler:v2];
}

uint64_t sub_100015780(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_100015868(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000158F8;
  v3[3] = &unk_100035668;
  v4 = *(a1 + 48);
  [v1 _handleScan:v2 completionHandler:v3];
}

uint64_t sub_1000158F8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1000159E0(uint64_t a1)
{
  [*(a1 + 32) _mountVolume:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100015B0C(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "qid");
  v3 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (uint64)
  {
    v4 = xpc_dictionary_get_value(*(a1 + 32), "context");
    if (!v4)
    {
      (*(*(a1 + 48) + 16))();
LABEL_53:

      goto LABEL_54;
    }

    v5 = [[CSSearchQueryContext alloc] initWithXPCDictionary:v4];
    string = xpc_dictionary_get_string(*(a1 + 32), "query");
    if (string)
    {
      v7 = string;
    }

    else
    {
      v7 = "false";
    }

    v8 = [NSString stringWithUTF8String:v7];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = [v5 mountPoints];
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v44 = v3;
      v45 = v8;
      v42 = v5;
      v43 = v4;
      v12 = 0;
      v13 = *v47;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          v16 = [*(a1 + 40) indexerForVolume:v15];

          v12 = v16;
          if (!v16)
          {
            v17 = *(a1 + 40);
            v18 = [@"/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/" stringByAppendingString:v15];
            [v17 _handleMount:v18 force:0];

            v12 = [*(a1 + 40) indexerForVolume:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v11);

      v4 = v43;
      v3 = v44;
      v5 = v42;
      v8 = v45;
      if (v12)
      {
        v19 = [v12 volumeObject];
        v20 = [v42 scopes];
        v21 = [v19 processQueryScopes:v20 usePersistentFileIDs:{objc_msgSend(v12, "persistentFileIDs")}];
        [v45 UTF8String];
        v41 = _SIUserCopyUserFSCriteriaForQuery();
        if (v41)
        {
          v22 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v41;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "query criteria %@", buf, 0xCu);
          }

          v23 = [v41 objectForKeyedSubscript:@"kMDItemIsTrashed"];
          v39 = [v23 BOOLValue];
        }

        else
        {
          v39 = 0;
        }

        v40 = v21;
        if ([v20 count] && !objc_msgSend(v21, "count"))
        {
          v33 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_100024B18();
          }

          v24 = v20;
          goto LABEL_50;
        }

        v24 = v21;

        v38 = v19;
        if ([v12 isFSOnly])
        {
          v25 = 1;
        }

        else
        {
          v25 = [v42 fsOnly];
        }

        v26 = [v24 count];
        if (!v26)
        {
          goto LABEL_39;
        }

        v27 = v26;
        [v42 setScopes:v24];
        v28 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v24;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "query scopes %@", buf, 0xCu);
        }

        if (v27 == 1 && ([v24 firstObject], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "fileSystemRepresentation"), v29, v30))
        {
          if ((v25 & 1) != 0 || (sub_100020E18(v30) & 1) == 0)
          {
            v34 = [v38 rootPathUTF8String];
            if (!v34)
            {
              v19 = v38;
              goto LABEL_50;
            }

            v35 = v34;
            v36 = [v38 rootPathUTF8StringLength];
            if (!strncmp(v30, v35, v36))
            {
              v37 = &v36[v30 + 1];
              if (*v37)
              {
                v19 = v38;
                v32 = v41;
                if (v39 && strncmp(v37, ".Trashes", 8uLL))
                {
                  goto LABEL_51;
                }

                v31 = [NSString stringWithUTF8String:v37];
                if (!v31)
                {
                  goto LABEL_51;
                }

                goto LABEL_44;
              }
            }

LABEL_46:
            v19 = v38;
LABEL_50:
            v32 = v41;
            goto LABEL_51;
          }

          if (v39)
          {
            v31 = @".Trashes";
LABEL_43:
            v19 = v38;
            v32 = v41;
LABEL_44:
            [*(a1 + 40) _scanQueryStart:v12 scope:v31 queryString:v45 criteria:v32 queryContext:v42 queryID:uint64 remoteConnection:v44];

LABEL_51:
            (*(*(a1 + 48) + 16))();

            v8 = v45;
            goto LABEL_52;
          }
        }

        else
        {
LABEL_39:
          if (v39)
          {
            v31 = @".Trashes";
          }

          else
          {
            v31 = 0;
          }

          if ((v39 | v25))
          {
            goto LABEL_43;
          }
        }

        [*(a1 + 40) _indexQueryStart:v12 queryString:v45 queryContext:v42 queryID:uint64 remoteConnection:v44];
        goto LABEL_46;
      }
    }

    else
    {
    }

    (*(*(a1 + 48) + 16))();
LABEL_52:

    goto LABEL_53;
  }

  (*(*(a1 + 48) + 16))();
LABEL_54:
}

uint64_t sub_1000161C0(uint64_t a1)
{
  [*(a1 + 32) _queryCancel:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100016320(uint64_t a1)
{
  [*(a1 + 32) _handleFSE:*(a1 + 40)];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1000164A4(uint64_t a1)
{
  v2 = [*(a1 + 32) indexerForVolume:*(a1 + 40)];
  v3 = [v2 volumeObject];
  if (v3)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      *buf = 138412802;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scan %@ at %@ from %@", buf, 0x20u);
    }

    v8 = os_transaction_create();
    v9 = +[NSDate date];
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v12 = *(a1 + 48);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100016730;
    v25[3] = &unk_100035708;
    v27 = *(a1 + 80);
    v25[4] = *(a1 + 32);
    v26 = v2;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100016750;
    v18[3] = &unk_100035730;
    v24 = *(a1 + 80);
    v19 = v26;
    v20 = v9;
    v21 = *(a1 + 40);
    v13 = *(a1 + 72);
    v22 = v8;
    v23 = v13;
    v14 = v8;
    v15 = v9;
    v16 = [v3 scanAtLiveFSHandle:v12 pathFromMountPoint:v10 date:v11 itemHandler:v25 completionHandler:v18];
  }

  else
  {
    v17 = *(a1 + 72);
    if (v17)
    {
      (*(v17 + 16))(v17, 0);
    }
  }
}

id *sub_100016730(id *result, uint64_t a2)
{
  if (*(result + 48) == 1)
  {
    return [result[4] importItems:a2 indexer:result[5]];
  }

  return result;
}

id sub_100016750(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    if (!a2)
    {
      [*(a1 + 32) index];
      v4 = *(a1 + 40);
      SISetProperty();
    }

    [*(a1 + 32) issueCommit];
  }

  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scan %@ complete: %d", &v10, 0x12u);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  v8 = *(a1 + 56);
  return objc_opt_self();
}

void sub_100016D54(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  memset(v21, 0, sizeof(v21));
  if (strncmp(v2, "/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", 0x44uLL) || ((v3 = strchr(v2 + 68, 47)) == 0 ? (v4 = strlen(v2 + 68), v5 = 0) : (v4 = v3 - (v2 + 68), v5 = v3 + 1), v4 > 0xFF))
  {
    v12 = 0;
    goto LABEL_11;
  }

  __strncpy_chk();
  *(v21 + v4) = 0;
  v6 = [*(a1 + 40) indexerForCStringVolume:v21];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 volumeObject];
    if (v8)
    {
LABEL_8:
      v9 = [(VolumeScan *)v8 resolveLiveFSHandleForPathFromMountPoint:v5];
      if (v7)
      {
        v10 = [v7 oidForPath:*(a1 + 56) allowCreate:0];
        v19 = v2;
        v20 = v9;
        v18 = v10;
        v11 = @"oid: %lld path: %s lfsHandle: %@";
      }

      else
      {
        v18 = v2;
        v19 = v9;
        v11 = @"path: %s lfsHandle: %@";
      }

      v17 = [NSString stringWithFormat:v11, v18, v19, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], *&v21[9], *(&v21[9] + 8), *(&v21[10] + 1), v21[11], *&v21[12], *(&v21[12] + 8), *(&v21[13] + 1), v21[14], v21[15]];
      v12 = [v17 dataUsingEncoding:4];

      goto LABEL_21;
    }
  }

  else
  {
    v15 = [NSString stringWithUTF8String:v21];
    v16 = [@"/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd" stringByAppendingPathComponent:v15];
    v8 = [[VolumeScan alloc] initWithVolumeUUID:v15 rootPath:v16];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_21:

LABEL_11:
  v13 = *(a1 + 48);
  if (v13)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }

    (*(v13 + 16))(v13, v14, v12);
  }
}

void sub_1000170E0(uint64_t a1)
{
  bzero(v19, 0x2000uLL);
  if (*(a1 + 48) <= 2uLL)
  {
    v6 = objc_retainBlock(*(a1 + 40));
    goto LABEL_14;
  }

  v2 = 0;
  v3 = 3;
  do
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:v3 - 1];
    v5 = atoll([v4 UTF8String]);

    if (v5)
    {
      v19[v2++] = v5;
    }

    if (v3 >= *(a1 + 48))
    {
      break;
    }

    ++v3;
  }

  while (v2 < 0x400);
  v6 = objc_retainBlock(*(a1 + 40));
  if (!v2)
  {
LABEL_14:
    if (!v6)
    {
      goto LABEL_16;
    }

LABEL_15:
    v6[2](v6, 0xFFFFFFFFLL, 0);
    goto LABEL_16;
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v8 = [@"/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd" stringByAppendingPathComponent:v7];
  v9 = [[VolumeScan alloc] initWithVolumeUUID:v7 rootPath:v8];
  if (v9)
  {
    v10 = [NSData dataWithBytes:v19 length:8 * v2];
    v17 = 0;
    v11 = [(VolumeScan *)v9 bulkResolveOIDData:v10 error:&v17];
    if ([v11 count])
    {
      v16 = v8;
      v12 = objc_opt_new();
      v13 = [v10 bytes];
      do
      {
        v14 = *v13++;
        bzero(v18, 0x400uLL);
        [v12 appendFormat:@"0x%llx : %s\n", v14, sub_1000218D0(v11, v14, v18, 0, 0)];
        --v2;
      }

      while (v2);
      v15 = [v12 dataUsingEncoding:4];

      v8 = v16;
    }

    else
    {
      v15 = 0;
    }

    (v6)[2](v6, v17, v15);
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_16:
}

uint64_t sub_100017418(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = *(a3 + 4);
  switch(v6)
  {
    case 2:
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = *(a3 + 16);
        v14 = 136315138;
        v15 = v13;
        v9 = "FSI_DIR_POST: %s";
        goto LABEL_14;
      }

LABEL_15:

      return 0;
    case 1:
      v11 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a3 + 16);
        v14 = 136315138;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FSI_DIR: %s", &v14, 0xCu);
      }

      if (*(a1 + 32) == 1)
      {
        return 2 * (*a3 > 0);
      }

      break;
    case 0:
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a3 + 16);
        v14 = 136315138;
        v15 = v8;
        v9 = "FSI_FILE: %s";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, &v14, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
  }

  return 0;
}

void sub_100017A00(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ([v10 length])
    {
      v9 = v10;
      xpc_dictionary_set_data(v7, "data", [v10 bytes], objc_msgSend(v10, "length"));
    }

    xpc_dictionary_set_int64(v7, "status", a2);
    xpc_connection_send_message(v5, v7);
  }
}

void sub_100017BA4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100017C20;
  v1[3] = &unk_100035388;
  v2 = *(a1 + 32);
  sub_10000F110(v1);
}

void sub_100017C20(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 allQueryTasks];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 clientConnection];
        v11 = v10;
        if (v10)
        {
          v12 = *(a1 + 32);
          if (v10 == v12 || xpc_equal(v10, v12))
          {
            [v9 setClientCanceled:1];
            [v9 cancel];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

uint64_t start()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "IndexApp launched", v4, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = +[CSIndexAgentApp sharedAgent];
  objc_autoreleasePoolPop(v1);
  if (v2)
  {
    [v2 startListener];
    dispatch_main();
  }

  return 1;
}

void sub_100018064(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100018100;
  v2[3] = &unk_100035338;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10000F110(v2);
}

void sub_100018100(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 rootPath];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v10 domain];
    [v8 addObject:v9];

    *a4 = 1;
  }
}

void sub_10001819C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_10003CC88;
  qword_10003CC88 = v2;

  v4 = *(a1 + 32);

  objc_storeStrong(&qword_10003CBE0, v4);
}

uint64_t sub_100018244@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  v4 = *(result + 32);
  return result;
}

void *sub_1000182D8(uint64_t a1, void *a2)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *result = *a2;
  return result;
}

uint64_t sub_1000183EC()
{
  result = _MDPlistBytesCreateMutableUsingMalloc();
  if (result)
  {
    v1 = result;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    v4 = xpc_data_create(ByteVector, ByteVectorCount);
    CFRelease(v1);
    return v4;
  }

  return result;
}

void sub_100018460(void *a1, size_t a2)
{
  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  if (MutableUsingMalloc)
  {
    v5 = MutableUsingMalloc;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    xpc_array_set_data(a1, a2, ByteVector, ByteVectorCount);

    CFRelease(v5);
  }
}

void sub_100018500(void *a1, const char *a2)
{
  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  if (MutableUsingMalloc)
  {
    v5 = MutableUsingMalloc;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    xpc_dictionary_set_data(a1, a2, ByteVector, ByteVectorCount);

    CFRelease(v5);
  }
}

uint64_t sub_1000185A0(void *a1)
{
  xpc_data_get_bytes_ptr(a1);
  xpc_data_get_length(a1);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

uint64_t sub_100018614(void *a1, size_t a2)
{
  length = 0;
  xpc_array_get_data(a1, a2, &length);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

uint64_t sub_10001867C(void *a1, const char *a2)
{
  length = 0;
  xpc_dictionary_get_data(a1, a2, &length);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

CFAllocatorRef sub_1000186E4()
{
  context.version = 0;
  context.info = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  context.retain = &_CFRetain;
  context.release = &_CFRelease;
  context.copyDescription = 0;
  context.allocate = sub_10001878C;
  context.reallocate = 0;
  context.deallocate = sub_100018794;
  context.preferredSize = nullsub_9;
  return CFAllocatorCreate(kCFAllocatorDefault, &context);
}

void sub_100018794(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    Value[2](Value, key);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void sub_100018800(const __CFAllocator *a1, const void *a2, const void *a3)
{
  memset(&theDict, 0, sizeof(theDict));
  CFAllocatorGetContext(a1, &theDict);
  if (theDict.deallocate == sub_100018794)
  {
    v5 = _Block_copy(a3);
    CFDictionaryAddValue(theDict.info, a2, v5);
    _Block_release(v5);
  }
}

void sub_100018880(const __CFAllocator *a1, void *a2)
{
  memset(&theDict, 0, sizeof(theDict));
  CFAllocatorGetContext(a1, &theDict);
  if (theDict.deallocate == sub_100018794)
  {
    sub_100018794(a2, theDict.info);
  }
}

uint64_t sub_1000188E4(__darwin_time_t *a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  gettimeofday(&v4, 0);
  v2 = 1000 * v4.tv_usec;
  *a1 = v4.tv_sec;
  a1[1] = v2;
  return 0;
}

uint64_t sub_100018934(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100018954(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100018980(char **a1, size_t *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = vsnprintf(*a1, *a2, a3, &a9);
  if ((result & 0x80000000) == 0)
  {
    if (*a2 >= result)
    {
      *a2 -= result;
      *a1 += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

BOOL sub_1000189F4(const char *a1)
{
  v11 = -1;
  v12 = -1;
  v9 = -1;
  v10 = -1;
  v8 = -1;
  v7 = 0;
  return sscanf(a1, "%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n%c", &v12, &v11, &v10, &v9, &v8, &v7) == -1 && v12 == 8 && v11 == 13 && v10 == 18 && v9 == 23 && v8 == 36;
}

unsigned __int8 *sub_100018A80(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    while (v2 == *a2)
    {
      ++a2;
      v4 = *v3++;
      v2 = v4;
      if (!v4)
      {
        return a2;
      }
    }

    return 0;
  }

  return a2;
}

_BYTE *sub_100018AB4(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *result;
  if (!*result)
  {
    return 0;
  }

  while (v2 == *a2)
  {
    v3 = *++result;
    v2 = v3;
    ++a2;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100018ADC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    while (1)
    {
      v4 = *a2;
      if (v4 != v2)
      {
        return (2 * (v2 - v4));
      }

      ++a2;
      v5 = *v3++;
      v2 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (*a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018B24(_BYTE *a1, char *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    while (1)
    {
      v5 = __tolower(v3);
      if (v5 != __tolower(*a2))
      {
        break;
      }

      ++a2;
      v6 = *v4++;
      v3 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v7 = *(v4 - 1);
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  v8 = __tolower(v7);
  return v8 - __tolower(*a2);
}

unsigned __int8 *sub_100018BA0(unsigned __int8 *result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = a2 - 1;
    if (a2 == 1)
    {
      break;
    }

    v3 = result[--a2];
    if ((v3 & 0xFE) == 0x2E)
    {
      result += v2;
      goto LABEL_7;
    }
  }

  v3 = *result;
LABEL_7:
  if (v3 != 46)
  {
    return 0;
  }

  return result;
}

const char *sub_100018BE4(const char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v3 = a2 - 1;
    if (a2 == 1)
    {
      break;
    }

    v4 = a1[--a2];
    if (v4 == 47)
    {
      a1 += v3;
      v2 = a1 + 1;
      goto LABEL_8;
    }
  }

  if (*a1 != 47)
  {
    return 0;
  }

LABEL_8:
  if (strlen(a1) <= 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100018C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void *a6)
{
  v6 = a3 - 1;
  if (a3 - 1 < 0)
  {
    v17 = 0;
    v15 = 0;
  }

  else
  {
    v19 = a6;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v6 + v13) >> 1;
      v15 = a2 + v14 * a4;
      v16 = a5(a1, v15);
      if (!v16)
      {
        v11 = 0;
        v12 = a2 + v14 * a4;
        a6 = v19;
        goto LABEL_15;
      }

      v17 = v16;
      if (v16 < 0)
      {
        v6 = v14 - 1;
      }

      else
      {
        v13 = v14 + 1;
      }

      if (v16 >= 0)
      {
        v12 = a2 + v14 * a4;
        v11 = v16;
      }
    }

    while (v13 <= v6);
    a6 = v19;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  v11 = v17;
  v12 = v15;
LABEL_15:
  *a6 = v11;
  return v12;
}

uint64_t sub_100018D3C(uint64_t a1)
{
  if (qword_10003CBF0 != -1)
  {
    sub_100024C28();
  }

  if (dword_10003CA58 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return fcntl(dword_10003CA58, 52, a1);
  }
}

uint64_t sub_100018DD8()
{
  if (byte_10003CBF8 == 1)
  {
    return byte_10003CBF9;
  }

  v2 = 0;
  v1 = 4;
  *v3 = 0x2C00000001;
  v4 = getpid();
  v5 = 0;
  sysctl(v3, 3u, &v2, &v1, 0, 0);
  if (v2)
  {
    result = 1;
    byte_10003CBF9 = 1;
  }

  else
  {
    result = byte_10003CBF9;
  }

  byte_10003CBF8 = 1;
  return result;
}

void *sub_100018EA8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result + a2;
  v4 = result[1] + a3;
  *result = v3;
  result[1] = v4;
  if (v4 >= 1000000000)
  {
    *result = v3 + 1;
    result[1] = v4 - 1000000000;
  }

  return result;
}

uint64_t sub_100018EE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(result + 8);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  v7 = 0xFFFFFFFFLL;
  if (v6 < 0 != v5)
  {
    v8 = 1000000;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = *a2 - *result + v7;
  *(a3 + 8) = v6 + v8;
  return result;
}

time_t sub_100018F20()
{
  v3[1] = 0;
  v4 = 0;
  *v6 = 0x1500000001;
  v3[0] = 0;
  v5 = 16;
  time(&v4);
  v0 = sysctl(v6, 2u, v3, &v5, 0, 0);
  if (v3[0])
  {
    v1 = v0 == -1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v4 - v3[0];
  }
}

uint64_t sub_100018FC0()
{
  *v3 = 0x1500000001;
  v1[0] = 0;
  v1[1] = 0;
  v2 = 16;
  if (sysctl(v3, 2u, v1, &v2, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return v1[0];
  }
}

uint64_t sub_100019048()
{
  result = qword_10003CC00;
  if (!qword_10003CC00)
  {
    v5 = 0u;
    v6 = 0u;
    *host_info_out = 0u;
    v1 = mach_host_self();
    host_info_outCnt = 12;
    v2 = host_info(v1, 1, host_info_out, &host_info_outCnt);
    if (v2)
    {
      mach_error("flushsize", v2);
      exit(1);
    }

    result = *(&v6 + 1);
    qword_10003CC00 = *(&v6 + 1);
  }

  return result;
}

unint64_t sub_1000190C4(double a1)
{
  if (qword_10003CC08 != -1)
  {
    sub_100024C3C();
  }

  return (*&qword_10003CC10 * a1);
}

void sub_10001910C(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    *&qword_10003CC10 = v1 * 1000000000.0 / v2;
  }
}

double sub_10001915C(uint64_t a1, uint64_t a2)
{
  if (qword_10003CC08 != -1)
  {
    sub_100024C50();
  }

  return (a2 - a1) / *&qword_10003CC10;
}

void sub_1000191AC(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    *&qword_10003CC10 = v1 * 1000000000.0 / v2;
  }
}

uint64_t sub_10001921C()
{
  check = 0;
  notify_check(dword_10003CC18, &check);
  if (!check)
  {
    return qword_10003CA60[0];
  }

  notify_get_state(dword_10003CC18, qword_10003CA60);
  result = qword_10003CA60[0];
  if (!qword_10003CA60[0])
  {
    result = 2;
    qword_10003CA60[0] = 2;
  }

  return result;
}

uint64_t sub_100019300(integer_t a1)
{
  policy_info = a1;
  v1 = mach_thread_self();
  v2 = thread_policy_set(v1, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v1);
  return v2;
}

uint64_t sub_10001935C(int a1)
{
  *v4 = 0x4400000001;
  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  v3 = v1;
  return sysctl(v4, 2u, 0, 0, &v3, 4uLL);
}

uint64_t sub_1000193E0(int a1)
{
  *v4 = 0x4400000001;
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  v3 = v1;
  return sysctl(v4, 2u, 0, 0, &v3, 4uLL);
}

uint64_t sub_100019460()
{
  if (qword_10003CC38 != -1)
  {
    sub_100024C64();
  }

  return byte_10003CC40;
}

BOOL sub_10001949C(mach_port_name_t a1)
{
  x = 0;
  v1 = pid_for_task(a1, &x);
  result = 0;
  if (!v1)
  {
    return kill(x, 9) == 0;
  }

  return result;
}

__CFString *sub_1000194E4(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    *v9 = 0;
    *refs = 0;
    v8 = 0;
    v4 = mach_port_get_refs(mach_task_self_, a2, 1u, &refs[1]);
    if (v4 || (v4 = mach_port_get_refs(mach_task_self_, a2, 0, refs), v4))
    {
      v5 = v4;
      v7 = mach_error_string(v4);
      CFStringAppendFormat(Mutable, 0, @"port:%#010x kr:%u (%s)", a2, v5, v7);
    }

    else
    {
      mach_port_get_refs(mach_task_self_, a2, 2u, &v9[1]);
      mach_port_get_refs(mach_task_self_, a2, 4u, v9);
      mach_port_get_refs(mach_task_self_, a2, 3u, &v8);
      CFStringAppendFormat(Mutable, 0, @"port:%#010x receiveRefs:%u sendRefs:%u sendOnceRefs:%u deadNameRefs:%u portSetRefs:%u", a2, refs[1], refs[0], v9[1], v9[0], v8);
    }
  }

  return Mutable;
}

uint64_t sub_1000195EC()
{
  if (qword_10003CC20 != -1)
  {
    sub_100024C78();
  }

  return 0;
}

CFDataRef sub_100019624(const __CFAllocator *a1, const __CFURL *a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    return 0;
  }

  memset(&v10.st_size, 0, 48);
  v4 = open(buffer, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  if (!fstat(v4, &v10) && v10.st_size <= 0xFFFFFF)
  {
    Typed = CFAllocatorAllocateTyped();
    st_size = v10.st_size;
    if (st_size == pread(v5, Typed, v10.st_size, 0))
    {
      v6 = CFDataCreateWithBytesNoCopy(a1, Typed, v10.st_size, a1);
    }

    else
    {
      CFAllocatorDeallocate(a1, Typed);
      v6 = 0;
    }
  }

  close(v5);
  return v6;
}

char *sub_100019778(const __CFString *a1, char *a2, CFIndex a3, CFStringEncoding a4)
{
  if (CFStringGetCString(a1, a2, a3, a4))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

int64x2_t sub_1000197EC(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vsubq_s64(*a2, *a1);
  *a3 = result;
  return result;
}

int64x2_t sub_100019800(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vaddq_s64(*a2, *a1);
  *a3 = result;
  return result;
}

uint64_t sub_100019814(int64x2_t *a1)
{
  memset(v3, 0, sizeof(v3));
  task_info_outCnt = 8;
  if (task_info(mach_task_self_, 1u, v3[0].i32, &task_info_outCnt))
  {
    return 0;
  }

  *a1 = vsubq_s64(v3[0], *a1);
  return 1;
}

const __CFNumber *sub_100019930(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *sub_100019964(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double sub_100019998(const __CFNumber *a1)
{
  valuePtr = 0.0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

void sub_100019A94(const __CFArray *a1, void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  CFArrayApplyFunction(a1, v4, sub_100019AEC, a2);
}

uint64_t sub_100019B04()
{
  if (qword_10003CC30 != -1)
  {
    sub_100024C8C();
  }

  return qword_10003CC28;
}

void sub_100019B3C(id a1)
{
  v1 = _CFCopySystemVersionDictionary();
  Value = CFDictionaryGetValue(v1, _kCFSystemVersionBuildVersionKey);
  qword_10003CC28 = Value;
  if (Value)
  {
    qword_10003CC28 = CFStringCreateCopy(kCFAllocatorDefault, Value);
  }

  CFRelease(v1);
  if (!qword_10003CC28)
  {
    qword_10003CC28 = &stru_100035EB0;
  }
}

uint64_t sub_100019E5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    return 2;
  }

  v15 = v4;
  v16 = v5;
  if (*(a3 + 8) > 0x3FuLL)
  {
    return 2;
  }

  if (!*a3)
  {
    return 0;
  }

  v14 = 0;
  if (sub_100018ADC("journal.", *(a3 + 32)) == -1 && sscanf(*(a3 + 32), "journal.%llu", &v14) == 1)
  {
    v9 = [QueueImportJournalFile alloc];
    v10 = *(a3 + 16);
    v11 = v14;
    v12 = 0;
  }

  else
  {
    if (sub_100018ADC("retire.", *(a3 + 32)) != -1 || sscanf(*(a3 + 32), "retire.%llu", &v14) != 1)
    {
      return 2;
    }

    v9 = [QueueImportJournalFile alloc];
    v10 = *(a3 + 16);
    v11 = v14;
    v12 = 1;
  }

  v13 = [(QueueImportJournalFile *)v9 initWithType:v12 partialPath:v10 andSerialNumber:v11];
  if (v13)
  {
    [*(a1 + 32) addObject:v13];
  }

  return 2;
}

int64_t sub_100019F7C(id a1, id a2, id a3)
{
  v3 = *(a2 + 130);
  v4 = *(a3 + 130);
  if (v3 < v4)
  {
    return -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  v9 = __OFSUB__(v6, v7);
  v8 = v6 - v7 < 0;
  v10 = v6 > v7;
  if (v8 != v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

void sub_10001A6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A750(void *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    memset(v9, 0, sizeof(v9));
    sub_10001A858(a2, (*(a1[4] + 8) + 32), v9);
    if ((LODWORD(v9[0]) - 1) <= 1)
    {
      v3 = *(a1[5] + 8);
      v4 = *(v3 + 24);
      if (v4 >= a1[10])
      {
        ++*(*(a1[8] + 8) + 24);
        *(*(a1[9] + 8) + 24) = 1;
        if (*(&v10 + 1))
        {
          v7 = *(a1[6] + 8);
          if (*(&v10 + 1) < *(v7 + 24))
          {
            *(v7 + 24) = *(&v10 + 1);
          }
        }
      }

      else
      {
        *(v3 + 24) = v4 + 1;
        v5 = *(&v10 + 1);
        v6 = *(a1[6] + 8);
        if (!*(&v10 + 1))
        {
          v5 = *(v6 + 24);
        }

        *(v6 + 24) = v5;
        ++*(*(a1[7] + 8) + 24);
      }
    }
  }

  return 0;
}

unsigned __int8 *sub_10001A858(unsigned __int8 *result, void *a2, int *a3)
{
  v5 = *result != 0;
  *a3 = v5;
  *(a3 + 1) = *(result + 2);
  *(a3 + 2) = *(result + 1);
  v6 = *(result + 7);
  a3[6] = *(result + 6);
  *(a3 + 5) = v6;
  a3[18] = -1;
  *(a3 + 10) = -1;
  *(a3 + 4) = 0;
  if (*(result + 8) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = result + 48;
    while (1)
    {
      if (*(v9 - 2) != 16 || !*v9)
      {
        goto LABEL_27;
      }

      result = sub_10001FC18(v7, v8);
      v10 = *result;
      if (v10 <= 4)
      {
        if (*result > 2u)
        {
          if (v10 == 3)
          {
            result = sub_10001FC18(v7, v8);
            *a2 = *(result + 1);
          }

          else if (v10 == 4)
          {
            *a3 = 0xFFFFFFFF00000002;
          }
        }

        else if (v10 == 1)
        {
          result = sub_10001FC18(v7, v8);
          a2[2] = *(result + 1);
        }

        else if (v10 == 2)
        {
          result = sub_10001FC18(v7, v8);
          a2[1] = *(result + 1);
        }

        goto LABEL_27;
      }

      if (*result <= 6u)
      {
        if (v10 == 5)
        {
          result = sub_10001FC18(v7, v8);
          a3[11] = result[1];
        }

        else if (v10 == 6)
        {
          result = sub_10001FC18(v7, v8);
          a3[18] = *(result + 1);
        }

        goto LABEL_27;
      }

      switch(v10)
      {
        case 7u:
          result = sub_10001FC18(v7, v8);
          *(a3 + 10) = *(result + 1);
          break;
        case 8u:
          result = sub_10001FC18(v7, v8);
          v11 = *(result + 1);
          goto LABEL_26;
        case 9u:
          result = sub_10001FC18(v7, v8);
          v11 = *(result + 1);
LABEL_26:
          *(a3 + 4) = v11;
          break;
      }

LABEL_27:
      ++v8;
      v9 += 3;
      if (v8 >= *(v7 + 32))
      {
        v5 = *a3;
        break;
      }
    }
  }

  a3[7] = *a2;
  v12 = *(a2 + 1);
  *(a3 + 3) = v12;
  *(a3 + 8) = 1;
  if (v5 == 2)
  {
    *a2 = -1;
  }

  else if ((v5 - 1) > 1)
  {
    return result;
  }

  a2[1] = v12 + 1;
  return result;
}

_BYTE *sub_10001AB10(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10001AB20(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void *sub_10001AB3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = malloc_type_malloc(0x20uLL, 0x1080040A9F9A45FuLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
    result[2] = a3;
    result[3] = a4;
  }

  return result;
}

void sub_10001AB9C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v40 = 0;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (!v4)
  {
LABEL_3:
    while (1)
    {
      bzero(v41, 0x1028uLL);
      sub_100005570(v41, v5, v2);
      v14 = sub_10000558C(v41);
      if (v14)
      {
        break;
      }

      if ((sub_10000558C(v41) & 1) != 0 || sub_1000056B4(v41, v15, v16, v17, v18, v19, v20, v21))
      {
        if (!v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1000056B4(v41, v22, v23, v24, v25, v26, v27, v28);
        if (!v3)
        {
          goto LABEL_12;
        }
      }

      (*(v3 + 16))(v3);
      if (v14 < 2 || (v40 & 1) != 0)
      {
        return;
      }

LABEL_13:
      v2 = v14 >> 1;
      if (v4)
      {
        goto LABEL_2;
      }
    }

    v29 = sub_1000056B4(v41, v7, v8, v9, v10, v11, v12, v13);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v30 = malloc_type_malloc(v29, 0x58B77ACCuLL);
    sub_100005DF8(v41, v30, v29);
    if (!v42)
    {
      v37 = 0;
      sub_100007490(v38, v30, v29);
      while (sub_1000074B8(v38, &v37, v31, v32, v33, v34, v35, v36))
      {
        if (v3)
        {
          (*(v3 + 16))(v3);
          if (v40)
          {
            return;
          }
        }
      }
    }

    free(v30);
LABEL_12:
    if (v14 < 2)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_2:
  (*(v4 + 16))(v4, v2, &v40);
  if ((v40 & 1) == 0)
  {
    goto LABEL_3;
  }
}

_BYTE *sub_10001ADBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = a2;
  while (1)
  {
    v4 = *a1;
    if (v4 == 47)
    {
      v2 = 1;
      goto LABEL_10;
    }

    if (!*a1)
    {
      break;
    }

    if (v3 - a2 > 1022)
    {
      return 0;
    }

    if (v2)
    {
      *v3++ = 47;
      if (v3 - a2 > 1022)
      {
        return 0;
      }

      LOBYTE(v4) = *a1;
    }

    v2 = 0;
    *v3++ = v4;
LABEL_10:
    ++a1;
  }

  if (v3 == a2 && (v2 & 1) != 0)
  {
    *a2 = 47;
    v3 = a2 + 1;
  }

  *v3 = 0;
  return a2;
}

char *sub_10001AE44(char *__source, char *__s)
{
  if (__s == __source)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = strlcpy(__s, __source, 0x400uLL);
  }

  v4 = v3;
  if (v3 - 1 > 0x3FE)
  {
    return 0;
  }

  v5 = &__s[v3 - 1];
  if (*v5 != 47 || __s[v3])
  {
    v5 = strrchr(__s, 47);
  }

  if (!v5)
  {
    if (v4 <= 0x3FE)
    {
      v6 = __s + 1;
      memmove(__s + 1, __s, v4 + 1);
      *__s = 0;
      return v6;
    }

    return 0;
  }

  if (v5 == __s)
  {
    if (v4 <= 0x3FE)
    {
      memmove(v5 + 2, v5 + 1, v4);
      *__s = 47;
      return v5 + 2;
    }

    return 0;
  }

  *v5 = 0;
  return v5 + 1;
}

char *sub_10001AF38(_BYTE *a1, const char *a2, char *__dst)
{
  v3 = __dst;
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = a1 + 1;
    while (v6 == *a2)
    {
      ++a2;
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v3 = 0;
    v9 = -v4;
  }

  else
  {
LABEL_5:
    v9 = a2 - v4;
    if (a2 && v9 <= 0x3FF && ((v10 = &a1[v9], !*v10) && !*a2 || *(v10 - 1) == 47 || (v11 = *a2, ++a2, v11 == 47)))
    {
      v9 = strlcpy(__dst, a2, 0x400uLL);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v9 <= 0x3FF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

const char *sub_10001AFEC(const char *__source, const char *a2, char *__dst)
{
  if (__source)
  {
    v5 = __source;
    if (__source == __dst)
    {
      v6 = 0;
    }

    else
    {
      v6 = strlcpy(__dst, __source, 0x400uLL);
    }

    v7 = *a2;
    if (*a2)
    {
      if (*v5 != 47 || v5[1])
      {
        strlcat(__dst, "/", 0x400uLL);
        v7 = *a2;
      }

      if (v7 == 47)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      v6 = strlcat(__dst, v8, 0x400uLL);
    }

    if (v6 <= 0x3FF)
    {
      return __dst;
    }

    else
    {
      return 0;
    }
  }

  return __source;
}

_BYTE *sub_10001B094(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *sub_10001B0DC(char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  if (*__error() != 13)
  {
    return 0;
  }

  if (geteuid())
  {
    return 0;
  }

  memset(&v7, 0, sizeof(v7));
  if (sub_10001B1E8(a1, &v7))
  {
    return 0;
  }

  if (!v7.st_uid)
  {
    return 0;
  }

  *v6 = 0;
  if (pthread_getugid_np(&v6[1], v6) || pthread_setugid_np(v7.st_uid, v7.st_gid))
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if (pthread_setugid_np(v6[1], v6[0]))
  {
    sub_100024D50();
  }

  if (v4 < 0)
  {
    return 0;
  }

LABEL_21:
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t sub_10001B1E8(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 512);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 0);
}

_BYTE *sub_10001B274(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t sub_10001B2E0()
{
  memset(&v2, 0, sizeof(v2));
  bzero(__s, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  while (sub_10001B1E8(__s, &v2))
  {
    v0 = strrchr(__s, 47);
    if (!v0)
    {
      return 0xFFFFFFFFLL;
    }

    *v0 = 0;
  }

  return v2.st_dev;
}

char *sub_10001B3A8(char *a1)
{
  if (*a1 != 47)
  {
    return 0;
  }

  v1 = a1;
  memset(&v8, 0, sizeof(v8));
  if (sub_10001B1E8(a1, &v8))
  {
    return 0;
  }

  st_dev = v8.st_dev;
  v5 = v9;
  bzero(v9, 0x400uLL);
  while (1)
  {
    v6 = strchr(v1, 47);
    if (!v6)
    {
      break;
    }

    v2 = v6 + 1;
    v7 = v6 + 1 - v1;
    memcpy(v5, v1, v7);
    v5 += v7;
    *v5 = 0;
    if (sub_10001B1E8(v9, &v8))
    {
      return 0;
    }

    v1 = v2;
    if (v8.st_dev == st_dev)
    {
      return v2;
    }
  }

  return &v1[strlen(v1)];
}

uint64_t sub_10001B4BC(char *a1, uid_t a2, gid_t a3, int a4)
{
  memset(&v10, 0, sizeof(v10));
  if (sub_10001B1E8(a1, &v10))
  {
    goto LABEL_2;
  }

  v9 = v10.st_mode & 0xF000;
  if (v9 == 0x4000)
  {
    if ((v10.st_mode & 0x1FF) != a4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v9 != 0x8000)
  {
    return 0;
  }

  if (unlink(a1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_2:
  if (mkdir(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  if (chmod(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

  if (chown(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B594(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return sub_10001B5D8(-1, a1, a2 | 0x20000000u, a4, a5, a6, a7, a8, v9);
}

uint64_t sub_10001B5D8(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t sub_10001B66C(_BYTE *a1, mode_t a2)
{
  v4 = geteuid();
  v5 = getegid();

  return sub_10001B6C4(a1, v4, v5, a2);
}

uint64_t sub_10001B6C4(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  bzero(__s, 0x400uLL);
  v8 = sub_10001ADBC(a1, __s);
  if (!v8 || (v9 = sub_10001AE44(v8, __s)) == 0)
  {
    v13 = 0xFFFFFFFFLL;
    v14 = 22;
LABEL_14:
    *__error() = v14;
    return v13;
  }

  v10 = v9;
  v11 = open(__s, 537952260);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = mkdirat(v11, v10, a4);
    if (_os_feature_enabled_impl())
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchmodat(v12, v10, a4, 2048);
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchownat(v12, v10, a2, a3, 2048);
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v14 = *__error();
LABEL_13:
    close(v12);
    goto LABEL_14;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001B820(_BYTE *a1, uid_t a2, gid_t a3, int a4)
{
  bzero(v15, 0x400uLL);
  if (sub_10001ADBC(a1, v15))
  {
    v8 = open(v15, 537952260);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      memset(&v14, 0, sizeof(v14));
      v10 = sub_10001BA2C(v8, &v14);
      if (v10)
      {
        v11 = v10;
LABEL_25:
        v12 = *__error();
LABEL_26:
        close(v9);
        *__error() = v12;
        return v11;
      }

      if (a2 == -1 || v14.st_uid == a2)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100024D7C();
        }

        v11 = fchown(v9, a2, 0xFFFFFFFF);
      }

      if (a3 != -1 && !v11)
      {
        if (v14.st_gid == a3)
        {
          goto LABEL_20;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100024DF8();
        }

        v11 = fchown(v9, 0xFFFFFFFF, a3);
      }

      if (v11)
      {
        goto LABEL_25;
      }

LABEL_20:
      if ((v14.st_mode & 0x1FF) == a4)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100024E74();
        }

        v11 = fchmod(v9, a4);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v12 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001BA2C(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

uint64_t sub_10001BABC(int a1, const char *a2, int a3)
{
  v6 = unlinkat(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x800) == 0 || *v7 != 22)
  {
    return v6;
  }

  return unlinkat(a1, a2, a3 & 0xFFFFF7FF);
}

uint64_t sub_10001BB54(const char *a1, const char *a2, unsigned int a3)
{
  v6 = renamex_np(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x10) == 0 || *v7 != 22)
  {
    return v6;
  }

  return renamex_np(a1, a2, a3 & 0xFFFFFFEF);
}

uint64_t sub_10001BBD4(int a1, int *a2)
{
  *a2 = -1;
  memset(&v4, 0, sizeof(v4));
  if (sub_10001BA2C(a1, &v4))
  {
    return 0;
  }

  *a2 = open(".", 32772);
  if (!pthread_fchdir_np())
  {
    return 1;
  }

  if ((*a2 & 0x80000000) == 0)
  {
    close(*a2);
  }

  result = 0;
  *a2 = -1;
  return result;
}

uint64_t sub_10001BC74(int a1)
{
  result = pthread_fchdir_np();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

size_t sub_10001BCC0(char *a1, int a2, uint64_t a3)
{
  sprintf(a1, "/.vol/%llu/%llu", a2, a3);

  return strlen(a1);
}

uint64_t sub_10001BD10(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 544);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 32);
}

uint64_t sub_10001BDBC(int a1, const char *a2, stat *a3, int a4)
{
  v8 = fstatat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return fstatat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t sub_10001BE50(int a1, const char *a2, int a3, int a4)
{
  v8 = faccessat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return faccessat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t sub_10001BEE4(int a1, const char *a2, uid_t a3, gid_t a4, int a5)
{
  v10 = fchownat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return fchownat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t sub_10001BF80(int a1, const char *a2, int a3, const char *a4, int a5)
{
  v10 = linkat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return linkat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t sub_10001C01C(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  v10 = renameatx_np(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x10) == 0 || *v11 != 22)
  {
    return v10;
  }

  return renameatx_np(a1, a2, a3, a4, a5 & 0xFFFFFFEF);
}

uint64_t sub_10001C0B8(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  v10 = getattrlist(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return getattrlist(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t sub_10001C154(int a1, const char *a2, void *a3, void *a4, size_t a5, unint64_t a6)
{
  v12 = getattrlistat(a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    return v12;
  }

  v13 = __error();
  if ((a6 & 0x800) == 0 || *v13 != 22)
  {
    return v12;
  }

  return getattrlistat(a1, a2, a3, a4, a5, a6 & 0xFFFFFFFFFFFFF7FFLL);
}

uint64_t sub_10001C204(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if (qword_10003CC58 != -1)
  {
    sub_100024EF4();
  }

  if (*a2 == 47)
  {
    v12 = 0;
    v13 = 47;
    while (v13 == a2[v12])
    {
      v13 = aSystemVolumesD_0[++v12];
      if (v12 == 37)
      {
LABEL_20:
        v14 = 1;
        goto LABEL_21;
      }
    }

    v15 = 0;
    v16 = 47;
    while (v16 == a2[v15])
    {
      v16 = aSystemVolumesD_1[++v15];
      if (v15 == 51)
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = 47;
    while (v18 == a2[v17])
    {
      v18 = aPrivateVarDbSp[++v17];
      if (v17 == 31)
      {
        goto LABEL_20;
      }
    }

    v19 = 0;
    v20 = 47;
    while (v20 == a2[v19])
    {
      v20 = aSystemVolumesD_2[++v19];
      if (v19 == 46)
      {
        goto LABEL_20;
      }
    }

    v26 = 0;
    v27 = 47;
    do
    {
      v28 = a2[v26];
      v14 = v27 == v28;
      if (v27 != v28)
      {
        break;
      }

      v27 = aPrivateVarDbSp_0[++v26];
    }

    while (v26 != 26);
  }

  else
  {
    v14 = 0;
  }

LABEL_21:
  if ((a3 & 0x400) != 0)
  {
    v21 = a3 & 0xDFFFFBFF | 0x20000000;
  }

  else
  {
    v21 = a3 | 0x20000000;
  }

  if ((v21 & 0x200) != 0)
  {
    v22 = a9;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_10001B5D8(a1, a2, v21, a4, a5, a6, a7, a8, v22);
  v24 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    memset(&v29, 0, sizeof(v29));
    if (fstat(v23, &v29) || v29.st_nlink != 1 || (bzero(&v30, 0x878uLL), !v14) && (fstatfs(v24, &v30) || *&v30.f_fsid == qword_10003CC48 || *&v30.f_fsid == qword_10003CC50))
    {
      close(v24);
      *__error() = 1;
      return 0xFFFFFFFFLL;
    }

    else if ((a3 & 0x400) != 0)
    {
      ftruncate(v24, 0);
    }
  }

  return v24;
}

void sub_10001C4C4(id a1)
{
  bzero(&v1, 0x878uLL);
  statfs("/", &v1);
  qword_10003CC48 = v1.f_fsid;
  statfs("/System/Volumes/Data", &v1);
  qword_10003CC50 = v1.f_fsid;
}

void sub_10001C570(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x18u);
}

uint64_t sub_10001C58C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1392);
    if (v2)
    {
      result = *(v2 + 8);
    }

    else
    {
      result = 0;
    }

    v3 = *(v1 + 1384);
    if (v3)
    {
      result += *(v3 + 8);
    }
  }

  return result;
}

uint64_t sub_10001C5BC(uint64_t a1, unint64_t a2)
{
  v2 = sub_10001C5E4(a1, a2);
  if (v2)
  {
    return v2 + 15208;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001C5E4(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1392);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = a2 >= v3;
      v5 = a2 - v3;
      if (v4)
      {
        a2 = v5;
      }

      else
      {
        v6 = *(*v2 + 8 * a2);
        if (v6)
        {
          return v6;
        }
      }
    }
  }

  v6 = *(a1 + 1384);
  if (v6)
  {
    if (a2 < *(v6 + 8))
    {
      return *(*v6 + 8 * a2);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10001C640(uint64_t a1, unint64_t a2)
{
  result = sub_10001C5E4(a1, a2);
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_10001C660(uint64_t a1, unint64_t a2)
{
  result = sub_10001C5E4(a1, a2);
  if (result)
  {
    return atomic_load((result + 36));
  }

  return result;
}

void sub_10001C868(id a1)
{
  pthread_mutex_lock(&stru_10003CAA8);
  v1 = qword_10003CC60;
  qword_10003CC60 = 0;

  pthread_mutex_unlock(&stru_10003CAA8);
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "exiting, livefs server connection interrupted", v3, 2u);
  }

  exit(0);
}

void sub_10001C8F0(id a1)
{
  v1 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "exiting, livefs server connection invalidated", v2, 2u);
  }

  exit(0);
}

void sub_10001D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10001D128(id a1, NSError *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "exiting, got error %@ while using synchronous connection", &v4, 0xCu);
  }

  exit(0);
}

uint64_t sub_10001D1AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D1C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  add = atomic_fetch_add(&dword_10003CAEC, 1u);
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v14 = add;
    v15 = 2080;
    v16 = a1;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%d] (%s) start on %p", buf, 0x1Cu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FA5C;
  block[3] = &unk_100035CA8;
  v12 = v6;
  v9 = v6;
  dispatch_sync(v5, block);
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v14 = add;
    v15 = 2080;
    v16 = a1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%d] (%s) complete", buf, 0x12u);
  }
}

id sub_10001D37C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001D3F0;
  v3[3] = &unk_100035AC8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 getRootFileHandleWithError:v3];
}

void sub_10001D3F0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (a3)
  {
    v10 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100024F48();
    }

    exit(0);
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  objc_storeStrong((*(v8 + 8) + 40), a2);
  v9 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100024FBC(v7);
  }
}

id sub_10001D4A8(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D534;
  v4[3] = &unk_100035B18;
  v4[4] = a1[6];
  return [v1 otherAttributeOf:v2 named:@"_O_f_uuid" requestID:-1 reply:v4];
}

void sub_10001D534(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100025028();
    }
  }

  else if (v5 && [v5 length] == 16)
  {
    v15 = *[v6 bytes];
    v8 = [[NSUUID alloc] initWithUUIDBytes:&v15];
    v9 = [v8 UUIDString];
    v11 = *(a1 + 32);
    v10 = a1 + 32;
    v12 = *(v11 + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v9;

    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100025098(v10);
    }
  }
}

id sub_10001D660(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D6EC;
  v4[3] = &unk_100035B18;
  v4[4] = a1[6];
  return [v1 otherAttributeOf:v2 named:@"_N_mount_time" requestID:-1 reply:v4];
}

void sub_10001D6EC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error %d getting volume mount time", v9, 8u);
    }
  }

  else if (v5 && [v5 length] == 8)
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 24) = *[v6 bytes];
  }
}

id sub_10001D7E0(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D86C;
  v4[3] = &unk_100035B18;
  v4[4] = a1[6];
  return [v1 otherAttributeOf:v2 named:@"_N_last_mtime" requestID:-1 reply:v4];
}

void sub_10001D86C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100025104();
    }
  }

  else if (v5 && [v5 length] == 8)
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 24) = *[v6 bytes];
  }
}

void sub_10001DBF8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10001DC24(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v1 = a1[2].i64[1];
  v5[0] = _NSConcreteStackBlock;
  v3 = vextq_s8(a1[3], a1[3], 8uLL);
  v4 = *(*(a1[3].i64[0] + 8) + 40);
  v5[1] = 3221225472;
  v5[2] = sub_10001DCD4;
  v5[3] = &unk_100035B68;
  v7 = v3;
  v6 = v1;
  [v2 lookupIn:v4 name:v6 usingFlags:0 requestID:-1 reply:v5];
}

void sub_10001DCD4(void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    v10 = *(*(a1[6] + 8) + 40);
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "LILookup: %d %@ - %@", v11, 0x1Cu);
  }
}

void sub_10001E164(void *a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v35 = a6;
  v38 = v11;
  v14 = [v11 count];
  v37 = v13;
  v15 = [v13 count];
  v16 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v12 length];
    v18 = [v35 UTF8String];
    *buf = 67110146;
    v19 = "";
    v40 = v14;
    if (v18)
    {
      v19 = v18;
    }

    v41 = 1024;
    *v42 = v15;
    *&v42[4] = 1024;
    *&v42[6] = v17;
    v43 = 1024;
    v44 = a4;
    v45 = 2080;
    v46 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "results: pc:%d xc:%d abs: %d s:%d ra:%s", buf, 0x24u);
  }

  v36 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  if (v14)
  {
    v21 = 0;
    v22 = 0;
    v23 = a4;
    *&v20 = 67109378;
    v34 = v20;
    do
    {
      v24 = [v38 objectAtIndexedSubscript:{v22, v34}];
      v25 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v24 UTF8String];
        *buf = v34;
        v40 = v22;
        v41 = 2080;
        *v42 = v32;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "result[%d]: %s", buf, 0x12u);
      }

      v26 = a1[4];
      if (v26)
      {
        v27 = [v26 stringByAppendingPathComponent:v24];

        v24 = v27;
      }

      v28 = [v12 bytes];
      v29 = a1[5];
      v30 = [v37 objectAtIndexedSubscript:v22];
      v31 = sub_100020E90(v29, v24, v28 + v21, v30);

      if (v31)
      {
        [v36 addObject:v31];
      }

      ++v22;
      v21 += v23;
    }

    while (v14 != v22);
  }

  v33 = a1[6];
  if (v33)
  {
    (*(v33 + 16))(v33, v36);
  }
}

uint64_t sub_10001E458(uint64_t a1, uint64_t a2)
{
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LISearch complete: %d", v6, 8u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10001E520(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E5DC;
  v5[3] = &unk_100035BE0;
  v5[4] = a1[8];
  v6 = v3;
  [v1 search:v2 token:v6 criteria:v4 resumeAt:0 maxData:0x10000 maxDelay:0 initialCredits:0.5 requestID:-1 reply:v5];
}

void sub_10001E5DC(uint64_t a1, int a2)
{
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000251E0();
    }

    v5 = [*(a1 + 32) serviceClient];
    [v5 LISCDropUpdateHandlerForInterestedItem:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "startResult: %d", v6, 8u);
  }
}

void sub_10001E9F8(uint64_t a1)
{
  v2 = [*(a1 + 32) volumeSyncConnection];
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EAA0;
  v4[3] = &unk_100035C30;
  v5 = v3;
  [v2 abortSearch:v5 requestID:-1 reply:v4];
}

void sub_10001EAA0(uint64_t a1, int a2)
{
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "complete (%d) cancelWithToken: %@", v6, 0x12u);
  }
}

void sub_10001ECE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_10001ED08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001ED84;
  v4[3] = &unk_100035C58;
  v5 = *(a1 + 48);
  return [v2 parentsAndAttributesForItemsByID:v1 requestID:-1 reply:v4];
}

void sub_10001ED84(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100025250();
    }
  }

  else if ([v6 count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }
}

void sub_10001FA6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10001FA94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

double sub_10001FAB4(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_10001FADC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  return result;
}

void *sub_10001FB10(uint64_t a1, unsigned int a2, size_t a3, void *__src)
{
  if ((a2 & 0x80000000) != 0)
  {
    sub_100025344();
  }

  if (a2 <= 0xF && a3 <= 8)
  {
    v4 = (a1 + 232);
    v5 = a1 + 240;
    v6 = (a1 + 240 + *(a1 + 232));
LABEL_8:
    *v6 = (a3 - 1) | (8 * a2);
    v7 = v6 + 1;
    v8 = 1;
    goto LABEL_10;
  }

  if (a2 - 32 < 0xFFFFFFE8 || a3 >= 0x801)
  {
    sub_1000252C0();
  }

  v4 = (a1 + 232);
  v5 = a1 + 240;
  v6 = (a1 + 240 + *(a1 + 232));
  if (a2 <= 0xF)
  {
    goto LABEL_8;
  }

  *v6 = (8 * a2) | ((a3 - 1) >> 8) | 0x80;
  v6[1] = a3 - 1;
  v7 = v6 + 2;
  v8 = 2;
LABEL_10:
  v9 = v8 + a3 + *v4;
  *v4 = v9;
  if (v9 > 0x1000)
  {
    sub_100025318();
  }

  v10 = *(a1 + 32);
  *(a1 + 32) = v10 + 1;
  if (v10 >= 8)
  {
    sub_1000252EC();
  }

  v11 = a1 + 24 * v10;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = v7 - v5;

  return memcpy(v7, __src, a3);
}

uint64_t sub_10002051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v6 = *(a3 + 44);
  if (v6 > 0)
  {
LABEL_2:
    *a4 = 1;
    v7 = *(a3 + 12);
    v8 = *a3 + *(a3 + 8);
    *a3 = v8;
    *(a4 + 8) = v8;
    *(a4 + 16) = v7;
    v9 = v6 - 1;
    v10 = (*(a3 + 48) & (1 << v9)) != 0;
    *(a4 + 20) = *(a3 + 28);
    *(a4 + 24) = v10;
    *(a4 + 28) = 0;
    *(a4 + 232) = 0;
    *(a3 + 44) = v9;
    return v9 == 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = a2 - v13;
    if (a2 == v13)
    {
      return 0;
    }

    v15 = *(a1 + v13);
    v16 = v15 >> 6;
    if (v15 >> 6)
    {
      break;
    }

    *(a3 + 8) = 1;
    *(a3 + 44) = (v15 >> 4) + 1;
    *(a3 + 48) = v15 & 0xF;
    if (v15 <= 0xF)
    {
      *(a3 + 48) = v15 & 1;
      *(a3 + 8) = (v15 >> 1) + 1;
    }

    *(a4 + 208) = 0uLL;
    *(a4 + 224) = 0uLL;
    *(a4 + 176) = 0uLL;
    *(a4 + 192) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 160) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 128) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 48) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 16) = 0uLL;
    *(a4 + 32) = 0uLL;
    *a4 = 0uLL;
    ++v13;
    v6 = *(a3 + 44);
    if (v6 > 0)
    {
      goto LABEL_2;
    }
  }

  if (v16 != 1)
  {
    if (v16 == 2)
    {
      v17 = sub_100020A68(a3, (a1 + v13 + 1), ~v13 + a2, 1, v15, a4);
      v11 = v17;
      if (v17 >= 1)
      {
        v11 = v17 + 1;
        *a4 = 1;
        if (*(a4 + 232) >= 2uLL && sub_100020C9C(a4) < 0)
        {
          return -1;
        }
      }

      return v11;
    }

    *a4 = 0;
    v19 = (a1 + v13 + 1);
    if ((v15 & 0x20) != 0)
    {
      if (a2 - 1 == v13)
      {
        return -1;
      }

      v23 = a1 + v13;
      v24 = *v19;
      v19 = (v23 + 2);
      v21 = (v24 & 0xFFFFF0FF | ((v15 & 0xF) << 8)) + 1;
      *(a4 + 232) = v21;
      v20 = v14 - 2;
      v22 = 2;
    }

    else
    {
      v20 = ~v13 + a2;
      v21 = (v15 & 0x1F) + 1;
      *(a4 + 232) = v21;
      v22 = 1;
    }

    if (v20 >= v21)
    {
      memcpy((a4 + 240), v19, v21);
      if (v21 < 2)
      {
        if (!*v19)
        {
          *(a3 + 48) = 0;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
        }
      }

      else if ((sub_100020C9C(a4) & 0x80000000) != 0)
      {
        return -1;
      }

      return *(a4 + 232) + v22;
    }

    return -1;
  }

  v18 = sub_100020A68(a3, (a1 + v13 + 1), ~v13 + a2, 0, v15, a4);
  v11 = v18;
  if (v18 >= 1)
  {
    v11 = v18 + 1;
    *a4 = 1;
  }

  return v11;
}

uint64_t sub_100020880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __chkstk_darwin(a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  bzero(v17, 0x10F0uLL);
  v13 = sub_10002051C(v12, v11, v9, v17);
  if (v13 != 0xFFFFFFFFLL)
  {
    (*(v7 + 16))(v7, v17);
    v14 = *(v9 + 44);
    if ((v13 == 0) != (v14 != 0))
    {
      return -99;
    }

    if (v14 >= 1)
    {
      do
      {
        v16 = sub_10002051C(v12, 0, v9, v17);
        v13 = v16;
        if (v16 == 1)
        {
          if (*(v9 + 44))
          {
            goto LABEL_14;
          }
        }

        else if (v16 || !*(v9 + 44))
        {
LABEL_14:
          sub_100025370();
        }

        (*(v7 + 16))(v7, v17);
      }

      while (*(v9 + 44) > 0);
    }

    (*(v7 + 16))(v7, 0);
  }

  return v13;
}

uint64_t sub_1000209F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (result)
    {
      LODWORD(result) = (*(result + 16))();
      if (result == 1)
      {
        [*(a1 + 32) pushCommand:a2 block:0];
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    [*(a1 + 32) flushWithBlock:0];
    return 0;
  }

  return result;
}

unint64_t sub_100020A68(uint64_t a1, unsigned __int16 *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6)
{
  v8 = 3;
  if (!a4)
  {
    v8 = 1;
  }

  if (v8 > a3)
  {
    return -1;
  }

  v40 = v6;
  v41 = v7;
  v14 = (a2 + 1);
  v13 = *a2;
  v15 = v13 >> 6;
  v16 = a5 & 3;
  v17 = ((1 << (a5 & 3)) + 1);
  if ((v13 >> 6) != 3)
  {
    v16 = 0;
    v17 = 1;
  }

  if (v15 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = (v13 >> 3) & 7;
  if (v15 == 2)
  {
    v17 = v13 >> 6;
  }

  v20 = v13 & 7;
  v21 = v17 + dword_10002A648[v19] + dword_10002A648[v13 & 7];
  if (a4)
  {
    v22 = *(a2 + 1);
    if (*(a2 + 1) < 0)
    {
      v14 = (a2 + 3);
      v25 = *(a2 + 2) | ((v22 & 0xF) << 8);
      v23 = v21 + 2;
      v22 = v25;
    }

    else
    {
      v14 = a2 + 1;
      v23 = v21 + 1;
    }

    v24 = v22 + 1;
    v21 = v22 + 1 + v23;
  }

  else
  {
    v24 = 0;
  }

  result = -1;
  if (v21 <= a3 && (v21 & 0x8000000000000000) == 0)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v26 = 0;
        v28 = *v14;
        v14 = (v14 + 1);
        *a1 = *a1 + (v28 & 0xFFFFF0FF | ((a5 & 0xF) << 8)) - 512;
        v29 = (a5 >> 4) & 3;
      }

      else
      {
        v29 = (a5 >> 4) & 3;
        v26 = (a5 >> 2) & 3;
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v32 = *v14;
            v14 += 2;
            v31 = v32;
          }

          else
          {
            v34 = *v14;
            v14 += 4;
            v31 = v34;
          }
        }

        else if (v18)
        {
          v33 = *v14++;
          v31 = v33 + *a1 - 0x4000;
        }

        else
        {
          v30 = *v14;
          v14 = (v14 + 1);
          v31 = v30 + *a1 - 64;
        }

        *a1 = v31;
      }
    }

    else
    {
      v26 = 0;
      if (v15)
      {
        v27 = *a1 + (a5 & 0x1F) + 24;
      }

      else
      {
        v27 = *a1 + (a5 & 0x1F) - 8;
      }

      *a1 = v27;
      v29 = (a5 >> 5) & 1;
    }

    v39 = 0;
    v35 = (v14 + sub_100020D58(v14, v19, (a1 + 12), &v39));
    v38 = 0;
    v36 = sub_100020D58(v35, v20, (a1 + 28), &v38);
    *a6 = 1;
    *(a6 + 8) = *a1;
    v37 = v38;
    *(a6 + 16) = v39;
    *(a6 + 20) = v37;
    *(a6 + 24) = v29;
    *(a6 + 28) = v26;
    *(a6 + 232) = v24;
    if (v24)
    {
      memcpy((a6 + 240), v35 + v36, v24);
    }

    return v21;
  }

  return result;
}

uint64_t sub_100020C9C(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 < 2)
  {
    LODWORD(v2) = 0;
    v10 = 0;
  }

  else
  {
    v2 = 0;
    v3 = (a1 + 56);
    v4 = (a1 + 240);
    while (1)
    {
      v5 = (v4 + 1);
      v6 = *v4;
      if (*v4 < 0)
      {
        v5 = (v4 + 2);
        v7 = (v4[1] | ((v6 & 7) << 8)) + 1;
        v1 -= 2;
      }

      else
      {
        --v1;
        v7 = (v6 & 7) + 1;
      }

      if (v1 < v7)
      {
        break;
      }

      *(v3 - 4) = v6 >> 3;
      *(v3 - 1) = v7;
      *v3 = v5 - (a1 + 240);
      v3 += 6;
      v8 = v2 + 1;
      v1 -= v7;
      v4 = &v5[v7];
      if (v1 < 2 || v2++ >= 7)
      {
        v10 = 0;
        LODWORD(v2) = v8;
        goto LABEL_15;
      }
    }

    v10 = -1;
  }

LABEL_15:
  if (v1)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 32) = v2;
  return v11;
}

uint64_t sub_100020D58(unsigned __int16 *a1, int a2, char *__src, int *a4)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v6 = *a1;
        result = 2;
      }

      else
      {
        v6 = *a1;
        result = 4;
      }
    }

    else
    {
      if (a2 == 4)
      {
        if (*a1)
        {
          v6 = *a1;
        }

        else
        {
          v6 = -2;
        }
      }

      else
      {
        v6 = *a1 | 0x100;
      }

      result = 1;
    }

    *(__src + 3) = *(__src + 2);
    *(__src + 4) = *__src;
  }

  else
  {
    v6 = *&__src[4 * a2];
    if (a2 >= 1)
    {
      memmove(__src + 4, __src, 4 * a2);
    }

    result = 0;
  }

  *__src = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100020E18(uint64_t result)
{
  if (result)
  {
    return CSIsInterestingPath();
  }

  return result;
}

uint64_t sub_100020E24(void *a1)
{
  v1 = a1;
  if ([v1 length] && (objc_msgSend(v1, "characterAtIndex:", 0) & 0xFFFE) != 0x2E && objc_msgSend(v1, "UTF8String"))
  {
    v2 = CSIsInterestingPath();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100020E90(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [v7 length];
  v11 = 0;
  if (!a3 || !v10)
  {
    goto LABEL_68;
  }

  v12 = *(a3 + 8);
  if ((v12 & 1) == 0 || (v13 = *(a3 + 24), (v13 - 3) < 0xFFFFFFFE))
  {
    v11 = 0;
    goto LABEL_68;
  }

  v122 = v9;
  v14 = [v9 count];
  v119 = &v114;
  v118 = v14 + 32;
  v15 = 8 * (v14 + 32);
  __chkstk_darwin(v14, v16, v17, v18, v19);
  v20 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v20, v15);
  __chkstk_darwin(v21, v22, v23, v24, v25);
  v126 = v20;
  bzero(v20, v15);
  v26 = [v8 rangeOfString:@"/" options:6];
  LODWORD(v117) = v13;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v8;
  }

  else
  {
    v27 = [v8 substringFromIndex:v26 + 1];
  }

  v28 = v27;
  v29 = [v27 rangeOfString:@"." options:6];
  v125 = v28;
  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v124 = v28;
  }

  else
  {
    v31 = v29;
    v32 = v30;
    v124 = [v28 substringToIndex:v29];
    v33 = v31 + v32;
    if (v33 < [v28 length])
    {
      v123 = [v28 substringFromIndex:v33];
      goto LABEL_14;
    }
  }

  v123 = 0;
LABEL_14:
  v34 = *v20;
  *v20 = @":MD:kMDItemPathFromMountPoint";

  v35 = v126;
  objc_storeStrong(v126, a2);
  v36 = v20[1];
  v20[1] = @":MD:kMDItemPath";

  v37 = [v7 stringByAppendingFormat:@"/%@", v8];
  v38 = v35[1];
  v35[1] = v37;

  if ((v12 & 0x100) != 0)
  {
    v40 = v20[2];
    v20[2] = @":MD:_kMDItemOID";

    v41 = [NSNumber numberWithUnsignedLongLong:*(a3 + 64)];
    v42 = v35[2];
    v35[2] = v41;

    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

  v120 = v8;
  v121 = v7;
  if ((v12 & 0x200) != 0)
  {
    v44 = v20[v39];
    v20[v39] = @":MD:_kMDItemOIDParent";

    v45 = [NSNumber numberWithUnsignedLongLong:*(a3 + 72)];
    v43 = v126;
    v46 = v126[v39];
    v126[v39] = v45;

    ++v39;
  }

  else
  {
    v43 = v126;
  }

  v47 = v20[v39];
  v20[v39] = @"_kMDItemFileName";

  v48 = v125;
  objc_storeStrong(&v43[v39], v125);
  v49 = v20[v39 + 1];
  v20[v39 + 1] = @"kMDItemAlternateNames";

  objc_storeStrong(&v43[v39 + 1], v48);
  v50 = 8 * v39 + 16;
  v51 = *(v20 + v50);
  *(v20 + v50) = @"kMDItemDisplayName";

  objc_storeStrong((v43 + v50), v124);
  v52 = v39 + 3;
  if ((v12 & 8) != 0)
  {
    v61 = v20[v52];
    v20[v52] = @"_kMDItemOwnerUserID";

    v62 = [NSNumber numberWithUnsignedInt:*(a3 + 36)];
    v63 = v43[v52];
    v43[v52] = v62;

    v52 = v39 + 4;
    if ((v12 & 0x10) == 0)
    {
LABEL_22:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  v64 = v20[v52];
  v20[v52] = @"_kMDItemOwnerGroupID";

  v65 = [NSNumber numberWithUnsignedInt:*(a3 + 40)];
  v66 = v43[v52];
  v43[v52] = v65;

  ++v52;
  if ((v12 & 0x800) == 0)
  {
LABEL_23:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_30:
  v67 = [NSDate dateWithTimeIntervalSince1970:*(a3 + 112)];
  v68 = v52;
  v69 = v20[v52];
  v20[v52] = @"_kMDItemContentChangeDate";

  objc_storeStrong(&v43[v52], v67);
  v70 = v20[v52 + 1];
  v20[v68 + 1] = @"kMDItemContentModificationDate";

  v71 = v43[v52 + 1];
  v43[v68 + 1] = v67;
  v72 = v67;

  +[NSDate timeIntervalSinceReferenceDate];
  v74 = v73;
  [v72 timeIntervalSinceReferenceDate];
  if (v75 <= v74)
  {
    v74 = v75;
  }

  v76 = v20[v68 + 2];
  v20[v68 + 2] = @"com_apple_metadata_modtime";

  v77 = [NSNumber numberWithDouble:v74];
  v78 = v43[v68 + 2];
  v43[v68 + 2] = v77;

  v52 += 3;
  if ((v12 & 0x1000) != 0)
  {
LABEL_24:
    v53 = [NSDate dateWithTimeIntervalSince1970:*(a3 + 112)];
    v54 = v20[v52];
    v20[v52] = @"_kMDItemCreationDate";

    objc_storeStrong(&v43[v52], v53);
    v55 = v20[v52 + 1];
    v20[v52 + 1] = @"kMDItemContentCreationDate";

    objc_storeStrong(&v43[v52 + 1], v53);
    v56 = 8 * v52 + 16;
    v57 = *(v20 + v56);
    *(v20 + v56) = @"kMDItemDateAdded";

    v58 = *(v43 + v56);
    *(v43 + v56) = v53;

    v52 += 3;
  }

LABEL_25:
  v59 = v117;
  if (v117 == 1)
  {
    if ((v12 & 0x40) == 0)
    {
      v60 = 0;
      goto LABEL_36;
    }

    v79 = v20[v52];
    v20[v52] = @"kMDItemPhysicalSize";

    v80 = [NSNumber numberWithUnsignedLongLong:*(a3 + 48)];
    v81 = v43[v52];
    v43[v52] = v80;

    v82 = 8 * v52 + 8;
    v83 = *(v20 + v82);
    *(v20 + v82) = @"kMDItemLogicalSize";

    v84 = [NSNumber numberWithUnsignedLongLong:*(a3 + 48)];
    v85 = *(v43 + v82);
    *(v43 + v82) = v84;

    v52 += 2;
  }

  v60 = sub_100021790(v123, v59 != 1);
LABEL_36:
  v86 = [v60 length];
  if (v86)
  {
    v91 = v20[v52];
    v20[v52] = @"kMDItemContentType";

    objc_storeStrong(&v43[v52], v60);
    v92 = v52 + 1;
    v93 = v60;
    if ([(__CFString *)v93 length])
    {
      v94 = sub_100001314(v93);
      if ([(__CFString *)v94 count])
      {
LABEL_41:

        if ([(__CFString *)v94 count])
        {
          v95 = v20[v92];
          v20[v92] = @"kMDItemContentTypeTree";

          objc_storeStrong(&v43[v92], v94);
          v92 = v52 + 2;
        }

        v52 = v92;
        goto LABEL_44;
      }
    }

    v94 = 0;
    goto LABEL_41;
  }

LABEL_44:
  v96 = v14;
  if (v14)
  {
    v116 = &v114;
    v117 = v60;
    __chkstk_darwin(v86, v87, v88, v89, v90);
    v97 = (&v114 - ((v96 * 8 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v97, 8 * v14);
    __chkstk_darwin(v98, v99, v100, v101, v102);
    v103 = v97;
    bzero(v97, 8 * v14);
    v115 = MDExtendedAttributeBlockList();
    [v122 getObjects:v97 andKeys:v97 count:v14];
    if (v14 >= 1)
    {
      while (1)
      {
        v104 = *v103;
        if (*v97)
        {
          v105 = v104 == 0;
        }

        else
        {
          v105 = 1;
        }

        if (v105)
        {
          goto LABEL_56;
        }

        v106 = sub_100021C8C(*v97, v104);
        if (v106)
        {
          break;
        }

LABEL_55:

LABEL_56:
        ++v103;
        ++v97;
        if (!--v14)
        {
          goto LABEL_62;
        }
      }

      v107 = @":EA:kMDItemFavoriteRank";
      if (([*v97 isEqualToString:off_10003CAF0] & 1) == 0)
      {
        v107 = @":EA:kMDItemLastUsedDate";
        if (([*v97 isEqualToString:off_10003CAF8] & 1) == 0)
        {
          if (![*v97 hasPrefix:@"com.apple.metadata:"])
          {
            goto LABEL_55;
          }

          v109 = [*v97 substringFromIndex:{objc_msgSend(@"com.apple.metadata:", "length")}];
          if (CFSetContainsValue(v115, v109))
          {
            goto LABEL_54;
          }

          v107 = [NSString stringWithFormat:@":EA:%@", v109];

          if (!v107)
          {
            goto LABEL_55;
          }
        }
      }

      v108 = v20[v52];
      v20[v52] = v107;
      v109 = v107;

      v43 = v126;
      objc_storeStrong(&v126[v52++], v106);
LABEL_54:

      goto LABEL_55;
    }

LABEL_62:
    v60 = v117;
  }

  v11 = [NSDictionary dictionaryWithObjects:v43 forKeys:v20 count:v52];

  v110 = v43;
  v8 = v120;
  v7 = v121;
  if (v118)
  {
    v111 = v110 + 31;
    v112 = v96 * 8;
    do
    {

      v112 -= 8;
    }

    while (v112 != -256);
    do
    {

      --v96;
    }

    while (v96 != -32);
  }

  v9 = v122;
LABEL_68:

  return v11;
}

id sub_100021790(void *a1, int a2)
{
  v3 = a1;
  if (![(__CFString *)v3 length])
  {
LABEL_10:
    v10 = &kUTTypeFolder;
    if (!a2)
    {
      v10 = &kUTTypeItem;
    }

    v7 = *v10;
    goto LABEL_13;
  }

  pthread_mutex_lock(&stru_10003CB10);
  v4 = qword_10003CC68;
  if (!qword_10003CC68)
  {
    v5 = objc_opt_new();
    v6 = qword_10003CC68;
    qword_10003CC68 = v5;

    v4 = qword_10003CC68;
  }

  v7 = [v4 objectForKeyedSubscript:v3];
  pthread_mutex_unlock(&stru_10003CB10);
  if (!v7)
  {
    v8 = &kUTTypeData;
    if (a2)
    {
      v8 = &kUTTypeDirectory;
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v3, *v8);
    if (PreferredIdentifierForTag)
    {
      v7 = PreferredIdentifierForTag;
      if (([(__CFString *)PreferredIdentifierForTag hasPrefix:@"dyn."]& 1) == 0)
      {
        pthread_mutex_lock(&stru_10003CB10);
        [qword_10003CC68 setObject:v7 forKeyedSubscript:v3];
        pthread_mutex_unlock(&stru_10003CB10);
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

LABEL_13:

  return v7;
}

_BYTE *sub_1000218D0(void *a1, uint64_t a2, unint64_t a3, void *a4, size_t a5)
{
  v9 = a1;
  *(a3 + 1023) = 0;
  if (!a2)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  __src = a4;
  v10 = (a3 + 1023);
  v11 = -1;
  while (a2 != 2)
  {
    v12 = [NSNumber numberWithUnsignedLongLong:a2];
    v13 = [v9 objectForKeyedSubscript:v12];

    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = [v13 objectForKeyedSubscript:@"attributes"];
    if (![v14 length])
    {
      goto LABEL_19;
    }

    v15 = [v14 bytes];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    if ((~v15[2] & 0x300) != 0 || *(v15 + 8) != a2)
    {
      goto LABEL_19;
    }

    v17 = [v13 objectForKeyedSubscript:@"name"];
    v18 = v17;
    if (!v17 || (v19 = [v17 UTF8String], v20 = strlen(v19), v10 -= v20, v10 < a3) || (memcpy(v10, v19, v20), (a2 = *(v16 + 9)) == 0))
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    if (a5 || a2 != 2)
    {
      if (--v10 < a3)
      {
        goto LABEL_18;
      }

      *v10 = 47;
    }

    if (++v11 > 0x1FF)
    {
      goto LABEL_20;
    }
  }

  if (a5)
  {
    v10 -= a5;
    if (v10 >= a3)
    {
      memcpy(v10, __src, a5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v10;
}

unint64_t sub_100021A98(void *a1, unint64_t a2, unint64_t *a3, unint64_t a4, int *a5)
{
  v9 = a1;
  if (a2 > 1)
  {
    if (a4)
    {
      *a3 = a2;
      a4 = 1;
    }

    if (a2 == 2)
    {
      if (a5)
      {
        v10 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      a4 = a4;
      while (a2 != 2)
      {
        v11 = [NSNumber numberWithUnsignedLongLong:a2];
        v12 = [v9 objectForKeyedSubscript:v11];

        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = [v12 objectForKeyedSubscript:@"attributes"];
        if (![v13 length] || (v14 = objc_msgSend(v13, "bytes")) == 0 || (~*(v14 + 2) & 0x300) != 0)
        {
          v10 = 2;
LABEL_21:

          if (!a5)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v10 = 22;
        if (*(v14 + 8) != a2 || a4 >= 0x1FF)
        {
          goto LABEL_21;
        }

        a2 = *(v14 + 9);
        a3[a4] = a2;

        ++a4;
        if (!a2)
        {
LABEL_18:
          v10 = 2;
          if (a5)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }
      }

      v10 = 0;
      if (a5)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a4 = 0;
    if (a5)
    {
      v10 = 2;
LABEL_22:
      *a5 = v10;
    }
  }

LABEL_23:

  return a4;
}

const __CFNumber *sub_100021C50(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return (valuePtr != 0);
  }

  return result;
}

CFNullRef sub_100021C8C(void *a1, CFNullRef cf)
{
  v4 = kCFNull;
  result = kCFNull;
  if (kCFNull == cf)
  {
LABEL_4:
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    result = MDPropertyCopyDecodedValue();
    goto LABEL_4;
  }

LABEL_5:
  if (![a1 isEqualToString:@"com.apple.metadata:_kMDItemUserTags"])
  {
    return 0;
  }

  if (qword_10003CC70 != -1)
  {
    sub_10002539C();
  }

  v35 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10003CC78 fromData:cf error:&v35];
  v8 = v35;
  if (v35)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = a1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Decoding error: %@ for %@", buf, 0x16u);
    }

    return v4;
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![objc_msgSend(v9 objectForKeyedSubscript:{@"v", "isEqual:", &off_100036C70}])
  {
    return 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"t"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = [v10 count];
  v16 = v11;
  if (v11 > 99)
  {
    return 0;
  }

  v17 = 8 * v11;
  __chkstk_darwin(v11, v12, v13, v14, v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v18, 8 * v16);
  v19 = [v10 getObjects:v18 range:{0, v16}];
  __chkstk_darwin(v19, v20, v21, v22, v23);
  v24 = v18;
  bzero(v18, 8 * v16);
  if (v16 < 1)
  {
    return 0;
  }

  v25 = 0;
  do
  {
    v26 = *v18;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v28 = *v18;
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v31 = *v18;
      goto LABEL_31;
    }

    v29 = [*v18 count];
    if (v29 == 2)
    {
      [v28 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v31 = [v28 objectAtIndexedSubscript:0];
      v32 = [v28 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v32 intValue];
        if ((v33 - 1) <= 6)
        {
          v30 = [v31 stringByAppendingFormat:@"\n%d", v33];
LABEL_23:
          v31 = v30;
        }
      }

      if (!v31)
      {
        goto LABEL_32;
      }

LABEL_31:
      v24[v25++] = v31;
      goto LABEL_32;
    }

    if (v29 == 1)
    {
      [v28 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v28 objectAtIndexedSubscript:0];
        goto LABEL_23;
      }
    }

LABEL_32:
    ++v18;
    --v16;
  }

  while (v16);
  if (v25 > 0)
  {
    return [[NSArray alloc] initWithObjects:v24 count:v25];
  }

  return 0;
}

void sub_100022090(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x100022030);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x100022088);
}

void sub_1000220F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_100022084(a1);
}

void sub_1000220FC(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  qword_10003CC78 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
}

CFNullRef sub_100022190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __chkstk_darwin(a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = value;
  bzero(value, 0x1000uLL);
  v12 = fgetxattr(v10, v9, value, 0x1000uLL, 0, 0);
  if (v12 == -1)
  {
    if (*__error() != 34)
    {
      return 0;
    }

    v13 = fgetxattr(v10, v9, 0, 0, 0, 0);
    v11 = malloc_type_malloc(v13, 0x6EEED0F6uLL);
    v12 = fgetxattr(v10, v9, v11, v13, 0, 0);
  }

  else
  {
    v13 = v12;
  }

  v14 = 0;
  if (v13 >= 1 && v12 == v13)
  {
    if ((*v11 & 0x80000000) == 0)
    {
LABEL_8:
      v15 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v11, v13, kCFAllocatorNull);
      v16 = CFStringCreateWithCString(kCFAllocatorDefault, v9, 0x8000100u);
      v14 = sub_100021C8C(v16, v15);
      CFRelease(v15);
      CFRelease(v16);
      goto LABEL_9;
    }

    v18 = *v11;
    if ((v18 - 241) >= 2)
    {
      if (v18 != 129)
      {
        goto LABEL_8;
      }

      if (v13 != 9)
      {
        goto LABEL_8;
      }

      v14 = CFDateCreate(kCFAllocatorDefault, *(v11 + 1));
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else if (v7)
    {
      *v7 = 1;
      v14 = CFDataCreate(kCFAllocatorDefault, v11, v13);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_9:
  if (v11 != value)
  {
    free(v11);
  }

  return v14;
}

CFMutableDictionaryRef sub_1000223C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __chkstk_darwin(a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = namebuff;
  bzero(namebuff, 0x1000uLL);
  v12 = flistxattr(v10, namebuff, 0x1000uLL, 0);
  if (v12 < 0)
  {
    if (*__error() != 34)
    {
      return CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v13 = flistxattr(v10, 0, 0, 0);
    v43 = malloc_type_malloc(v13, 0x7C8DE1E7uLL);
    if (!v43)
    {
      return 0;
    }

    v11 = v43;
    if (flistxattr(v10, v43, v13, 0) < 0)
    {
      return 0;
    }
  }

  else
  {
    v13 = v12;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v13 >= 1)
  {
    v45 = v7;
    __s1 = v11;
    v15 = [[NSUUID alloc] initWithUUIDBytes:&unk_10002A668];
    v16 = [[NSMutableArray alloc] initWithObjects:{v15, 0}];

    v47 = objc_alloc_init(NSMutableArray);
    v46 = objc_alloc_init(NSMutableArray);
    if (v13 >= 3)
    {
      v17 = __s1;
      do
      {
        if (!*v17)
        {
          break;
        }

        if (!strncmp(v17, "com.apple.metadata", 0x12uLL))
        {
          v26 = *(v17 + 18);
          LOBYTE(valuePtr) = 0;
          if (v26 != 58)
          {
            if (v26 != 46)
            {
              goto LABEL_46;
            }

            LOBYTE(valuePtr) = 1;
          }

          v23 = sub_100022190(v10, v17, &valuePtr, v18, v19);
          if (v23)
          {
            if (valuePtr)
            {
LABEL_32:
              if (!strncmp(v17, "com.apple.metadata:kMDLabel_", 0x1CuLL))
              {
                bzero(&value, 0x400uLL);
                snprintf(&value, 0x400uLL, "%s.%s", "com.apple.metadata", (v17 + 28));
                [v46 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", &value)}];
                [v47 addObject:v23];
              }

              if (!v23)
              {
                goto LABEL_46;
              }
            }

            else if ((v9 & 1) == 0)
            {
              v27 = CFStringCreateWithCString(kCFAllocatorDefault, (v17 + 19), 0x8000100u);
              if (v27)
              {
                v28 = v27;
                CFDictionaryAddValue(Mutable, v27, v23);
                CFRelease(v28);
              }
            }

            goto LABEL_35;
          }

          if (valuePtr)
          {
            goto LABEL_32;
          }
        }

        else if ((v9 & 1) == 0)
        {
          if (!strcmp(v17, "com.apple.lastuseddate#PS"))
          {
            value = 0;
            v59 = 0;
            v60 = 0;
            if (v10 == -1)
            {
              goto LABEL_45;
            }

            v29 = fgetxattr(v10, "com.apple.lastuseddate#PS", &value, 0x18uLL, 0, 0);
            if ((v29 & 0x8000000000000000) == 0)
            {
              if (v29 != 16)
              {
LABEL_45:
                *__error() = 22;
                goto LABEL_46;
              }

              if (value)
              {
                v23 = CFDateCreate(kCFAllocatorDefault, v59 / 1000000000.0 + value - kCFAbsoluteTimeIntervalSince1970);
                v24 = Mutable;
                v25 = @"kMDItemLastUsedDate";
LABEL_30:
                CFDictionarySetValue(v24, v25, v23);
LABEL_35:
                CFRelease(v23);
              }
            }
          }

          else if (!strcmp(v17, "com.apple.TextEncoding"))
          {
            p_value = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v10, v17, &value, 0x400uLL, 0, 0) > 0)
            {
              goto LABEL_39;
            }

            if (*__error() == 34)
            {
              v31 = fgetxattr(v10, v17, 0, 0, 0, 0);
              p_value = malloc_type_calloc(1uLL, v31 + 1, 0x100004077774924uLL);
              fgetxattr(v10, v17, p_value, v31, 0, 0);
LABEL_39:
              v32 = strchr(p_value, 59);
              if (v32)
              {
                encoding = 0;
                if (sscanf(v32 + 1, "%u", &encoding) == 1)
                {
                  if (CFStringIsEncodingAvailable(encoding))
                  {
                    valuePtr = encoding;
                    v33 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
                    CFDictionarySetValue(Mutable, @"--_kMDItemTextEncodingHint", v33);
                    CFRelease(v33);
                  }
                }
              }

              if (p_value != &value)
              {
                free(p_value);
              }
            }
          }

          else if (!strncmp(v17, "com.apple.SharedWithYou", 0x17uLL))
          {
            v20 = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v10, v17, &value, 0x400uLL, 0, 0) <= 0)
            {
              if (*__error() != 34)
              {
                goto LABEL_46;
              }

              v21 = fgetxattr(v10, v17, 0, 0, 0, 0);
              v20 = malloc_type_calloc(1uLL, v21 + 1, 0x100004077774924uLL);
              fgetxattr(v10, v17, v20, v21, 0, 0);
            }

            v22 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x8000100u);
            if (v22)
            {
              v23 = v22;
              v24 = Mutable;
              v25 = @"com.apple.SharedWithYou";
              goto LABEL_30;
            }
          }
        }

LABEL_46:
        v34 = strlen(v17) + 1;
        v17 += v34;
        v13 -= v34;
      }

      while (v13 > 2);
    }

    if ([v46 count])
    {
      if (v45)
      {
        v35 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerAddCString();
        _MDPlistContainerBeginArray();
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v36 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v50;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v50 != v38)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v49 + 1) + 8 * i) UUIDString];
              _MDPlistContainerAddObject();
            }

            v37 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v37);
        }

        _MDPlistContainerEndArray();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        v40 = [NSData alloc];
        Bytes = _MDPlistContainerGetBytes();
        v42 = [v40 initWithBytes:Bytes length:_MDPlistContainerGetLength()];
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedData", v42);

        CFRelease(v35);
      }

      else
      {
        v55[0] = @"xids";
        v55[1] = @"uuids";
        v56[0] = v46;
        v56[1] = v16;
        v55[2] = @"datas";
        v56[2] = v47;
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedDataDictionary", [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:3]);
      }
    }

    if (__s1 != namebuff)
    {
      free(__s1);
    }
  }

  return Mutable;
}

CFMutableDictionaryRef sub_100022BF8(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = open(a1, 33024);
  if (v5 == -1)
  {
    return 0;
  }

  v8 = v5;
  v9 = sub_1000223C0(v5, a2, a3, v6, v7);
  close(v8);
  return v9;
}

uint64_t sub_100022C5C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    SI_PersistentIDStoreGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 24) = malloc_type_malloc(0x450uLL, 0x100004082453793uLL);
    *(Instance + 16) = v1;
    *(Instance + 160) = 0;
    *(Instance + 32) = sub_100022D90;
    *(Instance + 40) = sub_100022DD4;
    *(Instance + 48) = sub_100022E30;
    *(Instance + 56) = sub_100022E8C;
    *(Instance + 64) = sub_100022FF0;
    *(Instance + 80) = sub_100023098;
    *(Instance + 128) = sub_1000230A8;
    *(Instance + 136) = sub_1000230F8;
    *(Instance + 144) = sub_100023144;
    *(Instance + 152) = sub_10002314C;
    *(Instance + 184) = sub_100023154;
  }

  else
  {
    Instance = 0;
  }

  return Instance;
}

void sub_100022D90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = objc_opt_self();
}

id sub_100022DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v7 = 0;
  v4 = [v3 pathFromOID:a2 pathBuffer:a3 pathBufferSize:1024 fullPath:1 error:&v7];
  v5 = v7;
  if (v7)
  {
    *__error() = v5;
  }

  return v4;
}

id sub_100022E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v7 = 0;
  v4 = [v3 pathFromOID:a2 pathBuffer:a3 pathBufferSize:1024 fullPath:1 error:&v7];
  v5 = v7;
  if (v7)
  {
    *__error() = v5;
  }

  return v4;
}

const char *sub_100022E8C(uint64_t a1, const char *st_ino)
{
  v3 = *(a1 + 16);
  v4 = v3;
  memset(&v10, 0, sizeof(v10));
  if (st_ino)
  {
    v5 = [v3 rootPathUTF8String];
    v6 = [v4 rootPathUTF8StringLength];
    if (!strncmp(st_ino, v5, v6))
    {
      if (!stat(st_ino, &v10))
      {
        st_ino = v10.st_ino;
        goto LABEL_10;
      }
    }

    else if (*st_ino != 47)
    {
      v7 = strlen(st_ino);
      if (v6 + v7 + 2 <= 0x3FF)
      {
        v8 = v7;
        bzero(v11, 0x400uLL);
        __memcpy_chk();
        v11[v6] = 47;
        memcpy(&v11[v6 + 1], st_ino, v8);
        if (stat(st_ino, &v10))
        {
          st_ino = 0;
        }

        else
        {
          st_ino = v10.st_ino;
        }

        goto LABEL_10;
      }
    }

    st_ino = 0;
  }

LABEL_10:

  return st_ino;
}

id sub_100022FF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = sub_100022E8C(a1, a2);
  if (v10)
  {
    v15 = 0;
    v11 = [v9 oidPath:a4 fromOID:v10 includeLeaf:a5 error:&v15];
    v12 = v15;
    if (v15)
    {
      v13 = 0;
      *__error() = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1000230A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6 = 0;
  v3 = [v2 parentFromOID:a2 error:&v6];
  v4 = v6;
  if (v6)
  {
    *__error() = v4;
  }

  return v3;
}

uint64_t sub_1000230F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v7 = *(a1 + 16);
  v10 = 0;
  v8 = [v7 oidPath:a3 fromOID:a2 includeLeaf:a4 error:&v10];
  if (a6)
  {
    *a6 = v8;
  }

  return v10;
}

uint64_t sub_100023154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = *(a1 + 16);
  v10 = [NSString stringWithUTF8String:a4];
  v11 = [v9 identifierForItem:a3 name:v10 parentID:a2];

  if (v11 && CFStringGetCString(v11, a5, 1024, 0x8000100u))
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  return v12;
}

uint64_t sub_100023210(uint64_t result, int a2, uint64_t a3)
{
  if (a2 <= 1043)
  {
    v5 = result;
    bzero(&v47, 0x415uLL);
    if (!a2)
    {
      goto LABEL_14;
    }

    v13 = 0;
    do
    {
      *(&v47 + v13) = byte_10002A678[*(v5 + v13)];
      ++v13;
    }

    while (a2 != v13);
    *(&v47 + a2) = 0;
    if (a2 >= 2 && v47 - 1 <= 3)
    {
      if (v47 > 2u)
      {
        if (v47 == 3)
        {
          v15 = 32;
        }

        else
        {
          v15 = 64;
        }

        v26 = 1;
      }

      else if (v47 == 1)
      {
        v14 = 1;
        if (v48 == 2)
        {
          v14 = 2;
        }

        v15 = 4 * (v48 == 2);
        if (*(&v47 + (a2 - 1)) == 1 && *(&v47 + (a2 - 2)) == 1)
        {
          v16 = 1;
          goto LABEL_15;
        }

        v26 = v14;
      }

      else
      {
        v15 = 16;
        v26 = 1;
      }

      v29 = v26 + 1;
      v16 = *(&v47 + v26);
      if (*(&v47 + v26) < 0)
      {
        v14 = v26 + 2;
        v30 = *(&v47 + v29);
        v31 = *(&v47 + v29);
        if (v30 < 0)
        {
          v32 = v26 + 3;
          v33 = *(&v47 + v14);
          v34 = v33;
          if (v33 < 0)
          {
            v14 = v26 | 4;
            v36 = *(&v47 + v32);
            v37 = *(&v47 + v32);
            if (v36 < 0)
            {
              v46 = *(&v47 + v14);
              if (v46 < 0)
              {
                sub_1000253B0(v6, v7, v8, v16, v9, v10, v11, v12);
              }

              v14 = v26 + 5;
              v38 = ((v37 & 0x7F) << 21) | (v46 << 28) | ((v34 & 0x7F) << 14);
            }

            else
            {
              v38 = ((v34 & 0x7F) << 14) | (v37 << 21);
            }

            v35 = v38 & 0xFFFFC000 | ((v31 & 0x7F) << 7) | v16 & 0x7F;
          }

          else
          {
            v35 = ((v31 & 0x7F) << 7) | (v33 << 14) | (v16 & 0x7F);
            v14 = v32;
          }

          v16 = v35;
        }

        else
        {
          v16 = v16 & 0x7F | (v31 << 7);
        }
      }

      else
      {
        v14 = v26 + 1;
      }
    }

    else
    {
LABEL_14:
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

LABEL_15:
    v17 = (&v47 + v14);
    v18 = &v47 + a2 - 1;
    v19 = *v18;
    if (v19 == 3)
    {
      v20 = v15 | 2;
    }

    else
    {
      v20 = v15;
    }

    if (v19 <= 5)
    {
      if (v18 <= v17)
      {
        if (v19 == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v21 = a2 - v14;
        v22 = 1;
        v23 = &v47 + a2 - 1;
        while (1)
        {
          v24 = *--v23;
          if (v24 > 5)
          {
            break;
          }

          ++v22;
          v18 = v23;
          if (v23 <= v17)
          {
            v18 = &v47 + v14;
            goto LABEL_27;
          }
        }

        v21 = v22;
LABEL_27:
        if (*v18 == 1)
        {
          if (v21 != 1)
          {
            if (v16 || v21 < 3 || v18[2] != 5)
            {
              v28 = v18;
            }

            else
            {
              v27 = v18[1];
              if (v27 > 3)
              {
                if (v27 == 4)
                {
                  v20 = v20 | 0x200;
                }

                else if (v27 == 5)
                {
                  v20 = v20 | 0x400;
                }
              }

              else if (v27 == 2)
              {
                v20 = v20 | 0x80;
              }

              else if (v27 == 3)
              {
                v20 = v20 | 0x100;
              }

              v28 = v18 + 3;
              v21 -= 3;
            }

            if (v21 >= 2)
            {
              v39 = v28[1];
              v40 = v39 - 4;
              if (v16 <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = v16;
              }

              v42 = v20 | 8;
              if (v39 != 2)
              {
                v42 = v20;
              }

              v43 = v39 == 1;
              if (v39 == 1)
              {
                v44 = v20;
              }

              else
              {
                v44 = v42;
              }

              if (v43)
              {
                v45 = v41;
              }

              else
              {
                v45 = v16;
              }

              if (v40 >= 2)
              {
                v20 = v44;
              }

              else
              {
                v20 = v20 | 1;
              }

              if (v40 >= 2)
              {
                v16 = v45;
              }

              else
              {
                v16 = v41;
              }
            }

            goto LABEL_30;
          }

LABEL_29:
          v20 = v20 | 1;
LABEL_30:
          v25 = v18 - v17;
          *v18 = 0;
          return (*(a3 + 16))(a3, v17, v25, v16, v20);
        }
      }
    }

    v25 = a2 - v14;
    return (*(a3 + 16))(a3, v17, v25, v16, v20);
  }

  return result;
}

void sub_100023CE8(int a1)
{
  sub_1000068B0("%s:%u: failed assertion '%s' %s %d", "PostingChunk.c", 864, "zero == 0", "", a1);
  MEMORY[0xBAA] = -559038737;
  abort();
}

void sub_100023F1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = 136315138;
  v3 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s", &v2, 0xCu);
}

void sub_100024138(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "monitoring error: %@\n", &v2, 0xCu);
}

void sub_1000242A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000DF38(a1, a2, a3, a4, a5, a6, a7, a8, "SIIndexer.m");
  MEMORY[0xBAD] = -559038737;
  abort();
}

void sub_1000242F0()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100024360()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100024464()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000244FC()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000245AC(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 80);
  sub_100018234();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100024630(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100018234();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000246B4(uint64_t *a1)
{
  v6 = *a1;
  sub_100018234();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100024738(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found query results qid:%ld", &v3, 0xCu);
}

void sub_1000247B4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Finished query qid: %ld", &v3, 0xCu);
}

void sub_100024830()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000248E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100018254();
  sub_100018218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100024954(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100018254();
  sub_100018218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000249C8(uint64_t a1)
{
  sub_100018244(a1, __stack_chk_guard);
  sub_1000181F4();
  sub_100018218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100024A38(uint64_t a1)
{
  sub_100018244(a1, __stack_chk_guard);
  sub_1000181F4();
  sub_100018218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100024AA8(uint64_t a1)
{
  sub_100018244(a1, __stack_chk_guard);
  sub_1000181F4();
  sub_100018218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100024B18()
{
  sub_10000E4EC();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100024B88(uint64_t a1, xpc_connection_t connection, NSObject *a3)
{
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  pid = xpc_connection_get_pid(connection);
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "request %s from pid: %d", &v4, 0x12u);
}

void sub_100025028()
{
  sub_10001FA88();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100025104()
{
  sub_10001FA88();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000251E0()
{
  sub_10001FA88();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100025250()
{
  sub_10001FA88();
  sub_100018228();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000253B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005F18(a1, a2, a3, a4, a5, a6, a7, a8, "VIntUtils.h");
  MEMORY[0xBAD] = -559038737;
  abort();
}