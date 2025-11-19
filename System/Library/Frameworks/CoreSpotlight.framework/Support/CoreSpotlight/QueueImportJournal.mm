@interface QueueImportJournal
- (BOOL)scanForFiles;
- (QueueImportJournal)initWithPartialPath:(const char *)a3 under:(int)a4 allowModification:(BOOL)a5;
- (int64_t)oldestDateAfterRetirement;
- (unint64_t)retirementSerialNumber;
- (void)dealloc;
- (void)noteJournalFile:(const char *)a3 serialNumber:(unint64_t)a4;
- (void)noteRetirementFile:(const char *)a3 serialNumber:(unint64_t)a4;
@end

@implementation QueueImportJournal

- (QueueImportJournal)initWithPartialPath:(const char *)a3 under:(int)a4 allowModification:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = QueueImportJournal;
  v8 = [(QueueImportJournal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_allowModification = a5;
    v8->_masterFD = a4;
    v8->_journalArray = objc_alloc_init(NSMutableArray);
    strlcpy(v9->_partialPath, a3, 0x400uLL);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = QueueImportJournal;
  [(QueueImportJournal *)&v3 dealloc];
}

- (BOOL)scanForFiles
{
  v3 = +[NSMutableArray array];
  v22 = -1;
  v4 = sub_10001BBD4(self->_masterFD, &v22);
  if (v4)
  {
    *&v18 = _NSConcreteStackBlock;
    *(&v18 + 1) = 3221225472;
    v19 = sub_100019E5C;
    v20 = &unk_100035998;
    v21 = v3;
    v5 = sub_1000040B0(self->_partialPath, 0, 0, 0, &v18);
    if (v22 != -1)
    {
      sub_10001BC74(v22);
    }

    if (!v5)
    {
      [v3 sortUsingComparator:&stru_1000359D8];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v14 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = *(v10 + 1040);
          v12 = v10 + 12;
          if (*(v10 + 8))
          {
            [(QueueImportJournal *)self noteRetirementFile:v12 serialNumber:v11];
          }

          else
          {
            [(QueueImportJournal *)self noteJournalFile:v12 serialNumber:v11];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v14 objects:v23 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (unint64_t)retirementSerialNumber
{
  retirement = self->_retirement;
  if (retirement)
  {
    return retirement->_serialNumber;
  }

  else
  {
    return -1;
  }
}

- (void)noteJournalFile:(const char *)a3 serialNumber:(unint64_t)a4
{
  v5 = [[QueueImportJournalFile alloc] initWithType:0 partialPath:a3 andSerialNumber:a4];
  [(NSMutableArray *)self->_journalArray addObject:v5];
}

- (void)noteRetirementFile:(const char *)a3 serialNumber:(unint64_t)a4
{
  self->_retirement = [[QueueImportJournalFile alloc] initWithType:1 partialPath:a3 andSerialNumber:a4];
  if ([(NSMutableArray *)self->_journalArray count]>= 2)
  {
    v6 = [(NSMutableArray *)self->_journalArray count]- 1;
    while (v6)
    {
      v7 = [(NSMutableArray *)self->_journalArray objectAtIndexedSubscript:v6--];
      if (v7[130] <= a4)
      {
        journalArray = self->_journalArray;

        [(NSMutableArray *)journalArray removeObjectsInRange:0, v6 + 1];
        return;
      }
    }
  }
}

- (int64_t)oldestDateAfterRetirement
{
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  v3 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  retirement = self->_retirement;
  if (retirement)
  {
    serialNumber = retirement->_serialNumber;
  }

  else
  {
    serialNumber = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = self->_journalArray;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v58 objects:v76 count:16];
  if (v10)
  {
    v11 = 0;
    v43 = *v59;
    LOWORD(v38) = 256;
    v39 = self;
    do
    {
      v12 = 0;
      v41 = v10;
      do
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * v12);
        v14 = sub_10001B5D8(self->_masterFD, (v13 + 12), 0, v5, v6, v7, v8, v9, v38);
        v15 = v14;
        if (v14 < 0)
        {
          goto LABEL_43;
        }

        v57[0] = 0;
        v57[1] = v57;
        v57[2] = 0x2020000000;
        v57[3] = *(v13 + 1040);
        v16 = read(v14, v3, 0x4000uLL);
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3810000000;
        v56[5] = 0;
        v56[6] = 0;
        v56[3] = &unk_100030FD5;
        v56[4] = -1;
        v55 = 0;
        memset(v54, 0, sizeof(v54));
        if (v16 < 1)
        {
          v18 = v11;
          goto LABEL_42;
        }

        v42 = v15;
        while (1)
        {
          if (v16 <= 8)
          {
            v31 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_100024D24(&v52, v53);
            }

            goto LABEL_41;
          }

          v17 = *v3;
          if (v17 <= 8)
          {
            v32 = logForCSLogCategoryDefault();
            v10 = v41;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_100024CF8(&v50, v51);
            }

            goto LABEL_41;
          }

          if (v16 < v17)
          {
            v33 = logForCSLogCategoryDefault();
            v10 = v41;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_100024CCC(&v48, v49);
            }

            goto LABEL_41;
          }

          v18 = v11;
          if (sub_100008CFC(v3, v17 - 4, 608135816) != *(v3 + v17 - 4))
          {
            v34 = logForCSLogCategoryDefault();
            v10 = v41;
            v15 = v42;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_100024CA0(&v46, v47);
            }

LABEL_41:
            v18 = 1;
            goto LABEL_42;
          }

          v20 = v17 - 8;
          v21 = 4;
LABEL_17:
          if (v20)
          {
            break;
          }

          if (v11)
          {
            self = v39;
            v10 = v41;
LABEL_29:
            v15 = v42;
            goto LABEL_42;
          }

          v24 = v16 - v17;
          __memmove_chk();
          v15 = v42;
          v25 = read(v42, v3 + v24, 0x4000 - v24);
          self = v39;
          v11 = 0;
          v26 = v25 & ~(v25 >> 31);
          v27 = __OFADD__(v26, v24);
          v16 = v26 + v24;
          v10 = v41;
          if ((v16 < 0) ^ v27 | (v16 == 0))
          {
            goto LABEL_42;
          }
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10001A750;
        v45[3] = &unk_100035A00;
        v45[4] = v56;
        v45[5] = v57;
        v45[6] = &v70;
        v45[7] = v64;
        v45[8] = v62;
        v45[9] = &v66;
        v45[10] = serialNumber;
        v22 = sub_100020880(v3 + v21, v20, v54, v45, v19);
        v23 = v22;
        if (v22 <= 0)
        {
          v28 = logForCSLogCategoryDefault();
          self = v39;
          v10 = v41;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = v38;
            v75 = v23;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "  [QueueImportJournal oldestDateAfterRetirement ERROR! msgSize <= 0  %ld", buf, 0xCu);
          }

          v18 = 1;
          goto LABEL_29;
        }

        v21 += v22;
        v20 -= v22;
        if (v20 >= 0)
        {
          goto LABEL_17;
        }

        v29 = logForCSLogCategoryDefault();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        v10 = v41;
        v15 = v42;
        if (v30)
        {
          *buf = v38;
          v75 = v20;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "  [QueueImportJournal oldestDateAfterRetirement ERROR! msgBytesAvailable < 0  %ld", buf, 0xCu);
        }

        v18 = 1;
        self = v39;
LABEL_42:
        close(v15);
        _Block_object_dispose(v56, 8);
        _Block_object_dispose(v57, 8);
        v11 = v18;
LABEL_43:
        if (v67[3])
        {
          goto LABEL_48;
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v58 objects:v76 count:16];
      v10 = v35;
    }

    while (v35);
  }

LABEL_48:
  free(v3);
  v36 = v71[3];
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  return v36;
}

@end