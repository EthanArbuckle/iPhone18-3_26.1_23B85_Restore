@interface PDSchoolworkCollaborationStateAdaptor
+ (BOOL)activityDomainFlagsAllowChanges:(unint64_t)changes;
+ (BOOL)attachmentWithStates:(id)states canBeSetToActivityState:(int64_t)state ignoreIsLocked:(BOOL)locked;
+ (BOOL)devMode_MutateStateChanges:(id)changes forDomain:(int64_t)domain;
+ (id)setActivityState:(int64_t)state forAttachment:(id)attachment forHandout:(id)handout senderPersonID:(id)d withStates:(id)states;
+ (void)devMode_DistributeState:(id)state sentByTeacher:(BOOL)teacher toTeacherStates:(id)states toStudentStates:(id)studentStates;
@end

@implementation PDSchoolworkCollaborationStateAdaptor

+ (BOOL)devMode_MutateStateChanges:(id)changes forDomain:(int64_t)domain
{
  changesCopy = changes;
  v6 = [changesCopy stateForDomain:domain];
  v7 = v6;
  if (v6 && [v6 domain] == 1 && objc_msgSend(v7, "state") == 3)
  {
    [changesCopy setState:4 forDomain:{objc_msgSend(v7, "domain")}];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)devMode_DistributeState:(id)state sentByTeacher:(BOOL)teacher toTeacherStates:(id)states toStudentStates:(id)studentStates
{
  teacherCopy = teacher;
  stateCopy = state;
  statesCopy = states;
  studentStatesCopy = studentStates;
  if (stateCopy)
  {
    if ([stateCopy domain] == 2)
    {
      if (!teacherCopy)
      {
        v12 = studentStatesCopy;
LABEL_9:
        [v12 addObject:stateCopy];
        goto LABEL_10;
      }
    }

    else
    {
      [studentStatesCopy addObject:stateCopy];
    }

    v12 = statesCopy;
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

+ (BOOL)activityDomainFlagsAllowChanges:(unint64_t)changes
{
  v3 = (~changes & 0x208) == 0 || (~changes & 0x108) == 0;
  v4 = (changes & 0x104) != 4 || v3;
  return !changes || v4;
}

+ (BOOL)attachmentWithStates:(id)states canBeSetToActivityState:(int64_t)state ignoreIsLocked:(BOOL)locked
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  statesCopy = states;
  v9 = [statesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
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
        objc_enumerationMutation(statesCopy);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if ([v13 domain] == 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [statesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    if (locked)
    {
      v14 = 1;
    }

    else
    {
      v14 = [self activityDomainFlagsAllowChanges:{objc_msgSend(v13, "flags")}];
    }

    if (state == 1)
    {
      isCompletedActivity = [v13 isCompletedActivity];
      goto LABEL_17;
    }

    if (state == 2)
    {
      isCompletedActivity = [v13 isIncompleteActivity];
LABEL_17:
      v16 = isCompletedActivity & v14;
      goto LABEL_21;
    }

    CLSInitLog();
    v17 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      stateCopy = state;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unsupported desired state %ld", buf, 0xCu);
    }
  }

LABEL_20:
  v16 = 0;
LABEL_21:

  return v16;
}

+ (id)setActivityState:(int64_t)state forAttachment:(id)attachment forHandout:(id)handout senderPersonID:(id)d withStates:(id)states
{
  attachmentCopy = attachment;
  handoutCopy = handout;
  dCopy = d;
  statesCopy = states;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = [statesCopy countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v15)
  {
    v17 = 0;
LABEL_21:
    CLSInitLog();
    v32 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      stateCopy = attachmentCopy;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Missing ACTIVITY domain state for attachment %@", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v47 = dCopy;
  v48 = handoutCopy;
  v49 = attachmentCopy;
  v17 = 0;
  v18 = 0;
  v19 = *v51;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(statesCopy);
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

    v16 = [statesCopy countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v16);
  if (!v18)
  {
    handoutCopy = v48;
    attachmentCopy = v49;
    dCopy = v47;
    goto LABEL_21;
  }

  if ((state - 1) >= 2)
  {
    CLSInitLog();
    v33 = CLSLogHandout;
    handoutCopy = v48;
    attachmentCopy = v49;
    dCopy = v47;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      stateCopy = state;
      v56 = 2112;
      v57 = v49;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Unsupported new state (%ld) for attachment %@", buf, 0x16u);
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v25 = [CLSCollaborationStateChange alloc];
  ownerPersonID = [v18 ownerPersonID];
  classID = [v18 classID];
  ownerPersonID2 = [v18 ownerPersonID];
  v29 = [v25 initWithObject:v49 ownerPersonID:ownerPersonID targetClassID:classID recipientPersonID:ownerPersonID2];

  if (state == 2 && (([v18 isCompletedActivity] & 1) != 0 || objc_msgSend(v18, "isReturnedActivity")))
  {
    CLSInitLog();
    v30 = CLSLogHandout;
    dCopy = v47;
    handoutCopy = v48;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      attachmentCopy = v49;
      stateCopy = v49;
      v31 = "Already DONE for attachment %@";
      goto LABEL_46;
    }

LABEL_32:
    attachmentCopy = v49;
  }

  else if ([v18 isReturnedActivity])
  {
    CLSInitLog();
    v30 = CLSLogHandout;
    dCopy = v47;
    handoutCopy = v48;
    if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    attachmentCopy = v49;
    stateCopy = v49;
    v31 = "Can't become INCOMPLETE/STARTED for attachment %@";
LABEL_46:
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);
  }

  else
  {
    flags = [v18 flags];
    if (v17)
    {
      state = [v17 state];
    }

    else
    {
      state = 0;
    }

    objc_opt_self();
    if (state == 2)
    {
      v37 = flags & 0xFFFFFFFFFFFFFFFCLL;
      v38 = flags & 0xFFFFFFFFFFFFFFFCLL | 1;
      dueDate = [v48 dueDate];
      if (dueDate)
      {
        v40 = dueDate;
        dueDate2 = [v48 dueDate];
        +[NSDate date];
        v42 = v46 = v37;
        v45 = [dueDate2 compare:v42];

        if (v45 == -1)
        {
          v38 = v46 | 0x11;
        }
      }

      v43 = state & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      objc_opt_self();
      v38 = flags & 0xFFFFFFFFFFFFFFEELL;
      v43 = state | 1;
    }

    [v29 addStates:statesCopy];
    [v29 setState:state forDomain:1];
    [v29 setFlags:v38 forDomain:1];
    [v29 setState:v43 forDomain:2];
    senderPersonID = [v29 senderPersonID];

    if (senderPersonID)
    {
      handoutCopy = v48;
      attachmentCopy = v49;
      dCopy = v47;
    }

    else
    {
      dCopy = v47;
      [v29 setSenderPersonID:v47];
      handoutCopy = v48;
      attachmentCopy = v49;
    }
  }

LABEL_27:

  return v29;
}

@end