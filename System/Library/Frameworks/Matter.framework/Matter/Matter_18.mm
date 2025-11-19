void sub_239224BC0(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 184);
    *(a1 + 184) = 0;
  }

  if ((*(a1 + 176) & 1) == 0)
  {
    v4 = *(*a1 + 8);

    v4(a1);
  }
}

uint64_t sub_239224C48(uint64_t a1, void *a2)
{
  v3 = a2[7];
  v4 = a2[8];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    if (v4 != 1 || v3 == 0)
    {
      sub_23952CF2C();
    }

    MEMORY[0x23EE77B60]();
  }

  v7 = a2[9];
  v8 = a2[10];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    if (v8)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_23952CFDC();
    }

    MEMORY[0x23EE77B40]();
  }

  result = a2[5];
  v12 = a2[6];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = result == 0;
  }

  if (!v13)
  {
    if (v12 == 1 && result != 0)
    {

      JUMPOUT(0x23EE77B60);
    }

    sub_23952D08C();
  }

  return result;
}

void sub_239224D1C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = MEMORY[0x23EE78590]();
    v1[2]();
  }
}

unint64_t sub_239224D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2394DB314(a2, a3);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_23921C1E4(MTRError, a3, a4);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sub_2394D7B4C(a2)];
    sub_239224E6C(a1, v10, v11);

    v9 = 0;
    LODWORD(v8) = 0;
  }

  return v8 | v9;
}

void sub_239224E6C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 48))
  {
    v6 = MEMORY[0x23EE78590]();
    (v6)[2](v6, v7, v5);
  }
}

void sub_239224F0C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v1 = MEMORY[0x23EE78590]();
    v1[2]();
  }
}

void sub_239224F84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    v3 = MEMORY[0x23EE78590]();
    v3[2](v3, a2);
  }
}

uint64_t sub_239225004(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_23922503C(uint64_t a1, unsigned __int16 a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseSubscriptionCallback.mm", 215);
  result = *(a1 + 168);
  if (result)
  {

    return sub_2393BF470(result, a2);
  }

  return result;
}

uint64_t sub_239225098(uint64_t a1, unsigned int *a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseSubscriptionCallback.mm", 223);
  result = *(a1 + 168);
  if (result)
  {

    return sub_2393BF49C(result, a2);
  }

  return result;
}

uint64_t sub_2392250F4(uint64_t a1, unsigned __int16 *a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseSubscriptionCallback.mm", 231);
  result = *(a1 + 168);
  if (result)
  {

    return sub_2393BF4E8(result, a2);
  }

  return result;
}

void sub_239225150(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 12, a2, sub_238DCC8D4);
}

void sub_239225BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  a11 = &a20;
  sub_239227730(&a11);

  _Unwind_Resume(a1);
}

uint64_t sub_239226164(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];

    return MEMORY[0x2821F9670](v4, sel_commissioning_failedWithError_forDeviceID_metrics_);
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[6];
      v12 = a1[8];

      return MEMORY[0x2821F9670](v9, sel_commissioning_failedWithError_metrics_);
    }
  }

  return result;
}

uint64_t sub_2392262D4(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return MEMORY[0x2821F9670](v4, sel_commissioning_statusUpdate_);
  }

  return result;
}

uint64_t sub_2392265A8(uint64_t a1)
{
  [*(a1 + 32) setIsWaitingAfterPASEEstablished:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);

  return MEMORY[0x2821F9670](v2, sel_commissioning_paseSessionEstablishmentComplete_);
}

uint64_t sub_23922675C(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return MEMORY[0x2821F9670](v4, sel_commissioning_succeededForNodeID_metrics_);
  }

  return result;
}

uint64_t sub_23922687C(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return MEMORY[0x2821F9670](v4, sel_commissioning_readCommissioneeInfo_);
  }

  return result;
}

uint64_t sub_2392269B0(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];

    return MEMORY[0x2821F9670](v4, sel_commissioning_provisionedNetworkCredentialsForDeviceID_);
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = a1[4];
      v8 = a1[5];

      return MEMORY[0x2821F9670](v7, sel_commissioning_reachedCommissioningStage_);
    }
  }

  return result;
}

void sub_239226B30(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239226C10;
  v6[3] = &unk_278A73EC8;
  objc_copyWeak(&v7, &location);
  [v2 commissioning:v3 needsWiFiNetworkSelectionWithScanResults:v5 error:v4 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_239226BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_239226C10(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(WeakRetained + 5);
    v10 = v9;
    if (v9)
    {
      v19 = 0;
      v11 = [v9 continueCommissioning:v8 withWiFiSSID:v5 credentials:v6 error:&v19];
      v12 = v19;
      if ((v11 & 1) == 0)
      {
        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v21 = v8;
          v22 = 2112;
          v23 = v10;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ attempt to continue commissioning with Wi-Fi credentials with controller %@ failed: %@", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          v17 = v10;
          v18 = v12;
          v16 = v8;
          sub_2393D5320(0, 1);
        }

        [v8 _dispatchCommissioningError:{v12, v16, v17, v18}];
        [v8 stop];
      }
    }
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTRCommissioningOperation deallocated while waiting to continue after Wi-Fi network scan", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_239226F0C(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239226FEC;
  v6[3] = &unk_278A73EF0;
  objc_copyWeak(&v7, &location);
  [v2 commissioning:v3 needsThreadNetworkSelectionWithScanResults:v5 error:v4 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_239226FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_239226FEC(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 5);
    v7 = v6;
    if (v6)
    {
      v16 = 0;
      v8 = [v6 continueCommissioning:v5 withOperationalDataset:v3 error:&v16];
      v9 = v16;
      if ((v8 & 1) == 0)
      {
        v10 = sub_2393D9044(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v18 = v5;
          v19 = 2112;
          v20 = v7;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ attempt to continue commissioning with Thread credentials with controller %@ failed: %@", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          v14 = v7;
          v15 = v9;
          v13 = v5;
          sub_2393D5320(0, 1);
        }

        [v5 _dispatchCommissioningError:{v9, v13, v14, v15}];
        [v5 stop];
      }
    }
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRCommissioningOperation deallocated while waiting to continue after Thread network scan", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2392272D8(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392273C0;
  v6[3] = &unk_278A73F18;
  objc_copyWeak(v7, &location);
  v7[1] = *(a1 + 64);
  [v2 commissioning:v3 completedDeviceAttestation:v4 error:v5 completion:v6];
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_2392273A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2392273C0(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 5);
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 40);
      v15 = 0;
      v7 = [v4 continueCommissioningAfterAttestation:v3 forOpaqueHandle:v6 error:&v15];
      v8 = v15;
      if ((v7 & 1) == 0)
      {
        v9 = sub_2393D9044(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v17 = v3;
          v18 = 2112;
          v19 = v5;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ attempt to continue commissioning after device attestation with controller %@ failed: %@", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          v13 = v5;
          v14 = v8;
          v12 = v3;
          sub_2393D5320(0, 1);
        }

        [v3 _dispatchCommissioningError:{v8, v12, v13, v14}];
        [v3 stop];
      }
    }
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRCommissioningOperation deallocated while waiting to continue after device attestation", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_239227730(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239227784(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239227784(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      sub_238EF5F20(v5, *(v5 + 8));
      sub_238EF5F20(v5 - 24, *(v5 - 16));
      v6 = v5 - 48;
      v5 -= 72;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_2392278A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392279E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239227B18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239227C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239227D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239227EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239227FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228268(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392283A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392284D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228610(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392289B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228AF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228C28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228D60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239228FD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392294B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_2392295E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229720(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229858(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229990(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229AC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229D38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_239229FA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A0E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A488(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A5C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A6F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922A968(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922AAA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922ABD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922AD10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921D3B8(MTRError, 0x88u);
  (*(v1 + 16))(v1);
}

void sub_23922AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922AF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922B9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2100000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922BB14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2190000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922BC34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2200000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922BD7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2270000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922BED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2320000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23922C014(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x23B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C134(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2420000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C27C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2490000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C3C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2520000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C4E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2590000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C62C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2600000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2690000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C894(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2700000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922C9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2770000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922CB24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2800000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922CC44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2870000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922CD8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x28E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922CED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2970000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922CFF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x29E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922D13C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2A50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922D284(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2AE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922D3A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2B50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922EC7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23922EEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23922F368(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23922F444(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4050000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922F598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4100000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23922F6DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4190000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922F7FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4200000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922F944(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4270000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922FA98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4320000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23922FBDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x43B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922FCFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4420000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922FE44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4490000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23922FF98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4540000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392300DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x45D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392301FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4640000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x46B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4760000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392305DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x47F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392306FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4860000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x48D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923098C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4960000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230AAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x49D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4A40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4AF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239230E8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4B80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239230FAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4BF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392310F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4C60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231248(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4D10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23923138C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4DA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392314AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4E10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392315F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4E80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923173C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4F10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923185C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4F80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392319A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x4FF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5080000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x50F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231D54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5160000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231E9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x51F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239231FBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5260000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x52D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923224C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5360000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923236C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x53D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392324B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5440000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392325FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x54D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923271C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5540000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x55B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392329AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5640000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x56B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232C14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5720000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232D5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x57B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239232E7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x5820000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239235F60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23923610C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392362D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392364A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239236670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392368FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239236AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392370C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392371A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8490000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392372F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8530000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239237438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x85A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237580(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8630000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392376A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x86A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392377E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8710000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x87A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8810000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237B98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8880000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237CE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8910000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8980000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239237F48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x89F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923809C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8AA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392381E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8B30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238300(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8BA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8C10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923859C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8CC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392386E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8D50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8DC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8E30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238A9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8EE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239238BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8F70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238D00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8FE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238E48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9050000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239238F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9100000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392390E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9190000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9200000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239348(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9270000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923949C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9320000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392395E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x93B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239700(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9420000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9490000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923999C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9540000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239239AE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x95D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9640000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x96B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239E90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9740000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239239FB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x97B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A0F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9820000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x98B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A360(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9920000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A4A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9990000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A5F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9A20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9A90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A858(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9B00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923A9A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9B90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923AAC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9C00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923AC08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9C70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923AD50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9D00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923AE70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9D70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923AFB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9DE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923B100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9E70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923B220(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x9EE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23923E67C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23923E758(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xC500000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23923E8B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xC5B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23923ED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923EED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923F09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923F268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923F434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923F600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23923FB40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239240298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xD8F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392403DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xD950000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239240520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xD9C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240668(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDA50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240788(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDAC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392408D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDB30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240A18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDBC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240B38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDC30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDCA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240DC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDD30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239240EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDDA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDE10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241178(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDEA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDF10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392413E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xDF80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241528(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE010000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241648(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE080000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241790(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE0F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392418D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE180000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392419F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE1F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE260000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241C88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE2F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241DA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE360000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239241EF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE3D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242038(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE460000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE4D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392422A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE540000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392423E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE5D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE640000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242650(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE6B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242798(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE740000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392428B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE7B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242A00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE820000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242B48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE8B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242C68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE920000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xE990000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239242EF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEA20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243018(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEA90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEB00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392432A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEB90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392433C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEC00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEC70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243658(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xED00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243778(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xED70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392438C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEDE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243A08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEE70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243B28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEEE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEF50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243DB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xEFE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239243ED8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF050000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF0C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF150000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF1C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392443D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF230000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244518(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF2C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF330000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244780(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF3A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392448C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF430000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392449E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF4A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244B30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF510000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244C78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF5A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF610000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239244EE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF680000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245028(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF710000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245148(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF780000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245290(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF7F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392453D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF880000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392454F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF8F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245640(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF960000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245788(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xF9F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392458A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFA60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392459F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFAD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245B38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFB60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245C58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFBD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFC40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239245EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFCD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFD40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246150(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFDB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFE40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392463B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFEB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFF20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246648(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0xFFB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10020000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392468B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10090000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392469F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10120000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246B18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10190000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246C60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10200000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246DA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10290000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239246EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10300000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10370000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10400000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10470000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392473C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x104E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10570000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x105E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247770(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10650000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392478B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x106E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392479D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10750000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247B20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x107C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247C68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10850000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x108C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239247ED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10930000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248018(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x109C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248138(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10A30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248280(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10AA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392483C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10B30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392484E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10BA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10C10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248778(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10CA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248898(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10D10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392489E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10D80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248B28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10E10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248C48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10E80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248D90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10EF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248ED8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10F80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239248FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x10FF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249140(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11060000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x110F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392493A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11160000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392494F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x111D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11260000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249758(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x112D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392498A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11340000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392499E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x113D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249B08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11440000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x114B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11540000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239249EB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x115B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11620000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A148(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x116B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A268(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11720000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A3B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11790000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A4F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11820000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A618(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11890000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A760(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11900000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A8A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11990000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924A9C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11A00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924AB10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11A70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924AC58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11B00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924AD78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11B70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924AEC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11BE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11C70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11CE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11D50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B3B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11DE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B4D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11E50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B620(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11EC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11F50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x11FC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924B9D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12030000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924BB18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x120C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924BC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12130000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924BD80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x121A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924BEC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12230000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924BFE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x122A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12310000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x123A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C398(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12410000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C4E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12480000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12510000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12580000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C890(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x125F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924C9D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12680000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924CAF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x126F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924CC40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12760000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924CD88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x127F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924CEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12860000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924CFF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x128D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D138(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12960000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x129D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D3A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12A40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D4E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12AD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12B40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D750(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12BB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D898(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12C40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924D9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12CB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924DB00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12D20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924DC54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12DD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924DD98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12E60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924DEB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12ED0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12F40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x12FF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924E298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13080000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E3B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x130F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13160000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13210000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924E798(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x132A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924E8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13310000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924EA00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13380000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924EB54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13430000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924EC98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x134C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924EDB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13530000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924EF00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x135A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F054(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13650000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924F198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x136E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F2B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13750000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x137C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13870000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23924F698(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13900000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F7B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13970000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924F900(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x139E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924FA48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13A70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924FB68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13AE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924FCB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13B50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924FDF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13BE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23924FF18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13C50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13CC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392501A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13D50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392502C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13DC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13E30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13EC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13F30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392507C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x13FA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14030000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x140A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14110000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250CB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x141A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250DD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14210000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239250F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14280000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251074(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14330000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_2392511B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x143C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392512D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14430000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x144A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14530000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x145A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392517D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14610000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x146A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14710000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251B80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14780000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251CD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14830000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_239251E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x148C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239251F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14930000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252080(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x149A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392521C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14A30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392522E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14AA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252430(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14B10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14BA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252698(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14C10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392527E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14C80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14D10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252A48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14D80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14DF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252CD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14E80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14EF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239252F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14F60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253088(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14FF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392531A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15060000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392532F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x150D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15160000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x151D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392536A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15240000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392537E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x152D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15340000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x153B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253B98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15440000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253CB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x154B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15520000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239253F48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x155B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254068(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15620000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392541B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15690000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392542F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15720000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15790000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254560(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15800000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392546A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15890000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392547C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15900000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15970000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254A58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15A00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15A70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254CC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15AE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254E08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15B70000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239254F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15BE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255070(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15C50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392551B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15CE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392552D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15D50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15DC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15E50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15EC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392557D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15F30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15FC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16030000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255B80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x160A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255CC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16130000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255DE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x161A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239255F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16210000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256078(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x162A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16310000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392562E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16380000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256428(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16410000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256548(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16480000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256690(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x164F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392567D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16580000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392568F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x165F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16660000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x166F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256CA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16760000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256DF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x167D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239256F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16860000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257058(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x168D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392571A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16940000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392572E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x169D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16A40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257550(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16AB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257698(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16B40000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392577B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16BB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257900(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16C20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257A48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16CB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257B68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16D20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16D90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16E20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239257F18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16E90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16F00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392581A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x16F90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392582C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17000000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17070000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17100000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17170000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392587C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x171E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17270000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x172E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17350000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258CB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x173E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258DD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17450000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239258F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x174C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259068(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17550000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x175C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392592D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17630000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x176C0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17730000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259680(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x177A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392597C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17830000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_2392598E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x178A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259A30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17910000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x179A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259C98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17A10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259DE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17A80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_239259F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17B10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17B80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A190(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17BF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A2D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17C80000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A3F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17CF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A540(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17D60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17DF0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A7A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17E60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925A8F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17ED0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925AA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17F60000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925AB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x17FD0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925ACA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18040000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925ADE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x180D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925AF08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18140000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B050(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x181B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18240000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B2B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x182B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18320000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B548(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x183B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B668(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18420000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B7B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18490000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925B8F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18520000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925BA18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18590000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925BB60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18600000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925BCA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18690000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925BDC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18700000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925BF10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18770000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C058(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18800000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C178(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18870000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C2C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x188E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18970000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C528(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x189E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18A50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C7B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18AE0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925C8D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18B50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925CA20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18BC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925CB68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18C50000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925CC88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18CC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925CDD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18D30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925CF18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18DC0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D038(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18E30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D180(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18EA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D2C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18F30000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D3E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x18FA0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D530(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19010000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x190A0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D798(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19110000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925D8E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19180000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925DA28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19210000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925DB48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19280000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925DC90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x192F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925DDD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19380000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925DEF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x193F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E040(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19460000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x194F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E2A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19560000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E3F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x195D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19660000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E658(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x196D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E7A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19740000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925E8E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x197D0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925EA08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19840000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925EB50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x198B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925EC98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19940000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925EDB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x199B0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925EF00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19A20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19AB0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19B20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F2B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19B90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F3F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19C20000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F518(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19C90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F660(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19D00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F7A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19D90000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23925F8C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x19E00000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_23927BD5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23927BE4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2C780000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23927BF90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x2C7F0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  (*(v1 + 16))(v1);
}

void sub_23927ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927F0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927F454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927F620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927FC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23927FFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239282CB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_239283EA0(uint64_t a1)
{
  v2 = strnlen((a1 + 104), 0x20uLL);
  sub_238DB9BD8(&v4, a1 + 104, v2);
  return v4;
}

BOOL sub_239283EE8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t (*a5)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v28 = &v33;
  v29 = 400;
  v13 = (a3 + (a6 >> 1));
  if (a6)
  {
    v14 = (*(*v13 + a5))(v13, a4, &v28);
  }

  else
  {
    v14 = a5(v13, a4, &v28);
  }

  if (!v14)
  {
    if (a6)
    {
      v18 = (a6 & 1 | a5) == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    if (a5 == sub_2394A8274 && v19 && !v29)
    {
      v20 = *a1;
      *a1 = 0;

      v21 = *a2;
      *a2 = 0;
    }

    else
    {
      sub_238DB6950(buf, v28, v29);
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:*&buf[8]];
      v23 = *a2;
      *a2 = v22;

      v24 = [MTRCertificates convertMatterCertificate:*a2];
      v25 = *a1;
      *a1 = v24;

      if (!*a1)
      {
        v27 = sub_2393D9044(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = a7;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Failed to convert %s certificate to x509 encoding", buf, 0xCu);
        }

        result = sub_2393D5398(1u);
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }
    }

    result = 1;
    goto LABEL_22;
  }

  v15 = sub_2393D9044(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_2393C9138();
    *buf = 136315650;
    *&buf[4] = a7;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v31 = 2080;
    v32 = v16;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch %s certificate for fabric index %x: %s", buf, 0x1Cu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
LABEL_9:
    sub_2393D5320(0, 1);
    result = 0;
  }

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2392846EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF775E0);

  _Unwind_Resume(a1);
}

void sub_239285730(uint64_t a1)
{
  v1 = sub_23952B998(*(a1 + 32));

  sub_2392CA514(v1);
}

uint64_t sub_2392858F0(uint64_t a1)
{
  v2 = sub_23952B998(*(a1 + 32));
  sub_2392CA900(v2);
  result = [*(a1 + 40) shouldAdvertiseOperational];
  if (result)
  {
    result = sub_23952B9A4(*(a1 + 32));
    if (result)
    {
      v4 = atomic_load((*(a1 + 40) + 88));
      sub_2394AD200(result, v4, 1);
      v5 = *(a1 + 32);

      return sub_23952B8E0(v5);
    }
  }

  return result;
}

uint64_t sub_239285A1C(uint64_t a1)
{
  v2 = sub_23952B998(*(a1 + 32));
  sub_2392CA514(v2);
  result = [*(a1 + 40) shouldAdvertiseOperational];
  if (result)
  {
    result = sub_23952B9A4(*(a1 + 32));
    if (result)
    {
      v4 = atomic_load((*(a1 + 40) + 88));
      sub_2394AD200(result, v4, 0);
      v5 = *(a1 + 32);

      return sub_23952B8E0(v5);
    }
  }

  return result;
}

void sub_239285C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock((v13 + v18));

  _Unwind_Resume(a1);
}

uint64_t sub_23928659C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "%@ Finished flushing data write operations", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    v6 = *(a1 + 32);
    result = sub_2393D5320(0, 2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239286E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_239286ECC(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isRunning])
  {
    goto LABEL_41;
  }

  v2 = [*(a1 + 40) vendorID];
  if (!v2 || ([*(a1 + 40) vendorID], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "unsignedShortValue"), v3, v2, !v4))
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) vendorID];
      *buf = 138412546;
      v45 = v7;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ %@ is not a valid vendorID to initialize a device controller with", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = *(a1 + 32);
      v42 = [*(a1 + 40) vendorID];
      sub_2393D5320(0, 1);
    }

    goto LABEL_41;
  }

  v5 = [*(a1 + 40) operationalCertificate];
  if (v5)
  {
  }

  else
  {
    v10 = [*(a1 + 40) nodeID];

    if (!v10)
    {
      v23 = sub_2393D9044(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v45 = v24;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "%@ Can't start a controller if we don't know what node id it is", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_41;
      }

LABEL_21:
      v40 = *(a1 + 32);
      sub_2393D5320(0, 1);
      goto LABEL_41;
    }
  }

  if (([*(a1 + 40) keypairsMatchCertificates] & 1) == 0)
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 138412290;
      v45 = v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Provided keypairs do not match certificates", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v11 = [*(a1 + 40) operationalCertificate];
  if (v11)
  {
    v12 = [*(a1 + 40) operationalKeypair];
    if (!v12)
    {
      v32 = *(a1 + 40);
      if (v32 && ([v32 fabricIndex], (buf[0] & 1) != 0))
      {
        v33 = [*(a1 + 40) keystore];
        v34 = *(a1 + 40);
        if (v34)
        {
          [v34 fabricIndex];
        }

        else
        {
          LOWORD(v43) = 0;
        }

        v37 = sub_238DE36D8(&v43);
        v38 = (*(*v33 + 24))(v33, *v37);

        if (v38)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v35 = sub_2393D9044(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 32);
        *buf = 138412290;
        v45 = v36;
        _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "%@ Have no operational keypair for our operational certificate", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v41 = *(a1 + 32);
        sub_2393D5320(0, 1);
      }

      goto LABEL_41;
    }
  }

LABEL_15:
  v13 = [*(a1 + 40) nocSigner];
  v14 = v13 == 0;

  v15 = *(a1 + 32);
  if (v14)
  {
    v20 = 0;
  }

  else
  {
    v16 = [*(a1 + 40) nocSigner];
    v17 = sub_238DC3B28(v15 + 112, v16);
    v19 = v18;

    if ([*(a1 + 32) checkForStartError:v17 logMsg:{v19, @"Init failure while creating signing keypair bridge"}])
    {
      goto LABEL_41;
    }

    v15 = *(a1 + 32);
    v20 = v15 + 112;
  }

  v25 = *(v15 + 1648);
  v26 = [*(a1 + 40) ipk];
  v27 = [*(a1 + 40) rootCertificate];
  v28 = [*(a1 + 40) intermediateCertificate];
  v29 = sub_2392D1B1C(v25, v20, v26, v27, v28);
  v31 = v30;

  if (([*(a1 + 32) checkForStartError:v29 logMsg:{v31, @"Init failure while creating operational credentials delegate"}] & 1) == 0)
  {
    operator new();
  }

LABEL_41:
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239287F8C(uint64_t result, uint64_t a2)
{
  *(result + 8) = 1;
  *result = &unk_284BC3900;
  *(result + 16) = &unk_284BC3898;
  for (i = 64; i != 664; i += 120)
  {
    *(result + i) = &unk_284BB9138;
  }

  *(result + 624) = 0;
  *(result + 632) = a2;
  *(result + 640) = 0;
  return result;
}

unint64_t sub_239288010(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v10 = 0x1000000;
  if (!a1)
  {
    v5 = 0x16600000000;
LABEL_8:
    v6 = 47;
    return v6 | v5;
  }

  if (a3[1] != 16)
  {
    v5 = 0x16700000000;
    goto LABEL_8;
  }

  if (*(a4 + 8) != 8)
  {
    v5 = 0x16800000000;
    goto LABEL_8;
  }

  v8 = 0;
  v9 = **a3;
  v4 = (*(*a1 + 168))(a1, a2, a4, &v8);
  v5 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  return v6 | v5;
}

void sub_2392880C0(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v31 count];
    v6 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v40 = v4;
    v41 = 2048;
    v42 = v5;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ Loaded attribute values for %lu nodes from storage for controller uuid %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a1 + 32);
    v8 = [v31 count];
    [*(a1 + 32) uniqueIdentifier];
    v28 = v26 = v8;
    v24 = v7;
    sub_2393D5320(0, 2);
  }

  lock = [*(a1 + 32) deviceMapLock];
  os_unfair_lock_lock(lock);
  v9 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v31;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:v14];
        v16 = [*(a1 + 32) _setupDeviceForNodeID:v14 prefetchedClusterData:v15];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = [v15 count];
          *buf = 138412802;
          v40 = v17;
          v41 = 2048;
          v42 = v18;
          v43 = 2112;
          v44 = v16;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ Loaded %lu cluster data from storage for %@", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          v19 = *(a1 + 32);
          v27 = [v15 count];
          v29 = v16;
          v25 = v19;
          sub_2393D5320(0, 2);
        }

        [v9 addObject:{v16, v25, v27, v29}];
      }

      v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  v20 = dispatch_time(0, 60000000000);
  v21 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392884C8;
  block[3] = &unk_278A72298;
  block[4] = *(a1 + 32);
  v33 = v9;
  v22 = v9;
  dispatch_after(v20, v21, block);

  os_unfair_lock_unlock(lock);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2392884C8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    *buf = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "%@ un-retain devices loaded at startup %lu", buf, 0x16u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    v7 = *(a1 + 32);
    [*(a1 + 40) count];
    result = sub_2393D5320(0, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23928893C(void *a1)
{
  v1 = a1;
  v2 = [v1 vendorID];
  v5 = 2;
  v6 = "dwnfw_device_vendor_id";
  v7 = [v2 unsignedIntValue];
  v8 = 2;

  sub_23948BD20(&v5);
  v3 = [v1 productID];
  v4 = [v3 unsignedIntValue];
  v5 = 2;
  v6 = "dwnfw_device_product_id";
  v7 = v4;
  v8 = 2;

  sub_23948BD20(&v5);
}

void sub_2392889E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_239288C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v17 = v15;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_239288CB4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

BOOL sub_239288CC4(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 56) + 8) + 48;
  v19[0] = "dwnfw_setup_with_payload";
  v19[1] = v2;
  v20 = 0;
  v21 = "dwnfw_setup_with_payload";
  v23 = 0;
  sub_23948BD20(&v20);
  v3 = [*(a1 + 32) unsignedLongLongValue];
  *(*(*(a1 + 40) + 1648) + 32) = v3;
  v20 = 0;
  v21 = "dwnfw_setup_pase_session";
  v23 = 0;
  sub_23948BD20(&v20);
  v4 = *(*(a1 + 40) + 1616);
  v5 = [*(a1 + 48) setupPayload];
  v6 = v5;
  v7 = [v5 UTF8String];
  LOBYTE(v20) = 0;
  v8 = sub_2394FCB7C(v4, v3, v7, 2, &v20);
  v9 = *(*(a1 + 56) + 8);
  *(v9 + 48) = v8;
  *(v9 + 56) = v10;

  v11 = *(*(*(a1 + 56) + 8) + 48);
  if (v11)
  {
    v20 = 1;
    v21 = "dwnfw_setup_pase_session";
    v22 = v11;
    v23 = 3;
    sub_23948BD20(&v20);
  }

  else
  {
    sub_238DB5C88(*(*(a1 + 40) + 1640), [*(a1 + 32) unsignedLongLongValue]);
    sub_238DB4124(*(*(a1 + 40) + 1640), *(a1 + 40), *(a1 + 48), *(*(a1 + 40) + 1520));
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 56);
  v18 = 0;
  v15 = [MTRDeviceController_Concrete checkForError:v13 logMsg:v14 error:@"Failure while pairing the device", &v18];
  sub_238F3F7E4(v19);
  v16 = *MEMORY[0x277D85DE8];
  return !v15;
}

void sub_239288E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_238F3F7E4(va);
  _Unwind_Resume(a1);
}

void sub_239289484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

BOOL sub_2392894F8(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 64) + 8) + 48;
  v40[0] = "dwnfw_setup_with_discovered";
  v40[1] = v2;
  LODWORD(v63) = 0;
  *(&v63 + 1) = "dwnfw_setup_with_discovered";
  BYTE4(v64) = 0;
  sub_23948BD20(&v63);
  v3 = [*(a1 + 32) unsignedLongLongValue];
  *(*(*(a1 + 40) + 1648) + 32) = v3;
  v4 = *(*(a1 + 64) + 8);
  *(v4 + 48) = 0x3EB0000002FLL;
  *(v4 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 params];
    if (v63)
    {
      v6 = [*(a1 + 56) setupPasscode];
      v7 = [v6 unsignedLongValue];

      *(sub_239289A18(&v63) + 8) = v7;
      LODWORD(v52) = 0;
      *(&v52 + 1) = "dwnfw_setup_pase_session";
      BYTE4(v53) = 0;
      sub_23948BD20(&v52);
      v8 = *(*(a1 + 40) + 1616);
      v9 = sub_239289A18(&v63);
      v10 = sub_2394FBC2C(v8, v3, v9);
      v11 = *(*(a1 + 64) + 8);
      *(v11 + 48) = v10;
      *(v11 + 56) = v12;
      v13 = *(*(*(a1 + 64) + 8) + 48);
      if (v13)
      {
        LODWORD(v52) = 1;
        *(&v52 + 1) = "dwnfw_setup_pase_session";
        LODWORD(v53) = v13;
        BYTE4(v53) = 3;
        sub_23948BD20(&v52);
      }

      else
      {
        sub_238DB5C88(*(*(a1 + 40) + 1640), v3);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
  }

  v14 = [*(a1 + 56) qrCodeString:0];
  if (!v14)
  {
    v14 = [*(a1 + 56) manualEntryCode];
    if (!v14)
    {
      v34 = *(*(a1 + 64) + 8);
      *(v34 + 48) = 0x4000000002FLL;
      *(v34 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
      v30 = [MTRDeviceController_Concrete checkForError:*(*(*(a1 + 64) + 8) + 48) logMsg:*(*(*(a1 + 64) + 8) + 56) error:@"Generating Manual Pairing Code failed", *(a1 + 72)];
      goto LABEL_29;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = [*(a1 + 48) interfaces];
  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v62 count:16];
  if (v16)
  {
    v17 = *v37;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [*(a1 + 48) interfaces];
        v21 = [v20 objectForKeyedSubscript:v19];
        v22 = v21;
        if (v21)
        {
          [v21 resolutionData];
        }

        else
        {
          memset(v61, 0, sizeof(v61));
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
        }

        if (v52)
        {
          v41 = 0;
          v42 = "dwnfw_setup_pase_session";
          BYTE4(v43) = 0;
          sub_23948BD20(&v41);
          v23 = *(*(a1 + 40) + 1616);
          v24 = v14;
          v25 = [v14 UTF8String];
          LOBYTE(v41) = v52;
          if (v52 == 1)
          {
            LODWORD(v42) = DWORD2(v52);
            v49 = v59;
            v50 = v60;
            v51[0] = v61[0];
            *(v51 + 11) = *(v61 + 11);
            v45 = v55;
            v46 = v56;
            v47 = v57;
            v48 = v58;
            v43 = v53;
            v44 = v54;
          }

          v26 = sub_2394FCB7C(v23, v3, v25, 0, &v41);
          v27 = *(*(a1 + 64) + 8);
          *(v27 + 48) = v26;
          *(v27 + 56) = v28;
          v29 = *(*(*(a1 + 64) + 8) + 48);
          if (v29)
          {
            v41 = 1;
            v42 = "dwnfw_setup_pase_session";
            LODWORD(v43) = v29;
            BYTE4(v43) = 3;
            sub_23948BD20(&v41);
            v15 = obj;
            goto LABEL_25;
          }

          sub_238DB5C88(*(*(a1 + 40) + 1640), v3);
        }
      }

      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v36 objects:v62 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

LABEL_28:
  v30 = [MTRDeviceController_Concrete checkForError:*(*(*(a1 + 64) + 8) + 48) logMsg:*(*(*(a1 + 64) + 8) + 56) error:@"Failure while pairing the device", *(a1 + 72)];
LABEL_29:
  v31 = v30;
  sub_238F3F7E4(v40);
  v32 = *MEMORY[0x277D85DE8];
  return !v31;
}

void sub_239289984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_238F3F7E4(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_239289A18(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952D1DC();
  }

  return a1 + 8;
}

BOOL sub_23928A058(uint64_t a1)
{
  v198 = *MEMORY[0x277D85DE8];
  v151[0] = 0;
  v151[4] = 0;
  v151[8] = 0;
  v152 = 0;
  v155 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v162 = 0;
  v164 = 0;
  v168 = 0;
  v170 = 0;
  v172 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178[0] = 0;
  v178[24] = 0;
  v178[40] = 0;
  v178[64] = 0;
  v178[88] = 0;
  v178[112] = 0;
  v178[136] = 0;
  v178[152] = 0;
  v178[156] = 0;
  v178[160] = 0;
  v178[162] = 0;
  v178[164] = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v179 = 0u;
  v180 = 0;
  v184 = 0;
  v185 = 0;
  LOBYTE(v187) = 0;
  v188 = 0;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0u;
  v197 = 0;
  __p = 0;
  v146 = 0;
  v147 = 0;
  if ([*(a1 + 32) readEndpointInformation])
  {
    v1 = sub_239298174();
    if (v2)
    {
      v3 = v1;
      v4 = v146;
      v5 = 12 * v2;
      do
      {
        if (v4 >= v147)
        {
          v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - __p) >> 2);
          v8 = v7 + 1;
          if (v7 + 1 > 0x1555555555555555)
          {
            sub_238DBAEA8();
          }

          if (0x5555555555555556 * ((v147 - __p) >> 2) > v8)
          {
            v8 = 0x5555555555555556 * ((v147 - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v147 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v9 = 0x1555555555555555;
          }

          else
          {
            v9 = v8;
          }

          if (v9)
          {
            sub_238DBAF50(&__p, v9);
          }

          v10 = 4 * ((v4 - __p) >> 2);
          v11 = *v3;
          *(v10 + 8) = v3[2];
          *v10 = v11;
          v4 = 12 * v7 + 12;
          memcpy((12 * v7 - (v146 - __p)), __p, v146 - __p);
          v12 = __p;
          __p = (12 * v7 - (v146 - __p));
          v146 = v4;
          v147 = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          v6 = *v3;
          *(v4 + 8) = v3[2];
          *v4 = v6;
          v4 += 12;
        }

        v146 = v4;
        v3 += 3;
        v5 -= 12;
      }

      while (v5);
    }
  }

  v13 = [*(a1 + 32) extraAttributesToRead];
  v14 = v13 == 0;

  if (!v14)
  {
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v15 = [*(a1 + 32) extraAttributesToRead];
    v16 = [v15 countByEnumeratingWithState:&v141 objects:v150 count:16];
    if (v16)
    {
      v17 = *v142;
      v18 = v15;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v142 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v141 + 1) + 8 * i);
          v21 = v146;
          if (v146 >= v147)
          {
            v23 = 0xAAAAAAAAAAAAAAABLL * ((v146 - __p) >> 2);
            v24 = v23 + 1;
            if (v23 + 1 > 0x1555555555555555)
            {
              sub_238DBAEA8();
            }

            if (0x5555555555555556 * ((v147 - __p) >> 2) > v24)
            {
              v24 = 0x5555555555555556 * ((v147 - __p) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v147 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v25 = 0x1555555555555555;
            }

            else
            {
              v25 = v24;
            }

            if (v25)
            {
              sub_238DBAF50(&__p, v25);
            }

            v26 = 4 * ((v146 - __p) >> 2);
            *(v26 + 8) = -1;
            *v26 = -1;
            v22 = 12 * v23 + 12;
            v27 = (12 * v23 - (v146 - __p));
            memcpy((v26 - (v146 - __p)), __p, v146 - __p);
            v28 = __p;
            __p = v27;
            v146 = v22;
            v147 = 0;
            if (v28)
            {
              operator delete(v28);
            }

            v15 = v18;
          }

          else
          {
            *v146 = -1;
            *(v21 + 2) = -1;
            v22 = (v21 + 12);
          }

          v146 = v22;
          [v20 convertToAttributePathParams:v22 - 12];
        }

        v16 = [v15 countByEnumeratingWithState:&v141 objects:v150 count:16];
      }

      while (v16);
    }
  }

  if (__p != v146)
  {
    sub_238DB9BD8(&v137, __p, 0xAAAAAAAAAAAAAAABLL * ((v146 - __p) >> 2));
    sub_238DB9BD8(buf, v137, v138);
    v196 = *buf;
  }

  v29 = [*(a1 + 32) csrNonce];
  v30 = v29 == 0;

  if (!v30)
  {
    v31 = [*(a1 + 32) csrNonce];
    v32 = v31;
    sub_238DB6950(buf, [v31 bytes], objc_msgSend(v31, "length"));

    v160 = 1;
    v161 = *buf;
  }

  v33 = [*(a1 + 32) attestationNonce];
  v34 = v33 == 0;

  if (!v34)
  {
    v35 = [*(a1 + 32) attestationNonce];
    v36 = v35;
    sub_238DB6950(buf, [v35 bytes], objc_msgSend(v35, "length"));

    v162 = 1;
    v163 = *buf;
  }

  v37 = [*(a1 + 32) threadOperationalDataset];
  v38 = v37 == 0;

  v39 = *(a1 + 32);
  if (v38)
  {
    v43 = [v39 preventNetworkScans];
    v42 = a1;
    if ((v43 & 1) == 0 && (v172 & 1) == 0)
    {
      v187 = 257;
    }
  }

  else
  {
    v40 = [v39 threadOperationalDataset];
    v41 = v40;
    sub_238DB6950(buf, [v40 bytes], objc_msgSend(v40, "length"));

    v172 = 1;
    v173 = *buf;
    v187 = 1;

    v42 = a1;
  }

  v44 = [*(v42 + 32) acceptedTermsAndConditions];
  if (v44)
  {
    v45 = [*(a1 + 32) acceptedTermsAndConditionsVersion];
    v46 = v45 == 0;

    if (!v46)
    {
      v47 = [*(a1 + 32) acceptedTermsAndConditions];
      v48 = [v47 unsignedIntValue] < 0x10000;

      if (v48)
      {
        v49 = [*(a1 + 32) acceptedTermsAndConditionsVersion];
        v50 = [v49 unsignedIntValue] < 0x10000;

        if (v50)
        {
          v51 = [*(a1 + 32) acceptedTermsAndConditions];
          v52 = [v51 unsignedIntValue];
          v53 = [*(a1 + 32) acceptedTermsAndConditionsVersion];
          v54 = [v53 unsignedIntValue];

          v170 = 1;
          v171 = v52 | (v54 << 16);
          goto LABEL_55;
        }

        v118 = sub_2393D9044(0);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          v119 = *(a1 + 40);
          *buf = 138412290;
          *&buf[4] = v119;
          _os_log_impl(&dword_238DAE000, v118, OS_LOG_TYPE_ERROR, "%@ Error: acceptedTermsAndConditionsVersion value should be between 0 and 65535", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v123 = *(a1 + 40);
          sub_2393D5320(0, 1);
        }

        if (*(a1 + 56))
        {
          v72 = sub_23921C1E4(MTRError, 0x4850000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
          goto LABEL_106;
        }
      }

      else
      {
        v70 = sub_2393D9044(0);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = *(a1 + 40);
          *buf = 138412290;
          *&buf[4] = v71;
          _os_log_impl(&dword_238DAE000, v70, OS_LOG_TYPE_ERROR, "%@ Error: acceptedTermsAndConditions value should be between 0 and 65535", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v122 = *(a1 + 40);
          sub_2393D5320(0, 1);
        }

        if (*(a1 + 56))
        {
          v72 = sub_23921C1E4(MTRError, 0x47D0000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
LABEL_106:
          v117 = 0;
          **(a1 + 56) = v72;
          goto LABEL_108;
        }
      }

      v117 = 0;
      goto LABEL_108;
    }
  }

LABEL_55:
  v55 = [*(a1 + 32) skipCommissioningComplete];
  v188 = 1;
  v189 = v55;
  v56 = [*(a1 + 32) wifiSSID];
  v57 = v56 == 0;

  v58 = *(a1 + 32);
  if (!v57)
  {
    v59 = [v58 wifiSSID];
    v60 = v59;
    sub_238DB6950(buf, [v59 bytes], objc_msgSend(v59, "length"));

    v61 = *buf;
    v62 = *&buf[8];

    v63 = [*(a1 + 32) wifiCredentials];
    LOBYTE(v59) = v63 == 0;

    if (v59)
    {
      v66 = 0uLL;
    }

    else
    {
      v64 = [*(a1 + 32) wifiCredentials];
      v65 = v64;
      sub_238DB6950(buf, [v64 bytes], objc_msgSend(v64, "length"));

      v126 = *buf;
      v66 = v126;
    }

    v69 = 0;
    v164 = 1;
    v165 = v61;
    v166 = v62;
    v167 = v66;
    v68 = a1;
    goto LABEL_68;
  }

  v67 = [v58 preventNetworkScans];
  v68 = a1;
  if ((v67 & 1) == 0)
  {
    v69 = 1;
LABEL_68:
    v185 = 1;
    v186 = v69;
  }

  v73 = [*(v68 + 32) deviceAttestationDelegate];
  v74 = v73 == 0;

  if (!v74)
  {
    [*(a1 + 40) clearDeviceAttestationDelegateBridge];
    v75 = [*(a1 + 32) failSafeTimeout];
    v76 = v75 == 0;

    if (!v76)
    {
      v77 = [*(a1 + 32) failSafeTimeout];
      [v77 unsignedIntValue];
    }

    v78 = [*(a1 + 32) deviceAttestationDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v79 = [*(a1 + 32) deviceAttestationDelegate];
      objc_opt_respondsToSelector();
    }

    operator new();
  }

  v80 = [*(a1 + 32) countryCode];
  v81 = v80 == 0;

  if (!v81)
  {
    v82 = [*(a1 + 32) countryCode];
    v83 = v82;
    sub_238DB9BD8(buf, [v82 UTF8String], objc_msgSend(v82, "lengthOfBytesUsingEncoding:", 4));

    v168 = 1;
    v169 = *buf;
  }

  v84 = [MEMORY[0x277CBEBB0] localTimeZone];
  LODWORD(v137) = 0;
  v138 = 0;
  v139 = 0;
  v125 = v84;
  v85 = [v84 secondsFromGMT];
  [v84 daylightSavingTimeOffset];
  LODWORD(v137) = (v85 - v86);
  v87 = [v84 name];
  v88 = v87;
  sub_238DB9BD8(buf, [v87 UTF8String], objc_msgSend(v87, "lengthOfBytesUsingEncoding:", 4));

  v139 = 1;
  v140 = *buf;

  v89 = 0;
  v152 = 1;
  v153 = &v137;
  v154 = 1;
  do
  {
    v90 = &buf[v89];
    *v90 = 0;
    *(v90 + 1) = 0;
    v90[16] = 0;
    v90[24] = 0;
    v89 += 32;
  }

  while (v89 != 128);
  v91 = sub_2393AFFBC(4);
  v92 = a1;
  v127 = v91;
  if (v91)
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v93 = v91;
    v94 = [v93 countByEnumeratingWithState:&v133 objects:v148 count:16];
    if (v94)
    {
      v95 = 0;
      v96 = *v134;
      while (2)
      {
        v97 = 0;
        v98 = v95;
        v99 = v95 <= 4;
        v100 = 4 - v95;
        if (v99)
        {
          v101 = v100;
        }

        else
        {
          v101 = 0;
        }

        v124 = v98;
        v102 = &buf[32 * v98 + 24];
        do
        {
          if (*v134 != v96)
          {
            objc_enumerationMutation(v93);
          }

          if (v101 == v97)
          {
            v109 = v124 + v97;
            goto LABEL_98;
          }

          v103 = *(*(&v133 + 1) + 8 * v97);
          v104 = [v103 offset];
          *(v102 - 6) = [v104 intValue];

          v105 = [v103 validStarting];
          *(v102 - 2) = [v105 unsignedLongLongValue];

          v106 = [v103 validUntil];
          v107 = v106 == 0;

          if (v107)
          {
            if (*v102 == 1)
            {
              *v102 = 0;
            }
          }

          else
          {
            v108 = [v103 validUntil];
            *(v102 - 1) = [v108 unsignedLongLongValue];
            *v102 = 1;
          }

          ++v97;
          v102 += 32;
        }

        while (v94 != v97);
        v94 = [v93 countByEnumeratingWithState:&v133 objects:v148 count:16];
        v95 = v124 + v97;
        if (v94)
        {
          continue;
        }

        break;
      }

      v109 = v124 + v97;
    }

    else
    {
      v109 = 0;
    }

LABEL_98:

    v155 = 1;
    v156 = buf;
    v157 = v109;
    v92 = a1;
  }

  v110 = [*(v92 + 48) unsignedLongLongValue];
  *(*(*(v92 + 40) + 1648) + 32) = v110;
  v111 = *(*(v92 + 40) + 1640);
  v112 = [*(v92 + 32) copy];
  sub_238DB5C90(v111, v112);

  v113 = (*(**(*(a1 + 40) + 1616) + 56))(*(*(a1 + 40) + 1616), v110, v151);
  v115 = v114;
  v129 = 2;
  v130 = "dwnfw_commission_node";
  v131 = v113;
  v132 = 3;
  sub_23948BD20(&v129);
  v116 = [MTRDeviceController_Concrete checkForError:v113 logMsg:v115 error:@"Failure while pairing the device", *(a1 + 56)];

  v117 = !v116;
LABEL_108:
  if (__p)
  {
    v146 = __p;
    operator delete(__p);
  }

  sub_239293190(v178);
  v120 = *MEMORY[0x277D85DE8];
  return v117;
}

void sub_23928AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239293190(&STACK[0x420]);
  _Unwind_Resume(a1);
}

uint64_t sub_23928B460(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1656);
  if (v3)
  {
    LODWORD(v3) = *(v3 + 8);
  }

  if (*(a1 + 56))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_2394FD380(*(v2 + 1616), *(a1 + 40), v4);
  v7 = v6;
  v9 = 2;
  v10 = "dwnfw_commission_post_attestation";
  v11 = v5;
  v12 = 3;
  sub_23948BD20(&v9);
  return [MTRDeviceController_Concrete checkForError:v5 logMsg:v7 error:@"Failure while pairing the device", *(a1 + 48)]^ 1;
}

BOOL sub_23928B97C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 1648) + 32) = 0;
  v2 = sub_2394FE350(*(*(a1 + 32) + 1616), [*(a1 + 40) unsignedLongLongValue]);
  v4 = v3;
  *buf = 2;
  *&v14[4] = "dwnfw_cancel_commissioning";
  *&v14[12] = v2;
  v14[16] = 3;
  sub_23948BD20(buf);
  v5 = [MTRDeviceController_Concrete checkForError:v2 logMsg:v4 error:@"Failure while trying to stop the pairing process", *(a1 + 56)];
  if (!v5 && *(a1 + 64) == 1)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      *buf = 138412546;
      *v14 = v7;
      *&v14[8] = 2112;
      *&v14[10] = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Notifying commissioning complete manually because %@ is being canceled while waiting after PASE establishment", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      sub_2393D5320(0, 2);
    }

    (*(**(*(a1 + 32) + 1640) + 40))(*(*(a1 + 32) + 1640), [*(a1 + 40) unsignedLongLongValue], 0x54E00000074, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
  }

  v9 = *MEMORY[0x277D85DE8];
  return !v5;
}

uint64_t sub_23928BC54(void *a1)
{
  if (*(a1[4] + 1576))
  {
    v5 = 2;
    v6 = "dwnfw_start_browse_commissionables";
    v7 = 0;
    v8 = 1;
    sub_23948BD20(&v5);
    return 0;
  }

  else
  {
    v3 = [[MTRCommissionableBrowser alloc] initWithDelegate:a1[5] controller:a1[4] queue:a1[6]];
    v1 = [(MTRCommissionableBrowser *)v3 start];
    if (v1)
    {
      objc_storeStrong((a1[4] + 1576), v3);
    }

    else
    {
      v5 = 2;
      v6 = "dwnfw_start_browse_commissionables";
      v7 = 0;
      v8 = 1;
      sub_23948BD20(&v5);
    }
  }

  return v1;
}

uint64_t sub_23928BDF0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1576);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 stop];
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 1576);
      *(v5 + 1576) = 0;
    }

    else
    {
      v8 = 2;
      v9 = "dwnfw_stop_browse_commissionables";
      v10 = 0;
      v11 = 1;
      sub_23948BD20(&v8);
    }
  }

  else
  {
    v8 = 2;
    v9 = "dwnfw_stop_browse_commissionables";
    v10 = 0;
    v11 = 1;
    sub_23948BD20(&v8);
    return 0;
  }

  return v4;
}

MTRBaseDevice *sub_23928C0E0(uint64_t a1)
{
  v13 = 0;
  v2 = sub_2394FB5A4(*(*(a1 + 32) + 1616), [*(a1 + 40) unsignedLongLongValue], &v13);
  v4 = v3;
  v9 = 2;
  v10 = "dwnfw_dev_being_commissioned";
  v11 = v2;
  v12 = 3;
  sub_23948BD20(&v9);
  v5 = [MTRDeviceController_Concrete checkForError:v2 logMsg:v4 error:@"Failure obtaining device being commissioned", *(a1 + 48)];
  v6 = 0;
  if (!v5)
  {
    v7 = [MTRBaseDevice alloc];
    v6 = [(MTRBaseDevice *)v7 initWithPASEDevice:v13 controller:*(a1 + 32)];
  }

  return v6;
}

uint64_t sub_23928C728(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = a1 + 40, sub_23928C7AC(*(*(a1 + 40) + 1648), v2, *(a1 + 48)), ([*(a1 + 32) shouldSkipAttestationCertificateValidation] & 1) != 0))
  {
    v4 = &OBJC_IVAR___MTRDeviceController_Concrete__partialDACVerifier;
  }

  else
  {
    v3 = a1 + 40;
    v4 = &OBJC_IVAR___MTRDeviceController_Concrete__defaultDACVerifier;
  }

  *(*(*v3 + 1616) + 9200) = *(*v3 + *v4);
  return 1;
}

void sub_23928C7AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 96);
  *(a1 + 96) = v5;
  v9 = v5;

  v8 = *(a1 + 104);
  *(a1 + 104) = v6;
}

id sub_23928C90C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v9[0] = "dwnfw_attestation_challenge_for_device";
  v9[1] = &v10;
  v10 = 0;
  v13 = 0;
  v14 = "dwnfw_attestation_challenge_for_device";
  v15 = 0;
  sub_23948BD20(&v13);
  v10 = sub_2394FB5A4(*(*(a1 + 32) + 1616), [*(a1 + 40) unsignedLongLongValue], &v12);
  v11 = v2;
  if ([MTRDeviceController_Concrete checkForError:v10 logMsg:v2 error:@"Failure obtaining device being commissioned", 0]|| (v7 = &v13, v8 = 16, v10 = (*(*v12 + 64))(v12, &v7), v11 = v3, [MTRDeviceController_Concrete checkForError:v10 logMsg:v3 error:@"Failure getting attestation challenge", 0]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:v8];
  }

  sub_238F3F7E4(v9);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_23928CA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_238F3F7E4(va);
  _Unwind_Resume(a1);
}

void sub_23928CD04(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 1672) addObject:*(a1 + 40)];
  [*(a1 + 40) registerMatterEndpoint];
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) endpointID];
    v5 = [v4 unsignedLongLongValue];
    v6 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v12 = v3;
    v13 = 1024;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "%@ Added server endpoint %u to controller %@", buf, 0x1Cu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) endpointID];
    [v8 unsignedLongLongValue];
    v10 = [*(a1 + 32) uniqueIdentifier];
    sub_2393D5320(0, 2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23928CEA8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) endpointID];
    *buf = 138412546;
    v11 = v5;
    v12 = 1024;
    LOWORD(v13) = [v6 unsignedLongLongValue];
    v13 = v13;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Unexpected failure dispatching to Matter queue on running controller in addServerEndpoint, adding endpoint %u", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) endpointID];
    [v8 unsignedLongLongValue];
    sub_2393D5320(0, 1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23928D1D4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeServerEndpointOnMatterQueue:*(a1 + 40)];
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) endpointID];
    v5 = [v4 unsignedLongLongValue];
    v6 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v14 = v3;
    v15 = 1024;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "%@ Removed server endpoint %u from controller %@", buf, 0x1Cu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) endpointID];
    [v8 unsignedLongLongValue];
    v12 = [*(a1 + 32) uniqueIdentifier];
    sub_2393D5320(0, 2);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      dispatch_async(v9, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23928D37C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) endpointID];
    *buf = 138412546;
    v13 = v5;
    v14 = 1024;
    LOWORD(v15) = [v6 unsignedLongLongValue];
    v15 = v15;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ controller already shut down, so endpoint %u has already been removed", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) endpointID];
    [v8 unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      dispatch_async(v9, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23928DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23928E058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_23928E144;
  v11 = &unk_278A740F8;
  v12 = *(a1 + 40);
  v6 = v5;
  v13 = v6;
  v7 = MEMORY[0x23EE78590](&v8);
  [*(a1 + 32) directlyGetSessionForNode:*(a1 + 48) completion:{v7, v8, v9, v10, v11}];
}

void sub_23928E144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v7 = a5;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_23928E470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23928E594(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_23928E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_238EA92A0(&a9);

  _Unwind_Resume(a1);
}

void sub_23928E750(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = sub_2394FB5A4(a2, *(a1 + 40), &v16);
  if (v4)
  {
    v5 = *(a1 + 32);
    LOBYTE(v14) = 0;
    v6 = sub_23921C1E4(MTRError, v4, v3);
    (*(v5 + 16))(v5, 0, &v14, v6, 0);

    if (v14 == 1)
    {
      (*(*v15 + 32))(v15);
    }
  }

  else
  {
    (*(*v16 + 48))(&v14);
    if (v14 == 1 && (v7 = sub_238EA9094(&v14), *(sub_239495304(*v7) + 57) == 1))
    {
      v8 = *(a1 + 32);
      v9 = (*(*v16 + 40))(v16);
      (*(v8 + 16))(v8, v9, &v14, 0, 0);
    }

    else
    {
      v10 = *(a1 + 32);
      v12[0] = 0;
      v11 = sub_23921C1E4(MTRError, 0x6ED00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      (*(v10 + 16))(v10, 0, v12, v11, 0);

      if (v12[0] == 1)
      {
        (*(*v13 + 32))(v13);
      }
    }

    if (v14 == 1)
    {
      (*(*v15 + 32))(v15);
    }
  }
}

void sub_23928E97C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);

  sub_238EA92A0(va);
  sub_238EA92A0(va1);
  _Unwind_Resume(a1);
}

void sub_23928E9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_23928EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_238EA92A0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_23928EB6C(uint64_t a1)
{
  result = [*(a1 + 32) checkIsRunning];
  if (result)
  {
    if ([*(a1 + 40) isPASEDevice])
    {
      v10 = 0;
      result = sub_2394FB5A4(*(*(a1 + 32) + 1616), [*(a1 + 40) nodeID], &v10);
      if (!result)
      {
        *(*(*(a1 + 48) + 8) + 24) = *(v10 + 64);
      }
    }

    else
    {
      v3 = *(*(a1 + 32) + 1616);
      v4 = [*(a1 + 40) nodeID];
      v5 = *(v3 + 36);
      v6 = *(*(*(a1 + 32) + 1616) + 4280);
      if (v6)
      {
        v7 = *(v6 + 40);
      }

      else
      {
        v7 = 0;
      }

      v9[0] = 0;
      result = sub_23949A820(v7, v4, v5, v9, 0, &v10);
      if (v10)
      {
        v8 = sub_238EA9094(&v10);
        result = sub_239495304(*v8);
        *(*(*(a1 + 48) + 8) + 24) = *(result + 112);
        if (v10)
        {
          return (*(*v11 + 32))(v11);
        }
      }
    }
  }

  return result;
}

void sub_23928ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_238EA92A0(va);
  _Unwind_Resume(a1);
}

void sub_23928EDEC(void *a1)
{
  v2 = a1[4];
  v7 = 0;
  v3 = [v2 checkIsRunning:&v7];
  v4 = v7;
  if (v3)
  {
    v5 = a1[6];
    v6 = *(a1[4] + 1616);
LABEL_4:
    (*(v5 + 16))(v5, v6);
    goto LABEL_5;
  }

  v5 = a1[5];
  v6 = v4;
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_23928F164(uint64_t a1)
{
  result = [*(a1 + 32) checkIsRunning:*(a1 + 48)];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_23928F2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_23928F314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23928F32C(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_23928F464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23928F48C(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

BOOL sub_23928F6C0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4 != (*(*a2 + 24))(a2))
  {
    return 0;
  }

  v5 = (*(*a1 + 56))(a1);
  v6 = (*(*a2 + 56))(a2);
  v7 = (*(*a1 + 24))(a1);

  return sub_2393F9148(v5, v6, v7);
}

uint64_t sub_23928F8C0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1616);
  v2 = *(v1 + 4280);
  if (!v2 || (v3 = *(v2 + 40)) == 0)
  {
    sub_23952D284();
  }

  v4 = [*(a1 + 40) unsignedLongLongValue];
  v5 = *(v1 + 36);
  v8 = v4;
  v9 = v5;
  v7 = 513;
  return sub_239497AE8(v3, &v8, &v7);
}

uint64_t sub_239290654(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23929093C(*(*(a1 + 32) + 1616), v27);
  if (v27[0])
  {
    v2 = sub_239289A18(v27);
    sub_239293360(buf, v2);
    v3 = *(a1 + 40);
    v4 = v3;
    sub_238DB6950(&v19, [v3 bytes], objc_msgSend(v3, "length"));

    v5 = v19;
    v6 = *(a1 + 48);
    if (v6)
    {
      v18 = v19;
      v7 = v6;
      v8 = v7;
      sub_238DB6950(&v19, [v7 bytes], objc_msgSend(v7, "length"));

      v5 = v18;
      v9 = v19;
    }

    else
    {
      v9 = 0uLL;
    }

    v22 = 1;
    v23 = v5;
    v24 = v9;
    v26 = 1;
    v13 = *(*(*(a1 + 32) + 1616) + 9136);
    if (!(*(*v13 + 16))(v13, buf))
    {
      sub_239507A2C(*(*(a1 + 32) + 1616));
    }

    v14 = *(a1 + 56);
    v12 = [MTRDeviceController_Concrete checkForError:"checkForError:logMsg:error:" logMsg:? error:?]^ 1;
    sub_239293190(v25);
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ Has no commissioning parameters", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v17 = *(a1 + 32);
      sub_2393D5320(0, 1);
    }

    if (*(a1 + 56))
    {
      sub_23921C1E4(MTRError, 0x7F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      **(a1 + 56) = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v27[0] == 1)
  {
    sub_239293190(v28);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2392908DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_239293190(&a63);
  if (LOBYTE(STACK[0x2E8]) == 1)
  {
    sub_239293190(&STACK[0x470]);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_23929093C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 9136);
  if (result)
  {
    v4 = (*(*result + 24))(result);

    return sub_239293310(a2, v4);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_239290BD4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23929093C(*(*(a1 + 32) + 1616), v20);
  if (v20[0])
  {
    v2 = sub_239289A18(v20);
    sub_239293360(buf, v2);
    v3 = *(a1 + 40);
    v4 = v3;
    sub_238DB6950(&v13, [v3 bytes], objc_msgSend(v3, "length"));

    v16 = 1;
    v17 = v13;
    v19 = 1;
    v5 = *(*(*(a1 + 32) + 1616) + 9136);
    if (!(*(*v5 + 16))(v5, buf))
    {
      sub_239507A2C(*(*(a1 + 32) + 1616));
    }

    v6 = *(a1 + 48);
    v7 = [MTRDeviceController_Concrete checkForError:"checkForError:logMsg:error:" logMsg:? error:?]^ 1;
    sub_239293190(v18);
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ Has no commissioning parameters", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v12 = *(a1 + 32);
      sub_2393D5320(0, 1);
    }

    if (*(a1 + 48))
    {
      sub_23921C1E4(MTRError, 0x81F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      **(a1 + 48) = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v20[0] == 1)
  {
    sub_239293190(v21);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_239290E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_239293190(&a61);
  if (LOBYTE(STACK[0x2D8]) == 1)
  {
    sub_239293190(&STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void sub_239291D6C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239291E28;
  v10[3] = &unk_278A74288;
  v6 = a1[6];
  v14 = a1[7];
  v8 = a1[4];
  v7 = a1[5];
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void sub_239291E28(void *a1)
{
  if (a1[4])
  {
    v2 = 0;
  }

  else
  {
    v3 = [MTRBaseDevice alloc];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
    v6 = [(MTRBaseDevice *)v3 initWithNodeID:v4 controller:a1[5]];

    v2 = v6;
  }

  v5 = a1[4];
  v7 = v2;
  (*(a1[6] + 16))();
}

void sub_2392922AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_239292304(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 48) + 8) + 48;
  v17[0] = "dwnfw_pair_device";
  v17[1] = v2;
  v18.n128_u32[0] = 0;
  v18.n128_u64[1] = "dwnfw_pair_device";
  LOBYTE(v21) = 0;
  sub_23948BD20(&v18);
  sub_2393CF730([*(a1 + 32) UTF8String], &v16);
  v3 = *(a1 + 76);
  *(*(*(a1 + 40) + 1648) + 32) = *(a1 + 56);
  v32 = 0;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v4 = *(a1 + 72);
  v18 = v16;
  v19 = 1;
  v20 = v3;
  v21 = 0;
  v22 = 0;
  v23 = v4;
  v24 = 0;
  v25 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v12 = 0;
  v13 = "dwnfw_setup_pase_session";
  v15 = 0;
  sub_23948BD20(&v12);
  v5 = sub_2394FBC2C(*(*(a1 + 40) + 1616), *(a1 + 56), &v18);
  v6 = *(*(a1 + 48) + 8);
  *(v6 + 48) = v5;
  *(v6 + 56) = v7;
  v8 = *(*(*(a1 + 48) + 8) + 48);
  if (v8)
  {
    v12 = 1;
    v13 = "dwnfw_setup_pase_session";
    v14 = v8;
    v15 = 3;
    sub_23948BD20(&v12);
  }

  else
  {
    sub_238DB5C88(*(*(a1 + 40) + 1640), *(a1 + 56));
  }

  v9 = [MTRDeviceController_Concrete checkForError:*(*(*(a1 + 48) + 8) + 48) logMsg:*(*(*(a1 + 48) + 8) + 56) error:@"Failure while pairing the device", *(a1 + 64)];
  sub_238F3F7E4(v17);
  v10 = *MEMORY[0x277D85DE8];
  return !v9;
}

void sub_2392924D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_238F3F7E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2392927C8(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v4[0] = "dwnfw_open_pairing_window";
  v4[1] = &v5;
  v7 = 0;
  v8 = "dwnfw_open_pairing_window";
  v9 = 0;
  sub_23948BD20(&v7);
  v5 = sub_239520330(*(*(a1 + 32) + 1616), *(a1 + 40), *(a1 + 48));
  v6 = v2;
  LODWORD(a1) = [MTRDeviceController_Concrete checkForError:v5 logMsg:v2 error:@"Open Pairing Window failed", *(a1 + 56)];
  sub_238F3F7E4(v4);
  return a1 ^ 1;
}

void sub_239292864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_238F3F7E4(va);
  _Unwind_Resume(a1);
}

void sub_239292C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  sub_238F3F7E4(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_239292CD4(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  LOBYTE(v40) = 0;
  *v42 = 0;
  v42[2] = 0;
  *&v42[6] = 0;
  *(&v40 + 2) = 0;
  HIWORD(v40) = 0;
  v43 = v44;
  v44[0] = 0;
  v46[0] = 0;
  v46[1] = 0;
  v44[1] = 0;
  v45 = v46;
  v2 = *(*(a1 + 32) + 1616);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  LOBYTE(__p[0]) = 1;
  HIDWORD(__p[0]) = v6;
  v34[0] = 0;
  v7 = sub_239520478(v2, v3, v4, 1000, v5, __p, v34, &v40, 0);
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 48) = v7;
  *(v8 + 56) = v9;
  if ([MTRDeviceController_Concrete checkForError:*(*(*(a1 + 40) + 8) + 48) logMsg:*(*(*(a1 + 40) + 8) + 56) error:@"Open Pairing Window failed", *(a1 + 80)])
  {
    v10 = 0;
  }

  else
  {
    *v34 = v40;
    *&v34[3] = *(&v40 + 3);
    v35 = HIBYTE(v40);
    if (HIBYTE(v40) == 1)
    {
      v36 = v41;
    }

    v37 = *v42;
    v38 = *&v42[8];
    v39 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    v11 = sub_23948CB80(v34, __p);
    v12 = v11;
    v13 = *(*(a1 + 40) + 8);
    *(v13 + 48) = v11;
    *(v13 + 56) = v14;
    v15 = sub_2393D9044(0);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v16)
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v48 = v17;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ Failed to get decimal setup code", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v30 = *(a1 + 32);
        sub_2393D5320(0, 1);
      }

      v10 = 0;
    }

    else
    {
      if (v16)
      {
        v18 = *(a1 + 32);
        v19 = __p;
        if (v33 < 0)
        {
          v19 = __p[0];
        }

        *buf = 138412546;
        v48 = v18;
        v49 = 2080;
        v50 = v19;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ Setup code is %s", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v20 = *(a1 + 32);
        v21 = __p;
        if (v33 < 0)
        {
          v21 = __p[0];
        }

        v29 = *(a1 + 32);
        v31 = v21;
        sub_2393D5320(0, 1);
      }

      v22 = MEMORY[0x277CCACA8];
      v23 = SHIBYTE(v33);
      v24 = __p[0];
      v25 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
      if (v23 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = v24;
      }

      v10 = [v22 stringWithCString:v26 encoding:v25];
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_238EF5F20(&v45, v46[0]);
  sub_238EF5F20(&v43, v44[0]);
  v27 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_239292FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_238EED304(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_239293160(uint64_t a1)
{
  if (*(a1 + 32) == 1 && (v1 = *(a1 + 36), *(a1 + 36)) && (v2 = *(a1 + 4280)) != 0 && (v3 = *(v2 + 72)) != 0)
  {
    return sub_2394A7FC0(v3, v1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_239293190(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_2393F9144(a1 + 1, 16);
  }

  return a1;
}

uint64_t sub_2392931D0(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4, char a5)
{
  v9 = a3;
  *a1 = &unk_284BB73C0;
  *(a1 + 8) = 0;
  objc_initWeak((a1 + 16), a2);
  *(a1 + 24) = v9;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 32) = dispatch_queue_create("org.csa-iot.matter.framework.device_attestation.workqueue", v10);

  *(a1 + 40) = 0;
  v11 = *a4;
  *(a1 + 40) = v11;
  if (v11 == 1)
  {
    *(a1 + 42) = *(a4 + 1);
  }

  *(a1 + 44) = a5;
  return a1;
}

uint64_t sub_239293294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (*(a1 + 32) == 1)
  {
    v14 = v5;
    v15 = v6;
    v7 = *(*(a1 + 4280) + 96);
    v8 = *(a1 + 36);
    v12 = a2;
    v13 = v8;
    sub_2394C4C84(v7, &v12, a3, a4, 1, 0, a5);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0x12100000000;
    v10 = 3;
  }

  return v10 | v9;
}

_BYTE *sub_239293310(_BYTE *a1, unsigned __int8 *a2)
{
  *a1 = 1;
  sub_239293360((a1 + 8), a2);
  return a1;
}

void sub_239293340(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_239293190(v1 + 392);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239293360(uint64_t result, unsigned __int8 *a2)
{
  *result = 0;
  v2 = *a2;
  *result = v2;
  if (v2 == 1)
  {
    *(result + 2) = *(a2 + 1);
  }

  *(result + 4) = 0;
  v3 = a2[4];
  *(result + 4) = v3;
  if (v3 == 1)
  {
    *(result + 6) = *(a2 + 3);
  }

  *(result + 8) = 0;
  v4 = a2[8];
  *(result + 8) = v4;
  if (v4 == 1)
  {
    *(result + 9) = a2[9];
  }

  *(result + 16) = 0;
  v5 = a2[16];
  *(result + 16) = v5;
  if (v5 == 1)
  {
    *(result + 24) = *(a2 + 24);
  }

  *(result + 40) = 0;
  v6 = a2[40];
  *(result + 40) = v6;
  if (v6 == 1)
  {
    *(result + 48) = *(a2 + 3);
  }

  *(result + 64) = 0;
  v7 = a2[64];
  *(result + 64) = v7;
  if (v7 == 1)
  {
    v8 = *(a2 + 72);
    *(result + 88) = *(a2 + 11);
    *(result + 72) = v8;
  }

  *(result + 96) = 0;
  v9 = a2[96];
  *(result + 96) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 104);
    *(result + 120) = *(a2 + 15);
    *(result + 104) = v10;
  }

  *(result + 128) = 0;
  v11 = a2[128];
  *(result + 128) = v11;
  if (v11 == 1)
  {
    *(result + 136) = *(a2 + 136);
  }

  *(result + 152) = 0;
  v12 = a2[152];
  *(result + 152) = v12;
  if (v12 == 1)
  {
    *(result + 160) = *(a2 + 10);
  }

  *(result + 176) = 0;
  v13 = a2[176];
  *(result + 176) = v13;
  if (v13 == 1)
  {
    v14 = *(a2 + 184);
    *(result + 200) = *(a2 + 200);
    *(result + 184) = v14;
  }

  *(result + 216) = 0;
  v15 = a2[216];
  *(result + 216) = v15;
  if (v15 == 1)
  {
    *(result + 224) = *(a2 + 14);
  }

  *(result + 240) = 0;
  v16 = a2[240];
  *(result + 240) = v16;
  if (v16 == 1)
  {
    *(result + 242) = *(a2 + 242);
  }

  *(result + 248) = 0;
  v17 = a2[248];
  *(result + 248) = v17;
  if (v17 == 1)
  {
    *(result + 256) = *(a2 + 16);
  }

  *(result + 272) = 0;
  v18 = a2[272];
  *(result + 272) = v18;
  if (v18 == 1)
  {
    v19 = *(a2 + 296);
    *(result + 280) = *(a2 + 280);
    *(result + 296) = v19;
  }

  *(result + 312) = 0;
  v20 = a2[312];
  *(result + 312) = v20;
  if (v20 == 1)
  {
    *(result + 320) = *(a2 + 20);
  }

  *(result + 336) = 0;
  v21 = a2[336];
  *(result + 336) = v21;
  if (v21 == 1)
  {
    *(result + 344) = *(a2 + 344);
  }

  *(result + 360) = 0;
  v22 = a2[360];
  *(result + 360) = v22;
  if (v22 == 1)
  {
    *(result + 368) = *(a2 + 23);
  }

  *(result + 384) = 0;
  v23 = a2[384];
  *(result + 384) = v23;
  if (v23 == 1)
  {
    *(result + 385) = *(a2 + 385);
  }

  *(result + 408) = 0;
  v24 = a2[408];
  *(result + 408) = v24;
  if (v24 == 1)
  {
    *(result + 416) = *(a2 + 52);
  }

  *(result + 424) = 0;
  v25 = a2[424];
  *(result + 424) = v25;
  if (v25 == 1)
  {
    *(result + 432) = *(a2 + 27);
  }

  *(result + 448) = 0;
  v26 = a2[448];
  *(result + 448) = v26;
  if (v26 == 1)
  {
    *(result + 456) = *(a2 + 456);
  }

  *(result + 472) = 0;
  v27 = a2[472];
  *(result + 472) = v27;
  if (v27 == 1)
  {
    *(result + 480) = *(a2 + 30);
  }

  *(result + 496) = 0;
  v28 = a2[496];
  *(result + 496) = v28;
  if (v28 == 1)
  {
    *(result + 504) = *(a2 + 504);
  }

  *(result + 520) = 0;
  v29 = a2[520];
  *(result + 520) = v29;
  if (v29 == 1)
  {
    *(result + 528) = *(a2 + 66);
  }

  *(result + 536) = 0;
  v30 = a2[536];
  *(result + 536) = v30;
  if (v30 == 1)
  {
    *(result + 538) = *(a2 + 269);
  }

  *(result + 540) = 0;
  v31 = a2[540];
  *(result + 540) = v31;
  if (v31 == 1)
  {
    *(result + 542) = *(a2 + 271);
  }

  *(result + 544) = 0;
  v32 = a2[544];
  *(result + 544) = v32;
  if (v32 == 1)
  {
    *(result + 545) = a2[545];
  }

  *(result + 546) = 0;
  v33 = a2[546];
  *(result + 546) = v33;
  if (v33 == 1)
  {
    *(result + 547) = a2[547];
  }

  *(result + 548) = 0;
  v34 = a2[548];
  *(result + 548) = v34;
  if (v34 == 1)
  {
    *(result + 549) = a2[549];
  }

  *(result + 552) = *(a2 + 552);
  *(result + 568) = 0;
  v35 = a2[568];
  *(result + 568) = v35;
  if (v35 == 1)
  {
    *(result + 569) = a2[569];
  }

  *(result + 570) = 0;
  v36 = a2[570];
  *(result + 570) = v36;
  if (v36 == 1)
  {
    *(result + 572) = *(a2 + 286);
  }

  *(result + 574) = 0;
  v37 = a2[574];
  *(result + 574) = v37;
  if (v37 == 1)
  {
    *(result + 575) = a2[575];
  }

  *(result + 576) = 0;
  v38 = a2[576];
  *(result + 576) = v38;
  if (v38 == 1)
  {
    *(result + 577) = a2[577];
  }

  *(result + 584) = *(a2 + 73);
  *(result + 592) = 0;
  v39 = a2[592];
  *(result + 592) = v39;
  if (v39 == 1)
  {
    *(result + 593) = a2[593];
  }

  *(result + 594) = 0;
  v40 = a2[594];
  *(result + 594) = v40;
  if (v40 == 1)
  {
    *(result + 595) = a2[595];
  }

  *(result + 596) = 0;
  v41 = a2[596];
  *(result + 596) = v41;
  if (v41 == 1)
  {
    *(result + 597) = a2[597];
  }

  *(result + 600) = 0;
  v42 = a2[600];
  *(result + 600) = v42;
  if (v42 == 1)
  {
    *(result + 608) = *(a2 + 76);
  }

  *(result + 616) = 0;
  v43 = a2[616];
  *(result + 616) = v43;
  if (v43 == 1)
  {
    *(result + 624) = *(a2 + 78);
  }

  *(result + 632) = 0;
  v44 = a2[632];
  *(result + 632) = v44;
  if (v44 == 1)
  {
    *(result + 640) = *(a2 + 40);
  }

  *(result + 656) = 0;
  v45 = a2[656];
  *(result + 656) = v45;
  if (v45 == 1)
  {
    *(result + 657) = a2[657];
  }

  *(result + 660) = 0;
  v46 = a2[660];
  *(result + 660) = v46;
  if (v46 == 1)
  {
    *(result + 664) = *(a2 + 166);
  }

  v47 = *(a2 + 668);
  *(result + 684) = *(a2 + 171);
  *(result + 668) = v47;
  *(result + 688) = 0;
  v48 = a2[688];
  *(result + 688) = v48;
  if (v48 == 1)
  {
    *(result + 689) = a2[689];
  }

  return result;
}

void sub_239293ECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239293FA0;
  block[3] = &unk_278A72D48;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_239293FB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 proxy];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) unsignedLongLongValue];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2392941AC;
    v18[3] = &unk_278A74378;
    v13 = *(a1 + 64);
    v20 = *(a1 + 72);
    v19 = v7;
    [v8 readAttributeCacheWithController:v9 nodeId:v10 endpointId:v11 clusterId:v12 attributeId:v13 completion:v18];

    v14 = v20;
  }

  else
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Attribute cache read failed due to XPC connection failure", v17, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v16 = *(a1 + 72);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
    (*(v16 + 16))(v16, 0, v14);
  }
}

void sub_2392941AC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 40);
  v6 = [MTRDeviceController decodeXPCResponseValues:a2];
  (*(v5 + 16))(v5, v6, v7);
}

void sub_23929424C(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40))
  {
    if ([*(a1 + 48) cppClusterStateCache])
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v3 = *(a1 + 32);
      if (!v3)
      {
        v9 = [*(a1 + 48) cppClusterStateCache];
        v10 = [*(a1 + 40) unsignedLongValue];
        v11 = *(v9 + 16);
        v12 = (v9 + 24);
        if (v11 != v12)
        {
          v13 = v10;
          do
          {
            v14 = v11[5];
            if (v14 != v11 + 6)
            {
              do
              {
                if (*(v14 + 8) == v13)
                {
                  v15 = v14[5];
                  if (v15 != v14 + 6)
                  {
                    do
                    {
                      v16 = *(v15 + 8);
                      *buf = *(v11 + 16);
                      *&buf[4] = v13;
                      LODWORD(v68) = v16;
                      buf[2] = 0;
                      v17 = *(a1 + 56);
                      if (!v17 || (v18 = [v17 unsignedLongValue], v68 == v18))
                      {
                        sub_239294884(buf, [*(a1 + 48) cppClusterStateCache], v2);
                      }

                      v19 = v15[1];
                      if (v19)
                      {
                        do
                        {
                          v20 = v19;
                          v19 = *v19;
                        }

                        while (v19);
                      }

                      else
                      {
                        do
                        {
                          v20 = v15[2];
                          v21 = *v20 == v15;
                          v15 = v20;
                        }

                        while (!v21);
                      }

                      v15 = v20;
                    }

                    while (v20 != v14 + 6);
                  }
                }

                v22 = v14[1];
                if (v22)
                {
                  do
                  {
                    v23 = v22;
                    v22 = *v22;
                  }

                  while (v22);
                }

                else
                {
                  do
                  {
                    v23 = v14[2];
                    v21 = *v23 == v14;
                    v14 = v23;
                  }

                  while (!v21);
                }

                v14 = v23;
              }

              while (v23 != v11 + 6);
            }

            v24 = v11[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v11[2];
                v21 = *v25 == v11;
                v11 = v25;
              }

              while (!v21);
            }

            v11 = v25;
          }

          while (v25 != v12);
        }

        goto LABEL_85;
      }

      if (!*(a1 + 40))
      {
        v28 = [*(a1 + 48) cppClusterStateCache];
        v29 = [*(a1 + 32) unsignedShortValue];
        v30 = *(v28 + 24);
        if (!v30)
        {
          goto LABEL_54;
        }

        v31 = v28 + 24;
        do
        {
          v32 = *(v30 + 32);
          v33 = v32 >= v29;
          v34 = v32 < v29;
          if (v33)
          {
            v31 = v30;
          }

          v30 = *(v30 + 8 * v34);
        }

        while (v30);
        if (v31 == v28 + 24 || (v35 = *(v31 + 32), v35 > v29))
        {
LABEL_54:
          v35 = *(v28 + 56);
          v31 = v28 + 24;
        }

        if (v35 == v29)
        {
          v36 = *(v31 + 40);
          v37 = (v31 + 48);
          if (v36 != (v31 + 48))
          {
            do
            {
              v38 = *(v36 + 8);
              v39 = [*(a1 + 48) cppClusterStateCache];
              v40 = [*(a1 + 32) unsignedShortValue];
              v41 = v40;
              v42 = sub_2393BF20C(v39, v40, v38, buf);
              if (!*buf)
              {
                v43 = v42 + 1;
                v44 = *v42;
                if (*v42 != v42 + 1)
                {
                  do
                  {
                    v45 = *(v44 + 8);
                    v63 = v41;
                    v65 = v38;
                    v66 = v45;
                    v64 = 0;
                    v46 = *(a1 + 56);
                    if (!v46 || (v47 = [v46 unsignedLongValue], v66 == v47))
                    {
                      sub_239294884(&v63, [*(a1 + 48) cppClusterStateCache], v2);
                    }

                    v48 = v44[1];
                    if (v48)
                    {
                      do
                      {
                        v49 = v48;
                        v48 = *v48;
                      }

                      while (v48);
                    }

                    else
                    {
                      do
                      {
                        v49 = v44[2];
                        v21 = *v49 == v44;
                        v44 = v49;
                      }

                      while (!v21);
                    }

                    v44 = v49;
                  }

                  while (v49 != v43);
                }
              }

              v50 = v36[1];
              if (v50)
              {
                do
                {
                  v51 = v50;
                  v50 = *v50;
                }

                while (v50);
              }

              else
              {
                do
                {
                  v51 = v36[2];
                  v21 = *v51 == v36;
                  v36 = v51;
                }

                while (!v21);
              }

              v36 = v51;
            }

            while (v51 != v37);
          }
        }

        goto LABEL_85;
      }

      if (*(a1 + 56))
      {
        buf[2] = 0;
        *buf = [v3 unsignedShortValue];
        *&buf[4] = [*(a1 + 40) unsignedLongValue];
        LODWORD(v68) = [*(a1 + 56) unsignedLongValue];
        v4 = sub_239294884(buf, [*(a1 + 48) cppClusterStateCache], v2);
        v6 = v5;
        if (!v4)
        {
LABEL_85:
          (*(*(a1 + 64) + 16))();
          goto LABEL_86;
        }
      }

      else
      {
        v52 = [*(a1 + 48) cppClusterStateCache];
        v53 = [*(a1 + 32) unsignedShortValue];
        v54 = [*(a1 + 40) unsignedLongValue];
        v55 = sub_2393BF20C(v52, v53, v54, buf);
        v4 = *buf;
        if (!*buf)
        {
          v58 = v55 + 1;
          v59 = *v55;
          if (*v55 != v55 + 1)
          {
            do
            {
              v60 = *(v59 + 8);
              v63 = v53;
              v65 = v54;
              v66 = v60;
              v64 = 0;
              sub_239294884(&v63, [*(a1 + 48) cppClusterStateCache], v2);
              v61 = v59[1];
              if (v61)
              {
                do
                {
                  v62 = v61;
                  v61 = *v61;
                }

                while (v61);
              }

              else
              {
                do
                {
                  v62 = v59[2];
                  v21 = *v62 == v59;
                  v59 = v62;
                }

                while (!v21);
              }

              v59 = v62;
            }

            while (v62 != v58);
          }

          goto LABEL_85;
        }

        v6 = v68;
      }

      v56 = *(a1 + 64);
      v57 = sub_23921C1E4(MTRError, v4, v6);
      (*(v56 + 16))(v56, 0, v57);
    }

    else
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Error: No attribute cache available to read from", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v8 = *(a1 + 64);
      v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
      (*(v8 + 16))(v8, 0, v2);
    }
  }

  else
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Error: currently read from attribute cache does not support wildcards for both endpoint and cluster", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v27 = *(a1 + 64);
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:4 userInfo:0];
    (*(v27 + 16))(v27, 0, v2);
  }

LABEL_86:
}

unint64_t sub_239294884(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  sub_2393C5AAC(v23);
  v7 = sub_2393C1A44(a2, a1, v23);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      v27 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error: Failed to read from attribute cache: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v24[0] = @"attributePath";
    v12 = [[MTRAttributePath alloc] initWithPath:a1];
    v25[0] = v12;
    v24[1] = @"error";
    v13 = sub_23921C1E4(MTRError, v7, v9);
    v25[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v5 addObject:v14];

    v15 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v16 = sub_238EE60DC(v23, 0);
    if (v16)
    {
      v30[0] = @"attributePath";
      v17 = [[MTRAttributePath alloc] initWithPath:a1];
      v30[1] = @"data";
      v31[0] = v17;
      v31[1] = v16;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [v5 addObject:v18];
      v8 = 0;
      v15 = 0;
    }

    else
    {
      v19 = sub_2393D9044(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Error: Cached value could not be converted to generic NSObject", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v28[0] = @"attributePath";
      v17 = [[MTRAttributePath alloc] initWithPath:a1];
      v29[0] = v17;
      v28[1] = @"error";
      v18 = sub_23921C1E4(MTRError, 0x4E000000B0, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRClusterStateCacheContainer.mm");
      v29[1] = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      [v5 addObject:v20];

      v15 = 0x5000000000;
      v8 = 176;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15 | v8;
}

void sub_239294BFC(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_239294F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239295000;
  block[3] = &unk_278A72D48;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_239295018(uint64_t a1)
{
  if ([*(a1 + 32) cppClusterStateCache])
  {
    v15 = *(a1 + 56);
    v17 = *(a1 + 48);
    v16 = 0;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = sub_239294884(&v15, [*(a1 + 32) cppClusterStateCache], v2);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = sub_23921C1E4(MTRError, v4, v3);
      (*(v5 + 16))(v5, 0, v6);
    }

    else
    {
      v6 = [v2 objectAtIndexedSubscript:0];
      v14 = 0;
      v8 = [[MTRAttributeReport alloc] initWithResponseValue:v6 error:&v14];
      v9 = v14;
      v10 = *(a1 + 40);
      if (v9)
      {
        (*(v10 + 16))(v10, 0, v9);
      }

      else
      {
        v11 = [(MTRAttributeReport *)v8 value];
        v12 = [(MTRAttributeReport *)v8 error];
        (*(v10 + 16))(v10, v11, v12);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v13 = sub_23921C1E4(MTRError, 0xDF000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRClusterStateCacheContainer.mm");
    (*(v7 + 16))(v7, 0);
  }
}