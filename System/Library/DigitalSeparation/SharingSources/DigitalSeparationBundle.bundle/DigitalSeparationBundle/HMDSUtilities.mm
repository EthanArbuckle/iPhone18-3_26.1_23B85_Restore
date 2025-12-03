@interface HMDSUtilities
+ (BOOL)canRemoveParticipantObject:(id)object fromHome:(id)home accessCodes:(id)codes;
+ (id)_combineAllFuturesWithNoResult:(id)result;
+ (id)combineAllFuturesFlatteningArrayResults:(id)results;
+ (id)identityForAccessCode:(id)code;
+ (id)identityForUser:(id)user;
+ (id)logCategory;
+ (id)outgoingInvitationForUserID:(id)d inHome:(id)home;
+ (id)participantForAccessCode:(id)code inHome:(id)home;
+ (id)participantForOutgoingInvitation:(id)invitation inHome:(id)home;
+ (id)participantForUser:(id)user inHome:(id)home;
+ (id)participantObjectForParticipant:(id)participant inHome:(id)home accessCodes:(id)codes;
+ (id)removeParticipantObject:(id)object fromHome:(id)home accessCodes:(id)codes context:(id)context;
+ (id)sharedResourceForHome:(id)home context:(id)context;
+ (id)sharedResourcesForContext:(id)context;
+ (id)stopSharingHome:(id)home withParticipant:(id)participant context:(id)context;
+ (id)stopSharingResource:(id)resource context:(id)context;
+ (id)stopSharingWithParticipant:(id)participant context:(id)context;
@end

@implementation HMDSUtilities

+ (id)logCategory
{
  if (qword_11978 != -1)
  {
    dispatch_once(&qword_11978, &stru_C498);
  }

  v3 = qword_11980;

  return v3;
}

+ (id)sharedResourcesForContext:(id)context
{
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    homes = [contextCopy homes];
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = homes;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@Found homes: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  homes2 = [contextCopy homes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1298;
  v15[3] = &unk_C478;
  v16 = contextCopy;
  v11 = contextCopy;
  v12 = [homes2 na_map:v15];
  v13 = [HMDSUtilities combineAllFuturesFlatteningArrayResults:v12];

  return v13;
}

+ (id)combineAllFuturesFlatteningArrayResults:(id)results
{
  resultsCopy = results;
  v4 = +[NAScheduler immediateScheduler];
  v5 = [NAFuture combineAllFutures:resultsCopy scheduler:v4];

  v6 = [v5 flatMap:&stru_C410];

  return v6;
}

+ (id)stopSharingWithParticipant:(id)participant context:(id)context
{
  participantCopy = participant;
  contextCopy = context;
  v8 = participantCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    homes = [contextCopy homes];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_177C;
    v27[3] = &unk_C3C8;
    v12 = v10;
    v28 = v12;
    v13 = [homes na_firstObjectPassingTest:v27];

    if (v13)
    {
      v14 = [HMDSUtilities stopSharingHome:v13 withParticipant:v8 context:contextCopy];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        homeUniqueIdentifier = [v12 homeUniqueIdentifier];
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = homeUniqueIdentifier;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%{public}@Participant home no longer exists with homeUniqueIdentifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v14 = +[NAFuture futureWithNoResult];
    }

    v20 = v14;

    v19 = v28;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v18;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized participant: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [NSError errorWithDomain:HMErrorDomain code:48 userInfo:0];
    v20 = [NAFuture futureWithError:v19];
  }

  return v20;
}

+ (id)stopSharingResource:(id)resource context:(id)context
{
  resourceCopy = resource;
  contextCopy = context;
  v8 = resourceCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    homes = [contextCopy homes];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1C38;
    v40[3] = &unk_C3C8;
    v12 = v10;
    v41 = v12;
    v13 = [homes na_firstObjectPassingTest:v40];

    currentUser = [v13 currentUser];
    v15 = [v13 homeAccessControlForUser:currentUser];

    if ([v15 isOwner] & 1) != 0 || (objc_msgSend(v15, "isAdministrator"))
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v19;
        v44 = 2112;
        v45 = v13;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%{public}@Removing all participants that we have authority to remove from home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      participants = [v12 participants];
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_1CA8;
      v36 = &unk_C3F0;
      v39 = selfCopy;
      v37 = v13;
      v38 = contextCopy;
      v21 = [participants na_map:&v33];
      v22 = [selfCopy _combineAllFuturesWithNoResult:{v21, v33, v34, v35, v36}];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = v13;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%{public}@We do not have admin privileges, so we cannot remove anyone from the home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v22 = +[NAFuture futureWithNoResult];
    }

    v27 = v41;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v26;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%{public}@Invalid shared resource: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [NSError errorWithDomain:HMErrorDomain code:3 userInfo:0];
    v22 = [NAFuture futureWithError:v27];
  }

  return v22;
}

+ (id)stopSharingHome:(id)home withParticipant:(id)participant context:(id)context
{
  homeCopy = home;
  participantCopy = participant;
  contextCopy = context;
  v11 = participantCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    currentUser = [homeCopy currentUser];
    v15 = [homeCopy homeAccessControlForUser:currentUser];

    if ([v15 isOwner] & 1) != 0 || (objc_msgSend(v15, "isAdministrator"))
    {
      v16 = [contextCopy simpleLabelAccessCodesForHome:homeCopy];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_200C;
      v28[3] = &unk_C3A0;
      selfCopy = self;
      v29 = v13;
      v30 = homeCopy;
      v31 = contextCopy;
      v17 = [v16 flatMap:v28];

      goto LABEL_15;
    }

    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = homeCopy;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%{public}@We do not have admin privileges, so we cannot remove anyone from the home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = +[NAFuture futureWithNoResult];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized participant: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v15 = [NSError errorWithDomain:HMErrorDomain code:48 userInfo:0];
    v22 = [NAFuture futureWithError:v15];
  }

  v17 = v22;
LABEL_15:

  return v17;
}

+ (id)removeParticipantObject:(id)object fromHome:(id)home accessCodes:(id)codes context:(id)context
{
  objectCopy = object;
  homeCopy = home;
  codesCopy = codes;
  contextCopy = context;
  if (([self canRemoveParticipantObject:objectCopy fromHome:homeCopy accessCodes:codesCopy] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = objectCopy;
      v27 = "%{public}@Cannot remove participant object: %@";
LABEL_8:
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v27, &v38, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v23);
    outgoingInvitation2 = [NSError errorWithDomain:HMErrorDomain code:48 userInfo:0];
    v28 = [NAFuture futureWithError:outgoingInvitation2];
LABEL_10:
    v22 = v28;
    goto LABEL_11;
  }

  accessCode = [objectCopy accessCode];

  if (!accessCode)
  {
    outgoingInvitation = [objectCopy outgoingInvitation];

    if (outgoingInvitation)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v38 = 138543874;
        v39 = v34;
        v40 = 2112;
        v41 = homeCopy;
        v42 = 2112;
        v43 = objectCopy;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%{public}@Removing outgoing invitation participant from home: %@, participantObject: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      outgoingInvitation2 = [objectCopy outgoingInvitation];
      v28 = [contextCopy cancelInvitation:outgoingInvitation2];
      goto LABEL_10;
    }

    user = [objectCopy user];

    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v36 = HMFGetOSLogHandle();
    v25 = v36;
    if (user)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = 138543874;
        v39 = v37;
        v40 = 2112;
        v41 = homeCopy;
        v42 = 2112;
        v43 = objectCopy;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%{public}@Removing user participant from home: %@, participantObject: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      outgoingInvitation2 = [objectCopy user];
      v28 = [contextCopy removeUser:outgoingInvitation2 fromHome:homeCopy];
      goto LABEL_10;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = objectCopy;
      v27 = "%{public}@Participant object has all nil properties: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v38 = 138543874;
    v39 = v18;
    v40 = 2112;
    v41 = homeCopy;
    v42 = 2112;
    v43 = objectCopy;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%{public}@Removing access code participant from home: %@, participantObject: %@", &v38, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  outgoingInvitation2 = [objectCopy accessCode];
  accessCodeValue = [outgoingInvitation2 accessCodeValue];
  stringValue = [accessCodeValue stringValue];
  v22 = [contextCopy removeSimpleLabelAccessCode:stringValue fromHome:homeCopy];

LABEL_11:

  return v22;
}

+ (id)sharedResourceForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = homeCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%{public}@Creating shared resource for home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  currentUser = [homeCopy currentUser];
  v13 = [homeCopy homeAccessControlForUser:currentUser];

  if ([v13 isOwner] & 1) != 0 || (objc_msgSend(v13, "isAdministrator"))
  {
    v14 = [contextCopy simpleLabelAccessCodesForHome:homeCopy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_293C;
    v21[3] = &unk_C378;
    v22 = homeCopy;
    v23 = selfCopy;
    v15 = [v14 flatMap:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = homeCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%{public}@We do not have admin privileges, so not creating a shared resource for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [NAFuture futureWithResult:&__NSArray0__struct];
  }

  return v15;
}

+ (BOOL)canRemoveParticipantObject:(id)object fromHome:(id)home accessCodes:(id)codes
{
  objectCopy = object;
  homeCopy = home;
  codesCopy = codes;
  currentUser = [homeCopy currentUser];
  v12 = [homeCopy homeAccessControlForUser:currentUser];

  if ([v12 isOwner])
  {
    goto LABEL_5;
  }

  if (![v12 isAdministrator])
  {
LABEL_11:
    LOBYTE(v15) = 0;
    goto LABEL_12;
  }

  accessCode = [objectCopy accessCode];

  if (!accessCode)
  {
    outgoingInvitation = [objectCopy outgoingInvitation];

    if (!outgoingInvitation)
    {
      user = [objectCopy user];

      if (user)
      {
        user2 = [objectCopy user];
        v18 = [homeCopy homeAccessControlForUser:user2];

        v15 = [v18 isOwner] ^ 1;
        goto LABEL_12;
      }

      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v22;
        v26 = 2112;
        v27 = objectCopy;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@Participant object has all nil properties: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_11;
    }
  }

LABEL_5:
  LOBYTE(v15) = 1;
LABEL_12:

  return v15;
}

+ (id)participantObjectForParticipant:(id)participant inHome:(id)home accessCodes:(id)codes
{
  participantCopy = participant;
  homeCopy = home;
  codesCopy = codes;
  identity = [participantCopy identity];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = identity;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v21;
      v36 = 2112;
      v37 = participantCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@Invalid identity on participant: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
LABEL_11:
    v17 = 0;
    goto LABEL_22;
  }

  userID = [v13 userID];

  if (!userID)
  {
    pinCodeLabel = [v13 pinCodeLabel];

    if (pinCodeLabel)
    {
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_3470;
      v30 = &unk_C2D8;
      v31 = v13;
      v23 = [codesCopy na_firstObjectPassingTest:&v27];
      if (v23)
      {
        v17 = [HMDSParticipantObject homeParticipantObjectWithAccessCode:v23, v27, v28, v29, v30];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  userID2 = [v13 userID];
  v16 = [self outgoingInvitationForUserID:userID2 inHome:homeCopy];

  if (v16)
  {
    v17 = [HMDSParticipantObject homeParticipantObjectWithOutgoingInvitation:v16];
  }

  else
  {
    users = [homeCopy users];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_340C;
    v32[3] = &unk_C2B0;
    v33 = v13;
    v25 = [users na_firstObjectPassingTest:v32];

    if (v25)
    {
      v17 = [HMDSParticipantObject homeParticipantObjectWithUser:v25];
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_22:

  return v17;
}

+ (id)outgoingInvitationForUserID:(id)d inHome:(id)home
{
  dCopy = d;
  outgoingInvitations = [home outgoingInvitations];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_35B4;
  v10[3] = &unk_C288;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [outgoingInvitations na_firstObjectPassingTest:v10];

  return v8;
}

+ (id)participantForOutgoingInvitation:(id)invitation inHome:(id)home
{
  homeCopy = home;
  invitee = [invitation invitee];
  v8 = [self identityForUser:invitee];

  v9 = [HMDSParticipant alloc];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  v11 = [(HMDSParticipant *)v9 initWithRole:2 permission:1 identity:v8 homeUniqueIdentifier:uniqueIdentifier];

  return v11;
}

+ (id)participantForAccessCode:(id)code inHome:(id)home
{
  homeCopy = home;
  v7 = [self identityForAccessCode:code];
  v8 = [HMDSParticipant alloc];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  v10 = [(HMDSParticipant *)v8 initWithRole:2 permission:1 identity:v7 homeUniqueIdentifier:uniqueIdentifier];

  return v10;
}

+ (id)participantForUser:(id)user inHome:(id)home
{
  homeCopy = home;
  userCopy = user;
  v8 = [homeCopy homeAccessControlForUser:userCopy];
  v9 = 1;
  if ([v8 isOwner])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if ([v8 isAdministrator])
  {
    v9 = 2;
  }

  v11 = [self identityForUser:userCopy];

  v12 = [HMDSParticipant alloc];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  v14 = [(HMDSParticipant *)v12 initWithRole:v10 permission:v9 identity:v11 homeUniqueIdentifier:uniqueIdentifier];

  return v14;
}

+ (id)identityForAccessCode:(id)code
{
  codeCopy = code;
  v4 = objc_opt_new();
  userInformation = [codeCopy userInformation];
  simpleLabel = [userInformation simpleLabel];
  [v4 setGivenName:simpleLabel];

  v7 = [HMDSParticipantIdentity alloc];
  userInformation2 = [codeCopy userInformation];

  simpleLabel2 = [userInformation2 simpleLabel];
  v10 = [(HMDSParticipantIdentity *)v7 initWithUnifiedContactIdentifier:0 nameComponents:v4 emailAddress:0 phoneNumber:0 userID:0 pinCodeLabel:simpleLabel2];

  return v10;
}

+ (id)identityForUser:(id)user
{
  userCopy = user;
  userID = [userCopy userID];
  if ([userID hmds_isEmail])
  {
    userID2 = [userCopy userID];
  }

  else
  {
    userID2 = 0;
  }

  userID3 = [userCopy userID];
  if ([userID3 hmds_isPhoneNumber])
  {
    userID4 = [userCopy userID];
  }

  else
  {
    userID4 = 0;
  }

  userID5 = [userCopy userID];
  if (userID5 && (userID5, userID2 | userID4))
  {
    v14 = [HMDSParticipantIdentity alloc];
    userID6 = [userCopy userID];
    v13 = [(HMDSParticipantIdentity *)v14 initWithUnifiedContactIdentifier:0 nameComponents:0 emailAddress:userID2 phoneNumber:userID4 userID:userID6 pinCodeLabel:0];
  }

  else
  {
    userID6 = objc_opt_new();
    name = [userCopy name];
    [userID6 setGivenName:name];

    v11 = [HMDSParticipantIdentity alloc];
    userID7 = [userCopy userID];
    v13 = [(HMDSParticipantIdentity *)v11 initWithUnifiedContactIdentifier:0 nameComponents:userID6 emailAddress:0 phoneNumber:0 userID:userID7 pinCodeLabel:0];
  }

  return v13;
}

+ (id)_combineAllFuturesWithNoResult:(id)result
{
  resultCopy = result;
  v4 = +[NAScheduler immediateScheduler];
  v5 = [NAFuture combineAllFutures:resultCopy scheduler:v4];

  v6 = [v5 flatMap:&stru_C260];

  return v6;
}

@end