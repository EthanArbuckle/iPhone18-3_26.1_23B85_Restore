@interface CRLZipWriter
- (BOOL)isClosed;
- (CRLZipWriter)initWithOptions:(unint64_t)a3;
- (NSArray)sortedEntries;
- (id)entryWithName:(id)a3;
- (id)localFileHeaderDataForEntry:(id)a3;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)a3;
- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addExistingEntry:(id)a3;
- (void)addExistingEntryImpl:(id)a3;
- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)enumerateEntriesUsingBlock:(id)a3;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4;
- (void)flushEntryData;
- (void)handleWriteError:(id)a3;
- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5;
- (void)setEntryInsertionOffset:(int64_t)a3;
- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4;
- (void)truncateToOffset:(int64_t)a3 completion:(id)a4;
- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)a3;
- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
@end

@implementation CRLZipWriter

- (CRLZipWriter)initWithOptions:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = CRLZipWriter;
  v4 = [(CRLZipWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = objc_opt_new();
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("CRLZipWriter.Channel", v10);
    channelQueue = v5->_channelQueue;
    v5->_channelQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("CRLZipWriter.Write", v13);
    writeQueue = v5->_writeQueue;
    v5->_writeQueue = v14;

    v16 = +[NSDate date];
    newEntryLastModificationDate = v5->_newEntryLastModificationDate;
    v5->_newEntryLastModificationDate = v16;
  }

  return v5;
}

- (unint64_t)entriesCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100563530;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)p_writeChannel
{
  v3 = self->_channelQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    if (self->_writeChannelCompletionSemaphore)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101393750();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101393764();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013937F4();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139381C(v11, v10);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Write channel semaphore should not be initialized.", v12, v13, v14, v15, v16, v17, v18, "[CRLZipWriter p_writeChannel]");
      v19 = [NSString stringWithUTF8String:"[CRLZipWriter p_writeChannel]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:110 isFatal:1 description:"Write channel semaphore should not be initialized."];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v21, v22);
      abort();
    }

    v5 = dispatch_semaphore_create(0);
    writeChannelCompletionSemaphore = self->_writeChannelCompletionSemaphore;
    self->_writeChannelCompletionSemaphore = v5;

    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100563850;
    v23[3] = &unk_10183AF10;
    objc_copyWeak(&v24, &location);
    v7 = [(CRLZipWriter *)self prepareWriteChannelWithCloseCompletionHandler:v23];
    v8 = self->_writeChannel;
    self->_writeChannel = v7;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    writeChannel = self->_writeChannel;
  }

  return writeChannel;
}

- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100563988;
  block[3] = &unk_10186F2D8;
  block[4] = self;
  v20 = v14;
  v24 = a4;
  v21 = v15;
  v22 = a6;
  v23 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(writeQueue, block);
}

- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v8 = a8;
  v9 = *&a7;
  v14 = a3;
  v15 = a5;
  if (self->_isClosed)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013939DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013939F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101393A80();
    }

    v35 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v35);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v36, v37, v38, v39, v40, v41, v42, "[CRLZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
    v43 = [NSString stringWithUTF8String:"[CRLZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
    v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:157 isFatal:1 description:"Already closed."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v45, v46);
    abort();
  }

  v16 = v15;
  if (!self->_error)
  {
    [(CRLZipWriter *)self finishEntry];
    v17 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v14];

    if (v17)
    {
      v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013938E4();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013938F8(v14, v18, v19);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013939B4();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v20);
      }

      v21 = [NSString stringWithUTF8String:"[CRLZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:166 isFatal:0 description:"Already have an entry with name: %@", v14];
    }

    else
    {
      v23 = objc_alloc_init(CRLZipWriterEntry);
      currentEntry = self->_currentEntry;
      self->_currentEntry = v23;

      [(CRLZipWriterEntry *)self->_currentEntry setName:v14];
      [(CRLZipWriterEntry *)self->_currentEntry setOffset:self->_currentOffset];
      if (a6)
      {
        v25 = v8;
      }

      else
      {
        v25 = 1;
      }

      self->_calculateSize = v25;
      if (v8)
      {
        v26 = 0;
      }

      else
      {
        v26 = a6;
      }

      [(CRLZipWriterEntry *)self->_currentEntry setSize:v26];
      self->_force32BitSize = self->_calculateSize && a4;
      if (v9)
      {
        v27 = v8;
      }

      else
      {
        v27 = 1;
      }

      self->_calculateCRC = v27;
      v28 = v9;
      if (v27)
      {
        v28 = crc32(0, 0, 0);
      }

      [(CRLZipWriterEntry *)self->_currentEntry setCRC:v28];
      if (v8)
      {
        [(CRLZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_newEntryLastModificationDate];
        self->_sizeToMatch = a6;
        self->_CRCToMatch = v9;
        v29 = v16;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = v29;
      }

      else
      {
        newEntryLastModificationDate = v16;
        if (!v16)
        {
          newEntryLastModificationDate = self->_newEntryLastModificationDate;
        }

        [(CRLZipWriterEntry *)self->_currentEntry setLastModificationDate:newEntryLastModificationDate];
        self->_sizeToMatch = 0;
        self->_CRCToMatch = 0;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = 0;
      }

      v21 = [(CRLZipWriter *)self localFileHeaderDataForEntry:self->_currentEntry];
      if ((self->_calculateSize || self->_calculateCRC) && (self->_options & 8) == 0)
      {
        objc_storeStrong(&self->_localFileHeaderData, v21);
        v32 = objc_alloc_init(NSMutableArray);
      }

      else
      {
        [(CRLZipWriter *)self writeData:v21];
        localFileHeaderData = self->_localFileHeaderData;
        self->_localFileHeaderData = 0;

        v32 = 0;
      }

      entryDatas = self->_entryDatas;
      self->_entryDatas = v32;

      self->_entryDataSize = 0;
    }
  }
}

- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  writeQueue = self->_writeQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100563FA4;
  v15[3] = &unk_101842D00;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(writeQueue, v15);
}

- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isClosed)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393AA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101393ABC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101393B4C();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v18, v19, v20, v21, v22, v23, v24, "[CRLZipWriter addDataImpl:queue:completion:]");
    v25 = [NSString stringWithUTF8String:"[CRLZipWriter addDataImpl:queue:completion:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:233 isFatal:1 description:"Already closed."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, v28);
    abort();
  }

  v11 = v10;
  v12 = self->_error;
  if (v12)
  {
    if (v11)
    {
      if (v9)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1005643F4;
        block[3] = &unk_101839D68;
        v34 = v11;
        v33 = v12;
        dispatch_async(v9, block);
      }

      else
      {
        (v11)[2](v11, v12);
      }
    }

    goto LABEL_15;
  }

  size = dispatch_data_get_size(v8);
  entryDatas = self->_entryDatas;
  if (entryDatas)
  {
    localFileHeaderData = self->_localFileHeaderData;
    if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
    {
      [(NSMutableArray *)entryDatas addObject:v8];
      self->_entryDataSize += size;
      if (v11)
      {
        if (v9)
        {
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100564408;
          v30[3] = &unk_10183B230;
          v31 = v11;
          dispatch_async(v9, v30);
        }

        else
        {
          v11[2](v11, 0);
        }
      }

      goto LABEL_10;
    }

    [(CRLZipWriter *)self writeData:localFileHeaderData];
    v16 = self->_localFileHeaderData;
    self->_localFileHeaderData = 0;

    [(CRLZipWriter *)self flushEntryData];
  }

  [(CRLZipWriter *)self writeData:v8 queue:v9 completion:v11];
LABEL_10:
  if (self->_calculateSize)
  {
    [(CRLZipWriterEntry *)self->_currentEntry setSize:[(CRLZipWriterEntry *)self->_currentEntry size]+ size];
  }

  if (self->_calculateCRC)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10056441C;
    applier[3] = &unk_10186F400;
    applier[4] = self;
    dispatch_data_apply(v8, applier);
  }

LABEL_15:
}

- (void)flushEntryData
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_entryDatas;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CRLZipWriter *)self writeData:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  entryDatas = self->_entryDatas;
  self->_entryDatas = 0;

  self->_entryDataSize = 0;
}

- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005646E4;
  block[3] = &unk_101842CD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeQueue, block);
}

- (void)finishEntry
{
  currentEntry = self->_currentEntry;
  if (!currentEntry)
  {
    return;
  }

  if (self->_calculateSize || self->_calculateCRC)
  {
    if (self->_force32BitSize)
    {
      if ([(CRLZipWriterEntry *)self->_currentEntry size]>> 32)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_101393E54();
        }

        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_101393E68();
        }

        v4 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
        [(CRLZipWriter *)self handleWriteError:v4];

        return;
      }

      currentEntry = self->_currentEntry;
    }

    if (self->_lastModificationDateIfSizeAndCRCMatches)
    {
      v5 = [(CRLZipWriterEntry *)currentEntry size];
      currentEntry = self->_currentEntry;
      if (v5 == self->_sizeToMatch)
      {
        v6 = [(CRLZipWriterEntry *)self->_currentEntry CRC];
        currentEntry = self->_currentEntry;
        if (v6 == self->_CRCToMatch)
        {
          [(CRLZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_lastModificationDateIfSizeAndCRCMatches];
          currentEntry = self->_currentEntry;
        }
      }
    }

    v7 = [(CRLZipWriter *)self localFileHeaderDataForEntry:currentEntry];
    if (self->_entryDatas)
    {
      [(CRLZipWriter *)self writeData:v7];
      localFileHeaderData = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      [(CRLZipWriter *)self flushEntryData];
    }

    else
    {
      [(CRLZipWriter *)self writeData:v7 offset:[(CRLZipWriterEntry *)self->_currentEntry offset]];
    }

    currentEntry = self->_currentEntry;
  }

  [(NSMutableArray *)self->_entries addObject:currentEntry];
  entriesMap = self->_entriesMap;
  v9 = self->_currentEntry;
  v11 = [(CRLZipWriterEntry *)v9 name];
  [(NSMutableDictionary *)entriesMap setObject:v9 forKeyedSubscript:v11];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v13 = self->_currentEntry;
  self->_currentEntry = 0;
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9
{
  v10 = *&a7;
  v13 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100564ECC;
  v17[3] = &unk_10186F4B0;
  v18 = a9;
  v16 = v18;
  [(CRLZipWriter *)self writeEntryWithName:a3 force32BitSize:v13 lastModificationDate:a5 size:a6 CRC:v10 fromReadChannel:a8 writeHandler:v17];
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  if (!v17)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393EA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101393EBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101393F68();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = [NSString stringWithUTF8String:"[CRLZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:365 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];
  }

  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10056521C;
  block[3] = &unk_10186F580;
  block[4] = self;
  v28 = v15;
  v34 = a4;
  v33 = a7;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = a6;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  dispatch_async(writeQueue, block);
}

- (void)addExistingEntry:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100565654;
  v7[3] = &unk_10183AE28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (void)addExistingEntryImpl:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(CRLZipWriterEntry);
  v5 = [v11 name];
  [(CRLZipWriterEntry *)v4 setName:v5];

  v6 = [v11 lastModificationDate];
  [(CRLZipWriterEntry *)v4 setLastModificationDate:v6];

  if ([v11 isCompressed])
  {
    v7 = [v11 compressedSize];
  }

  else
  {
    v7 = [v11 size];
  }

  [(CRLZipWriterEntry *)v4 setSize:v7];
  -[CRLZipWriterEntry setOffset:](v4, "setOffset:", [v11 offset]);
  -[CRLZipWriterEntry setCRC:](v4, "setCRC:", [v11 CRC]);
  [(NSMutableArray *)self->_entries addObject:v4];
  entriesMap = self->_entriesMap;
  v9 = [v11 name];
  [(NSMutableDictionary *)entriesMap setObject:v4 forKeyedSubscript:v9];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)a3
{
  writeQueue = self->_writeQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100565808;
  v4[3] = &unk_10183B720;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(writeQueue, v4);
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    writeQueue = self->_writeQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005658C8;
    v7[3] = &unk_10183FC10;
    v7[4] = self;
    v8 = v4;
    dispatch_async(writeQueue, v7);
  }
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100565B30;
  block[3] = &unk_101842CD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeQueue, block);
}

- (void)writeCentralDirectory
{
  currentOffset = self->_currentOffset;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CRLZipWriter *)self writeCentralFileHeaderDataForEntry:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(CRLZipWriter *)self writeEndOfCentralDirectoryDataWithOffset:currentOffset size:self->_currentOffset - currentOffset entryCount:[(NSMutableArray *)self->_entries count]];
}

- (id)localFileHeaderDataForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 UTF8String];

  __src = v6;
  v7 = strlen(v6);
  if (v7 >= 0x10000)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101394210();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101394224();
    }

    v7 = 0xFFFFLL;
  }

  v8 = self->_options & 1;
  v9 = v8 | ([v4 size] >> 32);
  v10 = v9 != 0;
  if (v9 || self->_calculateSize)
  {
    v25 = !self->_force32BitSize;
    if (self->_force32BitSize)
    {
      v11 = 0;
    }

    else
    {
      v11 = 20;
    }
  }

  else
  {
    v25 = 0;
    v11 = 0;
  }

  v12 = v7 + v11;
  v13 = malloc_type_malloc(v12 + 30, 0x403709E8uLL);
  v14 = v13 + 30;
  *v13 = 67324752;
  v13[1] = 20;
  *(v13 + 4) = 0;
  v15 = [v4 lastModificationDate];
  v16 = [v15 crl_DOSTime];

  HIDWORD(v17) = v16;
  LODWORD(v17) = v16;
  *(v13 + 10) = v17 >> 16;
  *(v13 + 14) = [v4 CRC];
  if (!v10)
  {
    *(v13 + 18) = [v4 size];
LABEL_18:
    v20 = [v4 size];
    goto LABEL_20;
  }

  if (self->_force32BitSize)
  {
    v18 = [v4 size];
    force32BitSize = self->_force32BitSize;
    *(v13 + 18) = v18;
    if (!force32BitSize)
    {
      v20 = -1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v20 = -1;
  *(v13 + 18) = -1;
LABEL_20:
  *(v13 + 22) = v20;
  *(v13 + 13) = v7;
  *(v13 + 14) = v11;
  memcpy(v14, __src, v7);
  if (v25)
  {
    v21 = &v14[v7];
    *v21 = 1;
    *(v21 + 1) = 16;
    v22 = [v4 size];
    *(v21 + 4) = v22;
    *(v21 + 12) = v22;
  }

  v23 = dispatch_data_create(v13, v12 + 30, 0, _dispatch_data_destructor_free);

  return v23;
}

- (void)writeCentralFileHeaderDataForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 UTF8String];

  __src = v6;
  v7 = strlen(v6);
  if (v7 >= 0x10000)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101394264();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101394224();
    }

    v7 = 0xFFFFLL;
  }

  v27 = self;
  v8 = self->_options & 2;
  v9 = v8 | ([v4 size] >> 32);
  v10 = v8 | ([v4 offset] >> 32);
  v11 = 4 * ((v9 | v10) != 0);
  if (v9)
  {
    v11 = 20;
  }

  v12 = v10 != 0;
  if (v10)
  {
    v13 = v11 | 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = v7 + v13;
  v15 = malloc_type_malloc(v7 + v13 + 46, 0x62B4905uLL);
  v16 = v15 + 46;
  *v15 = 33639248;
  *(v15 + 4) = 1310782;
  v17 = [v4 lastModificationDate];
  v18 = [v17 crl_DOSTime];

  HIDWORD(v19) = v18;
  LODWORD(v19) = v18;
  *(v15 + 3) = v19 >> 16;
  *(v15 + 4) = [v4 CRC];
  if (v9)
  {
    v20 = -1;
    *(v15 + 5) = -1;
  }

  else
  {
    *(v15 + 5) = [v4 size];
    v20 = [v4 size];
  }

  *(v15 + 6) = v20;
  *(v15 + 14) = v7;
  *(v15 + 15) = v13;
  *(v15 + 4) = 0;
  *(v15 + 20) = 0;
  v21 = v12;
  if (v12)
  {
    *(v15 + 42) = -1;
    memcpy(v16, __src, v7);
    *&v16[v7] = 1;
    v22 = &v16[v7 + 4];
    *&v16[v7 + 2] = 0;
    v23 = &v16[v7 + 2];
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v15 + 42) = [v4 offset];
    memcpy(v16, __src, v7);
    if (!v9)
    {
      goto LABEL_23;
    }

    v22 = &v16[v7 + 4];
    *&v16[v7] = 1;
    v23 = &v16[v7 + 2];
  }

  v24 = &v16[v7];
  *v23 = 16;
  *v22 = [v4 size];
  *(v24 + 12) = [v4 size];
  if (v21)
  {
    v22 = v24 + 20;
LABEL_22:
    *v23 += 8;
    *v22 = [v4 offset];
  }

LABEL_23:
  v25 = dispatch_data_create(v15, v14 + 46, 0, _dispatch_data_destructor_free);
  [(CRLZipWriter *)v27 writeData:v25];
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a5 > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a4 > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a3 > 4294967294)
  {
    v11 = 1;
  }

  else
  {
    v11 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if ((v9 & 1) != 0 || (v10 & 1) != 0 || v11)
  {
    currentOffset = self->_currentOffset;
    [(CRLZipWriter *)self writeZip64EndOfCentralDirectoryWithOffset:a3 size:a4 entryCount:a5];
    [(CRLZipWriter *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:currentOffset];
  }

  v13 = malloc_type_malloc(0x16uLL, 0x984004FAuLL);
  *v13 = 101010256;
  if (v9)
  {
    v14 = -1;
  }

  else
  {
    v14 = v5;
  }

  v13[4] = v14;
  v13[5] = v14;
  if (v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = v6;
  }

  if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = v7;
  }

  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  v13[10] = 0;
  v17 = dispatch_data_create(v13, 0x16uLL, 0, _dispatch_data_destructor_free);
  [(CRLZipWriter *)self writeData:v17];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v9 = malloc_type_malloc(0x38uLL, 0xB0DA3BCEuLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = a5;
  *(v9 + 3) = 1310782;
  v9[4] = a5;
  v9[5] = a4;
  v9[6] = a3;
  v10 = dispatch_data_create(v9, 0x38uLL, 0, _dispatch_data_destructor_free);
  [(CRLZipWriter *)self writeData:v10];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  v5 = malloc_type_malloc(0x14uLL, 0x9D4DBAB6uLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = a3;
  v5[4] = 1;
  v6 = dispatch_data_create(v5, 0x14uLL, 0, _dispatch_data_destructor_free);
  [(CRLZipWriter *)self writeData:v6];
}

- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  size = dispatch_data_get_size(a3);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100566D24;
  v14[3] = &unk_10186F690;
  v15 = v8;
  v16 = v9;
  v12 = v8;
  v13 = v9;
  [(CRLZipWriter *)self p_writeData:a3 offset:writtenOffset completion:v14];
  self->_writtenOffset += size;
}

- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  channelQueue = self->_channelQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100566ED0;
  v13[3] = &unk_10185CC98;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(channelQueue, v13);
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F6D8);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLZipWriter prepareWriteChannelWithCloseCompletionHandler:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m";
    v27 = 1024;
    v28 = 783;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F6F8);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:783 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100567520;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handleWriteError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] != 3072 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", NSCocoaErrorDomain), v7, (v8 & 1) == 0))
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101394278();
      }

      v9 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10139428C(v9, v6);
      }
    }

    if (!self->_error)
    {
      objc_storeStrong(&self->_error, a3);
      channelQueue = self->_channelQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005676B0;
      block[3] = &unk_10183AB38;
      block[4] = self;
      dispatch_async(channelQueue, block);
    }
  }
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10056778C;
  v7[3] = &unk_10183FC10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (id)sortedEntriesImpl
{
  sortedEntries = self->_sortedEntries;
  if (!sortedEntries)
  {
    v4 = [(NSMutableArray *)self->_entries sortedArrayUsingComparator:&stru_10186F758];
    v5 = self->_sortedEntries;
    self->_sortedEntries = v4;

    sortedEntries = self->_sortedEntries;
  }

  return sortedEntries;
}

- (NSArray)sortedEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100567008;
  v10 = sub_100567018;
  v11 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100567B24;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isClosed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100567C1C;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)entryWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100567008;
  v16 = sub_100567018;
  v17 = 0;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100567D40;
  block[3] = &unk_10183DE60;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(writeQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100567E38;
  block[3] = &unk_10183F0D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4
{
  v13 = a4;
  if ([(CRLZipWriter *)self entriesCountImpl]<= a3)
  {
    v12 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    (*(v13 + 2))(v13, 0);
  }

  else
  {
    v6 = [(CRLZipWriter *)self sortedEntriesImpl];
    if ([v6 count] > a3)
    {
      v7 = a3;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        [(NSMutableArray *)self->_entries removeObject:v8];
        entriesMap = self->_entriesMap;
        v10 = [v8 name];
        [(NSMutableDictionary *)entriesMap removeObjectForKey:v10];

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    v11 = [v6 objectAtIndexedSubscript:a3];
    -[CRLZipWriter setEntryInsertionOffsetImpl:](self, "setEntryInsertionOffsetImpl:", [v11 offset]);
    -[CRLZipWriter truncateToOffsetImpl:completion:](self, "truncateToOffsetImpl:completion:", [v11 offset], v13);
  }

  v12 = v13;
LABEL_9:
}

- (void)truncateToOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10056803C;
  block[3] = &unk_10183F0D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F778);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v23 = v5;
    v24 = 2082;
    v25 = "[CRLZipWriter truncateToOffsetImpl:completion:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m";
    v28 = 1024;
    v29 = 920;
    v30 = 2114;
    v31 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F798);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLZipWriter truncateToOffsetImpl:completion:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:920 isFatal:0 description:"Abstract method not overridden by %{public}@", v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v18, "[CRLZipWriter truncateToOffsetImpl:completion:]"];
  v20 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

@end