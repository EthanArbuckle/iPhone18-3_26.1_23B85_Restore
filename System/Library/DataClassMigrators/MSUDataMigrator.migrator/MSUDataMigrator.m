void debug(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel >= 2)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void debugv(uint64_t a1, uint64_t a2)
{
  if (log_file)
  {
    v4 = [NSString alloc];
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v4 initWithFormat:v5 arguments:a2];

    logString(v6);
  }
}

void error(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void logString(void *a1)
{
  if (log_file)
  {
    v1 = a1;
    v2 = +[NSDate date];
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setDateFormat:@"HH:mm:ss"];
    v4 = [v3 stringFromDate:v2];
    bzero(v6, 0x400uLL);
    v5 = [NSString stringWithFormat:@"%@: %@", v4, v1];

    [v5 getCString:v6 maxLength:1023 encoding:4];
    fputs(v6, log_file);
  }
}

FILE *init_log(int a1, int a2)
{
  serialLogLevel = a2;
  mkdir("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", 0x1EDu);
  memset(&v7, 0, sizeof(v7));
  if (stat("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", &v7))
  {
    v3 = 1;
  }

  else
  {
    v3 = v7.st_size < 10485760;
  }

  v4 = v3;
  if ((v4 & a1) != 0)
  {
    v5 = "a+";
  }

  else
  {
    v5 = "w+";
  }

  result = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", v5);
  log_file = result;
  return result;
}

uint64_t flush_log()
{
  result = log_file;
  if (log_file)
  {
    fflush(log_file);
    v1 = log_file;

    return fclose(v1);
  }

  return result;
}

char *copy_path_for_booted_os_data()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    printf("%s: Failed to query gestalt for the BootManifestHash\n", "copy_path_for_booted_os_data");
    return 0;
  }

  v1 = v0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  Length = CFDataGetLength(v0);
  BytePtr = CFDataGetBytePtr(v1);
  if (!BytePtr)
  {
    printf("%s: Failed to get byte pointer from bootManifestHash data returned by gestalt\n");
LABEL_12:
    CFRelease(v1);
    return 0;
  }

  v4 = BytePtr;
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    printf("%s: Failed to create bootManifestHashString\n");
    goto LABEL_12;
  }

  v6 = Mutable;
  if (Length >= 1)
  {
    do
    {
      v7 = *v4++;
      CFStringAppendFormat(v6, 0, @"%02x", v7);
      --Length;
    }

    while (Length);
  }

  CFStringGetCString(v6, buffer, 512, 0x8000100u);
  if (buffer[0])
  {
    v8 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 0x400uLL);
      snprintf(v9, 0x3FFuLL, "%s/%s-MSUData", "/private/var/MobileSoftwareUpdate/", buffer);
    }

    else
    {
      printf("%s: Failed to allocate memory for storing the path to the bootedOSData folder\n", "copy_path_for_booted_os_data");
    }
  }

  else
  {
    printf("%s: Failed to get C string representation of bootManifestHash\n", "copy_path_for_booted_os_data");
    v9 = 0;
  }

  CFRelease(v1);
  CFRelease(v6);
  return v9;
}

uint64_t delete_folder_contents(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  bzero(v59, 0x400uLL);
  if (v1)
  {
    v25 = 0;
    v3 = [v2 contentsOfDirectoryAtPath:v1 error:&v25];
    v4 = v25;
    [v1 getCString:v59 maxLength:1023 encoding:1];
    if (v4)
    {
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v5 = [v4 description];
      [v5 getCString:&v27 maxLength:511 encoding:4];

      if (v27)
      {
        v6 = &v27;
      }

      else
      {
        v6 = "Unable to parse error reason";
      }

      error("%s: Failed to search folder %s: %s\n", "delete_folder_contents", v59, v6);

      v7 = 9;
    }

    else
    {
      v23 = 0uLL;
      v24 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      obj = v3;
      v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v7 = 0;
        v11 = *v22;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v21 + 1) + 8 * i);

            v14 = [[NSString alloc] initWithFormat:@"%@/%@", v1, v13];
            v20 = 0;
            [v2 removeItemAtPath:v14 error:&v20];
            v15 = v20;
            v10 = v15;
            if (v15)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v16 = [v15 description];
              [v16 getCString:&v27 maxLength:511 encoding:4];

              if (v27)
              {
                v17 = &v27;
              }

              else
              {
                v17 = "Unable to parse error reason";
              }

              error("%s: Failed to delete %s: %s\n", "delete_folder_contents", v59, v17);
              v7 = 9;
            }
          }

          v9 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    error("%s: Invalid argument passed as folderpath\n", "delete_folder_contents");
    v7 = 22;
  }

  return v7;
}

uint64_t move_directory_hierarchy(char *a1, const char *a2)
{
  v19[0] = a1;
  v19[1] = 0;
  if (!a1 || !a2)
  {
    error("Invalid argument passed to %s", "move_directory_hierarchy");
    return 22;
  }

  v4 = fts_open(v19, 20, 0);
  if (!v4)
  {
    v14 = __error();
    v15 = strerror(*v14);
    error("Failed to open source directory hierarchy: %s\n", v15);
    return *__error();
  }

  v5 = v4;
  v6 = fts_read(v4);
  if (!v6)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  while (1)
  {
    if (v7->fts_info == 7)
    {
      error("Got error while traversing source directory %s", a1);
      goto LABEL_21;
    }

    bzero(__str, 0x400uLL);
    v8 = strlen(a1);
    snprintf(__str, 0x3FFuLL, "%s%s", a2, &v7->fts_path[v8]);
    fts_info = v7->fts_info;
    if ((fts_info - 12) >= 2)
    {
      break;
    }

    if (copyfile(v7->fts_path, __str, 0, 0x12C000Fu))
    {
      v17 = "Failed to recreate symlink %s at %s: %d\n";
      goto LABEL_25;
    }

LABEL_16:
    v7 = fts_read(v5);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (fts_info != 8)
  {
    if (fts_info == 1 && copyfile(v7->fts_path, __str, 0, 7u))
    {
      v17 = "Failed to recreate folder %s at %s: %d\n";
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  if (!copyfile(v7->fts_path, __str, 0, 0x13C000Fu))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    totalDataMoved += v7->fts_statp->st_size;
    *&totalTimeSpentInFileMoves = v12 - v11 + *&totalTimeSpentInFileMoves;
    goto LABEL_16;
  }

  v17 = "Failed to move regular file %s to %s: %d\n";
LABEL_25:
  v13 = *__error();
  error(v17, v7->fts_path, __str, v13);
LABEL_22:
  fts_close(v5);
  return v13;
}

uint64_t moveFolderContentsIfItExists(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  if (v3 && v4)
  {
    bzero(v16, 0x400uLL);
    bzero(v15, 0x400uLL);
    [v3 getCString:v16 maxLength:1023 encoding:4];
    [v4 getCString:v15 maxLength:1023 encoding:4];
    if (!v16[0] || !v15[0])
    {
      error("%s: Unable to convert source/destination paths to C strings", "moveFolderContentsIfItExists");
    }

    debug("%s: Checking for source folder at: %s\n", "moveFolderContentsIfItExists", v16);
    [v5 fileExistsAtPath:v3 isDirectory:&v13];
    if ((v13 & 1) == 0)
    {
      debug("%s: Source folder %s does not exist\n");
      goto LABEL_16;
    }

    debug("%s: Folder exists..Attempting to move to %s\n", "moveFolderContentsIfItExists", v15);
    if ((move_directory_hierarchy(v16, v15) & 0x80000000) == 0)
    {
      v12 = 0;
      [v5 removeItemAtPath:v3 error:&v12];
      v6 = v12;
      if (v6)
      {
        v7 = v6;
        memset(v14, 0, sizeof(v14));
        v8 = [v6 description];
        [v8 getCString:v14 maxLength:511 encoding:4];

        if (LOBYTE(v14[0]))
        {
          v9 = v14;
        }

        else
        {
          v9 = "Unable to parse error reason";
        }

        error("%s: Failed to remove %s folder(%s)\n", "moveFolderContentsIfItExists", v16, v9);

        goto LABEL_14;
      }

      debug("%s: Successfully moved %s to %s\n");
LABEL_16:
      v10 = 1;
      goto LABEL_17;
    }

    error("%s: Failed to move folder contents\n");
  }

  else
  {
    error("%s: Invalid arguments passed to source/destination");
  }

LABEL_14:
  v10 = 0;
LABEL_17:

  return v10;
}