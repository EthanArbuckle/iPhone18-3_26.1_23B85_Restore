@interface AEAudiobookBookmarkTimeSnapshot
- (AEAudiobookBookmarkTimeSnapshot)initWithBookmarkTime:(double)time bookmarkTimeTimestamp:(id)timestamp;
- (AEAudiobookBookmarkTimeSnapshot)initWithCoder:(id)coder;
- (double)newestBookmarkTimeFromBookmarkTime:(double)time bookmarkTimeTimestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AEAudiobookBookmarkTimeSnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTime];
  [coderCopy encodeDouble:@"AEAudiobookBookmarkTime" forKey:?];
  bookmarkTimeTimestamp = [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTimeTimestamp];
  [coderCopy encodeObject:bookmarkTimeTimestamp forKey:@"AEAudiobookBookmarkTimestamp"];
}

- (AEAudiobookBookmarkTimeSnapshot)initWithBookmarkTime:(double)time bookmarkTimeTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = AEAudiobookBookmarkTimeSnapshot;
  v8 = [(AEAudiobookBookmarkTimeSnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_bookmarkTime = time;
    objc_storeStrong(&v8->_bookmarkTimeTimestamp, timestamp);
  }

  return v9;
}

- (AEAudiobookBookmarkTimeSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AEAudiobookBookmarkTimeSnapshot *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"AEAudiobookBookmarkTime"];
    v5->_bookmarkTime = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AEAudiobookBookmarkTimestamp"];
    bookmarkTimeTimestamp = v5->_bookmarkTimeTimestamp;
    v5->_bookmarkTimeTimestamp = v7;
  }

  return v5;
}

- (double)newestBookmarkTimeFromBookmarkTime:(double)time bookmarkTimeTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  bookmarkTimeTimestamp = [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTimeTimestamp];
  [bookmarkTimeTimestamp timeIntervalSinceReferenceDate];
  v9 = v8;
  [timestampCopy timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = BDSCloudKitAudiobookLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9 <= v11)
  {
    if (v13)
    {
      bookmarkTimeTimestamp2 = [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTimeTimestamp];
      [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTime];
      v20 = 138413058;
      v21 = bookmarkTimeTimestamp2;
      v22 = 2048;
      v23 = v18;
      v24 = 2112;
      v25 = timestampCopy;
      v26 = 2048;
      timeCopy2 = time;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Audiobook Bookmark time snapshot date: %@ time:%lf < cloud date: %@ time: %lf.  Assuming Cloud time.", &v20, 0x2Au);
    }
  }

  else
  {
    if (v13)
    {
      bookmarkTimeTimestamp3 = [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTimeTimestamp];
      [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTime];
      v20 = 138413058;
      v21 = bookmarkTimeTimestamp3;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = timestampCopy;
      v26 = 2048;
      timeCopy2 = time;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Audiobook Bookmark time snapshot date: %@ time:%lf > cloud date: %@ time: %lf.  Assuming snapshot time.", &v20, 0x2Au);
    }

    [(AEAudiobookBookmarkTimeSnapshot *)self bookmarkTime];
    time = v16;
  }

  return time;
}

@end