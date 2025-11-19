id sub_1884337A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_CKStringForWellKnownCKErrors(v2, v3, v4);
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @" ", &stru_1EFA32970);

  if (!v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_code(v2, v8, v9);
    v7 = objc_msgSend_stringWithFormat_(v10, v12, @"%ld", v11);
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_domain(v2, v8, v9);
  v16 = objc_msgSend_stringWithFormat_(v13, v15, @"%@.%@", v14, v7);

  return v16;
}

__CFString *stringForCKUnderlyingErrorCode(uint64_t a1)
{
  if (a1 <= 2999)
  {
    if (a1 <= 1999)
    {
      switch(a1)
      {
        case 1000:
          return @"GenericError";
        case 1001:
          return @"NotImplemented";
        case 1002:
          return @"NoAccountExists";
        case 1003:
          return @"AccountMoved";
        case 1004:
          return @"AuthenticationSkipped";
        case 1005:
          return @"ParseError";
        case 1006:
          return @"BadValueClass";
        case 1007:
          return @"InvalidRecordBatch";
        case 1008:
          return @"FailedIDFetch";
        case 1009:
          return @"InvalidPredicate";
        case 1010:
          return @"UserRejectedLogin";
        case 1011:
          return @"PartialFailure";
        case 1012:
          return @"NetworkUnavailable";
        case 1013:
          return @"NetworkFailure";
        case 1014:
          return @"BadContainer";
        case 1015:
          return @"NoPushToken";
        case 1016:
          return @"ChangeTokenExpired";
        case 1017:
          return @"InvalidArguments";
        case 1018:
          return @"AccountAccessRestricted";
        case 1019:
          return @"BadDatabase";
        case 1020:
          return @"BatchTooLarge";
        case 1021:
          return @"AssetSaveFailed";
        case 1022:
          return @"ParticipantsListConflict";
        case 1023:
          return @"AppDisabledInSettings";
        case 1024:
          return @"AppNotInAppStore";
        case 1025:
          return @"XPCActivityNotContinue";
        case 1026:
          return @"XPCActivityShouldDefer";
        case 1027:
          return @"SQLiteError";
        case 1028:
          return @"SQLiteValidationError";
        case 1029:
          return @"AccountUnavailableDueToBadAuthToken";
        case 1030:
          return @"InvalidDSID";
        case 1031:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
        case 1049:
          return @"Unknown Error";
        case 1050:
          return @"NoMatchingRow";
        case 1051:
          return @"NoUniqueRow";
        case 1052:
          return @"GroupExists";
        default:
          if (a1)
          {
            if (a1 != 1)
            {
              return @"Unknown Error";
            }

            result = @"Cancelled";
          }

          else
          {
            result = @"Success";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 2000:
          result = @"ServerInternalError";
          break;
        case 2001:
          result = @"ServerHTTPError";
          break;
        case 2002:
          result = @"ServerOverloaded";
          break;
        case 2003:
          result = @"ObjectNotFound";
          break;
        case 2004:
          result = @"OpLockFailed";
          break;
        case 2005:
          result = @"ClientInternalError";
          break;
        case 2006:
          result = @"BadSyntax";
          break;
        case 2007:
          result = @"Forbidden";
          break;
        case 2008:
          result = @"Throttled";
          break;
        case 2009:
          result = @"ServerThrottled";
          break;
        case 2010:
          result = @"Refused";
          break;
        case 2011:
          result = @"AuthTokenError";
          break;
        case 2012:
          result = @"AuthenticationNeeded";
          break;
        case 2013:
          result = @"ExpiredAppConfig";
          break;
        case 2014:
          result = @"ExpiredGlobalConfig";
          break;
        case 2015:
          result = @"FieldNotQueryable";
          break;
        case 2016:
          result = @"FieldNotSortable";
          break;
        case 2017:
          result = @"ObjectAlreadyExists";
          break;
        case 2018:
          result = @"BadKeyName";
          break;
        case 2019:
          result = @"BadFieldValue";
          break;
        case 2020:
          result = @"BadIdentifier";
          break;
        case 2021:
          result = @"FieldsPerTypeExceeded";
          break;
        case 2022:
          result = @"ServerBusy";
          break;
        case 2023:
          result = @"LimitExceeded";
          break;
        case 2024:
          result = @"AtomicFailure";
          break;
        case 2025:
          result = @"ValidatingReferenceFailure";
          break;
        case 2026:
          result = @"ContainerReset";
          break;
        case 2027:
          result = @"NotSupported";
          break;
        case 2028:
          result = @"AlreadyShared";
          break;
        case 2029:
          result = @"ZoneBusy";
          break;
        case 2030:
          result = @"ZoneUnavailable";
          break;
        case 2031:
          result = @"ContainerUnavailable";
          break;
        case 2032:
          result = @"DuplicateSubscription";
          break;
        case 2033:
          result = @"EmailOutOfNetwork";
          break;
        case 2034:
          result = @"ExpiredPutReceipt";
          break;
        case 2035:
          result = @"QuotaExceeded";
          break;
        case 2036:
          result = @"ZoneNotFound";
          break;
        case 2037:
          result = @"PCSOplockFailed";
          break;
        case 2038:
          result = @"AssetTooLarge";
          break;
        case 2039:
          result = @"DeviceNotSupported";
          break;
        case 2040:
          result = @"RequestAlreadyProcessed";
          break;
        case 2041:
          result = @"StaleRecordUpdate";
          break;
        case 2042:
          result = @"UserDeletedData";
          break;
        case 2043:
          result = @"ShareParticipantMissing";
          break;
        case 2044:
          result = @"InvalidPCSChain";
          break;
        case 2045:
          result = @"TooManyParticipants";
          break;
        case 2046:
          result = @"HierarchyAlreadyShared";
          break;
        case 2047:
          result = @"U13Restricted";
          break;
        case 2048:
          result = @"ManagedAppleIDRestricted";
          break;
        case 2049:
          result = @"InvalidEmailAddress";
          break;
        case 2050:
          result = @"RecordArchived";
          break;
        case 2051:
          result = @"DatabaseAccessDenied";
          break;
        case 2052:
          result = @"ParentHierarchyDepthLimitExceeded";
          break;
        case 2053:
          result = @"ZonePCSUserIdentityUnknown";
          break;
        case 2054:
          result = @"ManagedAppleIdBackupBlocked";
          break;
        case 2055:
          result = @"RetryableModificationFailure";
          break;
        case 2056:
          result = @"UserDidResetEncryptedData";
          break;
        case 2057:
          result = @"ShareRegionUnsupported";
          break;
        case 2060:
          result = @"a2aSignatureValidationError";
          break;
        case 2061:
          result = @"ThrottledByHTTP503";
          break;
        case 2062:
          result = @"ThrottledByHTTP429";
          break;
        case 2063:
          result = @"ThrottledByServer";
          break;
        default:
          return @"Unknown Error";
      }
    }

    return result;
  }

  if (a1 <= 5999)
  {
    if (a1 <= 4001)
    {
      switch(a1)
      {
        case 3000:
          result = @"MMCSChunkingError";
          break;
        case 3001:
          result = @"MMCSGenericError";
          break;
        case 3002:
          result = @"MMCSItemNotFound";
          break;
        case 3003:
          result = @"MMCSItemModified";
          break;
        case 3004:
          result = @"MMCSAuthMissing";
          break;
        case 3005:
          result = @"PutReceiptExpired";
          break;
        case 3006:
          result = @"MMCSItemStale";
          break;
        case 3007:
          result = @"MMCSDiscQuotaExceeded";
          break;
        case 3008:
          result = @"MMCSNoSpaceLeftOnDevice";
          break;
        case 3009:
          result = @"MMCSItemNotValid";
          break;
        case 3010:
          result = @"MMCSItemNotAvailable";
          break;
        case 3011:
          result = @"ReferencedAssetNotFound";
          break;
        case 3012:
          result = @"RepairAssetSignatureMismatch";
          break;
        case 3013:
          result = @"MMCSInsufficientDiskSpace";
          break;
        case 3014:
          result = @"ParticipantIDMismatch";
          break;
        case 3015:
          result = @"AssetHandleUnregistered";
          break;
        default:
          if (a1 == 4000)
          {
            result = @"CouldntInitializeMescal";
          }

          else
          {
            if (a1 != 4001)
            {
              return @"Unknown Error";
            }

            result = @"BadSignature";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 5000:
          result = @"PCSNoPublicIdentity";
          break;
        case 5001:
          result = @"CouldntFetchPCSData";
          break;
        case 5002:
          result = @"CouldntSavePCSData";
          break;
        case 5003:
          result = @"CouldntWrapPCSData";
          break;
        case 5004:
          result = @"PCSDecryptFailed";
          break;
        case 5005:
          result = @"CouldntCreatePCSData";
          break;
        case 5006:
          result = @"iCDPRequired";
          break;
        case 5007:
          result = @"PCSDataNotFoundLocally";
          break;
        case 5008:
          result = @"UnsyncedKeychain";
          break;
        case 5009:
          result = @"KeyRegistrySyncFailed";
          break;
        case 5010:
          result = @"RequiredPCSDataNotFoundLocally";
          break;
        case 5011:
          result = @"MissingManateeIdentity";
          break;
        case 5012:
          result = @"PCSKeySyncStateThrottled";
          break;
        case 5013:
          result = @"WalrusEnabled";
          break;
        case 5014:
          result = @"WalrusIdentityICDPRequired";
          break;
        case 5015:
          result = @"MissingAnonymousID";
          break;
        case 5016:
          result = @"PerRecordPCSKeyRollFailed";
          break;
        case 5017:
          result = @"ZoneishPCSKeyRollFailed";
          break;
        case 5018:
          result = @"ZonePCSKeyRollFailed";
          break;
        case 5019:
          result = @"SharePCSKeyRollFailed";
          break;
        case 5020:
          result = @"GenericPCSKeyRollFailed";
          break;
        case 5021:
          result = @"IncompatibleOSVersion";
          break;
        case 5022:
          result = @"SignatureValidationFailed";
          break;
        case 5023:
          result = @"SignatureCreationFailed";
          break;
        default:
          if (a1 != 4002)
          {
            return @"Unknown Error";
          }

          result = @"MescalNotInitialized";
          break;
      }
    }

    return result;
  }

  if (a1 > 8999)
  {
    if (a1 <= 10005)
    {
      if (a1 > 10001)
      {
        if (a1 > 10003)
        {
          if (a1 == 10004)
          {
            return @"UploadRequestInvalidRetrievedAsset";
          }

          else
          {
            return @"UploadRequestZeroLengthAsset";
          }
        }

        else if (a1 == 10002)
        {
          return @"UploadRequestInvalidStateTransition";
        }

        else
        {
          return @"UploadRequestTryAgainLater";
        }
      }

      if (a1 > 9999)
      {
        if (a1 == 10000)
        {
          return @"UploadRequestCacheOpenFailed";
        }

        else
        {
          return @"UploadRequestNotEnoughSpace";
        }
      }

      if (a1 == 9000)
      {
        return @"PCCServerDidNotSendAttestation";
      }

      if (a1 == 9001)
      {
        return @"PCCAttestationVerificationFailed";
      }
    }

    else if (a1 <= 11002)
    {
      if (a1 > 11000)
      {
        if (a1 == 11001)
        {
          return @"ShareAccessRequestLimitExceeded";
        }

        else
        {
          return @"ShareAcceptRequired";
        }
      }

      if (a1 == 10006)
      {
        return @"DBRAccountNeedsReauthentication";
      }

      if (a1 == 11000)
      {
        return @"ShareAccessRequestError";
      }
    }

    else if (a1 <= 11999)
    {
      if (a1 == 11003)
      {
        return @"BlockedIdentityCannotBeParticipant";
      }

      if (a1 == 11004)
      {
        return @"BlockListLimitExceeded";
      }
    }

    else
    {
      switch(a1)
      {
        case 12000:
          return @"CloudCoreSessionNoLongerValid";
        case 13000:
          return @"ZoneAncestryOpLockFailed";
        case 13001:
          return @"CKUnderylingErrorOwningReferenceFailure";
      }
    }

    return @"Unknown Error";
  }

  if (a1 <= 7002)
  {
    if (a1 > 7000)
    {
      if (a1 == 7001)
      {
        return @"PackageDBBusy";
      }

      else
      {
        return @"PackageDBCopyFailed";
      }
    }

    if (a1 == 6000)
    {
      return @"PluginError";
    }

    if (a1 == 7000)
    {
      return @"PackageDBOpenFailed";
    }

    return @"Unknown Error";
  }

  switch(a1)
  {
    case 8000:
      result = @"EmailVettingRequired";
      break;
    case 8001:
      result = @"EmailVettingFailed";
      break;
    case 8002:
      result = @"EmailVettingTokenInvalid";
      break;
    case 8003:
      result = @"EmailVettingRecordInvalid";
      break;
    case 8004:
      result = @"EmailVettingRecordMissing";
      break;
    case 8005:
      result = @"EmailVettingEmailMismatch";
      break;
    case 8006:
      result = @"EmailVettingAccountDenied";
      break;
    case 8007:
      result = @"EmailVettingVettedToCaller";
      break;
    case 8008:
      result = @"EmailVettingVettedToOther";
      break;
    case 8009:
      result = @"EmailVettingDryrunKeyswapFailed";
      break;
    case 8010:
      result = @"EmailVettingServerError";
      break;
    case 8011:
      result = @"EmailVettingTokenAuthFailed";
      break;
    case 8012:
      result = @"EmailVettingForcedShareMetedataFetchFailed";
      break;
    case 8013:
      result = @"OONMetadataWithheld";
      break;
    case 8014:
      result = @"OONUserUnsupported";
      break;
    default:
      if (a1 == 7003)
      {
        result = @"PackageDBCheckpointFailed";
      }

      else
      {
        if (a1 != 7004)
        {
          return @"Unknown Error";
        }

        result = @"PackageDBCloseFailed";
      }

      break;
  }

  return result;
}

void sub_1884350BC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    source = v1[46];
    v2 = v1[46];
    v1[46] = 0;

    objc_sync_exit(v1);
    v3 = source;
    if (source)
    {
      dispatch_source_cancel(source);
      v3 = source;
    }
  }
}

void sub_188435294(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((*(obj + 260) & 1) == 0)
    {
      dispatch_group_leave(obj[31]);
      *(obj + 260) = 1;
    }

    objc_sync_exit(obj);
  }
}

int *sub_188435320(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 32);
    v11 = sub_18843BD9C(v9, v10);
    v12 = 138543874;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Placeholder op <%{public}@: %p; %{public}@> finishing in main", &v12, 0x20u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = CKOperationExecutionStateTransitionToFinished(result, result + 64);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_188435A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v19;
  a18 = v20;
  sub_1883F653C();
  a16 = v18;
  v21 = *(v18 + 40);
  sub_188402EBC();
  Strong = swift_weakLoadStrong();
  *(v18 + 48) = Strong;
  if (Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v23 = type metadata accessor for Logger();
    sub_1883FDE5C(v23, qword_1EA90C9F8);
    sub_1883FEFE0();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1883F9984();
      v27 = sub_1883FE540();
      a9 = v27;
      *v26 = 136315138;

      v28 = sub_1883FE43C();
      v30 = v29;

      v31 = sub_1883FE340(v28, v30, &a9);

      *(v26 + 4) = v31;
      sub_1883FDDA4();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      sub_1883FE944(v27);
      sub_1883F7B60();
      sub_1883FD784();
    }

    sub_1884022BC();
    sub_1883F6548();

    return MEMORY[0x1EEE6DFA0](v37, v38, v39);
  }

  else
  {
    sub_1883F816C();
    sub_1883F6548();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
  }
}

uint64_t sub_188435C4C()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_188435CE4(v2, v3);
}

uint64_t sub_188435D04()
{
  sub_1883F7120();
  v1[8] = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v2);
  v4 = *(v3 + 64);
  v1[9] = sub_188406FFC();
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[11] = v5;
  sub_1883F8620(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = sub_188406FFC();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188435E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v13 = v12[10];
  v14 = v12[11];
  v15 = v12[8];
  v16 = OBJC_IVAR____TtC8CloudKit10SyncEngine_lastForegroundTriggeredFetchDate;
  sub_1883FF050();
  swift_beginAccess();
  sub_18841D168(v15 + v16, v13, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v13, 1, v14) == 1)
  {
    sub_1883F9FEC(v12[10], &unk_1EA90D7B0, &dword_1886F8780);
LABEL_7:
    v39 = v12[11];
    v40 = v12[9];
    [*(*(v12[8] + 128) + 16) setNeedsToFetchDatabaseChanges:1 postStateUpdate:0];
    static Date.now.getter();
    sub_1883F90F4(v40, 0, 1, v39);
    swift_beginAccess();
    sub_188436394(v40, v15 + v16, &unk_1EA90D7B0, &dword_1886F8780);
    swift_endAccess();
    v41 = swift_task_alloc();
    v12[16] = v41;
    *v41 = v12;
    v41[1] = sub_1884E50C0;
    v42 = v12[8];
    sub_1883F9968();

    return sub_1884363E0();
  }

  v17 = v12[14];
  v18 = v12[12];
  v19 = v12[11];
  v20 = (*(v18 + 32))(v12[15], v12[10], v19);
  sub_188427384(v20, 55.0, 77.0);
  static Date.+ infix(_:_:)();
  static Date.now.getter();
  sub_1883F7E8C();
  v21 = static Date.< infix(_:_:)();
  v22 = *(v18 + 8);
  v23 = sub_1883FB5D4();
  v22(v23);
  (v22)(v17, v19);
  v24 = sub_1883F84DC();
  v22(v24);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v26 = v12[14];
  v25 = v12[15];
  v27 = v12[13];
  v29 = v12[9];
  v28 = v12[10];

  sub_1883F816C();
  sub_1883F9968();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_188436394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50(v5);
  v7 = *(v6 + 40);
  v8 = sub_1883F7EE0();
  v9(v8);
  return v4;
}

uint64_t sub_1884363E0()
{
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884364AC, v0, 0);
}

uint64_t sub_1884364AC()
{
  sub_1883F7120();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  if (sub_188403050())
  {
    v2 = *MEMORY[0x1E69E9840];
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1883F816C();
    v7 = *MEMORY[0x1E69E9840];

    return v6();
  }
}

uint64_t sub_188436818()
{
  sub_1883F78E0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[2].opaque[1];
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v3 = _os_activity_create(&dword_1883EA000, "engine/fetch-on-foreground", v2, OS_ACTIVITY_FLAG_DEFAULT);
  v0[3].opaque[0] = v3;
  os_activity_scope_enter(v3, v0 + 1);
  v4 = swift_task_alloc();
  v0[3].opaque[1] = v4;
  *v4 = v0;
  v4[1] = sub_1884F0774;
  v5 = v0[2].opaque[0];
  v6 = *MEMORY[0x1E69E9840];

  return sub_188437064(v4, v5, v1);
}

id sub_188436D5C(void *a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_expressionType(a1, a2, a3);
  if (v4 <= 2)
  {
    if (!v4)
    {
      v7 = objc_msgSend_constantValue(a1, v5, v6);
      goto LABEL_18;
    }

    if (v4 == 2)
    {
      v7 = objc_msgSend_variable(a1, v5, v6);
LABEL_18:
      v20 = v7;
      goto LABEL_19;
    }

LABEL_22:
    v23 = [CKException alloc];
    v24 = *MEMORY[0x1E695D940];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v28 = objc_msgSend_initWithName_format_(v23, v27, v24, @"Unexpected expression: %@", v26);
    v29 = v28;

    objc_exception_throw(v28);
  }

  if (v4 == 3)
  {
    v7 = objc_msgSend_keyPath(a1, v5, v6);
    goto LABEL_18;
  }

  if (v4 != 14)
  {
    goto LABEL_22;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_collection(a1, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_expressionType(*(*(&v30 + 1) + 8 * i), v11, v12))
        {
          goto LABEL_22;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v30, v34, 16);
    }

    while (v13);
  }

  v18 = objc_msgSend_collection(a1, v16, v17);
  v20 = objc_msgSend_valueForKeyPath_(v18, v19, @"constantValue");

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

uint64_t CKValueIsAcceptablePredicateClass(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = CKAcceptablePredicateValueClasses();
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, &v11, v15, 16);
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_188437064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[58] = a2;
  v3[59] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[60] = v4;
  v5 = *(v4 - 8);
  v3[61] = v5;
  v6 = *(v5 + 64) + 15;
  v3[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188437124, 0, 0);
}

uint64_t sub_188437124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883FB4E4();
  sub_1883F653C();
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v12 = v10[58];
  v13 = type metadata accessor for Logger();
  sub_1883F85F4(v13, qword_1EA90C9F8);

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v15 = v10[58];
    sub_1883F9984();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v12 = 136315138;
    v16 = sub_1883FE43C();
    sub_1883FC788(v16, v17, v18);
    sub_1883FE2FC();
    *(v12 + 4) = v11;
    sub_1883F831C();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v24 = v10[62];
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  sub_1883F7B10(&dword_1886FB5C0);
  v37 = v25;
  v26 = swift_task_alloc();
  v10[63] = v26;
  *v26 = v10;
  v26[1] = sub_1884F0A4C;
  v27 = v10[62];
  sub_1883FE860();
  sub_1883FF050();
  sub_1883F614C();

  return v33(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10);
}

uint64_t sub_188437458()
{
  qword_1ED4B6110 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

__CFString *CKCreateGUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_188437CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1883FDE5C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CKDPRecordIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPIdentifier);
        objc_storeStrong((a1 + 8), v32);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom(v32, a2, v33))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPRecordZoneIdentifier);
    objc_storeStrong((a1 + 16), v32);
    v41 = 0;
    v42 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordZoneIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_39;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_39:
        *(a1 + 8) = v56;
        goto LABEL_40;
      }

      if (v32 == 2)
      {
        v33 = objc_alloc_init(CKDPIdentifier);
        v34 = 16;
      }

      else
      {
        if (v32 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_40;
        }

        v33 = objc_alloc_init(CKDPIdentifier);
        v34 = 24;
      }

      objc_storeStrong((a1 + v34), v33);
      v61[0] = 0;
      v61[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom(v33, a2, v35))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_40:
      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordReferenceReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKDPRecordIdentifier);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_36:
        *(a1 + 16) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

id sub_188438A30(void *a1)
{
  if (__sTestOverridesAvailable[0] == 1)
  {
    v2 = a1;
  }

  else
  {
    v3 = NSHomeDirectory();
    v2 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, v4, v3, @"~");
  }

  return v2;
}

uint64_t CKPersonaPerformBlock(void *a1, uint64_t a2)
{
  if (a1)
  {
    return objc_msgSend_performBlock_(a1, a2, a2);
  }

  else
  {
    return (*(a2 + 16))(a2, 0);
  }
}

void sub_188438C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188439230(uint64_t a1, const char *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 64))
    {
      v3 = objc_autoreleasePoolPush();
      v6 = objc_msgSend_logOperations(*(a1 + 8), v4, v5);
      v9 = v6;
      if ((*(a1 + 48) & 1) == 0)
      {
        *(a1 + 48) = 1;
        if (v6)
        {
          v10 = objc_msgSend_fetchedColumns(*(a1 + 64), v7, v8);
          v56 = objc_msgSend_componentsJoinedByString_(v10, v11, @", ");
          v14 = objc_msgSend_searchBindingsDescription(*(a1 + 64), v12, v13);
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = *(a1 + 8);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v20 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v21 = *(a1 + 64);
            v22 = v20;
            v25 = objc_msgSend_label(v21, v23, v24);
            *buf = 138544642;
            v60 = v16;
            v61 = 2048;
            v62 = a1;
            v63 = 2114;
            v64 = v19;
            v65 = 2114;
            v66 = v25;
            v67 = 2114;
            v68 = v56;
            v69 = 2114;
            v70 = v14;
            _os_log_impl(&dword_1883EA000, v22, OS_LOG_TYPE_INFO, "%{public}@(%p): Begin enumeration of %{public}@ (label=%{public}@), FETCH (%{public}@) WHERE %{public}@", buf, 0x3Eu);
          }
        }
      }

      v26 = *(a1 + 64);
      v58 = 0;
      v27 = objc_msgSend_step_(v26, v7, &v58);
      v28 = v58;
      if (v27)
      {
        v31 = v28 == 0;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        v37 = *(a1 + 8);
        v38 = *(a1 + 64);
        v57 = 0;
        v33 = objc_msgSend_newEntryObjectFromStatement_error_(v37, v29, v38, &v57);
        v32 = v57;
        v39 = *(a1 + 56);
        if (v39)
        {
          v40 = (*(v39 + 16))(v39, v33);

          v33 = v40;
        }

        objc_storeStrong((a1 + 40), v33);
        if (v9)
        {
          v43 = objc_msgSend_fetchedColumns(*(a1 + 64), v41, v42);
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v46 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v47 = *(a1 + 8);
            v48 = v46;
            v49 = objc_opt_class();
            v51 = objc_msgSend_descriptionOfProperties_from_(v49, v50, v43, v33);
            *buf = 138543874;
            v60 = v45;
            v61 = 2048;
            v62 = a1;
            v63 = 2114;
            v64 = v51;
            _os_log_impl(&dword_1883EA000, v48, OS_LOG_TYPE_INFO, "%{public}@(%p): enumeration fetched: (%{public}@)", buf, 0x20u);
          }
        }
      }

      else
      {
        v32 = v28;
        objc_msgSend_invalidate(a1, v29, v30);
        v33 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

      objc_autoreleasePoolPop(v3);
      if (!v32)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKInternalErrorDomain", 1, @"Enumeration already finished");
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v36 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
      {
        v53 = *(a1 + 24);
        v54 = *(a1 + 16);
        v55 = *(a1 + 32);
        *buf = 138544386;
        v60 = v35;
        v61 = 2048;
        v62 = a1;
        v63 = 2114;
        v64 = v53;
        v65 = 2114;
        v66 = v54;
        v67 = 2114;
        v68 = v55;
        _os_log_fault_impl(&dword_1883EA000, v36, OS_LOG_TYPE_FAULT, "%{public}@(%p): Enumeration already finished. table: %{public}@ in group: %{public}@, error=%{public}@", buf, 0x34u);
      }

      if (!v32)
      {
        goto LABEL_31;
      }
    }

    objc_storeStrong((a1 + 32), v32);
    sub_18868114C(v32, *(a1 + 8), sel__nextObject);
LABEL_31:
  }

  v52 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188439984(uint64_t result, const char *a2, uint64_t a3)
{
  if ((a3 & 0x40) == 0)
  {
    return objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(result + 32), a2, qword_1EA9123A0, a2, a3, *(result + 40));
  }

  return result;
}

void sub_1884399A8(void *a1, void *a2, char a3, void *a4)
{
  v41 = a1;
  v7 = a2;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = v7;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  v14 = sub_188439E1C(v9, v13);
  InstanceMethod = class_getInstanceMethod(v9, v14);
  Implementation = method_getImplementation(InstanceMethod);
  if (!Implementation)
  {
    v26 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v17, v18);
    v27 = [CKSignificantIssue alloc];
    v28 = [CKSourceCodeLocation alloc];
    v30 = objc_msgSend_initWithFilePath_lineNumber_(v28, v29, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1185);
    v31 = NSStringFromClass(v9);
    v33 = objc_msgSend_initWithSourceCodeLocation_format_(v27, v32, v30, @"Failed to find a setter for %@ on %@", v7, v31);
    objc_msgSend_handleSignificantIssue_actions_(v26, v34, v33, 0);

    v35 = MEMORY[0x1E696AEC0];
    v36 = NSStringFromClass(v9);
    v38 = objc_msgSend_stringWithFormat_(v35, v37, @"Failed to find a setter for %@ on %@", v7, v36);

    objc_msgSend_UTF8String(v38, v39, v40);
    _os_crash();
    __break(1u);
    JUMPOUT(0x188439C24);
  }

  v19 = Implementation;
  switch(a3)
  {
      v20 = objc_msgSend_charValue(v41, v17, v18);
      goto LABEL_17;
    case 'a':
      v20 = objc_msgSend_shortValue(v41, v17, v18);
      goto LABEL_17;
    case 'b':
      v22 = objc_msgSend_longValue(v41, v17, v18);
      goto LABEL_11;
    case 'c':
      v21 = objc_msgSend_longLongValue(v41, v17, v18);
      goto LABEL_19;
    case 'd':
      v21 = objc_msgSend_integerValue(v41, v17, v18);
      goto LABEL_19;
    case 'e':
      v20 = objc_msgSend_unsignedCharValue(v41, v17, v18);
      goto LABEL_17;
    case 'f':
      v20 = objc_msgSend_unsignedShortValue(v41, v17, v18);
      goto LABEL_17;
    case 'g':
      v22 = objc_msgSend_unsignedLongValue(v41, v17, v18);
LABEL_11:
      v23 = v22;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'h':
      v21 = objc_msgSend_unsignedLongLongValue(v41, v17, v18);
      goto LABEL_19;
    case 'i':
      v21 = objc_msgSend_unsignedIntegerValue(v41, v17, v18);
LABEL_19:
      v23 = v21;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'j':
      v20 = objc_msgSend_BOOLValue(v41, v17, v18);
LABEL_17:
      v23 = v20;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'k':
      objc_msgSend_floatValue(v41, v17, v18);
      v19(v8, v14);
      goto LABEL_21;
    case 'l':
      objc_msgSend_doubleValue(v41, v17, v18);
      v19(v8, v14);
      goto LABEL_21;
    default:
      v24 = v8;
      v25 = v14;
      v23 = v41;
LABEL_20:
      (v19)(v24, v25, v23);
LABEL_21:

      return;
  }
}

SEL sub_188439E1C(objc_class *a1, const char *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  Property = class_getProperty(a1, a2);
  v4 = property_copyAttributeValue(Property, "S");
  if (v4)
  {
    v5 = v4;
    v6 = sel_registerName(v4);
    free(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    v9 = strlen(a2);
    v12 = v9;
    v13 = v9 + 5;
    if (v9 + 5 >= 0x40)
    {
      v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, "SEL setterForProperty(__unsafe_unretained Class, const char *)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v16, v19, v18, @"CKSQLiteTable.m", 66, @"property name too long: %s", a2);
    }

    MEMORY[0x1EEE9AC00](v9);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v14 = 25971;
    v14[2] = 116;
    memcpy(v14 + 3, a2, v12);
    v14[3] = __toupper(v14[3]);
    *&v14[v12 + 3] = 58;
    result = sel_registerName(v14);
    v15 = *MEMORY[0x1E69E9840];
  }

  return result;
}

id sub_18843A270(void *a1, void *a2, char a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = v7;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  Property = class_getProperty(v9, v13);
  v15 = property_copyAttributeValue(Property, "G");
  if (v15)
  {
    v16 = v15;
    v17 = sel_registerName(v15);
    free(v16);
  }

  else
  {
    v17 = sel_registerName(v13);
  }

  InstanceMethod = class_getInstanceMethod(v9, v17);
  if (!InstanceMethod)
  {
    v66 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v19, v20);
    v67 = [CKSignificantIssue alloc];
    v68 = [CKSourceCodeLocation alloc];
    v70 = objc_msgSend_initWithFilePath_lineNumber_(v68, v69, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1157);
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v74 = objc_msgSend_initWithSourceCodeLocation_format_(v67, v73, v70, @"Could not find getter method for property %@ on class %@", v7, v72);
    objc_msgSend_handleSignificantIssue_actions_(v66, v75, v74, 0);

    v76 = MEMORY[0x1E696AEC0];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    v7 = objc_msgSend_stringWithFormat_(v76, v79, @"Could not find getter method for property %@ on class %@", v7, v78);

    objc_msgSend_UTF8String(v7, v80, v81);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  Implementation = method_getImplementation(InstanceMethod);
  switch(a3)
  {
      v22 = MEMORY[0x1E696AD98];
      v23 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithChar_(v22, v24, v23);
      break;
    case 'a':
      v49 = MEMORY[0x1E696AD98];
      v50 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithShort_(v49, v51, v50);
      break;
    case 'b':
      v40 = MEMORY[0x1E696AD98];
      v41 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithInt_(v40, v42, v41);
      break;
    case 'c':
      v43 = MEMORY[0x1E696AD98];
      v44 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithLongLong_(v43, v45, v44);
      break;
    case 'd':
      v31 = MEMORY[0x1E696AD98];
      v32 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithInteger_(v31, v33, v32);
      break;
    case 'e':
      v52 = MEMORY[0x1E696AD98];
      v53 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedChar_(v52, v54, v53);
      break;
    case 'f':
      v55 = MEMORY[0x1E696AD98];
      v56 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedShort_(v55, v57, v56);
      break;
    case 'g':
      v46 = MEMORY[0x1E696AD98];
      v47 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedInt_(v46, v48, v47);
      break;
    case 'h':
      v61 = MEMORY[0x1E696AD98];
      v62 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedLongLong_(v61, v63, v62);
      break;
    case 'i':
      v37 = MEMORY[0x1E696AD98];
      v38 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedInteger_(v37, v39, v38);
      break;
    case 'j':
      v58 = MEMORY[0x1E696AD98];
      v59 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithBool_(v58, v60, v59);
      break;
    case 'k':
      v28 = MEMORY[0x1E696AD98];
      (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithFloat_(v28, v29, v30);
      break;
    case 'l':
      v34 = MEMORY[0x1E696AD98];
      (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithDouble_(v34, v35, v36);
      break;
    default:
      v25 = (Implementation)(v8, v17);
      break;
  }

  v64 = v25;
  if (v25 == qword_1EA9123A0 && (a4 & 1) == 0)
  {
LABEL_26:
    v82 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v26, v27);
    v83 = [CKSignificantIssue alloc];
    v84 = [CKSourceCodeLocation alloc];
    v86 = objc_msgSend_initWithFilePath_lineNumber_(v84, v85, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1162);
    v87 = objc_opt_class();
    v88 = NSStringFromClass(v87);
    v90 = objc_msgSend_initWithSourceCodeLocation_format_(v83, v89, v86, @"Attempted to use property %@ on entry of class %@ but the property value has not been fetched into the object.", v7, v88);
    objc_msgSend_handleSignificantIssue_actions_(v82, v91, v90, 0);

    v92 = MEMORY[0x1E696AEC0];
    v93 = objc_opt_class();
    v94 = NSStringFromClass(v93);
    v96 = objc_msgSend_stringWithFormat_(v92, v95, @"Attempted to use property %@ on entry of class %@ but the property value has not been fetched into the object.", v7, v94);

    objc_msgSend_UTF8String(v96, v97, v98);
    _os_crash();
    __break(1u);
    JUMPOUT(0x18843A76CLL);
  }

  return v64;
}

BOOL sub_18843A9F8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_expressionType(a1, a2, a3))
  {
    return 0;
  }

  v7 = objc_msgSend_constantValue(a1, v4, v5);
  v6 = v7 == 0;

  return v6;
}

pthread_mutex_t *_CKSQLDBSerializerLock(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 64);
  if (v2 == pthread_self())
  {
    return 0;
  }

  pthread_mutex_lock(v1);
  v1[1].__sig = pthread_self();
  return v1;
}

id CKSQLiteContainerAttribution_None(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

void sub_18843AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843AF88(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  v6 = objc_msgSend_wakeFromDatabase(a3, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_18843B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843B7F0(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 48, 1))
    {
      v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v3, v4);
      Property = objc_getProperty(a1, v6, 48, 1);
      objc_msgSend_endActivity_(v5, v8, Property);

      v9 = a1[6];
      a1[6] = 0;
    }

    v10 = a1[5];
    a1[5] = 0;
  }
}

void sub_18843BD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_18843BD9C(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"operationID=%@", a1[34]);
    v2 = vars8;
  }

  return a1;
}

__CFString *CKBackgroundTaskPriorityDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BFE18[a1];
  }
}

id sub_18843C288()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919C08;
  v7 = qword_1EA919C08;
  if (!qword_1EA919C08)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1886457AC;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_1886457AC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18843C350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843C75C(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_allSiteIdentifiers(a3, a2, a3);
  objc_msgSend_unionSet_(v3, v4, v5);
}

void sub_18843C858(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18843CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  objc_sync_exit(v9);

  _Unwind_Resume(a1);
}

void sub_18843CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843CCB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_sync_enter(v6);
  v9 = objc_msgSend_clockValues(v6, v7, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18843CDE4;
  v12[3] = &unk_1E70BD2E8;
  v10 = v5;
  v13 = v10;
  v14 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, v12);

  objc_sync_exit(v6);
}

void sub_18843CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843CDE4(uint64_t a1, void *a2)
{
  v25 = a2;
  v5 = objc_msgSend_shortValue(*(a1 + 32), v3, v4) >> 8;
  v6 = *(a1 + 40);
  v9 = objc_msgSend_modifier(v25, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);
  v12 = v5;

  if (v11)
  {
    if (objc_msgSend_shortValue(v11, v13, v14) == v12)
    {
      goto LABEL_6;
    }

    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v18, "[CKDistributedTimestampAttributedVector(ClockVectorSupport) clockVector_clockTypesForAllModifiers]_block_invoke_2");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v17, v20, v19, @"CKDistributedTimestampVector.mm", 1754, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
  }

  else
  {
    v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v13, v12);
    v21 = *(a1 + 40);
    v19 = objc_msgSend_modifier(v25, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v24, v17, v19);
  }

LABEL_6:
}

void sub_18843CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18843D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v22 = v21;

  _Block_object_dispose(&a15, 8);
  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_18843D0DC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  objc_sync_enter(v8);
  v9 = v6;
  objc_sync_enter(v9);
  if (objc_msgSend_timestampCount(v8, v10, v11) || objc_msgSend_timestampCount(v9, v12, v13))
  {
    v14 = objc_msgSend_allSiteIdentifiers(v8, v12, v13);
    v17 = objc_msgSend_allSiteIdentifiers(v9, v15, v16);
    v20 = objc_msgSend_mutableCopy(v14, v18, v19);
    v22 = v20;
    if (v17)
    {
      objc_msgSend_unionSet_(v20, v21, v17);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_18843D44C;
    v26[3] = &unk_1E70BD6A8;
    v29 = v7;
    v23 = v14;
    v27 = v23;
    v24 = v17;
    v28 = v24;
    objc_msgSend_enumerateObjectsUsingBlock_(v22, v25, v26);
  }

  objc_sync_exit(v9);

  objc_sync_exit(v8);
}

void sub_18843D25C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18843D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_18843D3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v6, v4, v5);
}

void sub_18843D44C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v9 = v3;
  v6 = objc_msgSend_containsObject_(*(a1 + 32), v5, v3);
  v8 = objc_msgSend_containsObject_(*(a1 + 40), v7, v9);
  (*(v4 + 16))(v4, v9, v6, v8);
}

void sub_18843D4E8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (!objc_msgSend_timestampCount(v5, v6, v7))
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 32) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v14, v15);
  }
}

void sub_18843D6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void CKRecordKeyValueSetting.subscript.getter()
{
  sub_1883F8AF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Optional();
  v10 = sub_1883F70DC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v61 - v19;
  v21 = MEMORY[0x18CFD5010](v6, v4, v18);
  v22 = [v0 objectForKey_];

  if (v22)
  {
    v23 = sub_1884049C0(v2);
    if (!v23)
    {
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      sub_18848CE70(&v66, v65);
      sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
      v42 = swift_dynamicCast();
      sub_1883F90F4(v16, v42 ^ 1u, 1, v2);
      sub_1884054F4(v16);
      if (v43)
      {
        if (qword_1ED4B5C68 != -1)
        {
          sub_1883F7264();
        }

        v44 = type metadata accessor for Logger();
        sub_1883FDE5C(v44, qword_1ED4B5C70);
        swift_unknownObjectRetain();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          objc_opt_self();
          v49 = swift_dynamicCastObjCClassUnconditional();
          *(v47 + 4) = v49;
          *v48 = v49;
          swift_unknownObjectRetain();
          _os_log_impl(&dword_1883EA000, v45, v46, "Error converting record value %@ to requested type", v47, 0xCu);
          sub_18840E840(v48, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_1883FE944(&v66);
      }

      else
      {
        sub_1883FE944(&v66);
        swift_unknownObjectRelease();
      }

      (*(v12 + 32))(v8, v16, v9);
      goto LABEL_28;
    }

    v25 = v23;
    v26 = v24;
    v62 = v12;
    v63 = v9;
    v64 = v8;
    v27 = *(v24 + 24);
    v28 = type metadata accessor for Optional();
    v61[0] = v61;
    v29 = sub_1883F70DC(v28);
    v31 = v30;
    v33 = *(v32 + 64);
    v34 = MEMORY[0x1EEE9AC00](v29);
    v36 = v61 - v35;
    v61[1] = v22;
    v27(v22, v25, v26, v34);
    if (sub_1883F971C(v36, 1, v25) == 1)
    {
      (*(v31 + 8))(v36, v28);
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
    }

    else
    {
      *(&v67 + 1) = v25;
      v68 = v26;
      sub_188403664(&v66);
      sub_1883F7930(v25);
      (*(v50 + 32))();
    }

    sub_18847E0A0(&v66, v65, &qword_1EA90DC60, &unk_1886F9450);
    sub_18844E6FC(&qword_1EA90DC60, &unk_1886F9450);
    v51 = swift_dynamicCast();
    sub_1883F90F4(v20, v51 ^ 1u, 1, v2);
    v53 = v63;
    v52 = v64;
    v54 = v62;
    if (*(&v67 + 1))
    {
      sub_1884054F4(v20);
      if (v43)
      {
        if (qword_1ED4B5C68 != -1)
        {
          sub_1883F7264();
        }

        v55 = type metadata accessor for Logger();
        sub_1883FDE5C(v55, qword_1ED4B5C70);
        swift_unknownObjectRetain();
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v56, v57))
        {
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        objc_opt_self();
        v60 = swift_dynamicCastObjCClassUnconditional();
        *(v58 + 4) = v60;
        *v59 = v60;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_1883EA000, v56, v57, "Error converting record value %@ to requested type", v58, 0xCu);
        sub_18840E840(v59, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }

    swift_unknownObjectRelease();
LABEL_23:
    (*(v54 + 32))(v52, v20, v53);
    sub_18840E840(&v66, &qword_1EA90DC60, &unk_1886F9450);
LABEL_28:
    sub_1883F8178();
    return;
  }

  sub_1883F8178();

  sub_1883F90F4(v37, v38, v39, v40);
}

uint64_t CKRecordKeyValueSetting.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_18847E0A0(a1, v11, &qword_1EA90DC78, &qword_1886F9470);
  v8 = v12;
  if (v12)
  {
    sub_188400B68(v11, v12);
    v8 = CKRecordValueProtocol.CKToObjCRecordValue()(v8);
    sub_1883FE944(v11);
  }

  else
  {
    sub_18840E840(v11, &qword_1EA90DC78, &qword_1886F9470);
  }

  v9 = MEMORY[0x18CFD5010](a2, a3);

  [v4 setObject:v8 forKeyedSubscript:v9];
  swift_unknownObjectRelease();

  return sub_18840E840(a1, &qword_1EA90DC78, &qword_1886F9470);
}

uint64_t sub_18843DE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18844E6FC(a3, a4);
  sub_1883F7308(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t CKRecordValueProtocol.CKToObjCRecordValue()(uint64_t a1)
{
  v3 = sub_1883F70DC(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(v5 + 16);
  v12(v18 - v13, v1, a1, v11);
  sub_18844E6FC(&qword_1EA90DC58, &qword_1886F9448);
  if (swift_dynamicCast())
  {
    sub_18843E080(v18, v20);
    v14 = v21;
    v15 = v22;
    sub_188400B68(v20, v21);
    v16 = (*(v15 + 16))(v14, v15);
    sub_1883FE944(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_18840E840(v18, &qword_1EA90DC60, &unk_1886F9450);
    (v12)(v9, v1, a1);
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    swift_dynamicCast();
    return v20[0];
  }

  return v16;
}

uint64_t sub_18843E080(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_18843E0A0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

NSData sub_18843E0E8()
{
  v1 = *v0;
  v2 = v0[1];
  return j___s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF();
}

id sub_18843E0F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_18843E108();
}

id sub_18843E108()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  return v1;
}

uint64_t sub_18843E240(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

BOOL CKIsIndexedArrayKey(void *a1)
{
  v3 = 0;
  v1 = CKProcessIndexedArrayKey(a1, &v3, 0, 0);
  return v3 != 0;
}

uint64_t CKCurrentThreadQualityOfService()
{
  v0 = qos_class_self();
  if (v0 <= 16)
  {
    if (v0 == QOS_CLASS_BACKGROUND)
    {
      return 9;
    }

    return -1;
  }

  if (v0 == QOS_CLASS_USER_INTERACTIVE)
  {
    return 33;
  }

  if (v0 != QOS_CLASS_USER_INITIATED)
  {
    if (v0 == QOS_CLASS_UTILITY)
    {
      return 17;
    }

    return -1;
  }

  return 25;
}

void sub_18843EA28(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 40), v9, v7);
  v13 = objc_msgSend_length(v7, v11, v12);
  v14 = &v36 - ((v13 + 17) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 64;
  v15 = v13 + 1;
  objc_msgSend_getCString_maxLength_encoding_(v7, v16, (v14 + 1), v13 + 1, 1);
  v14[v15] = 0;
  v17 = sqlite3_bind_parameter_index(*(*(a1 + 32) + 16), v14);
  if (v17)
  {
    v19 = v17;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_msgSend_unsignedLongValue(v10, v20, v21);
      }

      else
      {
        v24 = v10;
        if (v8)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
          v37 = v24;
          v27 = objc_msgSend_tableForReferenceProperty_(WeakRetained, v26, v24);

          v38[0] = 0;
          v36 = v27;
          v29 = objc_msgSend_databaseReferenceIDForSearchingForReferent_error_(v27, v28, v8, v38);
          v30 = v38[0];
          v31 = v38[0];

          if (v31 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v32, v31) & 1) == 0)
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v30);
          }

          v24 = v37;
        }

        else
        {
          v29 = 0;
        }

        v22 = 1;
        v8 = v29;
      }
    }

    else
    {
      v22 = 0;
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_17;
    }

    v23 = objc_msgSend_bindValue_ofType_atIndex_(*(a1 + 32), v18, v8, v22, v19);
  }

  else
  {
    v23 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 1, @"No binding index for %@", v7);
  }

  v33 = *(*(a1 + 40) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v23;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_17:
    *a4 = 1;
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_18843ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843F074(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  v6 = objc_msgSend_finishInitializing(a3, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

id CKSQLiteContainerAttribution_ActivitySharing(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id sub_18843F254(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a1, a2, a3);
  v6 = objc_msgSend_CKSanitizedPath(v3, v4, v5);

  return v6;
}

void sub_18843F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void static CKDeviceCapability.fromSqliteRepresentations(_:)(uint64_t a1)
{
  v1 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v12 = a1 + 40;
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *(v4 - 1);
    v7 = *v4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v9 = MEMORY[0x18CFD5010](v6, v7);
    v10 = [ObjCClassFromMetadata fromSqliteRepresentation_];
    sub_18840370C();

    ++v1;
    v4 += 2;
    if (v6)
    {
      MEMORY[0x18CFD52F0]();
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        sub_1883F8DD4(v11);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v5;
      v3 = v12;
      goto LABEL_2;
    }
  }
}

void static CKDeviceCapability.fromSqliteRepresentation(_:)()
{
  sub_1883F8AF0();
  v0 = type metadata accessor for String.Encoding();
  v1 = sub_1883F70DC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v3 + 8))(v7, v0);
  if (v9 >> 60 != 15)
  {
    v10 = type metadata accessor for JSONDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_18843FDB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v13 = v27.level - 1;
    if ((*&v27.level - 1) > 2)
    {
    }

    else
    {
      sub_188440388();
      v15 = v14;
      v17 = v16;
      sub_188440388();
      v19 = v18;
      v21 = v20;

      type metadata accessor for CKDeviceCapability(v22);
      v27.level = v13;
      v27.name._countAndFlagsBits = v15;
      v27.name._object = v17;
      v27.value._countAndFlagsBits = v19;
      v27.value._object = v21;
      CKDeviceCapability.init(_:)(v23, &v27);
    }

    v24 = sub_1883F958C();
    sub_18841BA74(v24, v25);
  }

  sub_1883F8178();
}

unint64_t sub_18843FDB8()
{
  result = qword_1EA90C140;
  if (!qword_1EA90C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C140);
  }

  return result;
}

double sub_18843FE0C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18843FE54(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_18843FE54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90D848, &qword_1886F8840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_1884401E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_1883FE944(a1);
  v20 = v22;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

char *sub_18844006C(void *a1, const char *a2)
{
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 1);
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v8 = objc_msgSend_length(v5, v6, v7);
  if (v8)
  {
    v9 = v5;
    v12 = objc_msgSend_mutableBytes(v9, v10, v11);
    if (v12)
    {
      do
      {
        v13 = *v12;
        v14 = (v13 - 48) >= 0xA && (v13 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v14 && v13 != 32 && v13 != 45)
        {
          *v12 = 95;
        }

        ++v12;
        --v8;
      }

      while (v8);
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_msgSend_initWithData_encoding_(v15, v16, v5, 1);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

unint64_t sub_1884401E4()
{
  result = qword_1EA90C170;
  if (!qword_1EA90C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C170);
  }

  return result;
}

uint64_t sub_18844024C(char a1)
{
  if (!a1)
  {
    return 0x6C6576656CLL;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x65756C6176;
}

_BYTE *_s32JsonSerializableDeviceCapabilityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x188440360);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_188440388()
{
  sub_1883F7FF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  do
  {
    v6 = v5 - 1;
    if (v5 < 1)
    {
      break;
    }

    sub_188440414(v5, v3, v1);

    v7 = sub_1883F7BC0();
    MEMORY[0x18CFD51F0](v7);
    v5 = v6;
  }

  while (!v8);
  sub_1883FDCC0();
}

uint64_t sub_188440414(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a3;
  if ((a3 & 0x1000000000000000) != 0)
  {
LABEL_5:
    String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  }

  sub_1883FEFEC();
  return sub_1884404C4(v4, v5, v6, v3);
}

uint64_t sub_1884404C4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    result = sub_188518088(a2, a3, a4);
    v6 = result;
  }

  if ((v7 & 0xC) == v9)
  {
    result = sub_188518088(v7, a3, a4);
    v7 = result;
  }

  v10 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 <= 4 * v10 && v6 >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void __swiftcall CKDeviceCapability.init(_:)(CKDeviceCapability *__return_ptr retstr, CloudKit::CKDeviceCapability *a2)
{
  sub_1883F8AF0();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = &v8[OBJC_IVAR___CKDeviceCapability__wrapped];
  v10 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped];
  v11 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
  v12 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
  v13 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 24];
  v14 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 32];
  *v9 = v3;
  *(v9 + 1) = v4;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  v15 = v8;
  sub_1884406C8(v10, v11, v12);

  sub_1883F8178();
}

id sub_188440660()
{
  v1 = &v0[OBJC_IVAR___CKDeviceCapability__wrapped];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  sub_1884406C8(0, 0, 0);
  v3.receiver = v0;
  v3.super_class = CKDeviceCapability;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1884406C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_188440C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188440C18(void *a1)
{
  if (a1)
  {
    if ((a1[19] & 8) == 0)
    {
      a1 = a1[17];
    }

    a1 = a1;
    v1 = vars8;
  }

  return a1;
}

void sub_188440FD8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v4 = objc_msgSend_importantUserRecordAccessQueue(CKContainer, a2, a3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1886BE5B4;
    v5[3] = &unk_1E70BF2E0;
    objc_copyWeak(&v7, (a1 + 56));
    v6 = *(a1 + 32);
    dispatch_sync(v4, v5);

    objc_destroyWeak(&v7);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1884410B8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Account access authorization refresh completed.", &v11, 2u);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEFAULT, "Notifying of account change, due to the authorization of %zu containers changing.", &v11, 0xCu);
    }

    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    v8 = CKAccountChangedNotificationName();
    objc_msgSend_postNotificationName_object_(v7, v9, v8, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_188441344(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Authorization change notification received for all containers", v21, 2u);
  }

  v5 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v3, v4);
  objc_sync_enter(v5);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((v5[8] & 1) == 0)
  {
    v5[9] = 1;
LABEL_9:
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
    v11 = *(a1 + 32);
    v14 = sub_1884239B0(v11, v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v10, v15, v11, sel_connectionBecameInvalid_, @"CKXPCConnectionInterrupted", v14);

    v18 = sub_1884239B0(*(a1 + 32), v16, v17);
    objc_msgSend_activate(v18, v19, v20);

    objc_sync_exit(v5);
    goto LABEL_10;
  }

  objc_sync_exit(v5);

  objc_msgSend___refreshAccountAccessAuthorization(v5, v8, v9);
LABEL_10:
}

id sub_188441668(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteKeyValueStore, a2, a1);
  if (!v4)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "CKSQLiteKeyValueStore *keyValueStoreForTableGroup(CKSQLiteTableGroup *__strong)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKSQLiteKeyValueStorage.m", 117, @"CKSQLiteKeyValueStorage method invoked on a table group that does not have a key value store");
  }

  return v4;
}

uint64_t CKBootDate()
{
  v0 = MEMORY[0x1E695DF00];
  v3 = CKBootTime();

  return objc_msgSend_dateWithTimeIntervalSince1970_(v0, v1, v2, v3);
}

id CKSQLiteContainerAttribution_Health(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_CloudDocs(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

uint64_t sub_188442124(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

id sub_18844227C(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  if (sqlite3_bind_null(a1, a2))
  {
    v7 = objc_msgSend_sqlErrorWithMessage_(v5, v6, @"Failed to bind NULL value");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1884425A0()
{
  sub_1884137B8();
  if (v3)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883FD7E8();
  }

  if (v2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = v1;
  v5 = sub_1883F7BC0();
  sub_188442678(v5, v6, v0);
}

uint64_t sub_188442654(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_188442678(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = a3;
  v5 = v3;
  v22 = [v3 state];
  if (a1)
  {
    v8 = sub_1883F4C9C(a1);
    if (v8)
    {
      v9 = v8;
      v24 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v9 < 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v20 = v3;
      v10 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x18CFD59D0](v10, a1);
        }

        else
        {
          v11 = *(a1 + 8 * v10 + 32);
        }

        v12 = v11;
        ++v10;
        [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:v11 type:0];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v24 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v9 != v10);
      v5 = v20;
      v4 = a3;
    }
  }

  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F84DC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 *v4];

  v15 = [v5 state];
  if (a2)
  {
    v16 = sub_1883F4C9C(a2);
    if (v16)
    {
      v17 = v16;
      v24 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x18CFD59D0](0, a2);
          }

          else
          {
            v18 = *(a2 + 32);
          }

          sub_188410C80();
          [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:&v24 type:1];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v19 = *(v24 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_1883F86B8();
          specialized ContiguousArray._endMutation()();
        }
      }

      goto LABEL_22;
    }

    v4 = a3;
  }

  sub_1883F84DC();
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v15 *v4];
}

uint64_t sub_188442930(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (!a2)
  {
    result = objc_msgSend_periodicExpire(*(result + 32), 0, a3);
  }

  *(*(v3 + 32) + 88) = 0;
  return result;
}

uint64_t sub_188442B84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18844E6FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_188442BE8()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
}

uint64_t sub_188442C14(uint64_t a1)
{

  return sub_1883F90F4(a1, 0, 1, v1);
}

uint64_t sub_188442C30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18844E6FC(a3, a4);
  sub_1883F7B50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1883F7EE0();
  v9(v8);
  return a2;
}

uint64_t sub_188442C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_188442DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__sTestOverridesAvailable[0])
  {
    v5 = @"TEST_AccountInfoValidationCounter";
  }

  else
  {
    v5 = @"AccountInfoValidationCounter";
  }

  v9 = v3;
  v7 = objc_msgSend_integerForKey_(v3, v4, v5);
  if (!v7)
  {
    if (__sTestOverridesAvailable[0])
    {
      v8 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v8 = @"AccountInfoValidationCounter";
    }

    v7 = 1;
    objc_msgSend_setInteger_forKey_(v9, v6, 1, v8);
  }

  *(*(a1 + 32) + 64) = v7;
}

uint64_t sub_188442E80()
{
}

uint64_t sub_188442EA0()
{
  v1 = *(v0 + 128);
  if ([*(v1 + 16) needsToFetchDatabaseChanges])
  {
    return 1;
  }

  v2 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v3 = sub_1883F4C9C(v2);

  if (v3 || sub_188427168() || sub_1884EFAA0())
  {
    return 1;
  }

  else
  {
    return [*(v1 + 16) needsToSaveDatabaseSubscription];
  }
}

uint64_t sub_188442F3C(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);
}

uint64_t sub_188442F58()
{
  v2 = v0[192];
  v3 = v0[183];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[163];
}

uint64_t sub_188442FB8()
{
  sub_1883FD7A0();
  sub_1883FC738();
  v1 = *(v0[3] + 128);
  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v28 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 16;
      --v4;
    }

    while (v4);

    v9 = v28;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_188443204(v9);
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v29 = v5;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      if (*v14 == 1)
      {
        v16 = v15;
      }

      else
      {
        v17 = [v15 zoneID];
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v29 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 16;
      --v13;
    }

    while (v13);

    v19 = v29;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v0[2] = sub_1884043A8(v19);
  v20 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v21 = sub_1884043A8(v20);
  sub_1884433B0(v21);
  v0[4] = sub_1883F5DF8(v0[2]);

  v0[5] = sub_188510860(v10);

  v22 = swift_task_alloc();
  v0[6] = v22;
  *v22 = v0;
  v22[1] = sub_1884F0610;
  v23 = v0[3];
  sub_1883FE860();
  sub_1883F9968();

  return sub_1884E5CF0(v24, v25);
}

__n128 sub_188443300(__n128 *a1)
{
  v1[10].n128_u64[0] = a1;
  result = v1[4];
  a1[1] = result;
  return result;
}

id sub_188443320(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_188443358()
{
  v2 = *(v0 - 144);
  result = *(v0 - 136);
  v3 = *(v0 - 160);
  return result;
}

void sub_1884433B0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1883FDE28();
    sub_1883F4C5C(v2, v3, v4);
    sub_1883FDE28();
    sub_1883F66E4(v5, v6, v7);
    sub_1883F84DC();
    Set.Iterator.init(_cocoa:)();
    v1 = v25[1];
    v8 = v25[2];
    v9 = v25[3];
    v10 = v25[4];
    v11 = v25[5];
  }

  else
  {
    v10 = 0;
    v12 = *(a1 + 32);
    sub_1883F9AD4();
    v8 = (v1 + 56);
    v9 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(v13 << v15);
    }

    else
    {
      v16 = v13;
    }

    v11 = (v16 & *(v1 + 56));
  }

  v17 = (v9 + 64) >> 6;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v10;
    v19 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    sub_1883FA4B8();
    v22 = (v21 & v20);
    v24 = *(*(v1 + 48) + ((v19 << 9) | (8 * v23)));
    if (!v24)
    {
LABEL_18:
      sub_1883F7BC0();
      sub_1883F70C4();
      return;
    }

    while (1)
    {
      sub_188501374(v25, v24, &qword_1ED4B5CC8, off_1E70BA650, &qword_1EA90E598, &qword_1886FB740);

      v10 = v19;
      v11 = v22;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v24 = v25[0];
        v19 = v10;
        v22 = v11;
        if (v25[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_18;
    }

    ++v18;
    if (v8[v19])
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1884435B0()
{
  v0[796] = 0;
  v2 = v0[793];
  v3 = v0[792];

  return sub_18850C174();
}

uint64_t sub_1884435D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v17 = v15[4];
  Strong = swift_weakLoadStrong();
  v15[5] = Strong;
  if (!Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v47 = v15[4];
    v48 = type metadata accessor for Logger();
    sub_1883F85F4(v48, qword_1EA90C9F8);

    v49 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v50 = v15[4];
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v47 = 136315138;
      v51 = sub_1883FE43C();
      sub_1883FB598(v51, v52, v53, v54);
      sub_1883FE2FC();
      *(v47 + 4) = v16;
      sub_1883F831C();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    goto LABEL_23;
  }

  v19 = Strong;
  if (!sub_1883F4C9C(v15[2]) && !sub_1883F4C9C(v15[3]))
  {
LABEL_22:

LABEL_23:
    sub_1883F90C4();
    sub_1883FEB30();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }

  v20 = v15[2];
  v21 = v15[3];

  sub_1884043A8(v22);
  v23 = sub_1884F481C();
  v24 = sub_1883F4C9C(v23);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
LABEL_12:
    v34 = v15[4];
    sub_1884F041C(v25, v14);
    sub_1883F5DF8(v35);
    sub_1884F481C();

    if (*(v34 + 160))
    {
      v36 = v15[3];
      sub_1883F7E80();
      v37 = swift_allocObject();
      v15[6] = v37;
      v37[2] = v14;
      v37[3] = v36;
      v37[4] = v19;
      a10 = sub_188442F84(&unk_1886FAFC0);

      v38 = swift_task_alloc();
      v15[7] = v38;
      *v38 = v15;
      v38[1] = sub_1884E5D1C;
      sub_1883FEB30();

      return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    goto LABEL_22;
  }

  a11 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v24 & 0x8000000000000000) == 0)
  {
    a10 = v14;
    v27 = 0;
    v28 = v15[3];
    v29 = v28 & 0xC000000000000001;
    v30 = v28 + 32;
    do
    {
      if (v29)
      {
        v31 = MEMORY[0x18CFD59D0](v27, v15[3]);
      }

      else
      {
        v31 = *(v30 + 8 * v27);
      }

      v32 = v31;
      ++v27;
      [v31 zoneID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(a11 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v27);
    v25 = a11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1884438DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_188443920(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return sub_188405594(sub_1884C848C);
}

uint64_t sub_18844393C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F877C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  sub_188428FFC(v5);
  sub_1884F4464();
  sub_188404D5C();

  return sub_188443A2C(v7, v8, v9, v10, v11);
}

void *sub_1884439D8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t sub_1884439F0()
{

  return swift_arrayDestroy();
}

uint64_t sub_188443A0C()
{
}

uint64_t sub_188443A2C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_188443A58, 0, 0);
}

uint64_t sub_188443A58()
{
  sub_1883FB4AC();
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 48);
    swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v13 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v6 = sub_188403070(v5);
    *v6 = v7;
    v6[1] = sub_1884F0FFC;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = sub_1883FF484(*(v0 + 24));

    return v13(v10);
  }

  else
  {
    **(v0 + 16) = 0;
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_188443BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1884FEB54;

  return sub_1884FE6A4(a1, a2, a3);
}

void sub_188443C7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_188443C9C()
{
  v404 = v0;
  if (__sTestOverridesAvailable == 1)
  {
    v2 = *(v0 + 592);
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    sub_18841FC48();
    v6 = sub_1884E6148() == v4 && v5 == v3;
    if (v6)
    {
    }

    else
    {
      v7 = *(v0 + 560);
      v8 = *(v0 + 552);
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBD0 != -1)
    {
      swift_once();
    }

    [v10 postNotificationName:qword_1EA919C98 object:*(v0 + 592)];
  }

LABEL_12:
  v11 = *(v0 + 736);
  v12 = *(v0 + 728);
  v13 = *(v0 + 624);
  v14 = *(v0 + 568);
  sub_1884F4464();
  sub_18841D168(v15, v16, v17, v18);
  sub_1884F4464();
  sub_18841D168(v19, v20, v21, v22);
  LODWORD(v11) = sub_1883F971C(v12, 1, v13);
  sub_1883F9FEC(v12, &unk_1EA90D7B0, &dword_1886F8780);
  if (v11 == 1)
  {
    v23 = *(v0 + 720);
    v24 = *(v0 + 624);
    v25 = *(v0 + 592);
    v26 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
    sub_1883FF050();
    swift_beginAccess();
    sub_18841D168(v25 + v26, v23, &unk_1EA90D7B0, &dword_1886F8780);
    v27 = sub_1883F9014();
    v29 = sub_1883F971C(v27, v28, v24);
    v30 = *(v0 + 720);
    if (v29 == 1)
    {
      sub_1883F9FEC(*(v0 + 720), &unk_1EA90D7B0, &dword_1886F8780);
    }

    else
    {
      v31 = *(*(v0 + 632) + 32);
      v31(*(v0 + 680), *(v0 + 720), *(v0 + 624));
      Date.timeIntervalSinceNow.getter();
      if (v32 <= 0.0)
      {
        (*(*(v0 + 632) + 8))(*(v0 + 680), *(v0 + 624));
      }

      else
      {
        sub_188404C38();
        if (!v6)
        {
          sub_1883F7480();
        }

        v33 = *(v0 + 592);
        v34 = type metadata accessor for Logger();
        sub_1883F85F4(v34, qword_1EA90C9F8);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 736);
        if (v37)
        {
          v39 = *(v0 + 592);
          sub_1883F9984();
          v1 = sub_1884061C4();
          *__src = v1;
          LODWORD(dword_1886F8780) = 136315138;
          v40 = sub_1883FE43C();
          sub_1884F4538(v40, v41, v42, v43, v44, v45, v46, v47);
          sub_1883F9B0C();
          unk_1886F8784 = 0x1EA90C000;
          sub_188427428(&dword_1883EA000, v48, v49, "%s setting earliestStartDate based on the last provided earliestStartDate");
          sub_188404FD4();
          sub_1883FD784();
        }

        sub_1883F9FEC(v38, &unk_1EA90D7B0, &dword_1886F8780);
        v50 = *(v0 + 736);
        v31(v50, *(v0 + 680), *(v0 + 624));
        sub_188442C14(v50);
      }
    }
  }

  v51 = *(v0 + 560);
  v52 = *(v0 + 552);
  v53 = *(*(v0 + 592) + 144);
  v54 = objc_opt_self();
  v55 = &selRef_setStringValue_forKey_;
  v56 = [v54 sharedScheduler];
  v57 = sub_1883F7EE0();
  v58 = MEMORY[0x18CFD5010](v57);
  v59 = [v56 activityForActivityIdentifier_];

  v398 = v54;
  if (!v59)
  {
    sub_188404C38();
    if (!v6)
    {
      sub_1883F7480();
    }

    v395 = sub_1884F44F4();
    sub_1883F85F4(v395, qword_1EA90C9F8);

    v62 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F49A0();

    if (sub_1883F9084())
    {
      v63 = *(v0 + 592);
      v64 = *(v0 + 560);
      v65 = *(v0 + 552);
      sub_18840FB34();
      sub_18840C660();
      sub_1884F45EC();
      *v1 = 136315394;
      v66 = sub_1883FE43C();
      sub_1884F4538(v66, v67, v68, v69, v70, v71, v72, v73);
      sub_1884F44B4();

      *(v1 + 4) = v54;
      v74 = sub_1883F9AC0();
      v75 = v64;
      v55 = &selRef_setStringValue_forKey_;
      *(v1 + 14) = sub_1883FE340(v74, v75, v76);
      sub_1884F464C(&dword_1883EA000, v62, v56, "%s creating new activity %s");
      sub_1884439F0();
      sub_1884037D8();
      sub_1883FC7E4();
    }

    v77 = *(v0 + 576);
    v78 = *(v0 + 560);
    v79 = *(v0 + 552);
    objc_allocWithZone(CKSchedulerActivity);

    v80 = v53;
    v81 = sub_1883F7E8C();
    v84 = sub_1884F2B14(v81, v82, v83, v77);
    if (!v84)
    {
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      sub_1883F85F4(v395, qword_1EA90C9F8);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.fault.getter();
      v156 = os_log_type_enabled(v154, v155);
      v157 = *(v0 + 736);
      if (v156)
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_1883EA000, v154, v155, "BUG IN CLOUDKIT: No activity to submit in engine", v158, 2u);
        sub_1883F82B8();
      }

      v159 = v157;
      goto LABEL_105;
    }

    v60 = v84;
    goto LABEL_40;
  }

  v60 = v59;
  v61 = [v60 nullableContainer];
  if (v61)
  {
  }

  else
  {
    [v60 setContainer_];
  }

  v85 = *(v0 + 560);
  v86 = *(v0 + 552);
  v87 = [v54 sharedScheduler];
  v88 = MEMORY[0x18CFD5010](v86, v85);
  LOBYTE(v86) = [v87 hasPendingActivityWithActivityIdentifier_];

  if ((v86 & 1) == 0)
  {
    sub_188404C38();
    if (!v6)
    {
      sub_1883F7480();
    }

    v94 = sub_1884F469C();
    sub_1883F85F4(v94, qword_1EA90C9F8);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = *(v0 + 592);
      v98 = *(v0 + 560);
      v99 = *(v0 + 552);
      sub_18840FB34();
      *__src = sub_18842D4DC();
      *v54 = 136315394;
      v100 = sub_1883FE43C();
      sub_1884F4538(v100, v101, v102, v103, v104, v105, v106, v107);
      sub_1883F8020();

      v108 = sub_1884F44D8();
      v55 = &selRef_setStringValue_forKey_;
      *(v54 + 14) = sub_1883FE340(v108, v98, v109);
      sub_1884F48F8(&dword_1883EA000, v110, v111, "%s asked to submit an activity which the scheduler knows about, but which is not pending. Gonna submit that activity %s");
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    goto LABEL_40;
  }

  v89 = *(v0 + 624);
  sub_18841D168(*(v0 + 736), *(v0 + 712), &unk_1EA90D7B0, &dword_1886F8780);
  v90 = sub_1883F9014();
  v92 = sub_1883F971C(v90, v91, v89);
  v93 = *(v0 + 712);
  if (v92 != 1)
  {
    (*(*(v0 + 632) + 32))(*(v0 + 672), *(v0 + 712), *(v0 + 624));
    v113 = [v60 earliestStartDate];
    v395 = v60;
    if (!v113)
    {
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      v160 = *(v0 + 672);
      v161 = *(v0 + 640);
      v162 = *(v0 + 632);
      v163 = *(v0 + 624);
      v164 = sub_1884F469C();
      sub_1883FDE5C(v164, qword_1EA90C9F8);
      (*(v162 + 16))(v161, v160, v163);

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();

      v167 = os_log_type_enabled(v165, v166);
      v168 = *(v0 + 672);
      v169 = *(v0 + 640);
      v170 = *(v0 + 632);
      v171 = *(v0 + 624);
      if (v167)
      {
        v172 = *(v0 + 592);
        v173 = *(v0 + 560);
        v392 = *(v0 + 552);
        v174 = sub_1883FE540();
        v393 = swift_slowAlloc();
        *__src = v393;
        *v174 = 136315650;
        v175 = sub_1883FE43C();
        sub_1884F4538(v175, v176, v177, v178, v179, v180, v181, v182);
        log = v168;
        sub_1884F44B4();

        *(v174 + 4) = v168;
        *(v174 + 12) = 2080;
        *(v174 + 14) = sub_1883FE340(v392, v173, __src);
        *(v174 + 22) = 2080;
        sub_1883F8C4C();
        sub_1883FE8FC(v183, v184);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1883F90D4();
        v185 = *(v170 + 8);
        v185(v169, v171);
        v186 = sub_1883FE340(v169, v168, __src);

        *(v174 + 24) = v186;
        _os_log_impl(&dword_1883EA000, v165, v166, "%s re-submitting activity %s and overwriting nil earliest start date to new date (%s)", v174, 0x20u);
        swift_arrayDestroy();
        sub_1883F7B60();
        v55 = &selRef_setStringValue_forKey_;
        sub_1883F7B60();
        v60 = v395;

        v185(v168, v171);
      }

      else
      {

        v227 = *(v170 + 8);
        v228 = v169;
        v60 = v395;
        v227(v228, v171);
        v229 = sub_1883F712C();
        (v227)(v229);
      }

      goto LABEL_91;
    }

    v114 = v113;
    v115 = *(v0 + 664);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_188404C38();
    if (!v6)
    {
      sub_1883F7480();
    }

    log = *(v0 + 672);
    v116 = *(v0 + 664);
    v117 = *(v0 + 656);
    v118 = *(v0 + 648);
    v119 = *(v0 + 632);
    v120 = *(v0 + 624);
    v121 = sub_1884F4680();
    sub_1883FDE5C(v121, qword_1EA90C9F8);
    v122 = *(v119 + 16);
    v122(v117, v116, v120);
    v122(v118, log, v120);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();

    v125 = os_log_type_enabled(v123, v124);
    v126 = *(v0 + 656);
    v127 = *(v0 + 648);
    v128 = *(v0 + 632);
    v129 = *(v0 + 624);
    if (v125)
    {
      log = v123;
      v130 = *(v0 + 592);
      v131 = *(v0 + 560);
      v132 = *(v0 + 552);
      v390 = *(v0 + 648);
      v133 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      *__src = v393;
      *v133 = 136315906;
      v134 = sub_1883FE43C();
      sub_1884F4538(v134, v135, v136, v137, v138, v139, v140, v141);
      LODWORD(v392) = v124;
      sub_1884F44B4();

      *(v133 + 4) = v124;
      *(v133 + 12) = 2080;
      *(v133 + 14) = sub_1883FE340(v132, v131, __src);
      *(v133 + 22) = 2080;
      sub_1883F8C4C();
      sub_1883FE8FC(v142, v143);
      sub_1883FF6E8();
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      v147 = *(v128 + 8);
      v148 = sub_1883FB5D4();
      v147(v148);
      v149 = sub_1883FE340(v144, v146, __src);

      *(v133 + 24) = v149;
      *(v133 + 32) = 2080;
      sub_1883FF6E8();
      dispatch thunk of CustomStringConvertible.description.getter();
      (v147)(v390, v129);
      v150 = sub_1884F4640();
      v153 = sub_1883FE340(v150, v151, v152);

      *(v133 + 34) = v153;
      _os_log_impl(&dword_1883EA000, log, v124, "%s re-submitting activity %s and overwriting earliestStartDate (%s to new date (%s)", v133, 0x2Au);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883FC7E4();
    }

    else
    {

      v147 = *(v128 + 8);
      (v147)(v127, v129);
      v187 = sub_1883FB5D4();
      v147(v187);
    }

    v55 = &selRef_setStringValue_forKey_;
    v188 = *(v0 + 672);
    v189 = *(v0 + 664);
    v190 = *(v0 + 624);
    sub_1884F4640();
    v191 = static Date.< infix(_:_:)();
    v192 = sub_1883FB5D4();
    v147(v192);
    v193 = sub_1883F84DC();
    v147(v193);
    v60 = v395;
    if ((v191 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_40:
    v112 = 1;
    goto LABEL_92;
  }

  sub_1883F9FEC(*(v0 + 712), &unk_1EA90D7B0, &dword_1886F8780);
LABEL_58:
  v194 = *(v0 + 592);
  sub_1884C7AD8(__src);
  if (v402)
  {
    v202 = v403;
    sub_1884F4958((v0 + 272), v195, v196, v197, v198, v199, v200, v201, v390, v392, v393, log, v395, v398, __src[0]);
    v203 = v202;
    sub_1883F9FEC(v0 + 272, &unk_1EA90E4D0, &unk_1886FB460);
  }

  else
  {
    sub_1884F4958((v0 + 368), v195, v196, v197, v198, v199, v200, v201, v390, v392, v393, log, v395, v398, __src[0]);
    sub_1883F9FEC(v0 + 368, &unk_1EA90E4D0, &unk_1886FB460);
    v203 = *MEMORY[0x1E696A3A8];
  }

  v204 = [v60 fileProtectionType];
  v205 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v207 = v206;
  if (v205 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v207 == v208)
  {
  }

  else
  {
    v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v205 & 1) == 0)
    {
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      v210 = sub_1884F44F4();
      sub_1883F85F4(v210, qword_1EA90C9F8);

      v211 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1884F49A0();

      if (os_log_type_enabled(v211, v207))
      {
        sub_1883FB634();
        sub_18840C660();
        sub_1884F45EC();
        *v205 = 136315394;
        v212 = sub_1883FE43C();
        sub_1884F4538(v212, v213, v214, v215, v216, v217, v218, v219);
        sub_1884F44C0();
        *(v205 + 4) = v55;
        v220 = sub_1883F9AC0();
        v60 = v395;
        *(v205 + 14) = sub_1883FE340(v220, log, v221);
        sub_1884F464C(&dword_1883EA000, v211, v207, "%s re-submitting activity %s and overwriting file protection type");
        sub_1884439F0();
        sub_1884037D8();
        sub_1883FC7E4();
      }

LABEL_90:
LABEL_91:
      v112 = 1;
      goto LABEL_92;
    }
  }

  if (*(v0 + 760) == 1)
  {
    goto LABEL_73;
  }

  v222 = *(v0 + 592);
  v223 = sub_1884C7D1C();
  v224 = [v60 xpcActivityCriteriaOverrides];
  if (!v223)
  {
    if (v224)
    {
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      v230 = sub_1884F44F4();
      sub_1883F85F4(v230, qword_1EA90C9F8);

      v231 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1884F49A0();

      if (os_log_type_enabled(v231, v207))
      {
        sub_1883FB634();
        sub_18840C660();
        sub_1884F45EC();
        *v205 = 136315394;
        v232 = sub_1883FE43C();
        sub_1884F4538(v232, v233, v234, v235, v236, v237, v238, v239);
        sub_1884F44C0();
        *(v205 + 4) = v55;
        v240 = sub_1883F9AC0();
        v60 = v395;
        *(v205 + 14) = sub_1883FE340(v240, log, v241);
        sub_1884F464C(&dword_1883EA000, v231, v207, "%s re-submitting activity %s and removing criteria overrides");
        sub_1884439F0();
        sub_1884037D8();
        sub_1883FC7E4();
      }

      swift_unknownObjectRelease();

      goto LABEL_91;
    }

    goto LABEL_73;
  }

  if (!v224)
  {
    sub_188404C38();
    if (!v6)
    {
      sub_1883F7480();
    }

    v242 = sub_1884F44F4();
    sub_1883F85F4(v242, qword_1EA90C9F8);

    v211 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F49A0();

    if (os_log_type_enabled(v211, v207))
    {
      sub_1883FB634();
      sub_18840C660();
      sub_1884F45EC();
      *v205 = 136315394;
      v243 = sub_1883FE43C();
      sub_1884F4538(v243, v244, v245, v246, v247, v248, v249, v250);
      sub_1884F44C0();
      *(v205 + 4) = v55;
      v251 = sub_1883F9AC0();
      v60 = v395;
      *(v205 + 14) = sub_1883FE340(v251, log, v252);
      sub_1884F464C(&dword_1883EA000, v211, v207, "%s re-submitting activity %s with criteria overrides");
      sub_1884439F0();
      sub_1884037D8();
      sub_1883FC7E4();
    }

    swift_unknownObjectRelease();

    goto LABEL_90;
  }

  v225 = sub_1883FF6E8();
  if (xpc_equal(v225, v226))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_73:

    v112 = 0;
    goto LABEL_92;
  }

  sub_188404C38();
  if (!v6)
  {
    sub_1883F7480();
  }

  v374 = sub_1884F4680();
  sub_1883F85F4(v374, qword_1EA90C9F8);

  v375 = Logger.logObject.getter();
  v376 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v375, v376))
  {
    v377 = *(v0 + 592);
    v393 = *(v0 + 552);
    log = *(v0 + 560);
    v378 = sub_18840FB34();
    *__src = sub_18840BE14();
    *v378 = 136315394;
    v379 = sub_1883FE43C();
    sub_1884F4538(v379, v380, v381, v382, v383, v384, v385, v386);
    sub_1883F8020();

    sub_188412590();
    *(v378 + 14) = sub_1883FE340(v393, log, v387);
    sub_1884F48D8(&dword_1883EA000, v388, v389, "%s re-submitting activity %s and overwriting criteria overrides");
    sub_18841FC2C();
    sub_1884F4470();
    sub_1884037D8();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v112 = 1;
  v55 = &selRef_setStringValue_forKey_;
LABEL_92:
  *(v0 + 744) = v60;
  v253 = *(v0 + 584);
  if (v253 && v253[2])
  {
    v254 = *(v0 + 584);

    v255 = sub_1884F34A4(v60);
    if (!v255)
    {
      v255 = MEMORY[0x1E69E7CC0];
    }

    sub_18841F88C(v255);
    v257 = v256;

    sub_18841F88C(v258);
    v260 = v259;

    v262 = sub_1884F04DC(v261, v260);
    v263 = sub_1884F2B88(v262, v257);

    if ((v263 & 1) == 0)
    {
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      v285 = sub_1884F4680();
      sub_1883F85F4(v285, qword_1EA90C9F8);

      v286 = Logger.logObject.getter();
      v287 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v286, v287))
      {
        v288 = *(v0 + 592);
        log = *(v0 + 552);
        v395 = *(v0 + 560);
        v289 = sub_18840FB34();
        *__src = sub_18840BE14();
        *v289 = 136315394;
        v290 = sub_1883FE43C();
        sub_1884F4538(v290, v291, v292, v293, v294, v295, v296, v297);
        sub_1883F8020();

        sub_188412590();
        *(v289 + 14) = sub_1883FE340(log, v395, v298);
        sub_1884F48D8(&dword_1883EA000, v299, v300, "%s re-submitting activity %s to add related application bundle identifiers");
        sub_18841FC2C();
        sub_1884F4470();
        sub_1884037D8();
      }

      v55 = &selRef_setStringValue_forKey_;
      v301 = sub_1884DD410(v253);
      v253 = v302;
      *__src = v301;
      v402 = v302;

      sub_1884DC3C0(v257);

      sub_1884F34FC(v402, v60);
LABEL_113:
      sub_188404C38();
      if (!v6)
      {
        sub_1883F7480();
      }

      v303 = sub_1884F469C();
      sub_1883F85F4(v303, qword_1EA90C9F8);

      v304 = Logger.logObject.getter();
      v305 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v304, v305))
      {
        v306 = *(v0 + 592);
        v395 = *(v0 + 560);
        v307 = v55;
        v308 = *(v0 + 552);
        sub_18840FB34();
        *__src = sub_18842D4DC();
        *v253 = 136315394;
        v309 = sub_1883FE43C();
        sub_1884F4538(v309, v310, v311, v312, v313, v314, v315, v316);
        sub_1883F8020();

        v317 = sub_1884F44D8();
        v55 = v307;
        *(v253 + 14) = sub_1883FE340(v317, v395, v318);
        sub_1884F48F8(&dword_1883EA000, v319, v320, "%s submitting scheduler activity %s");
        sub_1884038F4();
        sub_1883FC7E4();
        sub_1883FD784();
      }

      v321 = *(v0 + 736);
      v322 = *(v0 + 704);
      v323 = *(v0 + 624);
      sub_1884F4464();
      sub_18841D168(v324, v325, v326, v327);
      v328 = sub_1883F9014();
      LODWORD(v323) = sub_1883F971C(v328, v329, v323);
      v330 = sub_1883F84DC();
      sub_1883F9FEC(v330, v331, &dword_1886F8780);
      if (v323 != 1)
      {
        v332 = *(v0 + 624);
        sub_18841D168(*(v0 + 736), *(v0 + 696), &unk_1EA90D7B0, &dword_1886F8780);
        v333 = sub_1883F9014();
        v335 = sub_1883F971C(v333, v334, v332);
        if (v335 == 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v335);
        }

        v336 = *(v0 + 696);
        v337 = *(v0 + 632);
        v338 = *(v0 + 624);
        Date.timeIntervalSinceNow.getter();
        v340 = v339;
        v341 = *(v337 + 8);
        v342 = sub_1884F4640();
        v343(v342);
        if (v340 <= 0.0)
        {
          v344 = *(v0 + 624);
          sub_1883F9FEC(*(v0 + 736), &unk_1EA90D7B0, &dword_1886F8780);
          v345 = sub_1883F9014();
          sub_1883F90F4(v345, v346, 1, v344);
        }
      }

      v347 = *(v0 + 624);
      sub_18841D168(*(v0 + 736), *(v0 + 688), &unk_1EA90D7B0, &dword_1886F8780);
      v348 = sub_1883F9014();
      if (sub_1883F971C(v348, v349, v347) == 1)
      {
        isa = 0;
      }

      else
      {
        v351 = *(v0 + 688);
        v352 = *(v0 + 632);
        v353 = *(v0 + 624);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v354 = *(v352 + 8);
        v355 = sub_1883FB5D4();
        v356(v355);
      }

      v357 = *(v0 + 592);
      v358 = *(v0 + 760);
      [v60 setEarliestStartDate_];

      [v60 setUserRequestedBackupTask_];
      sub_1884C7AD8(__src);
      if (v402)
      {
        v366 = v403;
        sub_1884F4958((v0 + 80), v359, v360, v361, v362, v363, v364, v365, v391, v392, v393, log, v395, v398, __src[0]);
        v367 = v366;
        sub_1883F9FEC(v0 + 80, &unk_1EA90E4D0, &unk_1886FB460);
        [v60 setFileProtectionType_];
      }

      else
      {
        sub_1884F4958((v0 + 176), v359, v360, v361, v362, v363, v364, v365, v391, v392, v393, log, v395, v398, __src[0]);
        sub_1883F9FEC(v0 + 176, &unk_1EA90E4D0, &unk_1886FB460);
      }

      if ((*(v0 + 760) & 1) == 0)
      {
        v368 = *(v0 + 592);
        [v60 setXpcActivityCriteriaOverrides_];
        swift_unknownObjectRelease();
      }

      v369 = *(v0 + 616);
      v370 = *(v0 + 608);
      v371 = *(v0 + 600);
      v372 = [v400 v55[146]];
      *(v0 + 752) = v372;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1884F0218;
      swift_continuation_init();
      *(v0 + 520) = v371;
      v373 = sub_188403664((v0 + 496));
      CheckedContinuation.init(continuation:function:)();
      (*(v370 + 32))(v373, v369, v371);
      *(v0 + 464) = MEMORY[0x1E69E9820];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_1884F05E0;
      *(v0 + 488) = &unk_1EFA2C1F8;
      [v372 submitActivity:v60 completionHandler:v0 + 464];
      (*(v370 + 8))(v373, v371);
      v335 = v0 + 16;

      return MEMORY[0x1EEE6DEC8](v335);
    }
  }

  if (v112)
  {
    goto LABEL_113;
  }

  sub_188404C38();
  if (!v6)
  {
    sub_1883F7480();
  }

  v264 = *(v0 + 592);
  v265 = *(v0 + 560);
  v266 = type metadata accessor for Logger();
  sub_1883F85F4(v266, qword_1EA90C9F8);

  v267 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_188405254();

  v268 = sub_1884F4988();
  v269 = *(v0 + 736);
  if (v268)
  {
    v270 = *(v0 + 592);
    v271 = *(v0 + 560);
    v396 = v60;
    v272 = *(v0 + 552);
    sub_18840FB34();
    sub_18840C660();
    sub_1884F45EC();
    *v265 = 136315394;
    v273 = sub_1883FE43C();
    sub_1884F4538(v273, v274, v275, v276, v277, v278, v279, v280);
    sub_1883FDE10();
    *(v265 + 4) = v112;
    v281 = sub_1883F9AC0();
    *(v265 + 14) = sub_1883FE340(v281, v271, v282);
    sub_1884F464C(&dword_1883EA000, v267, v253, "%s already have a scheduler activity for %s");
    sub_1884439F0();
    sub_1884037D8();
    sub_1883FC7E4();
  }

  else
  {
  }

  v159 = v269;
LABEL_105:
  sub_1883F9FEC(v159, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883FAAE4();
  v397 = *(v0 + 640);
  v399 = *(v0 + 616);

  sub_1883F816C();

  return v283();
}

uint64_t CKSessionConfiguration.anySessionConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v0 + v1, v3);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for AnySessionConfiguration();
  return swift_dynamicCast();
}

void sub_188445778()
{
  sub_1883F8AF0();
  v39 = v3;
  v40 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload();
  v4 = sub_1883F70DC(v40);
  v38 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  sub_1883FEA80();
  v8 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v9 = sub_1883F70DC(v8);
  v36 = v10;
  v37 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v15 = v14 - v13;
  v16 = sub_18844E6FC(&qword_1EA90E228, &unk_1886FA940);
  sub_1883F8AE4(v16);
  v18 = *(v17 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F9824();
  v20 = type metadata accessor for AnySessionConfiguration();
  v21 = sub_1883F70DC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F7100();
  sub_1883FED1C();
  v26 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  v27 = sub_1883F70DC(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1883F7100();
  v34 = v33 - v32;
  sub_188445AC0();
  AnySessionConfiguration.encryption.getter();
  (*(v23 + 8))(v0, v20);
  if (sub_1883F971C(v2, 1, v26) == 1)
  {
    sub_188442B84(v2, &qword_1EA90E228, &unk_1886FA940);
  }

  else
  {
    (*(v29 + 32))(v34, v2, v26);
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter();
    (*(v36 + 8))(v15, v37);
    (*(v29 + 8))(v34, v26);
    v35 = (*(v38 + 88))(v1, v40) == *v39;
    (*(v38 + 8))(v1, v40);
  }

  sub_1883F8178();
}

id sub_188445AC0()
{
  result = [v0 ckSessionConfiguration];
  if (result)
  {
    type metadata accessor for CKSessionConfiguration();
    swift_dynamicCastClassUnconditional();
    CKSessionConfiguration.anySessionConfiguration.getter();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188445B70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_188445BE4()
{
  sub_1883F8AF0();
  v3 = type metadata accessor for BundleID.Payload();
  v4 = sub_1883F70DC(v3);
  v62 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  sub_1883F8424(v8);
  v9 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v10 = sub_1883F70DC(v9);
  v65 = v11;
  v66 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  sub_1883FE66C();
  v14 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v15 = sub_1883F70DC(v14);
  v63 = v16;
  v64 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v21 = v20 - v19;
  v22 = type metadata accessor for BundleID();
  v23 = sub_1883F70DC(v22);
  v59 = v24;
  v60 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F7100();
  v58 = v28 - v27;
  v29 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  sub_1883F8AE4(v29);
  v31 = *(v30 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v32);
  sub_1883FED1C();
  v33 = type metadata accessor for AnySessionConfiguration();
  v34 = sub_1883F70DC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1883F7100();
  sub_1883FEA80();
  v39 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v40 = sub_1883F70DC(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1883F7100();
  v47 = v46 - v45;
  sub_188445AC0();
  AnySessionConfiguration.account.getter();
  (*(v36 + 8))(v1, v33);
  if (sub_1883F971C(v0, 1, v39) == 1)
  {
    sub_188442B84(v0, &qword_1EA90E258, &qword_1886FA960);
LABEL_8:
    sub_1883FF490();
    goto LABEL_9;
  }

  (*(v42 + 32))(v47, v0, v39);
  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v63 + 8))(v21, v64);
  if ((*(v65 + 88))(v2, v66) != *MEMORY[0x1E6994808])
  {
    (*(v42 + 8))(v47, v39);
    (*(v65 + 8))(v2, v66);
    goto LABEL_8;
  }

  (*(v65 + 96))(v2, v66);
  (*(v59 + 32))(v58, v2, v60);
  BundleID.payload.getter();
  (*(v59 + 8))(v58, v60);
  (*(v42 + 8))(v47, v39);
  v48 = sub_1883F7CD4();
  if (v49(v48) != *MEMORY[0x1E69948C0])
  {
    v55 = *(v62 + 8);
    v56 = sub_1883F7E8C();
    v57(v56);
    goto LABEL_8;
  }

  v50 = *(v62 + 96);
  v51 = sub_1883F7E8C();
  v52(v51);
  v53 = *v61;
  v54 = v61[1];
LABEL_9:
  sub_1883F8178();
}

id sub_188446078(void *a1)
{
  v1 = a1;
  sub_188445BE4();
  v3 = v2;
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18CFD5010](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1884460F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_msgSend_needsDecryption(v3, v5, v6);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_1884466D0(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v4;
      v6 = v4;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = objc_msgSend_deltasToSave(v6, v7, v8);
      v42[0] = v9;
      v31 = v6;
      v12 = objc_msgSend_unmergedDeltas(v6, v10, v11);
      v42[1] = v12;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v42, 2);

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v43, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          v19 = 0;
          do
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v37 + 1) + 8 * v19);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v21 = v20;
            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v33, v41, 16);
            if (v23)
            {
              v26 = v23;
              v27 = *v34;
              do
              {
                v28 = 0;
                do
                {
                  if (*v34 != v27)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v29 = objc_msgSend_asset(*(*(&v33 + 1) + 8 * v28), v24, v25);

                  if (v29)
                  {
                    ++*(*(*(a1 + 32) + 8) + 24);
                  }

                  ++v28;
                }

                while (v26 != v28);
                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v33, v41, 16);
              }

              while (v26);
            }

            ++v19;
          }

          while (v19 != v17);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v30, &v37, v43, 16);
        }

        while (v17);
      }

      v4 = v32;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18844694C(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_size(v4, v5, v6);
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) += v7;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_size_(v4, v8, 0);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v4;
    v10 = v4;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = objc_msgSend_deltasToSave(v10, v11, v12);
    v51[0] = v13;
    v39 = v10;
    v16 = objc_msgSend_unmergedDeltas(v10, v14, v15);
    v51[1] = v16;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v51, 2);

    obj = v18;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v46, v52, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = v24;
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v42, v50, 16);
          if (v27)
          {
            v30 = v27;
            v31 = *v43;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v43 != v31)
                {
                  objc_enumerationMutation(v25);
                }

                v33 = *(*(&v42 + 1) + 8 * j);
                v34 = objc_msgSend_asset(v33, v28, v29);

                if (v34)
                {
                  v35 = objc_msgSend_asset(v33, v28, v29);
                  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_size(v35, v36, v37);
                }
              }

              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v42, v50, 16);
            }

            while (v30);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v46, v52, 16);
      }

      while (v21);
    }

    v4 = v40;
  }

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
}

void sub_188446D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188446DAC(void *a1, const char *a2)
{
  v2 = objc_msgSend_base64EncodedStringWithOptions_(a1, a2, 0);
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v8 = objc_msgSend_length(v5, v6, v7);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v9, @"+", @"-", 0, 0, v8);
  v12 = objc_msgSend_length(v5, v10, v11);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v13, @"/", @"_", 0, 0, v12);
  v16 = objc_msgSend_length(v5, v14, v15);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v17, @"=", &stru_1EFA32970, 0, 0, v16);

  return v5;
}

uint64_t sub_188447554(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend_needsDecryption(v3, v6, v7))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v8, v9);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

void sub_188447A68(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v35 = a3;
  v5 = v4;
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E695DFA8];
  v41 = v5;
  v9 = objc_msgSend_allKeys(v5, v7, v8);
  v36 = objc_msgSend_setWithArray_(v6, v10, v9);

  v40 = objc_msgSend_changedKeysSet(v41, v11, v12);
  v15 = objc_msgSend_setByAddingObjectsFromSet_(v36, v13, v40);
  if (v35)
  {
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @" (%@)", v35);
  }

  else
  {
    v39 = &stru_1EFA32970;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v15;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v42, v46, 16);
  if (v18)
  {
    v19 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = objc_msgSend_valueForKey_(v41, v17, v21);
        if (objc_msgSend_containsObject_(v40, v23, v21))
        {
          v24 = @" (modified)";
        }

        else
        {
          v24 = &stru_1EFA32970;
        }

        if (objc_opt_respondsToSelector())
        {
          v25 = v22;
          v26 = *(a1 + 32);
          v27 = CKStringWithObject(v25);
          v30 = objc_msgSend_objCType(v25, v28, v29);
          objc_msgSend_appendFormat_(v26, v31, @"\t%@%@%@ -> %@ (type %s)\n", v21, v24, v39, v27, v30);
        }

        else
        {
          v32 = *(a1 + 32);
          v25 = CKStringWithObject(v22);
          objc_msgSend_appendFormat_(v32, v33, @"\t%@%@%@ -> %@\n", v21, v24, v39, v25);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v42, v46, 16);
    }

    while (v18);
  }

  objc_sync_exit(v41);
  v34 = *MEMORY[0x1E69E9840];
}

id CKStringWithObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = CKStringWithArray(v1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = CKStringWithData(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = CKStringWithDictionary(v1);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = CKStringWithSet(v1);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"%@", v1);
          }

          else
          {
            objc_msgSend_description(v1, v3, v4);
          }
          v2 = ;
        }
      }
    }
  }

  v5 = v2;

  return v5;
}

id CKStringWithArray(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v2, @"[");
  v6 = objc_msgSend_objectEnumerator(v1, v4, v5);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    do
    {
      if (objc_msgSend_length(v3, v10, v11) != 1)
      {
        objc_msgSend_appendString_(v3, v13, @", ");
      }

      v14 = CKStringWithObject(v12);
      objc_msgSend_appendString_(v3, v15, v14);

      v18 = objc_msgSend_nextObject(v6, v16, v17);

      v12 = v18;
    }

    while (v18);
  }

  objc_msgSend_appendString_(v3, v10, @"]");

  return v3;
}

id CKStringWithData(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_bytes(v1, v2, v3);
  v7 = objc_msgSend_length(v1, v5, v6);

  return CKStringWithBytes(v4, v7);
}

id CKStringWithBytes(unsigned __int8 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Warn: That size was ridiculous: %lu. Refusing to create a string from bytes that long", &v7, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = CKStringWithNibbles(a1, 2 * a2);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

id CKStringWithNibbles(unsigned __int8 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v15 = 134217984;
      v16 = a2;
      _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Warn: That size was ridiculous: %lu. Refusing to create a string that log.", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
    v5 = v4;
    if (a2)
    {
      v6 = 0;
      do
      {
        v8 = *a1++;
        v7 = v8;
        v4[v6] = a0123456789abcd_1[v8 >> 4];
        if (v6 + 1 < a2)
        {
          v4[v6 + 1] = a0123456789abcd_1[v7 & 0xF];
        }

        v6 += 2;
      }

      while (v6 < a2);
    }

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v9, v10, v5, a2, 1);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

id sub_1884487CC(void *a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_setWithCapacity_(v4, v6, v5);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v45, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_1EFA9C3D0))
        {
          v18 = objc_msgSend_CKDeepCopy(v14, v16, v17);
        }

        else
        {
          if (objc_msgSend_conformsToProtocol_(v14, v16, &unk_1EFA8BF50))
          {
            v29 = MEMORY[0x1E696AEC0];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromProtocol(&unk_1EFA9C3D0);
            v34 = objc_msgSend_stringWithFormat_(v29, v33, @"Collection with class %@ does not support %@", v31, v32, v41);

            goto LABEL_18;
          }

          if (!objc_msgSend_conformsToProtocol_(v14, v19, &unk_1EFA87B00))
          {
            v35 = MEMORY[0x1E696AEC0];
            v36 = objc_opt_class();
            v31 = NSStringFromClass(v36);
            v34 = objc_msgSend_stringWithFormat_(v35, v37, @"Object with class %@ cannot be copied", v31);
LABEL_18:

            v38 = [CKException alloc];
            v40 = objc_msgSend_initWithName_format_(v38, v39, *MEMORY[0x1E695D940], @"%@", v34);
            objc_exception_throw(v40);
          }

          v18 = objc_msgSend_copyWithZone_(v14, v20, 0);
        }

        v21 = v18;

        objc_msgSend_addObject_(v7, v22, v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v41, v45, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v7, v24, v25);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

__CFString *CKStringFromCKMMCSEncryptionSupport(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70BCF88[a1 - 1];
  }
}

uint64_t sub_188448C24(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 73) = 0;
  v4 = *(a1 + 32);
  if (v4[72])
  {
    objc_msgSend_postFinishedNotice(v4, v2, v3);
  }

  else
  {
    v5 = objc_msgSend_processingDelay(v4, v2, v3);
    if (v5)
    {
      objc_msgSend_delayPostBy_(*(a1 + 32), v6, v5);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 80));
  v7 = (*(a1 + 32) + 8);

  return pthread_mutex_unlock(v7);
}

uint64_t sub_188448E74()
{
  v1 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  sub_1883F70DC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_188448F48()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_188448F7C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188449140()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1884492A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1884492F4()
{
  v1 = *(v0 + 16);

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_188449390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = CKDatabase.DatabaseChange.Modification.zoneID.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1884494D0()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188449514()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188449548()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_188449594()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1884496D4()
{
  v1 = *(v0 + 16);

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_188449708()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188449750()
{
  v4 = sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
  sub_1883F7158(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  sub_1883F8DA4();
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14(v0 + v13);
  v15 = *(v0 + v1);

  v16 = *(v0 + v2);

  v17 = *(v0 + v3);

  v18 = *(v0 + v9);

  v19 = *(v0 + v10);

  v20 = *(v0 + v11);

  v21 = *(v0 + v12);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v7 | 7);
}

uint64_t sub_18844984C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844988C()
{
  v4 = sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  sub_1883F7158(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  sub_1883F8DA4();
  v10(v0 + v9);

  v11 = *(v0 + v3 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + 16, v7 | 7);
}

uint64_t sub_188449950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKDatabaseSubscription.recordType.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_188449990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_188472FA0(*a1, a2, *v3);
  *a3 = result;
  return result;
}

char *sub_1884499F4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

uint64_t sub_188449A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188449A58()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_188449B58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  v3 = sub_1883F7228();
  return CKZoneFeature.name.setter(v3);
}

uint64_t sub_188449B9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  v3 = sub_1883F7228();
  return CKZoneFeature.value.setter(v3);
}

uint64_t sub_188449C74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  result = sub_188449C54();
  *a2 = result;
  return result;
}

__n128 sub_188449D48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188449DC8(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  sub_1883F7EC8();
  swift_getWitnessTable();
  sub_1883F8E20();
  swift_getWitnessTable();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8400();
  swift_getWitnessTable();
  sub_1884054BC();
  return swift_getWitnessTable();
}

uint64_t sub_188449EF4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for LazyMapSequence();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8E20();
  return swift_getWitnessTable();
}

uint64_t sub_188449F70(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Array();
  sub_1883F87A4();

  return swift_getWitnessTable();
}

uint64_t sub_18844A030(char a1)
{
  if (a1)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x614E64726F636572;
  }
}

__n128 sub_18844A0A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

unint64_t sub_18844A0D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&unk_1EFA259B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_18844A124(char a1)
{
  result = 0x656D614E656E6F7ALL;
  switch(a1)
  {
    case 1:
      result = 0x6D614E72656E776FLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6573616261746164;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_18844A1F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKRecordZone.parent.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844A24C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKRecordZoneSubscription.recordType.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18844A2A4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844A2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_1883F9C6C();
  swift_getWitnessTable();
  type metadata accessor for ProxyRepresentation();
  sub_1883FA0E0();
  return swift_getWitnessTable();
}

uint64_t sub_18844A35C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  swift_getWitnessTable();
  type metadata accessor for DataRepresentation();
  sub_1883F7C40();
  swift_getWitnessTable();
  type metadata accessor for _ConditionalTransferRepresentation();
  swift_getTupleTypeMetadata();
  swift_getWitnessTable();
  type metadata accessor for TupleTransferRepresentation();
  return swift_getWitnessTable();
}

uint64_t sub_18844A45C(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKNotificationInfo.alertLocalizationArgs.getter();
  *v1 = result;
  return result;
}

uint64_t sub_18844A488(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKNotificationInfo.titleLocalizationArgs.getter();
  *v1 = result;
  return result;
}

uint64_t sub_18844A4B4(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKNotificationInfo.subtitleLocalizationArgs.getter();
  *v1 = result;
  return result;
}

uint64_t sub_18844A4E0(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKNotificationInfo.desiredKeys.getter();
  *v1 = result;
  return result;
}

uint64_t sub_18844A50C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844A570()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844A5A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844A5EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844A624()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844A67C()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
    v9 = a1 + *(a3 + 20);

    return sub_1883F971C(v9, a2, v8);
  }
}

uint64_t sub_18844A748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
    v8 = v5 + *(a4 + 20);

    return sub_1883F90F4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18844A804()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844A83C()
{
  v1 = type metadata accessor for UUID();
  sub_1883F70DC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_18844A910()
{
  sub_1883F8AF0();
  v2 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1883FA3B4();
  sub_1883F70DC(v7);
  v9 = v8;
  v10 = (v1 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_1883FDA80();
  v14(v13);
  v15 = *(v0 + v1);

  (*(v9 + 8))(v0 + v10, v7);
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_18844AA38()
{
  sub_1883F8AF0();
  v1 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  sub_1883F70DC(v6);
  v8 = v7;
  v9 = (((v3 + 24) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 16);

  v13 = sub_1883FDA80();
  v14(v13);
  (*(v8 + 8))(v0 + v9, v6);
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_18844AB64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18844ABA4()
{
  sub_1883F8AF0();
  v2 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1883FA3B4();
  sub_1883F70DC(v7);
  v9 = v8;
  v10 = (v1 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_1883FDA80();
  v14(v13);
  v15 = *(v0 + v1);

  (*(v9 + 8))(v0 + v10, v7);
  v16 = *(v0 + v12);
  swift_unknownObjectRelease();
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_18844ACE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
      v10 = *(a3 + 24);
    }

    return sub_1883F971C(a1 + v10, a2, v9);
  }
}

void *sub_18844ADB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
      v10 = *(a4 + 24);
    }

    return sub_1883F90F4(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_18844AEBC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844AF94()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E1D0, qword_1886FA7C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_18844AFEC()
{
  MEMORY[0x18CFD7FA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B024()
{
  v1 = type metadata accessor for SessionID();
  sub_1883F70DC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_18844B110()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B144()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B17C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKQueryOperation.desiredKeys.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B1DC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18844B21C()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B250()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordsOperation.desiredKeys.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B2E8()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B31C()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesConfiguration.desiredKeys.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B430()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B464()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B4F8()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B52C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B594()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B5C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B630()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B664()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B69C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchShareMetadataOperation.rootRecordDesiredKeys.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B6FC()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B730()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B798()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B7CC()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchSubscriptionsOperation.subscriptionIDs.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B874()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844B8A8()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B8DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.subscriptionIDsToDelete.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18844B980()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B9E0()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844BA14()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844BA8C()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844BAC0()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844BB54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BB8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BBD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BC10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BC5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BC9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BCE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BD20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BD64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BD9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BDE8()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844BE1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BE84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BEBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844BF14()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844BF80()
{
  v1 = *(v0 + 24);

  v2 = sub_1883F7D04();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844BFB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BFE8()
{
  v1 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  sub_1883F7158(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18844C078()
{
  v2 = type metadata accessor for UUID();
  sub_1883FF434(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v0);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_18844C12C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18844C184()
{
  v2 = type metadata accessor for UUID();
  sub_1883FF434(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v0);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_18844C240()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844C2B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18844C2F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1883F5E14(v4, 0);
      sub_188426A14((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_18844C384()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 96);

  sub_188443314();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_18844C3EC()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844C424()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_18844C47C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18844C4C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844C4FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18844C5A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_18844C5EC()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18844C624()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  sub_1883FEFF8();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

xpc_object_t sub_18844C698@<X0>(void *a1@<X8>)
{
  result = CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.getter();
  *a1 = result;
  return result;
}

void sub_18844C704(uint64_t *a1)
{
  sub_1883F9C84(a1);
  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  *v1 = v2;
}

void sub_18844C730(uint64_t *a1)
{
  sub_1883F9C84(a1);
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  *v1 = v2;
}

id sub_18844C75C(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKSyncEngine.State.hasPendingUntrackedChanges.getter();
  *v1 = result & 1;
  return result;
}

id sub_18844C788(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CKSyncEngine.State.hasPendingUntrackedChanges.setter();
}

id sub_18844C7DC(uint64_t *a1)
{
  sub_1883F9C84(a1);
  result = CKSyncEngine.State.serverChangeTokenForDatabase.getter();
  *v1 = result;
  return result;
}

uint64_t sub_18844C980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_18844CAB0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_18844CB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E676953656C6966 && a2 == 0xED00006572757461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001886FED90 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736B6E756863 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18844CCB0(char a1)
{
  if (!a1)
  {
    return 0x6E676953656C6966;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x736B6E756863;
}

Swift::Int sub_18844CD44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

uint64_t sub_18844CD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18844CB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18844CDD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18844CC74();
  *a1 = result;
  return result;
}

uint64_t sub_18844CE00(uint64_t a1)
{
  v2 = sub_18844E744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18844CE3C(uint64_t a1)
{
  v2 = sub_18844E744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18844CE78(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D030, &qword_1886F6BD0);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18844E744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[4];
    v19[15] = 2;
    sub_18844E6FC(&qword_1EA90D018, &qword_1886F6BC8);
    sub_18844E834(&qword_1EA90D038, sub_18844E8AC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_18844D054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90D008, &qword_1886F6BC0);
  v6 = sub_1883F70DC(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18844E744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v19 = v10;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v13;
  sub_18844E6FC(&qword_1EA90D018, &qword_1886F6BC8);
  sub_18844E834(&qword_1EA90D020, sub_18844E7E0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_1883F70CC();
  v15(v14);
  result = sub_1883FE944(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

double sub_18844D2CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18844D054(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_18844D32C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D384()
{
  Hasher.init(_seed:)();
  sub_188470B58();
  return Hasher._finalize()();
}

Swift::Int sub_18844D3D0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D418(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D460(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D4A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_18844D528(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2);
  return Hasher._finalize()();
}

Swift::Int sub_18844D56C()
{
  Hasher.init(_seed:)();
  sub_188470B58();
  return Hasher._finalize()();
}

Swift::Int sub_18844D5B0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2);
  return Hasher._finalize()();
}

uint64_t sub_18844D5F4(uint64_t a1)
{
  v2 = sub_18844DDA0(&unk_1EA90CAF0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18844D660(uint64_t a1)
{
  v2 = sub_18844DDA0(&unk_1EA90CAF0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18844D6CC(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_18844D738()
{
  v1 = sub_1883F9B38();
  result = nullsub_4(v1);
  *v0 = result;
  return result;
}

uint64_t sub_18844D770(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_18844D7E8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18844D868()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x18CFD5010](v0);

  return v1;
}

uint64_t sub_18844D8B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18844D868();
  *a1 = result;
  return result;
}

uint64_t sub_18844D8D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_18846C224();
}

uint64_t sub_18844D8FC(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_18844D968(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_18844D9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_18844DA64(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_18844DAD0(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_18844DB3C(void *a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_18844DBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int sub_18844DC48()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_18844DCA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x18CFD5010](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_18844DCF0()
{
  sub_1883F9B38();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18844DD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_18844DDA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18844DDE8(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C590, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18844DE54(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C590, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18844DEC0(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_18844DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_18844DFF8(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CF28, type metadata accessor for FileProtectionType);
  v3 = sub_18844DDA0(&qword_1EA90CF30, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18844E18C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x18CFD51D0](v0);

  return v1;
}

uint64_t sub_18844E1C4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_18844E218()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

__n128 sub_18844E59C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18844E5B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18844E5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18844E654(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18844E674(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_18844E6B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18844E6FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18844E744()
{
  result = qword_1EA90D010;
  if (!qword_1EA90D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D010);
  }

  return result;
}

uint64_t sub_18844E798(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18844E7E0()
{
  result = qword_1EA90D028;
  if (!qword_1EA90D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D028);
  }

  return result;
}

uint64_t sub_18844E834(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D018, &qword_1886F6BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18844E8AC()
{
  result = qword_1EA90D040;
  if (!qword_1EA90D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18844EA7C()
{
  result = qword_1EA90D048;
  if (!qword_1EA90D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D048);
  }

  return result;
}

unint64_t sub_18844EAD4()
{
  result = qword_1EA90D050;
  if (!qword_1EA90D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D050);
  }

  return result;
}

unint64_t sub_18844EB2C()
{
  result = qword_1EA90D058;
  if (!qword_1EA90D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D058);
  }

  return result;
}

__n128 sub_18844EB90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18844EBAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18844EBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18844EC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001886FEE30 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001886FEE50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18844EDB0(char a1)
{
  result = 0x6D75736B63656863;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6874676E656CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18844EE3C(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D190, &qword_1886F6D88);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18844F364();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v22[15] = 0;
  sub_1883F9B44();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22[14] = 1;
    sub_1883F9B44();
    v18 = v3[4];
    v22[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[5];
    v20 = v3[6];
    v22[12] = 3;
    sub_1883F9B44();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_18844EFC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90D180, &qword_1886F6D80);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18844F364();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v32 = 0;
  v14 = sub_1883F86EC();
  v16 = v15;
  v28 = v14;
  v31 = 1;
  v26 = sub_1883F86EC();
  v27 = v17;
  v30 = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 3;
  v18 = sub_1883F86EC();
  v20 = v19;
  v21 = v18;
  (*(v8 + 8))(v12, v5);

  v22 = v27;

  sub_1883FE944(a1);

  *a2 = v28;
  a2[1] = v16;
  v24 = v25;
  a2[2] = v26;
  a2[3] = v22;
  a2[4] = v24;
  a2[5] = v21;
  a2[6] = v20;
  return result;
}

uint64_t sub_18844F234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18844EC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18844F25C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18844EDA8();
  *a1 = result;
  return result;
}

uint64_t sub_18844F284(uint64_t a1)
{
  v2 = sub_18844F364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18844F2C0(uint64_t a1)
{
  v2 = sub_18844F364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18844F2FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18844EFC0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_18844F364()
{
  result = qword_1EA90D188;
  if (!qword_1EA90D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChunkInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChunkInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18844F520()
{
  result = qword_1EA90D198;
  if (!qword_1EA90D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D198);
  }

  return result;
}

unint64_t sub_18844F578()
{
  result = qword_1EA90D1A0;
  if (!qword_1EA90D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1A0);
  }

  return result;
}

unint64_t sub_18844F5D0()
{
  result = qword_1EA90D1A8;
  if (!qword_1EA90D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1A8);
  }

  return result;
}

uint64_t sub_18844F624()
{
  sub_18844E6FC(&qword_1EA90D228, &qword_1886F70A0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1EA919C78 = result;
  return result;
}

id sub_18844F690()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698F6D0]) init];
  [v0 set:1 allowsExpensiveAccess:?];
  if (qword_1EA90CB00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA919C78;
  os_unfair_lock_lock((qword_1EA919C78 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    [v0 setNetworkingDelegate_];
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_18844F774()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 32) = v0;
  v12 = swift_task_alloc();
  *(v1 + 40) = v12;
  *v12 = v1;
  v12[1] = sub_18844F838;

  return sub_18844FA28(v11, v9, v7, v5, v3);
}

uint64_t sub_18844F838()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1883F78EC();
  v9 = v8;
  sub_1883F78D4();
  *v10 = v9;
  v12 = *(v11 + 40);
  v13 = *v1;
  sub_1883F7110();
  *v14 = v13;

  if (v0)
  {
    v15 = *(v13 + 8);

    return v15();
  }

  else
  {
    v9[6] = v3;
    v9[7] = v5;
    v9[8] = v7;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_18844F984()
{
  sub_1883F78E0();
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v3 = v0[3].receiver;
  v4 = v0[2].receiver;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
  *v6 = receiver;
  *(v6 + 1) = super_class;
  *(v6 + 2) = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = v0->super_class;

  return v8(v7);
}

uint64_t sub_18844FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_1883F7FD8();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18844FA5C()
{
  sub_1883F78E0();
  if (sub_188451E1C(v0[10], v0[11]))
  {
    type metadata accessor for CKError(0);
    v0[8] = 8;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_1883FD9AC();
    sub_1884547F0(v1, v2);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = v0[7];
    swift_willThrow();
    sub_1883F816C();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_18844FBA0;
    v7 = v0[9];

    return sub_188451E70(v7);
  }
}

uint64_t sub_18844FBA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 112);
  *v3 = *v1;
  v2[15] = v6;
  v2[16] = v7;
  v2[17] = v0;

  if (v0)
  {
    sub_1883F816C();

    return v8();
  }

  else
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18844FCC4()
{
  sub_1883FC738();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_18845479C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    sub_188423CCC(v0[15], v0[16]);

    sub_1883F816C();

    return v14();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];

    v9 = v0[3];
    v10 = v0[5];
    v11 = sub_188452428(v0[6], v8, v7);
    v13 = v0[15];
    v12 = v0[16];
    v16 = v11;
    v17 = v0[13];
    sub_188423CCC(v0[15], v0[16]);

    sub_1883F816C();
    v21 = v18;
    v19 = v0[12];
    v20 = v0[13];

    return v21(v16, v19, v20);
  }
}

uint64_t sub_18844FF0C(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v8 = type metadata accessor for URL();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v4[3] = v9;
  v10 = *(v9 + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a2;
  v12 = a3;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4[6] = v13;
  v4[7] = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v4[8] = v17;
  swift_getObjCClassMetadata();
  v18 = swift_task_alloc();
  v4[9] = v18;
  *v18 = v4;
  v18[1] = sub_1884500A0;

  return sub_18844F774();
}

void sub_1884500A0()
{
  sub_1883FC738();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  v8 = v5[9];
  v9 = *v1;
  *v7 = *v1;

  v10 = v5[8];
  v11 = v5[7];
  v12 = v5[6];
  v13 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);

  sub_188423CCC(v12, v11);
  if (v2)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, v14);
    _Block_release(v13);
  }

  else
  {
    (v13)[2](v13, v4, 0);
    _Block_release(v13);
  }

  v15 = v6[4];

  v16 = v9[1];
  sub_1883F9968();

  __asm { BRAA            X1, X16 }
}

id sub_1884502C0()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1883FA2CC();
  sub_188423C74(v4, v5);
  v6 = sub_1883FA2CC();
  v8 = sub_188450384(v6, v7);
  if (v1)
  {
    v11 = sub_1883FA2CC();
    sub_188423CCC(v11, v12);
    sub_1883FF6E8();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = &v0[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
    *v13 = v8;
    v13[1] = v9;
    v13[2] = v10;
    v17.receiver = v0;
    v17.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v17, sel_init);
    v14 = sub_1883FA2CC();
    sub_188423CCC(v14, v15);
  }

  return v2;
}

uint64_t sub_188450384(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_188454528();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_188423CCC(a1, a2);

  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1884504DC()
{
  v7 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal);
  v1 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 16);
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_188453EC8();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v5;
}

void sub_188450654()
{
  v1 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal);
  v2 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 8);
  v3 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 16);
  sub_18845066C();
}

void sub_18845066C()
{
  sub_1883F8AF0();
  v69 = v0;
  v70 = v1;
  v67 = v2;
  v68 = v3;
  v5 = v4;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = sub_1883F70DC(v6);
  v75 = v8;
  v76 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F911C();
  v74 = v11;
  sub_1883FEC2C();
  v72 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = sub_1883F7B50(v72);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F911C();
  v73 = v15;
  sub_1883FEC2C();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_1883F8AE4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1883F911C();
  v71 = v20;
  sub_1883FEC2C();
  v21 = type metadata accessor for UUID();
  v22 = sub_1883F70DC(v21);
  v66 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1883F7100();
  v28 = v27 - v26;
  v29 = sub_1883FF6E8();
  v31 = sub_18844E6FC(v29, v30);
  v32 = sub_1883F8AE4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v66 - v38;
  v40 = type metadata accessor for URL();
  v41 = sub_1883F70DC(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1883F7100();
  v48 = v47 - v46;
  sub_18845457C(v5, v39, &qword_1EA90D240, &qword_1886F70B0);
  sub_188405CF0(v39);
  if (!v49)
  {
    (*(v43 + 32))(v48, v39, v40);
LABEL_6:
    v53 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v54 = v67;

    v56 = sub_18845404C(v48, v54, v55);
    v80 = &type metadata for AssetStreamHandleInternal;
    v57 = sub_1884545DC();
    v77 = v68;
    v78 = v69;
    v81 = v57;
    v79 = v70;
    v58 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    swift_bridgeObjectRetain_n();

    v59 = LoadingRequestHandler.init(streamHandle:type:)();
    v60 = [v56 resourceLoader];
    sub_188454630();
    v61 = v59;
    static DispatchQoS.unspecified.getter();
    v77 = MEMORY[0x1E69E7CC0];
    sub_1883F9538();
    sub_1884547F0(v62, v63);
    sub_18844E6FC(&qword_1EA90D260, &qword_1886F70B8);
    sub_188454674();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v75 + 104))(v74, *MEMORY[0x1E69E8090], v76);
    sub_188414700();
    v64 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    [v60 setDelegate:v61 queue:v64];

    type metadata accessor for PlayerItem();
    v65 = v61;
    dispatch thunk of static PlayerItem.makePlayerItem(with:delegate:)();

    sub_1883F8178();
    return;
  }

  sub_1884036C4();
  UUID.init()();
  sub_1883FF05C();
  sub_1884547F0(v50, v51);
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v52);

  (*(v66 + 8))(v28, v21);
  URL.init(string:)();

  sub_188405CF0(v36);
  if (!v49)
  {
    (*(v43 + 32))(v48, v36, v40);
    sub_188405CF0(v39);
    if (!v49)
    {
      sub_1883F9FEC(v39, &qword_1EA90D240, &qword_1886F70B0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

void sub_188450CD4()
{
  v1 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal);
  v2 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 8);
  v3 = *(v0 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 16);
  sub_188450CEC();
}

void sub_188450CEC()
{
  sub_1883F8AF0();
  v67 = v0;
  v68 = v1;
  v65 = v2;
  v66 = v3;
  v75 = v4;
  v76 = v5;
  v7 = v6;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = sub_1883F70DC(v8);
  v73 = v10;
  v74 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F911C();
  v72 = v13;
  sub_1883FEC2C();
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = sub_1883F7B50(v70);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F911C();
  v71 = v17;
  sub_1883FEC2C();
  v18 = type metadata accessor for DispatchQoS();
  v19 = sub_1883F8AE4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F911C();
  v69 = v22;
  sub_1883FEC2C();
  v23 = type metadata accessor for UUID();
  v24 = sub_1883F70DC(v23);
  v64 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F7100();
  v30 = v29 - v28;
  v31 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v32 = sub_1883F8AE4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v64 - v38;
  v40 = type metadata accessor for URL();
  v41 = sub_1883F70DC(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1883F7100();
  v48 = v47 - v46;
  sub_18845457C(v7, v39, &qword_1EA90D240, &qword_1886F70B0);
  if (sub_1884041DC(v39) != 1)
  {
    (*(v43 + 32))(v48, v39, v40);
LABEL_6:
    v52 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v53 = v65;

    v55 = sub_18845404C(v48, v53, v54);
    v80 = &type metadata for AssetStreamHandleInternal;
    v56 = sub_1884545DC();
    v77 = v66;
    v78 = v67;
    v81 = v56;
    v79 = v68;
    v57 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    swift_bridgeObjectRetain_n();

    v58 = LoadingRequestHandler.init(streamHandle:type:)();
    v59 = [v55 resourceLoader];
    sub_188454630();
    v60 = v58;
    static DispatchQoS.unspecified.getter();
    v77 = MEMORY[0x1E69E7CC0];
    sub_1883F9538();
    sub_1884547F0(v61, v62);
    sub_18844E6FC(&qword_1EA90D260, &qword_1886F70B8);
    sub_188454674();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v73 + 104))(v72, *MEMORY[0x1E69E8090], v74);
    sub_188414700();
    v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    [v59 setDelegate:v60 queue:v63];

    objc_allocWithZone(type metadata accessor for AssetExportSession());

    AssetExportSession.init(avAsset:presetName:delegate:)();
    sub_1883F8178();
    return;
  }

  sub_1884036C4();
  UUID.init()();
  sub_1883FF05C();
  sub_1884547F0(v49, v50);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v51);

  (*(v64 + 8))(v30, v23);
  URL.init(string:)();

  if (sub_1884041DC(v36) != 1)
  {
    (*(v43 + 32))(v48, v36, v40);
    if (sub_1884041DC(v39) != 1)
    {
      sub_1883F9FEC(v39, &qword_1EA90D240, &qword_1886F70B0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1884513D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001886FEF80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}