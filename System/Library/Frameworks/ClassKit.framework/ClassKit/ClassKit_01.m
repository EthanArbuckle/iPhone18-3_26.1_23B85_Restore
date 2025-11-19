id sub_10001DF68(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[CLSArchivedAsset alloc] _init];
  v6 = [v3 objectId];
  v7 = sub_10001BE18(v6);
  [v5 setObjectID:v7];

  v8 = [v3 parentObjectId];
  v9 = sub_10001BE18(v8);
  [v5 setParentObjectID:v9];

  if ([v3 hasDateCreated])
  {
    v10 = [v3 dateCreated];
    v11 = sub_1001043D0(v10);
    [v5 setDateCreated:v11];
  }

  if ([v3 hasDateLastModified])
  {
    v12 = [v3 dateLastModified];
    v13 = sub_1001043D0(v12);
    [v5 setDateLastModified:v13];
  }

  [v5 setType:{sub_100019EFC(objc_msgSend(v3, "type"))}];
  [v5 setParentEntityType:{sub_10001A000(objc_msgSend(v3, "parentEntityType"))}];
  v14 = [v3 appIdentifier];
  [v5 setAppIdentifier:v14];

  v15 = [v3 ckUuid];
  [v5 setBrItemID:v15];

  v16 = [v3 ckOwnerName];
  [v5 setBrOwnerName:v16];

  v17 = [v3 ckZoneName];
  [v5 setBrZoneName:v17];

  v18 = [v3 ownerId];
  [v5 setOwnerPersonID:v18];

  v19 = [v3 icloudDriveContainerName];
  [v5 setUbiquitousContainerName:v19];

  v20 = [v3 icloudDriveRelativeFilePath];
  [v5 setRelativePathWithinContainer:v20];

  v21 = [v3 ckShareRecordName];
  [v5 setBrShareName:v21];

  v22 = [v5 ubiquitousContainerName];

  if (v22)
  {
    if (![v5 type])
    {
      [v5 setType:1];
    }

    if (![v5 parentEntityType])
    {
      [v5 setParentEntityType:2];
    }

    v23 = sub_1000D8698();
    v24 = sub_1000DA28C(v23, v4);

    v25 = [v24 schoolworkUbiquitousContainerURL];
    if (v25)
    {
      v26 = [v5 relativePathWithinContainer];
      v27 = [v25 URLByAppendingPathComponent:v26 isDirectory:0];

      [v5 setURL:v27];
    }
  }

  if ([v5 type] == 2 && objc_msgSend(v3, "hasWebUrl"))
  {
    v28 = [v3 webUrl];
    if (v28)
    {
      v29 = [NSURL URLWithString:v28];
      [v5 setURL:v29];
    }
  }

  [v5 setSchoolworkSyncStatus:2];
  if ([v3 hasTitle])
  {
    v30 = [v3 title];
    [v5 setTitle:v30];
  }

  if ([v3 hasFileSizeBytes])
  {
    [v5 setFileSizeInBytes:{objc_msgSend(v3, "fileSizeBytes")}];
  }

  if ([v3 hasOriginalFilename])
  {
    v31 = [v3 originalFilename];
    [v5 setOriginalFilename:v31];
  }

  if ([v3 hasFileUttype])
  {
    v32 = [v3 fileUttype];
    v33 = [UTType typeWithIdentifier:v32];
    [v5 setFileUTType:v33];
  }

  if ([v3 hasDisplayOrder])
  {
    [v5 setDisplayOrder:{objc_msgSend(v3, "displayOrder")}];
  }

  if ([v3 hasDurationSeconds])
  {
    [v3 durationSeconds];
    [v5 setDurationInSeconds:?];
  }

  return v5;
}

uint64_t sub_10001E418(int a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [[NSString alloc] initWithFormat:@"Unknown PDDPCompletionStatus_Type: %ld", a1];
    CLSInitLog();
    v3 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to convert from PDDPCompletionStatus_Type reason: %{public}@", buf, 0xCu);
    }

    v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
    objc_exception_throw(v4);
  }

  return dword_1001A83F8[a1 - 1];
}

id sub_10001E528(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 appIdentifier];
  [v2 setAppIdentifier:v3];

  v4 = [v2 appIdentifier];

  if (!v4)
  {
    [v2 setAppIdentifier:@"com.apple.phoenix"];
  }

  v5 = [v1 dateCreated];
  v6 = sub_10010426C(v5);
  [v2 setDateCreated:v6];

  v7 = [v1 dateLastModified];
  v8 = sub_10010426C(v7);
  [v2 setDateLastModified:v8];

  v9 = [v1 type] - 1;
  if (v9 < 3)
  {
    v10 = (v9 + 1);
  }

  else
  {
    v10 = 0;
  }

  [v2 setType:v10];
  v11 = [v1 parentEntityType] - 1;
  if (v11 < 6)
  {
    v12 = (v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  [v2 setParentEntityType:v12];
  v13 = [v1 objectID];
  [v2 setObjectId:v13];

  v14 = [v1 parentObjectID];
  [v2 setParentObjectId:v14];

  v15 = [v1 brItemID];
  [v2 setCkUuid:v15];

  v16 = [v1 brOwnerName];
  [v2 setCkOwnerName:v16];

  v17 = [v1 brZoneName];
  [v2 setCkZoneName:v17];

  v18 = [v1 ownerPersonID];
  [v2 setOwnerId:v18];

  v19 = [v1 fileUTType];
  v20 = [v19 identifier];
  [v2 setFileUttype:v20];

  [v2 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
  v21 = [v1 type];
  if (v21 == 3)
  {
    v29 = [v1 title];
    [v2 setTitle:v29];

    [v2 setFileSizeBytes:{objc_msgSend(v1, "fileSizeInBytes")}];
    v30 = [v1 originalFilename];
    [v2 setOriginalFilename:v30];

    [v1 durationInSeconds];
    [v2 setDurationSeconds:?];
  }

  else
  {
    if (v21 == 2)
    {
      v27 = [v1 URL];
      v28 = [v27 absoluteString];
      [v2 setWebUrl:v28];

      v26 = [v1 title];
      [v2 setTitle:v26];
    }

    else
    {
      if (v21 != 1)
      {
        goto LABEL_16;
      }

      v22 = [v1 brZoneName];
      [v2 setCkShareZoneName:v22];

      v23 = [v1 brOwnerName];
      [v2 setCkShareOwnerName:v23];

      v24 = [v1 brShareName];
      [v2 setCkShareRecordName:v24];

      [v2 setIsOriginal:{objc_msgSend(v1, "isOriginal")}];
      v25 = [v1 ubiquitousContainerName];
      [v2 setIcloudDriveContainerName:v25];

      v26 = [v1 relativePathWithinContainer];
      [v2 setIcloudDriveRelativeFilePath:v26];
    }
  }

LABEL_16:

  return v2;
}

id sub_10001E8EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[CLSAsset alloc] _init];
  v6 = [v3 objectId];
  [v5 setObjectID:v6];

  v7 = [v3 parentObjectId];
  [v5 setParentObjectID:v7];

  if ([v3 hasDateCreated])
  {
    v8 = [v3 dateCreated];
    v9 = sub_1001043D0(v8);
    [v5 setDateCreated:v9];
  }

  if ([v3 hasDateLastModified])
  {
    v10 = [v3 dateLastModified];
    v11 = sub_1001043D0(v10);
    [v5 setDateLastModified:v11];
  }

  [v5 setType:{sub_100019EFC(objc_msgSend(v3, "type"))}];
  [v5 setParentEntityType:{sub_10001A000(objc_msgSend(v3, "parentEntityType"))}];
  v12 = [v3 appIdentifier];
  [v5 setAppIdentifier:v12];

  v13 = [v3 ckUuid];
  [v5 setBrItemID:v13];

  v14 = [v3 ckOwnerName];
  [v5 setBrOwnerName:v14];

  v15 = [v3 ckZoneName];
  [v5 setBrZoneName:v15];

  v16 = [v3 ownerId];
  [v5 setOwnerPersonID:v16];

  v17 = [v3 icloudDriveContainerName];
  [v5 setUbiquitousContainerName:v17];

  v18 = [v3 icloudDriveRelativeFilePath];
  [v5 setRelativePathWithinContainer:v18];

  v19 = [v3 ckShareRecordName];
  [v5 setBrShareName:v19];

  [v5 setOriginal:{objc_msgSend(v3, "isOriginal")}];
  v20 = [v5 ubiquitousContainerName];

  if (v20)
  {
    if (![v5 type])
    {
      [v5 setType:1];
    }

    if (![v5 parentEntityType])
    {
      [v5 setParentEntityType:2];
    }

    v21 = sub_1000D8698();
    v22 = sub_1000DA28C(v21, v4);

    v23 = [v22 schoolworkUbiquitousContainerURL];
    if (v23)
    {
      v24 = [v5 relativePathWithinContainer];
      v25 = [v23 URLByAppendingPathComponent:v24 isDirectory:0];

      [v5 setURL:v25];
    }
  }

  if ([v5 type] == 2 && objc_msgSend(v3, "hasWebUrl"))
  {
    v26 = [v3 webUrl];
    if (v26)
    {
      v27 = [NSURL URLWithString:v26];
      [v5 setURL:v27];
    }
  }

  [v5 setUploaded:1];
  [v5 setStaged:0];
  [v5 setSchoolworkSyncStatus:2];
  if ([v3 hasTitle])
  {
    v28 = [v3 title];
    [v5 setTitle:v28];
  }

  if ([v3 hasFileSizeBytes])
  {
    [v5 setFileSizeInBytes:{objc_msgSend(v3, "fileSizeBytes")}];
  }

  if ([v3 hasFileUttype])
  {
    v29 = [v3 fileUttype];
    v30 = [UTType typeWithIdentifier:v29];
    [v5 setFileUTType:v30];
  }

  if ([v3 hasOriginalFilename])
  {
    v31 = [v3 originalFilename];
    [v5 setOriginalFilename:v31];
  }

  if ([v3 hasDisplayOrder])
  {
    [v5 setDisplayOrder:{objc_msgSend(v3, "displayOrder")}];
  }

  if ([v3 hasDurationSeconds])
  {
    [v3 durationSeconds];
    [v5 setDurationInSeconds:?];
  }

  [v5 setModified:0];

  return v5;
}

id sub_10001EDB4(void *a1)
{
  v1 = a1;
  CLSInitLog();
  v2 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    v34 = v2;
    v35 = [v1 dictionaryRepresentation];
    *buf = 138412290;
    v49 = v35;
    _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "parsing handout report item: %@", buf, 0xCu);
  }

  v3 = objc_opt_new();
  if (([v1 hasType] & 1) == 0)
  {
    CLSInitLog();
    v15 = CLSLogSync;
    if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
LABEL_14:
      v17 = 0;
      goto LABEL_37;
    }

    *buf = 0;
    v16 = "parsing handout report item has no type; bailing out!";
LABEL_41:
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v16, buf, 2u);
    goto LABEL_14;
  }

  v4 = [v1 type];
  if ((v4 - 1) >= 4)
  {
    v36 = [[NSString alloc] initWithFormat:@"Unknown PDDPHandoutReport_Type: %ld", v4];
    CLSInitLog();
    v37 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v49 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Failed to convert from PDDPHandoutReport_Type reason: %{public}@", buf, 0xCu);
    }

    v38 = [NSException exceptionWithName:NSInvalidArgumentException reason:v36 userInfo:0];
    objc_exception_throw(v38);
  }

  [v3 setType:?];
  if (([v1 hasGranularity] & 1) == 0)
  {
    CLSInitLog();
    v15 = CLSLogSync;
    if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "parsing handout report item has no granularity; bailing out!";
    goto LABEL_41;
  }

  v5 = [v1 granularity];
  if ((v5 - 1) >= 4)
  {
    v39 = [[NSString alloc] initWithFormat:@"Unknown PDDPHandoutReport_GranularityType: %ld", v5];
    CLSInitLog();
    v40 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v49 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Failed to convert from PDDPHandoutReport_GranularityType reason: %{public}@", buf, 0xCu);
    }

    v41 = [NSException exceptionWithName:NSInvalidArgumentException reason:v39 userInfo:0];
    objc_exception_throw(v41);
  }

  [v3 setGranularity:?];
  v6 = [v1 studentId];
  [v3 setStudentID:v6];

  v7 = [v1 classId];
  [v3 setClassID:v7];

  v8 = [v1 handoutId];
  [v3 setHandoutID:v8];

  v9 = [v1 startDate];
  v10 = sub_1001043D0(v9);

  v11 = [v1 endDate];
  v12 = sub_1001043D0(v11);

  v13 = v10;
  if (!v10 && v12)
  {
    CLSInitLog();
    v14 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Payload for CLSHandoutReportItem does not contain startDate. Setting it to endDate", buf, 2u);
    }

LABEL_24:
    v12 = v12;
    v13 = v12;
    goto LABEL_25;
  }

  if (v10 && !v12)
  {
    CLSInitLog();
    v18 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Payload for CLSHandoutReportItem does not contain endDate. Setting it to startDate", buf, 2u);
    }

    v12 = v10;
    goto LABEL_24;
  }

  if (!(v10 | v12))
  {
    CLSInitLog();
    v19 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Payload for CLSHandoutReportItem does not contain startDate and endDate. Setting them to reference date", buf, 2u);
    }

    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    goto LABEL_24;
  }

LABEL_25:
  v42 = v13;
  [v3 setStartDate:?];
  [v3 setEndDate:v12];
  v20 = [v1 reportItemId];
  [v3 setReportID:v20];

  [v3 setCompleted:{objc_msgSend(v1, "isCompleted")}];
  v21 = [v1 attachmentId];
  [v3 setAttachmentID:v21];

  if ([v1 hasReport])
  {
    v22 = [v1 report];
    v23 = sub_10001F57C(v22);
    [v3 setPrimaryActivityReport:v23];
  }

  v24 = [v1 additionalReports];
  v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v24, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v27)
  {
    v28 = *v44;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        v31 = objc_autoreleasePoolPush();
        v32 = sub_10001F57C(v30);
        if (v32)
        {
          [v25 addObject:v32];
        }

        objc_autoreleasePoolPop(v31);
      }

      v27 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v27);
  }

  [v3 setAdditionalActivityReports:v25];
  v17 = v3;

LABEL_37:

  return v17;
}

id sub_10001F57C(void *a1)
{
  v1 = a1;
  CLSInitLog();
  v2 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    v33 = v2;
    v34 = [v1 dictionaryRepresentation];
    *buf = 138412290;
    v41 = v34;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "parsing activity report: %@", buf, 0xCu);
  }

  v3 = objc_opt_new();
  v4 = [v1 contextObjectIdPath];
  v5 = [v4 componentsSeparatedByString:@"/"];
  v6 = [v5 lastObject];

  [v3 setContextType:0];
  [v3 setContextTopic:0];
  [v3 setContextTitle:&stru_100206880];
  [v3 setContextAppBundleIdentifier:&stru_100206880];
  [v3 setContextID:v6];
  [v3 setHandoutAttachmentType:{sub_100019AEC(objc_msgSend(v1, "attachmentType"))}];
  v7 = [v1 handoutAuthorizedObjectId];
  [v3 setHandoutAuthorizedObjectID:v7];

  if ([v3 handoutAttachmentType] == 1 || objc_msgSend(v6, "length"))
  {
    v8 = [v1 contextStableObjectIdPath];
    v9 = [v8 componentsSeparatedByString:@"/"];
    v10 = [v9 lastObject];
    [v3 setContextStableObjectID:v10];

    [v3 setHandoutAuthorizedObjectID:v6];
    [v3 setHandoutAttachmentType:1];
  }

  v11 = [v1 time];
  v12 = sub_10001FA14(v11);
  [v3 setTime:v12];

  v13 = [v3 time];

  if (!v13)
  {
    CLSInitLog();
    v30 = CLSLogSync;
    if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
LABEL_21:
      v29 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v31 = "activity report has no time; bailing out!";
LABEL_26:
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, buf, 2u);
    goto LABEL_21;
  }

  v14 = [v1 progress];
  v15 = sub_10001FA14(v14);
  [v3 setProgress:v15];

  v16 = [v3 progress];

  if (!v16)
  {
    CLSInitLog();
    v30 = CLSLogSync;
    if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v31 = "activity report has no progress; bailing out!";
    goto LABEL_26;
  }

  v17 = [v1 primaryItem];
  v18 = sub_10001FBBC(v17);
  [v3 setPrimaryReportItem:v18];

  v19 = [v1 additionalItems];
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        v27 = objc_autoreleasePoolPush();
        v28 = sub_10001FBBC(v26);
        if (v28)
        {
          [v20 addObject:{v28, v35}];
        }

        objc_autoreleasePoolPop(v27);
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }

  [v3 setAdditionalReportItems:v20];
  v29 = v3;

LABEL_22:

  return v29;
}

id sub_10001FA14(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 hasType])
  {
    v3 = [v1 type];
    if (v3 != 1)
    {
      v5 = [[NSString alloc] initWithFormat:@"Unknown PDDPAggregatedValue_Type: %ld", v3];
      CLSInitLog();
      v6 = CLSLogUpload;
      if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to convert from PDDPAggregatedValue_Type reason: %{public}@", buf, 0xCu);
      }

      v7 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
      objc_exception_throw(v7);
    }

    [v2 setAggregateType:0];
    [v2 setTotalSampleCount:{objc_msgSend(v1, "totalSampleCount")}];
    [v1 value];
    [v2 setValue:?];
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10001FBBC(void *a1)
{
  v1 = a1;
  CLSInitLog();
  v2 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    v15 = v2;
    v16 = [v1 dictionaryRepresentation];
    *buf = 138412290;
    v21 = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "parsing activity report item: %@", buf, 0xCu);
  }

  if ([v1 hasScoreValue])
  {
    v3 = objc_opt_new();
    v4 = [v1 scoreValue];
    [v4 value];
    [v3 setValue:?];

    v5 = [v1 scoreValue];
    [v5 maxValue];
    [v3 setMaxValue:?];

LABEL_10:
    v11 = [v1 title];
    [v3 setTitle:v11];

    v12 = [v1 identifier];
    [v3 setIdentifier:v12];

    goto LABEL_11;
  }

  if ([v1 hasQuantityValue])
  {
    v3 = objc_opt_new();
    v6 = [v1 quantityValue];
    [v6 value];
    [v3 setQuantity:?];

    goto LABEL_10;
  }

  if ([v1 hasBinaryValue])
  {
    v3 = objc_opt_new();
    v7 = [v1 binaryValue];
    [v3 setValue:{objc_msgSend(v7, "value")}];

    v8 = [v1 binaryValue];
    v9 = [v8 valueType];
    v10 = (v9 - 1);
    if (v10 >= 4)
    {
      v17 = [[NSString alloc] initWithFormat:@"Unknown PDDPBinaryValue_ValueType: %ld", v9];
      CLSInitLog();
      v18 = CLSLogUpload;
      if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Failed to convert from PDDPBinaryValue_ValueType reason: %{public}@", buf, 0xCu);
      }

      v19 = [NSException exceptionWithName:NSInvalidArgumentException reason:v17 userInfo:0];
      objc_exception_throw(v19);
    }

    [v3 setValueType:v10];
    goto LABEL_10;
  }

  CLSInitLog();
  v14 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "unknown activity report item", buf, 2u);
  }

  v3 = 0;
LABEL_11:

  return v3;
}

PDDPSchedule *sub_10001FF94(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPSchedule);
  v3 = [v1 objectID];
  [(PDDPSchedule *)v2 setObjectId:v3];

  v4 = [v1 parentObjectID];
  [(PDDPSchedule *)v2 setParentObjectId:v4];

  v5 = [v1 dateCreated];
  v6 = sub_10010426C(v5);
  [(PDDPSchedule *)v2 setDateCreated:v6];

  v7 = [v1 dateLastModified];
  v8 = sub_10010426C(v7);
  [(PDDPSchedule *)v2 setDateLastModified:v8];

  v9 = [v1 scheduleDate];
  v10 = sub_10010426C(v9);
  [(PDDPSchedule *)v2 setScheduleDate:v10];

  -[PDDPSchedule setScheduleAction:](v2, "setScheduleAction:", [v1 scheduleAction] == 1);
  v11 = [v1 scheduledEntityType];

  [(PDDPSchedule *)v2 setScheduledEntityType:v11 == 1];

  return v2;
}

id sub_1000200F0(void *a1)
{
  v1 = a1;
  v2 = [CLSSchedule alloc];
  v3 = [[CLSObject alloc] _init];
  v4 = [v1 scheduleDate];
  v5 = sub_1001043D0(v4);
  v6 = [v2 initForObject:v3 scheduleDate:v5];

  v7 = [v1 scheduledEntityType];
  v8 = v7;
  if (v7 != 1)
  {
    if (v7)
    {
      v18 = [[NSString alloc] initWithFormat:@"Unknown PDDPSchedule_ScheduleEntityType: %ld", v7];
      CLSInitLog();
      v19 = CLSLogHandout;
      if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 138543362;
      v23 = v18;
      v20 = "Failed to convert from PDDPSchedule_ScheduleEntityType reason: %{public}@";
      goto LABEL_14;
    }

    v8 = 0;
  }

  [v6 setScheduledEntityType:v8];
  v9 = [v1 scheduleAction];
  v10 = v9;
  if (v9 == 1)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    v18 = [[NSString alloc] initWithFormat:@"Unknown PDDPSchedule_ScheduleAction: %ld", v9];
    CLSInitLog();
    v19 = CLSLogHandout;
    if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v23 = v18;
    v20 = "Failed to convert from PDDPSchedule_ScheduleAction reason: %{public}@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
LABEL_15:
    v21 = [NSException exceptionWithName:NSInvalidArgumentException reason:v18 userInfo:0];
    objc_exception_throw(v21);
  }

  v10 = 0;
LABEL_7:
  [v6 setScheduleAction:v10];
  v11 = [v1 objectId];
  [v6 setObjectID:v11];

  v12 = [v1 parentObjectId];
  [v6 setParentObjectID:v12];

  v13 = [v1 dateCreated];
  v14 = sub_1001043D0(v13);
  [v6 setDateCreated:v14];

  v15 = [v1 dateLastModified];

  v16 = sub_1001043D0(v15);
  [v6 setDateLastModified:v16];

  return v6;
}

id *sub_1000203D4(void *a1)
{
  v1 = a1;
  v2 = [PDServerScheduledEvent alloc];
  v3 = [v1 parentObjectId];
  v4 = [v1 eventDate];
  v5 = sub_1001043D0(v4);
  v6 = sub_1000EB46C(&v2->super.isa, v3, v5);

  v7 = [v1 dateCreated];
  v8 = sub_1001043D0(v7);
  sub_10008122C(v6, v8);

  v9 = [v1 dateLastModified];
  v10 = sub_1001043D0(v9);
  sub_1000BA7E8(v6, v10);

  if ([v1 hasStatus])
  {
    v11 = [v1 status];
    v12 = [v11 code];
    if (v6)
    {
      v6[6] = v12;
    }
  }

  return v6;
}

id sub_10002050C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  [v5 setType:31];
  [v5 setAction:3];
  v6 = objc_opt_new();
  [v5 setScheduledEvent:v6];

  if (v4)
  {
    v7 = v4[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 scheduledEvent];
  [v9 setObjectId:v8];

  v10 = [v5 scheduledEvent];
  [v10 setClassId:v3];

  return v5;
}

id sub_1000205FC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  [v5 setType:31];
  [v5 setAction:1];
  v6 = [PDServerScheduledEvent alloc];
  v7 = [v4 objectID];
  v8 = [v4 scheduleDate];

  v9 = sub_1000EB46C(&v6->super.isa, v7, v8);
  v10 = v9;
  v11 = objc_alloc_init(PDDPScheduledEvent);
  v12 = v11;
  if (v10)
  {
    v13 = v10[1];
    [(PDDPScheduledEvent *)v12 setObjectId:v13];

    v14 = v10[2];
  }

  else
  {
    [(PDDPScheduledEvent *)v11 setObjectId:0];
    v14 = 0;
  }

  v15 = v14;
  [(PDDPScheduledEvent *)v12 setParentObjectId:v15];

  if (v10)
  {
    v16 = v10[3];
    v17 = sub_10010426C(v16);
    [(PDDPScheduledEvent *)v12 setDateCreated:v17];

    v18 = v10[4];
  }

  else
  {
    v26 = sub_10010426C(0);
    [(PDDPScheduledEvent *)v12 setDateCreated:v26];

    v18 = 0;
  }

  v19 = v18;
  v20 = sub_10010426C(v19);
  [(PDDPScheduledEvent *)v12 setDateLastModified:v20];

  if (v10)
  {
    v21 = v10[5];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = sub_10010426C(v22);
  [(PDDPScheduledEvent *)v12 setEventDate:v23];

  [v5 setScheduledEvent:v12];
  v24 = [v5 scheduledEvent];
  [v24 setClassId:v3];

  return v5;
}

PDDPEvent *sub_10002082C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPEvent);
  v3 = [v1 objectID];
  [(PDDPEvent *)v2 setObjectId:v3];

  -[PDDPEvent setEventType:](v2, "setEventType:", [v1 type]);
  v4 = [v1 dateCreated];
  v5 = sub_10010426C(v4);
  [(PDDPEvent *)v2 setDateCreated:v5];

  v6 = [v1 dateLastModified];
  v7 = sub_10010426C(v6);
  [(PDDPEvent *)v2 setDateLastModified:v7];

  v8 = [v1 info];
  v9 = sub_100104B40(v8);
  [(PDDPEvent *)v2 setExtraInfos:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    v11 = objc_alloc_init(PDDPHandoutEventDetails);
    v12 = [(PDDPAttachmentEventDetails *)v10 classID];
    [(PDDPHandoutEventDetails *)v11 setClassId:v12];

    v13 = [(PDDPAttachmentEventDetails *)v10 handoutID];
    [(PDDPHandoutEventDetails *)v11 setHandoutId:v13];

    v14 = [(PDDPAttachmentEventDetails *)v10 dueDate];
    v15 = sub_10010426C(v14);
    [(PDDPHandoutEventDetails *)v11 setDueDate:v15];

    v16 = [(PDDPAttachmentEventDetails *)v10 recipientIDs];
    v17 = [v16 mutableCopy];
    [(PDDPHandoutEventDetails *)v11 setRecipientIds:v17];

    v18 = [(PDDPAttachmentEventDetails *)v10 attachmentDetails];

    if (v18)
    {
      v81 = v2;
      v82 = v1;
      v19 = [(PDDPAttachmentEventDetails *)v10 attachmentDetails];
      v20 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v83 objects:buf count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v84;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v84 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v83 + 1) + 8 * i);
            v27 = objc_alloc_init(PDDPHandoutAttachmentDetails);
            v28 = [v26 attachmentID];
            [(PDDPHandoutAttachmentDetails *)v27 setAttachmentId:v28];

            -[PDDPHandoutAttachmentDetails setAttachmentType:](v27, "setAttachmentType:", sub_1000186C0([v26 handoutAttachmentType]));
            if ([v26 contextType])
            {
              -[PDDPHandoutAttachmentDetails setContextType:](v27, "setContextType:", sub_1000191A8([v26 contextType]));
            }

            v29 = [v26 appIdentifier];
            [(PDDPHandoutAttachmentDetails *)v27 setAppIdentifier:v29];

            [v20 addObject:v27];
          }

          v23 = [v21 countByEnumeratingWithState:&v83 objects:buf count:16];
        }

        while (v23);
      }

      [(PDDPHandoutEventDetails *)v11 setAttachmentDetails:v20];
      v2 = v81;
      v1 = v82;
    }

    [(PDDPEvent *)v2 setHandoutEventDetails:v11];
    v30 = v2;
    v31 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v1;
    v10 = objc_alloc_init(PDDPAttachmentEventDetails);
    v33 = [v32 attachmentID];
    [(PDDPAttachmentEventDetails *)v10 setAttachmentId:v33];

    v34 = [v32 classID];
    [(PDDPAttachmentEventDetails *)v10 setClassId:v34];

    v35 = [v32 handoutID];
    [(PDDPAttachmentEventDetails *)v10 setHandoutId:v35];

    v36 = [v32 recipientPersonID];
    [(PDDPAttachmentEventDetails *)v10 setEventRecipientId:v36];

    -[PDDPAttachmentEventDetails setAttachmentType:](v10, "setAttachmentType:", sub_1000186C0([v32 handoutAttachmentType]));
    -[PDDPAttachmentEventDetails setContextType:](v10, "setContextType:", sub_1000191A8([v32 contextType]));
    v37 = [v32 appIdentifier];

    [(PDDPAttachmentEventDetails *)v10 setAppIdentifier:v37];
    [(PDDPEvent *)v2 setAttachmentEventDetails:v10];
    [(PDDPEvent *)v2 setEventDetailsType:2];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    v11 = objc_alloc_init(PDDPProgressEventDetails);
    v39 = [(PDDPAttachmentEventDetails *)v10 activityID];
    [(PDDPHandoutEventDetails *)v11 setActivityId:v39];

    v40 = [(PDDPAttachmentEventDetails *)v10 attachmentID];
    [(PDDPHandoutEventDetails *)v11 setAttachmentId:v40];

    v41 = [(PDDPAttachmentEventDetails *)v10 classID];
    [(PDDPHandoutEventDetails *)v11 setClassId:v41];

    v42 = [(PDDPAttachmentEventDetails *)v10 handoutID];
    [(PDDPHandoutEventDetails *)v11 setHandoutId:v42];

    [(PDDPHandoutEventDetails *)v11 setAttachmentType:sub_1000186C0([(PDDPAttachmentEventDetails *)v10 handoutAttachmentType])];
    [(PDDPHandoutEventDetails *)v11 setContextType:sub_1000191A8([(PDDPAttachmentEventDetails *)v10 contextType])];
    v43 = [(PDDPAttachmentEventDetails *)v10 parentObjectID];
    [(PDDPHandoutEventDetails *)v11 setParentObjectId:v43];

    v44 = [(PDDPAttachmentEventDetails *)v10 objectIDPath];
    [(PDDPHandoutEventDetails *)v11 setObjectIdPath:v44];

    v45 = [(PDDPAttachmentEventDetails *)v10 appIdentifier];
    [(PDDPHandoutEventDetails *)v11 setAppIdentifier:v45];

    v46 = [(PDDPAttachmentEventDetails *)v10 handoutAuthorizedObjectID];
    [(PDDPHandoutEventDetails *)v11 setHandoutAuthorizedObjectId:v46];

    v47 = [(PDDPAttachmentEventDetails *)v10 activityItemInfo];

    if (!v47)
    {
      v58 = [(PDDPAttachmentEventDetails *)v10 rangeInfo];

      if (v58)
      {
        v48 = objc_alloc_init(PDDPRange);
        v59 = [(PDDPAttachmentEventDetails *)v10 rangeInfo];
        [v59 start];
        [(PDDPRange *)v48 setStart:?];

        v60 = [(PDDPAttachmentEventDetails *)v10 rangeInfo];
        [v60 end];
        [(PDDPRange *)v48 setEnd:?];

        [(PDDPHandoutEventDetails *)v11 setRangeInfo:v48];
      }

      else
      {
        v67 = [(PDDPAttachmentEventDetails *)v10 timeIntervalInfo];

        if (v67)
        {
          v48 = objc_alloc_init(PDDPTimeIntervalInfo);
          v68 = [(PDDPAttachmentEventDetails *)v10 timeIntervalInfo];
          v69 = [v68 startTime];
          v70 = sub_10010426C(v69);
          [(PDDPRange *)v48 setStartTime:v70];

          v71 = [(PDDPAttachmentEventDetails *)v10 timeIntervalInfo];
          [v71 length];
          [(PDDPRange *)v48 setDuration:?];

          [(PDDPHandoutEventDetails *)v11 setTimeIntervalInfo:v48];
        }

        else
        {
          v73 = [(PDDPAttachmentEventDetails *)v10 primaryActivityItemIdentifier];

          if (!v73)
          {
            goto LABEL_37;
          }

          v48 = objc_alloc_init(PDDPActivityInfo);
          v74 = [(PDDPAttachmentEventDetails *)v10 activityID];
          [(PDDPRange *)v48 setActivityId:v74];

          v75 = [(PDDPAttachmentEventDetails *)v10 primaryActivityItemIdentifier];
          [(PDDPRange *)v48 setPrimaryItemIdentifier:v75];

          [(PDDPHandoutEventDetails *)v11 setActivityInfo:v48];
        }
      }

LABEL_36:

LABEL_37:
      [(PDDPEvent *)v2 setProgressEventDetails:v11];
      v30 = v2;
      v31 = 3;
LABEL_14:
      [(PDDPEvent *)v30 setEventDetailsType:v31];

LABEL_17:
      goto LABEL_18;
    }

    v48 = [(PDDPAttachmentEventDetails *)v10 activityItemInfo];
    CLSInitLog();
    v49 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      v76 = v49;
      v77 = [(PDDPRange *)v48 dictionaryRepresentation];
      *buf = 138412290;
      v88 = v77;
      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "parsing activity report item: %@", buf, 0xCu);
    }

    v50 = objc_alloc_init(PDDPActivityReportItem);
    v51 = [(PDDPRange *)v48 title];
    [(PDDPActivityReportItem *)v50 setTitle:v51];

    v52 = [(PDDPRange *)v48 identifier];
    [(PDDPActivityReportItem *)v50 setIdentifier:v52];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v48;
      v54 = objc_alloc_init(PDDPScoreValue);
      [(PDDPRange *)v53 value];
      [(PDDPScoreValue *)v54 setValue:?];
      [(PDDPRange *)v53 maxValue];
      v56 = v55;

      [(PDDPScoreValue *)v54 setMaxValue:v56];
      [(PDDPActivityReportItem *)v50 setScoreValue:v54];
      v57 = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v48;
        v54 = objc_alloc_init(PDDPQuantityValue);
        [(PDDPRange *)v61 quantity];
        v63 = v62;

        [(PDDPScoreValue *)v54 setValue:v63];
        [(PDDPActivityReportItem *)v50 setQuantityValue:v54];
        v57 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          CLSInitLog();
          v72 = CLSLogSync;
          if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "unknown cls activity report item", buf, 2u);
          }

          v66 = 0;
          goto LABEL_35;
        }

        v64 = v48;
        v54 = objc_alloc_init(PDDPBinaryValue);
        [(PDDPScoreValue *)v54 setValue:[(PDDPRange *)v64 value]];
        v65 = [(PDDPRange *)v64 valueType];

        if (v65 >= 4)
        {
          v78 = [[NSString alloc] initWithFormat:@"Unknown CLSBinaryValueType: %ld", v65];
          CLSInitLog();
          v79 = CLSLogUpload;
          if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v88 = v78;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "Failed to convert from CLSBinaryValueType reason: %{public}@", buf, 0xCu);
          }

          v80 = [NSException exceptionWithName:NSInvalidArgumentException reason:v78 userInfo:0];
          objc_exception_throw(v80);
        }

        [(PDDPScoreValue *)v54 setValueType:(v65 + 1)];
        [(PDDPActivityReportItem *)v50 setBinaryValue:v54];
        v57 = 1;
      }
    }

    [(PDDPActivityReportItem *)v50 setType:v57];

    v66 = v50;
LABEL_35:

    [(PDDPHandoutEventDetails *)v11 setActivityItemInfo:v66];
    goto LABEL_36;
  }

LABEL_18:

  return v2;
}

uint64_t sub_100021970(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v55 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v55 & 0x7F) << v35;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v37;
          }

LABEL_83:
          *(a1 + 8) = v41;
          goto LABEL_91;
        }

        if (v13 != 7)
        {
LABEL_55:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_91;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v51 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v51 & 0x7F) << v22;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_85;
          }
        }

        v21 = (v24 != 0) & ~[a2 hasError];
LABEL_85:
        v48 = 32;
        goto LABEL_90;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addExcludeAppIds:v14];
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_55;
        }

        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addHostAllowList:v14];
        }
      }

LABEL_91:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v54 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v54 & 0x7F) << v28;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_79;
          }
        }

        v21 = (v30 != 0) & ~[a2 hasError];
LABEL_79:
        v48 = 33;
        break;
      case 2:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v53 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v53 & 0x7F) << v42;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_89;
          }
        }

        v21 = (v44 != 0) & ~[a2 hasError];
LABEL_89:
        v48 = 34;
        break;
      case 3:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v52 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v52 & 0x7F) << v15;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_87;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_87:
        v48 = 35;
        break;
      default:
        goto LABEL_55;
    }

LABEL_90:
    *(a1 + v48) = v21;
    goto LABEL_91;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000233C0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100023488;
    v4[3] = &unk_100202298;
    v5 = a1[4];
    v6 = a1[5];
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

void sub_100023488(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 database];
  if (*(a1 + 32) == v5)
  {
    v23 = v4;
    v6 = objc_opt_new();
    v24 = v3;
    v7 = v3[5];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:{v12, v23}];
          v14 = v13;
          if (v13 && *(v13 + 48) == 1)
          {
            [v6 addObject:v12];
          }

          else
          {
            v15 = [*(a1 + 40) userInfo];
            v16 = sub_1000E3FB0(v14, v15);

            if (v16)
            {
              v17 = [*(a1 + 40) userInfo];
              sub_1000E5488(v14, v5, v17);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v7 removeObjectForKey:{*(*(&v25 + 1) + 8 * j), v23}];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }

    v4 = v23;
    v3 = v24;
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100023888(uint64_t a1, SEL aSelector)
{
  if (!a1)
  {
    return;
  }

  v16 = NSStringFromSelector(aSelector);
  v3 = sub_1000B06DC(*(a1 + 48));
  v4 = [v3 objectForKeyedSubscript:@"action"];
  if (!(v4 | v16))
  {
    goto LABEL_10;
  }

  v5 = [v3 objectForKeyedSubscript:@"action"];
  if (v5)
  {
    v6 = v16 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {

LABEL_11:
    v12 = objc_opt_new();
    [v12 setObject:v16 forKeyedSubscript:@"action"];
    [v12 setObject:&off_10021B588 forKeyedSubscript:@"consecutive-call-count"];
    v14 = +[NSDate date];
    v15 = [v14 description];
    [v12 setObject:v15 forKeyedSubscript:@"last-call-date"];

    sub_1000B072C(*(a1 + 48), v12);
    goto LABEL_12;
  }

  v7 = [v3 objectForKeyedSubscript:@"action"];
  v8 = [v7 isEqualToString:v16];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_10:
  v9 = [v3 objectForKeyedSubscript:@"consecutive-call-count"];
  v10 = [v9 integerValue];

  v11 = [NSNumber numberWithInteger:v10 + 1];
  [v3 setObject:v11 forKeyedSubscript:@"consecutive-call-count"];

  v12 = +[NSDate date];
  v13 = [v12 description];
  [v3 setObject:v13 forKeyedSubscript:@"last-call-date"];

LABEL_12:
}

id sub_100023DF4(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = objc_opt_class();
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v2 deleteAll:v3 where:@"appIdentifier = ? and parentObjectID is null" bindings:v4];

  return v5;
}

id sub_100025B40(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 database];
    if (sub_10007116C(v4))
    {
      v5 = sub_100169FD0(v4, @"shownModalTransparency");
      v6 = [v4 select:objc_opt_class() identity:v3];
      if (v6)
      {
        v7 = objc_opt_class();
        v8 = [v6 parentObjectID];
        v9 = [v4 select:v7 identity:v8];

        v10 = objc_opt_class();
        v11 = [v9 objectID];
        v41 = v11;
        v12 = [NSArray arrayWithObjects:&v41 count:1];
        v13 = [v4 select:v10 where:@"parentObjectID = ?" bindings:v12];

        v14 = [v13 classID];
        if (v14)
        {
          v34 = v5;
          v15 = [v4 select:objc_opt_class() identity:v14];
          v16 = [v15 displayName];
          v33 = v9;
          if (![v16 length])
          {
            v17 = [v15 className];

            v16 = v17;
          }

          v32 = v15;
          if (![v16 length])
          {
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"UNTITLED_CLASS" value:&stru_100206880 table:@"ClassKit"];

            v16 = v19;
          }

          v20 = [NSBundle bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"TRANSPARENCY_BANNER_TITLE" value:&stru_100206880 table:@"ClassKit"];

          v22 = [NSBundle bundleForClass:objc_opt_class()];
          v23 = [v22 localizedStringForKey:@"TRANSPARENCY_BANNER_MESSAGE_HANDOUTASSIGNEDITEMS" value:&stru_100206880 table:@"ClassKit"];

          v24 = objc_opt_new();
          [v24 setObject:v16 forKeyedSubscript:@"classNames"];
          v25 = [v6 title];
          [v24 setObject:v25 forKeyedSubscript:@"attachmentTitle"];

          v26 = [NSNumber numberWithBool:v34 ^ 1u];
          [v24 setObject:v26 forKeyedSubscript:@"showModal"];

          if (v21)
          {
            [v24 setObject:v21 forKeyedSubscript:@"localizedTitle"];
          }

          v9 = v33;
          if (v23)
          {
            [v24 setObject:v23 forKeyedSubscript:@"localizedMessageFormat"];
          }

          if ((v34 & 1) == 0)
          {
            sub_100169F38(v4, 1, @"shownModalTransparency");
          }
        }

        else
        {
          v24 = 0;
        }

        CLSInitLog();
        v28 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          v30 = v28;
          v31 = [v9 objectID];
          *buf = 138412802;
          v36 = v3;
          v37 = 2112;
          v38 = v31;
          v39 = 2112;
          v40 = v14;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "AttchmentID %@ pertains to relevant handoutID: %@ classID: %@", buf, 0x20u);
        }

        v27 = v24;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void sub_1000269BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100026A68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100026A80(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 parentObjectID];
  v4 = [v10 contextPath];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = *(a1 + 32);
    v7 = [v10 objectID];
    v8 = sub_100163E08(v6, v7, *(a1 + 40), 1);

    v9 = [v8 state];
    objc_opt_self();
    if (v9 != 2)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
      if ([v10 isLocked])
      {
        [*(*(*(a1 + 64) + 8) + 40) addObject:v3];
      }
    }
  }
}

uint64_t sub_100026BA4(uint64_t a1, void *a2)
{
  v3 = [a2 classID];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_100026C0C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 displayName];
  if (![v3 length])
  {
    v4 = [v7 className];

    v3 = v4;
  }

  if (![v3 length])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNTITLED_CLASS" value:&stru_100206880 table:@"ClassKit"];

    v3 = v6;
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

id sub_100026D00(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100026A68;
  v32 = sub_100026A78;
  v33 = objc_alloc_init(PDCompletableAttachmentsInfo);
  v4 = [a1 database];
  CLSInitLog();
  v5 = CLSLogDefault;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v4)
    {
      v18 = v4[7];
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    *buf = 138412290;
    v36 = v19;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "completableAttachmentsSharingContextPath database:%@", buf, 0xCu);
  }

  v6 = [a1 client];
  v7 = sub_1000B2528(v6);

  v8 = sub_1000711FC(v4);
  LODWORD(v6) = v8 == 0;

  if (!v6)
  {
    v9 = sub_1000711FC(v4);
    v10 = [v9 objectID];

    v11 = [a1 client];
    v12 = v11;
    if (v11 && *(v11 + 30) == 1 && ([a1 client], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13[25];

      if (v14)
      {
        v15 = &off_10021B940;
        v16 = @"type = ?";
LABEL_16:
        v20 = objc_opt_class();
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100027078;
        v23[3] = &unk_100202360;
        v24 = v3;
        v25 = v4;
        v21 = v10;
        v26 = v21;
        v27 = &v28;
        [v25 selectAll:v20 where:v16 bindings:v15 block:v23];
        v17 = v29[5];

        goto LABEL_17;
      }
    }

    else
    {
    }

    v34[0] = &off_10021B558;
    v34[1] = v7;
    v15 = [NSArray arrayWithObjects:v34 count:2];
    v16 = @"type = ? and bundleIdentifier = ?";
    goto LABEL_16;
  }

  v17 = v29[5];
LABEL_17:

  _Block_object_dispose(&v28, 8);
LABEL_18:

  return v17;
}

void sub_10002704C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027078(uint64_t a1, void *a2)
{
  v3 = a2;
  CLSInitLog();
  v4 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    v28 = v4;
    v29 = [v3 objectID];
    v30 = [v3 contextPath];
    *buf = 138412546;
    v33 = v29;
    v34 = 2112;
    v35 = v30;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "handoutAttachment- %@ contextpathclass %@", buf, 0x16u);
  }

  v5 = [v3 parentObjectID];
  v6 = [v3 objectID];
  v7 = [v3 contextPath];
  if ([v7 isEqualToArray:*(a1 + 32)])
  {
    v8 = *(a1 + 40);
    v9 = [v3 objectID];
    v10 = sub_100163E08(v8, v9, *(a1 + 48), 1);

    if (v10)
    {
      v31 = v10;
      v11 = [NSArray arrayWithObjects:&v31 count:1];
      v12 = [PDSchoolworkCollaborationStateAdaptor attachmentWithStates:v11 canBeSetToActivityState:2 ignoreIsLocked:0];

      if ((v12 & 1) == 0)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      CLSInitLog();
      v13 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [v3 objectID];
        *buf = 138412290;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "handoutAttachment - %@ is missing ACTIVITY state.", buf, 0xCu);
      }

      if ([v3 isComplete] & 1) != 0 || (objc_msgSend(v3, "isLocked"))
      {
        goto LABEL_23;
      }
    }

    [v3 setCompletionStatus:1];
    v16 = +[NSDate date];
    [v3 setDateLastModified:v16];

    v17 = *(*(*(a1 + 56) + 8) + 40);
    if (v17)
    {
      v18 = *(v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    [v18 addObject:v5];
    v19 = *(*(*(a1 + 56) + 8) + 40);
    if (v19)
    {
      v20 = *(v19 + 24);
    }

    else
    {
      v20 = 0;
    }

    [v20 addObject:v3];
    v21 = *(*(*(a1 + 56) + 8) + 40);
    if (v21)
    {
      v22 = *(v21 + 16);
    }

    else
    {
      v22 = 0;
    }

    [v22 addObject:v6];
    if ([v5 length])
    {
      if (v6)
      {
        v23 = [v3 title];

        if (v23)
        {
          v24 = objc_opt_new();
          v25 = [v3 title];
          [v24 setObject:v25 forKey:@"attachmentTitle"];

          [v24 setObject:v6 forKey:@"attachmentID"];
          [v24 setObject:v5 forKey:@"handoutID"];
          v26 = *(*(*(a1 + 56) + 8) + 40);
          if (v26)
          {
            v27 = *(v26 + 32);
          }

          else
          {
            v27 = 0;
          }

          [v27 addObject:v24];
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

void sub_100027B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100027B74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogFetch;
    if (os_log_type_enabled(CLSLogFetch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "failed to fetch attachment at url: %@, error: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100027C6C(uint64_t a1)
{
  v2 = [*(a1 + 32) br_itemID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v5 br_documentRecordIDWithError:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = [NSError cls_createErrorWithCode:2 description:@"URL not shared, no CKRecordID."];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:2 description:@"URL not shared, no brID."];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    _objc_release_x1();
  }
}

void sub_1000284E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100028500(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100026A68;
  v19[4] = sub_100026A78;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100026A68;
  v17[4] = sub_100026A78;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100026A68;
  v15[4] = sub_100026A78;
  v16 = 0;
  v2 = sub_1000B2528(*(a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000287E4;
  v14[3] = &unk_1002023D8;
  v14[4] = v19;
  v14[5] = v17;
  v14[6] = v15;
  [CLSUtil fetchInfoForAppWithBundleIdentifier:v2 completion:v14];

  v3 = [CLSHandoutAssignedItem alloc];
  v4 = [*(a1 + 40) type];
  v5 = [*(a1 + 40) title];
  v6 = [*(a1 + 40) objectID];
  v7 = [v3 initWithType:v4 title:v5 handoutAttachmentID:v6];

  if ([v7 effectiveAuthorizationStatus] == 2)
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CLSHandoutAssignedItem not authorized", v13, 2u);
    }

    goto LABEL_6;
  }

  [v7 setAppIdentifier:*(a1 + 48)];
  v9 = [*(a1 + 56) database];
  v10 = [v9 insertObject:v7];

  if (!v10)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
  v11 = 1;
LABEL_7:

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(v19, 8);
  return v11;
}

void sub_1000287A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000287E4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_100028C10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error during markAsComplete - saving handout attachments: %{public}@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  sub_100028D04(*(a1 + 32), v6);
  (*(*(a1 + 48) + 16))();
}

void sub_100028D04(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v35 = a1;
  if (a1 && [v3 count])
  {
    v5 = [a1 database];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = v4;
    obj = v4;
    v42 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v42)
    {
      v41 = *v48;
      v34 = v5;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v47 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"handoutID"];
          v9 = [v7 objectForKeyedSubscript:@"attachmentTitle"];
          v44 = [v7 objectForKeyedSubscript:@"attachmentID"];
          CLSInitLog();
          v10 = CLSLogNotifications;
          if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_DEBUG))
          {
            *buf = 141558531;
            v53 = 1752392040;
            v54 = 2112;
            v55 = v44;
            v56 = 2113;
            v57 = v9;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Attempting to notify complete for attachmentID: %{mask.hash}@ title:%{private}@", buf, 0x20u);
          }

          v11 = objc_opt_class();
          v51 = v8;
          v12 = [NSArray arrayWithObjects:&v51 count:1];
          v13 = [v5 select:v11 where:@"parentObjectID = ?" bindings:v12];

          v14 = [v13 classID];
          if (v14)
          {
            v43 = v9;
            v15 = v8;
            v16 = [v5 select:objc_opt_class() identity:v14];
            v17 = [v16 displayName];
            if (![v17 length])
            {
              [v16 className];
              v19 = v18 = v13;

              v17 = v19;
              v13 = v18;
            }

            if (![v17 length])
            {
              v20 = v16;
              v21 = v13;
              v22 = [NSBundle bundleForClass:objc_opt_class()];
              v23 = [v22 localizedStringForKey:@"UNTITLED_CLASS" value:&stru_100206880 table:@"ClassKit"];

              v13 = v21;
              v16 = v20;
              v17 = v23;
            }

            v8 = v15;
            v24 = [v5 select:objc_opt_class() identity:v15];
            v25 = [v24 title];
            if ([v17 length])
            {
              v40 = v13;
              v26 = [NSBundle bundleForClass:objc_opt_class()];
              v38 = [v26 localizedStringForKey:@"MARK_AS_COMPLETE_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];

              v37 = [NSString stringWithFormat:v38, v43, v25];
              v27 = objc_opt_new();
              [v27 setTitle:v17];
              [v27 setBody:v37];
              v39 = v24;
              v28 = objc_opt_new();
              [v28 setObject:v8 forKey:@"handoutID"];
              [v28 setObject:v44 forKey:@"attachmentID"];
              [v28 setObject:v14 forKey:@"classID"];
              [v27 setUserInfo:v28];
              [NSString stringWithFormat:@"%@-%@", @"com.apple.progressd.complete-activity", v44];
              v30 = v29 = v8;
              v31 = [UNNotificationRequest requestWithIdentifier:v30 content:v27 trigger:0];

              v32 = [v35 userNotificationCenter];
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_1000292E8;
              v45[3] = &unk_100202998;
              v46 = v44;
              [v32 addNotificationRequest:v31 withCompletionHandler:v45];

              v8 = v29;
              v5 = v34;

              v24 = v39;
              v13 = v40;
            }

            v9 = v43;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v42);
    }

    v4 = v33;
  }
}

void sub_1000292E8(uint64_t a1, void *a2)
{
  v3 = a2;
  CLSInitLog();
  v4 = CLSLogNotifications;
  if (v3)
  {
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 description];
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error with mark as complete user notification. Error: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 141558274;
    v9 = 1752392040;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "notification Successful: attachmentID: %{mask.hash}@", &v8, 0x16u);
  }
}

void sub_1000295DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000295FC(uint64_t a1)
{
  v36 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v36 count:1];
  v3 = [*(a1 + 40) database];
  v4 = [v3 select:objc_opt_class() where:@"parentObjectID is null and appIdentifier = ?" bindings:v2];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = 1;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100026A68;
    v33 = sub_100026A78;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100026A68;
    v27 = sub_100026A78;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100026A68;
    v21 = sub_100026A78;
    v22 = 0;
    v8 = sub_1000B2528(*(a1 + 48));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002996C;
    v16[3] = &unk_1002023D8;
    v16[4] = &v29;
    v16[5] = &v23;
    v16[6] = &v17;
    [CLSUtil fetchInfoForAppWithBundleIdentifier:v8 completion:v16];

    v9 = [CLSContext alloc];
    if (v30[5])
    {
      v10 = v30[5];
    }

    else
    {
      v10 = *(a1 + 32);
    }

    v11 = [v9 initWithInternalType:1 identifier:*(a1 + 32) title:v10];
    [v11 setAppIdentifier:*(a1 + 32)];
    v12 = sub_1000B2528(*(a1 + 48));
    v35 = v12;
    v13 = [NSArray arrayWithObjects:&v35 count:1];
    [v11 setIdentifierPathAndGenerateObjectID:v13];

    [v11 setStoreIdentifier:v24[5]];
    [v11 setStoreTeamID:v18[5]];
    v14 = [*(a1 + 40) database];
    v7 = [v14 insertObject:v11];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  return v7;
}

void sub_10002992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_10002996C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_10002A268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A284(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (![a2 conformsToProtocol:&OBJC_PROTOCOL___PDDatabaseEntity])
    {
      v19 = &stru_100206880;
LABEL_27:
      [NSError cls_assignError:a3 code:4 format:@"Query for object of type: '%@' not allowed%@.", a2, v19];
      return 0;
    }

    v6 = CLSProgressClasses();
    v7 = [v6 mutableCopy];

    [v7 addObject:objc_opt_class()];
    [v7 addObject:objc_opt_class()];
    [v7 addObject:objc_opt_class()];
    v8 = [v5 client];
    if (v8)
    {
      v9 = v8[26];

      if (v9 != 1)
      {
        goto LABEL_7;
      }

      v10 = CLSDashboardClasses();
      [v7 unionSet:v10];
    }

    else
    {
      v10 = 0;
    }

LABEL_7:
    v11 = [v5 client];
    if (v11)
    {
      v12 = v11[28];

      if (v12 != 1)
      {
        goto LABEL_11;
      }

      v13 = CLSSearchClasses();
      [v7 unionSet:v13];
    }

    else
    {
      v13 = 0;
    }

LABEL_11:
    v14 = [v5 daemon];
    v15 = sub_1000DC5E0(v14);

    if (!v15)
    {
      v19 = &stru_100206880;
      goto LABEL_22;
    }

    v16 = CLSQueriableWithoutValidUserClasses();
    [v7 intersectSet:v16];

    v17 = [v5 client];
    v18 = v17;
    if (v17 && v17[26] == 1)
    {
    }

    else
    {
      v20 = [v5 client];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20[30];

      if (v21 != 1)
      {
LABEL_21:
        v19 = @" without a valid user";
LABEL_22:
        v22 = [v5 client];
        if (v22)
        {
          v23 = v22[27];

          if (v23 == 1)
          {
            [v7 addObject:objc_opt_class()];
            [v7 addObject:objc_opt_class()];
          }
        }

        v24 = [v7 containsObject:a2];

        if (v24)
        {
          return 1;
        }

        goto LABEL_27;
      }
    }

    v18 = CLSOnboardingClasses();
    [v7 unionSet:v18];
LABEL_20:

    goto LABEL_21;
  }

  return result;
}

void sub_10002A52C(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  if ([*(a1 + 32) count] == *(a1 + 56))
  {
    [*(a1 + 40) clientRemote_deliverObject:*(a1 + 32)];
    [*(a1 + 32) removeAllObjects];
  }

  [*(a1 + 32) addObject:v3];
}

void sub_10002ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002AD20(id a1, NSError *a2)
{
  v2 = a2;
  CLSInitLog();
  v3 = CLSLogSearch;
  if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to proxy to remote query! error: %{public}@", &v4, 0xCu);
  }
}

void sub_10002ADD0(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 64) + 8) + 24);
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count] == *(a1 + 72))
  {
    CLSInitLog();
    v5 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = v5;
      v19 = 134217984;
      v20 = [v17 count];
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Buffer full. Delivering %lu objects.", &v19, 0xCu);
    }

    [*(a1 + 40) clientRemote_deliverObject:*(a1 + 32)];
    [*(a1 + 32) removeAllObjects];
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = *(a1 + 48);
LABEL_12:
    v11 = objc_opt_class();
    v12 = [v3 identityValue];
    v9 = [v10 select:v11 identity:v12];

    goto LABEL_13;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v10 = *(a1 + 48);
    goto LABEL_12;
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v10 = *(a1 + 48);
    goto LABEL_12;
  }

  v9 = v3;
LABEL_13:
  if (([*(a1 + 56) rosterSearchOptions] & 8) != 0 || (v13 = objc_opt_class(), v13 != objc_opt_class()) || (v14 = *(a1 + 48), v15 = objc_opt_class(), objc_msgSend(v9, "identityValue"), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v14, "childEntitiesExistForClass:parentIdentity:", v15, v16), v16, v14))
  {
    [*(a1 + 32) addObject:v9];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10002B8F0(id a1, NSError *a2)
{
  v2 = a2;
  CLSInitLog();
  v3 = CLSLogSearch;
  if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to proxy to remote query! error: %{public}@", &v4, 0xCu);
  }
}

void sub_10002B9A0(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 64) + 8) + 24);
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count] == *(a1 + 72))
  {
    CLSInitLog();
    v5 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v5;
      v12 = 134217984;
      v13 = [v10 count];
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Buffer full. Delivering %lu objects.", &v12, 0xCu);
    }

    [*(a1 + 40) clientRemote_deliverObject:*(a1 + 32)];
    [*(a1 + 32) removeAllObjects];
  }

  if (([*(a1 + 48) includeEmptyGroupsInResults] & 1) != 0 || (v6 = objc_opt_class(), v6 != objc_opt_class()) || (v7 = *(a1 + 56), v8 = objc_opt_class(), objc_msgSend(v3, "identityValue"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "childEntitiesExistForClass:parentIdentity:", v8, v9), v9, v7))
  {
    [*(a1 + 32) addObject:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10002D2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 192), 8);
  _Block_object_dispose((v26 - 224), 8);
  _Unwind_Resume(a1);
}

id sub_10002D300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLSContextClasses();
  v5 = [v4 containsObject:objc_opt_class()];

  if ((v5 & 1) != 0 || *(a1 + 32) != 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = CLSProgressClasses();
    v7 = [v6 containsObject:objc_opt_class()];
  }

  return v7;
}

uint64_t sub_10002D3B0(uint64_t a1)
{
  v1 = a1;
  v86 = sub_10007116C(*(a1 + 32));
  v2 = sub_1000711B4(*(v1 + 32));
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = *(v1 + 40);
  v3 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
  v83 = 1;
  if (!v3)
  {
    goto LABEL_97;
  }

  v4 = v3;
  v5 = &CLSLogDefault;
  v6 = &_mh_execute_header;
  v7 = *v95;
  v85 = CLSAdminRequestNewAccountPlaceholderAppleID;
  v87 = v2;
  v91 = v1;
  v88 = *v95;
LABEL_3:
  v8 = 0;
  v89 = v4;
  while (1)
  {
    if (*v95 != v7)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v94 + 1) + 8 * v8);
    CLSInitLog();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v100 = v9;
      _os_log_impl(v6, v10, OS_LOG_TYPE_INFO, "SAVING %@.", buf, 0xCu);
    }

    v93 = 0;
    v11 = [v9 validateObject:&v93];
    v12 = v93;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      if (v12)
      {
        [*(v1 + 48) addObject:v12];
      }

      goto LABEL_37;
    }

    v14 = v5;
    v15 = CLSContextClasses();
    v16 = [v15 containsObject:objc_opt_class()];

    v17 = CLSProgressClasses();
    v18 = [v17 containsObject:objc_opt_class()];

    if (v18)
    {
      v19 = v6;
      if (*(*(*(v1 + 104) + 8) + 24))
      {
        v20 = v13;
      }

      else
      {
        v21 = *(v1 + 56);
        v92 = v13;
        v22 = [v21 _createMainAppContext:&v92];
        v20 = v92;

        if (!v22)
        {
          v13 = v20;
          goto LABEL_96;
        }

        *(*(*(v1 + 104) + 8) + 24) = 1;
      }

      v5 = v14;
      if (!(v87 & 1 | ((v16 & 1) == 0)))
      {
        CLSInitLog();
        v30 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v31 = v30;
          v32 = objc_opt_class();
          *buf = 136315394;
          v100 = "Saving context not allowed!";
          v101 = 2112;
          v102 = v32;
          v33 = v32;
          v34 = v19;
          v35 = v31;
          goto LABEL_85;
        }

LABEL_35:
        v13 = v20;
        v4 = v89;
        v1 = v91;
        v6 = v19;
LABEL_36:
        v7 = v88;
        goto LABEL_37;
      }

      if (((v16 | v86) & 1) == 0)
      {
        CLSInitLog();
        v40 = *v14;
        if (!os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        v31 = v40;
        v68 = objc_opt_class();
        *buf = 136315394;
        v100 = "Recording activity not allowed.";
        v101 = 2112;
        v102 = v68;
        v33 = v68;
        v34 = v19;
        v35 = v31;
LABEL_85:
        _os_log_debug_impl(v34, v35, OS_LOG_TYPE_DEBUG, "%s (%@)!", buf, 0x16u);

        v13 = v20;
        v6 = v19;
        v4 = v89;
        v1 = v91;
        goto LABEL_36;
      }

      v13 = v20;
      v6 = v19;
      v7 = v88;
    }

    v23 = CLSDashboardClasses();
    v24 = [v23 containsObject:objc_opt_class()];

    v1 = v91;
    if ((*(v91 + 112) & 1) == 0 && v24)
    {
      CLSInitLog();
      v5 = v14;
      v25 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        v61 = v25;
        v62 = objc_opt_class();
        *buf = 136315394;
        v100 = "Saving dashboard objects not allowed.";
        v101 = 2112;
        v102 = v62;
        v63 = v62;
        _os_log_debug_impl(v6, v61, OS_LOG_TYPE_DEBUG, "%s (%@)!", buf, 0x16u);
      }

      v26 = [NSString stringWithUTF8String:"Saving dashboard objects not allowed."];
      v27 = [NSError cls_createErrorWithCode:1 errorObject:v9 description:v26];

      [*(v91 + 48) addObject:v27];
LABEL_24:
      v4 = v89;
      goto LABEL_37;
    }

    v28 = CLSOnboardingClasses();
    v29 = [v28 containsObject:objc_opt_class()];

    if (v29)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v9;
      v37 = [v36 appleID];
      v38 = v37;
      if (!v85)
      {
        if (!v37)
        {

LABEL_26:
          v4 = v89;
          v5 = v14;
          v1 = v91;
          goto LABEL_37;
        }

LABEL_41:
        goto LABEL_42;
      }

      if (!v37)
      {
        goto LABEL_41;
      }

      v39 = [v36 appleID];
      v84 = [v85 isEqualToString:v39];

      v7 = v88;
      if (v84)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    v1 = v91;
    if (*(v91 + 113) != 1 || ([v9 appIdentifier], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
    {
      [v9 setAppIdentifier:*(v91 + 64)];
    }

    v5 = v14;
    if ([v9 isDeleted])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_63;
      }

      v42 = [*(v91 + 56) database];
      v43 = objc_opt_class();
      v44 = [v9 objectID];
      v98 = v44;
      v45 = [NSArray arrayWithObjects:&v98 count:1];
      v46 = [v42 count:v43 where:@"parentObjectID = ?" bindings:v45];

      v5 = v14;
      if (!v46)
      {
LABEL_63:
        v4 = v89;
        v7 = v88;
        if (([*(v91 + 32) deleteObject:v9] & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_37;
      }

      CLSInitLog();
      v47 = *v14;
      v4 = v89;
      v7 = v88;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v48 = v6;
        v49 = v47;
        v50 = "Deleting context not allowed.";
LABEL_70:
        _os_log_debug_impl(v48, v49, OS_LOG_TYPE_DEBUG, v50, buf, 2u);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    v7 = v88;
    if (!v18)
    {
      break;
    }

    v51 = [*(v91 + 56) _authorizationStatusForObject:v9];
    if (v51 != 2 && (v51 || (v16 & 1) != 0))
    {
      break;
    }

    if ((*(*(v91 + 96) + 16))())
    {
      goto LABEL_24;
    }

    CLSInitLog();
    v64 = *v14;
    v4 = v89;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v48 = v6;
      v49 = v64;
      v50 = "Saving object not allowed.";
      goto LABEL_70;
    }

LABEL_37:

    if (v4 == ++v8)
    {
      v81 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
      v4 = v81;
      if (!v81)
      {
        v83 = 1;
        goto LABEL_97;
      }

      goto LABEL_3;
    }
  }

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && !objc_msgSend(v9, "willBeProcessedByEndpointServer:", *(v91 + 56)))
  {
    goto LABEL_96;
  }

  v52 = [v9 objectID];
  if (v16 && ([v9 parentObjectID], v53 = objc_claimAutoreleasedReturnValue(), v53, !v53))
  {
    v60 = [*(v91 + 32) insertOrUpdateObject:v9];
  }

  else
  {
    v54 = [v9 isTemporary];
    v55 = *(v91 + 32);
    if (v54)
    {
      if (([v55 insertObject:v9] & 1) == 0)
      {
        v56 = [*(v91 + 32) entityExistsByClass:objc_opt_class() identity:v52];
        CLSInitLog();
        v57 = *v14;
        v58 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
        if (v56)
        {
          if (!v58)
          {
            v59 = "Failed to save object.  Object already exists in store.  To update existing object fetch it from data store, modify it and save it back.";
            goto LABEL_88;
          }

          v74 = v57;
          v75 = objc_opt_class();
          *buf = 136315394;
          v76 = "Failed to save object.  Object already exists in store.  To update existing object fetch it from data store, modify it and save it back.";
          v100 = "Failed to save object.  Object already exists in store.  To update existing object fetch it from data store, modify it and save it back.";
          v101 = 2112;
          v102 = v75;
          v77 = v75;
          v78 = v6;
          v79 = v74;
LABEL_92:
          _os_log_debug_impl(v78, v79, OS_LOG_TYPE_DEBUG, "%s (%@)!", buf, 0x16u);

          v59 = v76;
        }

        else
        {
          if (v58)
          {
            v74 = v57;
            v80 = objc_opt_class();
            *buf = 136315394;
            v76 = "Failed to save new object.";
            v100 = "Failed to save new object.";
            v101 = 2112;
            v102 = v80;
            v77 = v80;
            v78 = v6;
            v79 = v74;
            goto LABEL_92;
          }

          v59 = "Failed to save new object.";
        }

LABEL_88:
        v66 = 7;
LABEL_89:
        v69 = [NSString stringWithUTF8String:v59];
        v70 = [NSError cls_createErrorWithCode:v66 errorObject:v9 description:v69];

        [*(v91 + 48) addObject:v70];
        v4 = v89;
        v5 = v14;
        goto LABEL_36;
      }
    }

    else if (([v55 updateObject:v9] & 1) == 0)
    {
      CLSInitLog();
      v65 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        v71 = v65;
        v72 = objc_opt_class();
        *buf = 136315394;
        v100 = "Failed to update object.";
        v101 = 2112;
        v102 = v72;
        v73 = v72;
        _os_log_debug_impl(v6, v71, OS_LOG_TYPE_DEBUG, "%s (%@)!", buf, 0x16u);
      }

      v59 = "Failed to update object.";
      v66 = 8;
      goto LABEL_89;
    }

    v60 = 1;
  }

  if ((*(v91 + 114) & 1) == 0)
  {
    if (*(v91 + 72))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_100111334(*(v91 + 80), v9, *(v91 + 72));
      }
    }
  }

  if (v60)
  {
    v67 = [*(v91 + 32) select:objc_opt_class() identity:v52];
    if (v67)
    {
      [*(v91 + 88) clientRemote_deliverObject:v67];
    }

    v4 = v89;
    goto LABEL_36;
  }

LABEL_96:
  v83 = 0;
LABEL_97:

  return v83;
}

void sub_10002DE50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  CLSInitLog();
  v11 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412546;
    v33 = v25;
    v34 = 2112;
    v35 = v7;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): results: %@", buf, 0x16u);
  }

  sub_100111578(*(a1 + 32), v7, v8);
  if ([v8 count])
  {
    CLSInitLog();
    v12 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v33 = v26;
      v34 = 2112;
      v35 = v8;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): conflicts: %@", buf, 0x16u);
    }

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    CLSInitLog();
    v13 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v33 = v27;
      v34 = 2112;
      v35 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SaveCollabState (Client %@): Error publishing states: %@", buf, 0x16u);
    }

LABEL_11:
    v14 = sub_100111548(*(a1 + 32));
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002E1BC;
    v29[3] = &unk_1002025B8;
    v15 = *(a1 + 56);
    *&v16 = *(a1 + 32);
    *(&v16 + 1) = *(a1 + 40);
    v28 = v16;
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = v15;
    v30 = v28;
    v31 = v17;
    [WeakRetained entitled_publishCollaborationStateChanges:v14 completion:v29];

    goto LABEL_12;
  }

  v18 = [*(a1 + 40) database];
  v19 = [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:v18];

  if (v19)
  {
    v20 = [PDUploadEventsOperation alloc];
    v21 = [*(a1 + 40) database];
    v22 = [(PDURLRequestOperation *)v20 initWithDatabase:v21];

    v23 = [*(a1 + 40) daemon];
    v24 = [v23 operationsManager];
    sub_100123A84(v24, v22);
  }

  (*(*(a1 + 48) + 16))();
LABEL_12:
}

void sub_10002E1BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  CLSInitLog();
  v10 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(*(*(a1 + 56) + 8) + 40);
    v23 = 138412546;
    v24 = v20;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): retry results: %@", &v23, 0x16u);
  }

  sub_100111578(*(a1 + 32), v7, v8);
  if ([v8 count] && (CLSInitLog(), v11 = CLSLogHandout, os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG)))
  {
    v21 = *(*(*(a1 + 56) + 8) + 40);
    v23 = 138412546;
    v24 = v21;
    v25 = 2112;
    v26 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): retry conflicts: %@", &v23, 0x16u);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_8;
  }

  CLSInitLog();
  v12 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = 138412546;
    v24 = v22;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): retry error: %@", &v23, 0x16u);
  }

LABEL_8:
  v13 = [*(a1 + 40) database];
  v14 = [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:v13];

  if (v14)
  {
    v15 = [PDUploadEventsOperation alloc];
    v16 = [*(a1 + 40) database];
    v17 = [(PDURLRequestOperation *)v15 initWithDatabase:v16];

    v18 = [*(a1 + 40) daemon];
    v19 = [v18 operationsManager];
    sub_100123A84(v19, v17);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002EE98(void *a1)
{
  [*(a1[4] + 40) setObject:a1[6] forKeyedSubscript:a1[5]];
  v3 = a1[6];
  v2 = a1[7];
  v6 = @"PDDataWrittenTime";
  v4 = +[NSDate date];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  sub_1000E5488(v3, v2, v5);
}

void sub_10002F028(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  v2 = [*(a1 + 32) daemon];
  sub_1000DBCBC(v2);
}

void sub_10002F900(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F9BC;
  v6[3] = &unk_100202948;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [NSURL cls_urlSuitableForOpeningForExpectedURL:v1 containerURL:v2 itemID:v3 ownerName:v4 zoneName:v5 completion:v6];
}

void sub_10002F9BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = 0;
    v3 = [FPSandboxingURLWrapper wrapperWithURL:a2 readonly:0 error:&v7];
    v4 = v7;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void sub_10002FBC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  sub_10012DF04(PDFileSyncManager, v2, 0, v3, *(a1 + 48));
}

void sub_10002FDAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) database];
  sub_10012DD44(PDFileSyncManager, v2, v3, v4, *(a1 + 56));
}

void sub_10002FF9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) database];
  sub_10012E0C4(PDFileSyncManager, v2, v3, v4, *(a1 + 56));
}

void sub_100030168(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  sub_10012DB64(PDFileSyncManager, v2, v3, *(a1 + 48));
}

void sub_100030588(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) client];
  v5 = v4;
  if (v4 && (v6 = *(v4 + 32)) != 0)
  {
    v7 = v6;
    [v6 auditToken];
  }

  else
  {
    v7 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) database];
  sub_10012DA68(PDFileSyncManager, v3, v2, &v10, v8, v9, *(a1 + 56));
}

void sub_100031F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100031F54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogFetch;
    if (os_log_type_enabled(CLSLogFetch, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "failed to fetch attachment at url: %@, error: %{public}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100032040(uint64_t a1)
{
  v2 = [*(a1 + 32) br_itemID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v5 br_documentRecordIDWithError:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = [NSError cls_createErrorWithCode:2 description:@"URL not shared, no CKRecordID."];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:2 description:@"URL not shared, no brID."];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    _objc_release_x1();
  }
}

void sub_100032658(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 operationError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v7 responseStatusError];
  }

  v6 = v5;

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6 == 0, v6);
}

void sub_100032858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

void sub_100032BD4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 operationError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v7 responseStatusError];
  }

  v6 = v5;

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6 == 0, v6);
}

void sub_100033338(uint64_t a1, void *a2)
{
  v3 = [a2 operationError];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_new();
    [v5 setObject:@"Failed Collection can be found under CLSErrorObjectKey." forKeyedSubscript:NSLocalizedDescriptionKey];
    v6 = [[NSError alloc] initWithDomain:CLSErrorCodeDomain code:9 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6 == 0);
}

void sub_100033AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  CLSInitLog();
  v4 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v11 = v4;
    v12 = [v3 operationID];
    if (v3)
    {
      v13 = *(v3 + 251);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 count];
    if (v3)
    {
      v16 = *(v3 + 259);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v21 = 138412802;
    v22 = v12;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = [v17 count];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "publishStateChange op: %@ counts server states: %ld, conflicts: %ld", &v21, 0x20u);
  }

  CLSInitLog();
  v5 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v18 = v5;
    v19 = [v3 operationID];
    v20 = sub_10015B35C(v3);
    v21 = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "publishStateChange op %@ errors: %@", &v21, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v3)
  {
    v7 = *(v3 + 251);
    v8 = *(v3 + 259);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = v8;
  v10 = sub_10015B35C(v3);
  (*(v6 + 16))(v6, v7, v9, v10);
}

void sub_100035234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operationError];
  if (!v4)
  {
    v5 = v3 ? *(v3 + 266) : 0;
    v6 = v5;
    v4 = [v6 count];

    if (v4)
    {
      v7 = objc_opt_new();
      if (v3)
      {
        v8 = *(v3 + 266);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      [v7 setObject:v9 forKeyedSubscript:CLSErrorObjectKey];

      [v7 setObject:@"Failed ClassMembers can be found under CLSErrorObjectKey" forKeyedSubscript:NSLocalizedDescriptionKey];
      v4 = [[NSError alloc] initWithDomain:CLSErrorCodeDomain code:9 userInfo:v7];
      CLSInitLog();
      v10 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v13 = v10;
        if (v3)
        {
          v14 = *(v3 + 266);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = 138543362;
        v17 = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "remote_publishClassGraph failedMembers: %{public}@", &v16, 0xCu);
      }
    }
  }

  v11 = *(a1 + 32);
  v12 = [v3 operationError];
  (*(v11 + 16))(v11, v12 == 0, v4);
}

void sub_1000358B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 addObject:v4];
    v5 = *(a1 + 40);
    v6 = [v4 objectID];

    [v5 addObject:v6];
  }
}

id *sub_100035938(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void sub_10003594C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 251);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  v6 = sub_100084148(v4);

  (*(v2 + 16))(v2, v7, v6);
}

void sub_100035C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 responseStatusError];
  if (v4)
  {
    [v3 responseStatusError];
  }

  else
  {
    [v3 operationError];
  }
  v5 = ;

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5 == 0);
}

void sub_1000360BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operationError];

  if (v4)
  {
    v5 = [v3 operationError];
    CLSInitLog();
    v6 = [v3 logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v3 operationID];
      v12 = [v5 domain];
      v15 = 138544130;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      v20 = [v5 code];
      v21 = 2114;
      v22 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "publishAdminRequest op:%{public}@ returning domain:%@ code:%ld error: %{public}@", &v15, 0x2Au);
    }

    v7 = *(a1 + 32);
    v8 = [v3 operationError];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    CLSInitLog();
    v9 = [v3 logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v3 operationID];
      v14 = [v3 successfulObjects];
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "publishAdminRequest op:%{public}@ returning items: %{public}@", &v15, 0x16u);
    }

    v10 = *(a1 + 32);
    v5 = [v3 successfulObjects];
    (*(v10 + 16))(v10, v5, 0);
  }
}

void sub_100036790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operationError];

  if (v4)
  {
    v5 = [v3 operationError];
    CLSInitLog();
    v6 = [v3 logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v3 operationID];
      v11 = [v5 domain];
      v13 = 138544130;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2048;
      v18 = [v5 code];
      v19 = 2114;
      v20 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "relayRequest op:%{public}@ returning domain:%@ code:%ld error: %{public}@", &v13, 0x2Au);
    }

    v7 = *(a1 + 32);
    v8 = [v3 operationError];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    CLSInitLog();
    v9 = [v3 logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v3 operationID];
      v13 = 138543362;
      v14 = v12;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "relayRequest op:%{public}@ returning success", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100036B60(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    CLSInitLog();
    v4 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v26 = v4;
      v27 = 134217984;
      v28 = [v25 count];
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Delivering %lu remaining objects.", &v27, 0xCu);
    }

    [*(a1 + 40) clientRemote_deliverObject:*(a1 + 32)];
    [*(a1 + 32) removeAllObjects];
  }

  v5 = [*(a1 + 48) client];
  v6 = v5;
  if (v5 && v5[26] == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v3 operationError];
      if (v8)
      {
        v9 = v8;
        CLSInitLog();
        v10 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
        {
          v27 = 138412290;
          v28 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Finishing query (ASM) with error: %@.", &v27, 0xCu);
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  CLSInitLog();
  v11 = CLSLogSearch;
  if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v27) = 0;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Finishing query (ASM).", &v27, 2u);
  }

  v12 = [*(a1 + 56) searchString];
  v13 = [v12 length];

  if (v13 >= 2)
  {
    v14 = [v3 stats];
    if (!v14 || (v15 = v14[13], v14, !v15))
    {
      CLSInitLog();
      v16 = CLSLogSearch;
      if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 56);
        v18 = v16;
        v19 = [v17 searchString];
        v27 = 138412290;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Adding '%@' to search cache", &v27, 0xCu);
      }

      v20 = +[PDASMSearchStringCache shared];
      v21 = [*(a1 + 56) searchString];
      v22 = *(a1 + 64);
      if (v22)
      {
        v23 = (*(v22 + 64) - 60);
      }

      else
      {
        v23 = -60.0;
      }

      v24 = [NSDate dateWithTimeIntervalSinceNow:v23];
      [v20 addToCache:v21 expires:v24];
    }
  }

  v9 = 0;
LABEL_23:
  [*(a1 + 40) clientRemote_finishWithOffset:*(a1 + 72) error:v9];
}

void sub_100036FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    CLSInitLog();
    v4 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v25 = v4;
      v26 = 134217984;
      v27 = [v24 count];
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Delivering %lu remaining objects.", &v26, 0xCu);
    }

    [*(a1 + 40) clientRemote_deliverObject:*(a1 + 32)];
    [*(a1 + 32) removeAllObjects];
  }

  v5 = [v3 operationError];

  CLSInitLog();
  v6 = CLSLogSearch;
  v7 = os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v9 = [v3 operationError];
      v26 = 138412290;
      v27 = v9;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Finishing query (ASM) with error: %@.", &v26, 0xCu);
LABEL_18:
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v26) = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Finishing query (ASM).", &v26, 2u);
    }

    v10 = [*(a1 + 48) keyword];
    v11 = [v10 length];

    if (v11 >= 2)
    {
      v12 = [v3 stats];
      if (!v12 || (v13 = v12[13], v12, !v13))
      {
        CLSInitLog();
        v14 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 48);
          v16 = v14;
          v17 = [v15 keyword];
          v26 = 138412290;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Adding '%@' to search cache", &v26, 0xCu);
        }

        v8 = +[PDASMSearchStringCache shared];
        v9 = [*(a1 + 48) keyword];
        v18 = *(a1 + 56);
        if (v18)
        {
          v19 = (*(v18 + 64) - 60);
        }

        else
        {
          v19 = -60.0;
        }

        v20 = [NSDate dateWithTimeIntervalSinceNow:v19];
        [v8 addToCache:v9 expires:v20];

        goto LABEL_18;
      }
    }
  }

  v21 = *(a1 + 40);
  v22 = *(a1 + 64);
  v23 = [v3 operationError];
  [v21 clientRemote_finishWithOffset:v22 error:v23];
}

void sub_10003757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037594(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [*(a1 + 40) identifierPath];
  *(*(*(a1 + 48) + 8) + 24) = sub_10014C17C(v2, v3);

  if (*(*(*(a1 + 48) + 8) + 24) == 2)
  {
    v4 = [*(a1 + 32) database];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000717E8(v4);

      if ((v6 & 2) != 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
    }
  }
}

void sub_1000377A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000377B8(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [*(a1 + 40) parentObjectID];
  *(*(*(a1 + 48) + 8) + 24) = sub_100015328(v2, v3);

  if (*(*(*(a1 + 48) + 8) + 24) == 2)
  {
    v4 = [*(a1 + 32) database];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000717E8(v4);

      if ((v6 & 2) != 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
    }
  }
}

void sub_100037970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037988(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _authorizationStatusForContext:*(a1 + 32)];
    return;
  }

  v3 = CLSContextClasses();
  v4 = *(a1 + 32);
  v5 = [v3 containsObject:objc_opt_class()];

  if (v5)
  {
LABEL_5:
    v6 = *(a1 + 40);
    v17 = [*(a1 + 32) parentObjectID];
    v7 = [v6 _authorizationStatusForContextWithObjectID:v17];
    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) parentObjectID];
    *(*(*(a1 + 48) + 8) + 24) = [v9 _authorizationStatusForHandoutAssignedItem:v10];

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      return;
    }

    goto LABEL_5;
  }

  v11 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v12 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass()) || (v13 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = *(a1 + 40);
    v17 = [*(a1 + 32) parentObjectID];
    v7 = [v14 _authorizationStatusActivityWithID:v17];
  }

  else
  {
    v15 = *(a1 + 32);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) objectID];
    v7 = [v16 _authorizationStatusForHandoutAssignedItem:v17];
  }

LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = v7;
}

void sub_100037E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = WeakRetained[5];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [WeakRetained[5] objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
          v10 = v9;
          if (v9)
          {
            v11 = sub_1000E56D4(v9);
            [v3 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) setObject:v3 forKeyedSubscript:@"Data observers"];
  }

  else
  {
    CLSInitLog();
    v12 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "PDEndpointServer self went away while trying to statusReport", buf, 2u);
    }
  }
}

void sub_10003827C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.endpointServer", attr, v2);
  v4 = qword_10024D860;
  qword_10024D860 = v3;
}

uint64_t sub_10003903C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = PBReaderReadString();
          v22 = 48;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v21 = PBReaderReadString();
          v22 = 8;
        }

        goto LABEL_51;
      }

      if (v13 == 4)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          v35 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v35 & 0x7F) << v24;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }

LABEL_55:
        v31 = 24;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_38;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_59:
        v31 = 40;
      }

      *(a1 + v31) = v20;
LABEL_61:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 32;
        break;
      case 2:
        v21 = PBReaderReadString();
        v22 = 56;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 16;
        break;
      default:
        goto LABEL_38;
    }

LABEL_51:
    v30 = *(a1 + v22);
    *(a1 + v22) = v21;

    goto LABEL_61;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10003A044(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 16), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_38:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10003B9B8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 10)
        {
          switch(v13)
          {
            case 8:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 116) |= 4u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v47 & 0x7F) << v31;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  v24 = 0;
                  goto LABEL_100;
                }
              }

              if ([a2 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v33;
              }

LABEL_100:
              v44 = 88;
              goto LABEL_109;
            case 9:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 116) |= 1u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v47 & 0x7F) << v38;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  v24 = 0;
                  goto LABEL_108;
                }
              }

              if ([a2 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v40;
              }

LABEL_108:
              v44 = 32;
              goto LABEL_109;
            case 0xA:
              v14 = objc_alloc_init(PDDPAdminRequestRequestor);
              objc_storeStrong((a1 + 96), v14);
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !sub_1000B301C(v14, a2))
              {
LABEL_112:

                return 0;
              }

              goto LABEL_66;
          }
        }

        else if (v13 > 99)
        {
          if (v13 == 100)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addAdminRequestAccountIds:v14];
            }

            goto LABEL_67;
          }

          if (v13 == 200)
          {
            v16 = PBReaderReadString();
            v17 = 8;
            goto LABEL_81;
          }
        }

        else
        {
          if (v13 == 11)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 116) |= 2u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v47 & 0x7F) << v25;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_96:
            v44 = 72;
            goto LABEL_109;
          }

          if (v13 == 12)
          {
            v16 = PBReaderReadString();
            v17 = 40;
LABEL_81:
            v37 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_110;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 24;
            goto LABEL_81;
          case 2:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_81;
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 56;
LABEL_52:
            objc_storeStrong((a1 + v15), v14);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {
              goto LABEL_112;
            }

LABEL_66:
            PBReaderRecallMark();
LABEL_67:

            goto LABEL_110;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            v14 = objc_alloc_init(PDDPDate);
            v15 = 64;
          }

          else
          {
            v14 = objc_alloc_init(PDDPDate);
            v15 = 48;
          }

          goto LABEL_52;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(PDDPStatus);
          objc_storeStrong((a1 + 104), v14);
          v47 = 0;
          v48 = 0;
          if (!PBReaderPlaceMark() || !sub_1000E2FD8(v14, a2))
          {
            goto LABEL_112;
          }

          goto LABEL_66;
        }

        if (v13 == 7)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v47 & 0x7F) << v18;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_104;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_104:
          v44 = 112;
LABEL_109:
          *(a1 + v44) = v24;
          goto LABEL_110;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_110:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10003D560(id a1)
{
  v1 = setiopolicy_np(3, 0, 2);
  CLSInitLog();
  v2 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "_schoolworkUbiquitousContainerURL - setiopolicy_np() returned status: %d", v3, 8u);
  }
}

void sub_10003D72C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  CLSInitLog();
  v7 = CLSLogAuthorization;
  if (a2)
  {
    if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully fetched ORG admin user recordID", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ORG admin user not found; error: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003D954(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  CLSInitLog();
  v7 = CLSLogAuthorization;
  if (a2)
  {
    if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully fetched current user recordID", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Current user not found; error: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DC74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003DC90(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

void sub_10003DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10003DF2C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

id sub_10003E1B4()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E31C;
  block[3] = &unk_100202CA8;
  block[4] = objc_opt_self();
  if (qword_10024D878 != -1)
  {
    dispatch_once(&qword_10024D878, block);
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10003DC74;
  v8 = sub_10003DC84;
  v9 = 0;
  v0 = sub_10003E554();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003E5A8;
  v3[3] = &unk_100202CD0;
  v3[4] = &v4;
  dispatch_sync(v0, v3);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003E328(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003DC74;
  v16 = sub_10003DC84;
  v17 = qword_10024D870;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003DC74;
  v10 = sub_10003DC84;
  v11 = qword_10024D870;
  v4 = sub_10003E554();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E5C0;
  block[3] = &unk_100202CF8;
  block[7] = &v18;
  block[8] = v3;
  block[4] = &v6;
  block[5] = &v22;
  block[6] = &v12;
  dispatch_sync(v4, block);

  if (v2)
  {
    (*(v2 + 2))(v2, *(v23 + 24), *(v19 + 24), v13[5], v7[5]);
  }

  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void sub_10003E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_10003E554()
{
  if (qword_10024D8B0 != -1)
  {
    dispatch_once(&qword_10024D8B0, &stru_100202E98);
  }

  v1 = qword_10024D8A8;

  return v1;
}

void sub_10003E5C0(id *a1)
{
  sub_100140FFC();
  v6 = [a1[8] accountInfo];
  v7 = qword_10024D870;
  qword_10024D870 = v6;

  objc_storeStrong((*(a1[4] + 1) + 40), v6);
  v8 = *(*(a1[4] + 1) + 40);
  if (v8 && (v9 = *(v8 + 32)) != 0)
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = *(*(a1[6] + 1) + 40);
    if (!v12)
    {
      v10 = 0;
      v21 = 0;
      v1 = 0;
      v11 = 1;
      goto LABEL_22;
    }

    v13 = *(v12 + 32);
    v10 = 0;
    v11 = 1;
    if (!v13)
    {
      v21 = 0;
      v1 = 0;
      goto LABEL_22;
    }

    v1 = v13;
  }

  v14 = *(*(a1[4] + 1) + 40);
  if (!v14 || (v15 = *(v14 + 32)) == 0)
  {
    *(*(a1[5] + 1) + 24) = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_42:

    goto LABEL_43;
  }

  v2 = v15;
  v16 = *(*(a1[6] + 1) + 40);
  if (!v16 || (v17 = *(v16 + 32)) == 0)
  {
    *(*(a1[5] + 1) + 24) = 1;
    goto LABEL_41;
  }

  v3 = v17;
  v18 = *(*(a1[4] + 1) + 40);
  if (v18)
  {
    v18 = v18[4];
  }

  v4 = v18;
  v19 = *(*(a1[6] + 1) + 40);
  if (v19)
  {
    v19 = v19[4];
  }

  v20 = v19;
  v21 = 1;
  if (![v4 isEqualToString:v20])
  {
    *(*(a1[5] + 1) + 24) = 1;

LABEL_40:
LABEL_41:

    if ((v11 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v63 = v20;
  v64 = v4;
LABEL_22:
  v22 = *(*(a1[4] + 1) + 40);
  if (v22 && (v23 = *(v22 + 40)) != 0)
  {
    v24 = v23;
    v4 = 0;
  }

  else
  {
    v25 = *(*(a1[6] + 1) + 40);
    if (!v25 || (v26 = *(v25 + 40)) == 0)
    {
      *(*(a1[5] + 1) + 24) = 0;
      if (v21)
      {
        goto LABEL_39;
      }

      goto LABEL_95;
    }

    v60 = v26;
    v24 = 0;
    v4 = 1;
  }

  v27 = *(*(a1[4] + 1) + 40);
  if (!v27 || (v28 = *(v27 + 40)) == 0)
  {
    *(*(a1[5] + 1) + 24) = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v29 = v28;
  v65 = v21;
  v30 = *(*(a1[6] + 1) + 40);
  if (!v30 || (v31 = *(v30 + 40)) == 0)
  {
    *(*(a1[5] + 1) + 24) = 1;

    if ((v4 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:

    goto LABEL_38;
  }

  v32 = v31;
  v61 = v4;
  v33 = *(*(a1[4] + 1) + 40);
  if (v33)
  {
    v34 = *(v33 + 40);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*(a1[6] + 1) + 40);
  v62 = v1;
  if (v35)
  {
    v35 = v35[5];
  }

  v36 = v35;
  v4 = v34;
  *(*(a1[5] + 1) + 24) = [v4 isEqualToString:v36] ^ 1;

  v1 = v62;
  v21 = v65;
  if (v61)
  {
    goto LABEL_37;
  }

LABEL_38:

  if (v21)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_95:
  if (v11)
  {
    goto LABEL_42;
  }

LABEL_43:

  v37 = *(*(a1[6] + 1) + 40);
  if (v37)
  {
    v38 = v37[3];
  }

  else
  {
    v38 = 0;
  }

  v39 = *(*(a1[4] + 1) + 40);
  if (v39)
  {
    v40 = v39[3];
  }

  else
  {
    v40 = 0;
  }

  if (v38 != v40)
  {
    goto LABEL_57;
  }

  if (v37)
  {
    v41 = v37[4];
    if (v39)
    {
LABEL_50:
      v42 = v39[4];
      goto LABEL_51;
    }
  }

  else
  {
    v41 = 0;
    if (v39)
    {
      goto LABEL_50;
    }
  }

  v42 = 0;
LABEL_51:
  if (v41 != v42)
  {
LABEL_57:
    v43 = 1;
    goto LABEL_58;
  }

  if (v37)
  {
    LODWORD(v37) = v37[5];
  }

  if (v39)
  {
    LODWORD(v39) = v39[5];
  }

  v43 = v37 != v39;
LABEL_58:
  *(*(a1[7] + 1) + 24) = v43;
  if ((*(*(a1[5] + 1) + 24) & 1) != 0 || *(*(a1[7] + 1) + 24) == 1)
  {
    CLSInitLog();
    v44 = CLSLogDefault;
    v1 = "rror";
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v45 = *(*(a1[6] + 1) + 40);
      *buf = 138412290;
      v67 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "oldAccountInfo: %@", buf, 0xCu);
    }

    CLSInitLog();
    v46 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v47 = *(*(a1[4] + 1) + 40);
      *buf = 138412290;
      v67 = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "newAccountInfo: %@", buf, 0xCu);
    }
  }

  if (qword_10024D870 && (v48 = *(qword_10024D870 + 72)) != 0)
  {
    v49 = v48;
    v50 = 0;
  }

  else
  {
    v51 = *(*(a1[6] + 1) + 40);
    if (!v51)
    {
      return;
    }

    v52 = *(v51 + 72);
    if (!v52)
    {
      return;
    }

    v1 = v52;
    v49 = 0;
    v50 = 1;
  }

  LODWORD(v53) = qword_10024D870;
  v54 = qword_10024D870 != 0;
  if (!qword_10024D870)
  {
    v55 = 0;
LABEL_100:
    v3 = 0;
    goto LABEL_85;
  }

  v55 = *(qword_10024D870 + 72);
  if (!v55)
  {
    v54 = 0;
    LODWORD(v53) = 0;
    goto LABEL_85;
  }

  v53 = *(*(a1[6] + 1) + 40);
  if (!v53)
  {
    goto LABEL_100;
  }

  v3 = *(v53 + 72);
  if (v3)
  {
    v56 = qword_10024D870;
    if (qword_10024D870)
    {
      v56 = *(qword_10024D870 + 72);
    }

    v4 = v56;
    v57 = *(*(a1[6] + 1) + 40);
    if (v57)
    {
      v57 = v57[9];
    }

    a1 = v57;
    if ([v4 isEqualToString:a1])
    {

      if (v50)
      {
      }

      return;
    }

    v54 = 1;
    LODWORD(v53) = 1;
  }

  else
  {
    LODWORD(v53) = 0;
    v54 = 1;
  }

LABEL_85:
  if (qword_10024D870)
  {
    v58 = *(qword_10024D870 + 72);
    if (v53)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v58 = 0;
    if (v53)
    {
LABEL_87:

      if (!v54)
      {
        goto LABEL_88;
      }

LABEL_103:

      if ((v50 & 1) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }
  }

  if (v54)
  {
    goto LABEL_103;
  }

LABEL_88:

  if (v50)
  {
LABEL_104:
  }

LABEL_105:

  if (v58)
  {
    if (qword_10024D870)
    {
      v59 = *(qword_10024D870 + 72);
    }

    CLSAdoptPersona();
  }
}

void sub_10003EC80(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ED30;
  block[3] = &unk_100202D40;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, block);
}

void sub_10003ED30(uint64_t a1)
{
  atomic_store(0, byte_10024D880);
  v2 = *(a1 + 32);
  CLSInitLog();
  v3 = CLSLogDefault;
  if (v2)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to get iCloud Drive initial sync state. Error: %{public}@", buf, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v14 = CLSiCloudDriveInitialSyncStatusKey;
    v15 = CLSiCloudDriveInitialSyncErrorKey;
    v5 = CLSInitialiCloudDriveSyncCompleteNotificationName;
    v6 = *(a1 + 32);
    v16 = &__kCFBooleanFalse;
    v17 = v6;
    v7 = &v16;
    v8 = &v14;
    v9 = 2;
  }

  else
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "iCloud Drive initial sync complete", buf, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = CLSInitialiCloudDriveSyncCompleteNotificationName;
    v12 = CLSiCloudDriveInitialSyncStatusKey;
    v13 = &__kCFBooleanTrue;
    v7 = &v13;
    v8 = &v12;
    v9 = 1;
  }

  v10 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9, v12, v13, v14, v15, v16, v17];
  [v4 postNotificationName:v5 object:0 userInfo:v10];
}

_WORD *sub_10003F2E8(_WORD *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDAccountInfo;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
      a1[5] = 257;
    }
  }

  return a1;
}

void sub_10003F368(uint64_t a1)
{
  v2 = [*(a1 + 72) tokenForAccount:*(a1 + 40) withAltDSID:*(a1 + 48) forService:@"com.apple.gs.orion.ingest" fromAccountStore:*(a1 + 56)];
  sub_10003F68C(*(a1 + 32), v2);

  v3 = [*(a1 + 72) tokenForAccount:*(a1 + 40) withAltDSID:*(a1 + 48) forService:@"com.apple.gs.ee.search" fromAccountStore:*(a1 + 56)];
  sub_10003F69C(*(a1 + 32), v3);

  v4 = *(a1 + 32);
  v20 = 0;
  v5 = sub_1000E0F2C(PDFileManager, v4, &v20);
  v6 = v20;
  v7 = v20;
  CLSInitLog();
  v8 = CLSLogDefault;
  if (v7)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get the multimedia cache directory URL. Error: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Multimedia cache directory URL: %@", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    objc_storeStrong((v9 + 128), v5);
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_storeStrong((v10 + 136), v6);
    }
  }

  v11 = *(a1 + 72);
  v19 = 0;
  v12 = [v11 _schoolworkUbiquitousContainerURL:&v19];
  v13 = v19;
  v14 = v19;
  CLSInitLog();
  v15 = CLSLogDefault;
  if (v14)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get the ubiquity container URL. Error: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Ubiquity Container URL: %@", buf, 0xCu);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    objc_storeStrong((v16 + 80), v12);
    v17 = *(a1 + 32);
    if (v17)
    {
      objc_storeStrong((v17 + 88), v13);
    }
  }

  if ([*(a1 + 64) isAuthenticated])
  {
    [*(a1 + 32) _updateOrgAdminUserRecordID];
    [*(a1 + 32) _updateUserRecordID];
  }

  if ((atomic_exchange(byte_10024D880, 1u) & 1) == 0)
  {
    CLSInitLog();
    v18 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Checking iCloud Drive initial sync completion state", buf, 2u);
    }

    [*(a1 + 72) checkForiCloudDriveInitialSync];
  }
}

void sub_10003F68C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_10003F69C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_10003F6AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  objc_opt_self();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003F7F0;
  v14[3] = &unk_100202DB8;
  v15 = v6;
  v7 = v6;
  v8 = objc_retainBlock(v14);
  if (v5)
  {
    v9 = v5[9];
  }

  v12 = v5;
  v13 = v8;
  v10 = v8;
  v11 = v5;
  CLSPerformWithPersona();
}

void sub_10003F7F0(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = qos_class_self();
  v9 = dispatch_get_global_queue(v8, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003F8D8;
  v11[3] = &unk_100202D90;
  v14 = a3;
  v12 = v7;
  v13 = *(a1 + 32);
  v15 = a2;
  v10 = v7;
  dispatch_async(v9, v11);
}

uint64_t sub_10003F8D8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    CLSInitLog();
    v2 = CLSLogAuthorization;
    if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "renewCredentialsForAccount failed with error:%@. Setting roster and handout authentication states to CLSAuthenticationStateInvalid.", &v9, 0xCu);
    }

    v3 = sub_10003E1B4();
    if (v3)
    {
      *(v3 + 12) = 0x100000001;
    }

    v4 = *(a1 + 48);
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_10003F9D0(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 aida_accountForAltDSID:v5];
  v7 = v6;
  if (v3)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v3)
    {
      if (v6)
      {
        goto LABEL_13;
      }

      v9 = @"PDAccountInfo renewCredentialsForAccount has no account.";
    }

    else
    {
      v9 = @"PDAccountInfo renewCredentialsForAccount has no accountStore.";
    }

    v14 = [NSError cls_createErrorWithCode:100 description:v9];
    (*(*(a1 + 40) + 16))();

    goto LABEL_13;
  }

  v10 = *(a1 + 48);
  v19[0] = &__kCFBooleanTrue;
  v18[0] = kACRenewCredentialsShouldForceKey;
  v18[1] = kACRenewCredentialsShouldAvoidUIKey;
  v11 = [NSNumber numberWithBool:(v10 & 1) == 0];
  v19[1] = v11;
  v18[2] = kACRenewCredentialsServicesKey;
  v17[0] = @"com.apple.gs.orion.ingest";
  v17[1] = @"com.apple.gs.ee.search";
  v12 = [NSArray arrayWithObjects:v17 count:2];
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003FC08;
  v15[3] = &unk_100202DE0;
  v16 = *(a1 + 40);
  [v3 renewCredentialsForAccount:v7 options:v13 completion:v15];

LABEL_13:
}

void sub_10003FC24(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003FCC4;
  v5[3] = &unk_100202E28;
  v6 = objc_opt_self();
  sub_10003F6AC(v6, v4, a3, v5);
}

void sub_10003FCC4(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  CLSInitLog();
  v8 = CLSLogAuthorization;
  if (a2)
  {
    if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 stringFromACAccountCredentialRenewResult:a3];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "renewCredentialsForAccount result:%@", &v12, 0xCu);
    }

    if (!a3)
    {
      sub_10003E328(PDAccountInfo, 0);
      [CLSUtil postNotificationAsync:"com.apple.progressd.accountChanged"];
    }
  }

  else if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "renewCredentialsForAccount failed with error:%@", &v12, 0xCu);
  }
}

void sub_10003FE2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  objc_opt_self();
  v7 = sub_10003E1B4();
  v8 = v7;
  if (v7 && v7[3])
  {
    [v7 updateAuthenticationState:a2 forServiceID:v6 userInteractive:a4];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "skipping updateAuthenticationState (no current account). refreshing instead.", v10, 2u);
    }

    sub_10003E328(PDAccountInfo, 0);
  }
}

uint64_t sub_10003FF10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v8 = v6[9];
  v9 = v8;
  if (!v8)
  {
LABEL_16:
    v10 = 1;
    goto LABEL_17;
  }

  if (*(v6 + 8) != 1)
  {
    if (v7)
    {
      v11 = [v8 isEqualToString:v7];
      v10 = v11;
      if (a4 && (v11 & 1) == 0)
      {
        v12 = CLSErrorCodeDomain;
        v18 = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithFormat:@"Caller does not have the expected user persona, '%@' != '%@'", v7, v9];
        v19 = v13;
        v14 = &v19;
        v15 = &v18;
LABEL_14:
        v16 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:1];
        *a4 = [NSError errorWithDomain:v12 code:311 userInfo:v16];

        v10 = 0;
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v10 = [v8 isEqualToString:v7];
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  if ((v10 & 1) == 0)
  {
    v12 = CLSErrorCodeDomain;
    v20 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Caller does not have the expected user persona, '%@' != '%@'", v7, v9];
    v21 = v13;
    v14 = &v21;
    v15 = &v20;
    goto LABEL_14;
  }

LABEL_17:

  return v10;
}

void sub_10004010C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10003E1B4();
  if (v3)
  {
    v4 = [[AAQuotaInfoRequest alloc] initDetailedRequestWithAccount:v3[3]];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000402BC;
    v6[3] = &unk_100202E50;
    v8 = v2;
    v7 = v3;
    [v4 performRequestWithHandler:v6];
  }

  else
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"No valid user logged in.";
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v4 = [NSError errorWithDomain:CLSErrorCodeDomain code:1 userInfo:v5];

    (*(v2 + 2))(v2, 0, 0, 0, v4);
  }
}

void sub_1000402BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Error during AAQuotaInfoRequest:performRequestWithHandler:";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:CLSErrorCodeDomain code:303 userInfo:v8];
  }

  else
  {
    v11 = [v6 error];
    v9 = v11;
    if (!v11)
    {
      v12 = [v7 availableStorageInBytes];
      [v12 unsignedIntegerValue];

      v13 = [v7 usedStorageInBytes];
      [v13 unsignedIntegerValue];

      v14 = [v7 totalStorageInBytes];
      [v14 unsignedIntegerValue];

      [*(a1 + 32) updateAuthenticationState:1 forServiceID:@"iCloudDriveServiceName" userInteractive:1];
      v10 = *(*(a1 + 40) + 16);
      goto LABEL_4;
    }

    if ([v11 code] == 401)
    {
      [*(a1 + 32) updateAuthenticationState:0 forServiceID:@"iCloudDriveServiceName" userInteractive:1];
    }
  }

  v10 = *(*(a1 + 40) + 16);
LABEL_4:
  v10();
}

uint64_t sub_100040498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 isEqualToString:@"orion"])
    {
      v6 = 16;
    }

    else if ([v4 isEqualToString:@"apple_school_manager"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"apple_business_manager"))
    {
      v6 = 12;
    }

    else
    {
      if (![v4 isEqualToString:@"iCloudDriveServiceName"])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v6 = 20;
    }

    v5 = *(a1 + v6);
  }

LABEL_9:

  return v5;
}

BOOL sub_10004054C(_BOOL8 result)
{
  if (result)
  {
    return *(result + 32) && *(result + 40) != 0;
  }

  return result;
}

BOOL sub_100040570(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) && *(result + 56) != 0;
  }

  return result;
}

void sub_1000408B8(uint64_t a1)
{
  if (a1)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2020000000;
    v3 = 0;
    v1 = *(a1 + 72);
    CLSPerformWithPersona();
    _Block_object_dispose(v2, 8);
  }
}

void sub_10004095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040974(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = *(v2 + 96);
  if (!v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 104);
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
LABEL_6:
    if ([v5 code] == 320)
    {
      [*(a1 + 32) _updateOrgAdminUserRecordID];
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = *(v6 + 96);
      }

      *(*(*(a1 + 40) + 8) + 24) = v6 != 0;
    }

    goto LABEL_10;
  }

LABEL_10:
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = *(v7 + 112);
  if (v8)
  {

    goto LABEL_19;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 120);
  }

  else
  {
LABEL_25:
    v10 = 0;
  }

  if ([v10 code] == 320)
  {
    [*(a1 + 32) _updateUserRecordID];
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = *(v11 + 112);
    }

    *(*(*(a1 + 40) + 8) + 24) = v11 != 0;
  }

LABEL_19:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {

    [CLSUtil postNotificationAsync:"com.apple.progressd.accountChanged"];
  }
}

void sub_1000410CC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.accountInfo", attr, v2);
  v4 = qword_10024D8A8;
  qword_10024D8A8 = v3;
}

id sub_10004116C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041210;
  block[3] = &unk_100202CA8;
  block[4] = objc_opt_self();
  if (qword_10024D8C8 != -1)
  {
    dispatch_once(&qword_10024D8C8, block);
  }

  v0 = qword_10024D8C0;

  return v0;
}

uint64_t sub_100041210(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10024D8C0;
  qword_10024D8C0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100041360(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) setDefaultValue:@"xp_amp_schoolwork_perf" forKey:@"cls-app-metrics-perf-topic-name"];
  [*(*(a1 + 32) + 8) setDefaultValue:&off_10021B5A0 forKey:@"metrics"];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100041C1C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &selRef_hasSurveyStepAnswer;
    v6 = &selRef_hasSurveyStepAnswer;
    v7 = &selRef_hasSurveyStepAnswer;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v39 & 0x7F) << v8;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        switch(v16)
        {
          case 1:
            v19 = PBReaderReadString();
            v20 = *(v5 + 589);
            goto LABEL_55;
          case 2:
            v19 = PBReaderReadString();
            v20 = *(v6 + 590);
            goto LABEL_55;
          case 3:
            v19 = PBReaderReadString();
            v20 = *(v7 + 591);
LABEL_55:
            v29 = *(a1 + v20);
            *(a1 + v20) = v19;

            goto LABEL_56;
        }
      }

      else if (v16 > 5)
      {
        if (v16 == 6)
        {
          v17 = objc_alloc_init(PDDPDate);
          v18 = 56;
LABEL_51:
          objc_storeStrong((a1 + v18), v17);
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v17, a2))
          {
            goto LABEL_72;
          }

LABEL_53:
          PBReaderRecallMark();

          goto LABEL_56;
        }

        if (v16 == 7)
        {
          v17 = objc_alloc_init(PDDPTypedValue);
          objc_storeStrong((a1 + 72), v17);
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !sub_100154054(v17, a2))
          {
LABEL_72:

            return 0;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v16 == 4)
        {
          if ((v15 & 7) == 2)
          {
            v39 = 0;
            v40 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v22 = [a2 position];
              if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v23 = 0;
              v24 = 0;
              v25 = 0;
              while (1)
              {
                v41 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v41 & 0x7F) << v23;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v14 = v24++ >= 9;
                if (v14)
                {
                  goto LABEL_49;
                }
              }

              [a2 hasError];
LABEL_49:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v31 = v6;
            v32 = v5;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v14 = v34++ >= 9;
              if (v14)
              {
                goto LABEL_69;
              }
            }

            [a2 hasError];
LABEL_69:
            PBRepeatedInt32Add();
            v5 = v32;
            v6 = v31;
            v7 = &selRef_hasSurveyStepAnswer;
          }

          goto LABEL_56;
        }

        if (v16 == 5)
        {
          v17 = objc_alloc_init(PDDPDate);
          v18 = 48;
          goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000429A0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a4;
  v14 = a7;
  if (a1)
  {
    v25 = 0;
    v15 = sub_100042AE4(a1, a3, a2, &v25);
    v16 = v15;
    if (v25)
    {
      v17 = 0;
    }

    else
    {
      v24 = a6;
      if (v15)
      {
        v18 = *(v15 + 24);
        v19 = *(v16 + 16);
        v20 = *(v16 + 32);
      }

      else
      {
        v19 = 0;
        v18 = 0;
        v20 = 0;
      }

      v21 = v20;
      v22 = sub_100042D0C(a1, v13, v21);

      v17 = [a1 selectAll:a2 where:v18 orderBy:v22 limit:a5 offset:v24 bindings:v19 block:v14];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void *sub_100042AE4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      v18 = 0;
      v9 = [v7 cls_normalizedPredicate:a1 error:&v18];
      v10 = v18;

      if (v10)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "normalizing predicate failed! %{public}@", buf, 0xCu);
        }

        [NSError cls_assignError:a4 fromError:v10];
        v12 = 0;
      }

      else
      {
        v13 = [a3 entityName];
        v14 = [v13 stringByAppendingString:@"."];
        v15 = sub_1000974F0([PDDatabaseWhereClause alloc], v9, v14);
        if (sub_10009758C(v15, a4))
        {
          v12 = v15;
        }

        else
        {
          CLSInitLog();
          v16 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v20 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "parsing predicate failed! %{public}@", buf, 0xCu);
          }

          [NSError cls_assignError:a4 fromError:0];
          v12 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = v7;
  }

  return v12;
}

id sub_100042D0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 count])
  {
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 key];
          if (!v14)
          {
            CLSInitLog();
            v18 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v28 = v12;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "parsing sort descriptors failed! Invalid sort descriptor: %{public}@", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v13);
            goto LABEL_20;
          }

          v15 = v14;
          v16 = objc_alloc_init(NSMutableString);
          [v16 appendString:@" "];
          if (v6)
          {
            [v16 appendString:v6];
          }

          [v16 appendString:{v15, v21}];
          if ([v12 ascending])
          {
            v17 = @" ASC";
          }

          else
          {
            v17 = @" DESC";
          }

          [v16 appendString:v17];
          [v7 addObject:v16];

          objc_autoreleasePoolPop(v13);
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v19 = [v7 componentsJoinedByString:{@", "}];

    v5 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_10004308C(id a1)
{
  qword_10024D8D0 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.ClassKitProgressNotifications" queue:&_dispatch_main_q];

  _objc_release_x1();
}

void sub_1000430DC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:@"title"];
  v4 = [v2 objectForKeyedSubscript:@"message"];
  v5 = [v2 objectForKeyedSubscript:@"alternateButton"];
  v6 = [v2 objectForKeyedSubscript:@"defaultButton"];

  v20[0] = kCFUserNotificationAlertHeaderKey;
  v20[1] = kCFUserNotificationAlertMessageKey;
  v21[0] = v3;
  v21[1] = v4;
  v20[2] = kCFUserNotificationAlternateButtonTitleKey;
  v20[3] = kCFUserNotificationDefaultButtonTitleKey;
  v21[2] = v5;
  v21[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  error = 0;
  v8 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v7);
  if (v8)
  {
    v9 = v8;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v8, 0.0, &responseFlags);
    if ((responseFlags & 3) == 1)
    {
      v10 = [NSURL URLWithString:@"prefs:root=CLASSKIT"];
      v11 = +[LSApplicationWorkspace defaultWorkspace];
      v15 = 0;
      v12 = [v11 openSensitiveURL:v10 withOptions:0 error:&v15];
      v13 = v15;

      if ((v12 & 1) == 0)
      {
        CLSInitLog();
        v14 = CLSLogNotifications;
        if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v13;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to open ClassKit Settings. Error: %@", buf, 0xCu);
        }
      }
    }

    CFRelease(v9);
  }
}

void sub_100043340(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_self() notificationCenter];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];

  if (v7)
  {
    v18 = 0;
    v13 = [UNNotificationAttachment attachmentWithIdentifier:&stru_100206880 URL:v7 options:0 error:&v18];
    v14 = v18;
    if (!v13)
    {
      CLSInitLog();
      v15 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed generate notification attachment. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  [v10 setTitle:v6];
  [v10 setBody:v8];

  if (v13)
  {
    v19 = v13;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [v10 setAttachments:v16];
  }

  v17 = [UNNotificationRequest requestWithIdentifier:v12 content:v10 trigger:0];
  [v9 addNotificationRequest:v17 withCompletionHandler:&stru_100202F08];
}

void sub_10004355C(id a1, NSError *a2)
{
  v2 = a2;
  CLSInitLog();
  v3 = CLSLogNotifications;
  if (v2)
  {
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to post notification. Error: %@", &v4, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v4) = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Notification post successful", &v4, 2u);
  }
}

id sub_100043B24(void *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = objc_getAssociatedObject(a1, &off_100202F28);
    if (!v2)
    {
      v2 = [a1 select:objc_opt_class() where:0 bindings:0];
      if (v2)
      {
        objc_setAssociatedObject(a1, &off_100202F28, v2, 1);
      }
    }

    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100043BD0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1 lock];
    v4 = [a1 insertOrUpdateObject:v3];
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    objc_setAssociatedObject(a1, &off_100202F28, v5, 1);
    [a1 unlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100043DAC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PDDPPersonLinkId__context;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PDDPPersonLinkId__personLinkId;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100044738(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v16 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 24), v16);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 8;
LABEL_25:
    v16 = *(a1 + v15);
    *(a1 + v15) = v14;
LABEL_26:

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

void *sub_100046408(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = PDRetry;
    v10 = objc_msgSendSuper2(&v22, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 6, a2);
      a1[3] = 0;
      a1[5] = 0;
      a1[7] = a3;
      v11 = objc_retainBlock(v9);
      v12 = a1[8];
      a1[8] = v11;

      v13 = CLSDispatchQueueName();
      v14 = [v13 UTF8String];
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      if (qword_10024D8E8 != -1)
      {
        dispatch_once(&qword_10024D8E8, &stru_100203048);
      }

      v16 = qword_10024D8E0;
      v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
      v18 = a1[2];
      a1[2] = v17;

      v19 = objc_opt_new();
      v20 = a1[1];
      a1[1] = v19;
    }
  }

  return a1;
}

void sub_10004656C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = a1[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046638;
    block[3] = &unk_100202F60;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100046638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000466EC;
    v4[3] = &unk_100202F38;
    v5 = *(a1 + 32);
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

uint64_t sub_1000466EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (v4)
  {
    v5 = v3[1];
    v6 = objc_retainBlock(v4);
    [v5 addObject:v6];

    v3 = v9;
  }

  v7 = v3[3];
  if (v7)
  {
    *(v3 + 32) = v7 == 1;
  }

  else
  {
    [v3 _perform];
  }

  return _objc_release_x1();
}

void sub_100046880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004689C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v7 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004699C;
    block[3] = &unk_100202FB0;
    objc_copyWeak(&v11, &location);
    v12 = a2;
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void sub_10004699C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100046A6C;
    v4[3] = &unk_100202F88;
    v7 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

void sub_100046F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _perform];
    WeakRetained = v2;
  }
}

void sub_100046FAC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 48);
        v8 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100047108(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.retry", attr, v2);
  v4 = qword_10024D8E0;
  qword_10024D8E0 = v3;
}

void sub_100047490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PDSQLiteDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1000479FC(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (1)
  {
    result = sqlite3_exec(a1, a2, a3, a4, a5);
    if (result != 5)
    {
      break;
    }

    usleep(0x14u);
    a1 = v9;
    a2 = v8;
    a3 = v7;
    a4 = v6;
    a5 = v5;
  }

  return result;
}

id sub_100048150(sqlite3 *a1, int a2)
{
  if (a2)
  {
    v3 = sqlite3_errmsg(a1);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "";
    }

    v5 = [NSString stringWithUTF8String:v4];
    v13 = NSLocalizedDescriptionKey;
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.SQLite" code:a2 userInfo:v6];

    v11 = NSUnderlyingErrorKey;
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.progressd.SQLite" code:1 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000487D8()
{
  objc_end_catch();

  JUMPOUT(0x1000488B0);
}

void sub_1000487E8()
{
  objc_end_catch();

  if (v3)
  {
    objc_end_catch();
  }

  JUMPOUT(0x1000488D4);
}

void sub_1000488C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1000474C0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100048A24(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

BOOL sub_100048DA8(void *a1, sqlite3_stmt *pStmt, uint64_t a3)
{
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, pStmt);
  }

  if (a1[5])
  {
    v15 = pStmt;
    v16 = 0;
    v17 = sqlite3_column_count(pStmt);
    memset(v18, 0, sizeof(v18));
    v19 = 1065353216;
    v7 = 0;
    v14 = 0;
    while (1)
    {
      v8 = [PDSQLiteDatabase _stepStatement:pStmt hasRow:&v14 resultCode:0 error:a1[6]];
      if (!v8 || v14 != 1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = (*(a1[5] + 16))();
      v11 = v7;

      objc_autoreleasePoolPop(v9);
      if (v10)
      {
        v7 = v11;
        if (v14)
        {
          continue;
        }
      }

      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = v7;
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    [NSError cls_assignError:a3 fromError:v11];
    v8 = 0;
LABEL_14:

    sub_10004B8E8(v18);
    return v8;
  }

  else
  {
    v12 = [PDSQLiteDatabase _stepStatement:pStmt hasRow:0 resultCode:0 error:a3];
    sqlite3_reset(pStmt);
    return v12;
  }
}

__CFString *sub_100049330(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [NSString stringWithFormat:@"%@.", v1];
  }

  else
  {
    v2 = &stru_100206880;
  }

  return v2;
}

void sub_1000494D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10004950C(uint64_t a1, uint64_t a2)
{
  **(a1 + 40) = sqlite3_column_int64(*a2, *(a2 + 8));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 0;
}

void sub_1000497A0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = 1;
    v6 = 2;
    if (a2 != 23)
    {
      v6 = 0;
    }

    if (a2 != 18)
    {
      v5 = v6;
    }

    if (a2 == 9)
    {
      v7 = 3;
    }

    else
    {
      v7 = v5;
    }

    v9 = a1;
    v8 = [NSString stringWithUTF8String:a4];
    [v9 performUpdateBlock:v8 changeType:v7];
  }
}

void sub_10004AD9C(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_10004B118(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    sqlite3_bind_text(a1, a2, v7, -1, 0);
    goto LABEL_20;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sqlite3_bind_null(a1, a2);
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_11:
    sqlite3_bind_double(a1, a2, v8);
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!sub_1000CEAD8(v5))
    {
      sqlite3_bind_int64(a1, a2, [v5 longLongValue]);
      goto LABEL_20;
    }

    [v5 doubleValue];
    goto LABEL_11;
  }

  v9 = [v5 bytes];
  v10 = [v5 length];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = "";
  }

  sqlite3_bind_blob(a1, a2, v11, v10, 0);
LABEL_20:

  return (a2 + 1);
}

uint64_t sub_10004B2A8(sqlite3_stmt *a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        sub_10004B118(a1, a2, *(*(&v10 + 1) + 8 * v8));
        a2 = (a2 + 1);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return a2;
}

uint64_t **sub_10004B3DC(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ (v7 >> 11);
  v9 = 32769 * v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = 32769 * v8;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = v9 & (*&v10 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v15[2], v2))
  {
    goto LABEL_22;
  }

  return v15;
}

void sub_10004B660()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_10004B694(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10004B784(a1, prime);
    }
  }
}

void sub_10004B784(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10004B660();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_10004B8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

id sub_10004BE2C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = objc_opt_class();
    v10 = [v7 parentObjectID];
    v11 = [a1 select:v9 identity:v10];

    if (v11)
    {
      v12 = [v7 objectID];
      v13 = [a1 _progressEventsWithAssignedItem:v11 eventType:a3 activityID:v12 activityItemID:v8];
    }

    else
    {
      v14 = objc_opt_class();
      v15 = [v7 parentObjectID];
      v12 = [a1 select:v14 identity:v15];

      if (v12)
      {
        v16 = [v7 objectID];
        v13 = [a1 _progressEventsForContext:v12 eventType:a3 activityID:v16 activityItemID:v8];
      }

      else
      {
        CLSInitLog();
        v17 = CLSLogUpload;
        if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CLSActivity+InsightEvents failed to build events for activity", v19, 2u);
        }

        v13 = &__NSArray0__struct;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10004C3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contextPath];
  v5 = [*(a1 + 32) identifierPath];
  v6 = [v4 isEqualToArray:v5];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = [v3 objectID];
    v10 = sub_1000711FC(*(a1 + 40));
    v11 = [v10 objectID];
    v12 = sub_100163E08(v8, v9, v11, 1);

    if (v12)
    {
      v13 = [v12 state];
      objc_opt_self();
      if ((v13 - 3) >= 2)
      {
        v14 = sub_100017EA4(*(a1 + 40), v3, *(a1 + 72));
        v15 = v14;
        if (v14)
        {
          [v14 setActivityID:*(a1 + 48)];
          [v15 setObjectIDPath:*(a1 + 56)];
          [*(a1 + 64) addObject:v15];
        }
      }
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogUpload;
      if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [v3 objectID];
        v19 = 138412290;
        v20 = v18;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CLSActivity+InsightEvents: handoutAttachment - %@ is missing ACTIVITY state.", &v19, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_10004F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F3E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004F400(uint64_t a1)
{
  CLSInitLog();
  v2 = [*(a1 + 32) logSubsystem];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 operationID];
    v8 = [*(a1 + 40) count];
    *buf = 138543874;
    v41 = v4;
    v42 = 2114;
    v43 = v7;
    v44 = 2048;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response with %lu payload items", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      buf[0] = 0;
      v16 = *(a1 + 32);
      v17 = *(*(a1 + 48) + 8);
      obj = *(v17 + 40);
      [v16 processPayloadWithinWriteTransaction:v14 error:&obj stop:buf];
      objc_storeStrong((v17 + 40), obj);
      LOBYTE(v14) = buf[0];
      objc_autoreleasePoolPop(v15);
      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (*(*(a1 + 32) + 228) == 1)
  {
    CLSInitLog();
    v18 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 operationID];
      v24 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v41 = v20;
      v42 = 2114;
      v43 = v23;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ response processing terminated by failed status. error:%@", buf, 0x20u);
    }
  }

  v25 = +[PDUserDefaults sharedDefaults];
  v26 = [v25 enableVerboseLogging];

  if (v26)
  {
    CLSInitLog();
    v27 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v31 = *(a1 + 32);
      v32 = v30;
      v33 = [v31 operationID];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v33;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ response processing complete.", buf, 0x16u);
    }
  }

  return 1;
}

void sub_10004FB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FB30(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = [v26 objectID];
  v8 = sub_1000D6738(v6, v7);

  if ([v8 count])
  {
    v9 = objc_alloc_init(PDDPQueryRequest);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = objc_alloc_init(PDDPSchoolworkQueryZone);
    v13 = [*(a1 + 40) endpointInfo];
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 64);
    }

    else
    {
      v15 = 0;
    }

    [(PDDPSchoolworkQueryZone *)v12 setLimit:v15, a3];

    v16 = [v26 location];
    [(PDDPSchoolworkQueryZone *)v12 setZoneName:v16];

    [*(*(*(a1 + 48) + 8) + 40) setQueryZone:v12];
    [*(*(*(a1 + 48) + 8) + 40) setIncludeChildren:1];
    v17 = objc_alloc_init(PDDPSchoolworkSearchQuery);
    [(PDDPSchoolworkSearchQuery *)v17 setType:3];
    v18 = objc_alloc_init(PDDPSchoolworkSearchQuery);
    [(PDDPSchoolworkSearchQuery *)v18 setType:3];
    v19 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
    [(PDDPSchoolworkSearchCriteria *)v19 setFieldName:@"object_id"];
    [(PDDPSchoolworkSearchCriteria *)v19 setSearchOperator:7];
    if ([v8 count])
    {
      v20 = 0;
      do
      {
        v21 = [v8 objectAtIndexedSubscript:v20];
        v22 = sub_10001D4FC(v21);
        [v8 setObject:v22 atIndexedSubscript:v20];

        ++v20;
      }

      while (v20 < [v8 count]);
    }

    v23 = sub_100104444(v8);
    [(PDDPSchoolworkSearchCriteria *)v19 setValue:v23];
    [(PDDPSchoolworkSearchQuery *)v18 setCriteria:v19];
    v24 = objc_alloc_init(NSMutableArray);
    [v24 addObject:v18];
    [(PDDPSchoolworkSearchQuery *)v17 setContents:v24];
    [*(*(*(a1 + 48) + 8) + 40) setFilterQuery:v17];
    *v25 = 1;
  }

  objc_autoreleasePoolPop(v5);
}

id sub_10004FE98(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004FF3C;
    v6[3] = &unk_100202140;
    v7 = v3;
    v8 = a1;
    a1 = [a1 performTransaction:v6 forWriting:1];
  }

  return a1;
}

uint64_t sub_10004FF3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 11);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = +[NSMutableSet set];
  if (v3)
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  [v5 addObject:objc_opt_class()];
  [v5 addObject:objc_opt_class()];
  v55 = @"currentActivityID";
  v7 = +[NSNull null];
  v56 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];

  if (([*(a1 + 40) updateAll:objc_opt_class() set:v8 where:0 bindings:0] & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      *buf = 138543362;
      v50 = objc_opt_class();
      v12 = v50;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ failed to clear currentActivityID for CLSContexts", buf, 0xCu);
    }
  }

  v13 = *(a1 + 40);
  v14 = objc_opt_class();
  v15 = +[CLSContext entityName];
  v54 = v15;
  v16 = [NSArray arrayWithObjects:&v54 count:1];
  LOBYTE(v13) = [v13 deleteAll:v14 where:@"entity != ?" bindings:v16];

  if ((v13 & 1) == 0)
  {
    CLSInitLog();
    v17 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v19 = v17;
      v20 = objc_opt_class();
      *buf = 138543362;
      v50 = v20;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@ failed to clear PDPendingCKSyncItems for non-CLSContexts", buf, 0xCu);
    }
  }

  v6 = [*(a1 + 40) deleteAll:objc_opt_class() where:0 bindings:0];
  if ((v6 & 1) == 0)
  {
    CLSInitLog();
    v22 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      v24 = v22;
      v25 = objc_opt_class();
      *buf = 138543362;
      v50 = v25;
      v26 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@ failed to clear pending insight events", buf, 0xCu);
    }
  }

  if ((v4 & 1) == 0)
  {
LABEL_16:
    [v5 addObject:objc_opt_class()];
    [v5 addObject:objc_opt_class()];
    if ((v3 & 1) == 0)
    {
      if (sub_10016A3F0(*(a1 + 40), 0, @"PDCK_ClassKitZoneName"))
      {
        v6 = 1;
      }

      else
      {
        CLSInitLog();
        v27 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          v28 = *(a1 + 40);
          v29 = v27;
          v30 = objc_opt_class();
          *buf = 138543362;
          v50 = v30;
          v31 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}@ failed to clear progress zone", buf, 0xCu);
        }

        v6 = 0;
      }
    }
  }

LABEL_22:
  v44 = v6;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = v5;
  v33 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v46;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v45 + 1) + 8 * i);
        if (([*(a1 + 40) deleteAll:v37 where:0 bindings:0] & 1) == 0)
        {
          CLSInitLog();
          v38 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
          {
            v39 = *(a1 + 40);
            v40 = v38;
            v41 = objc_opt_class();
            *buf = 138543618;
            v50 = v41;
            v51 = 2114;
            v52 = v37;
            v42 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@ failed to delete local %{public}@ data", buf, 0x16u);
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v34);
  }

  return v44;
}

id sub_1000504A8(id result)
{
  if (result)
  {
    v1 = result;
    CLSInitLog();
    v2 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      v3 = v2;
      *buf = 138543362;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ removing existing ASM roster data.", buf, 0xCu);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000505D4;
    v5[3] = &unk_100203160;
    v5[4] = v1;
    return [v1 performTransaction:v5 forWriting:1];
  }

  return result;
}

uint64_t sub_1000505D4(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (qword_10024D8F8 != -1)
  {
    dispatch_once(&qword_10024D8F8, &stru_100203180);
  }

  v2 = qword_10024D8F0;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138543618;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (([*(a1 + 32) deleteAllWithoutTracking:v8 where:0 bindings:{0, v15, v16}] & 1) == 0)
        {
          CLSInitLog();
          v9 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
          {
            v10 = *(a1 + 32);
            v11 = v9;
            v12 = objc_opt_class();
            *buf = v15;
            v21 = v12;
            v22 = 2114;
            v23 = v8;
            v13 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ failed to purge local %{public}@ data", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  sub_100169F38(*(a1 + 32), 0, @"asmRefreshRequested");
  sub_100169F38(*(a1 + 32), 0, @"initialASMSyncComplete");
  return 1;
}