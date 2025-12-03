@interface BKLibraryDownloadStatus
+ (id)statusWithAssetID:(id)d state:(int64_t)state progressValue:(double)value timeRemaining:(int64_t)remaining;
- (BKLibraryDownloadStatus)initWithAssetID:(id)d state:(int64_t)state supplementalContentState:(int64_t)contentState progressValue:(double)value timeRemaining:(int64_t)remaining bytesDownloaded:(unint64_t)downloaded fileSize:(unint64_t)size error:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isProgressAndStateEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)updateWithStatus:(id)status;
- (void)updateWithWaitingToBeDownloadable:(BOOL)downloadable;
@end

@implementation BKLibraryDownloadStatus

+ (id)statusWithAssetID:(id)d state:(int64_t)state progressValue:(double)value timeRemaining:(int64_t)remaining
{
  dCopy = d;
  v11 = [[self alloc] initWithAssetID:dCopy state:state progressValue:remaining timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:value];

  return v11;
}

- (BKLibraryDownloadStatus)initWithAssetID:(id)d state:(int64_t)state supplementalContentState:(int64_t)contentState progressValue:(double)value timeRemaining:(int64_t)remaining bytesDownloaded:(unint64_t)downloaded fileSize:(unint64_t)size error:(id)self0
{
  dCopy = d;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = BKLibraryDownloadStatus;
  v19 = [(BKLibraryDownloadStatus *)&v26 init];
  if (v19)
  {
    v20 = [dCopy copy];
    assetID = v19->_assetID;
    v19->_assetID = v20;

    v19->_state = state;
    v19->_supplementalContentState = contentState;
    if (state)
    {
      contentStateCopy = state;
    }

    else
    {
      contentStateCopy = contentState;
    }

    v23 = fmin(value, 1.0);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v19->_progressValue = v23;
    v19->_combinedState = contentStateCopy;
    v19->_timeRemaining = remaining;
    v19->_bytesDownloaded = downloaded;
    v19->_fileSize = size;
    v24 = +[BKReachability sharedReachabilityForInternetConnection];
    v19->_internetReachable = [v24 currentReachabilityStatus] != 0;

    objc_storeStrong(&v19->_error, error);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = BUDynamicCast();

  if (!v6)
  {
    v19 = 0;
    goto LABEL_14;
  }

  assetID = [(BKLibraryDownloadStatus *)self assetID];
  assetID2 = [v6 assetID];
  if ([assetID isEqualToString:assetID2])
  {
    state = [(BKLibraryDownloadStatus *)self state];
    if (state == [v6 state])
    {
      supplementalContentState = [(BKLibraryDownloadStatus *)self supplementalContentState];
      if (supplementalContentState == [v6 supplementalContentState])
      {
        combinedState = [(BKLibraryDownloadStatus *)self combinedState];
        if (combinedState == [v6 combinedState])
        {
          [(BKLibraryDownloadStatus *)self progressValue];
          v13 = v12;
          [v6 progressValue];
          if (vabdd_f64(v13, v14) < 0.001)
          {
            timeRemaining = [(BKLibraryDownloadStatus *)self timeRemaining];
            if (timeRemaining == [v6 timeRemaining])
            {
              bytesDownloaded = [(BKLibraryDownloadStatus *)self bytesDownloaded];
              if (bytesDownloaded == [v6 bytesDownloaded])
              {
                fileSize = [(BKLibraryDownloadStatus *)self fileSize];
                if (fileSize == [v6 fileSize])
                {
                  internetReachable = [(BKLibraryDownloadStatus *)self internetReachable];
                  if (internetReachable == [v6 internetReachable])
                  {
                    error = [(BKLibraryDownloadStatus *)self error];
                    if (error || ([v6 error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      error2 = [(BKLibraryDownloadStatus *)self error];
                      error3 = [v6 error];
                      v19 = [error2 isEqual:error3];

                      if (error)
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

- (BOOL)isProgressAndStateEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    assetID = [(BKLibraryDownloadStatus *)self assetID];
    assetID2 = [v5 assetID];
    if ([assetID isEqualToString:assetID2] && (v8 = -[BKLibraryDownloadStatus state](self, "state"), v8 == objc_msgSend(v5, "state")))
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
  assetID = [(BKLibraryDownloadStatus *)self assetID];
  v4 = [assetID hash];

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
  error = [(BKLibraryDownloadStatus *)self error];
  v15 = [error hash] + 32 * v13 - v13;

  return (v15 + 0x2E97294E4B2C1);
}

- (void)updateWithStatus:(id)status
{
  statusCopy = status;
  assetID = [statusCopy assetID];
  assetID2 = [(BKLibraryDownloadStatus *)self assetID];
  v6 = [assetID isEqualToString:assetID2];

  if (v6)
  {
    if ([statusCopy state] != self->_state)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"state"];
      self->_state = [statusCopy state];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"state"];
    }

    if ([statusCopy supplementalContentState] != self->_supplementalContentState)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"supplementalContentState"];
      self->_supplementalContentState = [statusCopy supplementalContentState];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"supplementalContentState"];
    }

    if ([statusCopy combinedState] != self->_combinedState)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"combinedState"];
      self->_combinedState = [statusCopy combinedState];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"combinedState"];
    }

    [statusCopy progressValue];
    if (v7 != self->_progressValue)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"progressValue"];
      [statusCopy progressValue];
      self->_progressValue = v8;
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"progressValue"];
    }

    if ([statusCopy timeRemaining] != self->_timeRemaining)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"timeRemaining"];
      self->_timeRemaining = [statusCopy timeRemaining];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"timeRemaining"];
    }

    if ([statusCopy bytesDownloaded] != self->_bytesDownloaded && objc_msgSend(statusCopy, "bytesDownloaded") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"bytesDownloaded"];
      self->_bytesDownloaded = [statusCopy bytesDownloaded];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"bytesDownloaded"];
    }

    if ([statusCopy fileSize] != self->_fileSize && objc_msgSend(statusCopy, "fileSize") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"fileSize"];
      self->_fileSize = [statusCopy fileSize];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"fileSize"];
    }

    if (self->_internetReachable != [statusCopy internetReachable])
    {
      [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"internetReachable"];
      self->_internetReachable = [statusCopy internetReachable];
      [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"internetReachable"];
    }

    error = [statusCopy error];
    if (error || self->_error)
    {
      error2 = [statusCopy error];
      v11 = [error2 isEqual:self->_error];

      if ((v11 & 1) == 0)
      {
        [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"error"];
        error3 = [statusCopy error];
        error = self->_error;
        self->_error = error3;

        [(BKLibraryDownloadStatus *)self didChangeValueForKey:@"error"];
      }
    }
  }
}

- (void)updateWithWaitingToBeDownloadable:(BOOL)downloadable
{
  if (self->_waitingToBeDownloadable != downloadable)
  {
    [(BKLibraryDownloadStatus *)self willChangeValueForKey:@"waitingToBeDownloadable"];
    self->_waitingToBeDownloadable = downloadable;

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