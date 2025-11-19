@interface HMDSUtilities
+ (BOOL)canRemoveParticipantObject:(id)a3 fromHome:(id)a4 accessCodes:(id)a5;
+ (id)_combineAllFuturesWithNoResult:(id)a3;
+ (id)combineAllFuturesFlatteningArrayResults:(id)a3;
+ (id)identityForAccessCode:(id)a3;
+ (id)identityForUser:(id)a3;
+ (id)logCategory;
+ (id)outgoingInvitationForUserID:(id)a3 inHome:(id)a4;
+ (id)participantForAccessCode:(id)a3 inHome:(id)a4;
+ (id)participantForOutgoingInvitation:(id)a3 inHome:(id)a4;
+ (id)participantForUser:(id)a3 inHome:(id)a4;
+ (id)participantObjectForParticipant:(id)a3 inHome:(id)a4 accessCodes:(id)a5;
+ (id)removeParticipantObject:(id)a3 fromHome:(id)a4 accessCodes:(id)a5 context:(id)a6;
+ (id)sharedResourceForHome:(id)a3 context:(id)a4;
+ (id)sharedResourcesForContext:(id)a3;
+ (id)stopSharingHome:(id)a3 withParticipant:(id)a4 context:(id)a5;
+ (id)stopSharingResource:(id)a3 context:(id)a4;
+ (id)stopSharingWithParticipant:(id)a3 context:(id)a4;
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

+ (id)sharedResourcesForContext:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 homes];
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@Found homes: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 homes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1298;
  v15[3] = &unk_C478;
  v16 = v4;
  v11 = v4;
  v12 = [v10 na_map:v15];
  v13 = [HMDSUtilities combineAllFuturesFlatteningArrayResults:v12];

  return v13;
}

+ (id)combineAllFuturesFlatteningArrayResults:(id)a3
{
  v3 = a3;
  v4 = +[NAScheduler immediateScheduler];
  v5 = [NAFuture combineAllFutures:v3 scheduler:v4];

  v6 = [v5 flatMap:&stru_C410];

  return v6;
}

+ (id)stopSharingWithParticipant:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v11 = [v7 homes];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_177C;
    v27[3] = &unk_C3C8;
    v12 = v10;
    v28 = v12;
    v13 = [v11 na_firstObjectPassingTest:v27];

    if (v13)
    {
      v14 = [HMDSUtilities stopSharingHome:v13 withParticipant:v8 context:v7];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v12 homeUniqueIdentifier];
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v25;
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
    v16 = a1;
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

+ (id)stopSharingResource:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v11 = [v7 homes];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1C38;
    v40[3] = &unk_C3C8;
    v12 = v10;
    v41 = v12;
    v13 = [v11 na_firstObjectPassingTest:v40];

    v14 = [v13 currentUser];
    v15 = [v13 homeAccessControlForUser:v14];

    if ([v15 isOwner] & 1) != 0 || (objc_msgSend(v15, "isAdministrator"))
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1;
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
      v20 = [v12 participants];
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_1CA8;
      v36 = &unk_C3F0;
      v39 = v17;
      v37 = v13;
      v38 = v7;
      v21 = [v20 na_map:&v33];
      v22 = [v17 _combineAllFuturesWithNoResult:{v21, v33, v34, v35, v36}];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1;
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
    v24 = a1;
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

+ (id)stopSharingHome:(id)a3 withParticipant:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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
    v14 = [v8 currentUser];
    v15 = [v8 homeAccessControlForUser:v14];

    if ([v15 isOwner] & 1) != 0 || (objc_msgSend(v15, "isAdministrator"))
    {
      v16 = [v10 simpleLabelAccessCodesForHome:v8];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_200C;
      v28[3] = &unk_C3A0;
      v32 = a1;
      v29 = v13;
      v30 = v8;
      v31 = v10;
      v17 = [v16 flatMap:v28];

      goto LABEL_15;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%{public}@We do not have admin privileges, so we cannot remove anyone from the home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = +[NAFuture futureWithNoResult];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
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

+ (id)removeParticipantObject:(id)a3 fromHome:(id)a4 accessCodes:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([a1 canRemoveParticipantObject:v10 fromHome:v11 accessCodes:v12] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = v10;
      v27 = "%{public}@Cannot remove participant object: %@";
LABEL_8:
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v27, &v38, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v23);
    v19 = [NSError errorWithDomain:HMErrorDomain code:48 userInfo:0];
    v28 = [NAFuture futureWithError:v19];
LABEL_10:
    v22 = v28;
    goto LABEL_11;
  }

  v14 = [v10 accessCode];

  if (!v14)
  {
    v30 = [v10 outgoingInvitation];

    if (v30)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = a1;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v38 = 138543874;
        v39 = v34;
        v40 = 2112;
        v41 = v11;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%{public}@Removing outgoing invitation participant from home: %@, participantObject: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v19 = [v10 outgoingInvitation];
      v28 = [v13 cancelInvitation:v19];
      goto LABEL_10;
    }

    v35 = [v10 user];

    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v36 = HMFGetOSLogHandle();
    v25 = v36;
    if (v35)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = 138543874;
        v39 = v37;
        v40 = 2112;
        v41 = v11;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%{public}@Removing user participant from home: %@, participantObject: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v19 = [v10 user];
      v28 = [v13 removeUser:v19 fromHome:v11];
      goto LABEL_10;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = v10;
      v27 = "%{public}@Participant object has all nil properties: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v38 = 138543874;
    v39 = v18;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%{public}@Removing access code participant from home: %@, participantObject: %@", &v38, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [v10 accessCode];
  v20 = [v19 accessCodeValue];
  v21 = [v20 stringValue];
  v22 = [v13 removeSimpleLabelAccessCode:v21 fromHome:v11];

LABEL_11:

  return v22;
}

+ (id)sharedResourceForHome:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%{public}@Creating shared resource for home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 currentUser];
  v13 = [v6 homeAccessControlForUser:v12];

  if ([v13 isOwner] & 1) != 0 || (objc_msgSend(v13, "isAdministrator"))
  {
    v14 = [v7 simpleLabelAccessCodesForHome:v6];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_293C;
    v21[3] = &unk_C378;
    v22 = v6;
    v23 = v9;
    v15 = [v14 flatMap:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%{public}@We do not have admin privileges, so not creating a shared resource for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [NAFuture futureWithResult:&__NSArray0__struct];
  }

  return v15;
}

+ (BOOL)canRemoveParticipantObject:(id)a3 fromHome:(id)a4 accessCodes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 currentUser];
  v12 = [v9 homeAccessControlForUser:v11];

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

  v13 = [v8 accessCode];

  if (!v13)
  {
    v14 = [v8 outgoingInvitation];

    if (!v14)
    {
      v16 = [v8 user];

      if (v16)
      {
        v17 = [v8 user];
        v18 = [v9 homeAccessControlForUser:v17];

        v15 = [v18 isOwner] ^ 1;
        goto LABEL_12;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v22;
        v26 = 2112;
        v27 = v8;
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

+ (id)participantObjectForParticipant:(id)a3 inHome:(id)a4 accessCodes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
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

  if (!v13)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v21;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@Invalid identity on participant: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
LABEL_11:
    v17 = 0;
    goto LABEL_22;
  }

  v14 = [v13 userID];

  if (!v14)
  {
    v22 = [v13 pinCodeLabel];

    if (v22)
    {
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_3470;
      v30 = &unk_C2D8;
      v31 = v13;
      v23 = [v10 na_firstObjectPassingTest:&v27];
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

  v15 = [v13 userID];
  v16 = [a1 outgoingInvitationForUserID:v15 inHome:v9];

  if (v16)
  {
    v17 = [HMDSParticipantObject homeParticipantObjectWithOutgoingInvitation:v16];
  }

  else
  {
    v24 = [v9 users];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_340C;
    v32[3] = &unk_C2B0;
    v33 = v13;
    v25 = [v24 na_firstObjectPassingTest:v32];

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

+ (id)outgoingInvitationForUserID:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = [a4 outgoingInvitations];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_35B4;
  v10[3] = &unk_C288;
  v11 = v5;
  v7 = v5;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

+ (id)participantForOutgoingInvitation:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v7 = [a3 invitee];
  v8 = [a1 identityForUser:v7];

  v9 = [HMDSParticipant alloc];
  v10 = [v6 uniqueIdentifier];

  v11 = [(HMDSParticipant *)v9 initWithRole:2 permission:1 identity:v8 homeUniqueIdentifier:v10];

  return v11;
}

+ (id)participantForAccessCode:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v7 = [a1 identityForAccessCode:a3];
  v8 = [HMDSParticipant alloc];
  v9 = [v6 uniqueIdentifier];

  v10 = [(HMDSParticipant *)v8 initWithRole:2 permission:1 identity:v7 homeUniqueIdentifier:v9];

  return v10;
}

+ (id)participantForUser:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 homeAccessControlForUser:v7];
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

  v11 = [a1 identityForUser:v7];

  v12 = [HMDSParticipant alloc];
  v13 = [v6 uniqueIdentifier];

  v14 = [(HMDSParticipant *)v12 initWithRole:v10 permission:v9 identity:v11 homeUniqueIdentifier:v13];

  return v14;
}

+ (id)identityForAccessCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 userInformation];
  v6 = [v5 simpleLabel];
  [v4 setGivenName:v6];

  v7 = [HMDSParticipantIdentity alloc];
  v8 = [v3 userInformation];

  v9 = [v8 simpleLabel];
  v10 = [(HMDSParticipantIdentity *)v7 initWithUnifiedContactIdentifier:0 nameComponents:v4 emailAddress:0 phoneNumber:0 userID:0 pinCodeLabel:v9];

  return v10;
}

+ (id)identityForUser:(id)a3
{
  v3 = a3;
  v4 = [v3 userID];
  if ([v4 hmds_isEmail])
  {
    v5 = [v3 userID];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 userID];
  if ([v6 hmds_isPhoneNumber])
  {
    v7 = [v3 userID];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 userID];
  if (v8 && (v8, v5 | v7))
  {
    v14 = [HMDSParticipantIdentity alloc];
    v9 = [v3 userID];
    v13 = [(HMDSParticipantIdentity *)v14 initWithUnifiedContactIdentifier:0 nameComponents:0 emailAddress:v5 phoneNumber:v7 userID:v9 pinCodeLabel:0];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v3 name];
    [v9 setGivenName:v10];

    v11 = [HMDSParticipantIdentity alloc];
    v12 = [v3 userID];
    v13 = [(HMDSParticipantIdentity *)v11 initWithUnifiedContactIdentifier:0 nameComponents:v9 emailAddress:0 phoneNumber:0 userID:v12 pinCodeLabel:0];
  }

  return v13;
}

+ (id)_combineAllFuturesWithNoResult:(id)a3
{
  v3 = a3;
  v4 = +[NAScheduler immediateScheduler];
  v5 = [NAFuture combineAllFutures:v3 scheduler:v4];

  v6 = [v5 flatMap:&stru_C260];

  return v6;
}

@end