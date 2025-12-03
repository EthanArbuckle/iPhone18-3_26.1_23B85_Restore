@interface FileArchiver
+ (id)archiveWithPath:(id)path;
+ (id)archiveWithPaths:(id)paths destinationDir:(id)dir deleteSource:(BOOL)source;
+ (id)matchFilesInDirectory:(id)directory filenamePredicate:(id)predicate newerThan:(id)than allowDirectories:(BOOL)directories;
- (FileArchiver)initWithPath:(id)path shouldCompress:(BOOL)compress;
- (int)addDirectoryToArchive:(id)archive withDirName:(id)name;
- (int)addFileToArchive:(id)archive withFileName:(id)name;
- (int)closeArchive;
- (void)moveDirectoryToArchive:(id)archive withDirName:(id)name;
@end

@implementation FileArchiver

+ (id)matchFilesInDirectory:(id)directory filenamePredicate:(id)predicate newerThan:(id)than allowDirectories:(BOOL)directories
{
  v63[3] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  predicateCopy = predicate;
  thanCopy = than;
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:directoryCopy isDirectory:1];
  v13 = *MEMORY[0x277CBE8E8];
  v14 = *MEMORY[0x277CBE868];
  v63[0] = *MEMORY[0x277CBE8E8];
  v63[1] = v14;
  v43 = v14;
  v15 = *MEMORY[0x277CBE7C0];
  v63[2] = *MEMORY[0x277CBE7C0];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
  v59 = 0;
  v17 = [defaultManager contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v16 options:0 error:&v59];
  v18 = v59;

  v19 = predicateCopy;
  v20 = v17;
  if (!v18)
  {
    v40 = 0;
    v41 = defaultManager;
    v45 = v15;
    v46 = v13;
    v50 = thanCopy;
    v42 = directoryCopy;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v17;
    v21 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    v22 = v43;
    if (!v21)
    {
      goto LABEL_30;
    }

    v23 = v21;
    v51 = *v56;
    v49 = v19;
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v56 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v54 = 0;
        v27 = v22;
        v28 = [v25 getResourceValue:&v54 forKey:v22 error:0];
        v29 = v54;
        v30 = v29;
        if (v28 && [v29 BOOLValue] && !directories)
        {
          v31 = archiverLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v25;
            _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it is a directory and not allowed", buf, 0xCu);
          }

          goto LABEL_27;
        }

        if (!v19)
        {
          v31 = 0;
LABEL_19:
          if (v50)
          {
            v52 = 0;
            v34 = [v25 getResourceValue:&v52 forKey:v45 error:0];
            v35 = v52;
            v36 = v35;
            if (v34 && [v35 compare:v50] == -1)
            {
              path = archiverLogHandle();
              if (os_log_type_enabled(path, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v61 = v25;
                _os_log_impl(&dword_241804000, path, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it didn't match fileCreationDate", buf, 0xCu);
              }

              goto LABEL_26;
            }
          }

          else
          {
            v36 = 0;
          }

          path = [v25 path];
          [array addObject:path];
LABEL_26:

          v19 = v49;
LABEL_27:
          v22 = v27;
          goto LABEL_28;
        }

        v53 = 0;
        v32 = [v25 getResourceValue:&v53 forKey:v46 error:0];
        v31 = v53;
        if (!v32 || ([v19 evaluateWithObject:v31] & 1) != 0)
        {
          goto LABEL_19;
        }

        v33 = archiverLogHandle();
        v22 = v27;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v25;
          _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "Not archiving %@ because it didn't match name filter", buf, 0xCu);
        }

        v19 = v49;
LABEL_28:

        objc_autoreleasePoolPop(v26);
      }

      v23 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (!v23)
      {
LABEL_30:

        defaultManager = v41;
        directoryCopy = v42;
        thanCopy = v50;
        v18 = v40;
        break;
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)archiveWithPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([pathCopy length])
  {
    v4 = [pathCopy stringByAppendingString:@".tar.gz"];
    if (v4)
    {
      v5 = [[FileArchiver alloc] initWithPath:v4 shouldCompress:1];
      v6 = archiverLogHandle();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412546;
          v14 = pathCopy;
          v15 = 2112;
          v16 = v4;
          _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "archiving %@ into %@", &v13, 0x16u);
        }

        lastPathComponent = [pathCopy lastPathComponent];
        [(FileArchiver *)v5 moveDirectoryToArchive:pathCopy withDirName:lastPathComponent];

        if ([(FileArchiver *)v5 closeArchive])
        {
          v9 = archiverLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v13 = 138412290;
            v14 = v4;
            _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "closeArchive failed for %@", &v13, 0xCu);
          }
        }

        v10 = v4;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "failed to create archive: %@", &v13, 0xCu);
      }
    }

    else
    {
      v5 = archiverLogHandle();
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = pathCopy;
        _os_log_impl(&dword_241804000, &v5->super, OS_LOG_TYPE_ERROR, "failed to create tarball path from: %@", &v13, 0xCu);
      }
    }

    v10 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v4 = archiverLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "no dir_path provided", &v13, 2u);
  }

  v10 = 0;
LABEL_21:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)archiveWithPaths:(id)paths destinationDir:(id)dir deleteSource:(BOOL)source
{
  sourceCopy = source;
  v58 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dirCopy = dir;
  if (![dirCopy length])
  {
    v9 = archiverLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "destination path is invalid", buf, 2u);
    }

    v25 = 0;
    goto LABEL_51;
  }

  v9 = [dirCopy stringByAppendingString:@".tar.gz"];
  v43 = [[FileArchiver alloc] initWithPath:v9 shouldCompress:1];
  if (!v43)
  {
    defaultManager = archiverLogHandle();
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v55 = v9;
      _os_log_impl(&dword_241804000, defaultManager, OS_LOG_TYPE_ERROR, "failed to create archive: %@", buf, 0xCu);
    }

    v25 = 0;
    goto LABEL_50;
  }

  v39 = sourceCopy;
  v40 = v9;
  v53 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = pathsCopy;
  v11 = pathsCopy;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v14 = *v50;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v50 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v49 + 1) + 8 * i);
      if (![defaultManager fileExistsAtPath:v16 isDirectory:&v53])
      {
        v20 = archiverLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v55 = v16;
          v21 = v20;
          v22 = "fileExistsAtPath says %@ doesn't exist!";
          v23 = 12;
          goto LABEL_18;
        }

LABEL_19:

        continue;
      }

      v17 = v53;
      lastPathComponent = [v16 lastPathComponent];
      if (v17 == 1)
      {
        v19 = [(FileArchiver *)v43 addDirectoryToArchive:v16 withDirName:lastPathComponent];
      }

      else
      {
        v19 = [(FileArchiver *)v43 addFileToArchive:v16 withFileName:lastPathComponent];
      }

      v24 = v19;

      if (v24)
      {
        if (v24 == -30)
        {
          v26 = archiverLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v55 = v16;
            _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "ARCHIVE_FATAL for %@", buf, 0xCu);
          }

          goto LABEL_32;
        }

        v20 = archiverLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v55 = v24;
          *&v55[4] = 2112;
          *&v55[6] = v16;
          v21 = v20;
          v22 = "Archive ERROR (%d) for %@";
          v23 = 18;
LABEL_18:
          _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
        }

        goto LABEL_19;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_32:

  if ([(FileArchiver *)v43 closeArchive])
  {
    v27 = archiverLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v55 = v40;
      _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_ERROR, "closeArchive failed for %@", buf, 0xCu);
    }
  }

  pathsCopy = v41;
  if (v39)
  {
    v42 = dirCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v11;
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * j);
          v44 = 0;
          v34 = [defaultManager removeItemAtPath:v33 error:&v44];
          v35 = v44;
          if ((v34 & 1) == 0)
          {
            v36 = archiverLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v55 = v33;
              *&v55[8] = 2112;
              *&v55[10] = v35;
              _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_ERROR, "Unable to delete: %@ (%@)", buf, 0x16u);
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v30);
    }

    pathsCopy = v41;
    dirCopy = v42;
  }

  v9 = v40;
  v25 = v40;
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x277D85DE8];

  return v25;
}

- (FileArchiver)initWithPath:(id)path shouldCompress:(BOOL)compress
{
  compressCopy = compress;
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = FileArchiver;
  v7 = [(FileArchiver *)&v15 init];
  if (v7)
  {
    v7->_archive = archive_write_new();
    if (compressCopy)
    {
      archive_write_add_filter_gzip();
      archive = v7->_archive;
    }

    archive_write_set_format_pax();
    v9 = v7->_archive;
    [pathCopy UTF8String];
    v10 = archive_write_open_filename();
    if (v10)
    {
      v11 = v10;
      v12 = archiverLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = pathCopy;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Error creating archive at path %@ %d", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)addFileToArchive:(id)archive withFileName:(id)name
{
  v54 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  nameCopy = name;
  uTF8String = [archiveCopy UTF8String];
  if (!uTF8String)
  {
    v19 = archiverLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "No filename!";
LABEL_13:
      v21 = v19;
      v22 = 2;
LABEL_14:
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    }

LABEL_15:

LABEL_16:
    v14 = -1;
    goto LABEL_17;
  }

  v9 = uTF8String;
  if (!archive_entry_new())
  {
    v19 = archiverLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "archive_entry_new() failed!";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v10 = open(v9, 0);
  if (v10 == -1)
  {
    v19 = archiverLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v25 = *__error();
    *buf = 138412546;
    v49 = archiveCopy;
    v50 = 1024;
    v51 = v25;
    v20 = "Error opening file %@  %{errno}d";
    v21 = v19;
    v22 = 18;
    goto LABEL_14;
  }

  v11 = v10;
  if (stat(v9, &v41) == -1)
  {
    v26 = archiverLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      *buf = 136315394;
      v49 = v9;
      v50 = 1024;
      v51 = v27;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "stat() failed for %s: %{errno}d", buf, 0x12u);
    }

    close(v11);
    goto LABEL_16;
  }

  archive_entry_copy_stat();
  [nameCopy UTF8String];
  archive_entry_set_pathname();
  archive = self->_archive;
  if (archive_write_header())
  {
    v13 = self->_archive;
    v14 = archive_errno();
    v15 = archiverLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [nameCopy UTF8String];
      v17 = self->_archive;
      v18 = archive_error_string();
      *buf = 136315650;
      v49 = uTF8String2;
      v50 = 1024;
      v51 = v14;
      v52 = 2080;
      v53 = v18;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "failed to write header for file, %s, status, %d, reason: %s", buf, 0x1Cu);
    }
  }

  else
  {
    v28 = read(v11, buf, 0x2000uLL);
    if (v28 < 1)
    {
LABEL_28:
      v14 = 0;
    }

    else
    {
      v29 = v28;
      while (1)
      {
        v30 = self->_archive;
        v31 = archive_write_data();
        if ((v31 & 0x8000000000000000) != 0)
        {
          v33 = archiverLogHandle();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          v34 = self->_archive;
          v35 = archive_error_string();
          *v42 = 136315394;
          v43 = v35;
          v44 = 2112;
          v45 = archiveCopy;
          v36 = "Error (%s) writing file '%@'";
          v37 = v33;
          v38 = 22;
          goto LABEL_33;
        }

        v32 = v31;
        if (v31 < v29)
        {
          break;
        }

        v29 = read(v11, buf, 0x2000uLL);
        if (v29 <= 0)
        {
          goto LABEL_28;
        }
      }

      v33 = archiverLogHandle();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v39 = archive_entry_pathname();
      *v42 = 136315650;
      v43 = v39;
      v44 = 2048;
      v45 = v29;
      v46 = 2048;
      v47 = v32;
      v36 = "%s: Truncated write; file may have grown while being archived (tried to write %ld bytes but wrote %ld bytes)";
      v37 = v33;
      v38 = 32;
LABEL_33:
      _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_ERROR, v36, v42, v38);
LABEL_34:

      v40 = self->_archive;
      v14 = archive_errno();
    }
  }

  archive_entry_free();
  close(v11);
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)addDirectoryToArchive:(id)archive withDirName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:archiveCopy error:0];

  if ([v7 count])
  {
    v32 = 0;
    v8 = objc_autoreleasePoolPush();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = v8;
      v25 = v7;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [archiveCopy stringByAppendingPathComponent:{v14, v24, v25}];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v17 = [defaultManager2 fileExistsAtPath:v15 isDirectory:&v32];

          if (v17)
          {
            lastPathComponent = [v14 lastPathComponent];
            v19 = [nameCopy stringByAppendingPathComponent:lastPathComponent];

            if (v32 == 1)
            {
              v20 = [(FileArchiver *)self addDirectoryToArchive:v15 withDirName:v19];
            }

            else
            {
              v20 = [(FileArchiver *)self addFileToArchive:v15 withFileName:v19];
            }

            if (v20 == -30)
            {

              v21 = -30;
              goto LABEL_18;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_18:
      v8 = v24;
      v7 = v25;
    }

    else
    {
      v21 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)moveDirectoryToArchive:(id)archive withDirName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  lastPathComponent = [archiveCopy lastPathComponent];
  [(FileArchiver *)self addDirectoryToArchive:archiveCopy withDirName:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [defaultManager removeItemAtPath:archiveCopy error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = archiverLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [archiveCopy UTF8String];
      v11 = [v8 description];
      uTF8String2 = [v11 UTF8String];
      *buf = 136315394;
      v16 = uTF8String;
      v17 = 2080;
      v18 = uTF8String2;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Failed to clean up source dir: %s, error: %s", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int)closeArchive
{
  archive = self->_archive;
  result = archive_write_free();
  self->_archive = 0;
  return result;
}

@end