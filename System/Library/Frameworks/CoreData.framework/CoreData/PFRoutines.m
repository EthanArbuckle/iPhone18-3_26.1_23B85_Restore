@interface PFRoutines
@end

@implementation PFRoutines

uint64_t __46___PFRoutines_attributeClassesForSecureCoding__block_invoke()
{
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  result = [v15 initWithObjects:{v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  qword_1ED4BE908 = result;
  return result;
}

uint64_t __42___PFRoutines_plistClassesForSecureCoding__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  qword_1ED4BE948 = result;
  return result;
}

void __29___PFRoutines__frameworkHash__block_invoke()
{
  v0 = _dyld_image_count();
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  v2 = 0;
  while (1)
  {
    image_name = _dyld_get_image_name(v2);
    v4 = strlen(image_name);
    if (v4 >= 8 && !strncmp("CoreData", &image_name[v4 - 8], 8uLL))
    {
      break;
    }

    if (v1 == ++v2)
    {
      goto LABEL_6;
    }
  }

  image_header = _dyld_get_image_header(v2);
  if (!image_header)
  {
LABEL_6:
    v5 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v6 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          v14 = 0;
          v9 = &v14;
LABEL_23:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Can't find CoreData image header.\n", v9, 2u);
        }
      }

      else if (v8)
      {
        LOWORD(v13) = 0;
        v9 = &v13;
        goto LABEL_23;
      }
    }

    _NSCoreDataLog_console(1, " Can't find CoreData image header.", v13);
    objc_autoreleasePoolPop(v5);
    return;
  }

  ncmds = image_header->ncmds;
  if (ncmds)
  {
    v12 = ((&image_header[1].cputype + 3) & 0xFFFFFFFFFFFFFFF8);
    while (*v12 != 27)
    {
      v12 = (v12 + v12[1]);
      if (!--ncmds)
      {
        goto LABEL_15;
      }
    }

    qword_1ED4BE900 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 + 2 length:(v12[1] - 8)];
    if (!qword_1ED4BE900)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_15:
    if (!qword_1ED4BE900)
    {
LABEL_21:
      NSLog(@"Can't find the hash for some reason, using empty data");
      qword_1ED4BE900 = [MEMORY[0x1E695DEF0] data];
    }
  }
}

uint64_t __61___PFRoutines_xpcStoreArchiverObjectIDClassesForSecureCoding__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  result = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  qword_1ED4BE918 = result;
  return result;
}

uint64_t __56___PFRoutines_historyChangesArrayClassesForSecureCoding__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  qword_1ED4BE928 = result;
  return result;
}

uint64_t __56___PFRoutines_historyQueryGenDataClassesForSecureCoding__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  result = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  qword_1ED4BE938 = result;
  return result;
}

void __67___PFRoutines_fetchHeterogeneousCollectionByObjectIDs_intoContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v6 setEntity:a2];
    [(NSFetchRequest *)v6 setIncludesSubentities:1];
    [(NSFetchRequest *)v6 setIncludesPendingChanges:0];
    [(NSFetchRequest *)v6 setReturnsObjectsAsFaults:0];
    -[NSFetchRequest setPredicate:](v6, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a3]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __67___PFRoutines_fetchHeterogeneousCollectionByObjectIDs_intoContext___block_invoke_2;
    v10 = &unk_1E6EC1388;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = v7;
    if ([v11 concurrencyType] == 1 || objc_msgSend(*(a1 + 32), "concurrencyType") == 2)
    {
      [*(a1 + 32) performBlockAndWait:v8];
    }

    else
    {
      v9(v8);
    }
  }
}

uint64_t __67___PFRoutines_fetchHeterogeneousCollectionByObjectIDs_intoContext___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = 0;
  v3 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:&v5];
  if (v3)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v3];
  }

  return [v2 drain];
}

@end