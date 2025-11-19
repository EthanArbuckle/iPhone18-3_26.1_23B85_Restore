uint64_t sub_1104(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "lastPathComponent")];
  if ((result & 1) == 0)
  {
    if ([objc_msgSend(a2 "pathExtension")])
    {
      v5 = *(*(a1 + 32) + 16);
    }

    else
    {
      v6 = +[NSDictionary dictionaryWithContentsOfURL:](NSDictionary, "dictionaryWithContentsOfURL:", [a2 URLByAppendingPathComponent:@"Info.plist"]);
      v7 = [(NSDictionary *)v6 objectForKey:@"CFBundleVersion"];
      if ([(__CFString *)v7 length])
      {
        v8 = v7;
      }

      else
      {
        v8 = @"?";
      }

      v9 = [(NSDictionary *)v6 objectForKey:@"CFBundleShortVersionString"];
      if ([v9 length])
      {
        v10 = [NSString stringWithFormat:@"(%@)", v9];
      }

      else
      {
        v10 = &stru_8788;
      }

      v11 = [(NSDictionary *)v6 objectForKey:@"Disclaimer"];
      if ([v11 length])
      {
        v12 = [NSString stringWithFormat:@"%@", v11];
      }

      else
      {
        v12 = &stru_8788;
      }

      v13 = *(a1 + 32);
      [NSString stringWithFormat:@"%@ %@ %@", v8, v10, v12];
      v5 = *(v13 + 16);
    }

    return v5();
  }

  return result;
}

void sub_1504(uint64_t a1)
{
  [*(a1 + 32) startAccessingSecurityScopedResource];
  v2 = objc_alloc_init(NSFileCoordinator);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3052000000;
  v64[3] = sub_21FC;
  v64[4] = sub_220C;
  v65 = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_2218;
  v63[3] = &unk_83B0;
  v63[4] = &v66;
  v63[5] = v64;
  [v2 coordinateReadingItemAtURL:v3 options:0 writingItemAtURL:v4 options:0 error:&v65 byAccessor:v63];
  if (*(v67 + 24))
  {
    NSLog(@"moved theme asset");
  }

  else
  {
    NSLog(@"failed to move theme asset");
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) _carplayLibraryURL];
  if (!v5)
  {
    goto LABEL_23;
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  if (([v5 isFileURL] & 1) == 0)
  {
    if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    *v75 = v5;
    v11 = "ADSUnarchiver: unable to open non-file URL %@.";
    v12 = 12;
LABEL_47:
    _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, v11, buf, v12);
    goto LABEL_23;
  }

  v8 = open([v5 fileSystemRepresentation], 4);
  if (v8 < 0)
  {
    if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v22 = __error();
    v23 = strerror(*v22);
    *buf = 138412546;
    *v75 = v5;
    *&v75[8] = 2082;
    *&v75[10] = v23;
    v11 = "ADSUnarchiver: unable to open file %@ - %{public}s.";
    v12 = 22;
    goto LABEL_47;
  }

  if (!archive_read_new())
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (archive_read_support_format_zip())
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = archive_error_string();
      *buf = 136446210;
      *v75 = v9;
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_DEFAULT, "ADSUnarchiver: archive_read unable to set supported formats - %{public}s.", buf, 0xCu);
    }

LABEL_12:
    if (archive_read_free() && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      v24 = archive_error_string();
      *buf = 136446210;
      *v75 = v24;
      _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to free archive_read (leaking) - %{public}s.", buf, 0xCu);
    }

    goto LABEL_15;
  }

  support_filter_all = archive_read_support_filter_all();
  v14 = support_filter_all;
  if (support_filter_all != -20 && support_filter_all)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      v27 = archive_error_string();
      *buf = 136446210;
      *v75 = v27;
      _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: archive_read unable to set supported compression formats - %{public}s.", buf, 0xCu);
    }

    if (v14 != -20 && v14)
    {
      goto LABEL_12;
    }
  }

  NSPageSize();
  if (!archive_read_open_fd())
  {
    v73 = 0;
    v15 = +[NSFileManager defaultManager];
    v76 = NSFilePosixPermissions;
    v77 = &off_8D78;
    if (!-[NSFileManager createDirectoryAtURL:withIntermediateDirectories:attributes:error:](v15, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v7, 0, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v77, &v76, 1), &v73) && (![objc_msgSend(v73 "domain")] || objc_msgSend(v73, "code") != &stru_1F8.sectname[12]))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v75 = v7;
        *&v75[8] = 2112;
        *&v75[10] = v73;
        v18 = "ADSUnarchiver: failed to create directory at %@ - %@.";
        v19 = 22;
LABEL_91:
        _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, v18, buf, v19);
      }

LABEL_52:
      v10 = 0;
LABEL_53:
      if (archive_read_close() && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        v31 = archive_error_string();
        *buf = 136446210;
        *v75 = v31;
        _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to close archive_read - %{public}s.", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (!archive_write_disk_new())
    {
      goto LABEL_52;
    }

    if (archive_write_disk_set_standard_lookup())
    {
      if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v16 = archive_error_string();
      *buf = 136446210;
      *v75 = v16;
      v17 = "ADSUnarchiver: archive_write_disk unable to set lookup functions - %{public}s.";
    }

    else
    {
      if (!archive_write_disk_set_options())
      {
        v28 = [v7 path];
        v61 = v28;
        if (v28)
        {
          v30 = realpath_DARWIN_EXTSN([v28 fileSystemRepresentation], 0);
          if (v30)
          {
            v61 = [[NSString alloc] initWithUTF8String:v30];
            free(v30);
          }

          else if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            v58 = __error();
            v59 = strerror(*v58);
            *buf = 138412546;
            *v75 = v61;
            *&v75[8] = 2080;
            *&v75[10] = v59;
            _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to resolve physical path for destination path %@ - %s.", buf, 0x16u);
          }
        }

        else
        {
          v61 = 0;
        }

        *&v29 = 134218240;
        v60 = v29;
        while (1)
        {
          v70 = 0;
          next_header = archive_read_next_header();
          if (next_header)
          {
            if (next_header == 1)
            {
              v10 = 1;
              goto LABEL_103;
            }

            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              v50 = archive_error_string();
              *buf = 136446210;
              *v75 = v50;
              v45 = "ADSUnarchiver: archive_read_next_header failed - %{public}s.";
LABEL_89:
              _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, v45, buf, 0xCu);
            }

            goto LABEL_102;
          }

          v33 = archive_entry_filetype();
          v34 = objc_autoreleasePoolPush();
          v35 = archive_entry_pathname_utf8();
          v36 = v35;
          if (!v35)
          {
            if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
LABEL_101:
              objc_autoreleasePoolPop(v34);
              goto LABEL_102;
            }

            *buf = 0;
            v51 = "ADSUnarchiver: archive_entry with no path encountered.";
LABEL_116:
            _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, v51, buf, 2u);
            goto LABEL_101;
          }

          v37 = 0;
          do
          {
            v38 = v37;
            v39 = *(v35 + v37++);
          }

          while (v39 == 47);
          if (v38 && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            v43 = strlen(v36);
            *buf = v60;
            *v75 = v38;
            *&v75[8] = 2048;
            *&v75[10] = v43;
            _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
          }

          v40 = [[NSString alloc] initWithUTF8String:&v36[v38]];
          v41 = [v40 length];
          if (!v41 && v33 != 0x4000)
          {
            if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_101;
            }

            *buf = 0;
            v51 = "ADSUnarchiver: archive_entry with no path after sanitization encountered.";
            goto LABEL_116;
          }

          [objc_msgSend(v61 stringByAppendingPathComponent:{v40, v60), "fileSystemRepresentation"}];
          archive_entry_update_pathname_utf8();
          objc_autoreleasePoolPop(v34);
          archive_entry_perm();
          archive_entry_set_perm();
          if (v41)
          {
            if (archive_write_header())
            {
              if (!os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_102;
              }

              v53 = archive_error_string();
              *buf = 136446210;
              *v75 = v53;
              v54 = "ADSUnarchiver: archive_write_header failed - %{public}s.";
              goto LABEL_114;
            }

            if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
            {
              do
              {
                v72 = 0;
                v73 = 0;
                v71 = 0;
                data_block = archive_read_data_block();
                if (data_block)
                {
                  if (data_block == 1)
                  {
                    goto LABEL_83;
                  }

                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    v44 = archive_error_string();
                    *buf = 136446210;
                    *v75 = v44;
                    v45 = "ADSUnarchiver: archive_read_data_block failed - %{public}s.";
                    goto LABEL_89;
                  }

                  goto LABEL_102;
                }
              }

              while ((archive_write_data_block() & 0x8000000000000000) == 0);
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                v47 = archive_error_string();
                *buf = 136446210;
                *v75 = v47;
                v45 = "ADSUnarchiver: archive_write_data_block failed - %{public}s.";
                goto LABEL_89;
              }

              goto LABEL_102;
            }

LABEL_83:
            if (archive_write_finish_entry())
            {
              break;
            }
          }
        }

        if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
        {
          v57 = archive_error_string();
          *buf = 136446210;
          *v75 = v57;
          v54 = "ADSUnarchiver: archive_write_finish_entry failed - %{public}s.";
LABEL_114:
          _os_log_impl(&dword_0, 0, OS_LOG_TYPE_DEFAULT, v54, buf, 0xCu);
        }

LABEL_102:
        v10 = 0;
LABEL_103:
        if (archive_write_close())
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            v55 = archive_error_string();
            *buf = 136446210;
            *v75 = v55;
            _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to close archive_write_disk - %{public}s.", buf, 0xCu);
          }

          v10 = 0;
        }

        if (archive_write_free() && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          v52 = archive_error_string();
          *buf = 136446210;
          *v75 = v52;
          _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to free archive_write_disk (leaking) - %{public}s.", buf, 0xCu);
        }

        goto LABEL_53;
      }

      if (!os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v49 = archive_error_string();
      *buf = 136446210;
      *v75 = v49;
      v17 = "ADSUnarchiver: archive_write_disk unable to set options - %{public}s.";
    }

    _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
LABEL_50:
    if (!archive_write_free() || !os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    v48 = archive_error_string();
    *buf = 136446210;
    *v75 = v48;
    v18 = "ADSUnarchiver: unable to free archive_write_disk (leaking) - %{public}s.";
    v19 = 12;
    goto LABEL_91;
  }

  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
  {
    v26 = archive_error_string();
    *buf = 136446210;
    *v75 = v26;
    _os_log_error_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "ADSUnarchiver: unable to open archive_read - %{public}s.", buf, 0xCu);
  }

  v10 = 0;
LABEL_56:
  if (archive_read_free() && os_log_type_enabled(0, OS_LOG_TYPE_FAULT))
  {
    v25 = archive_error_string();
    *buf = 136446210;
    *v75 = v25;
    _os_log_fault_impl(&dword_0, 0, OS_LOG_TYPE_FAULT, "ADSUnarchiver: unable to free archive_read (leaking) - %{public}s.", buf, 0xCu);
  }

LABEL_16:
  if (close(v8) && os_log_type_enabled(0, OS_LOG_TYPE_FAULT))
  {
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 67240706;
    *v75 = v8;
    *&v75[4] = 2112;
    *&v75[6] = v5;
    *&v75[14] = 2082;
    *&v75[16] = v21;
    _os_log_fault_impl(&dword_0, 0, OS_LOG_TYPE_FAULT, "ADSUnarchiver: unable to close file descriptor %{public}d for %@ (leaking) - %{public}s.", buf, 0x1Cu);
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_23:
    NSLog(@"failed to unzip theme asset", v60);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_19:
  NSLog(@"unzipped theme asset", v60);
  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 40), 0];
LABEL_24:
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2278;
  block[3] = &unk_83D8;
  block[4] = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v66, 8);
}

BOOL sub_2218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [+[NSFileManager defaultManager](NSFileManager copyItemAtURL:"copyItemAtURL:toURL:error:" toURL:a2 error:a3, *(*(a1 + 40) + 8) + 40];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_3010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_303C(void *a1, void *a2, const __CFString *a3, int a4)
{
  *(*(a1[6] + 8) + 24) = 1;
  v7 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [a2 lastPathComponent], a1[4], 0, 0, 0, 4, 0);
  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v8 = &stru_8788;
  if (a4)
  {
    v8 = @"staged";
  }

  if (a3)
  {
    v8 = a3;
  }

  v9 = [NSString stringWithFormat:@"%@", v8];
  [v7 setProperty:v9 forKey:PSTableCellSubtitleTextKey];
  [v7 setProperty:&off_8D60 forKey:PSAccessoryKey];
  v10 = a1[5];

  return [v10 addObject:v7];
}

id sub_3160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [PSSpecifier preferenceSpecifierNamed:a2 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:0];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setProperty:@"doc.zipper" forKey:{+[ADSSymbolAccessorizedCell leadingSymbolNamePropertyKey](ADSSymbolAccessorizedCell, "leadingSymbolNamePropertyKey")}];
  [v5 setProperty:@"square.and.arrow.up.circle" forKey:{+[ADSSymbolAccessorizedCell trailingSymbolNamePropertyKey](ADSSymbolAccessorizedCell, "trailingSymbolNamePropertyKey")}];
  [v5 setUserInfo:a3];
  [v5 setButtonAction:"_didSelectLogArchiveSpecifier:"];
  v6 = *(a1 + 40);

  return [v6 addObject:v5];
}