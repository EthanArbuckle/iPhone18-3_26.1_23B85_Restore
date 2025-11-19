void sub_1088(id a1)
{
  qword_11980 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

NAFuture *__cdecl sub_134C(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 na_flatMap:&stru_C450];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

NSArray *__cdecl sub_13B4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v2 && (isKindOfClass & 1) != 0)
  {
    v4 = v2;
  }

  else
  {
    v7 = v2;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  v5 = v4;

  return v5;
}

uint64_t sub_177C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) homeUniqueIdentifier];
  v5 = HMFEqualObjects();

  return v5;
}

uint64_t sub_1C38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 uniqueIdentifier];

  v6 = HMFEqualObjects();
  return v6;
}

id sub_200C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 56) participantObjectForParticipant:*(a1 + 32) inHome:*(a1 + 40) accessCodes:v3];
  if (v4)
  {
    if ([*(a1 + 56) canRemoveParticipantObject:v4 fromHome:*(a1 + 40) accessCodes:v3])
    {
      v5 = [*(a1 + 56) removeParticipantObject:v4 fromHome:*(a1 + 40) accessCodes:v3 context:*(a1 + 48)];
      goto LABEL_10;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 56);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v4;
      v12 = "%{public}@Found participant in home but cannot remove them because we do not have sufficient privileges. Home: %@, participantObject: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 56);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v12 = "%{public}@Participant is not in home: %@ participant: %@";
LABEL_8:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v12, &v16, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v5 = +[NAFuture futureWithNoResult];
LABEL_10:
  v14 = v5;

  return v14;
}

id sub_293C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) users];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_2E1C;
  v42[3] = &unk_C2B0;
  v43 = *(a1 + 32);
  v5 = [v4 na_filter:v42];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_2EA8;
  v40[3] = &unk_C300;
  v33 = *(a1 + 32);
  v6 = v33;
  v41 = v33;
  v7 = [v5 na_map:v40];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_2EB8;
  v38[3] = &unk_C328;
  v34 = *(a1 + 32);
  v8 = v34;
  v39 = v34;
  v35 = v3;
  v9 = [v3 na_map:v38];
  v10 = [*(a1 + 32) outgoingInvitations];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_2EC8;
  v36[3] = &unk_C350;
  v32 = *(a1 + 32);
  v11 = v32;
  v37 = v32;
  v12 = [v10 na_map:v36];

  if ([v7 hmf_isEmpty] && objc_msgSend(v9, "hmf_isEmpty") && objc_msgSend(v12, "hmf_isEmpty"))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 40);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      *buf = 138543618;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%{public}@There are no users we can remove, so not creating a shared resource for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [NAFuture futureWithResult:&__NSArray0__struct];
  }

  else
  {
    v19 = v5;
    v20 = [v7 arrayByAddingObjectsFromArray:{v9, v32}];
    v21 = [v20 arrayByAddingObjectsFromArray:v12];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 40);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v25;
      v47 = 2112;
      v48 = v21;
      v49 = 2112;
      v50 = v35;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%{public}@Home has participants: %@, accessCodes: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [HMDSHomeSharedResource alloc];
    v27 = [*(a1 + 32) name];
    v28 = [*(a1 + 32) uniqueIdentifier];
    v29 = [(HMDSHomeSharedResource *)v26 initWithDisplayName:v27 displayDetail:0 participants:v21 UUID:v28];

    v44 = v29;
    v30 = [NSArray arrayWithObjects:&v44 count:1];
    v18 = [NAFuture futureWithResult:v30];

    v5 = v19;
  }

  return v18;
}

uint64_t sub_2E1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 homeAccessControlForUser:v4];
  v6 = [*(a1 + 32) currentUser];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 isOwner] ^ 1;
  }

  return v8;
}

id sub_340C(uint64_t a1, void *a2)
{
  v3 = [a2 userID];
  v4 = [*(a1 + 32) userID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_3470(uint64_t a1, void *a2)
{
  v3 = [a2 userInformation];
  v4 = [v3 simpleLabel];
  v5 = [*(a1 + 32) pinCodeLabel];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id sub_35B4(uint64_t a1, void *a2)
{
  v3 = [a2 invitee];
  v4 = [v3 userID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_3E30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = [HMDSUtilities stopSharingWithParticipant:v2 context:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3F28;
  v8[3] = &unk_C5B0;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = *(a1 + 48);
  v6 = [v4 addCompletionBlock:v8];
}

void sub_3F28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@Calling completion after stopping sharing with participant: %@ with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();
}

void sub_4204(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = [HMDSUtilities stopSharingResource:v2 context:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_42FC;
  v8[3] = &unk_C5B0;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = *(a1 + 48);
  v6 = [v4 addCompletionBlock:v8];
}

void sub_42FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@Calling completion after stopping sharing resource: %@ with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();
}

void sub_4598(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [HMDSUtilities sharedResourcesForContext:v2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_46CC;
  v9[3] = &unk_C560;
  v9[4] = *(a1 + 32);
  v4 = [v3 flatMap:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4784;
  v7[3] = &unk_C588;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = [v4 addCompletionBlock:v7];
}

id sub_46CC(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_48B0;
  v5[3] = &unk_C538;
  v5[4] = *(a1 + 32);
  v2 = [a2 na_map:v5];
  v3 = [HMDSUtilities _combineAllFuturesWithNoResult:v2];

  return v3;
}

void sub_4784(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@Calling completion after stopping all sharing with error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

id sub_48B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [HMDSUtilities stopSharingResource:v3 context:v4];

  return v5;
}

void sub_4ABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) context];
  v8 = [v7 status];

  v9 = [*(a1 + 32) context];
  v10 = [v9 dataSyncState];

  if ((v10 - 4) >= 2)
  {
    if (v10 == &dword_0 + 3)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMHomeManagerStatusToString();
        v25 = HMHomeManagerDataSyncStateToString();
        *buf = 138543874;
        v42 = v23;
        v43 = 2112;
        v44 = v24;
        v45 = 2112;
        v46 = v25;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%{public}@Calling completion with DSSourceErroriCloudDisabled error because Home iCloud switch is disabled. Status: %@, DataSyncState: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v17 = *(a1 + 40);
      v18 = DSSourceErrorDomain;
      v19 = 2;
      goto LABEL_10;
    }

    if (v10)
    {
      if (v5)
      {
        if (!v8 && v10 == &dword_0 + 1)
        {
          v27 = *(a1 + 32);
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_4F94;
          v39[3] = &unk_C4E8;
          v39[4] = v27;
          v40 = *(a1 + 40);
          [v27 _performBlock:v39];

          goto LABEL_11;
        }

        v33 = objc_autoreleasePoolPush();
        v34 = *(a1 + 32);
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          v37 = HMHomeManagerStatusToString();
          v38 = HMHomeManagerDataSyncStateToString();
          *buf = 138543874;
          v42 = v36;
          v43 = 2112;
          v44 = v37;
          v45 = 2112;
          v46 = v38;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%{public}@Calling completion with empty array because home manager is not ready, but it is not clear that we are in an error state. Status: %@, DataSyncState: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v33);
        v32 = *(*(a1 + 40) + 16);
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 32);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v31;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%{public}@Calling completion with error because we failed to refresh the home manager with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v32 = *(*(a1 + 40) + 16);
      }

      v32();
      goto LABEL_11;
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMHomeManagerStatusToString();
    v16 = HMHomeManagerDataSyncStateToString();
    *buf = 138543874;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    v45 = 2112;
    v46 = v16;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@Calling completion with error because home manager is not ready. Status: %@, DataSyncState: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = *(a1 + 40);
  v18 = HMErrorDomain;
  v19 = 77;
LABEL_10:
  v26 = [NSError errorWithDomain:v18 code:v19 userInfo:0];
  (*(v17 + 16))(v17, &__NSArray0__struct, v26);

LABEL_11:
}

void sub_4F94(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [HMDSUtilities sharedResourcesForContext:v2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5068;
  v6[3] = &unk_C4C0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = [v3 addCompletionBlock:v6];
}

void sub_5068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@Calling completion after fetching shared resources: %@, with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

void sub_532C(id a1)
{
  qword_11990 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_53DC(id a1)
{
  qword_11998 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"SELF MATCHES %@", @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*");

  _objc_release_x1();
}

void sub_59F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove access code: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [NSError errorWithDomain:@"HMDigitalSeparationErrorDomain" code:1 userInfo:0];
    [*(a1 + 40) finishWithError:v11];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }
}

void sub_5C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 na_map:&stru_C680];
  [*(a1 + 32) finishWithResult:v6 error:v5];
}

HMHomeAccessCode *__cdecl sub_5CA0(id a1, HMHomeAccessCode *a2)
{
  v2 = a2;
  v3 = [(HMHomeAccessCode *)v2 userInformation];
  v4 = [v3 simpleLabel];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_5F78(id a1)
{
  qword_119B0 = HMFCreateOSLogHandle();

  _objc_release_x1();
}