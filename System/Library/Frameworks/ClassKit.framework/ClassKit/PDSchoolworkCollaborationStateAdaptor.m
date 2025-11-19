@interface PDSchoolworkCollaborationStateAdaptor
+ (BOOL)activityDomainFlagsAllowChanges:(unint64_t)a3;
+ (BOOL)attachmentWithStates:(id)a3 canBeSetToActivityState:(int64_t)a4 ignoreIsLocked:(BOOL)a5;
+ (BOOL)devMode_MutateStateChanges:(id)a3 forDomain:(int64_t)a4;
+ (id)setActivityState:(int64_t)a3 forAttachment:(id)a4 forHandout:(id)a5 senderPersonID:(id)a6 withStates:(id)a7;
+ (void)devMode_DistributeState:(id)a3 sentByTeacher:(BOOL)a4 toTeacherStates:(id)a5 toStudentStates:(id)a6;
@end

@implementation PDSchoolworkCollaborationStateAdaptor

+ (BOOL)devMode_MutateStateChanges:(id)a3 forDomain:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 stateForDomain:a4];
  v7 = v6;
  if (v6 && [v6 domain] == 1 && objc_msgSend(v7, "state") == 3)
  {
    [v5 setState:4 forDomain:{objc_msgSend(v7, "domain")}];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)devMode_DistributeState:(id)a3 sentByTeacher:(BOOL)a4 toTeacherStates:(id)a5 toStudentStates:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v9)
  {
    if ([v9 domain] == 2)
    {
      if (!v8)
      {
        v12 = v11;
LABEL_9:
        [v12 addObject:v9];
        goto LABEL_10;
      }
    }

    else
    {
      [v11 addObject:v9];
    }

    v12 = v10;
    goto LABEL_9;
  }

  CLSInitLog();
  v13 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing state.", v14, 2u);
  }

LABEL_10:
}

+ (BOOL)activityDomainFlagsAllowChanges:(unint64_t)a3
{
  v3 = (~a3 & 0x208) == 0 || (~a3 & 0x108) == 0;
  v4 = (a3 & 0x104) != 4 || v3;
  return !a3 || v4;
}

+ (BOOL)attachmentWithStates:(id)a3 canBeSetToActivityState:(int64_t)a4 ignoreIsLocked:(BOOL)a5
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if ([v13 domain] == 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    if (a5)
    {
      v14 = 1;
    }

    else
    {
      v14 = [a1 activityDomainFlagsAllowChanges:{objc_msgSend(v13, "flags")}];
    }

    if (a4 == 1)
    {
      v15 = [v13 isCompletedActivity];
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v15 = [v13 isIncompleteActivity];
LABEL_17:
      v16 = v15 & v14;
      goto LABEL_21;
    }

    CLSInitLog();
    v17 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v24 = a4;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unsupported desired state %ld", buf, 0xCu);
    }
  }

LABEL_20:
  v16 = 0;
LABEL_21:

  return v16;
}

+ (id)setActivityState:(int64_t)a3 forAttachment:(id)a4 forHandout:(id)a5 senderPersonID:(id)a6 withStates:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v15)
  {
    v17 = 0;
LABEL_21:
    CLSInitLog();
    v32 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v11;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Missing ACTIVITY domain state for attachment %@", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v47 = v13;
  v48 = v12;
  v49 = v11;
  v17 = 0;
  v18 = 0;
  v19 = *v51;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v50 + 1) + 8 * i);
      if ([v21 domain] == 1)
      {
        v22 = v18;
        v23 = v17;
        v18 = v21;
      }

      else
      {
        v22 = v17;
        v23 = v21;
        if ([v21 domain] != 2)
        {
          continue;
        }
      }

      v24 = v21;

      v17 = v23;
    }

    v16 = [v14 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v16);
  if (!v18)
  {
    v12 = v48;
    v11 = v49;
    v13 = v47;
    goto LABEL_21;
  }

  if ((a3 - 1) >= 2)
  {
    CLSInitLog();
    v33 = CLSLogHandout;
    v12 = v48;
    v11 = v49;
    v13 = v47;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v55 = a3;
      v56 = 2112;
      v57 = v49;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Unsupported new state (%ld) for attachment %@", buf, 0x16u);
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v25 = [CLSCollaborationStateChange alloc];
  v26 = [v18 ownerPersonID];
  v27 = [v18 classID];
  v28 = [v18 ownerPersonID];
  v29 = [v25 initWithObject:v49 ownerPersonID:v26 targetClassID:v27 recipientPersonID:v28];

  if (a3 == 2 && (([v18 isCompletedActivity] & 1) != 0 || objc_msgSend(v18, "isReturnedActivity")))
  {
    CLSInitLog();
    v30 = CLSLogHandout;
    v13 = v47;
    v12 = v48;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v49;
      v55 = v49;
      v31 = "Already DONE for attachment %@";
      goto LABEL_46;
    }

LABEL_32:
    v11 = v49;
  }

  else if ([v18 isReturnedActivity])
  {
    CLSInitLog();
    v30 = CLSLogHandout;
    v13 = v47;
    v12 = v48;
    if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    v11 = v49;
    v55 = v49;
    v31 = "Can't become INCOMPLETE/STARTED for attachment %@";
LABEL_46:
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);
  }

  else
  {
    v35 = [v18 flags];
    if (v17)
    {
      v36 = [v17 state];
    }

    else
    {
      v36 = 0;
    }

    objc_opt_self();
    if (a3 == 2)
    {
      v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
      v38 = v35 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v39 = [v48 dueDate];
      if (v39)
      {
        v40 = v39;
        v41 = [v48 dueDate];
        +[NSDate date];
        v42 = v46 = v37;
        v45 = [v41 compare:v42];

        if (v45 == -1)
        {
          v38 = v46 | 0x11;
        }
      }

      v43 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      objc_opt_self();
      v38 = v35 & 0xFFFFFFFFFFFFFFEELL;
      v43 = v36 | 1;
    }

    [v29 addStates:v14];
    [v29 setState:a3 forDomain:1];
    [v29 setFlags:v38 forDomain:1];
    [v29 setState:v43 forDomain:2];
    v44 = [v29 senderPersonID];

    if (v44)
    {
      v12 = v48;
      v11 = v49;
      v13 = v47;
    }

    else
    {
      v13 = v47;
      [v29 setSenderPersonID:v47];
      v12 = v48;
      v11 = v49;
    }
  }

LABEL_27:

  return v29;
}

@end