@interface PHChangeHandlingDebugEvent
- (id)eventDescription;
- (void)end;
- (void)reset;
- (void)startProcessPendingChanges;
- (void)startPublishCloudStatus;
@end

@implementation PHChangeHandlingDebugEvent

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PHChangeHandlingDebugEvent;
  [(PFAbstractStateCaptureEvent *)&v3 reset];
  [(PHChangeHandlingDebugEvent *)self setKind:0];
  [(PHChangeHandlingDebugEvent *)self setIsAuthorizedForChanges:0];
  [(PHChangeHandlingDebugEvent *)self setThrottleChangesTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setWaitTimeInterval:0.0];
  [(PHChangeHandlingDebugEvent *)self setPublishTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setPublishThreadID:0];
  [(PHChangeHandlingDebugEvent *)self setInternalObserversCount:0];
  [(PHChangeHandlingDebugEvent *)self setExternalObserversCount:0];
  [(PHChangeHandlingDebugEvent *)self setDistributeInternalTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setDistributeExternalTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setInsertedCount:0];
  [(PHChangeHandlingDebugEvent *)self setUpdatedCount:0];
  [(PHChangeHandlingDebugEvent *)self setDeletedCount:0];
  [(PHChangeHandlingDebugEvent *)self setUnknownMergeEvent:0];
  [(PHChangeHandlingDebugEvent *)self setFetchResultCount:0];
  [(PHChangeHandlingDebugEvent *)self setPreloadTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setFetchResultsToRefetchCount:0];
  [(PHChangeHandlingDebugEvent *)self setFetchResultsToClearCount:0];
  [(PHChangeHandlingDebugEvent *)self setLastTransactionNumber:0];
  [(PHChangeHandlingDebugEvent *)self setTransactionCount:0];
  [(PHChangeHandlingDebugEvent *)self setChangeCount:0];
  [(PHChangeHandlingDebugEvent *)self setCloudSyncEnabled:0];
  [(PHChangeHandlingDebugEvent *)self setLastSyncTimestamp:0.0];
  [(PHChangeHandlingDebugEvent *)self setFirstSyncTimestamp:0.0];
}

- (void)startProcessPendingChanges
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PHChangeHandlingDebugEvent *)self setKind:1];
}

- (void)end
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PHChangeHandlingDebugEvent;
  [(PFAbstractStateCaptureEvent *)&v5 end];
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(PHChangeHandlingDebugEvent *)self eventDescription];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Event ended: %@", buf, 0xCu);
  }
}

- (id)eventDescription
{
  if (![(PHChangeHandlingDebugEvent *)self kind])
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unused: %p>", self];
    goto LABEL_17;
  }

  v3 = objc_alloc(MEMORY[0x1E69BDD70]);
  [(PFAbstractStateCaptureEvent *)self startTimestamp];
  v4 = [v3 initWithStartTimestamp:?];
  v5 = [v4 appendString:@" thr: "];
  v6 = [v5 appendThreadID:{-[PFAbstractStateCaptureEvent threadID](self, "threadID")}];

  v7 = [v4 appendString:@" qos: "];
  v8 = [v7 appendQoSClass:{-[PFAbstractStateCaptureEvent qosClass](self, "qosClass")}];

  v9 = [v4 appendString:@" auth: "];
  v10 = [v9 appendBool:{-[PHChangeHandlingDebugEvent isAuthorizedForChanges](self, "isAuthorizedForChanges")}];

  [(PHChangeHandlingDebugEvent *)self throttleChangesTimestamp];
  if (v11 > 0.0)
  {
    v12 = [v4 appendString:@" throttle: "];
    [(PHChangeHandlingDebugEvent *)self throttleChangesTimestamp];
    v13 = [v12 appendRelativeTimestamp:?];
  }

  v14 = [v4 appendString:@" wait: "];
  [(PHChangeHandlingDebugEvent *)self waitTimeInterval];
  v15 = [v14 appendDuration:?];

  [(PHChangeHandlingDebugEvent *)self publishTimestamp];
  if (v16 > 0.0)
  {
    v17 = [v4 appendString:@" pub: "];
    [(PHChangeHandlingDebugEvent *)self publishTimestamp];
    v18 = [v17 appendRelativeTimestamp:?];

    v19 = [v4 appendString:@" "];
    v20 = [v19 appendThreadID:{-[PHChangeHandlingDebugEvent publishThreadID](self, "publishThreadID")}];
  }

  v21 = [v4 appendString:@" int: "];
  v22 = [v21 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent internalObserversCount](self, "internalObserversCount")}];

  v23 = [v4 appendString:@" ext: "];
  v24 = [v23 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent externalObserversCount](self, "externalObserversCount")}];

  if ([(PHChangeHandlingDebugEvent *)self kind]== 1)
  {
    v25 = [v4 appendString:@" ins: "];
    v26 = [v25 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent insertedCount](self, "insertedCount")}];

    v27 = [v4 appendString:@" upd: "];
    v28 = [v27 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent updatedCount](self, "updatedCount")}];

    v29 = [v4 appendString:@" del: "];
    v30 = [v29 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent deletedCount](self, "deletedCount")}];

    v31 = [v4 appendString:@" unk: "];
    v32 = [v31 appendBool:{-[PHChangeHandlingDebugEvent unknownMergeEvent](self, "unknownMergeEvent")}];

    v33 = [v4 appendString:@" prl: "];
    [(PHChangeHandlingDebugEvent *)self preloadTimestamp];
    v34 = [v33 appendRelativeTimestamp:?];

    v35 = [v4 appendString:@" tx#: "];
    v36 = [v35 appendUInt64:{-[PHChangeHandlingDebugEvent lastTransactionNumber](self, "lastTransactionNumber")}];

    v37 = [v4 appendString:@" txc: "];
    v38 = [v37 appendInteger:{-[PHChangeHandlingDebugEvent transactionCount](self, "transactionCount")}];

    v39 = [v4 appendString:@" chc: "];
    v40 = [v39 appendInteger:{-[PHChangeHandlingDebugEvent changeCount](self, "changeCount")}];

    v41 = [v4 appendString:@" frt: "];
    v42 = [v41 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent fetchResultCount](self, "fetchResultCount")}];

    v43 = [v4 appendString:@" frr: "];
    v44 = [v43 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent fetchResultsToRefetchCount](self, "fetchResultsToRefetchCount")}];

    v45 = [v4 appendString:@" frc: "];
    v46 = [v45 appendUnsignedInteger:{-[PHChangeHandlingDebugEvent fetchResultsToClearCount](self, "fetchResultsToClearCount")}];
LABEL_11:

    goto LABEL_12;
  }

  if ([(PHChangeHandlingDebugEvent *)self kind]== 2)
  {
    v48 = [v4 appendString:@" cld: "];
    v49 = [v48 appendBool:{-[PHChangeHandlingDebugEvent cloudSyncEnabled](self, "cloudSyncEnabled")}];

    v50 = [v4 appendString:@" lsd: "];
    [(PHChangeHandlingDebugEvent *)self lastSyncTimestamp];
    v51 = [v50 appendAbsoluteTimestamp:?];

    v45 = [v4 appendString:@" fsd: "];
    [(PHChangeHandlingDebugEvent *)self firstSyncTimestamp];
    v52 = [v45 appendAbsoluteTimestamp:?];
    goto LABEL_11;
  }

LABEL_12:
  [(PHChangeHandlingDebugEvent *)self distributeInternalTimestamp];
  if (v53 > 0.0)
  {
    v54 = [v4 appendString:@" int: "];
    [(PHChangeHandlingDebugEvent *)self distributeInternalTimestamp];
    v55 = [v54 appendRelativeTimestamp:?];
  }

  [(PHChangeHandlingDebugEvent *)self distributeExternalTimestamp];
  if (v56 > 0.0)
  {
    v57 = [v4 appendString:@" ext: "];
    [(PHChangeHandlingDebugEvent *)self distributeExternalTimestamp];
    v58 = [v57 appendRelativeTimestamp:?];
  }

  [(PFAbstractStateCaptureEvent *)self endTimestamp];
  v59 = [v4 appendEndTimestamp:?];
  v47 = [v4 description];

LABEL_17:

  return v47;
}

- (void)startPublishCloudStatus
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PHChangeHandlingDebugEvent *)self setKind:2];
}

@end