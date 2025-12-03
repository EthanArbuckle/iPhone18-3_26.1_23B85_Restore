@interface OSAAppUsageAccumulator
- (NSDictionary)versions;
- (OSAAppUsageAccumulator)initWithStartDate:(id)date endDate:(id)endDate targetAppVersions:(id)versions firstPartyBundleIDs:(id)ds;
- (void)addEvent:(id)event;
@end

@implementation OSAAppUsageAccumulator

- (OSAAppUsageAccumulator)initWithStartDate:(id)date endDate:(id)endDate targetAppVersions:(id)versions firstPartyBundleIDs:(id)ds
{
  dateCopy = date;
  endDateCopy = endDate;
  versionsCopy = versions;
  dsCopy = ds;
  v21.receiver = self;
  v21.super_class = OSAAppUsageAccumulator;
  v15 = [(OSAAccumulator *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    objc_storeStrong(&v16->_targetAppVersions, versions);
    objc_storeStrong(&v16->_firstPartyBundleIDs, ds);
    v17 = +[NSMutableSet set];
    denyList = v16->_denyList;
    v16->_denyList = v17;

    if (versionsCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = +[NSMutableDictionary dictionary];
    }

    objc_storeStrong(&v16->_versions, v19);
    if (!versionsCopy)
    {
    }
  }

  return v16;
}

- (NSDictionary)versions
{
  if (self->_versions)
  {
    v3 = [NSDictionary dictionaryWithDictionary:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  metadata = [eventCopy metadata];
  v6 = +[_DKApplicationMetadataKey shortVersionString];
  v7 = [metadata objectForKeyedSubscript:v6];
  metadata2 = [eventCopy metadata];
  v9 = +[_DKApplicationMetadataKey exactBundleVersion];
  v10 = [metadata2 objectForKeyedSubscript:v9];
  v11 = sub_10000A0C4(v7, v10);

  targetKey = [(OSAAccumulator *)self targetKey];
  if (targetKey)
  {
    targetKey2 = [(OSAAccumulator *)self targetKey];
    stringValue = [eventCopy stringValue];
    v15 = [targetKey2 isEqualToString:stringValue];

    if (!v15)
    {
      goto LABEL_40;
    }
  }

  denyList = self->_denyList;
  stringValue2 = [eventCopy stringValue];
  LOBYTE(denyList) = [(NSMutableSet *)denyList containsObject:stringValue2];

  if (denyList)
  {
    goto LABEL_40;
  }

  if (!v11)
  {
    v23 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      stringValue3 = [eventCopy stringValue];
      *buf = 138543362;
      *&buf[4] = stringValue3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Omitting %{public}@ because version is missing", buf, 0xCu);
    }

    v25 = self->_denyList;
    stringValue4 = [eventCopy stringValue];
    [(NSMutableSet *)v25 addObject:stringValue4];
    goto LABEL_39;
  }

  targetAppVersions = self->_targetAppVersions;
  if (!targetAppVersions)
  {
    versions = self->_versions;
    stringValue5 = [eventCopy stringValue];
    v28 = [(NSMutableDictionary *)versions objectForKeyedSubscript:stringValue5];

    if (([v11 isEqualToString:v28] & 1) == 0)
    {
      if (v28)
      {
        v29 = OSAStabilityMonitorLogDomain();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          stringValue6 = [eventCopy stringValue];
          *buf = 138543874;
          *&buf[4] = stringValue6;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          *&buf[22] = 2114;
          v70 = v11;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Migrating version for %{public}@: %{public}@ to %{public}@", buf, 0x20u);
        }

        totals = [(OSAAccumulator *)self totals];
        stringValue7 = [eventCopy stringValue];
        [totals removeObjectForKey:stringValue7];
      }

      v33 = self->_versions;
      stringValue8 = [eventCopy stringValue];
      [(NSMutableDictionary *)v33 setObject:v11 forKeyedSubscript:stringValue8];
    }

    goto LABEL_21;
  }

  stringValue9 = [eventCopy stringValue];
  stringValue4 = [(NSDictionary *)targetAppVersions objectForKeyedSubscript:stringValue9];

  if (!stringValue4)
  {
LABEL_36:
    v55 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      stringValue10 = [eventCopy stringValue];
      *buf = 138543874;
      *&buf[4] = stringValue10;
      *&buf[12] = 2114;
      *&buf[14] = stringValue4;
      *&buf[22] = 2114;
      v70 = v11;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Omitting %{public}@ because its version changed from the baseline (%{public}@) to %{public}@", buf, 0x20u);
    }

    v57 = self->_denyList;
    stringValue11 = [eventCopy stringValue];
    [(NSMutableSet *)v57 addObject:stringValue11];

LABEL_39:
LABEL_40:
    totals2 = [(OSAAccumulator *)self totals];
    stringValue12 = [eventCopy stringValue];
    [totals2 removeObjectForKey:stringValue12];

    v61 = self->_versions;
    p_super = [eventCopy stringValue];
    [(NSMutableDictionary *)v61 removeObjectForKey:p_super];
    goto LABEL_41;
  }

  firstPartyBundleIDs = self->_firstPartyBundleIDs;
  stringValue13 = [eventCopy stringValue];
  if (![(NSSet *)firstPartyBundleIDs containsObject:stringValue13])
  {
    v35 = [v11 isEqualToString:stringValue4];

    if (v35)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_20:
LABEL_21:
  startDate = [eventCopy startDate];
  if (!startDate || ([eventCopy endDate], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, startDate, v38))
  {
    p_super = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      stringValue14 = [eventCopy stringValue];
      *buf = 138543362;
      *&buf[4] = stringValue14;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Skipping event for %{public}@ due to missing start or end date", buf, 0xCu);
    }
  }

  else
  {
    p_super = [eventCopy startDate];
    startDate2 = [eventCopy startDate];
    [startDate2 timeIntervalSinceDate:self->_startDate];
    v42 = v41 < 0.0;

    if (v42)
    {
      v43 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        sub_1000152E8(eventCopy, &self->_startDate);
      }

      v44 = self->_startDate;
      p_super = &v44->super;
    }

    endDate = [eventCopy endDate];
    endDate2 = [eventCopy endDate];
    [endDate2 timeIntervalSinceDate:self->_endDate];
    v48 = v47 > 0.0;

    if (v48)
    {
      v49 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_100015398(eventCopy, &self->_endDate);
      }

      v50 = self->_endDate;
      endDate = v50;
    }

    [endDate timeIntervalSinceDate:p_super];
    if (v51 >= 0.0)
    {
      v52 = objc_alloc_init(NSDateComponents);
      [v52 setHour:0];
      [v52 setMinute:0];
      [v52 setSecond:0];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v70 = sub_100001C00;
      v71 = sub_100001C20;
      v62 = p_super;
      v72 = v62;
      calendar = [(OSAAccumulator *)self calendar];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10000A124;
      v64[3] = &unk_100024FD8;
      v65 = endDate;
      selfCopy = self;
      v68 = buf;
      v67 = eventCopy;
      [calendar enumerateDatesStartingAfterDate:v62 matchingComponents:v52 options:1024 usingBlock:v64];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v52 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        stringValue15 = [eventCopy stringValue];
        *buf = 138543874;
        *&buf[4] = stringValue15;
        *&buf[12] = 2114;
        *&buf[14] = p_super;
        *&buf[22] = 2114;
        v70 = endDate;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Skipping event for %{public}@ with start date %{public}@ after end date %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_41:
}

@end