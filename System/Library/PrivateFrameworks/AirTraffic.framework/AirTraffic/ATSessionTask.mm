@interface ATSessionTask
- (ATSession)session;
- (ATSessionTask)initWithCoder:(id)a3;
- (ATSessionTask)initWithDataClass:(id)a3;
- (double)duration;
- (id)baseClassRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_start;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATSessionTask

- (ATSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)_start
{
  if (!self->_running)
  {
    self->_running = 1;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(ATSessionTask *)self setStartTime:?];

    [(ATSessionTask *)self start];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(ATSessionTask *)self sessionTaskIdentifier];
  [v4 setSessionTaskIdentifier:v5];

  v6 = [(ATSessionTask *)self localizedDescription];
  [v4 setLocalizedDescription:v6];

  v7 = [(ATSessionTask *)self sessionGroupingKey];
  [v4 setSessionGroupingKey:v7];

  v8 = [(ATSessionTask *)self dataClass];
  [v4 setDataClass:v8];

  [(ATSessionTask *)self progress];
  [v4 setProgress:?];
  [v4 setTotalItemCount:{-[ATSessionTask totalItemCount](self, "totalItemCount")}];
  [v4 setCompletedItemCount:{-[ATSessionTask completedItemCount](self, "completedItemCount")}];
  v9 = [(ATSessionTask *)self currentItemDescriptions];
  [v4 setCurrentItemDescriptions:v9];

  v10 = [(ATSessionTask *)self currentItems];
  [v4 setCurrentItems:v10];

  v11 = [(ATSessionTask *)self recentlyFailedAssets];
  [v4 setRecentlyFailedAssets:v11];

  v12 = [(ATSessionTask *)self properties];
  [v4 setProperties:v12];

  [v4 setRunning:{-[ATSessionTask isRunning](self, "isRunning")}];
  [v4 setFinished:{-[ATSessionTask isFinished](self, "isFinished")}];
  [v4 setCancelled:{-[ATSessionTask isCancelled](self, "isCancelled")}];
  [v4 setSuspended:{-[ATSessionTask isSuspended](self, "isSuspended")}];
  v13 = [(ATSessionTask *)self error];
  [v4 setError:v13];

  v14 = [(ATSessionTask *)self totalBytesTransferred];
  [v4 setTotalBytesTransferred:v14];

  v15 = [(ATSessionTask *)self totalBytesToTransfer];
  [v4 setTotalBytesToTransfer:v15];

  [(ATSessionTask *)self startTime];
  [v4 setStartTime:?];
  [(ATSessionTask *)self finishTime];
  [v4 setFinishTime:?];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(ATSessionTask *)self sessionTaskIdentifier];
  [v16 encodeObject:v4 forKey:@"sessionTaskIdentifier"];

  v5 = [(ATSessionTask *)self localizedDescription];
  [v16 encodeObject:v5 forKey:@"localizedDescription"];

  v6 = [(ATSessionTask *)self sessionGroupingKey];
  [v16 encodeObject:v6 forKey:@"sessionGroupingKey"];

  v7 = [(ATSessionTask *)self dataClass];
  [v16 encodeObject:v7 forKey:@"dataClass"];

  [(ATSessionTask *)self progress];
  [v16 encodeDouble:@"progress" forKey:?];
  [v16 encodeInteger:-[ATSessionTask totalItemCount](self forKey:{"totalItemCount"), @"totalItemCount"}];
  [v16 encodeInteger:-[ATSessionTask completedItemCount](self forKey:{"completedItemCount"), @"completedItemCount"}];
  v8 = [(ATSessionTask *)self currentItemDescriptions];
  [v16 encodeObject:v8 forKey:@"currentItemDescriptions"];

  v9 = [(ATSessionTask *)self currentItems];
  [v16 encodeObject:v9 forKey:@"currentItems"];

  v10 = [(ATSessionTask *)self recentlyFailedAssets];
  [v16 encodeObject:v10 forKey:@"recentlyFailedAssets"];

  v11 = [(ATSessionTask *)self properties];
  [v16 encodeObject:v11 forKey:@"properties"];

  [v16 encodeBool:-[ATSessionTask isRunning](self forKey:{"isRunning"), @"running"}];
  [v16 encodeBool:-[ATSessionTask isFinished](self forKey:{"isFinished"), @"finished"}];
  [v16 encodeBool:-[ATSessionTask isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
  [v16 encodeBool:-[ATSessionTask isSuspended](self forKey:{"isSuspended"), @"suspended"}];
  v12 = [(ATSessionTask *)self error];
  v13 = [v12 msv_errorByRemovingUnsafeUserInfo];
  [v16 encodeObject:v13 forKey:@"error"];

  v14 = [(ATSessionTask *)self totalBytesToTransfer];
  [v16 encodeInt64:objc_msgSend(v14 forKey:{"longLongValue"), @"totalBytesToTransfer"}];

  v15 = [(ATSessionTask *)self totalBytesTransferred];
  [v16 encodeInt64:objc_msgSend(v15 forKey:{"longLongValue"), @"totalBytesTransferred"}];

  [(ATSessionTask *)self startTime];
  [v16 encodeDouble:@"startTime" forKey:?];
  [(ATSessionTask *)self finishTime];
  [v16 encodeDouble:@"finishTime" forKey:?];
}

- (ATSessionTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATSessionTask *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionTaskIdentifier"];
    sessionTaskIdentifier = v5->_sessionTaskIdentifier;
    v5->_sessionTaskIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionGroupingKey"];
    sessionGroupingKey = v5->_sessionGroupingKey;
    v5->_sessionGroupingKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v12;

    [v4 decodeDoubleForKey:@"progress"];
    v5->_progress = v14;
    v5->_totalItemCount = [v4 decodeIntegerForKey:@"totalItemCount"];
    v5->_completedItemCount = [v4 decodeIntegerForKey:@"completedItemCount"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"currentItemDescriptions"];
    currentItemDescriptions = v5->_currentItemDescriptions;
    v5->_currentItemDescriptions = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"currentItems"];
    currentItems = v5->_currentItems;
    v5->_currentItems = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v28 setWithObjects:{v29, v30, v31, v32, v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"recentlyFailedAssets"];
    recentlyFailedAssets = v5->_recentlyFailedAssets;
    v5->_recentlyFailedAssets = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v37 setWithObjects:{v38, v39, v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v42;

    v5->_running = [v4 decodeBoolForKey:@"running"];
    v5->_finished = [v4 decodeBoolForKey:@"finished"];
    v5->_cancelled = [v4 decodeBoolForKey:@"cancelled"];
    v5->_suspended = [v4 decodeBoolForKey:@"suspended"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesToTransfer"];
    totalBytesToTransfer = v5->_totalBytesToTransfer;
    v5->_totalBytesToTransfer = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesTransferred"];
    totalBytesTransferred = v5->_totalBytesTransferred;
    v5->_totalBytesTransferred = v48;

    [v4 decodeDoubleForKey:@"startTime"];
    v5->_startTime = v50;
    [v4 decodeDoubleForKey:@"finishTime"];
    v5->_finishTime = v51;
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v3 = [(ATSessionTask *)self sessionTaskIdentifier];
  v4 = [(ATSessionTask *)self sessionGroupingKey];
  v5 = [(ATSessionTask *)self isRunning];
  v6 = [(ATSessionTask *)self isFinished];
  v7 = [(ATSessionTask *)self isCancelled];
  v8 = [(ATSessionTask *)self isSuspended];
  v9 = [(ATSessionTask *)self dataClass];
  v10 = [(ATSessionTask *)self completedItemCount];
  v11 = [(ATSessionTask *)self totalItemCount];
  [(ATSessionTask *)self progress];
  v13 = [v16 stringWithFormat:@"<%@ %@ %@: running=%d finished=%d cancelled=%d suspended=%d dataClass=%@ %d/%d %d%%>", v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, (v12 * 100.0)];

  return v13;
}

- (id)baseClassRepresentation
{
  v3 = objc_alloc_init(ATSessionTask);
  v4 = [(ATSessionTask *)self sessionTaskIdentifier];
  [(ATSessionTask *)v3 setSessionTaskIdentifier:v4];

  v5 = [(ATSessionTask *)self sessionGroupingKey];
  [(ATSessionTask *)v3 setSessionGroupingKey:v5];

  v6 = [(ATSessionTask *)self localizedDescription];
  [(ATSessionTask *)v3 setLocalizedDescription:v6];

  v7 = [(ATSessionTask *)self dataClass];
  [(ATSessionTask *)v3 setDataClass:v7];

  [(ATSessionTask *)self progress];
  [(ATSessionTask *)v3 setProgress:?];
  [(ATSessionTask *)v3 setTotalItemCount:[(ATSessionTask *)self totalItemCount]];
  [(ATSessionTask *)v3 setCompletedItemCount:[(ATSessionTask *)self completedItemCount]];
  v8 = [(ATSessionTask *)self currentItemDescriptions];
  [(ATSessionTask *)v3 setCurrentItemDescriptions:v8];

  v9 = [(ATSessionTask *)self currentItems];
  [(ATSessionTask *)v3 setCurrentItems:v9];

  v10 = [(ATSessionTask *)self recentlyFailedAssets];
  [(ATSessionTask *)v3 setRecentlyFailedAssets:v10];

  v11 = [(ATSessionTask *)self properties];
  [(ATSessionTask *)v3 setProperties:v11];

  [(ATSessionTask *)v3 setRunning:[(ATSessionTask *)self isRunning]];
  [(ATSessionTask *)v3 setFinished:[(ATSessionTask *)self isFinished]];
  [(ATSessionTask *)v3 setCancelled:[(ATSessionTask *)self isCancelled]];
  [(ATSessionTask *)v3 setSuspended:[(ATSessionTask *)self isSuspended]];
  v12 = [(ATSessionTask *)self error];
  [(ATSessionTask *)v3 setError:v12];

  v13 = [(ATSessionTask *)self totalBytesTransferred];
  [(ATSessionTask *)v3 setTotalBytesTransferred:v13];

  v14 = [(ATSessionTask *)self totalBytesToTransfer];
  [(ATSessionTask *)v3 setTotalBytesToTransfer:v14];

  [(ATSessionTask *)self startTime];
  [(ATSessionTask *)v3 setStartTime:?];
  [(ATSessionTask *)self finishTime];
  [(ATSessionTask *)v3 setFinishTime:?];

  return v3;
}

- (double)duration
{
  if ([(ATSessionTask *)self isFinished])
  {
    [(ATSessionTask *)self finishTime];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v4 = Current;
  [(ATSessionTask *)self startTime];
  return v4 - v5;
}

- (void)cancel
{
  [(ATSessionTask *)self setCancelled:1];

  [(ATSessionTask *)self setFinished:1];
}

- (ATSessionTask)initWithDataClass:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ATSessionTask;
  v6 = [(ATSessionTask *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataClass, a3);
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    sessionTaskIdentifier = v7->_sessionTaskIdentifier;
    v7->_sessionTaskIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    sessionGroupingKey = v7->_sessionGroupingKey;
    v7->_sessionGroupingKey = v12;
  }

  return v7;
}

@end