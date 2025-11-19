@interface BKLibraryDownloadStatus
+ (id)statusWithAssetID:(id)a3 state:(int64_t)a4 progressValue:(double)a5 timeRemaining:(int64_t)a6;
- (BKLibraryDownloadStatus)initWithAssetID:(id)a3 state:(int64_t)a4 supplementalContentState:(int64_t)a5 progressValue:(double)a6 timeRemaining:(int64_t)a7 bytesDownloaded:(unint64_t)a8 fileSize:(unint64_t)a9 error:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isProgressAndStateEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)updateWithStatus:(id)a3;
- (void)updateWithWaitingToBeDownloadable:(BOOL)a3;
@end

@implementation BKLibraryDownloadStatus

+ (id)statusWithAssetID:(id)a3 state:(int64_t)a4 progressValue:(double)a5 timeRemaining:(int64_t)a6
{
  v10 = a3;
  v11 = [[a1 alloc] initWithAssetID:v10 state:a4 progressValue:a6 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:a5];

  return v11;
}

- (BKLibraryDownloadStatus)initWithAssetID:(id)a3 state:(int64_t)a4 supplementalContentState:(int64_t)a5 progressValue:(double)a6 timeRemaining:(int64_t)a7 bytesDownloaded:(unint64_t)a8 fileSize:(unint64_t)a9 error:(id)a10
{
  v17 = a3;
  v18 = a10;
  v26.receiver = self;
  v26.super_class = BKLibraryDownloadStatus;
  v19 = [(BKLibraryDownloadStatus *)&v26 init];
  if (v19)
  {
    v20 = [v17 copy];
    assetID = v19->_assetID;
    v19->_assetID = v20;

    v19->_state = a4;
    v19->_supplementalContentState = a5;
    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = a5;
    }

    v23 = fmin(a6, 1.0);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v19->_progressValue = v23;
    v19->_combinedState = v22;
    v19->_timeRemaining = a7;
    v19->_bytesDownloaded = a8;
    v19->_fileSize = a9;
    v24 = +[BKReachability sharedReachabilityForInternetConnection];
    v19->_internetReachable = [v24 currentReachabilityStatus] != 0;

    objc_storeStrong(&v19->_error, a10);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v6 = BUDynamicCast();

  if (!v6)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v7 = [(BKLibraryDownloadStatus *)self assetID];
  v8 = [v6 assetID];
  if ([v7 isEqualToString:v8])
  {
    v9 = [(BKLibraryDownloadStatus *)self state];
    if (v9 == [v6 state])
    {
      v10 = [(BKLibraryDownloadStatus *)self supplementalContentState];
      if (v10 == [v6 supplementalContentState])
      {
        v11 = [(BKLibraryDownloadStatus *)self combinedState];
        if (v11 == [v6 combinedState])
        {
          [(BKLibraryDownloadStatus *)self progressValue];
          v13 = v12;
          [v6 progressValue];
          if (vabdd_f64(v13, v14) < 0.001)
          {
            v15 = [(BKLibraryDownloadStatus *)self timeRemaining];
            if (v15 == [v6 timeRemaining])
            {
              v16 = [(BKLibraryDownloadStatus *)self bytesDownloaded];
              if (v16 == [v6 bytesDownloaded])
              {
                v17 = [(BKLibraryDownloadStatus *)self fileSize];
                if (v17 == [v6 fileSize])
                {
                  v18 = [(BKLibraryDownloadStatus *)self internetReachable];
                  if (v18 == [v6 internetReachable])
                  {
                    v21 = [(BKLibraryDownloadStatus *)self error];
                    if (v21 || ([v6 error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v22 = [(BKLibraryDownloadStatus *)self error];
                      v23 = [v6 error];
                      v19 = [v22 isEqual:v23];

                      if (v21)
                      {
LABEL_21:

                        goto LABEL_12;
                      }
                    }

                    else
                    {
                      v19 = 1;
                    }

                    goto LABEL_21;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = 0;
LABEL_12:

LABEL_14:
  return v19;
}

- (BOOL)isProgressAndStateEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(BKLibraryDownloadStatus *)self assetID];
    v7 = [v5 assetID];
    if ([v6 isEqualToString:v7] && (v8 = -[BKLibraryDownloadStatus state](self, "state"), v8 == objc_msgSend(v5, "state")))
    {
      [(BKLibraryDownloadStatus *)self progressValue];
      v10 = v9;
      [v5 progressValue];
      v12 = vabdd_f64(v10, v11) < 0.001;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(BKLibraryDownloadStatus *)self assetID];
  v4 = [v3 hash];

  v5 = [(BKLibraryDownloadStatus *)self state]- v4 + 32 * v4;
  v6 = [(BKLibraryDownloadStatus *)self supplementalContentState]+ 32 * v5 - v5;
  v7 = [(BKLibraryDownloadStatus *)self combinedState]+ 32 * v6 - v6;
  [(BKLibraryDownloadStatus *)self progressValue];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [v8 hash] + 32 * v7 - v7;

  v10 = [(BKLibraryDownloadStatus *)self timeRemaining]+ 32 * v9 - v9;
  v11 = [(BKLibraryDownloadStatus *)self bytesDownloaded]+ 32 * v10 - v10;
  v12 = 31 * ([(BKLibraryDownloadStatus *)self fileSize]+ 32 * v11 - v11);
  v13 = v12 + [(BKLibraryDownloadStatus *)self internetReachable];
  v14 = [(BKLibraryDownloadStatus *)self error];
  v15 = [v14 hash] + 32 * v13 - v13;

  return (v15 + 0x2E97294E4B2C1);
}

- (void)updateWithStatus:(id)a3
{
  v14 = a3;
  v4 = [v14 assetID];
  v5 = [(BKLibraryDownloadStatus *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    if ([v14 state] != self->_state)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"state"];
      self->_state = [v14 state];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"state"];
    }

    if ([v14 supplementalContentState] != self->_supplementalContentState)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"supplementalContentState"];
      self->_supplementalContentState = [v14 supplementalContentState];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"supplementalContentState"];
    }

    if ([v14 combinedState] != self->_combinedState)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"combinedState"];
      self->_combinedState = [v14 combinedState];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"combinedState"];
    }

    [v14 progressValue];
    if (v7 != self->_progressValue)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"progressValue"];
      [v14 progressValue];
      self->_progressValue = v8;
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"progressValue"];
    }

    if ([v14 timeRemaining] != self->_timeRemaining)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"timeRemaining"];
      self->_timeRemaining = [v14 timeRemaining];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"timeRemaining"];
    }

    if ([v14 bytesDownloaded] != self->_bytesDownloaded && objc_msgSend(v14, "bytesDownloaded") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"bytesDownloaded"];
      self->_bytesDownloaded = [v14 bytesDownloaded];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"bytesDownloaded"];
    }

    if ([v14 fileSize] != self->_fileSize && objc_msgSend(v14, "fileSize") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"fileSize"];
      self->_fileSize = [v14 fileSize];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"fileSize"];
    }

    if (self->_internetReachable != [v14 internetReachable])
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"internetReachable"];
      self->_internetReachable = [v14 internetReachable];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"internetReachable"];
    }

    v9 = [v14 error];
    if (v9 || self->_error)
    {
      v10 = [v14 error];
      v11 = [v10 isEqual:self->_error];

      if ((v11 & 1) == 0)
      {
        [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"error"];
        v12 = [v14 error];
        error = self->_error;
        self->_error = v12;

        [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"error"];
      }
    }
  }
}

- (void)updateWithWaitingToBeDownloadable:(BOOL)a3
{
  if (self->_waitingToBeDownloadable != a3)
  {
    [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"waitingToBeDownloadable"];
    self->_waitingToBeDownloadable = a3;

    [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"waitingToBeDownloadable"];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  assetID = self->_assetID;
  v6 = [(BKLibraryDownloadStatus *)self stateStringDescription:self->_state];
  v7 = [(BKLibraryDownloadStatus *)self stateStringDescription:self->_supplementalContentState];
  v8 = v7;
  v9 = @"NO";
  if (self->_internetReachable)
  {
    v9 = @"YES";
  }

  v10 = [NSString stringWithFormat:@"<%@ %p assetID=%@ state=%@ supplementalContentState=%@ progressValue=%f timeRemaining=%ld internetReachable=%@ error=%@>", v4, self, assetID, v6, v7, *&self->_progressValue, self->_timeRemaining, v9, self->_error];

  return v10;
}

@end