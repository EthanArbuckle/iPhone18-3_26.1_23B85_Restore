uint64_t _BKHandleIOHIDEventFromSender(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v4 = objc_autoreleasePoolPush();
  if (IOHIDEventGetAttributeDataLength() < 1)
  {
    v11 = +[BKHIDSystem sharedInstance];
    *&valuePtr = 0;
    if (a1)
    {
      *&valuePtr = IOHIDEventGetSenderID();
      v12 = valuePtr == 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 1;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    if (v12)
    {
      RegistryID = IOHIDServiceGetRegistryID();
      if (RegistryID)
      {
        CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      }
    }

LABEL_20:
    v14 = +[BKHIDSystem sharedInstance];
    v15 = [v14 senderCache];

    p_super = [v15 senderInfoForSenderID:valuePtr];
    if (a2)
    {
      if (!valuePtr)
      {
        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v17 = BKLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v60 = valuePtr;
        _os_log_impl(&dword_223CBE000, v17, OS_LOG_TYPE_INFO, "populating sender cache for unknown sender with senderID:%llX", buf, 0xCu);
      }

      v18 = [[BKIOHIDService alloc] initWithHIDServiceRef:a2];
      [v15 addSenderInfo:v18 forSenderID:valuePtr];
      v19 = p_super;
      p_super = &v18->super;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:

        v20 = [v11 dispatcherProvider];
        v21 = [v20 dispatcherForEvent:a1];
        [v11 processEvent:&v50 sender:p_super dispatcher:v21];

LABEL_31:
        goto LABEL_32;
      }

      v19 = BKLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v60 = valuePtr;
        _os_log_impl(&dword_223CBE000, v19, OS_LOG_TYPE_INFO, "no IOHIDServiceRef for unknown senderID:%llX", buf, 0xCu);
      }
    }

    goto LABEL_30;
  }

  if (IOHIDEventGetAttributeDataLength() < 6 || (AttributeDataPtr = IOHIDEventGetAttributeDataPtr()) == 0 || !*(AttributeDataPtr + 4) || *AttributeDataPtr != 3)
  {
    v11 = BKLogEventDelivery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v60 = a1;
      _os_log_error_impl(&dword_223CBE000, v11, OS_LOG_TYPE_ERROR, "ignoring event with non-redirect attribute data: %{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  if (a1)
  {
    v6 = +[BKHIDSystem sharedInstance];
    v7 = BKSHIDEventGetBaseAttributes();
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v24 = v10;

    if (v24)
    {
      v25 = [v24 environment];
      [v24 source];
      v26 = [v24 display];
      if (!v26)
      {
        v27 = [v6 deliveryManager];
        v26 = [v27 mainDisplay];
      }

      v49 = [v24 token];
      [v24 options];
      v28 = [v24 pid];
      v48 = v26;
      if (v28 <= 0)
      {
        v33 = BKLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v60 = a1;
          _os_log_error_impl(&dword_223CBE000, v33, OS_LOG_TYPE_ERROR, "must have a valid destination PID must be set to redirect events -- not redirecting '%{public}@'", buf, 0xCu);
        }
      }

      else
      {
        v29 = v28;
        v46 = v6;
        v47 = v4;
        if (v25)
        {
          v30 = objc_opt_new();
          [v30 setDisplay:v26];
          [v30 setEnvironment:v25];
          [v30 setToken:v49];
          v31 = [v6 deliveryManager];
          v32 = [v31 destinationsStartingFromPID:v29 deferringPredicate:v30];
        }

        else
        {
          v34 = MEMORY[0x277CF0638];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = ___BKRedirectHIDEvent_block_invoke;
          v55[3] = &unk_2784F6FD8;
          v56 = v26;
          v58 = v29;
          v57 = v49;
          v35 = [v34 build:v55];
          v32 = [MEMORY[0x277CBEB98] setWithObject:v35];
        }

        v45 = v25;
        v36 = BKLogHID();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = BKSHIDEventGetConciseDescription();
          SenderID = IOHIDEventGetSenderID();
          *buf = 138543874;
          v60 = v37;
          v61 = 2048;
          v62 = SenderID;
          v63 = 2114;
          v64 = v32;
          _os_log_impl(&dword_223CBE000, v36, OS_LOG_TYPE_DEFAULT, "Redirecting HID event (%{public}@ / senderID:%llX) to destinations: %{public}@", buf, 0x20u);
        }

        IOHIDEventGetTimeStamp();
        kdebug_trace();
        valuePtr = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v33 = v32;
        v39 = [v33 countByEnumeratingWithState:&valuePtr objects:buf count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v52;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v52 != v41)
              {
                objc_enumerationMutation(v33);
              }

              v43 = *(*(&valuePtr + 1) + 8 * i);
              Copy = IOHIDEventCreateCopy();
              BKSHIDEventSetSimpleDeliveryInfo();
              [__HIDClientConnectionManager sendEvent:Copy toDestination:v43];
              CFRelease(Copy);
            }

            v40 = [v33 countByEnumeratingWithState:&valuePtr objects:buf count:16];
          }

          while (v40);
        }

        v6 = v46;
        v4 = v47;
        v25 = v45;
      }
    }

    else
    {
      v25 = BKLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = a1;
        _os_log_error_impl(&dword_223CBE000, v25, OS_LOG_TYPE_ERROR, "event does not contain valid redirect info -- not redirecting '%{public}@'", buf, 0xCu);
      }
    }
  }

LABEL_32:
  objc_autoreleasePoolPop(v4);
  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t BKSendHIDEventToClientWithTaskPort(uint64_t a1, uint64_t a2)
{
  if (!__BKHIDEventTapCallback || (result = __BKHIDEventTapCallback(a1, a2, 0), result))
  {
    v5 = __HIDClientConnectionManager;

    return [v5 sendEvent:a1 toClientTaskPort:a2];
  }

  return result;
}

id BKLogSendHIDEvent()
{
  if (BKLogSendHIDEvent_onceToken != -1)
  {
    dispatch_once(&BKLogSendHIDEvent_onceToken, &__block_literal_global_36);
  }

  v1 = BKLogSendHIDEvent___logObj;

  return v1;
}

id BKLogHID()
{
  if (BKLogHID_onceToken != -1)
  {
    dispatch_once(&BKLogHID_onceToken, &__block_literal_global_15);
  }

  v1 = BKLogHID___logObj;

  return v1;
}

void BKHIDClientConnectionAdditionCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a client addition callback: %{public}@", &v12, 0xCu);
  }

  if (a1)
  {
    CFRetain(a3);
    os_unfair_lock_assert_not_owner((a1 + 48));
    os_unfair_lock_lock((a1 + 48));
    v6 = CFDictionaryGetValue(*(a1 + 40), a3);
    if (!v6)
    {
      v6 = [BKHIDClientConnection connectionWithConnection:a3];
      if (v6)
      {
        v7 = BKLogHID();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543618;
          v13 = v6;
          v14 = 2114;
          v15 = a3;
          _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "Adding client connection: %{public}@ for client: %{public}@", &v12, 0x16u);
        }

        v8 = [v6 pid];
        CFDictionarySetValue(*(a1 + 40), a3, v6);
        [*(a1 + 16) setObject:v6 forKey:{objc_msgSend(v6, "task")}];
        [*(a1 + 24) setObject:v6 forKey:v8];
        v9 = *(a1 + 32);
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "versionedPID")}];
        [v9 setObject:v6 forKey:v10];
      }
    }

    os_unfair_lock_unlock((a1 + 48));
    CFRelease(a3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t _BKHIDEventDeferringDisplayMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4 && ([v4 _isNullDisplay] & 1) == 0)
  {
    v6 = [v5 isEqual:v3];
  }

  return v6;
}

id _BKResolutionDescriptionForLogging(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___BKResolutionDescriptionForLogging_block_invoke;
  v7[3] = &unk_2784F6848;
  v5 = v4;
  v8 = v5;
  v9 = a2;
  [v5 appendCollection:v3 withName:0 itemBlock:v7];

  return v5;
}

void _BKHIDServiceRemoved(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    v9 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a service removed callback: %{public}@", &v8, 0xCu);
  }

  v6 = a1;
  [v6 _serviceWasRemoved];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t _BKHIDEventSenderMatchesSenderSet(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = 1;
  v32 = v5;
  if (v5 && v6)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v30 = v6;
      v9 = *v34;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          v12 = v32;
          v13 = v11;
          v14 = v7;
          v15 = [v13 senderID];
          if (v15 && v15 != [v12 senderID] || objc_msgSend(v13, "isAuthenticated") && !objc_msgSend(v12, "isAuthenticated") || (v16 = objc_msgSend(v13, "hardwareType")) != 0 && v16 != objc_msgSend(v12, "hardwareType") || (v17 = objc_msgSend(v13, "primaryPage"), v18 = objc_msgSend(v13, "primaryUsage"), v17) && ((v19 = v18, v17 != objc_msgSend(v12, "primaryPage")) || v19 && v19 != objc_msgSend(v12, "primaryUsage")))
          {
          }

          else
          {
            v20 = [v13 associatedDisplay];
            if (!v20)
            {

LABEL_33:
              v8 = 1;
              goto LABEL_34;
            }

            v21 = v20;
            v22 = [v12 associatedDisplay];
            if (v22)
            {
              v23 = v22;
              if ([v22 _isBuiltinDisplay])
              {
                v24 = v14;

                v23 = v24;
              }
            }

            else
            {
              v23 = [MEMORY[0x277CF0698] nullDisplay];
            }

            if ([v21 _isBuiltinDisplay])
            {
              v25 = v14;

              v21 = v25;
            }

            v26 = [v23 isEqual:v21];

            if (v26)
            {
              goto LABEL_33;
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v8 = v27;
      }

      while (v27);
LABEL_34:
      v6 = v30;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

void BKHIDClientConnectionRemovalCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543362;
    v12 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a client removal callback: %{public}@", &v11, 0xCu);
  }

  if (a1)
  {
    CFRetain(a3);
    os_unfair_lock_assert_not_owner((a1 + 48));
    os_unfair_lock_lock((a1 + 48));
    v6 = CFDictionaryGetValue(*(a1 + 40), a3);
    if (v6)
    {
      v7 = BKLogHID();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543874;
        v12 = v6;
        v13 = 2114;
        v14 = a3;
        v15 = 2114;
        v16 = @"HID";
        _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "Removing client connection %{public}@ for client: %{public}@ source:%{public}@", &v11, 0x20u);
      }

      [*(a1 + 16) removeObjectForKey:{objc_msgSend(v6, "task")}];
      [*(a1 + 24) removeObjectForKey:{objc_msgSend(v6, "pid")}];
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "versionedPID")}];
      [v8 removeObjectForKey:v9];

      CFDictionaryRemoveValue(*(a1 + 40), a3);
      [v6 invalidate];
    }

    os_unfair_lock_unlock((a1 + 48));
    CFRelease(a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _BKHIDServiceAdded(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = BKLogHID();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = a4;
    _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_INFO, "IOServices added: %{public}@", &v13, 0xCu);
  }

  if (a4 && CFArrayGetCount(a4))
  {
    v8 = a4;
    if (a1)
    {
      os_unfair_lock_lock((a1 + 8));
      v9 = atomic_load((a1 + 26));
      if (v9)
      {
        os_unfair_lock_unlock((a1 + 8));
      }

      else
      {
        v10 = [(BKIOHIDServiceMatcher *)a1 _lock_didAddIOHIDServiceRefs:v8];
        if (*(a1 + 24))
        {
          os_unfair_lock_unlock((a1 + 8));
          WeakRetained = objc_loadWeakRetained((a1 + 48));
          [WeakRetained matcher:a1 servicesDidMatch:v10];
        }

        else
        {
          [(BKIOHIDServiceMatcher *)a1 _lock_asyncNotifyServicesAdded:v10];
          os_unfair_lock_unlock((a1 + 8));
        }
      }
    }
  }

  else
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = a3;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_INFO, "Empty IOService array for sender %{public}@; ignoring", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t _BKSendHIDEventToClientWithDestination(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v9 = v5;
  if ((a3 & 1) != 0 || !__BKHIDEventTapCallback || ([__HIDClientConnectionManager clientForDestination:v5], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleID"), v7 = objc_claimAutoreleasedReturnValue(), v6, LODWORD(v6) = __BKHIDEventTapCallback(a1, 0, v7), v7, v6))
  {
    [__HIDClientConnectionManager sendEvent:a1 toDestination:v9];
  }

  return MEMORY[0x2821F9730]();
}

id sub_223CC2F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BKGraphSectionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_223CC2FA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[2];
  v0[2] = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + 16);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_223CC3030()
{
  v0 = sub_223CC2FA8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *variable initialization expression of BKEventGraphDescriptionAccumulator.topLevel()
{
  type metadata accessor for _GraphNode();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  result[2] = 0;
  result[3] = v1;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

void sub_223CC314C()
{
  v1 = *(*&v0[OBJC_IVAR___BKEventGraphDescriptionAccumulator_current] + 16);
  if (!v1)
  {
    v1 = *&v0[OBJC_IVAR___BKEventGraphDescriptionAccumulator_topLevel];
  }

  *&v0[OBJC_IVAR___BKEventGraphDescriptionAccumulator_current] = v1;

  v2 = sub_223CEACE0();
  [v0 addSubnode_];
}

uint64_t sub_223CC3200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for _GraphNode();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v6[4] = a1;
  v6[5] = a2;
  v8 = OBJC_IVAR___BKEventGraphDescriptionAccumulator_current;
  v9 = *(v3 + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current);
  v6[2] = v9;
  v6[3] = v7;
  swift_beginAccess();

  swift_retain_n();

  MEMORY[0x223DF72D0](v10);
  if (*((*(v9 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(v9 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_223CEAD30();
  }

  sub_223CEAD40();
  swift_endAccess();

  v11 = *(v3 + v8);
  *(v3 + v8) = v6;
}

uint64_t sub_223CC3328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_223CEACF0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_223CC34CC(void *a1, uint64_t a2, char a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v7;
  if (v7)
  {
    swift_beginAccess();
    v9 = a1[3];
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v22 = a1[3];
      }

      sub_223CEADD0();
    }

    sub_223CC3B00(v6, v5, a3 & 1);
  }

  swift_beginAccess();
  v10 = a1[3];
  if (v10 >> 62)
  {
    goto LABEL_31;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223DF7410](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v13 = *(v10 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v11 = sub_223CEADD0();
          goto LABEL_8;
        }
      }

      v15 = a1[3];
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v18 = a1[3];
        }

        v19 = sub_223CEADD0();
        v17 = v19 - 1;
        if (__OFSUB__(v19, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          goto LABEL_24;
        }
      }

      sub_223CC34CC(v13, a2, v12 >= v17);

      ++v12;
    }

    while (v14 != v11);
  }

  if (v23)
  {
    result = *(a2 + 24);
    v21 = result - 1;
    if (result >= 1)
    {
      result = sub_223CC5260(result);
      *(a2 + 24) = v21;
    }
  }

  return result;
}

unint64_t type metadata accessor for BKEventGraphDescriptionAccumulator()
{
  result = qword_27D0BC818;
  if (!qword_27D0BC818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0BC818);
  }

  return result;
}

_OWORD *sub_223CC3858(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223CC387C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223CC38C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_223CC392C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223CC3974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223CC39C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v4 = 0;
      v5 = a2 + 56;
      do
      {
        if (*(a2 + 16) && (v8 = *(a2 + 40), v9 = sub_223CEAF10(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (*(*(a2 + 48) + 8 * v11) != v4)
          {
            v11 = (v11 + 1) & v12;
            if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v6 = 0xA400000000000000;
          v7 = 545428706;
        }

        else
        {
LABEL_4:
          v6 = 0xE200000000000000;
          v7 = 8224;
        }

        ++v4;

        MEMORY[0x223DF72C0](v7, v6);
      }

      while (v4 != v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_223CC3B00(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  if (*(v3 + 32))
  {
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    *(v3 + 32) = 1;
  }

  v6 = *(v3 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v3 + 16);
  *(v4 + 24) = v7;
  if (__OFSUB__(v7, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = 0xAC0000008094E28FLL;
  v12 = 0x97E28094E29494E2;
  v13 = sub_223CC39C4(v6, v8);
  if (v5 != 2)
  {
    if (v5 == 1 || *(v8 + 16))
    {
      v12 = 0x97E28094E29C94E2;
    }

    else
    {
      v11 = 0xA800000000000000;
      v12 = 0x8094E28F97E22020;
    }
  }

  v15 = v13;
  v16 = v14;

  MEMORY[0x223DF72C0](v12, v11);

  MEMORY[0x223DF72C0](v9, a2);

  MEMORY[0x223DF72C0](10, 0xE100000000000000);

  MEMORY[0x223DF72C0](v15, v16);

  if (v5 == 2)
  {
    sub_223CC5260(v7 - 1);
  }

  return sub_223CC6228(&v15, v7);
}

unint64_t sub_223CC3CBC@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = sub_223CEAEB0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1;
    v8 = -1 << *(result + 32);
    v4 = result + 64;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_223CC3D40()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_223CEAED0())
    {
      swift_unknownObjectRelease();
      sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
      swift_dynamicCast();
      if (v11)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v0[3] = v6;
          v0[4] = 0;
          return;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v9 = v8;
    v0[3] = v3;
    v0[4] = v7;
    if (v8)
    {
LABEL_15:
      v10 = v0[5];
      if (!__OFADD__(v10, 1))
      {
        v0[5] = v10 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

void sub_223CC3E8C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    if (sub_223CEAED0())
    {
      sub_223CC73DC(0, &qword_28133EF10, 0x277CF05F8);
      swift_dynamicCast();
      sub_223CC73DC(0, &qword_28133EF38, off_2784F5E98);
      swift_dynamicCast();
      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    if (!v3)
    {
      v5 = (v0[2] + 64) >> 6;
      if (v5 <= v2 + 1)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = (v0[2] + 64) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v5)
        {
          v0[3] = v7;
          v0[4] = 0;
          return;
        }

        v3 = *(v0[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v4 = v0[3];
LABEL_14:
    v8 = (v3 - 1) & v3;
    v9 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
    v10 = *(*(v1 + 48) + v9);
    v11 = *(*(v1 + 56) + v9);
    v12 = v10;
    v13 = v11;
    v0[3] = v4;
    v0[4] = v8;
    if (v10)
    {
LABEL_15:
      v14 = v0[5];
      if (!__OFADD__(v14, 1))
      {
        v0[5] = v14 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

char *sub_223CC4028(id *a1)
{
  v2 = v1;
  v4 = [(BKEventDeferringEnvironmentGraph *)a1 topLevelInEachProcess];
  sub_223CC73DC(0, &qword_27D0BC830, 0x277CCABB0);
  sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
  sub_223CC67D8(&qword_27D0BC838, &qword_27D0BC830, 0x277CCABB0);
  v5 = sub_223CEACD0();

  sub_223CC3CBC(v5, &v30);
  v28 = v5;

  sub_223CC3D40();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    while (1)
    {
      [(BKEventDeferringNode *)v9 pid];
      result = BSProcessDescriptionForPID();
      if (!result)
      {
        break;
      }

      v15 = result;
      v16 = sub_223CEACF0();
      v18 = v17;

      v19 = [(BKEventDeferringNode *)v9 subnodes];
      [v19 count];

      if ((v5 & 0xC000000000000001) != 0)
      {
        result = sub_223CEADD0();
        v20 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = *(v28 + 16);
        v20 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      sub_223CC3B00(v16, v18, v8 >= v20);

      v21 = [(BKEventDeferringNode *)v9 subnodes];
      v22 = [v21 count];
      v23 = v21;
      if (v22 >= 1)
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = [v23 objectAtIndex_];
          sub_223CEAD90();
          swift_unknownObjectRelease();
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          if (!v29)
          {
            break;
          }

          sub_223CC50EC(v29, a1, i, v22);
        }
      }

      v10 = v2[3];
      v11 = v10 - 1;
      if (v10 < 1)
      {
      }

      else
      {
        sub_223CC5260(v10);

        v2[3] = v11;
      }

      sub_223CC3D40();
      v8 = v12;
      v9 = v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_223CC67D0();

    v27 = *v2;
    v26 = v2[1];

    return v27;
  }

  return result;
}

void sub_223CC4424(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  v25[2] = MEMORY[0x277D84FA0];
  v25[3] = 0;
  v26 = 0;

  sub_223CC3B00(a2, a3, 0);

  v8 = [(BKEventDeliveryChain *)a1 dispatchTarget];
  v9 = [v8 description];
  v10 = sub_223CEACF0();
  v12 = v11;

  sub_223CC3B00(v10, v12, 1);

  v13 = [(BKEventDeferringNode *)a1 subnodes];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 description];
    v16 = sub_223CEACF0();
    v18 = v17;

    sub_223CC3B00(v16, v18, 1);
  }

  v19 = [(BKEventDeliveryChain *)a1 deferringPath];
  sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
  v20 = sub_223CEAD20();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  v21 = sub_223CEADD0();
  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223DF7410](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      sub_223CC6BE8(v23, a4, v25, 1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_223CC46F4(uint64_t a1, SEL *a2, uint64_t a3)
{
  v6 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v77 = v7;
    v72 = 0;
    v73 = 0xE000000000000000;
    v74 = v6;
    v75 = 0;
    v76 = 0;

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_223CEADD0();
    }

    sub_223CC3B00(a2, a3, 0);

    a3 = (a1 & 0xC000000000000001) != 0 ? sub_223CEADD0() : *(a1 + 16);
    sub_223CC3CBC(a1, &v70);

    sub_223CC3E8C();
    if (!v9)
    {
      break;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    v67 = a3 - 1;
    v14 = __OFSUB__(a3, 1);
    v68 = v14;
    a2 = &unk_2784F7000;
    while (1)
    {
      v18 = [(BKEventDeliveryChain *)v13 deferringPath];
      sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
      v19 = sub_223CEAD20();

      if (v19 >> 62)
      {
        a1 = sub_223CEADD0();
        if (!a1)
        {
LABEL_23:

          v25 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        a1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_23;
        }
      }

      v69[0] = MEMORY[0x277D84F90];
      v6 = v69;
      sub_223CEAE80();
      if (a1 < 0)
      {
        break;
      }

      v20 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x223DF7410](v20, v19);
        }

        else
        {
          v21 = *(v19 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        v23 = [(BKEventDeferringNode *)v21 rule];

        sub_223CEAE60();
        v24 = *(v69[0] + 16);
        sub_223CEAE90();
        sub_223CEAEA0();
        sub_223CEAE70();
      }

      while (a1 != v20);

      a2 = &unk_2784F7000;
      v25 = v69[0];
LABEL_24:
      sub_223CC72BC(v25);

      v26 = v75;
      v27 = [(BKEventDeferringNode *)v13 rule];
      if (v27)
      {
        v28 = v27;
        v6 = [v12 a2[306]];
        a3 = sub_223CEACF0();
        a1 = v29;

        if (v68)
        {
          goto LABEL_57;
        }

        sub_223CC3B00(a3, a1, v11 >= v67);

        strcpy(v69, "dispatching: ");
        HIWORD(v69[1]) = -4864;
        v30 = [(BKEventDeliveryChain *)v13 dispatchTarget];
        v31 = [v30 a2[306]];
        a3 = sub_223CEACF0();
        v33 = v32;

        MEMORY[0x223DF72C0](a3, v33);

        sub_223CC3B00(v69[0], v69[1], 1);

        v34 = [(BKEventDeferringNode *)v13 subnodes];
        if (v34)
        {
          strcpy(v69, "sender (");
          BYTE1(v69[1]) = 0;
          WORD1(v69[1]) = 0;
          HIDWORD(v69[1]) = -402653184;
          v35 = v34;
          v36 = [v34 a2[306]];
          v37 = sub_223CEACF0();
          v39 = v38;

          MEMORY[0x223DF72C0](v37, v39);

          MEMORY[0x223DF72C0](41, 0xE100000000000000);
          a3 = v69[1];
          sub_223CC3B00(v69[0], v69[1], 1);
        }

        v40 = [(BKEventDeliveryChain *)v13 deferringPath];
        v6 = sub_223CEAD20();

        if (v6 >> 62)
        {
          a1 = sub_223CEADD0();
          if (a1)
          {
LABEL_30:
            if (a1 < 1)
            {
              goto LABEL_60;
            }

            a3 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v41 = MEMORY[0x223DF7410](a3, v6);
              }

              else
              {
                v41 = *(v6 + 8 * a3 + 32);
              }

              v42 = v41;
              ++a3;
              sub_223CC6BE8(v41, v28, &v72, 1);
            }

            while (a1 != a3);
          }
        }

        else
        {
          a1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        a2 = &unk_2784F7000;
        if (v26 < v75)
        {
          if (__OFSUB__(v75, v26))
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v75, v75 - v26))
          {
            goto LABEL_63;
          }

          v75 = v26;
        }

        goto LABEL_45;
      }

      v43 = [v12 a2[306]];
      a1 = sub_223CEACF0();
      a3 = v44;

      v69[0] = a1;
      v69[1] = a3;
      v6 = v69;
      MEMORY[0x223DF72C0](0x63206F6E202D2D20, 0xEC0000006E696168);
      if (v68)
      {
        goto LABEL_61;
      }

      sub_223CC3B00(v69[0], v69[1], v11 >= v67);

      strcpy(v69, "dispatching: ");
      HIWORD(v69[1]) = -4864;
      v45 = [(BKEventDeliveryChain *)v13 dispatchTarget];
      v46 = [v45 a2[306]];
      a3 = sub_223CEACF0();
      v48 = v47;

      MEMORY[0x223DF72C0](a3, v48);

      a1 = v69[1];
      v6 = &v72;
      sub_223CC3B00(v69[0], v69[1], 1);

      v49 = [(BKEventDeferringNode *)v13 subnodes];
      if (v49)
      {
        strcpy(v69, "sender (");
        BYTE1(v69[1]) = 0;
        WORD1(v69[1]) = 0;
        HIDWORD(v69[1]) = -402653184;
        a1 = v49;
        v50 = [v49 a2[306]];
        v51 = sub_223CEACF0();
        v53 = v52;

        MEMORY[0x223DF72C0](v51, v53);

        MEMORY[0x223DF72C0](41, 0xE100000000000000);
        a3 = v69[1];
        v6 = &v72;
        sub_223CC3B00(v69[0], v69[1], 1);
      }

LABEL_45:
      if (v26 < v75)
      {
        if (__OFSUB__(v75, v26))
        {
          goto LABEL_58;
        }

        if (__OFSUB__(v75, v75 - v26))
        {
          goto LABEL_59;
        }

        v75 = v26;
      }

      sub_223CC3E8C();
      v11 = v15;
      v12 = v16;
      v13 = v17;
      if (!v16)
      {
        v7 = v77;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    if (sub_223CEADD0())
    {
      sub_223CC6FCC(MEMORY[0x277D84F90]);
      v7 = v66;
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }
  }

LABEL_50:
  sub_223CC67D0();
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (sub_223CEADD0())
    {
      goto LABEL_52;
    }

LABEL_54:

    v64 = v72;
  }

  else
  {
    if (!*(v7 + 16))
    {
      goto LABEL_54;
    }

LABEL_52:
    v55 = v72;
    v54 = v73;

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_223CEAE40();

    v70 = 0xD000000000000012;
    v71 = 0x8000000223CEDAE0;
    v56 = objc_opt_self();
    sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
    sub_223CC67D8(&qword_28133EF28, &qword_28133EF30, 0x277CF0640);
    v57 = sub_223CEAD50();

    v58 = [v56 descriptionForRootObject_];

    v59 = sub_223CEACF0();
    v61 = v60;

    MEMORY[0x223DF72C0](v59, v61);

    MEMORY[0x223DF72C0](10, 0xE100000000000000);
    v62 = v70;
    v63 = v71;
    v70 = v55;
    v71 = v54;

    MEMORY[0x223DF72C0](v62, v63);

    return v70;
  }

  return v64;
}

void sub_223CC50EC(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    sub_223CC6BE8(a1, a2, v5, a4 - 1 <= a3);
    v8 = [(BKEventDeferringNode *)a1 subnodes];
    v9 = [v8 count];
    v10 = v8;
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = [v10 objectAtIndex_];
        sub_223CEAD90();
        swift_unknownObjectRelease();
        sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        sub_223CC50EC(v15, a2, i, v9);
      }
    }

    v13 = *(v5 + 24);
    v14 = v13 - 1;
    if (v13 < 1)
    {
    }

    else
    {
      sub_223CC5260(v13);

      *(v5 + 24) = v14;
    }
  }
}

uint64_t sub_223CC5260(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_223CEAF10();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_223CC5350();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_223CC5E30(v7);
  result = v13;
  *v1 = v14;
  return result;
}

void *sub_223CC5350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  v2 = *v0;
  v3 = sub_223CEAE00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_223CC5490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  v2 = *v0;
  v3 = sub_223CEAE00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223CC55E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  result = sub_223CEAE10();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_223CEAF10();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_223CC57D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  result = sub_223CEAE10();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_223CEAD70();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_223CC59E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  result = sub_223CEAE10();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_223CEAF10();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_223CC5C08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  result = sub_223CEAE10();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_223CEAD70();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_223CC5E30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_223CEADA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_223CEAF10() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_223CC5FB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
    v2 = sub_223CEAE20();
    v16 = v2;
    sub_223CEADC0();
    if (sub_223CEADF0())
    {
      sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_223CC5C08(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_223CEAD70();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_223CEADF0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_223CC61A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_223CEAD70();
  v5 = -1 << *(a2 + 32);
  result = sub_223CEADB0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_223CC6228(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_223CEAF10();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_223CC6540(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_223CC6308(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_223CEADE0();

    if (v9)
    {

      sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_223CEADD0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_223CC5FB4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_223CC5C08(v22 + 1);
    }

    v20 = v8;
    sub_223CC61A4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
  v11 = *(v6 + 40);
  v12 = sub_223CEAD70();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_223CC6660(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_223CEAD80();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_223CC6540(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223CC59E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_223CC5350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_223CC55E0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_223CEAF10();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_223CEAF00();
  __break(1u);
  return result;
}

void sub_223CC6660(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223CC5C08(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_223CC5490();
      goto LABEL_12;
    }

    sub_223CC57D0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_223CEAD70();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_223CEAD80();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_223CEAF00();
  __break(1u);
}

uint64_t sub_223CC67D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_223CC73DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223CC6828(id *a1, void *a2)
{
  v3 = a1;
  v4 = [(BKEventDeferringEnvironmentGraph *)a1 allSelectionPathIdentifiers];
  sub_223CC73DC(0, &qword_28133EEF0, 0x277CF0648);
  v5 = sub_223CEAD20();

  if (v5 >> 62)
  {
    goto LABEL_27;
  }

  v30 = v5 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223CEADD0())
  {
    v7 = 0;
    v28 = v5;
    v29 = v5 & 0xC000000000000001;
    v26 = v3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v8 = MEMORY[0x223DF7410](v7, v5);
      }

      else
      {
        if (v7 >= *(v30 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v31 = 0;
      v32 = 0xE000000000000000;
      v11 = [(BKEventDeferringEnvironmentGraph *)v3 constraintsForNode:a2 pathIdentifier:v8];
      sub_223CC73DC(0, &qword_28133EF00, 0x277CF0620);
      sub_223CC67D8(&qword_28133EEF8, &qword_28133EF00, 0x277CF0620);
      v12 = sub_223CEAD60();

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_223CEADD0();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      if (v13)
      {
        v14 = 0xA400000000000000;
        v31 = 2459213808;
        v32 = 0xA400000000000000;
        v15 = 2459213808;
      }

      else
      {
        v15 = 0;
        v14 = 0xE000000000000000;
      }

      v16 = v3;
      v17 = a2;
      v18 = [(BKEventDeferringEnvironmentGraph *)v16 modalitiesForNode:a2 pathIdentifier:v9];
      sub_223CC73DC(0, &qword_28133EF20, 0x277CF0630);
      sub_223CC67D8(&qword_28133EF18, &qword_28133EF20, 0x277CF0630);
      v19 = sub_223CEAD60();

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_223CEADD0();
      }

      else
      {
        v20 = *(v19 + 16);
      }

      if (v20)
      {
        MEMORY[0x223DF72C0](8755426, 0xA300000000000000);
        v15 = v31;
        v14 = v32;
      }

      if ((v14 & 0xF00000000000000) != 0)
      {
        v21 = [v9 description];
        v22 = sub_223CEACF0();
        v24 = v23;

        MEMORY[0x223DF72C0](v22, v24);

        MEMORY[0x223DF72C0](32, 0xE100000000000000);
        MEMORY[0x223DF72C0](v15, v14);

        MEMORY[0x223DF72C0](41, 0xE100000000000000);

        MEMORY[0x223DF72C0](40, 0xE100000000000000);

        v7 = v10;
      }

      else
      {

        ++v7;
      }

      v5 = v28;
      a2 = v17;
      v3 = v26;
      if (v10 == v27)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v30 = v5 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_28:

  return 0;
}

void sub_223CC6BE8(void *a1, id *a2, uint64_t a3, int a4)
{
  LODWORD(v36) = a4;
  v6 = [(BKEventDeferringNode *)a1 rule];
  v7 = [v6 predicate];
  v40 = [v7 token];

  if (v40)
  {
    v8 = v40;
    v9 = [v8 description];
    v10 = sub_223CEACF0();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = [v6 identity];
  v14 = [v13 description];
  v15 = sub_223CEACF0();
  v16 = v6;
  v18 = v17;

  v19 = sub_223CC6828(a2, a1);
  v21 = v20;
  MEMORY[0x223DF72C0](15392, 0xE200000000000000);
  MEMORY[0x223DF72C0](v10, v12);

  MEMORY[0x223DF72C0](8254, 0xE200000000000000);
  MEMORY[0x223DF72C0](v19, v21);

  sub_223CC3B00(v15, v18, v37 & 1);

  v22 = [(BKEventDeferringNode *)a1 subnodes];
  v23 = [v22 count];

  if (v23)
  {
  }

  else
  {
    v38 = v16;
    v24 = [v16 target];
    v25 = [v24 pid];
    v26 = [v24 token];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      v29 = [v28 description];
      v30 = sub_223CEACF0();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    if (v25 == [(BKEventDeferringNode *)a1 pid])
    {
      v41 = 0x203A6E656B6F743CLL;
      v42 = 0xE800000000000000;
    }

    else
    {
      sub_223CEAE40();

      v41 = 0x203A6469703CLL;
      v42 = 0xE600000000000000;
      v33 = sub_223CEAEF0();
      MEMORY[0x223DF72C0](v33);

      MEMORY[0x223DF72C0](0x203A6E656B6F7420, 0xE800000000000000);
    }

    MEMORY[0x223DF72C0](v30, v32);

    MEMORY[0x223DF72C0](62, 0xE100000000000000);
    sub_223CC3B00(v41, v42, 1);

    v34 = *(a3 + 24);
    v35 = v34 - 1;
    if (v34 < 1)
    {
    }

    else
    {
      sub_223CC5260(v34);

      *(a3 + 24) = v35;
    }
  }
}

void sub_223CC6FCC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_223CEADD0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
      v3 = sub_223CEAE30();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_223CEADD0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x223DF7410](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_223CEAD70();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_223CEAD80();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_223CEAD70();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_223CEAD80();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_223CC72BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223CEADD0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DF7410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_223CC6308(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_223CC73DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_223CC8380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _BKDeferringTargetForResolutionTranscript(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = ___BKDeferringTargetForResolutionTranscript_block_invoke;
  v10 = &unk_2784F7270;
  v11 = v2;
  v12 = v1;
  v3 = v1;
  v4 = v2;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void _BKDescribeSenderSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = @"(all senders)";
LABEL_6:
    v7 = [v3 appendObject:v6 withName:0 skipIfNil:0];
    goto LABEL_7;
  }

  if (![v4 count])
  {
    v6 = @"(no senders)";
    goto LABEL_6;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BKDescribeSenderSet_block_invoke;
  v8[3] = &unk_2784F7270;
  v9 = v3;
  v10 = v5;
  [v9 sameLine:v8];

LABEL_7:
}

void sub_223CD3FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_223CD513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BKHIDCreatePrimaryEventProcessor(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v16 = 0;
  v2 = _BKHIDEventProcessorConfigurationFromRootRelativePath(@"/System/Library/BackBoard/EventProcessorConfigurationPlatformOverride.plist", &v16);
  v3 = v16;
  v4 = v3;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 domain];
    v7 = [v4 code];
    if ([v6 isEqual:*MEMORY[0x277CCA050]])
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFEFFLL) == 4;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = BKLogEventDelivery();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = @"/System/Library/BackBoard/EventProcessorConfigurationPlatformOverride.plist";
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_223CBE000, v9, OS_LOG_TYPE_ERROR, "cannot decode %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v15 = v4;
    v2 = _BKHIDEventProcessorConfigurationFromRootRelativePath(@"/System/Library/BackBoard/EventProcessorConfiguration.plist", &v15);
    v5 = v15;

    if (!v2)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessor(BKHIDEventProcessorCreationContext *__strong _Nonnull)"];
      [v13 handleFailureInFunction:v14 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:55 description:{@"error reading %@: %@", @"/System/Library/BackBoard/EventProcessorConfiguration.plist", v5}];
    }
  }

  v10 = BKHIDCreatePrimaryEventProcessorWithDictionary(v1, v2);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id _BKHIDEventProcessorConfigurationFromRootRelativePath(void *a1, void *a2)
{
  v3 = a1;
  v4 = BSSystemRootDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  v12 = 0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if (a2 && !v7)
  {
    v10 = v8;
    *a2 = v9;
  }

  return v7;
}

BKHIDPrimaryEventProcessor *BKHIDCreatePrimaryEventProcessorWithDictionary(void *a1, void *a2)
{
  v178 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v143 = a2;
  v4 = [v143 objectForKeyedSubscript:@"DefaultProcessor"];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v138 = v8;
  if (!v8)
  {
    v126 = [MEMORY[0x277CCA890] currentHandler];
    v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v126 handleFailureInFunction:v127 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:223 description:@"Must have a default processor name"];
  }

  v9 = [v143 objectForKeyedSubscript:@"CreationOrder"];
  v10 = 0x277CBE000uLL;
  v11 = objc_opt_class();
  v12 = v9;
  v139 = v3;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    v128 = [MEMORY[0x277CCA890] currentHandler];
    v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v128 handleFailureInFunction:v129 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:226 description:@"Must have a creation order"];
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v167 objects:v177 count:16];
  v140 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v168;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v168 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v167 + 1) + 8 * i);
        v21 = objc_opt_class();
        v22 = v20;
        if (v21)
        {
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (!v24)
        {
          v25 = [MEMORY[0x277CCA890] currentHandler];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          v27 = v26 = v10;
          [v25 handleFailureInFunction:v27 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:230 description:{@"Bad creation order name: %@", v22}];

          v10 = v26;
          v15 = v140;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v167 objects:v177 count:16];
    }

    while (v17);
  }

  v28 = [v143 objectForKeyedSubscript:@"ProcessorChains"];
  v29 = objc_opt_class();
  v30 = v28;
  if (v29)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (!v32)
  {
    v130 = [MEMORY[0x277CCA890] currentHandler];
    v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v130 handleFailureInFunction:v131 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:234 description:@"Must have a chain configuration"];
  }

  v33 = [MEMORY[0x277CBEB98] setWithArray:v140];
  v34 = [v33 count];
  if (v34 != [v140 count])
  {
    v132 = [MEMORY[0x277CCA890] currentHandler];
    v133 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v132 handleFailureInFunction:v133 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:237 description:@"Creation order items must be unique"];
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = v32;
  v146 = [obj countByEnumeratingWithState:&v163 objects:buf count:16];
  if (v146)
  {
    v144 = *v164;
    do
    {
      v35 = 0;
      do
      {
        if (*v164 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v154 = v35;
        v36 = *(*(&v163 + 1) + 8 * v35);
        v37 = objc_opt_class();
        v38 = v36;
        if (v37)
        {
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        v40 = v39;

        if (!v40)
        {
          v61 = [MEMORY[0x277CCA890] currentHandler];
          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          [v61 handleFailureInFunction:v62 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:241 description:{@"Bad event type: %@", v38}];
        }

        v41 = [obj objectForKeyedSubscript:v40];
        v42 = *(v10 + 2656);
        v43 = objc_opt_class();
        v44 = v41;
        if (v43)
        {
          if (objc_opt_isKindOfClass())
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }
        }

        else
        {
          v45 = 0;
        }

        v157 = v40;
        v46 = v45;

        if (!v46)
        {
          v63 = [MEMORY[0x277CCA890] currentHandler];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          [v63 handleFailureInFunction:v64 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:245 description:{@"Bad processor chain: %@", v44}];
        }

        v151 = v44;
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v47 = v46;
        v48 = [v47 countByEnumeratingWithState:&v159 objects:&v171 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v160;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v160 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v159 + 1) + 8 * j);
              v53 = objc_opt_class();
              v54 = v52;
              if (v53)
              {
                if (objc_opt_isKindOfClass())
                {
                  v55 = v54;
                }

                else
                {
                  v55 = 0;
                }
              }

              else
              {
                v55 = 0;
              }

              v56 = v55;

              if (!v56)
              {
                v57 = [MEMORY[0x277CCA890] currentHandler];
                v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
                [v57 handleFailureInFunction:v58 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:249 description:{@"Bad event processor: %@", v54}];

                v10 = 0x277CBE000;
              }

              if (([v33 containsObject:v56] & 1) == 0)
              {
                v59 = [MEMORY[0x277CCA890] currentHandler];
                v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
                [v59 handleFailureInFunction:v60 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:250 description:{@"Processor chain for %@ contains event processor %@ that does not exist in creation order", v157, v56}];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v159 objects:&v171 count:16];
          }

          while (v49);
        }

        v35 = v154 + 1;
      }

      while (v154 + 1 != v146);
      v146 = [obj countByEnumeratingWithState:&v163 objects:buf count:16];
    }

    while (v146);
  }

  v65 = [v143 objectForKeyedSubscript:@"CreationOrder"];
  v66 = *(v10 + 2656);
  v67 = objc_opt_class();
  v68 = v65;
  if (v67)
  {
    if (objc_opt_isKindOfClass())
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;

  v71 = v139;
  v72 = v70;
  v155 = [MEMORY[0x277CBEB38] dictionary];
  v145 = v71;
  v152 = [v71 eventProcessorRegistry];
  v147 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obja = v72;
  v73 = [obja countByEnumeratingWithState:&v171 objects:v177 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v172;
    do
    {
      for (k = 0; k != v74; ++k)
      {
        if (*v172 != v75)
        {
          objc_enumerationMutation(obja);
        }

        v77 = *(*(&v171 + 1) + 8 * k);
        v78 = NSClassFromString(v77);
        if (v78)
        {
          v79 = v78;
          if (([(objc_class *)v78 conformsToProtocol:&unk_283741760]& 1) == 0)
          {
            v141 = [MEMORY[0x277CCA890] currentHandler];
            v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSDictionary<NSString *, id<BKHIDEventProcessor>> *_createEventProcessorsWithCreationOrderArray(BKHIDEventProcessorCreationContext *__strong, NSArray<NSString *> *__strong)"}];
            [v141 handleFailureInFunction:v84 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:90 description:{@"Class %@ is not an event processor", v77}];
          }

          if (objc_opt_respondsToSelector())
          {
            v80 = [(objc_class *)v79 performSelector:sel_sharedInstance];
          }

          else if ([(objc_class *)v79 instancesRespondToSelector:sel_initWithContext_])
          {
            v80 = [[v79 alloc] initWithContext:v145];
          }

          else
          {
            v80 = objc_alloc_init(v79);
          }

          v81 = v80;
          v82 = BKLogEventDelivery();
          v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
          if (v81)
          {
            if (v83)
            {
              *buf = 138543362;
              v176 = v81;
              _os_log_impl(&dword_223CBE000, v82, OS_LOG_TYPE_DEFAULT, "Registered %{public}@", buf, 0xCu);
            }

            [v155 setObject:v81 forKeyedSubscript:v77];
            [v152 addEventProcessor:v81];
            if (objc_opt_respondsToSelector())
            {
              [v147 addObject:v81];
            }
          }

          else
          {
            if (v83)
            {
              *buf = 138543362;
              v176 = v77;
              _os_log_impl(&dword_223CBE000, v82, OS_LOG_TYPE_DEFAULT, "Could not create event processor of class %{public}@", buf, 0xCu);
            }

            v81 = 0;
          }
        }

        else
        {
          v81 = BKLogEventDelivery();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v176 = v77;
            _os_log_impl(&dword_223CBE000, v81, OS_LOG_TYPE_DEFAULT, "Event processor class %{public}@ does not exist", buf, 0xCu);
          }
        }
      }

      v74 = [obja countByEnumeratingWithState:&v171 objects:v177 count:16];
    }

    while (v74);
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v85 = v147;
  v86 = [v85 countByEnumeratingWithState:&v167 objects:buf count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v168;
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v168 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [*(*(&v167 + 1) + 8 * m) didInitializeRegistryWithContext:v145];
      }

      v87 = [v85 countByEnumeratingWithState:&v167 objects:buf count:16];
    }

    while (v87);
  }

  if (![v155 count])
  {
    v134 = [MEMORY[0x277CCA890] currentHandler];
    v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessorWithDictionary(BKHIDEventProcessorCreationContext *__strong _Nonnull, NSDictionary *__strong _Nonnull)"}];
    [v134 handleFailureInFunction:v135 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:65 description:@"Failed to create event processors from creation order data"];
  }

  v90 = [v143 objectForKeyedSubscript:@"DefaultProcessor"];
  v91 = objc_opt_class();
  v92 = v90;
  if (v91)
  {
    if (objc_opt_isKindOfClass())
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
  }

  v94 = v93;

  v95 = [v155 objectForKeyedSubscript:v94];
  if (!v95)
  {
    v136 = [MEMORY[0x277CCA890] currentHandler];
    v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessorWithDictionary(BKHIDEventProcessorCreationContext *__strong _Nonnull, NSDictionary *__strong _Nonnull)"}];
    [v136 handleFailureInFunction:v137 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:69 description:@"Failed to create a default event processor"];
  }

  v96 = [v143 objectForKeyedSubscript:@"ProcessorChains"];
  v97 = objc_opt_class();
  v98 = v96;
  v148 = v94;
  if (v97)
  {
    if (objc_opt_isKindOfClass())
    {
      v99 = v98;
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    v99 = 0;
  }

  v100 = v99;

  v101 = v155;
  v102 = v100;
  v142 = v95;
  memset(v177, 0, sizeof(v177));
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v158 = v102;
  v156 = [v102 countByEnumeratingWithState:&v167 objects:buf count:16];
  if (v156)
  {
    v153 = *v168;
    do
    {
      for (n = 0; n != v156; ++n)
      {
        if (*v168 != v153)
        {
          objc_enumerationMutation(v158);
        }

        v104 = *(*(&v167 + 1) + 8 * n);
        v105 = [MEMORY[0x277CBEB18] array];
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v106 = [v158 objectForKeyedSubscript:v104];
        v107 = [v106 countByEnumeratingWithState:&v163 objects:&v171 count:16];
        if (v107)
        {
          v108 = v107;
          v109 = *v164;
          do
          {
            for (ii = 0; ii != v108; ++ii)
            {
              if (*v164 != v109)
              {
                objc_enumerationMutation(v106);
              }

              v111 = [v101 objectForKeyedSubscript:*(*(&v163 + 1) + 8 * ii)];
              if (v111)
              {
                [v105 addObject:v111];
              }
            }

            v108 = [v106 countByEnumeratingWithState:&v163 objects:&v171 count:16];
          }

          while (v108);
        }

        if ([v105 count])
        {
          v112 = v104;
          if (_eventTypeFromName_onceToken != -1)
          {
            dispatch_once(&_eventTypeFromName_onceToken, &__block_literal_global_725);
          }

          v113 = [_eventTypeFromName_nameToEventTypeMap objectForKeyedSubscript:v112];
          if (v113)
          {
            v114 = v113;
LABEL_150:
            v119 = [v114 intValue];

            objc_storeStrong(v177 + v119, v105);
            goto LABEL_151;
          }

          if ([v112 hasPrefix:@"kIOHIDEventType"])
          {
            v115 = [v112 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"kIOHIDEventType", "length"), &stru_283738628}];

            v116 = [_eventTypeFromName_nameToEventTypeMap objectForKeyedSubscript:v115];
            if (v116)
            {
              v114 = v116;
              v112 = v115;
              goto LABEL_150;
            }

            v112 = v115;
          }

          v117 = [MEMORY[0x277CCA890] currentHandler];
          v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOHIDEventType _eventTypeFromName(NSString *__strong)"];
          [v117 handleFailureInFunction:v118 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:216 description:{@"Unknown event type %@", v112}];

          v114 = 0;
          goto LABEL_150;
        }

LABEL_151:
      }

      v156 = [v158 countByEnumeratingWithState:&v167 objects:buf count:16];
    }

    while (v156);
  }

  v120 = [[BKHIDPrimaryEventProcessor alloc] initWithSubProcessors:v177 defaultProcessor:v142];
  for (jj = 344; jj != -8; jj -= 8)
  {
  }

  v122 = [v145 eventProcessorRegistry];
  [v122 addEventProcessor:v120];
  v123 = v120;

  v124 = *MEMORY[0x277D85DE8];
  return v120;
}

void ___eventTypeFromName_block_invoke()
{
  v0 = _eventTypeFromName_nameToEventTypeMap;
  _eventTypeFromName_nameToEventTypeMap = &unk_28373ED88;
}

uint64_t BKHIDEventRoutingInit(uint64_t a1)
{
  __HIDClientConnectionManager = [[BKHIDClientConnectionManager alloc] initWithHIDEventSystem:a1];

  return MEMORY[0x2821F96F8]();
}

void BKSendGSEvent(int *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!__BKEventTapCallback || __BKEventTapCallback(a1))
  {
    v5 = a3 ? GSSendSystemAppEvent() : GSSendEvent();
    v6 = v5;
    if (v5)
    {
      v7 = BKLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a1;
        v10 = 136315906;
        v11 = "BKSendGSEvent";
        v12 = 1024;
        v13 = v8;
        v14 = 2082;
        v15 = mach_error_string(v6);
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "%s ERROR sending event type %d: %{public}s (0x%X)", &v10, 0x22u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _BKHIDServiceWillTerminate(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = a3;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "Got a service willTerminate callback: %{public}@", &v8, 0xCu);
  }

  v6 = a1;
  [v6 _serviceWasRemoved];

  v7 = *MEMORY[0x277D85DE8];
}

void sub_223CD9CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223CDAA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223CDAD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _BKHIDSetUserEventNotifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _BKHIDSetUserEventNotifier(__strong id<BKHIDUserEventNotifying> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"BKHIDUserEventNotifying.m" lineNumber:14 description:@"userEventNotifier must not be nil"];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BKHIDSetUserEventNotifier_block_invoke;
  block[3] = &unk_2784F6B98;
  v7 = v1;
  v2 = _BKHIDSetUserEventNotifier_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_BKHIDSetUserEventNotifier_onceToken, block);
  }
}

__CFString *NSStringFromBKHIDEventSequencePosition(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<whuh?>";
  }

  else
  {
    return off_2784F6C50[a1];
  }
}

id BKLogBootUI()
{
  if (BKLogBootUI_onceToken != -1)
  {
    dispatch_once(&BKLogBootUI_onceToken, &__block_literal_global_2088);
  }

  v1 = BKLogBootUI___logObj;

  return v1;
}

uint64_t __BKLogBootUI_block_invoke()
{
  BKLogBootUI___logObj = os_log_create(*MEMORY[0x277CF0540], "BootUI");

  return MEMORY[0x2821F96F8]();
}

id BKLogButton()
{
  if (BKLogButton_onceToken != -1)
  {
    dispatch_once(&BKLogButton_onceToken, &__block_literal_global_3);
  }

  v1 = BKLogButton___logObj;

  return v1;
}

uint64_t __BKLogButton_block_invoke()
{
  BKLogButton___logObj = os_log_create(*MEMORY[0x277CF0540], "Button");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayAnnotations()
{
  if (BKLogDisplayAnnotations_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayAnnotations_onceToken, &__block_literal_global_6);
  }

  v1 = BKLogDisplayAnnotations___logObj;

  return v1;
}

uint64_t __BKLogDisplayAnnotations_block_invoke()
{
  BKLogDisplayAnnotations___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayAnnotations");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayMonitor()
{
  if (BKLogDisplayMonitor_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayMonitor_onceToken, &__block_literal_global_9);
  }

  v1 = BKLogDisplayMonitor___logObj;

  return v1;
}

uint64_t __BKLogDisplayMonitor_block_invoke()
{
  BKLogDisplayMonitor___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayMonitor");

  return MEMORY[0x2821F96F8]();
}

id BKLogGenericGesture()
{
  if (BKLogGenericGesture_onceToken != -1)
  {
    dispatch_once(&BKLogGenericGesture_onceToken, &__block_literal_global_12);
  }

  v1 = BKLogGenericGesture___logObj;

  return v1;
}

uint64_t __BKLogGenericGesture_block_invoke()
{
  BKLogGenericGesture___logObj = os_log_create(*MEMORY[0x277CF0540], "GenericGesture");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogHID_block_invoke()
{
  BKLogHID___logObj = os_log_create(*MEMORY[0x277CF0540], "HID");

  return MEMORY[0x2821F96F8]();
}

id BKLogIdleTimer()
{
  if (BKLogIdleTimer_onceToken != -1)
  {
    dispatch_once(&BKLogIdleTimer_onceToken, &__block_literal_global_18);
  }

  v1 = BKLogIdleTimer___logObj;

  return v1;
}

uint64_t __BKLogIdleTimer_block_invoke()
{
  BKLogIdleTimer___logObj = os_log_create(*MEMORY[0x277CF0540], "IdleTimer");

  return MEMORY[0x2821F96F8]();
}

id BKLogRenderOverlay()
{
  if (BKLogRenderOverlay_onceToken != -1)
  {
    dispatch_once(&BKLogRenderOverlay_onceToken, &__block_literal_global_21);
  }

  v1 = BKLogRenderOverlay___logObj;

  return v1;
}

uint64_t __BKLogRenderOverlay_block_invoke()
{
  BKLogRenderOverlay___logObj = os_log_create(*MEMORY[0x277CF0540], "RenderOverlay");

  return MEMORY[0x2821F96F8]();
}

id BKLogHapticFeedback()
{
  if (BKLogHapticFeedback_onceToken != -1)
  {
    dispatch_once(&BKLogHapticFeedback_onceToken, &__block_literal_global_24);
  }

  v1 = BKLogHapticFeedback___logObj;

  return v1;
}

uint64_t __BKLogHapticFeedback_block_invoke()
{
  BKLogHapticFeedback___logObj = os_log_create(*MEMORY[0x277CF0540], "HapticFeedback");

  return MEMORY[0x2821F96F8]();
}

id BKLogAccelerometer()
{
  if (BKLogAccelerometer_onceToken != -1)
  {
    dispatch_once(&BKLogAccelerometer_onceToken, &__block_literal_global_27);
  }

  v1 = BKLogAccelerometer___logObj;

  return v1;
}

uint64_t __BKLogAccelerometer_block_invoke()
{
  BKLogAccelerometer___logObj = os_log_create(*MEMORY[0x277CF0540], "Accelerometer");

  return MEMORY[0x2821F96F8]();
}

id BKLogKeyPresses()
{
  if (BKLogKeyPresses_onceToken != -1)
  {
    dispatch_once(&BKLogKeyPresses_onceToken, &__block_literal_global_30);
  }

  v1 = BKLogKeyPresses___logObj;

  return v1;
}

uint64_t __BKLogKeyPresses_block_invoke()
{
  BKLogKeyPresses___logObj = os_log_create(*MEMORY[0x277CF0540], "KeyPresses");

  return MEMORY[0x2821F96F8]();
}

id BKLogMotionEvents()
{
  if (BKLogMotionEvents_onceToken != -1)
  {
    dispatch_once(&BKLogMotionEvents_onceToken, &__block_literal_global_33);
  }

  v1 = BKLogMotionEvents___logObj;

  return v1;
}

uint64_t __BKLogMotionEvents_block_invoke()
{
  BKLogMotionEvents___logObj = os_log_create(*MEMORY[0x277CF0540], "MotionEvents");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogSendHIDEvent_block_invoke()
{
  BKLogSendHIDEvent___logObj = os_log_create(*MEMORY[0x277CF0540], "SendHIDEvent");

  return MEMORY[0x2821F96F8]();
}

void sub_223CE50BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223CE6650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}