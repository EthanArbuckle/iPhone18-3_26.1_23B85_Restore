@interface ATSessionTask
- (ATSession)session;
- (ATSessionTask)initWithCoder:(id)coder;
- (ATSessionTask)initWithDataClass:(id)class;
- (double)duration;
- (id)baseClassRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_start;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  sessionTaskIdentifier = [(ATSessionTask *)self sessionTaskIdentifier];
  [v4 setSessionTaskIdentifier:sessionTaskIdentifier];

  localizedDescription = [(ATSessionTask *)self localizedDescription];
  [v4 setLocalizedDescription:localizedDescription];

  sessionGroupingKey = [(ATSessionTask *)self sessionGroupingKey];
  [v4 setSessionGroupingKey:sessionGroupingKey];

  dataClass = [(ATSessionTask *)self dataClass];
  [v4 setDataClass:dataClass];

  [(ATSessionTask *)self progress];
  [v4 setProgress:?];
  [v4 setTotalItemCount:{-[ATSessionTask totalItemCount](self, "totalItemCount")}];
  [v4 setCompletedItemCount:{-[ATSessionTask completedItemCount](self, "completedItemCount")}];
  currentItemDescriptions = [(ATSessionTask *)self currentItemDescriptions];
  [v4 setCurrentItemDescriptions:currentItemDescriptions];

  currentItems = [(ATSessionTask *)self currentItems];
  [v4 setCurrentItems:currentItems];

  recentlyFailedAssets = [(ATSessionTask *)self recentlyFailedAssets];
  [v4 setRecentlyFailedAssets:recentlyFailedAssets];

  properties = [(ATSessionTask *)self properties];
  [v4 setProperties:properties];

  [v4 setRunning:{-[ATSessionTask isRunning](self, "isRunning")}];
  [v4 setFinished:{-[ATSessionTask isFinished](self, "isFinished")}];
  [v4 setCancelled:{-[ATSessionTask isCancelled](self, "isCancelled")}];
  [v4 setSuspended:{-[ATSessionTask isSuspended](self, "isSuspended")}];
  error = [(ATSessionTask *)self error];
  [v4 setError:error];

  totalBytesTransferred = [(ATSessionTask *)self totalBytesTransferred];
  [v4 setTotalBytesTransferred:totalBytesTransferred];

  totalBytesToTransfer = [(ATSessionTask *)self totalBytesToTransfer];
  [v4 setTotalBytesToTransfer:totalBytesToTransfer];

  [(ATSessionTask *)self startTime];
  [v4 setStartTime:?];
  [(ATSessionTask *)self finishTime];
  [v4 setFinishTime:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionTaskIdentifier = [(ATSessionTask *)self sessionTaskIdentifier];
  [coderCopy encodeObject:sessionTaskIdentifier forKey:@"sessionTaskIdentifier"];

  localizedDescription = [(ATSessionTask *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  sessionGroupingKey = [(ATSessionTask *)self sessionGroupingKey];
  [coderCopy encodeObject:sessionGroupingKey forKey:@"sessionGroupingKey"];

  dataClass = [(ATSessionTask *)self dataClass];
  [coderCopy encodeObject:dataClass forKey:@"dataClass"];

  [(ATSessionTask *)self progress];
  [coderCopy encodeDouble:@"progress" forKey:?];
  [coderCopy encodeInteger:-[ATSessionTask totalItemCount](self forKey:{"totalItemCount"), @"totalItemCount"}];
  [coderCopy encodeInteger:-[ATSessionTask completedItemCount](self forKey:{"completedItemCount"), @"completedItemCount"}];
  currentItemDescriptions = [(ATSessionTask *)self currentItemDescriptions];
  [coderCopy encodeObject:currentItemDescriptions forKey:@"currentItemDescriptions"];

  currentItems = [(ATSessionTask *)self currentItems];
  [coderCopy encodeObject:currentItems forKey:@"currentItems"];

  recentlyFailedAssets = [(ATSessionTask *)self recentlyFailedAssets];
  [coderCopy encodeObject:recentlyFailedAssets forKey:@"recentlyFailedAssets"];

  properties = [(ATSessionTask *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  [coderCopy encodeBool:-[ATSessionTask isRunning](self forKey:{"isRunning"), @"running"}];
  [coderCopy encodeBool:-[ATSessionTask isFinished](self forKey:{"isFinished"), @"finished"}];
  [coderCopy encodeBool:-[ATSessionTask isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
  [coderCopy encodeBool:-[ATSessionTask isSuspended](self forKey:{"isSuspended"), @"suspended"}];
  error = [(ATSessionTask *)self error];
  msv_errorByRemovingUnsafeUserInfo = [error msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"error"];

  totalBytesToTransfer = [(ATSessionTask *)self totalBytesToTransfer];
  [coderCopy encodeInt64:objc_msgSend(totalBytesToTransfer forKey:{"longLongValue"), @"totalBytesToTransfer"}];

  totalBytesTransferred = [(ATSessionTask *)self totalBytesTransferred];
  [coderCopy encodeInt64:objc_msgSend(totalBytesTransferred forKey:{"longLongValue"), @"totalBytesTransferred"}];

  [(ATSessionTask *)self startTime];
  [coderCopy encodeDouble:@"startTime" forKey:?];
  [(ATSessionTask *)self finishTime];
  [coderCopy encodeDouble:@"finishTime" forKey:?];
}

- (ATSessionTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ATSessionTask *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionTaskIdentifier"];
    sessionTaskIdentifier = v5->_sessionTaskIdentifier;
    v5->_sessionTaskIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionGroupingKey"];
    sessionGroupingKey = v5->_sessionGroupingKey;
    v5->_sessionGroupingKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v12;

    [coderCopy decodeDoubleForKey:@"progress"];
    v5->_progress = v14;
    v5->_totalItemCount = [coderCopy decodeIntegerForKey:@"totalItemCount"];
    v5->_completedItemCount = [coderCopy decodeIntegerForKey:@"completedItemCount"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"currentItemDescriptions"];
    currentItemDescriptions = v5->_currentItemDescriptions;
    v5->_currentItemDescriptions = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"currentItems"];
    currentItems = v5->_currentItems;
    v5->_currentItems = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v28 setWithObjects:{v29, v30, v31, v32, v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"recentlyFailedAssets"];
    recentlyFailedAssets = v5->_recentlyFailedAssets;
    v5->_recentlyFailedAssets = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v37 setWithObjects:{v38, v39, v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v42;

    v5->_running = [coderCopy decodeBoolForKey:@"running"];
    v5->_finished = [coderCopy decodeBoolForKey:@"finished"];
    v5->_cancelled = [coderCopy decodeBoolForKey:@"cancelled"];
    v5->_suspended = [coderCopy decodeBoolForKey:@"suspended"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesToTransfer"];
    totalBytesToTransfer = v5->_totalBytesToTransfer;
    v5->_totalBytesToTransfer = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesTransferred"];
    totalBytesTransferred = v5->_totalBytesTransferred;
    v5->_totalBytesTransferred = v48;

    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v50;
    [coderCopy decodeDoubleForKey:@"finishTime"];
    v5->_finishTime = v51;
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  sessionTaskIdentifier = [(ATSessionTask *)self sessionTaskIdentifier];
  sessionGroupingKey = [(ATSessionTask *)self sessionGroupingKey];
  isRunning = [(ATSessionTask *)self isRunning];
  isFinished = [(ATSessionTask *)self isFinished];
  isCancelled = [(ATSessionTask *)self isCancelled];
  isSuspended = [(ATSessionTask *)self isSuspended];
  dataClass = [(ATSessionTask *)self dataClass];
  completedItemCount = [(ATSessionTask *)self completedItemCount];
  totalItemCount = [(ATSessionTask *)self totalItemCount];
  [(ATSessionTask *)self progress];
  v13 = [v16 stringWithFormat:@"<%@ %@ %@: running=%d finished=%d cancelled=%d suspended=%d dataClass=%@ %d/%d %d%%>", v15, sessionTaskIdentifier, sessionGroupingKey, isRunning, isFinished, isCancelled, isSuspended, dataClass, completedItemCount, totalItemCount, (v12 * 100.0)];

  return v13;
}

- (id)baseClassRepresentation
{
  v3 = objc_alloc_init(ATSessionTask);
  sessionTaskIdentifier = [(ATSessionTask *)self sessionTaskIdentifier];
  [(ATSessionTask *)v3 setSessionTaskIdentifier:sessionTaskIdentifier];

  sessionGroupingKey = [(ATSessionTask *)self sessionGroupingKey];
  [(ATSessionTask *)v3 setSessionGroupingKey:sessionGroupingKey];

  localizedDescription = [(ATSessionTask *)self localizedDescription];
  [(ATSessionTask *)v3 setLocalizedDescription:localizedDescription];

  dataClass = [(ATSessionTask *)self dataClass];
  [(ATSessionTask *)v3 setDataClass:dataClass];

  [(ATSessionTask *)self progress];
  [(ATSessionTask *)v3 setProgress:?];
  [(ATSessionTask *)v3 setTotalItemCount:[(ATSessionTask *)self totalItemCount]];
  [(ATSessionTask *)v3 setCompletedItemCount:[(ATSessionTask *)self completedItemCount]];
  currentItemDescriptions = [(ATSessionTask *)self currentItemDescriptions];
  [(ATSessionTask *)v3 setCurrentItemDescriptions:currentItemDescriptions];

  currentItems = [(ATSessionTask *)self currentItems];
  [(ATSessionTask *)v3 setCurrentItems:currentItems];

  recentlyFailedAssets = [(ATSessionTask *)self recentlyFailedAssets];
  [(ATSessionTask *)v3 setRecentlyFailedAssets:recentlyFailedAssets];

  properties = [(ATSessionTask *)self properties];
  [(ATSessionTask *)v3 setProperties:properties];

  [(ATSessionTask *)v3 setRunning:[(ATSessionTask *)self isRunning]];
  [(ATSessionTask *)v3 setFinished:[(ATSessionTask *)self isFinished]];
  [(ATSessionTask *)v3 setCancelled:[(ATSessionTask *)self isCancelled]];
  [(ATSessionTask *)v3 setSuspended:[(ATSessionTask *)self isSuspended]];
  error = [(ATSessionTask *)self error];
  [(ATSessionTask *)v3 setError:error];

  totalBytesTransferred = [(ATSessionTask *)self totalBytesTransferred];
  [(ATSessionTask *)v3 setTotalBytesTransferred:totalBytesTransferred];

  totalBytesToTransfer = [(ATSessionTask *)self totalBytesToTransfer];
  [(ATSessionTask *)v3 setTotalBytesToTransfer:totalBytesToTransfer];

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

- (ATSessionTask)initWithDataClass:(id)class
{
  classCopy = class;
  v15.receiver = self;
  v15.super_class = ATSessionTask;
  v6 = [(ATSessionTask *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataClass, class);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    sessionTaskIdentifier = v7->_sessionTaskIdentifier;
    v7->_sessionTaskIdentifier = uUIDString;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    sessionGroupingKey = v7->_sessionGroupingKey;
    v7->_sessionGroupingKey = v12;
  }

  return v7;
}

@end