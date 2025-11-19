void sub_23938FDD8(_Unwind_Exception *a1)
{
  v4 = v3;
  os_unfair_lock_unlock(&v2[v4]);

  _Unwind_Resume(a1);
}

void sub_23938FE08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and subscription is allowed", *(a1 + 32)];
    [(os_unfair_lock_s *)v3 _setupSubscriptionWithReason:v4];

    os_unfair_lock_unlock(v3 + 2);
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_ensureSubscriptionForExistingDelegates asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239390104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23939012C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_2393D9044(0);
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate disconnecting ReadClient and SubscriptionCallback", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _resetSubscription];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "invalidate asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23939027C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock(&v1[v3]);

  _Unwind_Resume(a1);
}

void sub_239390690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  os_unfair_lock_unlock((v18 + v19));

  _Unwind_Resume(a1);
}

void sub_239390700(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a2 + 4280);
    if (!v5 || (v6 = *(v5 + 96)) == 0)
    {
      v11 = sub_2393D9044(0x1Bu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm";
        v13 = 1024;
        v14 = 1271;
        v15 = 2080;
        v16 = "caseSessionMgr != nullptr";
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x1Bu, 1);
      }

      abort();
    }

    v7 = [WeakRetained[3] unsignedLongLongValue];
    v8 = *(a2 + 36);
    *buf = v7;
    buf[8] = v8;
    sub_2394C50E8(v6, buf);
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_triggerResubscribeWithReason asyncGetCommissionerOnMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_239390B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v17 + v18));
  _Unwind_Resume(a1);
}

void sub_239390B90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _triggerResubscribeWithReason:@"read-through skipped while not subscribed" nodeLikelyReachable:0];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_readThroughSkipped asyncDispatchToMatterQueue called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239390CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceCachePrimed:*(a1 + 32)];
  }
}

void sub_2393911F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 _deviceInternalStateChanged:*(a1 + 32)];
  }
}

void sub_239391574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

void sub_239391B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_239391B7C(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [MTRAsyncWorkItem alloc];
    v4 = [WeakRetained queue];
    v5 = [(MTRAsyncWorkItem *)v3 initWithQueue:v4];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_239391E20;
    v11[3] = &unk_278A75738;
    objc_copyWeak(&v14, a1 + 6);
    v12 = a1[4];
    v13 = a1[5];
    [(MTRAsyncWorkItem *)v5 setReadyHandler:v11];
    v6 = [WeakRetained _concreteController];
    v7 = [v6 concurrentSubscriptionPool];
    [v7 enqueueWorkItem:v5 description:a1[4]];

    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ - enqueued in the subscription pool", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_scheduleSubscriptionPoolWork workBlockToQueue called with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_239391E20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = sub_2393D9044(0);
  v8 = v7;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ - work item is ready to attempt pooled subscription", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    if (!*&WeakRetained[46]._os_unfair_lock_opaque)
    {
      v10 = MEMORY[0x23EE78590](v5);
      v11 = *&WeakRetained[46]._os_unfair_lock_opaque;
      *&WeakRetained[46]._os_unfair_lock_opaque = v10;

      os_unfair_lock_unlock(WeakRetained + 2);
      (*(*(a1 + 40) + 16))(*(a1 + 40));
      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ timer fired but already running in subscription pool - ignoring: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v13 = *(a1 + 32);
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "_scheduleSubscriptionPoolWork readyHandler called with nil MTRDevice, nothing to do", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v5[2](v5, 0);
LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2393921B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v16 + v18));

  _Unwind_Resume(a1);
}

void sub_2393921E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResubscriptionNeededWithDelayOnDeviceQueue:*(a1 + 32)];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_handleResubscriptionNeededWithDelay async to self.queue with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239392480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v22 = v19;

  os_unfair_lock_unlock((v17 + v20));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2393924D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_239392674;
    v8[3] = &unk_278A72CD0;
    objc_copyWeak(&v9, (a1 + 32));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_239392730;
    v6[3] = &unk_278A756C0;
    objc_copyWeak(&v7, (a1 + 32));
    [v4 asyncDispatchToMatterQueue:v8 errorHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_handleResubscriptionNeededWithDelayOnDeviceQueue resubscriptionBlock called with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239392674(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _triggerResubscribeWithReason:@"ResubscriptionNeeded timer fired" nodeLikelyReachable:0];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_handleResubscriptionNeededWithDelayOnDeviceQueue resubscriptionBlock asyncDispatchToMatterQueue called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239392730(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ could not dispatch to matter queue for resubscription - error %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _clearSubscriptionPoolWork];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "_handleResubscriptionNeededWithDelayOnDeviceQueue resubscriptionBlock asyncDispatchToMatterQueue errored with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2393928A4(_Unwind_Exception *a1)
{
  v4 = v3;
  os_unfair_lock_unlock(&v2[v4]);

  _Unwind_Resume(a1);
}

void sub_239392950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

void sub_239392E60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_239393004;
    v8[3] = &unk_278A72CD0;
    objc_copyWeak(&v9, (a1 + 32));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2393930EC;
    v6[3] = &unk_278A756C0;
    objc_copyWeak(&v7, (a1 + 32));
    [v4 asyncDispatchToMatterQueue:v8 errorHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_doHandleSubscriptionReset resubscriptionBlock called with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239393004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v2 _reattemptSubscriptionNowIfNeededWithReason:@"got subscription reset"];
    os_unfair_lock_unlock(v2 + 2);
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_doHandleSubscriptionReset resubscriptionBlock asyncDispatchToMatterQueue called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_2393930EC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ could not dispatch to matter queue for resubscription - error %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _clearSubscriptionPoolWork];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "_doHandleSubscriptionReset resubscriptionBlock asyncDispatchToMatterQueue errored with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_239393260(_Unwind_Exception *a1)
{
  v4 = v3;
  os_unfair_lock_unlock(&v2[v4]);

  _Unwind_Resume(a1);
}

void sub_239393664(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceBecameActive:*(a1 + 32)];
  }
}

void sub_23939378C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2393937A8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    if (*&v2[98]._os_unfair_lock_opaque <= 1uLL)
    {
      v3 = sub_2393D9044(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v2;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ still not subscribed, marking the device as unreachable", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        v6 = v2;
        sub_2393D5320(0, 2);
      }

      [(os_unfair_lock_s *)v2 _changeState:2, v6];
    }

    os_unfair_lock_unlock(v2 + 2);
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_markDeviceAsUnreachableIfNeverSubscribed asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_239393A00(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_239394A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _persistClusterDataAsNeeded];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_scheduleClusterDataPersistence delayed store block called with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239395008(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceConfigurationChanged:*(a1 + 32)];
  }
}

void sub_2393959F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = sub_23952E1E8(v3, v6);
  v8 = [v4 _filteredAttributes:v5 forInterestedPaths:v7];

  if ([v8 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_239395B18;
    v9[3] = &unk_278A744A0;
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v3 callDelegateWithBlock:v9];
  }
}

void sub_239395C98(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_239395E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v18 - 64));

  _Unwind_Resume(a1);
}

void sub_239395E98(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_2393D9044(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412802;
      v16 = WeakRetained;
      v17 = 2048;
      v18 = v5;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ injected attribute report (%p) %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v9 = *(a1 + 32);
      v10 = v9;
      v8 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    [WeakRetained _handleReportBegin];
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393960A8;
    block[3] = &unk_278A757B0;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v14 = *(a1 + 48);
    dispatch_async(v6, block);

    objc_destroyWeak(&v13);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_injectAttributeReport asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2393960A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAttributeReport:*(a1 + 32) fromSubscription:*(a1 + 48)];
    [v3 _handleReportEnd];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_injectAttributeReport async to self.queue with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939635C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_239396374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleEventReport:*(a1 + 32)];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_injectPossiblyInvalidEventReport async to self.queue with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_239397270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);

  os_unfair_lock_unlock((v43 + a12));
  _Unwind_Resume(a1);
}

void sub_239397380(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = sub_23952E1FC(v3, v6);
  v8 = [v4 _filteredEvents:v5 forInterestedPaths:v7];

  if ([v8 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2393974B0;
    v9[3] = &unk_278A744A0;
    v9[4] = a1[4];
    v10 = v8;
    [v3 callDelegateWithBlock:v9];
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_239397B6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239397DA0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_239397EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_2393983AC(void *a1)
{
  v1 = a1;
  v2 = [v1 cluster];
  v3 = [v2 unsignedLongValue];

  v4 = 0;
  if (v3 > 53)
  {
    if (v3 <= 55)
    {
      v5 = [v1 attribute];
      if (v3 == 54)
      {
        v15 = [v5 unsignedLongValue];

        v7 = (v15 - 4) >= 9;
      }

      else
      {
        v6 = [v5 unsignedLongValue];

        v7 = (v6 - 2) >= 7;
      }

      v4 = !v7;
      goto LABEL_28;
    }

    if (v3 == 56)
    {
      v16 = [v1 attribute];
      v17 = [v16 unsignedLongValue];

      if (v17)
      {
        v12 = v17 == 7;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (v3 != 62)
      {
        goto LABEL_28;
      }

      v10 = [v1 attribute];
      v11 = [v10 unsignedLongValue];

      v12 = (v11 & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }

LABEL_25:
    v4 = v12;
    goto LABEL_28;
  }

  switch(v3)
  {
    case '/':
      v13 = [v1 attribute];
      v14 = [v13 unsignedLongValue];

      if (v14 >= 0x1E)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x28003858u >> v14;
      }

      break;
    case '3':
      v18 = [v1 attribute];
      v19 = [v18 unsignedLongValue];

      v12 = (v19 & 0xFFFFFFFFFFFFFFFELL) == 2;
      goto LABEL_25;
    case '5':
      v8 = [v1 attribute];
      v9 = [v8 unsignedLongValue];

      if (v9 >= 0x38)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0xFFFFFFFFFFC040uLL >> v9;
      }

      break;
  }

LABEL_28:

  return v4 & 1;
}

void sub_239398AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_239398B24(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_2393D9044(0);
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ subscription reset disconnecting ReadClient and SubscriptionCallback", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _resetSubscription];
    [(os_unfair_lock_s *)WeakRetained _doHandleSubscriptionReset:0];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_resetSubscriptionWithReasonString asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_239398C80(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock(&v1[v3]);

  _Unwind_Resume(a1);
}

void sub_239399220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[49];
    if (v3 != 2 && v3 != 4)
    {
      [WeakRetained _markDeviceAsUnreachableIfNeverSubscribed];
    }
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason markUnreachableAfterWait called back with nil MTRDevice", v6, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_2393992E8(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDoingCASEAttemptForDeviceMayBeReachable:0];
    if (!v15)
    {
      [v9 _handleCASESessionEstablished:sub_238DE36B8(a3)];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_23939A1A8;
      v34[3] = &unk_278A75828;
      objc_copyWeak(&v35, (a1 + 40));
      MEMORY[0x23EE78590](v34);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = sub_23939A4D4;
      v32[3] = &unk_278A75828;
      objc_copyWeak(&v33, (a1 + 40));
      MEMORY[0x23EE78590](v32);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_23939A7EC;
      v30[3] = &unk_278A756C0;
      objc_copyWeak(&v31, (a1 + 40));
      MEMORY[0x23EE78590](v30);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_23939A964;
      v28[3] = &unk_278A75850;
      objc_copyWeak(&v29, (a1 + 40));
      MEMORY[0x23EE78590](v28);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_23939AAFC;
      v26[3] = &unk_278A72CD0;
      objc_copyWeak(&v27, (a1 + 40));
      MEMORY[0x23EE78590](v26);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_23939AE38;
      v24[3] = &unk_278A75698;
      objc_copyWeak(&v25, (a1 + 40));
      v24[4] = *(a1 + 32);
      MEMORY[0x23EE78590](v24);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_23939AFD0;
      v22[3] = &unk_278A72CD0;
      objc_copyWeak(&v23, (a1 + 40));
      MEMORY[0x23EE78590](v22);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_23939B11C;
      v20[3] = &unk_278A72CD0;
      objc_copyWeak(&v21, (a1 + 40));
      MEMORY[0x23EE78590](v20);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23939B2D8;
      v18[3] = &unk_278A72CD0;
      objc_copyWeak(&v19, (a1 + 40));
      MEMORY[0x23EE78590](v18);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_23939B550;
      v16[3] = &unk_278A75878;
      objc_copyWeak(&v17, (a1 + 40));
      MEMORY[0x23EE78590](v16);
      operator new();
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v9;
      v42 = 2112;
      v43 = v15;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ getSessionForNode error %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v11 = v9[4];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_23939A0E4;
    v36[3] = &unk_278A75800;
    objc_copyWeak(&v39, (a1 + 40));
    v37 = v15;
    v38 = v14;
    [v11 asyncDispatchToMatterQueue:v36 errorHandler:0];

    objc_destroyWeak(&v39);
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason directlyGetSessionForNode called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_239399DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  sub_239495880(v75 - 240);
  (*(*v74 + 8))(v74);
  (*(*v73 + 8))(v73);
  sub_23939B6AC(&STACK[0x200]);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);

  objc_destroyWeak(&a47);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a72);

  _Unwind_Resume(a1);
}

void sub_23939A0E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleSubscriptionError:*(a1 + 32)];
    [v3 _handleSubscriptionReset:*(a1 + 40)];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason asyncDispatchToMatterQueue called back with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939A1A8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v6 = [MEMORY[0x277CBEAA8] now];
    [(os_unfair_lock_s *)v5 setLastSubscriptionActiveTime:v6];

    os_unfair_lock_unlock(v5 + 2);
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v5;
      v19 = 2048;
      v20 = v3;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ got attribute report (%p) %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v12 = v3;
      v13 = v3;
      v11 = v5;
      sub_2393D5320(0, 2);
    }

    v8 = [(os_unfair_lock_s *)v5 queue:v11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23939A418;
    block[3] = &unk_278A75698;
    objc_copyWeak(&v16, (a1 + 32));
    v15 = v3;
    dispatch_async(v8, block);

    objc_destroyWeak(&v16);
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription attribute report called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23939A3E0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v2[v4]);

  _Unwind_Resume(a1);
}

void sub_23939A418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAttributeReport:*(a1 + 32) fromSubscription:1];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription attribute report async to device queue called back with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939A4D4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v6 = [MEMORY[0x277CBEAA8] now];
    [(os_unfair_lock_s *)v5 setLastSubscriptionActiveTime:v6];

    os_unfair_lock_unlock(v5 + 2);
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ got event report %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v11 = v5;
      v12 = v3;
      sub_2393D5320(0, 2);
    }

    v8 = [(os_unfair_lock_s *)v5 queue:v11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23939A734;
    block[3] = &unk_278A75698;
    objc_copyWeak(&v15, (a1 + 32));
    v14 = v3;
    dispatch_async(v8, block);

    objc_destroyWeak(&v15);
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription event report called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23939A6FC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v2[v4]);

  _Unwind_Resume(a1);
}

void sub_23939A734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleEventReport:*(a1 + 32)];
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription event report async to device queue called back with nil MTRDevice", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939A7EC(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ got subscription error %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v8 = WeakRetained;
      v9 = v3;
      sub_2393D5320(0, 1);
    }

    [WeakRetained _handleSubscriptionError:{v3, v8, v9}];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription error called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23939A964(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = sub_2393D9044(0);
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ got resubscription error %@ delay %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v12 = v5;
      v13 = v6;
      v11 = WeakRetained;
      sub_2393D5320(0, 1);
    }

    [WeakRetained _handleResubscriptionNeededWithDelay:{v6, v11, v12, v13}];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription resubscription needed called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23939AAFC(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_2393D9044(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v13 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ got subscription established", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v9 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    v5 = [MEMORY[0x277CBEAA8] now];
    [(os_unfair_lock_s *)WeakRetained setLastSubscriptionActiveTime:v5];

    if (*&WeakRetained[98]._os_unfair_lock_opaque <= 1uLL)
    {
      *buf = 1;
      *&v13[4] = "dwnpm_dev_initial_subscription_setup";
      v14 = 0;
      v15 = 3;
      sub_23948BD20(buf);
      v6 = 2;
    }

    else
    {
      v6 = 4;
    }

    [(os_unfair_lock_s *)WeakRetained _changeInternalState:v6, v9];
    [(os_unfair_lock_s *)WeakRetained _changeState:1];
    v7 = [(os_unfair_lock_s *)WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23939AD88;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v11, (a1 + 32));
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription established called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23939AD50(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v1[v2]);

  _Unwind_Resume(a1);
}

void sub_23939AD88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleSubscriptionEstablished];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription established async to device queue called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939AE38(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_2393D9044(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ got subscription done", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v6 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    [*(a1 + 32) setReadClient:0 subscriptionCallback:{0, v6}];
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _doHandleSubscriptionReset:0];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription done called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23939AFA8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v1[v2]);

  _Unwind_Resume(a1);
}

void sub_23939AFD0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_2393D9044(0);
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ got unsolicited message from publisher", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v5 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    [WeakRetained _handleUnsolicitedMessageFromPublisher];
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription unsolicited message called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23939B11C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = [MEMORY[0x277CBEAA8] now];
    [(os_unfair_lock_s *)v2 setLastSubscriptionActiveTime:v3];

    os_unfair_lock_unlock(v2 + 2);
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ got report begin", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v7 = v2;
      sub_2393D5320(0, 2);
    }

    [(os_unfair_lock_s *)v2 _handleReportBegin];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription report begin called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23939B2A0(_Unwind_Exception *a1)
{
  v4 = v2;

  os_unfair_lock_unlock(&v1[v3]);
  _Unwind_Resume(a1);
}

void sub_23939B2D8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_2393D9044(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ got report end", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v7 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23939B4A0;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_async(v5, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription report end called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23939B4A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleReportEnd];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "_setupSubscriptionWithReason subscription report end async to device queue called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23939B550(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = sub_2393D9044(0);
  v5 = v4;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ got CASE session established", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v7 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    [WeakRetained _handleCASESessionEstablished:{a2, v7}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "CASE session established callback called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_23939B6AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_238EF7260(v2);
    MEMORY[0x23EE77B60](v3, 0x10A1C40084F9850);
  }

  return a1;
}

uint64_t sub_23939BDDC(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  for (i = 0; ; i = 1)
  {
    if (![v8 count])
    {
      i = 2;
      goto LABEL_19;
    }

    if ([v7 count] >= 9)
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 64);
        v29 = [*(a1 + 32) unsignedLongLongValue];
        v30 = *(a1 + 40);
        v31 = [*(a1 + 48) unsignedLongLongValue];
        v32 = [*(a1 + 56) unsignedLongLongValue];
        *buf = 134219010;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v54 = 2112;
        v55 = v30;
        v56 = 2048;
        v57 = v31;
        v58 = 2048;
        v59 = v32;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "Batching read attribute work item [%llu]: cannot add more work, item is full [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x34u);
      }

      if (sub_2393D5398(2u))
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v10 objectAtIndexedSubscript:1];
    v12 = [v7 objectAtIndexedSubscript:0];
    v13 = [v12 objectAtIndexedSubscript:1];
    v14 = [v11 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    [v7 addObject:v15];
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 64);
      v18 = [v7 count];
      v19 = [*(a1 + 32) unsignedLongLongValue];
      v20 = *(a1 + 40);
      v21 = [*(a1 + 48) unsignedLongLongValue];
      v22 = [*(a1 + 56) unsignedLongLongValue];
      *buf = 134219522;
      v51 = v17;
      v52 = 2112;
      v53 = v15;
      v54 = 2048;
      v55 = v18;
      v56 = 2048;
      v57 = v19;
      v58 = 2112;
      v59 = v20;
      v60 = 2048;
      v61 = v21;
      v62 = 2048;
      v63 = v22;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Batching read attribute work item [%llu]: added %@ (now %lu requests total) [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x48u);
    }

    if (sub_2393D5398(2u))
    {
      v23 = *(a1 + 64);
      v24 = [v7 count];
      v25 = [*(a1 + 32) unsignedLongLongValue];
      v26 = *(a1 + 40);
      v48 = [*(a1 + 48) unsignedLongLongValue];
      v49 = [*(a1 + 56) unsignedLongLongValue];
      v46 = v25;
      v47 = v26;
      v44 = v15;
      v45 = v24;
      v43 = v23;
      sub_2393D5320(0, 2);
    }
  }

  v33 = sub_2393D9044(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a1 + 64);
    v35 = [*(a1 + 32) unsignedLongLongValue];
    v36 = *(a1 + 40);
    v37 = [*(a1 + 48) unsignedLongLongValue];
    v38 = [*(a1 + 56) unsignedLongLongValue];
    *buf = 134219010;
    v51 = v34;
    v52 = 2048;
    v53 = v35;
    v54 = 2112;
    v55 = v36;
    v56 = 2048;
    v57 = v37;
    v58 = 2048;
    v59 = v38;
    _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_DEFAULT, "Batching read attribute work item [%llu]: cannot add more work, parameter mismatch [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x34u);
  }

  if (sub_2393D5398(2u))
  {
LABEL_18:
    v39 = *(a1 + 64);
    [*(a1 + 32) unsignedLongLongValue];
    v40 = *(a1 + 40);
    [*(a1 + 48) unsignedLongLongValue];
    [*(a1 + 56) unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

LABEL_19:

  v41 = *MEMORY[0x277D85DE8];
  return i;
}

void sub_23939C29C(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v9)
  {
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isEqual:v7])
        {
          v13 = sub_2393D9044(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v22 = a3;
            v14 = *(a1 + 72);
            v15 = [*(a1 + 40) unsignedLongLongValue];
            v16 = *(a1 + 48);
            v17 = [*(a1 + 56) unsignedLongLongValue];
            v18 = [*(a1 + 64) unsignedLongLongValue];
            *buf = 134219266;
            v28 = v14;
            v29 = 2112;
            v30 = v12;
            v31 = 2048;
            v32 = v15;
            v33 = 2112;
            v34 = v16;
            v35 = 2048;
            v36 = v17;
            v37 = 2048;
            v38 = v18;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Read attribute work item [%llu] report duplicate %@ [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x3Eu);
            a3 = v22;
          }

          if (sub_2393D5398(2u))
          {
            v19 = *(a1 + 72);
            [*(a1 + 40) unsignedLongLongValue];
            v20 = *(a1 + 48);
            [*(a1 + 56) unsignedLongLongValue];
            [*(a1 + 64) unsignedLongLongValue];
            sub_2393D5320(0, 2);
          }

          *a3 = 1;
          *a4 = 1;

          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  *a4 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

void sub_23939C4F4(id *a1, void *a2, void *a3, void *a4)
{
  location[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if ([a1[4] count])
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v33 = a3;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = a1[4];
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v11)
    {
      v12 = *v42;
      do
      {
        v13 = 0;
        do
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v41 + 1) + 8 * v13) objectAtIndexedSubscript:0];
          [v9 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    v15 = [a1[4] objectAtIndexedSubscript:0];
    v16 = [v15 objectAtIndexedSubscript:1];

    v17 = [MEMORY[0x277CBEB68] null];
    if ([v16 isEqual:v17])
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v35 = v18;

    v34 = [v7 newBaseDevice];
    objc_initWeak(location, v7);
    v19 = [v7 queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_23939C97C;
    v36[3] = &unk_278A75918;
    objc_copyWeak(v40, location);
    v20 = v16;
    v21 = v7;
    v40[1] = a1[9];
    v22 = v8;
    v23 = a1[5];
    v24 = a1[6];
    v25 = a1[7];
    v26 = a1[8];
    *&v27 = v25;
    *(&v27 + 1) = v26;
    *&v28 = v23;
    v8 = v22;
    *(&v28 + 1) = v24;
    v37 = v28;
    v38 = v27;
    v40[2] = v33;
    v39 = v22;
    [v34 readAttributePaths:v9 eventPaths:0 params:v35 includeDataVersion:1 queue:v19 completion:v36];

    v7 = v21;
    objc_destroyWeak(v40);
    objc_destroyWeak(location);
  }

  else
  {
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = a1[9];
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v30;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Read attribute work item [%llu] contained no read requests", location, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v32 = a1[9];
      sub_2393D5320(0, 1);
    }

    (*(v8 + 2))(v8, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_23939C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  objc_destroyWeak((v21 + 72));

  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_23939C97C(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v5)
    {
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 80);
        v14 = [*(a1 + 32) unsignedLongLongValue];
        v15 = *(a1 + 40);
        v16 = [*(a1 + 48) unsignedLongLongValue];
        v17 = [*(a1 + 56) unsignedLongLongValue];
        *buf = 134219522;
        v49 = v13;
        v50 = 2048;
        v51 = v5;
        v52 = 2112;
        v53 = v5;
        v54 = 2048;
        v55 = v14;
        v56 = 2112;
        v57 = v15;
        v58 = 2048;
        v59 = v16;
        v60 = 2048;
        v61 = v17;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Read attribute work item [%llu] result: (%p) %@  [0x%016llX:%@:0x%llX:0x%llX]", buf, 0x48u);
      }

      if (sub_2393D5398(2u))
      {
        v18 = *(a1 + 80);
        v19 = [*(a1 + 32) unsignedLongLongValue];
        v20 = *(a1 + 40);
        v46 = [*(a1 + 48) unsignedLongLongValue];
        v47 = [*(a1 + 56) unsignedLongLongValue];
        v44 = v19;
        v45 = v20;
        v42 = v5;
        v43 = v5;
        v41 = v18;
        sub_2393D5320(0, 2);
      }

      [WeakRetained _handleAttributeReport:v5 fromSubscription:{0, v41, v42, v43, v44, v45, v46, v47}];
    }

    if (v6)
    {
      v21 = *(a1 + 88);
      v22 = sub_2393D9044(0);
      v23 = v22;
      if (v21 <= 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = *(a1 + 80);
          v25 = [*(a1 + 32) unsignedLongLongValue];
          v26 = *(a1 + 40);
          v27 = [*(a1 + 48) unsignedLongLongValue];
          v28 = [*(a1 + 56) unsignedLongLongValue];
          *buf = 134219266;
          v49 = v24;
          v50 = 2112;
          v51 = v6;
          v52 = 2048;
          v53 = v25;
          v54 = 2112;
          v55 = v26;
          v56 = 2048;
          v57 = v27;
          v58 = 2048;
          v59 = v28;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Read attribute work item [%llu] failed (will retry): %@   [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x3Eu);
        }

        if (sub_2393D5398(1u))
        {
          v29 = *(a1 + 80);
          [*(a1 + 32) unsignedLongLongValue];
          v30 = *(a1 + 40);
          v31 = 1;
          [*(a1 + 48) unsignedLongLongValue];
          [*(a1 + 56) unsignedLongLongValue];
          sub_2393D5320(0, 1);
        }

        else
        {
          v31 = 1;
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 80);
        v34 = [*(a1 + 32) unsignedLongLongValue];
        v35 = *(a1 + 40);
        v36 = [*(a1 + 48) unsignedLongLongValue];
        v37 = [*(a1 + 56) unsignedLongLongValue];
        *buf = 134219266;
        v49 = v33;
        v50 = 2112;
        v51 = v6;
        v52 = 2048;
        v53 = v34;
        v54 = 2112;
        v55 = v35;
        v56 = 2048;
        v57 = v36;
        v58 = 2048;
        v59 = v37;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Read attribute work item [%llu] failed (giving up): %@   [0x%016llX:%@:0x%llx:0x%llx]", buf, 0x3Eu);
      }

      if (sub_2393D5398(2u))
      {
        v38 = *(a1 + 80);
        [*(a1 + 32) unsignedLongLongValue];
        v39 = *(a1 + 40);
        [*(a1 + 48) unsignedLongLongValue];
        [*(a1 + 56) unsignedLongLongValue];
        sub_2393D5320(0, 2);
      }
    }

    v31 = 0;
LABEL_23:
    (*(*(a1 + 64) + 16))(*(a1 + 64), v31, v7, v8, v9, v10);
    goto LABEL_24;
  }

  v32 = sub_2393D9044(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_INFO, "readAttributeWithEndpointID base device completion called back with nil MTRDevice", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

LABEL_24:

  v40 = *MEMORY[0x277D85DE8];
}

void sub_23939D278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24)
{
  _Block_object_dispose((v26 - 216), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_23939D3BC(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if ([v7 count] == 1)
  {
    for (i = 0; ; i = 1)
    {
      if (![v8 count])
      {
        i = 2;
        goto LABEL_20;
      }

      v10 = [v8 objectAtIndexedSubscript:0];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v7 objectAtIndexedSubscript:0];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v11 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      [v7 replaceObjectAtIndex:0 withObject:v15];
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = [*(a1 + 32) unsignedLongLongValue];
        *buf = 134218498;
        v32 = v17;
        v33 = 2112;
        v34 = v15;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Batching write attribute work item [%llu]: replaced with new write value %@ [0x%016llX]", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v19 = *(a1 + 40);
        v29 = v15;
        v30 = [*(a1 + 32) unsignedLongLongValue];
        v26 = v19;
        sub_2393D5320(0, 2);
      }
    }

    v22 = sub_2393D9044(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      *buf = 134217984;
      v32 = v23;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "Batching write attribute work item [%llu]: cannot replace with next work item due to path mismatch", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v28 = *(a1 + 40);
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 134218240;
      v32 = v21;
      v33 = 2048;
      v34 = [v7 count];
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Batching write attribute work item [%llu]: Unexpected write request count %lu", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v27 = *(a1 + 40);
      [v7 count];
      sub_2393D5320(0, 1);
    }

    i = 0;
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
  return i;
}

void sub_23939D774(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v19 = [v6 newBaseDevice];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v8 objectAtIndexedSubscript:2];
  v11 = [MEMORY[0x277CBEB68] null];

  if (v10 == v11)
  {

    v10 = 0;
  }

  objc_initWeak(location, v6);
  v12 = [v9 endpoint];
  v18 = [v9 cluster];
  v17 = [v9 attribute];
  v16 = [v8 objectAtIndexedSubscript:1];
  v20 = [v6 queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23939DAD8;
  v21[3] = &unk_278A759B0;
  objc_copyWeak(v26, location);
  v13 = *(a1 + 48);
  v26[1] = *(a1 + 56);
  v25 = v13;
  v14 = v8;
  v22 = v14;
  v23 = *(a1 + 40);
  v15 = v7;
  v24 = v15;
  [v19 _writeAttributeWithEndpointID:v12 clusterID:v18 attributeID:v17 value:v16 timedWriteTimeout:v10 queue:v20 completion:v21];

  objc_destroyWeak(v26);
  objc_destroyWeak(location);
}

void sub_23939D9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);

  objc_destroyWeak((v30 - 96));
  _Unwind_Resume(a1);
}

void sub_23939DAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v4)
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 72);
        *buf = 134218242;
        v13 = v7;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Write attribute work item [%llu] failed: %@", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v11 = *(a1 + 72);
        sub_2393D5320(0, 1);
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v8 = [*(a1 + 32) objectAtIndexedSubscript:3];
        [WeakRetained removeExpectedValueForAttributePath:*(a1 + 40) expectedValueID:{objc_msgSend(v8, "unsignedLongLongValue")}];
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "writeAttributeWithEndpointID base device completion called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23939E2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  os_unfair_lock_unlock((a16 + a10));

  _Unwind_Resume(a1);
}

void sub_23939EB9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_23939EFE0;
  v34[3] = &unk_278A75A00;
  v35 = *(a1 + 32);
  v39 = *(a1 + 112);
  v36 = *(a1 + 40);
  v29 = v6;
  v37 = v29;
  v8 = *(a1 + 48);
  v9 = *(a1 + 120);
  v38 = v8;
  v41 = v9;
  v27 = v7;
  v40 = v27;
  v28 = MEMORY[0x23EE78590](v34);
  if (!*(a1 + 56))
  {
    v10 = 0;
LABEL_10:
    v13 = [v29 newBaseDevice];
    objc_initWeak(buf, v29);
    v18 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    v21 = *(a1 + 104);
    v22 = [v29 queue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_23939F134;
    v30[3] = &unk_278A75A28;
    objc_copyWeak(v33, buf);
    v33[1] = *(a1 + 128);
    v33[2] = a3;
    v31 = v27;
    v32 = v28;
    LOBYTE(v24) = 0;
    [v13 _invokeCommandWithEndpointID:v18 clusterID:v17 commandID:v19 commandFields:v20 timedInvokeTimeout:v10 serverSideProcessingTimeout:v21 logCall:v24 queue:v22 completion:v30];

    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CBEAA8] now];
  if ([v10 compare:*(a1 + 64)] != 1)
  {
    v14 = MEMORY[0x277CCABB0];
    [*(a1 + 64) timeIntervalSinceDate:v10];
    v16 = [v14 numberWithDouble:v15 * 1000.0];

    v10 = v16;
    goto LABEL_10;
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 128);
    *buf = 134217984;
    v43 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Invoke work item [%llu] timed out its timed invoke timeout before being dispatched", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v25 = *(a1 + 128);
    sub_2393D5320(0, 2);
  }

  v13 = sub_23921D3B8(MTRError, 0x94u);
  (v28)[2](v28, 0, v13);
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23939EFE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23939F11C;
  block[3] = &unk_278A72D48;
  v13 = *(a1 + 64);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  dispatch_async(v7, block);
  if (v9 && *(a1 + 40))
  {
    [*(a1 + 48) removeExpectedValuesForAttributePaths:*(a1 + 56) expectedValueID:*(a1 + 80)];
  }

  (*(*(a1 + 72) + 16))();
}

void sub_23939F134(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = sub_2393D9044(0);
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      *buf = 134218498;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Invoke work item [%llu] received command response: %@ error: %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v15 = *(a1 + 56);
      sub_2393D5320(0, 2);
    }

    if (v6)
    {
      v11 = [v6 domain];
      if (v11 == @"MTRInteractionErrorDomain" && [v6 code] == 156)
      {
        v12 = *(a1 + 64) < 5;

        if (v12)
        {
          (*(*(a1 + 32) + 16))(*(a1 + 32), 1, v13);
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "_invokeCommandWithEndpointID base device completion called back with nil MTRDevice", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23939FEE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23939FF90;
  v8[3] = &unk_278A71698;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void sub_23939FFA8(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v17 = [a1[4] path];
    v18 = v5;
    v16 = [v17 endpoint];
    v7 = [a1[4] path];
    v8 = [v7 cluster];
    v9 = [a1[4] path];
    v10 = [v9 command];
    v11 = [a1[4] commandFields];
    v12 = [WeakRetained queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2393A025C;
    v19[3] = &unk_278A75AA0;
    objc_copyWeak(&v23, a1 + 6);
    v22 = a1[5];
    v13 = v18;
    v14 = a1[4];
    v20 = v13;
    v21 = v14;
    v24 = a2;
    [WeakRetained invokeCommandWithEndpointID:v16 clusterID:v8 commandID:v10 commandFields:v11 expectedValues:0 expectedValueInterval:0 queue:v12 completion:v19];

    objc_destroyWeak(&v23);
    v5 = v18;
  }

  else
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "invokeCommands commandInvokeBlock called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_2393A01C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v23 + 56));

  _Unwind_Resume(a1);
}

void sub_2393A025C(uint64_t a1, void *a2, void *a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v40[0] = @"commandPath";
      v10 = *(a1 + 32);
      v11 = [v8 path];
      v40[1] = @"error";
      v41[0] = v11;
      v41[1] = v6;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v13 = [v10 arrayByAddingObject:v12];
      (*(v9 + 16))(v9, 0, v13);
    }

    else if ([v5 count] == 1)
    {
      v15 = *(a1 + 64);
      v16 = [v5 objectAtIndexedSubscript:0];
      v17 = [*(a1 + 40) requiredResponse];
      if (v17)
      {
        v18 = [*(a1 + 40) requiredResponse];
        v19 = [WeakRetained _invokeResponse:v16 matchesRequiredResponse:v18];

        v15 &= v19;
      }

      v20 = *(a1 + 48);
      v21 = [*(a1 + 32) arrayByAddingObject:v16];
      (*(v20 + 16))(v20, v15 & 1, v21);
    }

    else
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [*(a1 + 40) path];
        *buf = 138412546;
        v37 = WeakRetained;
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "%@ invokeCommands unexpectedly got multiple responses for %@", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        [*(a1 + 40) path];
        v33 = v32 = WeakRetained;
        sub_2393D5320(0, 1);
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v34[0] = @"commandPath";
      v26 = *(a1 + 32);
      v27 = [v24 path];
      v35[0] = v27;
      v34[1] = @"error";
      v28 = sub_23921C1E4(MTRError, 0xFCB000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm");
      v35[1] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v30 = [v26 arrayByAddingObject:v29];
      (*(v25 + 16))(v25, 0, v30);
    }
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "invokeCommands invokeCommandWithEndpointID completion called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2393A06B0(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (a2)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ failed a preceding command, not invoking command group %@ or later ones", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v12 = *(a1 + 32);
        sub_2393D5320(0, 1);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2393A08CC;
      block[3] = &unk_278A71698;
      v10 = *(a1 + 40);
      v15 = *(a1 + 48);
      v14 = v5;
      dispatch_async(v10, block);
    }
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "invokeCommands commandGroupInvokeBlock called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2393A09A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_2393A0A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393A0C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2393A0CEC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v8 setDiagnosticLogTransferInProgress:0];
    [(os_unfair_lock_s *)v8 _notifyDelegateOfPrivateInternalPropertiesChanges];
    os_unfair_lock_unlock(v8 + 2);
  }

  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    *buf = 138412802;
    v14 = v8;
    v15 = 2048;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType %lu completed: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v12 = *(a1 + 48);
    sub_2393D5320(0, 2);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2393A0E5C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v3[v4]);

  _Unwind_Resume(a1);
}

void sub_2393A13D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2393A14D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performScheduledExpirationCheck];
  }
}

void sub_2393A1598(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2393A1628(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_2393A1D58(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2393A2158(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_2393A260C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained matterCPPObjectsHolder];
    objc_sync_enter(v3);
    v4 = [v7 matterCPPObjectsHolder];
    v5 = [v4 subscriptionCallback];

    if (v5)
    {
      v6 = [v7 matterCPPObjectsHolder];
      sub_23922503C([v6 subscriptionCallback], objc_msgSend(*(a1 + 32), "unsignedLongLongValue"));
    }

    objc_sync_exit(v3);

    WeakRetained = v7;
  }
}

void sub_2393A26CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_2393A2A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2393A2AC4(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained matterCPPObjectsHolder];
    objc_sync_enter(v4);
    v5 = [v3 matterCPPObjectsHolder];
    v6 = [v5 subscriptionCallback];

    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = a1[4];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            v12 = [a1[5] unsignedLongLongValue];
            v13 = [v11 unsignedLongLongValue];
            LOWORD(v16[0]) = v12;
            v16[1] = v13;
            v14 = [v3 matterCPPObjectsHolder];
            sub_239225098([v14 subscriptionCallback], v16);

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }
    }

    objc_sync_exit(v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2393A2C50(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2393A2E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2393A2ED0(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained matterCPPObjectsHolder];
    objc_sync_enter(v17);
    v4 = [v3 matterCPPObjectsHolder];
    v5 = [v4 subscriptionCallback];

    if (v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = a1[4];
      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v6)
      {
        v7 = *v24;
        do
        {
          v8 = 0;
          do
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v23 + 1) + 8 * v8);
            v10 = [a1[5] endpoint];
            v11 = [v10 unsignedLongLongValue];
            v12 = [a1[5] cluster];
            v13 = [v12 unsignedLongLongValue];
            v14 = [v9 unsignedLongLongValue];
            v19 = v11;
            v21 = v13;
            v22 = v14;
            v20 = 0;

            v15 = [v3 matterCPPObjectsHolder];
            sub_2392250F4([v15 subscriptionCallback], &v19);

            ++v8;
          }

          while (v6 != v8);
          v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v6);
      }
    }

    objc_sync_exit(v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2393A3094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, void *a10)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2393A49F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  os_unfair_lock_unlock((v14 + a13));

  _Unwind_Resume(a1);
}

void sub_2393A4CB4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_2393A59F0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v3));

  _Unwind_Resume(a1);
}

void sub_2393A61DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2393A68AC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2393A7324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  v20 = v18;

  os_unfair_lock_unlock((v17 + v19));
  _Unwind_Resume(a1);
}

void sub_2393A7378(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v4 _clearSubscriptionPoolWork];
    [(os_unfair_lock_s *)v4 _resetSubscription];
    os_unfair_lock_unlock(v4 + 2);
    v5 = [*&v4[6]._os_unfair_lock_opaque unsignedLongLongValue];
    v6 = *(a2 + 36);
    v15 = v5;
    v16 = v6;
    v7 = *(a2 + 4280);
    if (v7 && (v8 = *(v7 + 96)) != 0)
    {
      sub_2394C50E8(v8, &v15);
      v9 = *(a2 + 4280);
      if (v9)
      {
        v10 = *(v9 + 40);
        if (v10)
        {
          *buf = &v15;
          *&buf[8] = &v14;
          sub_2393D6A10((v10 + 128), buf, sub_2393A82D0);
          os_unfair_lock_lock(v4 + 2);
          [(os_unfair_lock_s *)v4 _ensureSubscriptionForExistingDelegates:@"SPI client indicated the device may now be reachable"];
          os_unfair_lock_unlock(v4 + 2);
          goto LABEL_7;
        }
      }

      v13 = sub_2393D9044(0x1Bu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5257;
        v18 = 2080;
        v19 = "sessionMgr != nullptr";
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x1Bu, 1);
      }
    }

    else
    {
      v12 = sub_2393D9044(0x1Bu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5251;
        v18 = 2080;
        v19 = "caseSessionMgr != nullptr";
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x1Bu, 1);
      }
    }

    abort();
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2393A7614(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v1[v2]);

  _Unwind_Resume(a1);
}

void sub_2393A76E8(uint64_t a1)
{
  sub_238EF7260(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393A7720(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v8 = [[MTREventPath alloc] initWithPath:a2];
    v9 = v8;
    if (a4)
    {
      v10 = *(a1 + 16);
      v29[0] = @"eventPath";
      v29[1] = @"error";
      v30[0] = v8;
      v11 = sub_23921CB28(MTRError, a4);
      v30[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [v10 addObject:v12];
    }

    else if (a3)
    {
      v11 = sub_238EE60DC(a3, 0);
      if (v11)
      {
        v15 = *(a1 + 16);
        v16 = [MTRBaseDevice eventReportForHeader:a2 andData:v11];
        [v15 addObject:v16];
      }

      else
      {
        v19 = sub_2393D9044(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to decode event data for path %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        v20 = *(a1 + 16);
        v23[0] = @"eventPath";
        v23[1] = @"error";
        v24[0] = v9;
        v21 = sub_23921C1E4(MTRError, 0x14CC000000B0, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm");
        v24[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
        [v20 addObject:v22];
      }
    }

    else
    {
      v17 = *(a1 + 16);
      v27[0] = @"eventPath";
      v27[1] = @"error";
      v28[0] = v8;
      v11 = sub_23921C1E4(MTRError, 0x14C40000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm");
      v28[1] = v11;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      [v17 addObject:v18];
    }

    sub_23922485C(a1);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    sub_239224A20(a1, 0x14BA00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1);
  }
}

void sub_2393A7ACC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 14) >= 2u)
  {
    v5 = *MEMORY[0x277D85DE8];
    v6 = 0x14DA00000003;
LABEL_7:

    sub_239224A20(a1, v6, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1);
    return;
  }

  if (!*(a1 + 8))
  {
    v15 = *MEMORY[0x277D85DE8];
    v6 = 0x14E000000003;
    goto LABEL_7;
  }

  v10 = [[MTRAttributePath alloc] initWithPath:a2];
  v11 = v10;
  if (*a4)
  {
    v12 = *(a1 + 8);
    v34[0] = @"attributePath";
    v34[1] = @"error";
    v35[0] = v10;
    v13 = sub_23921CB28(MTRError, a4);
    v35[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v12 addObject:v14];
  }

  else if (a3)
  {
    v17 = *(a2 + 16);
    v16 = (a2 + 16);
    if (v17 == 1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v16)];
    }

    else
    {
      v13 = 0;
    }

    v19 = sub_238EE60DC(a3, v13);
    v14 = v19;
    if (v19)
    {
      v20 = *(a1 + 8);
      v26[0] = @"attributePath";
      v26[1] = @"data";
      v27[0] = v11;
      v27[1] = v19;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      [v20 addObject:v21];
    }

    else
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v11;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Failed to decode attribute data for path %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v23 = *(a1 + 8);
      v28[0] = @"attributePath";
      v28[1] = @"error";
      v29[0] = v11;
      v21 = sub_23921C1E4(MTRError, 0x14F3000000B0, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm");
      v29[1] = v21;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      [v23 addObject:v24];
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v32[0] = @"attributePath";
    v32[1] = @"error";
    v33[0] = v10;
    v13 = sub_23921C1E4(MTRError, 0x14EA0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm");
    v33[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v18 addObject:v14];
  }

  sub_23922485C(a1);
  v25 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2393A7F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 200);
  if (v8 > 0xE)
  {
    LODWORD(v9) = 5538000;
    goto LABEL_5;
  }

  v9 = 10000 * sub_2393D64AC(v8);
  if (v9)
  {
LABEL_5:
    v9 = 30 * v9 / 0x64u + sub_2393F56E0() % (v9 - 30 * v9 / 0x64u);
  }

  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 64);
    v13 = *(a1 + 200);
    *buf = 67110402;
    v27 = v11;
    v28 = 1024;
    v29 = HIDWORD(v12);
    v30 = 1024;
    v31 = v12;
    v32 = 1024;
    v33 = v13;
    v34 = 1024;
    v35 = v9;
    v36 = 2080;
    v37 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Will try to resubscribe to %02x:%08X%08X at retry index %u after %ums due to error %s", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    v14 = *(a2 + 72);
    v16 = *(a2 + 64);
    v15 = *(a2 + 68);
    v17 = *(a1 + 200);
    sub_2393C9138();
    sub_2393D5320(0xDu, 2);
  }

  v24[0] = 0;
  v18 = sub_2394D7BD8(a2, 0xFFFFFFFF, v24, a3 == 50);
  if (v24[0] == 1)
  {
    (*(*v25 + 32))(v25);
  }

  if (v18)
  {
    v19 = v18 & 0xFFFFFFFF00000000;
  }

  else
  {
    ++*(a1 + 200);
    v20 = sub_23921C1E4(MTRError, a3, a4);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    sub_239224E6C(a1, v20, v21);

    v19 = 0;
    LODWORD(v18) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18 | v19;
}

uint64_t sub_2393A81FC(uint64_t result, uint64_t a2, unsigned __int8 *a3, char a4)
{
  *(result + 24) = 0;
  *result = &unk_284BA9CC0;
  *(result + 8) = a2;
  *(result + 16) = result + 24;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 40) = result + 48;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 64) = result + 72;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 128) = 0;
  *(result + 120) = 0;
  *(result + 112) = result + 120;
  *(result + 136) = 0;
  *(result + 160) = 0;
  *(result + 152) = result + 160;
  *(result + 168) = 0;
  *(result + 176) = &unk_284BB7D38;
  *(result + 184) = 0;
  *(result + 186) = 0;
  *(result + 200) = 0;
  *(result + 188) = 0;
  *(result + 195) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = result;
  *(result + 240) = -1;
  *(result + 244) = -1;
  *(result + 248) = a4;
  v4 = *a3;
  *(result + 136) = v4;
  if (v4 == 1)
  {
    *(result + 144) = *(a3 + 1);
  }

  return result;
}

uint64_t sub_2393A82D0(uint64_t a1, void *a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4 && sub_239495304(a2) && ((*(*off_27DF765E8 + 2))(off_27DF765E8) - a2[17]) >> 3 >= 0x753)
  {
    sub_239493108(a2);
  }

  return 0;
}

void *sub_2393A8394(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_284BB76C0;
  a1[1] = v3;
  a1[2] = 0;
  v4 = MEMORY[0x277CBEB38];
  v5 = v3;
  v6 = objc_alloc_init(v4);
  v7 = a1[2];
  a1[2] = v6;

  return a1;
}

uint64_t sub_2393A8430(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 *a4)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDemuxingStorage.mm", 247);
  if (!a3 && *a4)
  {
    return 0xF90000002FLL;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if ([v9 hasPrefix:@"g/"])
  {
    v10 = sub_2393A866C(a1, v9);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_21:
    v11 = 0x10F00000000;
    v12 = 160;
    goto LABEL_22;
  }

  if ([v9 hasPrefix:@"f/"])
  {
    v17 = 0;
    v13 = sub_2393A8788(v9, &v17);
    v12 = v13;
    if (!v13)
    {
      v16 = v9;
      v13 = sub_2393A897C(v9, &v16);
      v15 = v16;

      v12 = v13;
      if (!v13)
      {
        v10 = sub_2393A8A9C(a1, v17, v15);
        v9 = v15;
        if (v10)
        {
LABEL_6:
          if ([v10 length] >> 16)
          {
            v11 = 0x11300000000;
            v12 = 159;
          }

          else
          {
            v14 = [v10 length];
            if (v14 <= *a4)
            {
              *a4 = v14;
              if (v14)
              {
                memcpy(a3, [v10 bytes], *a4);
              }

              v12 = 0;
              v11 = 0;
            }

            else
            {
              v11 = 0x11800000000;
              v12 = 25;
            }
          }

          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v9 = v15;
    }

    v10 = 0;
    v11 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
    v11 = 0x10B00000000;
    v12 = 47;
  }

LABEL_22:

  return v11 | v12;
}

id sub_2393A866C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (sub_2393A929C(v3))
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "MTRDemuxingStorage reading unknown global key: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t sub_2393A8788(void *a1, _BYTE *a2)
{
  v3 = a1;
  if ([v3 hasPrefix:@"f/"])
  {
    v4 = [v3 componentsSeparatedByString:@"/"];
    if ([v4 count] < 3)
    {
      v5 = 0x3200000000;
      v6 = 47;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [MEMORY[0x277CCAC80] scannerWithString:v7];
    v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
    v10 = [v9 invertedSet];

    if ([v8 scanCharactersFromSet:v10 intoString:0])
    {
      v5 = 0x3D00000000;
    }

    else
    {
      v12 = 0;
      if ([v8 scanHexInt:&v12])
      {
        if ([v8 isAtEnd])
        {
          if (v12 <= 0xFF)
          {
            v5 = 0;
            v6 = 0;
            *a2 = v12;
LABEL_15:

            goto LABEL_16;
          }

          v5 = 0x4B00000000;
        }

        else
        {
          v5 = 0x4700000000;
        }
      }

      else
      {
        v5 = 0x4200000000;
      }
    }

    v6 = 47;
    goto LABEL_15;
  }

  v5 = 0x2C00000000;
  v6 = 47;
LABEL_17:

  return v6 | v5;
}

uint64_t sub_2393A897C(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 hasPrefix:@"f/"])
  {
    v4 = [v3 componentsSeparatedByString:@"/"];
    if ([v4 count] >= 3)
    {
      v7 = [v4 subarrayWithRange:{2, objc_msgSend(v4, "count") - 2}];

      [v7 componentsJoinedByString:@"/"];
      v5 = 0;
      *a2 = v6 = 0;
      v4 = v7;
    }

    else
    {
      v5 = 0x5F00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x5900000000;
    v6 = 47;
  }

  return v6 | v5;
}

id sub_2393A8A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (sub_2393A9388(v5))
  {
    v6 = sub_2393A9454(a2, v5);
    v7 = [*(a1 + 16) objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2393A8B40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a3 && a4)
  {
    return 0x1280000002FLL;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (a3)
  {
    [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  }

  else
  {
    [MEMORY[0x277CBEA90] data];
  }
  v9 = ;
  if ([v8 hasPrefix:@"g/"])
  {
    v10 = sub_2393A8CE0(a1, v8, v9);
  }

  else
  {
    if (![v8 hasPrefix:@"f/"])
    {
      v11 = 0x13D00000000;
      LODWORD(v10) = 47;
      goto LABEL_13;
    }

    v14 = 0;
    v10 = sub_2393A8788(v8, &v14);
    if (!v10)
    {
      v13 = v8;
      v10 = sub_2393A897C(v8, &v13);
      v12 = v13;

      if (!v10)
      {
        v10 = sub_2393A8E2C(a1, v14, v12, v9);
      }

      v8 = v12;
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
LABEL_13:

  return v11 | v10;
}

uint64_t sub_2393A8CE0(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (sub_2393A929C(v5))
  {
    [*(a1 + 16) setObject:v6 forKeyedSubscript:v5];
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRDemuxingStorage setting unknown global key: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v7 = 0x17400000000;
    v8 = 159;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

unint64_t sub_2393A8E2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (![v7 isEqualToString:@"n"])
  {
    goto LABEL_13;
  }

  v9 = sub_23952B954(*(a1 + 8), a2);
  v10 = v9;
  if (!v9)
  {
    v13 = 0x17D00000000;
    goto LABEL_9;
  }

  v11 = [v9 controllerDataStore];
  v12 = [v11 storeLastLocallyUsedNOC:v8];

  if (!v12)
  {
LABEL_13:
    if (sub_2393A9388(v7))
    {
      v14 = sub_2393A9454(a2, v7);
      [*(a1 + 16) setObject:v8 forKeyedSubscript:v14];

      LODWORD(v12) = 0;
      v13 = 0;
      goto LABEL_10;
    }

    v13 = 0x18700000000;
LABEL_9:
    LODWORD(v12) = 159;
    goto LABEL_10;
  }

  v13 = v12 & 0xFFFFFFFF00000000;
LABEL_10:

  return v13 | v12;
}

unint64_t sub_2393A8F90(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if ([v3 hasPrefix:@"g/"])
  {
    v4 = sub_2393A90C0(a1, v3);
  }

  else
  {
    if (![v3 hasPrefix:@"f/"])
    {
      v5 = 0x15300000000;
      LODWORD(v4) = 47;
      goto LABEL_7;
    }

    v9 = 0;
    v4 = sub_2393A8788(v3, &v9);
    if (!v4)
    {
      v8 = v3;
      v4 = sub_2393A897C(v3, &v8);
      v7 = v8;

      if (!v4)
      {
        v4 = sub_2393A91E8(a1, v9, v7);
      }

      v3 = v7;
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
LABEL_7:

  return v5 | v4;
}

unint64_t sub_2393A90C0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (sub_2393A929C(v3))
  {
    v4 = sub_2393A9508(a1, v3);
    v5 = v4 & 0xFFFFFFFF00000000;
    v6 = v4;
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MTRDemuxingStorage deleting unknown global key: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v5 = 0x19200000000;
    v6 = 160;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2393A91E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (sub_2393A9388(v5))
  {
    v6 = sub_2393A9454(a2, v5);
    v7 = sub_2393A9508(a1, v6);
    v8 = v7;
    v9 = v7 & 0xFFFFFFFF00000000;

    v10 = v8;
  }

  else
  {
    v9 = 0x19B00000000;
    v10 = 160;
  }

  return v10 | v9;
}

uint64_t sub_2393A929C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"g/fidx"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"g/fs/c") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"g/fs/n") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"g/lkgt") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"g/gdc"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"g/gcc"];
  }

  return v2;
}

id sub_2393A9354(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 16) objectForKeyedSubscript:a2];

  return v2;
}

uint64_t sub_2393A9388(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"n"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"i") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"r") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"m") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"o") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"gk/"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"k/"];
  }

  return v2;
}

id sub_2393A9454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/%s", a1, objc_msgSend(v3, "UTF8String")];

  return v4;
}

uint64_t sub_2393A9508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) objectForKeyedSubscript:v3];

  if (v4)
  {
    [*(a1 + 16) removeObjectForKey:v3];
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0x1AC00000000;
    v6 = 160;
  }

  return v6 | v5;
}

void sub_2393A95D0(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2393A9A98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 75);
  if (*(a1 + 40))
  {
    v11 = 0x4D00000000;
LABEL_9:
    LODWORD(v13) = 3;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v11 = 0x4E00000000;
    goto LABEL_9;
  }

  if (*(a1 + 32))
  {
    v11 = 0x4F00000000;
    goto LABEL_9;
  }

  if (*(a1 + 56))
  {
    v11 = 0x5000000000;
    goto LABEL_9;
  }

  if (!v8)
  {
    v11 = 0x5200000000;
LABEL_24:
    LODWORD(v13) = 47;
    goto LABEL_10;
  }

  if (!v9)
  {
    v11 = 0x5300000000;
    goto LABEL_24;
  }

  if (!v10)
  {
    v11 = 0x5400000000;
    goto LABEL_24;
  }

  objc_storeStrong((a1 + 40), a2);
  objc_storeWeak((a1 + 48), v9);
  objc_storeStrong((a1 + 32), a4);
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = *(a1 + 56);
  *(a1 + 56) = v16;

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (qword_27DF7BD08 != -1)
  {
    sub_23952D9F0(v18);
  }

  v13 = sub_239479FB8(&byte_27DF7BCA8, a1 + 16, 0);
  if (!v13)
  {
    v19 = sub_2394BA124();
    v20 = sub_239477E68();
    v13 = (*(*v19 + 16))(v19, v20);
    if (!v13)
    {
      LOBYTE(v21) = 0;
      *(&v21 + 1) = 0;
      v22 = 0;
      v13 = sub_23948C274(__str, 0x21uLL, &v21, 2);
      if (!v13)
      {
        LODWORD(v21) = 0;
        v13 = sub_239480DF0(__str, 0, 3, &v21, a1 + 8);
      }
    }
  }

  v11 = v13 & 0xFFFFFFFF00000000;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v11 | v13;
}

unint64_t sub_2393A9D90(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 108);
  if (!*(a1 + 40))
  {
    v11 = 0x6E00000000;
LABEL_12:
    v12 = 3;
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (!WeakRetained)
  {
    v11 = 0x6F00000000;
    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    v11 = 0x7000000000;
    goto LABEL_12;
  }

  if (!*(a1 + 56))
  {
    v11 = 0x7100000000;
    goto LABEL_12;
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;

  objc_storeWeak((a1 + 48), 0);
  v7 = *(a1 + 32);
  *(a1 + 32) = 0;

  sub_2393AA000(a1);
  sub_2393AA204(a1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = 0;

  objc_storeStrong((a1 + 24), a2);
  if (qword_27DF7BD08 != -1)
  {
    sub_23952D9F0(v9);
  }

  sub_23947A05C();
  v10 = sub_239480EF8(a1 + 8);
  v11 = v10 & 0xFFFFFFFF00000000;
  v12 = v10;
LABEL_13:

  return v12 | v11;
}

id *sub_2393A9F48(id *a1)
{
  objc_destroyWeak(a1 + 6);

  return a1;
}

void sub_2393AA000(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 56);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = *v16;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v16 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        v6 = [*(a1 + 56) objectForKeyedSubscript:{v5, v13}];
        v7 = [v6 instanceName];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BLE"];
        v9 = [v7 isEqual:v8];

        if ((v9 & 1) == 0)
        {
          v10 = [*(a1 + 56) objectForKeyedSubscript:v5];
          [v13 setObject:v10 forKeyedSubscript:v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v2);
  }

  v11 = *(a1 + 56);
  *(a1 + 56) = v13;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2393AA204(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEC10] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 56);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v2)
  {
    v24 = *v30;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * i);
        v5 = [*(a1 + 56) objectForKeyedSubscript:v4];
        v6 = [v5 interfaces];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v44 count:16];
        if (v8)
        {
          v9 = *v26;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = [v7 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
              v12 = v11;
              if (!v11)
              {
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v33 = 0u;

LABEL_15:
                v14 = v4;
                sub_2394812A4([v4 UTF8String]);
                continue;
              }

              [v11 resolutionData];
              v13 = v33;

              if ((v13 & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v25 objects:v44 count:16];
          }

          while (v8);
        }

        v15 = [*(a1 + 56) objectForKeyedSubscript:v4];
        v16 = [v15 instanceName];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BLE"];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          v19 = [*(a1 + 56) objectForKeyedSubscript:v4];
          [v22 setObject:v19 forKeyedSubscript:v4];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v2);
  }

  v20 = *(a1 + 56);
  *(a1 + 56) = v22;

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2393AA55C(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));

  v2 = *(a1 + 16);
}

void sub_2393AA5B0(uint64_t a1)
{
  objc_destroyWeak((a1 + 32));

  v2 = *(a1 + 8);
}

void sub_2393AA604(id *a1)
{
  objc_destroyWeak(a1 + 6);

  JUMPOUT(0x23EE77B60);
}

void sub_2393AA670(id *a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 178);
  v4 = a1[5];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (v4)
  {
    v7 = WeakRetained == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && *a2 == 0)
  {
    v35 = WeakRetained;
    v9 = sub_2393AB8BC(a2);
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9 + 60];
    v10 = [a1[7] objectForKey:?];

    if (v10)
    {
      v34 = [a1[7] objectForKeyedSubscript:v36];
      [v34 setInstanceName:v36];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v9 + 91)];
      [v34 setVendorID:v11];

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v9 + 92)];
      [v34 setProductID:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v9 + 90)];
      [v34 setDiscriminator:v13];

      [v34 setCommissioningMode:*(v9 + 188) != 0];
      v32 = a1;
      v33 = [v34 interfaces];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v9];
      v15 = [v33 objectForKeyedSubscript:v14];
      LOBYTE(v46) = 1;
      DWORD2(v46) = *v9;
      v16 = *(v9 + 30);
      v53 = *(v9 + 26);
      v54 = v16;
      v55[0] = *(v9 + 34);
      *(v55 + 11) = *(v9 + 147);
      v17 = *(v9 + 14);
      v49 = *(v9 + 10);
      v50 = v17;
      v18 = *(v9 + 22);
      v51 = *(v9 + 18);
      v52 = v18;
      v19 = *(v9 + 6);
      v47 = *(v9 + 2);
      v48 = v19;
      [v15 setResolutionData:&v46];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v20 = v33;
      v21 = [v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v21)
      {
        v22 = *v42;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v41 + 1) + 8 * i);
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v9];
            if ([v24 isEqual:v25])
            {
              goto LABEL_20;
            }

            v26 = [v20 objectForKeyedSubscript:v24];
            v27 = v26;
            if (!v26)
            {
              memset(v55, 0, sizeof(v55));
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = 0u;

LABEL_20:
              continue;
            }

            [v26 resolutionData];
            v28 = v46;

            if (v28)
            {
              v30 = v20;
              goto LABEL_24;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v21);
      }

      v29 = v32[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2393AB8DC;
      block[3] = &unk_278A71650;
      v38 = v4;
      v39 = v35;
      v40 = v34;
      dispatch_async(v29, block);

      v30 = v38;
LABEL_24:
    }

    v6 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2393AAB3C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 229);
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      if (*(a1 + 32))
      {
        v5 = *(a1 + 64) + 1;
        *(a1 + 64) = v5;
        *buf = 2;
        *&v20[4] = "dwnfw_onnet_devices_added";
        *&v20[12] = v5;
        v20[16] = 1;
        sub_23948BD20(buf);
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
        v7 = [*(a1 + 56) objectForKey:v6];
        v8 = v7 == 0;

        if (v8)
        {
          v9 = objc_alloc_init(MTRCommissionableBrowserResult);
          [*(a1 + 56) setObject:v9 forKeyedSubscript:v6];

          v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v11 = [*(a1 + 56) objectForKeyedSubscript:v6];
          [v11 setInterfaces:v10];
        }

        v12 = [*(a1 + 56) objectForKeyedSubscript:v6];
        v13 = [v12 interfaces];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 92)];
        v15 = objc_alloc_init(MTRCommissionableBrowserResultInterfaces);
        [v13 setObject:v15 forKeyedSubscript:v14];

        *buf = *(a2 + 92);
        if (sub_239481154(a2, buf, a1))
        {
          v16 = sub_2393D9044(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_2393C9138();
            *buf = 136315650;
            *v20 = v17;
            *&v20[8] = 2080;
            *&v20[10] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm";
            v21 = 1024;
            v22 = 247;
            _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0, 1);
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2393AAE64(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 252);
  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = WeakRetained == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a1 + 68) + 1;
    *(a1 + 68) = v8;
    v26 = 2;
    v27 = "dwnfw_onnet_devices_removed";
    v28 = v8;
    v29 = 1;
    sub_23948BD20(&v26);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v10 = [*(a1 + 56) objectForKey:v9];
    v11 = v10 == 0;

    if (v11)
    {
LABEL_16:

      goto LABEL_17;
    }

    v12 = [*(a1 + 56) objectForKeyedSubscript:v9];
    v13 = [v12 interfaces];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 92)];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = v15;
    if (v15)
    {
      [v15 resolutionData];
      v17 = v26;

      if (v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    sub_2394812A4(a2);
LABEL_11:
    [v13 setObject:0 forKeyedSubscript:v14];
    if (![v13 count])
    {
      v18 = [v12 instanceName];
      v19 = v18 == 0;

      if (!v19)
      {
        v20 = *(a1 + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2393AB8EC;
        block[3] = &unk_278A71650;
        v23 = v4;
        v24 = v6;
        v25 = v12;
        dispatch_async(v20, block);
      }

      [*(a1 + 56) setObject:0 forKeyedSubscript:v9];
    }

    goto LABEL_16;
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2393AB13C(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 298);

  sub_2393AA204(a1);
}

void sub_2393AB180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 307);
  v6 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = WeakRetained == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = objc_alloc_init(MTRCommissionableBrowserResult);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BLE"];
    [(MTRCommissionableBrowserResult *)v10 setInstanceName:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 3)];
    [(MTRCommissionableBrowserResult *)v10 setVendorID:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 5)];
    [(MTRCommissionableBrowserResult *)v10 setProductID:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 1) & 0xFFF];
    [(MTRCommissionableBrowserResult *)v10 setDiscriminator:v14];

    [(MTRCommissionableBrowserResult *)v10 setCommissioningMode:1];
    sub_2394F7A44(&v24, a2, 0x10000, 1);
    v43 = v24;
    v50 = v31;
    v51 = v32;
    *v52 = *v33;
    *&v52[12] = *&v33[12];
    v47 = v28;
    LOBYTE(v42) = 1;
    v44 = v25;
    v45 = v26;
    v46 = v27;
    v48 = v29;
    v49 = v30;
    v53 = v34;
    if (v34 == 1)
    {
      v54 = v35;
      v55 = v36;
      v34 = 0;
    }

    v56 = v37;
    v57 = v38;
    v58 = v39;
    *v59 = *v40;
    *&v59[9] = *&v40[9];
    v60 = v41;
    [(MTRCommissionableBrowserResult *)v10 setParams:&v42];
    [(MTRCommissionableBrowserResult *)v10 setPeripheral:a2];
    v15 = *(a1 + 72) + 1;
    *(a1 + 72) = v15;
    v42 = 2;
    *&v43 = "dwnfw_ble_devices_added";
    DWORD2(v43) = v15;
    BYTE12(v43) = 1;
    sub_23948BD20(&v42);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
    [*(a1 + 56) setObject:v10 forKeyedSubscript:v16];
    v17 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393AB8FC;
    block[3] = &unk_278A71650;
    v21 = v6;
    v22 = v8;
    v23 = v10;
    v18 = v10;
    dispatch_async(v17, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2393AB51C(uint64_t a1, uint64_t a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 335);
  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = WeakRetained == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
    v9 = [*(a1 + 56) objectForKey:v8];

    if (v9)
    {
      v10 = [*(a1 + 56) objectForKeyedSubscript:v8];
      [*(a1 + 56) setObject:0 forKeyedSubscript:v8];
      v11 = *(a1 + 76) + 1;
      *(a1 + 76) = v11;
      v18 = 2;
      v19 = "dwnfw_ble_devices_removed";
      v20 = v11;
      v21 = 1;
      sub_23948BD20(&v18);
      v12 = *(a1 + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2393AB90C;
      block[3] = &unk_278A71650;
      v15 = v4;
      v16 = v6;
      v17 = v10;
      v13 = v10;
      dispatch_async(v12, block);
    }
  }
}

void sub_2393AB6E8(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 360);
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
}

void sub_2393AB730(id *a1)
{
  objc_destroyWeak(a1 + 5);

  JUMPOUT(0x23EE77B60);
}

void sub_2393AB7B0(uint64_t a1)
{
  v1 = a1 - 8;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 298);

  sub_2393AA204(v1);
}

void sub_2393AB7F4(id *a1)
{
  objc_destroyWeak(a1 + 4);

  JUMPOUT(0x23EE77B60);
}

void sub_2393AB874(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissionableBrowser.mm", 360);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
}

void *sub_2393AB8BC(void *a1)
{
  if (*a1)
  {
    sub_23952D9FC();
  }

  return a1 + 1;
}

uint64_t sub_2393AB8DC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel_controller_didFindCommissionableDevice_);
}

uint64_t sub_2393AB8EC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel_controller_didRemoveCommissionableDevice_);
}

uint64_t sub_2393AB8FC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel_controller_didFindCommissionableDevice_);
}

uint64_t sub_2393AB90C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel_controller_didRemoveCommissionableDevice_);
}

uint64_t sub_2393ABAF0(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    sub_23952DABC();
  }

  return *(a1 + 16);
}

uint64_t sub_2393ABB14(uint64_t a1)
{
  if (*(a1 + 20) != 2)
  {
    sub_23952DB6C();
  }

  return *(a1 + 16);
}

uint64_t sub_2393ABB38(uint64_t a1)
{
  if (*(a1 + 20) != 3)
  {
    sub_23952DC1C();
  }

  return *(a1 + 16);
}

void sub_2393ABD2C()
{
  v0 = +[MTRMetricsCollector sharedInstance];

  if (v0)
  {
    v1 = sub_2393D9044(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_DEFAULT, "Initialized metrics collection backend for Darwin", v3, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    v2 = +[MTRMetricsCollector sharedInstance];
    [v2 registerTracingBackend];
  }
}

void sub_2393ABDF4()
{
  v0 = +[MTRMetricsCollector sharedInstance];
  [v0 unregisterTracingBackend];
}

void sub_2393ABE9C()
{
  v0 = objc_alloc_init(MTRMetricsCollector);
  v1 = qword_27DF776E0;
  qword_27DF776E0 = v0;

  if (qword_27DF776E0)
  {
    v2 = qword_27DF776E0 + 24;

    sub_23948B57C(v2, &unk_284BB7858);
  }
}

uint64_t sub_2393ABF04(uint64_t a1, __int128 *a2)
{
  result = qword_27DF776E0;
  if (qword_27DF776E0)
  {
    v3 = *a2;
    v4 = *(a2 + 2);
    return [qword_27DF776E0 handleMetricEvent:&v3];
  }

  return result;
}

void sub_2393AC554(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 hasPrefix:@"dwnfw__"] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) setMetricData:v5 forKey:v6];
  }
}

void sub_2393AC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  os_unfair_lock_unlock(v17 + 2);

  _Unwind_Resume(a1);
}

void sub_2393AC7D4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
    [*(a1 + 48) setMetricData:v5 forKey:v6];
  }
}

uint64_t sub_2393ACB1C(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = sub_2393D9044(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[4];
      v6 = a1[8];
      *buf = 138412802;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> executing work item [%llu] (retry %zd)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v15 = a1[8];
      v17 = a1[7];
      v14 = a1[4];
LABEL_10:
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    if (v4)
    {
      v8 = a1[4];
      v9 = a1[8];
      *buf = 138412546;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> executing work item [%llu]", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v10 = a1[4];
      v16 = a1[8];
      goto LABEL_10;
    }
  }

  v11 = a1[5];
  if (v11)
  {
    result = (*(v11 + 16))(v11, a1[4], a1[7], a1[6]);
  }

  else
  {
    result = (*(a1[6] + 16))(a1[6], 0, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2393ACF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  os_unfair_lock_unlock(v14 + 2);

  _Unwind_Resume(a1);
}

void sub_2393AD2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  os_unfair_lock_unlock(v16 + 2);

  _Unwind_Resume(a1);
}

void sub_2393AD2E4(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if (*(a1 + 32) <= *(a1 + 40))
    {
      v4 = (a1 + 24);
      v5 = [*(a1 + 24) count];
      v6 = *(a1 + 32);
      if (v5 >= v6 && v6 != *(a1 + 40) && [*(a1 + 24) count] != *(a1 + 32))
      {
        if (*a2)
        {
          v8 = [*(a1 + 24) objectAtIndexedSubscript:?];
          ++*(a1 + 32);
          v9 = [v8 batchingHandler];
          if (v9)
          {
            while ([*v4 count] > *(a1 + 32))
            {
              v10 = [*v4 objectAtIndexedSubscript:?];
              v11 = [v10 batchingHandler];
              if (!v11)
              {
                goto LABEL_27;
              }

              v12 = [v10 batchingID];
              LOBYTE(v12) = v12 == [v8 batchingID];

              if ((v12 & 1) == 0)
              {
                goto LABEL_27;
              }

              v13 = [v8 batchableData];
              v14 = [v10 batchableData];
              v15 = (v9)[2](v9, v13, v14);

              switch(v15)
              {
                case 2:
                  v16 = sub_2393D9044(0);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    v17 = *(a2 + 8);
                    v18 = [v10 uniqueID];
                    v19 = [v8 uniqueID];
                    *buf = 138412802;
                    v31 = v17;
                    v32 = 2048;
                    v33 = v18;
                    v34 = 2048;
                    v35 = v19;
                    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> fully merged work item [%llu] into %llu", buf, 0x20u);
                  }

                  if (sub_2393D5398(2u))
                  {
                    v20 = *(a2 + 8);
                    v28 = [v10 uniqueID];
                    v29 = [v8 uniqueID];
                    v27 = v20;
                    sub_2393D5320(0, 2);
                  }

                  [*v4 removeObjectAtIndex:{1, v27, v28, v29}];
                  break;
                case 0:
                  goto LABEL_27;
                case 1:
                  v21 = sub_2393D9044(0);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = *(a2 + 8);
                    v24 = [v10 uniqueID];
                    v25 = [v8 uniqueID];
                    *buf = 138412802;
                    v31 = v23;
                    v32 = 2048;
                    v33 = v24;
                    v34 = 2048;
                    v35 = v25;
                    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> partially merged work item [%llu] into %llu", buf, 0x20u);
                  }

                  if (sub_2393D5398(2u))
                  {
                    v26 = *(a2 + 8);
                    [v10 uniqueID];
                    [v8 uniqueID];
                    sub_2393D5320(0, 2);
                  }

LABEL_27:

                  goto LABEL_28;
              }
            }
          }

LABEL_28:
          sub_23952DF20(a1, v8, a2);
        }

        else
        {
          sub_23952DFF8((a1 + 24));
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2393AD864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  os_unfair_lock_unlock(v20 + 2);

  _Unwind_Resume(a1);
}

void sub_2393AD8A8(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if (*(a1 + 40))
    {
      v8 = 0;
      while (1)
      {
        v9 = [*(a1 + 24) objectAtIndexedSubscript:v8];

        if (v9 == v7)
        {
          break;
        }

        if (++v8 >= *(a1 + 40))
        {
          goto LABEL_6;
        }
      }

      if (a4)
      {
        v11 = sub_2393D9044(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a3 + 8);
          *buf = 138412546;
          v20 = v12;
          v21 = 2048;
          v22 = [v7 uniqueID];
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> retry needed for work item [%llu]", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v18 = *(a3 + 8);
          [v7 uniqueID];
          sub_2393D5320(0, 2);
        }

        sub_23952DF20(a1, v7, a3);
      }

      else
      {
        sub_23952DEA0(v7);
        [*(a1 + 24) removeObjectAtIndex:v8];
        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a3 + 8);
          v15 = [*(a1 + 24) count];
          *buf = 138412802;
          v20 = v14;
          v21 = 2048;
          v22 = v15;
          v23 = 2048;
          v24 = [v7 uniqueID];
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@, items count: %lu> completed work item [%llu]", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          v16 = *(a3 + 8);
          [*(a1 + 24) count];
          [v7 uniqueID];
          sub_2393D5320(0, 2);
        }

        v17 = *(a1 + 32);
        if (v17)
        {
          *(a1 + 32) = v17 - 1;
          sub_2393AD2E4(a1, a3);
        }
      }
    }
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393ADB24(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    sub_2393ADE68(v8, WeakRetained);
    os_unfair_lock_lock(WeakRetained + 2);
    v5 = *(a1 + 32);
    if (v5 && v5[2] == 1)
    {
      v6 = 0;
    }

    else
    {
      sub_2393AD8A8(WeakRetained, v5, v8, a2 == 1);
      v6 = 1;
    }

    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_2393ADBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_2393ADD8C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

uint64_t sub_2393ADE68(uint64_t a1, os_unfair_lock *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = a2;
  os_unfair_lock_assert_not_owner(a2 + 2);
  WeakRetained = objc_loadWeakRetained(v4 + 2);

  v6 = *a1;
  *a1 = WeakRetained;

  v7 = [*a1 description];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  return a1;
}

void sub_2393AE1B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *sub_2393AE1F0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v44.receiver = a1;
    v44.super_class = MTRServerEndpoint;
    v13 = objc_msgSendSuper2(&v44, sel_init);
    a1 = v13;
    if (v13)
    {
      *(v13 + 21) = 0;
      v14 = [v9 copy];
      v15 = a1[11];
      a1[11] = v14;

      v16 = [v10 copy];
      v17 = a1[12];
      a1[12] = v16;

      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = a1[1];
      a1[1] = v18;

      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = a1[2];
      a1[2] = v20;

      v22 = [MEMORY[0x277CBEB98] set];
      v23 = a1[9];
      a1[9] = v22;

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = v11;
      v25 = [v24 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v25)
      {
        v26 = *v41;
        do
        {
          v27 = 0;
          do
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = [*(*(&v40 + 1) + 8 * v27) copy];
            [a1 addAccessGrant:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v24 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v25);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = v12;
      v30 = [v29 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v30)
      {
        v31 = *v37;
        do
        {
          v32 = 0;
          do
          {
            if (*v37 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [*(*(&v36 + 1) + 8 * v32) copy];
            [a1 addServerCluster:v33];

            ++v32;
          }

          while (v30 != v32);
          v30 = [v29 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v30);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2393AE58C(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 84));
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v3 = [*(a1 + 8) copy];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = sub_2393AE674;
      v5[3] = &unk_278A72298;
      v5[4] = a1;
      v6 = v3;
      v4 = v3;
      [WeakRetained asyncDispatchToMatterQueue:v5 errorHandler:0];
    }
  }
}

void sub_2393AE6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 21);

  _Unwind_Resume(a1);
}

void sub_2393AE76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 21);

  _Unwind_Resume(a1);
}

void sub_2393AEB2C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 21);

  _Unwind_Resume(a1);
}

void sub_2393AED40(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 21);

  _Unwind_Resume(a1);
}

uint64_t sub_2393AED8C(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 84));
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = *(a1 + 16);
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v5)
    {
      v6 = *v25;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (([*(*(&v24 + 1) + 8 * i) associateWithController:v3] & 1) == 0)
          {
            a1 = 0;

            goto LABEL_28;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = [*(a1 + 8) copy];
    v9 = *(a1 + 72);
    *(a1 + 72) = v8;

    v10 = [*(a1 + 16) count];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1 + 16);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v12)
    {
      v13 = *v21;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v20 + 1) + 8 * j) clusterID];
          v16 = [v15 isEqual:&unk_284C43BE0];

          if (v16)
          {

            goto LABEL_21;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    ++v10;
LABEL_21:
    if (v10 < 0xFF)
    {
      operator new[]();
    }

    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v29 = v10;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unable to create endpoint with %llu clusters; it's too many", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    a1 = 0;
  }

LABEL_28:

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

const os_unfair_lock *sub_2393AF400(const os_unfair_lock *result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 21);
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(v1 + 16);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v5++) invalidate];
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }

    result = sub_23952E138(v2, v1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2393AFD64(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952B198();
    }
  }

  return result;
}

void MTRSetLogCallback(MTRLogType logTypeThreshold, MTRLogCallback callback)
{
  v8 = callback;
  +[MTRDeviceControllerFactory initialize]_0();
  os_unfair_lock_lock(&unk_27DF776F0);
  if (v8)
  {
    sub_2393D5310(sub_2393AFE80);
    if (logTypeThreshold <= MTRLogTypeError)
    {
      v3 = MTRLogTypeError;
    }

    else
    {
      v3 = logTypeThreshold;
    }

    if (v3 >= MTRLogTypeDetail)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3;
    }

    sub_2393D5388(v4);
    v5 = MEMORY[0x23EE78590](v8);
    v6 = qword_27DF776F8;
    qword_27DF776F8 = v5;
  }

  else
  {
    v7 = qword_27DF776F8;
    qword_27DF776F8 = 0;

    sub_2393D5388(0);
    sub_2393D5310(0);
  }

  os_unfair_lock_unlock(&unk_27DF776F0);
}

void sub_2393AFE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(&unk_27DF776F0);

  _Unwind_Resume(a1);
}

void sub_2393AFE80(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(&unk_27DF776F0);
  v13 = MEMORY[0x23EE78590](qword_27DF776F8);
  os_unfair_lock_unlock(&unk_27DF776F0);
  if (v13)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v10 = [v8 initWithFormat:v9 arguments:a4];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    if (a2 >= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = a2;
    }

    v13[2](v13, v12, v11, v10);
  }
}

id sub_2393AFFBC(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB0] localTimeZone];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
    [v2 daylightSavingTimeOffset];
    v5 = v4;
    v6 = [v2 nextDaylightSavingTimeTransition];
    v7 = v6;
    if (a1)
    {
      v8 = v6;
      v9 = &unk_284C43BF8;
      while (1)
      {
        v10 = objc_alloc_init(MTRTimeSynchronizationClusterDSTOffsetStruct);
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
        [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 setOffset:v11];

        [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 setValidStarting:v9];
        if (v8)
        {
          v21 = 0;
          if (!sub_239221564(v8, &v21))
          {
            v19 = sub_2393D9044(0);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *v20 = 0;
              _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Future daylight savings transition is before Matter epoch start?", v20, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1);
            }

            v17 = 0;
            goto LABEL_19;
          }

          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
          [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 setValidUntil:v12];
        }

        else
        {
          [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 setValidUntil:0];
        }

        [v3 addObject:v10];
        v13 = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 validUntil];

        if (!v13)
        {

          v15 = v9;
          v7 = v8;
          goto LABEL_18;
        }

        [v2 daylightSavingTimeOffsetForDate:v8];
        v5 = v14;
        v15 = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v10 validUntil];

        v7 = [v2 nextDaylightSavingTimeTransitionAfterDate:v8];

        v8 = v7;
        v9 = v15;
        if (!--a1)
        {
          goto LABEL_18;
        }
      }
    }

    v15 = &unk_284C43BF8;
LABEL_18:
    v17 = [v3 copy];
    v9 = v15;
    v8 = v7;
LABEL_19:
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Could not retrieve local time zone. Unable to determine DST offsets.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v17 = 0;
  }

  return v17;
}

void *sub_2393B0330(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = MTRDeviceDelegateInfo;
    a1 = objc_msgSendSuper2(&v18, sel_initWithDelegate_queue_, v9, v10);
    if (a1)
    {
      v13 = [v11 copy];
      v14 = a1[4];
      a1[4] = v13;

      v15 = [v12 copy];
      v16 = a1[5];
      a1[5] = v15;
    }
  }

  return a1;
}

void sub_2393B0D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  os_unfair_lock_unlock(v12 + 2);
  _Unwind_Resume(a1);
}

void sub_2393B0DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_2393B22E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x1910000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2393B2384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 count] != 1)
    {
      v7 = 0;
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:0];
      goto LABEL_7;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [v8 alloc];
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = 0;
      v7 = [v9 initWithResponseValue:v10 error:&v11];
      v6 = v11;

      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = 0;
LABEL_7:
  (*(*(a1 + 32) + 16))();
}

void sub_2393B26BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x1BD00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2393B2964(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x1C900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2393B2BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x1D400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2393B2E5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x1DF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2393B4ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18)
{
  os_unfair_lock_unlock(v18 + 2);

  _Unwind_Resume(a1);
}

uint64_t sub_2393B4EDC(uint64_t result, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v6 = result;
  v7 = (result + 8);
  if (*(result + 8) == 1)
  {
    result = sub_2393B5040(result, a3);
    if (result)
    {
      if (!*(v6 + 24))
      {
        *(v6 + 24) = a4;
        *(v6 + 26) = BYTE2(a4);
      }

      return result;
    }

    v9 = *(v6 + 32);
    v10 = sub_2393B50CC(v7);
    v11 = *(v10 + 2);
    v15 = *v10;
    v16 = v11;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    result = (*(*v9 + 16))(v9, a2, &v15, *(v6 + 24) | (*(v6 + 26) << 16));
  }

  if (*(a3 + 14) >= 2u)
  {
    result = sub_2393DDF30(&v15, 3);
    if (v15 > 1u)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      if ((*(&v15 + 1) & 0x100) != 0)
      {
        v12 = BYTE1(v15);
      }

      else
      {
        v12 = 0;
      }

      if ((*(&v15 + 1) & 0x100) != 0)
      {
        v13 = HIBYTE(*(&v15 + 1));
      }

      else
      {
        v13 = 0;
      }
    }

    a4 = (v12 << 8) | (v13 << 16) | v15;
  }

  *(v6 + 8) = 1;
  v14 = *a3;
  *(v6 + 20) = *(a3 + 2);
  *(v6 + 12) = v14;
  *(v6 + 26) = BYTE2(a4);
  *(v6 + 24) = a4;
  return result;
}

BOOL sub_2393B5040(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 14) < 2u)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = (a1 + 8);
  if (v3 != 1)
  {
    return 0;
  }

  v5 = sub_2393B50CC(v2);
  return *v5 == *a2 && *(v5 + 1) == *(a2 + 1) && *(v5 + 2) == *(a2 + 2) && *(a2 + 14) == 4;
}

_BYTE *sub_2393B50CC(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952E53C();
  }

  return a1 + 4;
}

uint64_t sub_2393B5114(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 == 1)
  {
    v6 = *(a1 + 32);
    v7 = sub_2393B50CC(v4);
    v8 = *(v7 + 2);
    v10 = *v7;
    v11 = v8;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    (*(*v6 + 16))(v6, a2, &v10, *(a1 + 24) | (*(a1 + 26) << 16));
  }

  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
}

uint64_t sub_2393B5200(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  LOBYTE(v21) = 0;
  v5 = *a3;
  if (*(a1 + 632) == 1 && *(a3 + 2) == 0 && *(a3 + 3) == 1 && v5 == 1)
  {
    *buf = 0;
    v23 = 0;
    v13 = sub_2394DEFB4(a4, buf);
    v12 = v13;
    if (v13)
    {
      v14 = HIDWORD(v13);
    }

    else
    {
      v12 = *buf;
      if (!*buf)
      {
        v19 = sub_2393B5424(a1);
        v14 = HIDWORD(v19);
        v12 = v19;
        if (!v19)
        {
          if (*(a1 + 24))
          {
            v11 = 0;
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v15 = 1;
        LOBYTE(v21) = 1;
        goto LABEL_23;
      }

      v14 = *&buf[4];
    }

    LOBYTE(v21) = 1;
    v15 = 0x80;
LABEL_23:
    HIBYTE(v21) = v15;
    goto LABEL_24;
  }

  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "CommandResponseSender: Unexpected message type %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v20 = *a3;
    sub_2393D5320(0xDu, 3);
  }

  if (*(a1 + 632) != 2)
  {
    v21 = 257;
    v12 = 42;
    v14 = 58;
LABEL_24:
    v16 = sub_2393B5524(&v21);
    sub_2394DEE10(*v16, *(a1 + 624), 0);
LABEL_25:
    sub_2393B5878(a1, 2u);
    (*(**(a1 + 32) + 16))(*(a1 + 32), a1);
    v11 = v14 << 32;
    goto LABEL_26;
  }

  sub_2394DEE10(0x80u, *(a1 + 624), 0);
  v11 = 0x3A00000000;
  v12 = 42;
LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

uint64_t sub_2393B5424(uint64_t a1)
{
  v2 = (a1 + 24);
  if (*(a1 + 24))
  {
    sub_2393D9EB8((a1 + 24), &v11);
    v10 = 0;
    if (*v2 || *(a1 + 633) == 1)
    {
      v10 = 1;
      v3 = sub_2393B59AC(a1 + 608);
      sub_239470428(v3, 2000);
    }

    v4 = sub_2393B59AC(a1 + 608);
    v5 = sub_239470478(v4, 0x10000u, 9, &v11, &v10);
    v6 = v5 & 0xFFFFFFFF00000000;
    v7 = v5;
    if (v11)
    {
      sub_2393D96C8(v11);
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else if (*(a1 + 633) == 1)
  {
    sub_2394DEE10(0x89u, *(a1 + 624), 0);
    v8 = 0;
    v7 = 0;
    *(a1 + 633) = 0;
  }

  else
  {
    v8 = 0x8F00000000;
    v7 = 3;
  }

  return v7 | v8;
}

_BYTE *sub_2393B5524(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952E5FC();
  }

  return a1 + 1;
}

uint64_t sub_2393B5544(uint64_t a1)
{
  sub_2393B5878(a1, 2u);
  v2 = *(**(a1 + 32) + 16);

  return v2();
}

uint64_t sub_2393B55A4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 632);
    if (v3 > 3)
    {
      v4 = "N/A";
    }

    else
    {
      v4 = off_278A75C58[v3];
    }

    *buf = 68157954;
    v10 = 10;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "CommandResponseSender: Timed out waiting for response from requester mState=[%10.10s]", buf, 0x12u);
  }

  if (sub_2393D5398(3u))
  {
    v5 = *(a1 + 632);
    if (v5 <= 3)
    {
      v6 = off_278A75C58[v5];
    }

    sub_2393D5320(0xDu, 3);
  }

  sub_2393B5878(a1, 2u);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32), a1);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const char *sub_2393B56F8(uint64_t a1)
{
  v1 = *(a1 + 632);
  if (v1 > 3)
  {
    return "N/A";
  }

  else
  {
    return off_278A75C58[v1];
  }
}

uint64_t sub_2393B5720(uint64_t a1)
{
  if (*(a1 + 632))
  {
    sub_23952E694();
  }

  if (sub_2393B5424(a1))
  {
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Failed to send InvokeResponseMessage", v5, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    sub_2393B5878(a1, 2u);
    return (*(**(a1 + 32) + 16))(*(a1 + 32), a1);
  }

  else if (*(a1 + 24) || *(a1 + 633) == 1)
  {
    sub_2393B5878(a1, 1u);
    result = sub_2393B59AC(a1 + 608);
    *(result + 40) = a1;
  }

  else
  {
    sub_2393B5878(a1, 2u);
    v4 = *(**(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2393B5878(uint64_t result, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(result + 632) != a2)
  {
    v3 = result;
    *(result + 632) = a2;
    v4 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (a2 > 3)
      {
        v5 = "N/A";
      }

      else
      {
        v5 = off_278A75C58[a2];
      }

      *buf = 68157954;
      v10 = 10;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Command response sender moving to [%10.10s]", buf, 0x12u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v6 = *(v3 + 632);
      if (v6 <= 3)
      {
        v7 = off_278A75C58[v6];
      }

      result = sub_2393D5320(0xDu, 3);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393B59AC(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    sub_23952E72C();
  }

  return result;
}

uint64_t sub_2393B59C8(uint64_t a1)
{
  if (*(a1 + 632) == 3)
  {
    sub_2393B5878(a1, 2u);
    v2 = *(**(a1 + 32) + 16);

    return v2();
  }

  else
  {

    return sub_2393B5720(a1);
  }
}

uint64_t sub_2393B5A60(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_2393B5A90(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_2393B5AC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2393B5AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 1;
  }
}

void *sub_2393B5B28(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a2)
  {
    sub_23952E8BC();
  }

  if (*(a1 + 632))
  {
    sub_23952E7C4();
  }

  v8 = a1 + 608;
  sub_238EF9EEC(a1 + 608);
  *(a1 + 624) = a2;
  *(a2 + 40) = v8;
  v9 = sub_2393B59AC(a1 + 608);
  *(v9 + 8) |= 0x40u;
  sub_2394C4564(v12, a1 + 48);
  v10 = sub_2394DC26C(a1 + 48, a1 + 16, a3, a4);
  if (v10)
  {
    if (*(a1 + 632))
    {
      sub_23952E824();
    }

    sub_2394DEE10(v10, *(a1 + 624), 0);
    sub_2393B5878(a1, 3u);
  }

  sub_2394C4510(v12);
  return sub_238EA9350(v12);
}

uint64_t sub_2393B5C00(uint64_t a1)
{
  if (*(a1 + 624) && (*(sub_2393B59AC(a1 + 608) + 88) & 1) != 0)
  {
    v2 = sub_2393B59AC(a1 + 608);
    sub_238EA6DC0(v2, &v6);
    v3 = (*(*v6 + 80))(v6);
    (*(*v6 + 32))(v6);
    if (v3)
    {
      return 63902;
    }

    else
    {
      return 1194;
    }
  }

  else
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Session not available. Unable to infer session-specific buffer capacities.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    return 1194;
  }
}

void *sub_2393B5D24(void *a1)
{
  *a1 = &unk_284BB78D8;
  a1[1] = &unk_284BB7980;
  a1[2] = &unk_284BB79B8;
  a1[76] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 76));
  sub_2394DBF88(a1 + 6);
  v2 = a1[3];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[3] = 0;
  return a1;
}

void sub_2393B5DE0(void *a1)
{
  *a1 = &unk_284BB78D8;
  a1[1] = &unk_284BB7980;
  a1[2] = &unk_284BB79B8;
  a1[76] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 76));
  sub_2394DBF88(a1 + 6);
  v2 = a1[3];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[3] = 0;

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393B5EC4(uint64_t a1)
{
  if (!*(a1 + 624))
  {
    sub_23952E9B8();
  }

  v1 = sub_2393B59AC(a1 + 608);
  sub_238EA6DC0(v1, &v3);
  (*(*v3 + 64))(v3);
  return (*(*v3 + 32))(v3);
}

uint64_t sub_2393B5F5C(uint64_t a1)
{
  if (!*(a1 + 624))
  {
    sub_23952EA50();
  }

  v1 = sub_2393B59AC(a1 + 608);
  sub_238EA6DC0(v1, &v4);
  v2 = v4[24];
  (*(*v4 + 32))(v4);
  return v2;
}

uint64_t sub_2393B5FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 624))
  {
    sub_23952EAE8();
  }

  v3 = sub_2393B59AC(a1 + 608);
  sub_238EA6DC0(v3, &v6);
  if ((*(*v6 + 16))(v6) == 3)
  {
    *(a2 + 2) = *(sub_239495400(v6) + 44);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return (*(*v6 + 32))(v6);
}

unint64_t sub_2393B6088(unint64_t result)
{
  if (*(result + 624))
  {
    v1 = sub_2393B59AC(result + 608) + 8;

    return sub_23947398C(v1);
  }

  return result;
}

void *sub_2393B60C4(void *result, uint64_t *a2)
{
  if (*(result + 632))
  {
    sub_23952EB80();
  }

  if (result[3])
  {
    v3 = result[3];

    return sub_2393D982C(v3, a2);
  }

  else
  {
    result[3] = *a2;
    *a2 = 0;
  }

  return result;
}

void sub_2393B6114(void *a1)
{
  *(a1 - 1) = &unk_284BB78D8;
  *a1 = &unk_284BB7980;
  a1[1] = &unk_284BB79B8;
  a1[75] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 75));
  sub_2394DBF88(a1 + 5);
  v2 = a1[2];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[2] = 0;
}

void sub_2393B61CC(void *a1)
{
  *(a1 - 1) = &unk_284BB78D8;
  *a1 = &unk_284BB7980;
  a1[1] = &unk_284BB79B8;
  a1[75] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 75));
  sub_2394DBF88(a1 + 5);
  v2 = a1[2];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[2] = 0;

  JUMPOUT(0x23EE77B60);
}

void sub_2393B62A8(void *a1)
{
  *(a1 - 2) = &unk_284BB78D8;
  *(a1 - 1) = &unk_284BB7980;
  *a1 = &unk_284BB79B8;
  a1[74] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 74));
  sub_2394DBF88(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[1] = 0;
}

void sub_2393B6360(void *a1)
{
  *(a1 - 2) = &unk_284BB78D8;
  *(a1 - 1) = &unk_284BB7980;
  *a1 = &unk_284BB79B8;
  a1[74] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 74));
  sub_2394DBF88(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[1] = 0;

  JUMPOUT(0x23EE77B60);
}

void sub_2393B64A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_2393B64CC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v20 = 0x5900000000;
LABEL_12:
    v21 = 47;
    return v21 | v20;
  }

  if (!a3)
  {
    v20 = 0x5A00000000;
    goto LABEL_12;
  }

  if (*(a1 + 6) == 3)
  {
    v10 = 0;
    v11 = 0;
    a1[2] = a2;
    v12 = a3 - 1;
    v13 = a3;
    do
    {
      v14 = v10 + 1;
      v15 = a4 + 96 * v10;
      if (v10 >= v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15 + 96;
      }

      v17 = a5 + 16 * v10;
      v18 = *(v17 + 12);
      sub_2393C5770(v15, *v17, *(v17 + 8));
      *(v15 + 64) = v11;
      *(v15 + 72) = v16;
      *(v15 + 80) = v18;
      v10 = v14;
      v11 = v15;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
    }

    while (v14 != v13);
    a1[4] = a6;
    v19 = (*(*a6 + 32))(a6);
    v20 = 0;
    v21 = 0;
    a1[5] = v19;
    a1[1] = a4;
    a1[3] = 1;
    a1[8] = a7;
    a1[9] = a8;
  }

  else
  {
    v20 = 0x5B00000000;
    v21 = 3;
  }

  return v21 | v20;
}

uint64_t sub_2393B6620(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  result = sub_2393C5770(a1, a2, a3);
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  return result;
}

unint64_t sub_2393B6660(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v17);
  sub_2393C5AAC(v16);
  v3 = *(a2 + 72);
  if (v3)
  {
    v13 = *(v3 + 56);
    v11 = *(v3 + 24);
    v12 = *(v3 + 40);
    v10 = *(v3 + 8);
    v14 = *(v3 + 64);
    v15 = *(v3 + 80);
    *(v3 + 24) = sub_2393B6850;
    sub_2393C7BF0(v17, v3, 0xFFFFFFFF);
    sub_2393C5B2C(v16, a2, *(a2 + 56));
    v4 = sub_2393C6B34(v16);
    if (v4 || (v4 = sub_2393C8958(v17, v16), v4) || (v4 = sub_2393C7CB8(v17), v4))
    {
      *(v3 + 56) = v13;
      *(v3 + 40) = v12;
      *(v3 + 24) = v11;
      *(v3 + 8) = v10;
      *(v3 + 64) = v14;
      *(v3 + 80) = v15;
    }

    else
    {
      v7 = sub_2393D9044(0x1Au);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(v3 + 80);
        *buf = 67109120;
        v19 = v8;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Copy Event to next buffer with priority %u", buf, 8u);
      }

      if (sub_2393D5398(3u))
      {
        v9 = *(v3 + 80);
        sub_2393D5320(0x1Au, 3);
      }
    }
  }

  else
  {
    v4 = 0x870000002FLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_2393B6864(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 8);
  LODWORD(a1) = 25;
  v6 = v5;
  do
  {
    if (!v6)
    {
      break;
    }

    if (*(v6 + 40) < a2)
    {
      v13 = 0xB300000000;
      return a1 | v13;
    }

    v6 = *(v6 + 72);
    if (!v6)
    {
      break;
    }
  }

  while (*(v6 + 80) <= a3);
  if (v5)
  {
    v7 = *(v5 + 40);
    v8 = *(v5 + 56);
    if ((v7 - v8) >= a2)
    {
      v13 = 0;
      LODWORD(a1) = 0;
    }

    else
    {
      v9 = 0;
      LODWORD(a1) = 0;
      while (v3 <= (v7 - v8))
      {
LABEL_17:
        v12 = *(v4 + 8);
        if (v5 == v12)
        {
          *(v12 + 24) = 0;
          *(*(v4 + 8) + 16) = 0;
          v13 = v9;
          return a1 | v13;
        }

        v9 = 0;
        LODWORD(a1) = 0;
        v11 = *(v5 + 64);
        v3 = *(v11 + 88);
LABEL_19:
        v7 = *(v11 + 40);
        v8 = *(v11 + 56);
        v5 = v11;
      }

      while (1)
      {
        v15 = v5;
        v16 = 0;
        *(v5 + 16) = &v15;
        *(v5 + 24) = sub_2393B6A64;
        a1 = sub_2393C578C(v5);
        if (!a1)
        {
          v9 = a1;
          v11 = v5;
          LODWORD(a1) = 0;
          goto LABEL_19;
        }

        v10 = v16;
        if (!v16)
        {
LABEL_26:
          v13 = a1 & 0xFFFFFFFF00000000;
          return a1 | v13;
        }

        v11 = *(v5 + 72);
        if (!v11)
        {
          v13 = 0xD100000000;
          goto LABEL_23;
        }

        if (v16 > (*(v11 + 40) - *(v11 + 56)))
        {
          v9 = a1 & 0xFFFFFFFF00000000;
          *(v5 + 88) = v3;
          v3 = v10;
          goto LABEL_19;
        }

        a1 = sub_2393B6660(a1, v5);
        if (a1)
        {
          goto LABEL_26;
        }

        *(v5 + 24) = 0;
        a1 = sub_2393C578C(v5);
        v9 = a1;
        if (a1)
        {
          break;
        }

        if (v3 <= (*(v5 + 40) - *(v5 + 56)))
        {
          goto LABEL_17;
        }
      }

      v13 = a1 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v13 = 0xBA00000000;
LABEL_23:
    LODWORD(a1) = 3;
  }

  return a1 | v13;
}

unint64_t sub_2393B6A64(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = sub_2393C6B34(a3);
  v6 = v5;
  if (v5)
  {
    goto LABEL_5;
  }

  v28 = 0;
  v27 = 0;
  v5 = sub_2393C6A2C(a3, &v28);
  v6 = v5;
  if (v5 || (v5 = sub_2393C6B34(a3), v6 = v5, v5) || (v5 = sub_2393C6A2C(a3, &v27), v6 = v5, v5))
  {
LABEL_5:
    v7 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v19 = 0;
    v20 = xmmword_2395C1BA0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v10 = sub_2393C76F4(a3, sub_2393B7BD0, &v19, 0);
    if (v10 == 33)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v7 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = sub_2393C6A98(a3, v27);
      if (v10 || (v10 = sub_2393C6A98(a3, v28), v10))
      {
        v7 = v10 & 0xFFFFFFFF00000000;
      }

      else
      {
        v12 = v21;
        v13 = *a2;
        v14 = *(*a2 + 72);
        if (v14 && *(v14 + 80) <= v21)
        {
          v17 = *(a3 + 56);
          v7 = 0x35100000000;
          LODWORD(v10) = 33;
        }

        else
        {
          v15 = sub_2393D9044(0x1Au);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(v13 + 80);
            *buf = 67109888;
            v30 = v16;
            v31 = 1024;
            v32 = HIDWORD(v25);
            v33 = 1024;
            v34 = v25;
            v35 = 1024;
            v36 = v12;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Dropped 1 event from buffer with priority %u and event number  0x%08X%08X due to overflow: event priority_level: %u", buf, 0x1Au);
          }

          if (sub_2393D5398(2u))
          {
            v18 = *(v13 + 80);
            sub_2393D5320(0x1Au, 2);
          }

          v17 = 0;
          v7 = 0;
          LODWORD(v10) = 0;
        }

        a2[1] = v17;
      }
    }

    v6 = v10;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

unint64_t sub_2393B6C9C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  sub_2393C7B90(v29);
  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_284BB83A8;
  v32 = 0;
  v8 = *(a3 + 12);
  v9 = *(a1 + 40);
  v16 = v29;
  v17 = v8;
  v18 = v9;
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v28[0] = 0;
  *(v28 + 5) = 0;
  sub_2393D9C18(0x200uLL, 0x26u, &v15);
  if (v15)
  {
    sub_238EA16C4(v31, &v15, 0);
    v10 = sub_2393C7BF0(v29, v31, 0xFFFFFFFF);
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v11 = sub_2393B6DF4(v10, &v16, a2, a3);
    v12 = v11;
    v13 = HIDWORD(v11);
    if (!v11)
    {
      *a4 = v30;
    }

    if (v15)
    {
      sub_2393D96C8(v15);
    }
  }

  else
  {
    LODWORD(v13) = 273;
    v12 = 11;
  }

  sub_2393B8400(v31);
  return v12 | (v13 << 32);
}

unint64_t sub_2393B6DF4(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2[7] >= a2[2])
  {
    v26[8] = v4;
    v26[9] = v5;
    if (!a4)
    {
      v7 = 0x12500000000;
      v6 = 47;
      return v7 | v6;
    }

    sub_2393DB79C(&v21);
    sub_2393DB79C(&v22);
    sub_2393DB79C(&v23);
    sub_2393DB79C(&v24);
    sub_2393DB79C(&v25);
    sub_2393DB79C(v26);
    v11 = sub_2393DD7B8(&v21, *a2);
    if (v11)
    {
      goto LABEL_11;
    }

    v12 = sub_2393DB524(&v21);
    v11 = v21;
    if (v21)
    {
      goto LABEL_11;
    }

    v13 = sub_2393DB71C(v12);
    v11 = *v12;
    if (*v12)
    {
      goto LABEL_9;
    }

    v15 = sub_2393DB890(v13, *a4);
    v16 = sub_2393DB8D0(v15, *(a4 + 1));
    v17 = sub_2393DAF28(v16, *(a4 + 2));
    v11 = sub_2393DA87C(v17);
    if (v11)
    {
      goto LABEL_11;
    }

    v19 = sub_2393DAEA8(v12, a2[7]);
    sub_2393DC21C(v19, *(a2 + 8));
    v11 = *v12;
    if (*v12)
    {
      goto LABEL_9;
    }

    v20 = *(a4 + 3);
    if (*(a4 + 16))
    {
      sub_2393DC25C(v12, v20);
    }

    else
    {
      sub_2393DC29C(v12, v20);
    }

    v11 = *v12;
    if (*v12)
    {
LABEL_9:
      v14 = v12[1];
    }

    else
    {
      v11 = (*(*a3 + 16))(a3, *a2);
      if (!v11)
      {
        if (*(a4 + 13))
        {
          sub_2393C8140(*a2, 0xFFFFFFFE00000001, *(a4 + 13));
        }

        v11 = sub_2393DA87C(v12);
        if (!v11)
        {
          v11 = sub_2393DA87C(&v21);
          if (!v11)
          {
            v11 = sub_2393C7CB8(*a2);
            if (!v11)
            {
              LODWORD(v11) = 0;
              v7 = 0;
              *(a2 + 80) = 0;
              goto LABEL_12;
            }
          }
        }
      }
    }

LABEL_11:
    v7 = v11 & 0xFFFFFFFF00000000;
LABEL_12:
    v6 = v11;
    return v7 | v6;
  }

  v6 = 0;
  v7 = 0;
  return v7 | v6;
}

uint64_t sub_2393B6FD0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2394C7C20() + 1304;

  return sub_2393B64CC(&off_2819B7720, a1, a2, a3, a4, a5, a6, v12);
}

void sub_2393B7050()
{
  dword_2819B7738 = 3;
  qword_2819B7728 = 0;
  unk_2819B7730 = 0;
}

uint64_t sub_2393B7068(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  do
  {
    result = v2;
    v2 = *(v2 + 72);
  }

  while (v2 && *(v2 + 80) <= a2);
  return result;
}

unint64_t sub_2393B7088(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v3;
  v15 = *(a1 + 64);
  v4 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v4;
  v5 = *(a1 + 16);
  if (v5 == 0xFFFFFFFE00000001)
  {
    LODWORD(v11) = 0;
    v12 = 0;
    return v12 | v11;
  }

  if (v5 == 3)
  {
    v10 = a3[1];
    if ((*(v10 + 80) & 1) == 0 && *(v10 + 40) == *(v10 + 24))
    {
      v7 = *a3;
      v8 = *(v10 + 48) - *(v10 + 32);
      v9 = 5;
      goto LABEL_10;
    }

LABEL_11:
    v11 = sub_2393C8958(*a3, v14);
    goto LABEL_12;
  }

  if (v5 != 4)
  {
    goto LABEL_11;
  }

  v6 = a3[1];
  if ((*(v6 + 80) & 1) != 0 || *(v6 + 40) != *(v6 + 24))
  {
    goto LABEL_11;
  }

  v7 = *a3;
  v8 = *(v6 + 48) - *(v6 + 32);
  v9 = 6;
LABEL_10:
  v11 = sub_2393C8154(v7, v9, v8);
LABEL_12:
  v12 = v11 & 0xFFFFFFFF00000000;
  return v12 | v11;
}

uint64_t sub_2393B7170(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    v2 = sub_2393D9044(0x1Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "VendEventNumber";
      v7 = 2080;
      v8 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "%s Advance() failed with %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x1Au, 1);
    }
  }

  result = (*(**(a1 + 32) + 32))(*(a1 + 32));
  *(a1 + 40) = result;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393B72D8(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_23947632C("src/app/EventManagement.cpp", 414);
  if (*(a1 + 24) == 3)
  {
    return 0x19F00000003;
  }

  else
  {
    return sub_2393B735C(a1, a2, a3, a4);
  }
}

unint64_t sub_2393B735C(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = sub_2393C7B90(v46);
  v45 = 0;
  *a4 = 0;
  v9 = *(a3 + 12);
  v10 = *(a1 + 40);
  v31 = v46;
  v32 = v9;
  v33 = v10;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44[0] = 0;
  *(v44 + 5) = 0;
  if ((*(*off_27DF765E8 + 6))(off_27DF765E8, &v25, v8))
  {
    v11 = 0;
    v12 = (*(*off_27DF765E8 + 4))(off_27DF765E8) - *(a1 + 64);
  }

  else
  {
    v12 = v25;
    v11 = 1;
  }

  v29 = v11;
  v30 = v12;
  sub_2393C7BF0(v46, *(a1 + 8), 0xFFFFFFFF);
  v28 = *(a3 + 6);
  v26 = *a3;
  v27 = *(a3 + 2);
  v13 = *(a1 + 40);
  v37 = *(a1 + 56);
  v38 = v13;
  v14 = sub_2393B6C9C(a1, a2, &v26, &v45);
  if (!v14)
  {
    v15 = sub_2393B6864(a1, v45, *(a3 + 12));
    v14 = v15;
    if (!v15)
    {
      v14 = sub_2393B6DF4(v15, &v31, a2, &v26);
      if (!v14)
      {
        *(a1 + 28) += v47;
      }
    }
  }

  if (v14)
  {
    v16 = sub_2393D9044(0x1Au);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_2393C9138();
      *buf = 136315138;
      *v49 = v17;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Log event with error %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x1Au, 1);
    }
  }

  else
  {
    *a4 = *(a1 + 40);
    sub_2393B7170(a1);
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    v18 = sub_2393D9044(0x1Au);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *a4;
      v20 = HIDWORD(*a4);
      if (v29)
      {
        v21 = "Epoch";
      }

      else
      {
        v21 = "Sys";
      }

      *buf = 67111426;
      *v49 = v20;
      *&v49[4] = 1024;
      *&v49[6] = v19;
      v50 = 1024;
      v51 = v28;
      v52 = 1024;
      v53 = v26;
      v54 = 1024;
      v55 = HIWORD(HIDWORD(v26));
      v56 = 1024;
      v57 = WORD2(v26);
      v58 = 1024;
      v59 = v27;
      v60 = 2080;
      v61 = v21;
      v62 = 1024;
      v63 = HIDWORD(v30);
      v64 = 1024;
      v65 = v30;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_INFO, "LogEvent event number: 0x%08X%08X priority: %u, endpoint id:  0x%x cluster id: 0x%04X_%04X event id: 0x%x %s timestamp: 0x%08X%08X", buf, 0x42u);
    }

    if (sub_2393D5398(3u))
    {
      v22 = *a4;
      sub_2393D5320(0x1Au, 3);
    }

    v14 = (*(**(a1 + 72) + 16))(*(a1 + 72), &v26, *(a1 + 28));
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

unint64_t sub_2393B7770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2393C5AAC(v12);
  v10[1] = a3;
  v11 = 0;
  v10[0] = a2;
  sub_2393C5BDC(v12, a1);
  v6 = sub_2393C6A2C(v12, &v11 + 1);
  if (!v6)
  {
    v6 = sub_2393C8CE0(a2, 0x100uLL, 21, &v11 + 1);
    if (!v6)
    {
      v6 = sub_2393C6B34(v12);
      if (!v6)
      {
        v6 = sub_2393C6A2C(v12, &v11);
        if (!v6)
        {
          v6 = sub_2393C8CE0(a2, 1uLL, 21, &v11);
          if (!v6)
          {
            v6 = sub_2393C76F4(v12, sub_2393B7088, v10, 0);
            if (v6 == 33)
            {
              v9 = 0;
            }

            else
            {
              v9 = v6;
            }

            if (v9)
            {
              v7 = v9 & 0xFFFFFFFF00000000;
              return v6 | v7;
            }

            v6 = sub_2393C8DE0(a2, v11);
            if (!v6)
            {
              v6 = sub_2393C8DE0(a2, SHIDWORD(v11));
              if (!v6)
              {
                v6 = sub_2393C7CB8(a2);
                if (!v6)
                {
                  v7 = 0;
                  LODWORD(v6) = 0;
                  return v6 | v7;
                }
              }
            }
          }
        }
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

unint64_t sub_2393B78A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) < *(a1 + 16))
  {
    v4 = 0x21200000000;
    v5 = 192;
    return v5 | v4;
  }

  v33 = v2;
  v34 = v3;
  v8 = (a2 + 48);
  if (*(a2 + 48) == 1)
  {
    if (!*sub_238DE36D8((a2 + 48)) || (v9 = *(a1 + 88), v9 != *sub_238DE36D8(v8)))
    {
      v4 = 0x21900000000;
LABEL_26:
      v5 = 192;
      return v5 | v4;
    }
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 28);
  v12 = *(a2 + 36);
  v30 = *(a2 + 32);
  v31 = v11;
  v32 = v12;
  v13 = *(a1 + 72);
  if (!v13)
  {
    v4 = 0x21D00000000;
    goto LABEL_26;
  }

  v5 = 192;
  while (1)
  {
    v14 = *(v13 + 8);
    if ((v14 == 0xFFFF || v14 == v10) && (*v13 == -1 || *v13 == v11))
    {
      v17 = *(v13 + 4);
      if (v17 == -1 || v17 == v12)
      {
        break;
      }
    }

    v13 = *(v13 + 16);
    if (!v13)
    {
      v4 = 0x21D00000000;
      return v5 | v4;
    }
  }

  v20 = sub_2394C7C20();
  v21 = sub_2394C9128(v20);
  v22 = (*(*v21 + 56))(v21, &v30, &v29);
  if (v22)
  {
    v4 = v22 & 0xFFFFFFFF00000000;
  }

  else
  {
    v24 = *(a2 + 28);
    v25 = *(a2 + 32);
    v26 = 4;
    v27 = *(a2 + 36);
    v28 = 1;
    v23 = sub_23949D748();
    v22 = sub_23949CFB0(v23, a1 + 88, &v24, v29);
    if (v22)
    {
      if (v22 == 165)
      {
        v4 = 0x23900000000;
        LODWORD(v22) = 192;
      }

      else
      {
        if (v22 == 168)
        {
          v4 = 0x23900000000;
        }

        else
        {
          v4 = v22 & 0xFFFFFFFF00000000;
        }

        if (v22 == 168)
        {
          LODWORD(v22) = 192;
        }
      }
    }

    else
    {
      v4 = 0;
      LODWORD(v22) = 0;
    }
  }

  v5 = v22;
  return v5 | v4;
}

unint64_t sub_2393B7A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2393C5AAC(v12);
  v11 = 0;
  sub_2393C5BDC(v12, a1);
  if (!a4)
  {
    sub_23952EE60();
  }

  v7 = sub_2393C6A2C(v12, &v11 + 1);
  if (!v7)
  {
    v7 = sub_2393C6B34(v12);
    if (!v7)
    {
      v7 = sub_2393C6A2C(v12, &v11);
      if (!v7)
      {
        v7 = sub_2393C76F4(v12, sub_2393B7BD0, a4, 0);
        if (*a4 != 5)
        {
          v8 = 0x25100000000;
          LODWORD(v7) = 47;
          return v7 | v8;
        }

        if (v7 == 33)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7;
        }

        if (v10)
        {
          v8 = v10 & 0xFFFFFFFF00000000;
          return v7 | v8;
        }

        *(a3 + 40) = *(a4 + 8);
        *(a3 + 56) = *(a4 + 40);
        v7 = sub_2393B78A4(a3, a4);
        if (!v7)
        {
          v8 = 0x26000000000;
          LODWORD(v7) = 171;
          return v7 | v8;
        }

        if (v7 == 192)
        {
          v8 = 0;
          LODWORD(v7) = 0;
          return v7 | v8;
        }
      }
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_2393B7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2393C5AAC(v10);
  sub_2393C5BDC(v10, a1);
  v5 = v11;
  if (!v11)
  {
    sub_2393DD178(v9);
    v6 = sub_2393DD044(v9, a1);
    if (v6)
    {
      goto LABEL_21;
    }

    v6 = sub_2393DB830(v9, (a3 + 32));
    if (v6)
    {
      goto LABEL_21;
    }

    v6 = sub_2393DB840(v9, (a3 + 28));
    if (v6)
    {
      goto LABEL_21;
    }

    v6 = sub_2393DAA5C(v9, (a3 + 36));
    if (v6)
    {
      goto LABEL_21;
    }

    *a3 |= 1u;
    v5 = v11;
  }

  if (v5 == 2)
  {
    LOWORD(v9[0]) = 0;
    v6 = sub_2393C5F70(v10, v9);
    if (v6)
    {
      goto LABEL_21;
    }

    *(a3 + 24) = v9[0];
    *a3 |= 4u;
    v5 = v11;
  }

  if (v5 == 1)
  {
    v6 = sub_2393C5F2C(v10, (a3 + 40));
    if (v6)
    {
      goto LABEL_21;
    }

    v5 = v11;
  }

  if (v5 == 4)
  {
    *v9 = 0;
    v6 = sub_2393C5F2C(v10, v9);
    if (v6)
    {
      goto LABEL_21;
    }

    *(a3 + 8) = 0;
    *(a3 + 16) = *v9;
    v5 = v11;
  }

  if (v5 != 3)
  {
    goto LABEL_14;
  }

  *v9 = 0;
  v6 = sub_2393C5F2C(v10, v9);
  if (v6)
  {
LABEL_21:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v6 | v7;
  }

  *(a3 + 8) = 1;
  *(a3 + 16) = *v9;
  v5 = v11;
LABEL_14:
  if (v5 != 0xFFFFFFFE00000001)
  {
    v7 = 0;
    LODWORD(v6) = 0;
    return v6 | v7;
  }

  LOBYTE(v9[0]) = 0;
  v6 = sub_2393C5ED0(v10, v9);
  if (v6)
  {
    goto LABEL_21;
  }

  v7 = 0;
  LODWORD(v6) = 0;
  *(a3 + 48) = 1;
  *(a3 + 49) = v9[0];
  return v6 | v7;
}

__n128 sub_2393B7D7C(uint64_t a1, uint64_t a2, __n128 **a3)
{
  v12 = 0;
  v13 = xmmword_2395C1BA0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (sub_2393B7A98(a1, a2, a3, &v12) == 171)
  {
    v8 = **a3;
    v9 = (*a3)[1];
    v10 = (*a3)[2];
    v11 = (*a3)[3];
    v6 = sub_2393B7770(a1, *a3, a3);
    if (v6 && v6 != 33)
    {
      v7 = *a3;
      *v7 = v8;
      v7[1] = v9;
      result = v10;
      v7[2] = v10;
      v7[3] = v11;
    }

    else
    {
      a3[4] = a3[6];
      *(a3 + 80) = 0;
      a3[8] = (a3[8] + 1);
    }
  }

  return result;
}

unint64_t sub_2393B7E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, _OWORD *a6)
{
  sub_2393C5AAC(v30);
  sub_2393C5738(v29, 0, 0);
  v29[0] = &unk_284BB7B18;
  v29[8] = 0;
  v12 = *a4;
  v17 = a2;
  v18 = 3;
  v19 = v12;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v27 = 1;
  v28[0] = *a6;
  *(v28 + 13) = *(a6 + 13);
  v25 = 0;
  v26 = a3;
  v13 = sub_2393B7F9C(a1, v30, 2u, v29);
  if (!v13)
  {
    v13 = sub_2393C76F4(v30, sub_2393B7D7C, &v17, 0);
    if (v13 == 33)
    {
      v14 = 0;
      LODWORD(v13) = 0;
LABEL_7:
      v15 = v24 + 1;
      goto LABEL_8;
    }
  }

  v14 = HIDWORD(v13);
  if (v13 != 25 && v13 != 11)
  {
    goto LABEL_7;
  }

  v15 = v24;
LABEL_8:
  *a4 = v15;
  *a5 += v25;
  return v13 | (v14 << 32);
}

uint64_t sub_2393B7F9C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  do
  {
    v7 = v6;
    v6 = *(v6 + 72);
  }

  while (v6 && *(v6 + 80) <= a3);
  *(a4 + 64) = v7;
  sub_2393C5AAC(v10);
  v9 = &unk_284BB7BA8;
  sub_2393B81E4(&v9, a4);
  sub_2393C5BDC(a2, v10);
  return 0;
}

uint64_t sub_2393B8038(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_2393C5AAC(v10);
  v9 = 0;
  sub_2393C5BDC(v10, a1);
  if (!sub_2393C6A2C(v10, &v9 + 1) && !sub_2393C6FD0(v10, 1) && !sub_2393C6A2C(v10, &v9))
  {
    while (!sub_2393C6B34(v10))
    {
      if (v11 == 0xFFFFFFFE00000001)
      {
        v8 = 0;
        if (!sub_2393C5ED0(v10, &v8) && v8 == *a3)
        {
          v6 = *(v12 + 32);
          if (v13 == v6)
          {
            v7 = (v6 + *(v12 + 40) - 1);
          }

          else
          {
            v7 = (v13 - 1);
          }

          *v7 = 0;
        }

        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_2393B8120(uint64_t a1, char a2)
{
  v8 = a2;
  sub_2393C5AAC(v7);
  sub_2393C5738(v6, 0, 0);
  v6[0] = &unk_284BB7B18;
  v6[8] = 0;
  v3 = sub_2393B7F9C(a1, v7, 2u, v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v3 = sub_2393C76F4(v7, sub_2393B8038, &v8, 0);
    v4 = v3 & 0xFFFFFFFF00000000;
    if (v3 == 33)
    {
      v4 = 0;
      LODWORD(v3) = 0;
    }
  }

  return v3 | v4;
}

uint64_t sub_2393B81E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v4 = result;
    result = sub_2393C5B2C(result + 8, a2, *(v2 + 56));
    *(v4 + 68) = *(*(a2 + 64) + 56);
    for (i = *(*(a2 + 64) + 64); i; i = *(i + 64))
    {
      result = sub_2393C5738(v6, 0, 0);
      v7 = i;
      *(v4 + 68) += *(i + 56);
    }
  }

  return result;
}

uint64_t sub_2393B826C(uint64_t result, void *a2, _DWORD *a3)
{
  *a2 = *(result + 40);
  *a3 = *(result + 28);
  return result;
}

uint64_t sub_2393B8284(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 72);
  if ((a2 & 0x100) != 0)
  {
    v5[1] = a2;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v5[0] = v3;
  return (*(*v2 + 24))(v2, v5);
}

uint64_t sub_2393B830C(void **a1, uint64_t a2, void *a3, _DWORD *a4)
{
  (*(*a1[8] + 24))(a1[8]);
  if (*a4)
  {
    return 0;
  }

  v9 = a1[8][8];
  if (!v9)
  {
    return 0;
  }

  a1[8] = v9;
  *a3 = 0;
  return ((*a1)[3])(a1, a2, a3, a4);
}

void *sub_2393B8400(void *a1)
{
  *a1 = &unk_284BB83A8;
  v2 = a1[2];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[2] = 0;
  v3 = a1[1];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[1] = 0;
  return a1;
}

uint64_t sub_2393B847C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *a1 = &unk_284BB7C00;
  *(a1 + 8) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v5 = a1 + 88;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 59) = 0u;
  *(a1 + 88) = &unk_284BAA120;
  *(a1 + 96) = a1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = -1;
  *(a1 + 158) = 0;
  *(a1 + 160) = 0;
  *(a1 + 163) = 0;
  *(a1 + 167) = 3;
  *(a1 + 169) = 0;
  v6 = (a1 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = &unk_284BBBF18;
  *(a1 + 200) = 0;
  if (!a3)
  {
    sub_23952EFA8();
  }

  sub_238EF9EEC(a1 + 88);
  *(a1 + 104) = a3;
  *(a3 + 40) = v5;
  *(a1 + 169) = a4;
  *(a1 + 152) = 0;
  *(a1 + 40) = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 1392);
  *(a1 + 168) = 0;
  sub_2393B8624(a1, 2, 1);
  v11 = sub_2393B59AC(v5);
  sub_238EA6DC0(v11, &v13);
  sub_239495C6C(v6, &v13);
  (*(*v13 + 32))(v13);
  if (!a5)
  {
    sub_23952EF10();
  }

  *(a1 + 144) = a5;
  return a1;
}

uint64_t sub_2393B8624(uint64_t result, char a2, int a3)
{
  v3 = *(result + 166);
  if (v3 != 1)
  {
    LOBYTE(v4) = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_9:
    v6 = *(result + 168) & ~a2;
    goto LABEL_12;
  }

  if (*(result + 169))
  {
    v5 = *(result + 168);
    if ((v5 & 2) == 0)
    {
      v4 = (v5 >> 4) & 1;
      if (*(result + 16) > *(result + 24))
      {
        LOBYTE(v4) = 1;
      }

      if (a3)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v4) = 1;
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_11:
  v6 = *(result + 168) | a2;
LABEL_12:
  *(result + 168) = v6;
  if (v3 == 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0 && (!*(result + 169) || (v6 & 2) != 0 || *(result + 16) > *(result + 24) || (v6 & 0x10) != 0))
  {
    return (*(**(result + 144) + 24))(*(result + 144), result);
  }

  return result;
}

uint64_t sub_2393B86E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &unk_284BB7C00;
  *(result + 8) = 0;
  *(result + 76) = 0;
  *(result + 80) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 59) = 0u;
  *(result + 88) = &unk_284BAA120;
  *(result + 96) = result;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = a2;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 156) = -1;
  *(result + 158) = 0;
  *(result + 160) = 0;
  *(result + 163) = 0;
  *(result + 167) = 3;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = &unk_284BBBF18;
  *(result + 200) = 0;
  *(result + 169) = 1;
  if (!a3)
  {
    sub_23952F040();
  }

  *(result + 144) = a3;
  return result;
}

unint64_t sub_2393B87B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = *(a3 + 12);
  *(a1 + 160) = *(a3 + 20);
  *(a1 + 162) = *(a3 + 22);
  sub_2393B8624(a1, 8, *(a3 + 24));
  if (*(a3 + 40))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a3 + 32) + v6;
      v9 = *v8;
      LODWORD(v8) = *(v8 + 8) | 0xFFFF0000;
      v21 = v9;
      v22 = v8;
      v10 = (*(**(a1 + 136) + 32))(*(a1 + 136));
      if (sub_2394CB608(v10, (a1 + 112), &v21))
      {
        return sub_2393B8A0C(a1, 0);
      }

      ++v7;
      v6 += 12;
    }

    while (v7 < *(a3 + 40));
  }

  if (*(a3 + 56))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a3 + 48) + v11;
      v14 = *(v13 + 8);
      v15 = *v13;
      LOBYTE(v13) = *(v13 + 10);
      v21 = v15;
      BYTE2(v22) = v13;
      LOWORD(v22) = v14;
      v16 = (*(**(a1 + 136) + 32))(*(a1 + 136));
      if (sub_2394CB950(v16, (a1 + 120), &v21))
      {
        return sub_2393B8A0C(a1, 0);
      }

      ++v12;
      v11 += 12;
    }

    while (v12 < *(a3 + 56));
  }

  sub_239495C6C((a1 + 176), a2);
  sub_2393B8624(a1, 4, 1);
  v17 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v17)
  {
    (*(*v17 + 24))(v17, a1);
  }

  (*(**(a1 + 144) + 16))(*(a1 + 144), a1);
  result = sub_2393B8C3C(a1, 1u);
  for (i = *(a1 + 112); i; i = *(i + 16))
  {
    v20 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    result = sub_2394D5708((v20 + 1296), i);
  }

  return result;
}

uint64_t sub_2393B8A0C(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 169);
  if (!a2 && v3 == 1)
  {
    v4 = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 1696);
    if (v4)
    {
      v5 = sub_2393BB864(a1);
      if (v5)
      {
        v6 = *(v5 + 72);
      }

      else
      {
        v6 = 0;
      }

      v7 = sub_2393BB864(a1);
      if (v7)
      {
        v8 = *(v7 + 24);
      }

      else
      {
        v8 = 0;
      }

      (*(*v4 + 32))(v4, v6, v8, *(a1 + 8));
    }

    v3 = *(a1 + 169);
  }

  if (v3 == 1)
  {
    if (*(a1 + 200) == 1)
    {
      v9 = sub_238DE36B8((a1 + 200));
      v10 = (*(**v9 + 48))(*v9);
      v12 = v11;
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    v13 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 8);
      *buf = 67109888;
      v19 = v14;
      v20 = 1024;
      v21 = HIDWORD(v10);
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Subscription id 0x%x from node <%08X%08X, %d> torn down", buf, 0x1Au);
    }

    if (sub_2393D5398(2u))
    {
      v17 = *(a1 + 8);
      sub_2393D5320(0xDu, 2);
    }
  }

  sub_2393B8C3C(a1, 3u);
  result = (*(**(a1 + 136) + 16))(*(a1 + 136), a1);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393B8C3C(uint64_t result, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(result + 166);
  if (v2 != a2)
  {
    v4 = result;
    if (a2 != 2 && v2 == 2)
    {
      v5 = (*(**(result + 136) + 32))(*(result + 136));
      sub_2394D57C0(v5 + 1296);
    }

    *(v4 + 166) = a2;
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2 > 3)
      {
        v7 = "N/A";
      }

      else
      {
        v7 = off_278A75C78[a2];
      }

      *buf = 136315138;
      v13 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "IM RH moving to [%s]", buf, 0xCu);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v8 = *(v4 + 166);
      if (v8 <= 3)
      {
        v9 = off_278A75C78[v8];
      }

      result = sub_2393D5320(0xDu, 3);
    }

    if (a2 == 1)
    {
      if (*(v4 + 166) == 1 && (!*(v4 + 169) || (*(v4 + 168) & 2) != 0))
      {
        v10 = (*(**(v4 + 136) + 32))(*(v4 + 136));
        result = sub_2394D51F8(v10 + 1296);
      }

      else
      {
        result = (*(**(v4 + 144) + 24))(*(v4 + 144), v4);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393B8E24(uint64_t a1)
{
  *a1 = &unk_284BB7C00;
  (*(**(a1 + 144) + 40))(*(a1 + 144), a1);
  v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if ((*(a1 + 168) & 4) != 0 && v2)
  {
    *(a1 + 168) &= ~4u;
    (*(*v2 + 32))(v2, a1);
  }

  if (*(a1 + 166) == 2)
  {
    v3 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    sub_2394D57C0(v3 + 1296);
  }

  v4 = (*(**(a1 + 136) + 32))(*(a1 + 136));
  sub_2394CB5BC(v4, (a1 + 112));
  v5 = (*(**(a1 + 136) + 32))(*(a1 + 136));
  sub_2394CB904(v5, (a1 + 120));
  v6 = (*(**(a1 + 136) + 32))(*(a1 + 136));
  sub_2394CBA28(v6, (a1 + 128));
  sub_239495880(a1 + 176);
  *(a1 + 88) = &unk_284BAA120;
  sub_238EF9EEC(a1 + 88);
  return a1;
}

void sub_2393B8FF0(uint64_t a1)
{
  sub_2393B8E24(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393B9028(uint64_t a1, void *a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = sub_2393B90E8(a1, a2);
  }

  else
  {
    v3 = sub_2393B94FC(a1, a2);
  }

  if (v3)
  {
    if ((v3 & 0xFF000700) == 0x600 || (v3 & 0xFF000700) == 0x500)
    {
      sub_2393DDF30(v6, v3);
      v4 = v6[0];
    }

    else
    {
      v4 = 128;
    }

    sub_2394DEE10(v4, *(a1 + 104), 0);
    return sub_2393B8A0C(a1, 1);
  }

  else
  {

    return sub_2393B8624(a1, 16, 1);
  }
}

unint64_t sub_2393B90E8(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v27);
  v28 = 0;
  sub_238DD2F90(v4, a2);
  sub_2393DD178(v26);
  v5 = sub_2393DD0A8(v26, v27);
  if (v5)
  {
    goto LABEL_2;
  }

  sub_2393DD178(v25);
  v9 = sub_2393DD938(v26, v25);
  LODWORD(v5) = v9;
  if (v9 == 33)
  {
    goto LABEL_15;
  }

  if (v9)
  {
    v6 = HIDWORD(v9);
LABEL_14:
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  v5 = sub_2393BACE4(a1, v25);
  if (v5)
  {
    goto LABEL_2;
  }

  sub_2393DD178(v24);
  v10 = sub_2393DD98C(v26, v24);
  LODWORD(v5) = v10;
  if (v10 == 33)
  {
    goto LABEL_15;
  }

  v6 = HIDWORD(v10);
  if (v10)
  {
    goto LABEL_14;
  }

  v5 = sub_2393BAE54(a1, v24);
  if (v5)
  {
LABEL_21:
    v6 = HIDWORD(v5);
    goto LABEL_3;
  }

LABEL_15:
  sub_2393DD178(v24);
  v11 = sub_2393DD230(v26, v24);
  LODWORD(v5) = v11;
  if (v11 == 33)
  {
    goto LABEL_24;
  }

  if (v11)
  {
    v6 = HIDWORD(v11);
    goto LABEL_23;
  }

  v5 = sub_2393BAFFC(a1, v24);
  if (v5)
  {
LABEL_2:
    v6 = HIDWORD(v5);
    goto LABEL_3;
  }

  sub_2393DD178(buf);
  v12 = sub_2393DD9E0(v26, buf);
  LODWORD(v5) = v12;
  if (v12 == 33)
  {
    goto LABEL_24;
  }

  v6 = HIDWORD(v12);
  if (!v12)
  {
    v5 = sub_2393BB11C(a1, buf);
    if (v5)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_24:
  v5 = sub_2393DB830(v26, (a1 + 160));
  if (v5)
  {
    goto LABEL_2;
  }

  v5 = sub_2393DAA4C(v26, (a1 + 164));
  if (v5)
  {
    goto LABEL_2;
  }

  v13 = *(a1 + 164);
  *(a1 + 162) = v13;
  if (*(a1 + 160) <= v13)
  {
    v14 = (*(**(a1 + 136) + 24))(*(a1 + 136));
    if (v14 && (v15 = v14, v16 = sub_2393B59AC(a1 + 88), sub_238EA6DC0(v16, buf), v17 = sub_239495304(*buf), LODWORD(v15) = (*(*v15 + 16))(v15, a1, v17), (*(**buf + 32))(*buf), v15))
    {
      LODWORD(v5) = 104;
      LODWORD(v6) = 805;
    }

    else
    {
      v18 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 160);
        v20 = *(a1 + 162);
        *buf = 67109376;
        *&buf[4] = v19;
        v30 = 1024;
        v31 = v20;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Final negotiated min/max parameters: Min = %ds, Max = %ds", buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        v22 = *(a1 + 160);
        v23 = *(a1 + 162);
        sub_2393D5320(0xDu, 2);
      }

      buf[0] = 0;
      v5 = sub_2393DDA34(v26, buf);
      if (v5)
      {
        goto LABEL_2;
      }

      sub_2393B8624(a1, 8, buf[0]);
      v5 = sub_2393F888C((a1 + 8), 4uLL);
      if (v5)
      {
        goto LABEL_2;
      }

      v5 = sub_2393DD104(v26);
      if (v5)
      {
        goto LABEL_2;
      }

      sub_2393B8C3C(a1, 1u);
      v21 = sub_2393B59AC(a1 + 88);
      *(v21 + 8) |= 0x40u;
      sub_2393BB284(a1);
      LODWORD(v6) = 0;
      LODWORD(v5) = 0;
    }
  }

  else
  {
    LODWORD(v5) = 47;
    LODWORD(v6) = 743;
  }

LABEL_3:
  if (v28)
  {
    sub_2393D96C8(v28);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | (v6 << 32);
}

unint64_t sub_2393B94FC(uint64_t a1, void *a2)
{
  sub_2393C5AAC(v18);
  v19 = 0;
  sub_2393DD178(v17);
  sub_2393DD178(v16);
  sub_2393DD178(v15);
  sub_2393DD178(v14);
  sub_238DD2F90(v18, a2);
  v4 = sub_2393DD0A8(v17, v18);
  if (v4)
  {
    goto LABEL_2;
  }

  v7 = sub_2393DD1DC(v17, v14);
  LODWORD(v4) = v7;
  if (v7 == 33)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    v5 = HIDWORD(v7);
LABEL_14:
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  v4 = sub_2393BACE4(a1, v14);
  if (v4)
  {
    goto LABEL_2;
  }

  sub_2393DD178(v13);
  v8 = sub_2393DD230(v17, v13);
  LODWORD(v4) = v8;
  if (v8 != 33)
  {
    v5 = HIDWORD(v8);
    if (!v8)
    {
      v9 = sub_2393BAE54(a1, v13);
      LODWORD(v4) = v9;
      if (v9)
      {
        v5 = HIDWORD(v9);
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  v10 = sub_2393DCCFC(v17, v16);
  v4 = v10;
  if (v10 == 33)
  {
    goto LABEL_24;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  v4 = sub_2393BAFFC(a1, v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v11 = sub_2393DC8EC(v17, v15);
  v4 = v11;
  if (v11 != 33)
  {
    if (!v11)
    {
      v4 = sub_2393BB11C(a1, v15);
      if (!v4)
      {
        goto LABEL_24;
      }

LABEL_2:
      v5 = HIDWORD(v4);
      goto LABEL_3;
    }

LABEL_23:
    if (v4)
    {
      goto LABEL_2;
    }
  }

LABEL_24:
  v13[0] = 0;
  v4 = sub_2393DD284(v17, v13);
  if (v4)
  {
    goto LABEL_2;
  }

  sub_2393B8624(a1, 8, v13[0]);
  v4 = sub_2393DD104(v17);
  if (v4)
  {
    goto LABEL_2;
  }

  sub_2393B8C3C(a1, 1u);
  v12 = sub_2393B59AC(a1 + 88);
  LODWORD(v5) = 0;
  LODWORD(v4) = 0;
  *(v12 + 8) |= 0x40u;
LABEL_3:
  if (v19)
  {
    sub_2393D96C8(v19);
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2393B971C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  *a4 = 1;
  v10[0] = 0;
  v10[1] = 0;
  v6 = sub_2394DEFB4(a3, v10);
  if (!v6)
  {
    *a4 = 0;
    v6 = v10[0];
    if (!LODWORD(v10[0]))
    {
      if (*(a1 + 166) == 2)
      {
        if (*(a1 + 168))
        {
          v8 = sub_2393B59AC(a1 + 88);
          *(v8 + 8) |= 0x40u;
        }

        else
        {
          if (*(a1 + 169) != 1)
          {
            sub_2393B8A0C(a1, 0);
            return 0;
          }

          if ((*(a1 + 168) & 2) != 0)
          {
            v6 = sub_2393B98A0(a1);
            sub_2393B8624(a1, 4, 1);
            v7 = (*(**(a1 + 136) + 24))(*(a1 + 136));
            if (v7)
            {
              (*(*v7 + 24))(v7, a1);
            }

            (*(**(a1 + 144) + 16))(*(a1 + 144), a1);
          }
        }

        sub_2393B8C3C(a1, 1u);
      }

      else
      {
        return 0x11100000003;
      }
    }
  }

  return v6;
}

unint64_t sub_2393B98A0(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_2393D9C18(0x4AAuLL, 0x26u, &v16);
  if (v16)
  {
    sub_2393C7B90(buf);
    v29[1] = 0;
    v29[2] = 0;
    v29[0] = &unk_284BB83A8;
    v30 = 0;
    sub_238EA16C4(v29, &v16, 0);
    sub_2393C7BF0(buf, v29, 0xFFFFFFFF);
    sub_2393DB79C(v15);
    v2 = sub_2393DD7B8(v15, buf);
    if (v2 || (v3 = sub_2393DA83C(v15, *(a1 + 8)), v4 = sub_2393DAEE8(v3, *(a1 + 162)), v2 = sub_2393DD3D4(v4), v2) || (v2 = sub_238DD2EFC(buf, &v16), v2))
    {
      v5 = v2 & 0xFFFFFFFF00000000;
    }

    else if (*(a1 + 104))
    {
      sub_2393B8624(a1, 2, 0);
      v11 = sub_2393B59AC(a1 + 88);
      *v17 = 0;
      v12 = sub_239470478(v11, 0x10000u, 4, &v16, v17);
      LODWORD(v2) = v12;
      v5 = v12 & 0xFFFFFFFF00000000;
    }

    else
    {
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_2393C9138();
        *v17 = 136315650;
        v18 = v14;
        v19 = 2080;
        v20 = "src/app/ReadHandler.cpp";
        v21 = 1024;
        v22 = 677;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s at %s:%d", v17, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v5 = 0x2A500000000;
      LODWORD(v2) = 3;
    }

    sub_2393B8400(v29);
    v6 = v2;
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_2393C9138();
      *buf = 136315650;
      v24 = v8;
      v25 = 2080;
      v26 = "src/app/ReadHandler.cpp";
      v27 = 1024;
      v28 = 667;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v5 = 0x29B00000000;
    v6 = 11;
  }

  if (v16)
  {
    sub_2393D96C8(v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2393B9BE0(uint64_t a1, unsigned int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 166) != 1)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = sub_2393C9138();
      *&buf[12] = 2080;
      *&buf[14] = "src/app/ReadHandler.cpp";
      v23 = 1024;
      v24 = 283;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v7 = 0x11B00000000;
    goto LABEL_40;
  }

  if ((*(a1 + 168) & 3) != 0)
  {
    v4 = sub_2393B59AC(a1 + 88);
    sub_238EA6DC0(v4, buf);
    sub_239495C6C((a1 + 176), buf);
    (*(**buf + 32))(*buf);
  }

  else
  {
    if (*(a1 + 104))
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v23 = 1024;
        v24 = 290;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v7 = 0x12200000000;
      goto LABEL_40;
    }

    if ((*(a1 + 200) & 1) == 0)
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v23 = 1024;
        v24 = 291;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v7 = 0x12300000000;
      goto LABEL_40;
    }

    v13 = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 88);
    if (*(a1 + 200) == 1)
    {
      *&buf[8] = *sub_238DE36B8((a1 + 200));
      (*(**&buf[8] + 24))(*&buf[8]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    buf[0] = v14;
    v16 = sub_238DE36B8(buf);
    v17 = sub_239471E34(v13, v16, a1, 1u);
    if (buf[0] == 1)
    {
      (*(**&buf[8] + 32))(*&buf[8]);
    }

    if (!v17)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v23 = 1024;
        v24 = 298;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v7 = 0x12A00000000;
      goto LABEL_40;
    }

    sub_238EF9EEC(a1 + 88);
    *(a1 + 104) = v17;
    v17[5] = a1 + 88;
  }

  v5 = *(a1 + 104);
  if (!v5)
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "src/app/ReadHandler.cpp";
      v23 = 1024;
      v24 = 302;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v7 = 0x12E00000000;
LABEL_40:
    v8 = 3;
    goto LABEL_41;
  }

  v6 = sub_2394DEE10(a2, v5, 0);
  v7 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
LABEL_41:
  v20 = *MEMORY[0x277D85DE8];
  return v7 | v8;
}