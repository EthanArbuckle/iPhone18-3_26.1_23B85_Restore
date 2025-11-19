uint64_t sub_238DB32F8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  return v6;
}

void *sub_238DB3374(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  if ([v5 compare:v6] != -1)
  {
    if ([v5 compare:v7] == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;

  return v8;
}

void *sub_238DB3414(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_284BA88F8;
  a1[1] = v3;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  a1[2] = dispatch_queue_create("org.csa-iot.matter.framework.storage.workqueue", v4);

  return a1;
}

void sub_238DB34F0(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238DB3544(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  if (!a3 && *a4)
  {
    return 0x240000002FLL;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = sub_238DB36A8;
  v23 = nullsub_1;
  v24 = "";
  v25 = 0;
  v26 = 0;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v9 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238DB36B8;
  block[3] = &unk_278A71538;
  v14 = v8;
  v15 = &v19;
  v16 = a1;
  v17 = a4;
  v18 = a3;
  v10 = v8;
  dispatch_sync(v9, block);
  v7 = v20[6];
  v11 = v20[7];

  _Block_object_dispose(&v19, 8);
  return v7;
}

void sub_238DB3690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_238DB36A8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_238DB36B8(uint64_t a1)
{
  v2 = [*(*(a1 + 48) + 8) storageDataForKey:*(a1 + 32)];
  if (v2)
  {
    v9 = v2;
    if ([v2 length] < 0x10000)
    {
      v5 = [v9 length];
      v6 = *(a1 + 56);
      if (*v6 >= v5)
      {
        v8 = v5;
        *v6 = v5;
      }

      else
      {
        v7 = *(*(a1 + 40) + 8);
        *(v7 + 48) = 0x3D00000019;
        *(v7 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRPersistentStorageDelegateBridge.mm";
        v8 = **(a1 + 56);
      }

      v2 = v9;
      if (!v8)
      {
        goto LABEL_11;
      }

      memcpy(*(a1 + 64), [v9 bytes], **(a1 + 56));
    }

    else
    {
      v3 = *(*(a1 + 40) + 8);
      *(v3 + 48) = 0x370000009FLL;
      *(v3 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRPersistentStorageDelegateBridge.mm";
    }

    v2 = v9;
  }

  else
  {
    v4 = *(*(a1 + 40) + 8);
    *(v4 + 48) = 0x32000000A0;
    *(v4 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRPersistentStorageDelegateBridge.mm";
  }

LABEL_11:
}

uint64_t sub_238DB37F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a3 && a4)
  {
    return 0x4E0000002FLL;
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
  v20 = 0;
  v21 = &v20;
  v22 = 0x4012000000;
  v23 = sub_238DB36A8;
  v24 = nullsub_1;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v10 = *(a1 + 16);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238DB398C;
  v15[3] = &unk_278A71560;
  v16 = v9;
  v17 = v8;
  v18 = &v20;
  v19 = a1;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v15);
  v7 = v21[6];
  v13 = v21[7];

  _Block_object_dispose(&v20, 8);
  return v7;
}

double sub_238DB398C(void *a1)
{
  if (([*(a1[7] + 8) setStorageData:a1[4] forKey:a1[5]] & 1) == 0)
  {
    v3 = *(a1[6] + 8);
    *&result = 0x5B0000009FLL;
    *(v3 + 48) = 0x5B0000009FLL;
    *(v3 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRPersistentStorageDelegateBridge.mm";
  }

  return result;
}

uint64_t sub_238DB39E0(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v13 = 0;
  v14 = &v13;
  v15 = 0x4012000000;
  v16 = sub_238DB36A8;
  v17 = nullsub_1;
  v18 = "";
  v19 = 0;
  v20 = 0;
  v4 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238DB3AF8;
  block[3] = &unk_278A71588;
  v11 = &v13;
  v12 = a1;
  v10 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
  v6 = v14[6];
  v7 = v14[7];

  _Block_object_dispose(&v13, 8);
  return v6;
}

double sub_238DB3AF8(void *a1)
{
  if (([*(a1[6] + 8) removeStorageDataForKey:a1[4]] & 1) == 0)
  {
    v3 = *(a1[5] + 8);
    *&result = 0x6D000000A0;
    *(v3 + 48) = 0x6D000000A0;
    *(v3 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRPersistentStorageDelegateBridge.mm";
  }

  return result;
}

BOOL sub_238DB3B4C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = (*(*a1 + 16))(a1, a2, 0, &v5);
  return v2 == 25 || v2 == 0;
}

uint64_t sub_238DB4074(uint64_t result)
{
  *result = &unk_284BA8960;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

id *sub_238DB40A4(id *a1)
{
  objc_destroyWeak(a1 + 2);
  objc_destroyWeak(a1 + 1);
  return a1;
}

void sub_238DB40EC(id *a1)
{
  sub_238DB40A4(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238DB4124(uint64_t a1, void *a2, void *a3, void *a4)
{
  obj = a3;
  v7 = a4;
  if (obj && v7)
  {
    objc_storeWeak((a1 + 8), a2);
    objc_storeWeak((a1 + 16), obj);
    v8 = v7;
  }

  else
  {
    objc_storeWeak((a1 + 8), 0);
    objc_storeWeak((a1 + 16), 0);
    v8 = 0;
  }

  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
}

uint64_t sub_238DB41D8(uint64_t a1, int a2)
{
  if (a2)
  {
    return 2 * (a2 == 1);
  }

  else
  {
    return 1;
  }
}

void sub_238DB41F0(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&v15 = WeakRetained;
    WORD4(v15) = 1024;
    *(&v15 + 10) = a2;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ DeviceControllerDelegate status updated: %d", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  if (a2 == 1)
  {
    *buf = 1;
    *(&v15 + 4) = "dwnfw_setup_pase_session";
    HIDWORD(v15) = 50;
    v16 = 3;
    sub_23948BD20(buf);
  }

  v6 = objc_loadWeakRetained((a1 + 16));
  if (v6 && *(a1 + 24) && WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      if (a2)
      {
        v7 = 2 * (a2 == 1);
      }

      else
      {
        v7 = 1;
      }

      v8 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_238DB445C;
      block[3] = &unk_278A715B0;
      v11 = v6;
      v12 = WeakRetained;
      v13 = v7;
      dispatch_async(v8, block);
    }

    if (a2 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      (*(*a1 + 40))(a1, *(a1 + 32), 0x6300000032, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerDelegateBridge.mm");
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_238DB446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v7 = sub_2393D9044(0);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v18 = WeakRetained;
      *&v18[8] = 2080;
      *&v18[10] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ MTRDeviceControllerDelegate PASE session establishment failed: %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v18 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ MTRDeviceControllerDelegate PASE session establishment succeeded.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  *buf = 1;
  *&v18[4] = "dwnfw_setup_pase_session";
  *&v18[12] = a2;
  v18[16] = 3;
  sub_23948BD20(buf);
  v9 = objc_loadWeakRetained((a1 + 16));
  if (v9 && *(a1 + 24) && WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238DB46F0;
    block[3] = &unk_278A715D8;
    v15 = a2;
    v16 = a3;
    v13 = v9;
    v14 = WeakRetained;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_238DB46F0(uint64_t a1)
{
  v2 = sub_23921C1E4(MTRError, *(a1 + 48), *(a1 + 56));
  [*(a1 + 32) controller:*(a1 + 40) commissioningSessionEstablishmentDone:?];
}

uint64_t sub_238DB4764()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "DeviceControllerDelegate Pairing deleted. Status %s", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(0, 2);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DB4854(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = objc_loadWeakRetained((a1 + 16));
  if (v5)
  {
    if (*(a1 + 24) && WeakRetained != 0)
    {
      v7 = objc_opt_respondsToSelector();
      v8 = objc_opt_respondsToSelector();
      v9 = v8;
      if ((v7 | v8))
      {
        v10 = sub_238DBA0FC([MTRCommissioneeInfo alloc], a2, *(a1 + 48));
        v11 = v7 & 1;
        v12 = *(a1 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_238DB4A18;
        block[3] = &unk_278A71600;
        v24 = v11;
        v21 = v5;
        v22 = WeakRetained;
        v23 = v10;
        v25 = v9 & 1;
        v13 = v10;
        dispatch_async(v12, block);
      }

      *(a1 + 40) = 0;
      v14 = *a2;
      if (*a2)
      {
        v17 = 0;
        v19 = 0xFFFC00000031;
        v18 = 0;
        v16 = 0;
        if (!sub_238DB4ADC(v14, &v17, &v16))
        {
          *(a1 + 40) = v16;
        }
      }

      v15 = *(a1 + 48);
      *(a1 + 48) = 0;
    }
  }
}

void sub_238DB4A18(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);

    [v3 controller:v1 readCommissioneeInfo:v2];
  }

  else if (*(a1 + 57) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) productIdentity];
    [v4 controller:v5 readCommissioningInfo:?];
  }
}

unint64_t sub_238DB4ADC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_2393C5AAC(v10);
  if (*(a2 + 4) == 49 && *(a2 + 8) == 65532)
  {
    v8 = sub_2393C1A44(a1, a2, v10);
    if (!v8)
    {
      v8 = sub_2393C5FC8(v10, a3);
    }

    v7 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = 0xAA00000000;
    LODWORD(v8) = 142;
  }

  return v7 | v8;
}

void sub_238DB4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v30 = WeakRetained;
    *&v30[8] = 2048;
    *&v30[10] = a2;
    v31 = 2080;
    v32 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ DeviceControllerDelegate Commissioning complete. NodeId 0x%016llx Status %s", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(0, 2);
  }

  *buf = 1;
  *&v30[4] = "dwnfw_device_commissioning";
  *&v30[12] = a3;
  v30[16] = 3;
  sub_23948BD20(buf);
  v10 = objc_loadWeakRetained((a1 + 16));
  if (v10 && *(a1 + 24) && WeakRetained)
  {
    v11 = +[MTRMetricsCollector sharedInstance];
    v12 = [v11 metricSnapshotForCommissioning:1];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v30 = WeakRetained;
      *&v30[8] = 2112;
      *&v30[10] = v12;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ Device commissioning complete with metrics %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_238DB4F1C;
      block[3] = &unk_278A71628;
      v26 = a3;
      v27 = a4;
      v28 = a2;
      v23 = v10;
      v24 = WeakRetained;
      v25 = v12;
      v14 = v12;
      dispatch_async(v13, block);

      v15 = &v23;
      v16 = &v24;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 24);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_238DB4FF4;
      v19[3] = &unk_278A715D8;
      v21[1] = a3;
      v21[2] = a4;
      v15 = &v20;
      v20 = v10;
      v16 = v21;
      v21[0] = WeakRetained;
      dispatch_async(v18, v19);
    }

LABEL_16:
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_238DB4F1C(void *a1)
{
  v7 = sub_23921C1E4(MTRError, a1[7], a1[8]);
  if (*(a1 + 14))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[9]];
  }

  v3 = a1[4];
  v4 = objc_opt_respondsToSelector();
  v5 = a1[4];
  v6 = a1[5];
  if (v4)
  {
    [v5 controller:v6 commissioningComplete:v7 nodeID:v2 metrics:a1[6]];
  }

  else
  {
    [v5 controller:v6 commissioningComplete:v7 nodeID:v2];
  }
}

void sub_238DB4FF4(uint64_t a1)
{
  v2 = sub_23921C1E4(MTRError, *(a1 + 48), *(a1 + 56));
  [*(a1 + 32) controller:*(a1 + 40) commissioningComplete:?];
}

void sub_238DB5068(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v20 = WeakRetained;
    v21 = 2080;
    v22 = sub_2394F2C88(a4);
    v23 = 2048;
    v24 = a2;
    v25 = 2080;
    v26 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ DeviceControllerDelegate stage %s completed for nodeID 0x%016llx with status %s", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2394F2C88(a4);
    sub_2393C9138();
    sub_2393D5320(0, 2);
  }

  v11 = objc_loadWeakRetained((a1 + 16));
  if (v11 && (a4 - 25) <= 1u && *(a1 + 24) && WeakRetained && !a5)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_238DB52E0;
      block[3] = &unk_278A71650;
      v16 = v11;
      v17 = WeakRetained;
      v18 = v12;
      dispatch_async(v13, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_238DB52F0(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = objc_loadWeakRetained((a1 + 16));
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v34 = WeakRetained;
    v35 = 2048;
    v36 = v7;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ DeviceControllerDelegate network scan for nodeID 0x%016llx complete", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v23 = *(a1 + 32);
    sub_2393D5320(0, 2);
  }

  if (WeakRetained && *(a1 + 24) && v5)
  {
    v8 = [[MTRNetworkCommissioningClusterScanNetworksResponseParams alloc] initWithDecodableStruct:a2];
    v9 = v8;
    if (v8)
    {
      v10 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v8 wiFiScanResults];
      v11 = v10 == 0;

      if (v11)
      {
        v18 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v9 threadScanResults];
        v19 = v18 == 0;

        if (v19)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 40);
            *buf = 134217984;
            v34 = v21;
            _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Scan succeeded but for unknown network type: %lu", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v22 = *(a1 + 40);
            sub_2393D5320(0, 1);
          }

          goto LABEL_21;
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = *(a1 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_238DB5774;
          block[3] = &unk_278A71650;
          v13 = &v26;
          v26 = v5;
          v14 = &v27;
          v27 = WeakRetained;
          v15 = &v28;
          v28 = v9;
          v16 = block;
          goto LABEL_20;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v12 = *(a1 + 24);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_238DB5700;
        v29[3] = &unk_278A71650;
        v13 = &v30;
        v30 = v5;
        v14 = &v31;
        v31 = WeakRetained;
        v15 = &v32;
        v32 = v9;
        v16 = v29;
LABEL_20:
        dispatch_async(v12, v16);
      }
    }

    else
    {
      (*(*a1 + 96))(a1, 0xFA0000008ELL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerDelegateBridge.mm");
    }

LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 24);
    *buf = 138412802;
    v34 = WeakRetained;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Unable to handle ScanNetworks success: missing required data: %@ %@ %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v24 = *(a1 + 24);
    sub_2393D5320(0, 1);
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
}

void sub_238DB5700(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) wiFiScanResults];
  [v1 controller:v2 scannedWiFiNetworks:? error:?];
}

void sub_238DB5774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) threadScanResults];
  [v1 controller:v2 scannedThreadNetworks:? error:?];
}

void sub_238DB57E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v7 = objc_loadWeakRetained((a1 + 16));
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    v27 = WeakRetained;
    v28 = 2048;
    v29 = v9;
    v30 = 2080;
    v31 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ DeviceControllerDelegate network scan for nodeID 0x%016llx failed: %s", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v18 = *(a1 + 32);
    sub_2393C9138();
    sub_2393D5320(0, 2);
  }

  if (WeakRetained && *(a1 + 24) && v7)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 24);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_238DB5B88;
      v23[3] = &unk_278A715D8;
      v13 = &v24;
      v24 = v7;
      v14 = v25;
      v25[0] = WeakRetained;
      v25[1] = a2;
      v25[2] = a3;
      v15 = v23;
    }

    else
    {
      if ((v10 & 2) == 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v27 = v10;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Scan failed for unknown network type: %lu", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v17 = *(a1 + 40);
          sub_2393D5320(0, 1);
        }

        goto LABEL_23;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_238DB5C08;
      block[3] = &unk_278A715D8;
      v13 = &v21;
      v21 = v7;
      v14 = v22;
      v22[0] = WeakRetained;
      v22[1] = a2;
      v22[2] = a3;
      v15 = block;
    }

    dispatch_async(v12, v15);

    goto LABEL_23;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 24);
    *buf = 138412802;
    v27 = WeakRetained;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Unable to handle ScanNetworks failure: missing required data: %@ %@ %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v19 = *(a1 + 24);
    sub_2393D5320(0, 1);
  }

LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

void sub_238DB5B88(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = sub_23921C1E4(MTRError, a1[6], a1[7]);
  [v1 controller:v2 scannedWiFiNetworks:0 error:?];
}

void sub_238DB5C08(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = sub_23921C1E4(MTRError, a1[6], a1[7]);
  [v1 controller:v2 scannedThreadNetworks:0 error:?];
}

void sub_238DB6924(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void *sub_238DB6950(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952AD00();
    }
  }

  return result;
}

uint64_t sub_238DB699C()
{
  sub_2393D524C();
  sub_2393D5388(0);

  return sub_238EAA270();
}

void sub_238DB7418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_238DB7464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238DB747C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 delegate];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_238DB7A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_238DB7A7C(uint64_t a1, void *a2)
{
  result = [a2 callDelegateWithBlock:*(a1 + 32)];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

unint64_t sub_238DB7C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 31);
  if (!a2)
  {
    v7 = 0x2100000000;
LABEL_6:
    v8 = 47;
    return v8 | v7;
  }

  if (!a3)
  {
    v7 = 0x2200000000;
    goto LABEL_6;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  v6 = sub_2394720A8(a3, 0x20000, a1);
  v7 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  return v8 | v7;
}

uint64_t sub_238DB7D2C(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 48);
  result = *(a1 + 24);
  if (result)
  {
    sub_2394721BC(result, 0x20000);
    result = *(a1 + 8);
    if (result)
    {
      result = (*(*result + 8))(result);
      *(a1 + 8) = 0;
    }
  }

  return result;
}

void sub_238DB7D9C(uint64_t a1, void *a2)
{
  v6 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 61);
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(v3 + 304))
    {
      v4 = *(v3 + 304);
      if ([v6 fabricIndex] == v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        *(a1 + 8) = 0;
      }
    }
  }
}

uint64_t sub_238DB7E68(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 82);
  v6 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = HIWORD(*(a2 + 1));
    v9 = *(a2 + 1);
    *buf = 67109632;
    v20 = v7;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "MTROTAUnsolicitedBDXMessageHandler: OnUnsolicitedMessageReceived: message 0x%x protocol (%u, %u)", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v18 = *(a2 + 1);
    v17 = *a2;
    sub_2393D5320(0xCu, 3);
  }

  if (*(a1 + 8))
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Already in an ongoing transfer. Return", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xCu, 3);
    }

    v12 = 0x5900000000;
    v13 = 219;
    goto LABEL_22;
  }

  if (!*(a1 + 24))
  {
    v12 = 0x5C00000000;
    goto LABEL_21;
  }

  if ((*(**a3 + 16))(*a3, v10, v11) != 2 || !sub_239495304(*a3))
  {
    v12 = 0x6800000000;
LABEL_21:
    v13 = 3;
    goto LABEL_22;
  }

  v14 = sub_239495304(*a3);
  v12 = 0x6800000000;
  v13 = 3;
  if (*(v14 + 24) && !*(a2 + 2) && *(a2 + 3) == 2 && *a2 == 4)
  {
    operator new();
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return v12 | v13;
}

uint64_t sub_238DB8108(uint64_t a1, uint64_t a2)
{
  result = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 109);
  if (a2)
  {
    v4 = *(*a2 + 8);

    return v4(a2);
  }

  return result;
}

BOOL sub_238DB817C(uint64_t a1, uint64_t a2)
{
  result = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 118);
  *(a1 + 8) = a2;
  return result;
}

BOOL sub_238DB81B4(uint64_t a1, uint64_t a2)
{
  result = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAUnsolicitedBDXMessageHandler.mm", 126);
  if (*(a1 + 8) == a2)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_238DB8224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 20)
  {
    v6 = 0x290000004ALL;
    __len[0] = 0;
    __len[1] = 0;
    if ([*(a1 + 8) count])
    {
      v7 = 0;
      while (1)
      {
        v19[0] = 0;
        v19[1] = 0;
        v20 = 0;
        v8 = [*(a1 + 8) objectAtIndexedSubscript:v7];
        v9 = v8;
        sub_238DB6950(&v18, [v8 bytes], objc_msgSend(v8, "length"));

        *__len = v18;
        *&v18 = v19;
        *(&v18 + 1) = 20;
        if (sub_2393FB158(__len, &v18))
        {
          v6 = 0x22000000ACLL;
          goto LABEL_11;
        }

        sub_238DB6950(__s2, v18, *(&v18 + 1));
        v10 = *(a2 + 8);
        if (v10 == __s2[1] && (!v10 || !memcmp(*a2, __s2[0], v10)))
        {
          break;
        }

        if (++v7 >= [*(a1 + 8) count])
        {
          goto LABEL_11;
        }
      }

      v13 = __len[1];
      if (*(a3 + 8) >= __len[1])
      {
        memmove(*a3, __len[0], __len[1]);
        sub_238DB8498(a3, v13);
        v15 = 0;
        v14 = 0;
      }

      else
      {
        v14 = 0x18300000000;
        v15 = 25;
      }

      v6 = v14 | v15;
    }
  }

  else
  {
    v6 = 0x180000002FLL;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_238DB844C(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238DB8498(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    sub_23952AE84();
  }

  *(result + 8) = a2;
  return result;
}

void sub_238DB84BC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

uint64_t sub_238DB84DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HIWORD(*(a2 + 20));
    v10 = *(a2 + 20);
    v11 = *(a2 + 16);
    v12 = HIWORD(*(a2 + 24));
    v13 = *(a2 + 24);
    v14 = *(a2 + 18);
    *buf = 67110400;
    *&buf[4] = v9;
    *&buf[8] = 1024;
    *&buf[10] = v10;
    *&buf[14] = 1024;
    v34 = v11;
    v35 = 1024;
    v36 = v12;
    v37 = 1024;
    v38 = v13;
    v39 = 1024;
    v40 = v14;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Reading attribute: Cluster=0x%04X_%04X Endpoint=0x%x AttributeId=0x%04X_%04X (expanded=%d)", buf, 0x26u);
  }

  if (sub_2393D5398(3u))
  {
    v26 = *(a2 + 24);
    v27 = *(a2 + 18);
    v25 = *(a2 + 16);
    v24 = HIWORD(*(a2 + 20));
    sub_2393D5320(0xDu, 3);
  }

  v15 = sub_2392CC5DC(a1 + 88, (a2 + 16));
  if (!v15)
  {
    result = sub_238F40400(*(a2 + 16), *(a2 + 20), *(a2 + 24));
    v32 = result;
    if (!result)
    {
      *a4 = 1;
      *(a4 + 2) = 0;
      *(a4 + 16) = 1;
      goto LABEL_22;
    }

    v17 = sub_2393C4890();
    v18 = sub_2393C4B48(v17, *(a2 + 16), *(a2 + 20));
    if (v18)
    {
      result = (*(*v18 + 16))(v18, a2, a3);
      if (result)
      {
        if (result != 1423 || (*(a2 + 18) & 1) == 0)
        {
          v20 = result & 0xFFFFFFFFFFFFFF00;
          v21 = result;
LABEL_16:
          *a4 = v21 | v20;
LABEL_17:
          *(a4 + 8) = v19;
LABEL_21:
          *(a4 + 16) = 0;
          goto LABEL_22;
        }

LABEL_15:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        goto LABEL_16;
      }

      if (*(a3 + 68) == 1)
      {
        goto LABEL_15;
      }
    }

    v30 = *(a2 + 16);
    v31 = *(a2 + 20);
    result = sub_238F40444(&v30, &v32, xmmword_27DF71860, WORD4(xmmword_27DF71860), 0);
    if (result)
    {
      v22 = result | 0x8400000500;
    }

    else
    {
      if (v32)
      {
        *buf = xmmword_27DF71860;
        v28[0] = (*(v32 + 15) & 0x40) != 0;
        v28[1] = sub_238EAF118(*(v32 + 14));
        v29 = buf;
        *(a3 + 68) = 1;
        result = sub_238DB87D4(a3, v28);
        *a4 = result;
        goto LABEL_17;
      }

      v22 = 0x870000002FLL;
    }

    *a4 = v22;
    *(a4 + 8) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/data-model-providers/codegen/CodegenDataModelProvider_Read.cpp";
    goto LABEL_21;
  }

  result = (*(*v15 + 64))(v15, a2, a3);
LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_238DB87D4(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_2393C4C40(&v5, *a1, (a1 + 40), *(a1 + 64));
  if (!result)
  {
    result = sub_2392CF318(a2, *(*a1 + 176), 2uLL);
    if (!result)
    {
      return sub_2393C4D18(&v5, *a1);
    }
  }

  return result;
}

uint64_t (***sub_238DB8848(uint64_t a1))()
{
  if (a1)
  {
    qword_2819B76D8 = a1;
  }

  return &off_2819B7688;
}

uint64_t sub_238DB8860(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  sub_2392CC9A0(a1 + 88);
  return 0;
}

unint64_t sub_238DB88A4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 80))
  {
    v3 = (a1 + 8);
    if (*(a1 + 32) == 1)
    {
      *(a1 + 32) = 0;
    }

    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *v3 = v4;
    *(a1 + 32) = 1;
    if (sub_2392D45C4())
    {
      goto LABEL_11;
    }

    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Ember attribute persistence requires setting up", v11, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    if (*(a1 + 80))
    {
      qword_2814F7108 = *(a1 + 80);
      sub_2392D45D0(&off_2814F7100);
LABEL_11:
      (*(*a1 + 144))(a1);
      v6 = *(a1 + 80);
      v11[0] = a1;
      v11[1] = v6;
      v11[2] = sub_2392D45C4();
      v11[3] = v3;
      v7 = sub_2392CC738(a1 + 88, v11);
      v8 = v7 & 0xFFFFFFFF00000000;
      v9 = v7;
      return v8 | v9;
    }

    v8 = 0x2400000000;
    v9 = 47;
  }

  else
  {
    v8 = 0x8B00000000;
    v9 = 3;
  }

  return v8 | v9;
}

void *sub_238DB8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = (a2 + 16);
  v10 = sub_2392CC5DC(a1 + 88, (a2 + 16));
  if (v10)
  {
    v11 = *(*v10 + 96);

    return v11();
  }

  else
  {
    v13 = sub_2394DEB00();
    v14 = sub_2394DEDA4(v13, *(a2 + 16), *(a2 + 20));
    if (!v14 || (v15[0] = a4, v15[1] = v9, v15[2] = a3, v16 = 0, result = (*(*v14 + 16))(v14, v15), v16 != 1))
    {
      result = sub_238DC477C(v9, a3, a4);
    }

    *a5 = 0;
    a5[24] = 0;
  }

  return result;
}

unint64_t sub_238DB8B20(uint64_t a1, size_t *a2)
{
  v3 = sub_238F40090();
  v4 = sub_2393D6C18(a2, v3);
  if (!v4)
  {
    if (!v3)
    {
LABEL_10:
      LODWORD(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v6 = 0;
    while (1)
    {
      if (sub_238F4006C(v6))
      {
        v9[0] = sub_238F40978(v6);
        v9[1] = sub_238F40B84(v6);
        v7 = sub_238F41C98(v6);
        if (v7 <= 2)
        {
          v10 = 0x10102u >> (8 * (v7 & 0x1F));
        }

        v4 = sub_2393D6D28(a2, v9);
        if (v4)
        {
          break;
        }
      }

      if (v3 <= ++v6)
      {
        goto LABEL_10;
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_238DB8BF0(uint64_t a1, int a2)
{
  v4 = sub_238F40090();
  v5 = *(a1 + 40);
  if (v5 < v4 && sub_238F4006C(v5) && sub_238F40978(*(a1 + 40)) == a2)
  {
    v6 = *(a1 + 40);
    v7 = v6 & 0xFF00;
    v8 = 0x100000000;
  }

  else
  {
    v9 = sub_238F40674(a2);
    v7 = v9 & 0xFF00;
    v8 = 0x100000000;
    if (v9 == 0xFFFF)
    {
      v8 = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      LOBYTE(v6) = v9;
    }

    if (v9 == 0xFFFF)
    {
      v7 = 0;
    }
  }

  return v8 | v7 | v6;
}

uint64_t sub_238DB8C80(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = sub_2392CC5DC(a1 + 88, a2);
  if (v5)
  {
    return (*(*v5 + 88))(v5, a2, a3);
  }

  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  v9 = sub_2392D0C2C();
  result = 0;
  *a3 = v9;
  return result;
}

unint64_t sub_238DB8CF8(uint64_t a1, unsigned int a2, size_t *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_238F40618(a2);
  if (!v6)
  {
    v8 = 0x10900000000;
    LODWORD(v12) = 216;
    goto LABEL_45;
  }

  v7 = v6;
  if (!*(v6 + 8))
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = *v6;
  if (!*v6)
  {
LABEL_10:
    LODWORD(v12) = 0;
    goto LABEL_45;
  }

  v9 = sub_2392CCB30((a1 + 88), a2);
  sub_238DB9A98(&v40, v10, v9);
  LOWORD(v45) = v9;
  v47[0] = 0;
  v47[1] = 0;
  v46 = 0;
  sub_238DB9B00(&v45);
  if (v41 == v46)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      sub_238DB919C(&v40);
      ++v11;
    }

    while (v41 != v46);
  }

  v13 = sub_2393D6C18(a3, v11);
  LODWORD(v12) = v13;
  if (v13)
  {
    v8 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v40 = 4;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v14 = sub_2393D6C18(&v40, v11);
    LODWORD(v12) = v14;
    if (v14)
    {
      v15 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      v16 = sub_2392CCB30((a1 + 88), a2);
      sub_238DB9A98(&v45, v17, v16);
      *buf = v16;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      sub_238DB9B00(buf);
      LODWORD(v12) = 172;
      while (v46 != v50)
      {
        v18 = *(v47[0] + 1);
        v38[0] = a2;
        v39 = v18;
        v19 = sub_2392CC5DC(a1 + 88, v38);
        v20 = v19;
        if (!v19)
        {
          v15 = 0x12B00000000;
          goto LABEL_44;
        }

        LODWORD(v36) = v39;
        HIDWORD(v36) = (*(*v19 + 40))(v19, v38);
        v37 = (*(*v20 + 48))(v20, v38);
        v21 = sub_2393D6D28(a3, &v36);
        if (v21 || (v21 = sub_2393D6D28(&v40, &v39), v21))
        {
          v15 = v21 & 0xFFFFFFFF00000000;
          LODWORD(v12) = v21;
          goto LABEL_44;
        }

        sub_238DB919C(&v45);
      }

      sub_238DB91E0(&v40, &v45);
      v22 = sub_238F3FD68(v7, 1);
      v12 = sub_2393D6C18(a3, v22);
      if (v12)
      {
LABEL_24:
        v15 = v12 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (v7[8])
        {
          v23 = *v7;
          v24 = *v7 + (v7[8] << 6);
          do
          {
            if ((v23[5] & 0x40) != 0)
            {
              v25 = *v23;
              if (v46)
              {
                v26 = v45;
                v27 = 4 * v46;
                while (*v26 != v25)
                {
                  ++v26;
                  v27 -= 4;
                  if (!v27)
                  {
                    goto LABEL_33;
                  }
                }
              }

              else
              {
LABEL_33:
                *buf = a2;
                v49 = v25;
                v28 = sub_238F41D9C(buf);
                if (v28)
                {
                  v29 = *v28 << 32;
                }

                else
                {
                  v30 = sub_2393D9044(0x21u);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v31 = HIWORD(*v23);
                    v32 = *v23;
                    *buf = 67109632;
                    v49 = a2;
                    LOWORD(v50) = 1024;
                    *(&v50 + 2) = v31;
                    HIWORD(v50) = 1024;
                    LODWORD(v51) = v32;
                    _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Failed to get data version for %d/0x%04X_%04X", buf, 0x14u);
                  }

                  if (sub_2393D5398(1u))
                  {
                    v35 = HIWORD(*v23);
                    sub_2393D5320(0x21u, 1);
                  }

                  v29 = 0;
                }

                v36 = v29 | v25;
                v37 = 0;
                v12 = sub_2393D6D28(a3, &v36);
                if (v12)
                {
                  goto LABEL_24;
                }
              }
            }

            v23 += 16;
          }

          while (v23 != v24);
        }

        v15 = 0;
        LODWORD(v12) = 0;
      }

      sub_2393D6E84(v47);
    }

LABEL_44:
    sub_2393D6B1C(&v40);
    v8 = v15 & 0xFFFFFFFF00000000;
  }

LABEL_45:
  v33 = *MEMORY[0x277D85DE8];
  return v12 | v8;
}

void sub_238DB914C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2393D6B1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_238DB919C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = sub_238DB9B98((a1 + 16), 1uLL);
    *(a1 + 24) = v2;
  }

  sub_238DB9B00(a1);
  return a1;
}

void *sub_238DB91E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_2393D6E5C(a1, &v9, &v8, &v7);
  v3 = v9;
  v4 = v7;
  result = sub_238DB9BD8(a2, v9, v8);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  a2[2] = v6;
  return result;
}

unint64_t sub_238DB9248(uint64_t a1, uint64_t a2, size_t *a3)
{
  v6 = sub_2392CC5DC(a1 + 88, a2);
  if (!v6)
  {
    v10 = sub_238DB9438(a1, a2);
    if (!v10)
    {
      v8 = 0x16400000000;
      LODWORD(v7) = 216;
      return v7 | v8;
    }

    v11 = v10;
    v8 = *(v10 + 16);
    if (*(v10 + 16))
    {
      if (*(v10 + 8))
      {
        v7 = sub_2393D6C18(a3, v8 + 3);
        if (v7)
        {
          goto LABEL_3;
        }

        sub_238DB9BD8(&v23, *(v11 + 8), *(v11 + 16));
        if (!v24)
        {
LABEL_18:
          v21 = 0;
          while (1)
          {
            LODWORD(v22) = dword_23958D6D8[v21];
            HIDWORD(v22) = HIDWORD(v22) & 0xFFE0E080 | 0x104;
            v7 = sub_2393D6D28(a3, &v22);
            if (v7)
            {
              goto LABEL_3;
            }

            if (++v21 == 3)
            {
              goto LABEL_21;
            }
          }
        }

        v12 = 16 * v24;
        v13 = (v23 + 15);
        while (1)
        {
          v14 = *(a2 + 4);
          v15 = *(v13 - 7);
          v16 = *(v13 - 1);
          v17 = *v13;
          if ((v17 & 0x20) != 0)
          {
            v18 = (sub_2392D0C3C(*(a2 + 4), *(v13 - 7)) & 0x1F) << 8;
            if ((*v13 & 1) == 0)
            {
LABEL_15:
              v20 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v18 = 0;
            v19 = *v13;
            if ((v17 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v20 = (sub_2392D0C34() & 0x1F) << 16;
LABEL_16:
          v22 = v15 | (((8 * v17) & 0x40 | (4 * (v16 == 72)) | v18 | v20) << 32);
          v7 = sub_2393D6D28(a3, &v22);
          if (v7)
          {
            goto LABEL_3;
          }

          v13 += 16;
          v12 -= 16;
          if (!v12)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v8 = 0;
    }

    LODWORD(v7) = 0;
    return v7 | v8;
  }

  v7 = (*(*v6 + 80))(v6, a2, a3);
LABEL_3:
  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

uint64_t sub_238DB9438(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 64);
  v5 = *a2;
  if (v4 == 1 && *(a1 + 48) == v5 && *(a1 + 52) == *(a2 + 1))
  {
    v6 = *(a1 + 72);
    if (v6 == sub_238F40DAC())
    {
      return *(a1 + 56);
    }

    v5 = *a2;
  }

  v8 = sub_238F40104(v5, *(a2 + 1));
  v7 = v8;
  if (v8)
  {
    *(a1 + 48) = *a2;
    *(a1 + 56) = v8;
    *(a1 + 64) = 1;
    *(a1 + 72) = sub_238F40DAC();
  }

  return v7;
}

uint64_t sub_238DB94D8(uint64_t a1, int a2, size_t *a3)
{
  v4 = sub_238F40618(a2);
  if (!v4)
  {
    v6 = 0x18F00000000;
    LODWORD(v8) = 216;
    return v6 | v8;
  }

  v5 = v4;
  if (!v4[8])
  {
LABEL_12:
    LODWORD(v8) = 0;
    v6 = 0;
    return v6 | v8;
  }

  v6 = *v4;
  if (!*v4)
  {
    goto LABEL_13;
  }

  v7 = sub_238F3FD68(v4, 0);
  v8 = sub_2393D6C18(a3, v7);
  if (!v8)
  {
    v6 = v5[8];
    if (v5[8])
    {
      v9 = *v5;
      v10 = v6 << 6;
      while (1)
      {
        if (v9[20] < 0)
        {
          v8 = sub_2393D6D28(a3, v9);
          if (v8)
          {
            goto LABEL_5;
          }
        }

        v9 += 64;
        v10 -= 64;
        if (!v10)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_13:
    LODWORD(v8) = 0;
    return v6 | v8;
  }

LABEL_5:
  v6 = v8 & 0xFFFFFFFF00000000;
  return v6 | v8;
}

unint64_t sub_238DB95A8(uint64_t a1, unsigned __int16 *a2, size_t *a3)
{
  v6 = sub_2392CC5DC(a1 + 88, a2);
  if (v6)
  {
    v7 = (*(*v6 + 104))(v6, a2, a3);
  }

  else
  {
    v10 = sub_238DB9438(a1, a2);
    if (!v10)
    {
      v8 = 0x1C100000000;
      LODWORD(v7) = 216;
      return v7 | v8;
    }

    v11 = v10;
    v12 = sub_2394DEB00();
    v13 = sub_2394DEDA4(v12, *a2, *(a2 + 1));
    if (!v13 || (v7 = (*(*v13 + 24))(v13, a2, a3), v7 == 45))
    {
      v8 = *(v11 + 32);
      if (v8)
      {
        v14 = (v8 - 4);
        v15 = -4;
        do
        {
          v16 = v14[1];
          ++v14;
          v15 += 4;
        }

        while (v16 != -1);
        v7 = sub_2393D6C18(a3, v15 >> 2);
        if (v7)
        {
          goto LABEL_3;
        }

        v17 = *(v11 + 32);
        if (v14 != v17)
        {
          v18 = *(a2 + 1);
          while (1)
          {
            v19 = *v17;
            v20 = sub_238F3687C(v18, *v17) ? 2 : 0;
            v21 = v20 | sub_238F3699C(v18, v19);
            v22 = sub_238F36B08(v18, v19);
            v23 = sub_2392D0C34();
            v24 = v22 ? v21 | 4 : v21;
            v25 = v19 | ((v24 | (8 * v23)) << 32);
            v7 = sub_2393D6D28(a3, &v25);
            if (v7)
            {
              break;
            }

            v8 = 0;
            LODWORD(v7) = 0;
            if (v14 == ++v17)
            {
              return v7 | v8;
            }
          }

          goto LABEL_3;
        }

        v8 = 0;
      }

      LODWORD(v7) = 0;
      return v7 | v8;
    }
  }

LABEL_3:
  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_238DB9794(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = sub_2392CC5DC(a1 + 88, a2);
  if (v6)
  {
    v7 = (*(*v6 + 112))(v6, a2, a3);
  }

  else
  {
    v10 = sub_238DB9438(a1, a2);
    if (!v10)
    {
      v8 = 0x1EE00000000;
      LODWORD(v7) = 216;
      return v7 | v8;
    }

    v11 = v10;
    v12 = sub_2394DEB00();
    v13 = sub_2394DEDA4(v12, *a2, *(a2 + 1));
    if (!v13 || (v7 = (*(*v13 + 32))(v13, a2, a3), v7 == 45))
    {
      v14 = *(v11 + 40);
      if (!v14)
      {
        v8 = 0;
        LODWORD(v7) = 0;
        return v7 | v8;
      }

      v15 = 0;
      do
      {
        v16 = *(v14 + v15);
        v15 += 4;
      }

      while (v16 != -1);
      sub_238DB9BD8(v17, v14, (v15 - 4) >> 2);
      v7 = sub_2393D6E10(a3, v17[0], v17[1]);
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_238DB98CC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_238DB8BF0(a1, a2);
  if ((v4 & 0x100000000) == 0)
  {
    return 0;
  }

  v8[0] = 0;
  v8[1] = 0;
  v6 = sub_238F40F48(v4, v8);
  return sub_2393D6E10(a3, v6, v7);
}

unint64_t sub_238DB992C(uint64_t a1, int a2, size_t *a3)
{
  v10[0] = 0;
  v10[2] = 0;
  v11 = 0;
  v5 = -1;
  v12 = 0;
  do
  {
    ++v5;
  }

  while (!sub_238F40F9C(a2, v5, v10));
  v6 = sub_2393D6C18(a3, v5);
  if (!v6)
  {
    if (!v5)
    {
LABEL_10:
      v7 = 0;
      LODWORD(v6) = 0;
      return v6 | v7;
    }

    v8 = 0;
    while (1)
    {
      v6 = sub_238F40F9C(a2, v8, v10);
      if (v6)
      {
        break;
      }

      v6 = sub_2393D6D28(a3, v10);
      if (v6)
      {
        break;
      }

      if (v5 == ++v8)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

void *sub_238DB99F0(void *a1)
{
  *a1 = off_284BA8AE8;
  sub_2392CC3D0((a1 + 11));
  return a1;
}

void sub_238DB9A34(void *a1)
{
  *a1 = off_284BA8AE8;
  sub_2392CC3D0((a1 + 11));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238DB9A98(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  if (a2)
  {
    *(a1 + 16) = (*(**a2 + 32))();
    *(a1 + 24) = v4;
  }

  sub_238DB9B00(a1);
  return a1;
}

uint64_t sub_238DB9B00(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 24);
    do
    {
      if (v3)
      {
        if (*v2[2] == *v2)
        {
          return result;
        }

        result = sub_238DB9B98(v2 + 2, 1uLL);
      }

      else
      {
        v4 = *(v1 + 8);
        v2[1] = v4;
        if (!v4)
        {
          return result;
        }

        result = (*(**v4 + 32))();
      }

      v2[2] = result;
      v2[3] = v3;
      v1 = v2[1];
    }

    while (v1);
  }

  return result;
}

uint64_t sub_238DB9B98(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    sub_23952AF34();
  }

  sub_238DB9BD8(&v4, *a1 + 8 * a2, v2 - a2);
  return v4;
}

void *sub_238DB9BD8(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952AFD4();
    }
  }

  return result;
}

BOOL sub_238DB9C20(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_238DB9C38()
{

  return sub_2393D5320(0x1Bu, 1);
}

uint64_t sub_238DB9C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2392CC5DC(a1 + 88, (a2 + 16));
  if (!result)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      *a4 = 0x6400000003;
      *(a4 + 8) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/data-model-providers/codegen/CodegenDataModelProvider_Write.cpp";
LABEL_16:
      *(a4 + 16) = 0;
      return result;
    }

    result = sub_238F40400(*(a2 + 16), *(a2 + 20), *(a2 + 24));
    if (result)
    {
      v10 = result;
      v11 = *(a1 + 16);
      v22[0] = &unk_284BA8BD0;
      v22[1] = v11;
      v12 = sub_2393C4890();
      v13 = sub_2393C4B48(v12, *(a2 + 16), *(a2 + 20));
      if (v13)
      {
        result = (*(*v13 + 32))(v13, a2 + 16, a3);
        if (result)
        {
LABEL_15:
          *a4 = result;
          *(a4 + 8) = v14;
          goto LABEL_16;
        }

        if (*(a3 + 8))
        {
          sub_238F40B9C(*(a2 + 16), *(a2 + 20), *(a2 + 24), v22);
          v14 = 0;
          result = 0;
          goto LABEL_15;
        }
      }

      v21 = xmmword_27DF71860;
      LOBYTE(v18) = (*(v10 + 15) & 0x40) != 0;
      BYTE1(v18) = sub_238EAF118(*(v10 + 14));
      v19 = &v21;
      *(a3 + 8) = 1;
      result = sub_2392CEE80(&v18, *a3);
      if (result)
      {
        goto LABEL_15;
      }

      if (*(&v21 + 1) <= *(v10 + 12))
      {
        v17 = *(v10 + 14);
        v18 = v21;
        LOBYTE(v19) = v17;
        HIDWORD(v19) = 0;
        v20 = v22;
        if (*a2)
        {
          result = sub_238DC4754();
        }

        else
        {
          result = sub_238DC472C();
        }

        if (!result)
        {
          v15 = 0;
          *a4 = 0;
          *(a4 + 8) = 0;
          goto LABEL_13;
        }

        *a4 = result;
        *(a4 + 1) = 0;
      }

      else
      {
        v16 = sub_2393D9044(0x1Du);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Data to write exceeds the attribute size claimed.", &v18, 2u);
        }

        result = sub_2393D5398(3u);
        if (result)
        {
          result = sub_2393D5320(0x1Du, 3);
        }

        *a4 = 135;
        *(a4 + 2) = 0;
      }

      v15 = 1;
    }

    else
    {
      v15 = 1;
      *a4 = 1;
      *(a4 + 2) = 0;
    }

LABEL_13:
    *(a4 + 16) = v15;
    return result;
  }

  v9 = *(*result + 72);

  return v9();
}

uint64_t sub_238DB9F00(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v5 = sub_2392CC5DC(a1 + 88, a2);
  if (v5)
  {
    v6 = *(*v5 + 56);

    return v6();
  }

  v7 = sub_2393C4890();
  result = sub_2393C4B48(v7, *a2, *(a2 + 1));
  if (result)
  {
    switch(a3)
    {
      case 2:
        v6 = *(*result + 48);
        break;
      case 1:
        v6 = *(*result + 48);
        break;
      case 0:
        v9 = *(*result + 40);

        return v9();
      default:
        return result;
    }

    return v6();
  }

  return result;
}

uint64_t sub_238DBA044(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == 1)
  {
    v6[2] = v2;
    v6[3] = v3;
    v4 = *(result + 16);
    v6[0] = &unk_284BA8BD0;
    v6[1] = v4;
    v5 = *(a2 + 8);
    if (*a2 == -1)
    {
      return sub_238F40B18(v5, v6);
    }

    else
    {
      return sub_238F40B9C(v5, *a2, *(a2 + 4), v6);
    }
  }

  return result;
}

id sub_238DBA0FC(void *a1, uint64_t *a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v60 = a3;
  if (a1)
  {
    v71.receiver = a1;
    v71.super_class = MTRCommissioneeInfo;
    v5 = objc_msgSendSuper2(&v71, sel_init);
    v6 = [MTRProductIdentity alloc];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 10)];
    v61 = v5;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 11)];
    v9 = [(MTRProductIdentity *)v6 initWithVendorID:v7 productID:v8];
    v10 = *(v61 + 1);
    *(v61 + 1) = v9;

    if ([v60 readEndpointInformation])
    {
      v11 = sub_239297A8C(MTREndpointInfo, *a2);
      if ([v11 count])
      {
        objc_storeStrong(v61 + 2, v11);
      }
    }

    if (*a2)
    {
      obj = objc_alloc_init(MEMORY[0x277CBEB38]);
      __p = 0;
      v69 = 0;
      v70 = 0;
      v12 = [v60 extraAttributesToRead];
      v13 = v12 == 0;

      if (!v13)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v14 = [v60 extraAttributesToRead];
        v15 = [v14 countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (v15)
        {
          v16 = *v65;
          v17 = v14;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v65 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v64 + 1) + 8 * i);
              v20 = v69;
              if (v69 >= v70)
              {
                v22 = 0xAAAAAAAAAAAAAAABLL * ((v69 - __p) >> 2);
                v23 = v22 + 1;
                if (v22 + 1 > 0x1555555555555555)
                {
                  sub_238DBAEA8();
                }

                if (0x5555555555555556 * ((v70 - __p) >> 2) > v23)
                {
                  v23 = 0x5555555555555556 * ((v70 - __p) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v70 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v24 = 0x1555555555555555;
                }

                else
                {
                  v24 = v23;
                }

                if (v24)
                {
                  sub_238DBAF50(&__p, v24);
                }

                v25 = 4 * ((v69 - __p) >> 2);
                *(v25 + 8) = -1;
                *v25 = -1;
                v21 = 12 * v22 + 12;
                v26 = (12 * v22 - (v69 - __p));
                memcpy((v25 - (v69 - __p)), __p, v69 - __p);
                v27 = __p;
                __p = v26;
                v69 = v21;
                v70 = 0;
                if (v27)
                {
                  operator delete(v27);
                }

                v14 = v17;
              }

              else
              {
                *v69 = -1;
                *(v20 + 2) = -1;
                v21 = (v20 + 12);
              }

              v69 = v21;
              [v19 convertToAttributePathParams:{v21 - 12, v60}];
            }

            v15 = [v14 countByEnumeratingWithState:&v64 objects:v77 count:16];
          }

          while (v15);
        }
      }

      v28 = v69;
      if (v69 >= v70)
      {
        v30 = 0x1555555555555555;
        v31 = __p;
        v32 = v69 - __p;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v69 - __p) >> 2);
        v34 = v33 + 1;
        if (v33 + 1 > 0x1555555555555555)
        {
          sub_238DBAEA8();
        }

        if (0x5555555555555556 * ((v70 - __p) >> 2) > v34)
        {
          v34 = 0x5555555555555556 * ((v70 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v70 - __p) >> 2) < 0xAAAAAAAAAAAAAAALL)
        {
          v30 = v34;
        }

        if (v30)
        {
          sub_238DBAF50(&__p, v30);
        }

        v35 = 4 * ((v69 - __p) >> 2);
        *v35 = 0xFFFC00000031;
        *(v35 + 8) = -1;
        v29 = 12 * v33 + 12;
        v36 = (v35 - v32);
        memcpy((v35 - v32), v31, v32);
        v37 = __p;
        __p = v36;
        v69 = v29;
        v70 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v69 = 0xFFFC00000031;
        *(v28 + 2) = -1;
        v29 = (v28 + 12);
      }

      v69 = v29;
      v38 = *(*a2 + 16);
      v62 = *a2 + 24;
      if (v38 != v62)
      {
        do
        {
          v39 = v38[5];
          if (v39 != v38 + 6)
          {
            do
            {
              v40 = v39[5];
              if (v40 != v39 + 6)
              {
                do
                {
                  v41 = *(v38 + 16);
                  v42 = *(v39 + 8);
                  v43 = *(v40 + 8);
                  v72 = *(v38 + 16);
                  v74 = v42;
                  v75 = v43;
                  v73 = 0;
                  for (j = __p; j != v69; j += 12)
                  {
                    v45 = *(j + 4);
                    v46 = v45 == 0xFFFF || v45 == v41;
                    if (v46 && (*j == -1 || *j == v42))
                    {
                      v48 = *(j + 1);
                      if (v48 == -1 || v48 == v43)
                      {
                        sub_2393C5AAC(v76);
                        if (!sub_2393C1A44(*a2, &v72, v76))
                        {
                          v50 = sub_238EE60DC(v76, 0);
                          if (v50)
                          {
                            v51 = [[MTRAttributePath alloc] initWithPath:&v72];
                            [obj setObject:v50 forKeyedSubscript:v51];
                          }
                        }

                        break;
                      }
                    }
                  }

                  v52 = v40[1];
                  if (v52)
                  {
                    do
                    {
                      v53 = v52;
                      v52 = *v52;
                    }

                    while (v52);
                  }

                  else
                  {
                    do
                    {
                      v53 = v40[2];
                      v46 = *v53 == v40;
                      v40 = v53;
                    }

                    while (!v46);
                  }

                  v40 = v53;
                }

                while (v53 != v39 + 6);
              }

              v54 = v39[1];
              if (v54)
              {
                do
                {
                  v55 = v54;
                  v54 = *v54;
                }

                while (v54);
              }

              else
              {
                do
                {
                  v55 = v39[2];
                  v46 = *v55 == v39;
                  v39 = v55;
                }

                while (!v46);
              }

              v39 = v55;
            }

            while (v55 != v38 + 6);
          }

          v56 = v38[1];
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v38[2];
              v46 = *v57 == v38;
              v38 = v57;
            }

            while (!v46);
          }

          v38 = v57;
        }

        while (v57 != v62);
      }

      objc_storeStrong(v61 + 3, obj);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    v61 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v61;
}

void sub_238DBA6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_238DBAC20(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF77540);

  _Unwind_Resume(a1);
}

void sub_238DBAEC0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_238DBAF1C(exception, a1);
  __cxa_throw(exception, off_278A71528, MEMORY[0x277D825F0]);
}

std::logic_error *sub_238DBAF1C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_238DBAF50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_238DBAFA8();
}

void sub_238DBAFA8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__CFString *MTRClusterNameForID(uint64_t a1)
{
  if (a1 <= 256)
  {
    v3 = a1 - 3;
    v4 = @"Identify";
    switch(v3)
    {
      case 0:
        goto LABEL_152;
      case 1:
        v4 = @"Groups";

        return v4;
      case 2:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 35:
      case 36:
      case 55:
      case 58:
      case 63:
      case 64:
      case 65:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 85:
      case 87:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 143:
      case 144:
      case 147:
      case 151:
        goto LABEL_151;
      case 3:
        v4 = @"OnOff";

        return v4;
      case 5:
        v4 = @"LevelControl";

        return v4;
      case 25:
        v4 = @"PulseWidthModulation";

        return v4;
      case 26:
        v4 = @"Descriptor";

        return v4;
      case 27:
        v4 = @"Binding";

        return v4;
      case 28:
        v4 = @"AccessControl";

        return v4;
      case 34:
        v4 = @"Actions";

        return v4;
      case 37:
        v4 = @"BasicInformation";

        return v4;
      case 38:
        v4 = @"OTASoftwareUpdateProvider";

        return v4;
      case 39:
        v4 = @"OTASoftwareUpdateRequestor";

        return v4;
      case 40:
        v4 = @"LocalizationConfiguration";

        return v4;
      case 41:
        v4 = @"TimeFormatLocalization";

        return v4;
      case 42:
        v4 = @"UnitLocalization";

        return v4;
      case 43:
        v4 = @"PowerSourceConfiguration";

        return v4;
      case 44:
        v4 = @"PowerSource";

        return v4;
      case 45:
        v4 = @"GeneralCommissioning";

        return v4;
      case 46:
        v4 = @"NetworkCommissioning";

        return v4;
      case 47:
        v4 = @"DiagnosticLogs";

        return v4;
      case 48:
        v4 = @"GeneralDiagnostics";

        return v4;
      case 49:
        v4 = @"SoftwareDiagnostics";

        return v4;
      case 50:
        v4 = @"ThreadNetworkDiagnostics";

        return v4;
      case 51:
        v4 = @"WiFiNetworkDiagnostics";

        return v4;
      case 52:
        v4 = @"EthernetNetworkDiagnostics";

        return v4;
      case 53:
        v4 = @"TimeSynchronization";

        return v4;
      case 54:
        v4 = @"BridgedDeviceBasicInformation";

        return v4;
      case 56:
        v4 = @"Switch";

        return v4;
      case 57:
        v4 = @"AdministratorCommissioning";

        return v4;
      case 59:
        v4 = @"OperationalCredentials";

        return v4;
      case 60:
        v4 = @"GroupKeyManagement";

        return v4;
      case 61:
        v4 = @"FixedLabel";

        return v4;
      case 62:
        v4 = @"UserLabel";

        return v4;
      case 66:
        v4 = @"BooleanState";

        return v4;
      case 67:
        v4 = @"ICDManagement";

        return v4;
      case 68:
        v4 = @"Timer";

        return v4;
      case 69:
        v4 = @"OvenCavityOperationalState";

        return v4;
      case 70:
        v4 = @"OvenMode";

        return v4;
      case 71:
        v4 = @"LaundryDryerControls";

        return v4;
      case 77:
        v4 = @"ModeSelect";

        return v4;
      case 78:
        v4 = @"LaundryWasherMode";

        return v4;
      case 79:
        v4 = @"RefrigeratorAndTemperatureControlledCabinetMode";

        return v4;
      case 80:
        v4 = @"LaundryWasherControls";

        return v4;
      case 81:
        v4 = @"RVCRunMode";

        return v4;
      case 82:
        v4 = @"RVCCleanMode";

        return v4;
      case 83:
        v4 = @"TemperatureControl";

        return v4;
      case 84:
        v4 = @"RefrigeratorAlarm";

        return v4;
      case 86:
        v4 = @"DishwasherMode";

        return v4;
      case 88:
        v4 = @"AirQuality";

        return v4;
      case 89:
        v4 = @"SmokeCOAlarm";

        return v4;
      case 90:
        v4 = @"DishwasherAlarm";

        return v4;
      case 91:
        v4 = @"MicrowaveOvenMode";

        return v4;
      case 92:
        v4 = @"MicrowaveOvenControl";

        return v4;
      case 93:
        v4 = @"OperationalState";

        return v4;
      case 94:
        v4 = @"RVCOperationalState";

        return v4;
      case 95:
        v4 = @"ScenesManagement";

        return v4;
      case 110:
        v4 = @"HEPAFilterMonitoring";

        return v4;
      case 111:
        v4 = @"ActivatedCarbonFilterMonitoring";

        return v4;
      case 125:
        v4 = @"BooleanStateConfiguration";

        return v4;
      case 126:
        v4 = @"ValveConfigurationAndControl";

        return v4;
      case 141:
        v4 = @"ElectricalPowerMeasurement";

        return v4;
      case 142:
        v4 = @"ElectricalEnergyMeasurement";

        return v4;
      case 145:
        v4 = @"WaterHeaterManagement";

        return v4;
      case 146:
        v4 = @"CommodityPrice";

        return v4;
      case 148:
        v4 = @"Messages";

        return v4;
      case 149:
        v4 = @"DeviceEnergyManagement";

        return v4;
      case 150:
        v4 = @"EnergyEVSE";

        return v4;
      case 152:
        v4 = @"EnergyPreference";

        return v4;
      case 153:
        v4 = @"PowerTopology";

        return v4;
      case 154:
        v4 = @"EnergyEVSEMode";

        return v4;
      case 155:
        v4 = @"WaterHeaterMode";

        return v4;
      case 156:
        v4 = @"DeviceEnergyManagementMode";

        return v4;
      case 157:
        v4 = @"ElectricalGridConditions";

        return v4;
      default:
        if (a1 == -918523)
        {
          v4 = @"UnitTesting";
        }

        else
        {
          if (a1 != -918496)
          {
            goto LABEL_151;
          }

          v4 = @"SampleMEI";
        }

        break;
    }

    return v4;
  }

  if (a1 <= 1282)
  {
    if (a1 <= 1028)
    {
      if (a1 <= 513)
      {
        if (a1 <= 260)
        {
          switch(a1)
          {
            case 0x101:
              v4 = @"DoorLock";

              break;
            case 0x102:
              v4 = @"WindowCovering";

              break;
            case 0x104:
              v4 = @"ClosureControl";

              break;
            default:
              goto LABEL_151;
          }
        }

        else if (a1 > 511)
        {
          if (a1 == 512)
          {
            v4 = @"PumpConfigurationAndControl";
          }

          else
          {
            v4 = @"Thermostat";
          }
        }

        else if (a1 == 261)
        {
          v4 = @"ClosureDimension";
        }

        else
        {
          if (a1 != 336)
          {
            goto LABEL_151;
          }

          v4 = @"ServiceArea";
        }
      }

      else if (a1 > 1023)
      {
        if (a1 > 1026)
        {
          if (a1 == 1027)
          {
            v4 = @"PressureMeasurement";
          }

          else
          {
            v4 = @"FlowMeasurement";
          }
        }

        else if (a1 == 1024)
        {
          v4 = @"IlluminanceMeasurement";
        }

        else
        {
          if (a1 != 1026)
          {
            goto LABEL_151;
          }

          v4 = @"TemperatureMeasurement";
        }
      }

      else if (a1 > 767)
      {
        if (a1 == 768)
        {
          v4 = @"ColorControl";
        }

        else
        {
          if (a1 != 769)
          {
            goto LABEL_151;
          }

          v4 = @"BallastConfiguration";
        }
      }

      else if (a1 == 514)
      {
        v4 = @"FanControl";
      }

      else
      {
        if (a1 != 516)
        {
          goto LABEL_151;
        }

        v4 = @"ThermostatUserInterfaceConfiguration";
      }
    }

    else if (a1 > 1067)
    {
      if (a1 > 1071)
      {
        if (a1 > 1105)
        {
          if (a1 == 1106)
          {
            v4 = @"ThreadBorderRouterManagement";
          }

          else
          {
            if (a1 != 1107)
            {
              goto LABEL_151;
            }

            v4 = @"ThreadNetworkDirectory";
          }
        }

        else if (a1 == 1072)
        {
          v4 = @"SoilMeasurement";
        }

        else
        {
          if (a1 != 1105)
          {
            goto LABEL_151;
          }

          v4 = @"WiFiNetworkManagement";
        }
      }

      else if (a1 > 1069)
      {
        if (a1 == 1070)
        {
          v4 = @"TotalVolatileOrganicCompoundsConcentrationMeasurement";
        }

        else
        {
          v4 = @"RadonConcentrationMeasurement";
        }
      }

      else if (a1 == 1068)
      {
        v4 = @"PM1ConcentrationMeasurement";
      }

      else
      {
        v4 = @"PM10ConcentrationMeasurement";
      }
    }

    else if (a1 > 1042)
    {
      if (a1 > 1065)
      {
        if (a1 == 1066)
        {
          v4 = @"PM25ConcentrationMeasurement";
        }

        else
        {
          v4 = @"FormaldehydeConcentrationMeasurement";
        }
      }

      else if (a1 == 1043)
      {
        v4 = @"NitrogenDioxideConcentrationMeasurement";
      }

      else
      {
        if (a1 != 1045)
        {
          goto LABEL_151;
        }

        v4 = @"OzoneConcentrationMeasurement";
      }
    }

    else if (a1 > 1035)
    {
      if (a1 == 1036)
      {
        v4 = @"CarbonMonoxideConcentrationMeasurement";
      }

      else
      {
        if (a1 != 1037)
        {
          goto LABEL_151;
        }

        v4 = @"CarbonDioxideConcentrationMeasurement";
      }
    }

    else if (a1 == 1029)
    {
      v4 = @"RelativeHumidityMeasurement";
    }

    else
    {
      if (a1 != 1030)
      {
        goto LABEL_151;
      }

      v4 = @"OccupancySensing";
    }
  }

  else
  {
    if (a1 <= 1361)
    {
      switch(a1)
      {
        case 1283:
          v4 = @"WakeOnLAN";

          break;
        case 1284:
          v4 = @"Channel";

          break;
        case 1285:
          v4 = @"TargetNavigator";

          break;
        case 1286:
          v4 = @"MediaPlayback";

          break;
        case 1287:
          v4 = @"MediaInput";

          break;
        case 1288:
          v4 = @"LowPower";

          break;
        case 1289:
          v4 = @"KeypadInput";

          break;
        case 1290:
          v4 = @"ContentLauncher";

          break;
        case 1291:
          v4 = @"AudioOutput";

          break;
        case 1292:
          v4 = @"ApplicationLauncher";

          break;
        case 1293:
          v4 = @"ApplicationBasic";

          break;
        case 1294:
          v4 = @"AccountLogin";

          break;
        case 1295:
          v4 = @"ContentControl";

          break;
        case 1296:
          v4 = @"ContentAppObserver";

          break;
        default:
          if (a1 == 1360)
          {
            v4 = @"ZoneManagement";
          }

          else
          {
            if (a1 != 1361)
            {
              goto LABEL_151;
            }

            v4 = @"CameraAVStreamManagement";
          }

          break;
      }

      return v4;
    }

    if (a1 > 1873)
    {
      if (a1 > 2821)
      {
        if (a1 > 323615743)
        {
          if (a1 == 323615744)
          {
            v4 = @"AppleDeviceInformation";
          }

          else
          {
            if (a1 != 323615747)
            {
              goto LABEL_151;
            }

            v4 = @"AppleLockCluster";
          }
        }

        else if (a1 == 2822)
        {
          v4 = @"MeterIdentification";
        }

        else
        {
          if (a1 != 2823)
          {
            goto LABEL_151;
          }

          v4 = @"CommodityMetering";
        }
      }

      else if (a1 > 2048)
      {
        if (a1 == 2049)
        {
          v4 = @"TLSCertificateManagement";
        }

        else
        {
          if (a1 != 2050)
          {
            goto LABEL_151;
          }

          v4 = @"TLSClientManagement";
        }
      }

      else if (a1 == 1874)
      {
        v4 = @"JointFabricDatastore";
      }

      else
      {
        if (a1 != 1875)
        {
          goto LABEL_151;
        }

        v4 = @"JointFabricAdministrator";
      }
    }

    else
    {
      if (a1 <= 1365)
      {
        if (a1 > 1363)
        {
          if (a1 == 1364)
          {
            v4 = @"WebRTCTransportRequestor";
          }

          else
          {
            v4 = @"PushAVStreamTransport";
          }
        }

        else if (a1 == 1362)
        {
          v4 = @"CameraAVSettingsUserLevelManagement";
        }

        else
        {
          v4 = @"WebRTCTransportProvider";
        }

        return v4;
      }

      if (a1 > 1871)
      {
        if (a1 == 1872)
        {
          v4 = @"EcosystemInformation";
        }

        else
        {
          v4 = @"CommissionerControl";
        }
      }

      else
      {
        if (a1 != 1366)
        {
          if (a1 == 1792)
          {
            v4 = @"CommodityTariff";

            return v4;
          }

LABEL_151:
          v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown clusterID %u>", a1];
LABEL_152:

          return v4;
        }

        v4 = @"Chime";
      }
    }
  }

  return v4;
}

__CFString *MTRAttributeNameForID(uint64_t a1, uint64_t a2)
{
  if (a1 > 256)
  {
    if (a1 > 1282)
    {
      if (a1 <= 1361)
      {
        switch(a1)
        {
          case 1283:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"LinkLocalAddress";
            }

            else
            {
              v2 = @"MACAddress";
            }

            break;
          case 1284:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2 > 1)
            {
              if (a2 != 2)
              {
                goto LABEL_1106;
              }

              v2 = @"CurrentChannel";
            }

            else if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1847;
              }

              v2 = @"Lineup";
            }

            else
            {
              v2 = @"ChannelList";
            }

            break;
          case 1285:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"CurrentTarget";
            }

            else
            {
              v2 = @"TargetList";
            }

            break;
          case 1286:
            if (a2 > 7)
            {
              if (a2 > 65528)
              {
                goto LABEL_665;
              }

              if (a2 > 9)
              {
                if (a2 != 10)
                {
                  goto LABEL_1106;
                }

                v2 = @"AvailableTextTracks";
              }

              else if (a2 == 8)
              {
                v2 = @"AvailableAudioTracks";
              }

              else
              {
                v2 = @"ActiveTextTrack";
              }
            }

            else if (a2 > 3)
            {
              if (a2 > 5)
              {
                if (a2 == 6)
                {
                  v2 = @"SeekRangeStart";
                }

                else
                {
                  v2 = @"ActiveAudioTrack";
                }
              }

              else if (a2 == 4)
              {
                v2 = @"PlaybackSpeed";
              }

              else
              {
                v2 = @"SeekRangeEnd";
              }
            }

            else if (a2 > 1)
            {
              if (a2 == 2)
              {
                v2 = @"Duration";
              }

              else
              {
                v2 = @"SampledPosition";
              }
            }

            else
            {
              if (!a2)
              {
                goto LABEL_1131;
              }

              if (a2 != 1)
              {
                goto LABEL_1847;
              }

              v2 = @"StartTime";
            }

            break;
          case 1287:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"CurrentInput";
            }

            else
            {
              v2 = @"InputList";
            }

            break;
          case 1288:
          case 1289:
          case 1294:
          case 1296:
            if ((a2 - 65528) >= 6 || ((0x3Bu >> (a2 + 8)) & 1) == 0)
            {
              goto LABEL_1847;
            }

            v2 = off_278A71708[(a2 - 65528)];
            break;
          case 1290:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"SupportedStreamingProtocols";
            }

            else
            {
              v2 = @"AcceptHeader";
            }

            break;
          case 1291:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"CurrentOutput";
            }

            else
            {
              v2 = @"OutputList";
            }

            break;
          case 1292:
            if (a2 > 65528)
            {
              goto LABEL_665;
            }

            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1106;
              }

              v2 = @"CurrentApp";
            }

            else
            {
              v2 = @"CatalogList";
            }

            break;
          case 1293:
            if (a2 <= 5)
            {
              if (a2 > 2)
              {
                if (a2 == 3)
                {
                  v2 = @"ProductID";
                }

                else if (a2 == 4)
                {
                  v2 = @"Application";
                }

                else
                {
                  v2 = @"Status";
                }
              }

              else if (a2)
              {
                if (a2 == 1)
                {
                  v2 = @"VendorID";
                }

                else
                {
                  if (a2 != 2)
                  {
                    goto LABEL_1847;
                  }

                  v2 = @"ApplicationName";
                }
              }

              else
              {
                v2 = @"VendorName";
              }
            }

            else
            {
              if (a2 > 65528)
              {
                goto LABEL_665;
              }

              if (a2 == 6)
              {
                v2 = @"ApplicationVersion";
              }

              else
              {
                if (a2 != 7)
                {
                  goto LABEL_1106;
                }

                v2 = @"AllowedVendorList";
              }
            }

            break;
          case 1295:
            if (a2 <= 5)
            {
              if (a2 > 2)
              {
                if (a2 == 3)
                {
                  v2 = @"ScheduledContentRatings";
                }

                else if (a2 == 4)
                {
                  v2 = @"ScheduledContentRatingThreshold";
                }

                else
                {
                  v2 = @"ScreenDailyTime";
                }
              }

              else if (a2)
              {
                if (a2 == 1)
                {
                  v2 = @"OnDemandRatings";
                }

                else
                {
                  if (a2 != 2)
                  {
                    goto LABEL_1847;
                  }

                  v2 = @"OnDemandRatingThreshold";
                }
              }

              else
              {
                v2 = @"Enabled";
              }
            }

            else
            {
              if (a2 > 65528)
              {
                goto LABEL_665;
              }

              if (a2 == 6)
              {
                v2 = @"RemainingScreenTime";
              }

              else
              {
                if (a2 != 7)
                {
                  goto LABEL_1106;
                }

                v2 = @"BlockUnrated";
              }
            }

            break;
          default:
            if (a1 == 1360)
            {
              if (a2 > 5)
              {
                if (a2 > 65530)
                {
                  goto LABEL_674;
                }

                if (a2 != 6)
                {
                  goto LABEL_671;
                }

                v2 = @"TwoDCartesianMax";
              }

              else if (a2 > 2)
              {
                if (a2 == 3)
                {
                  v2 = @"Triggers";
                }

                else if (a2 == 4)
                {
                  v2 = @"SensitivityMax";
                }

                else
                {
                  v2 = @"Sensitivity";
                }
              }

              else if (a2)
              {
                if (a2 == 1)
                {
                  v2 = @"MaxZones";
                }

                else
                {
                  if (a2 != 2)
                  {
                    goto LABEL_1847;
                  }

                  v2 = @"Zones";
                }
              }

              else
              {
                v2 = @"MaxUserDefinedZones";
              }
            }

            else
            {
              if (a1 != 1361)
              {
                goto LABEL_197;
              }

              if (a2 > 65527)
              {
                goto LABEL_606;
              }

              v2 = @"MaxConcurrentEncoders";
              switch(a2)
              {
                case 0:
                  goto LABEL_1848;
                case 1:
                  v2 = @"MaxEncodedPixelRate";
                  break;
                case 2:
                  v2 = @"VideoSensorParams";
                  break;
                case 3:
                  v2 = @"NightVisionUsesInfrared";
                  break;
                case 4:
                  v2 = @"MinViewportResolution";
                  break;
                case 5:
                  v2 = @"RateDistortionTradeOffPoints";
                  break;
                case 6:
                  v2 = @"MaxContentBufferSize";
                  break;
                case 7:
                  v2 = @"MicrophoneCapabilities";
                  break;
                case 8:
                  v2 = @"SpeakerCapabilities";
                  break;
                case 9:
                  v2 = @"TwoWayTalkSupport";
                  break;
                case 10:
                  v2 = @"SnapshotCapabilities";
                  break;
                case 11:
                  v2 = @"MaxNetworkBandwidth";
                  break;
                case 12:
                  v2 = @"CurrentFrameRate";
                  break;
                case 13:
                  v2 = @"HDRModeEnabled";
                  break;
                case 14:
                  v2 = @"SupportedStreamUsages";
                  break;
                case 15:
                  v2 = @"AllocatedVideoStreams";
                  break;
                case 16:
                  v2 = @"AllocatedAudioStreams";
                  break;
                case 17:
                  v2 = @"AllocatedSnapshotStreams";
                  break;
                case 18:
                  v2 = @"StreamUsagePriorities";
                  break;
                case 19:
                  v2 = @"SoftRecordingPrivacyModeEnabled";
                  break;
                case 20:
                  v2 = @"SoftLivestreamPrivacyModeEnabled";
                  break;
                case 21:
                  v2 = @"HardPrivacyModeOn";
                  break;
                case 22:
                  v2 = @"NightVision";
                  break;
                case 23:
                  v2 = @"NightVisionIllum";
                  break;
                case 24:
                  v2 = @"Viewport";
                  break;
                case 25:
                  v2 = @"SpeakerMuted";
                  break;
                case 26:
                  v2 = @"SpeakerVolumeLevel";
                  break;
                case 27:
                  v2 = @"SpeakerMaxLevel";
                  break;
                case 28:
                  v2 = @"SpeakerMinLevel";
                  break;
                case 29:
                  v2 = @"MicrophoneMuted";
                  break;
                case 30:
                  v2 = @"MicrophoneVolumeLevel";
                  break;
                case 31:
                  v2 = @"MicrophoneMaxLevel";
                  break;
                case 32:
                  v2 = @"MicrophoneMinLevel";
                  break;
                case 33:
                  v2 = @"MicrophoneAGCEnabled";
                  break;
                case 34:
                  v2 = @"ImageRotation";
                  break;
                case 35:
                  v2 = @"ImageFlipHorizontal";
                  break;
                case 36:
                  v2 = @"ImageFlipVertical";
                  break;
                case 37:
                  v2 = @"LocalVideoRecordingEnabled";
                  break;
                case 38:
                  v2 = @"LocalSnapshotRecordingEnabled";
                  break;
                case 39:
                  v2 = @"StatusLightEnabled";
                  break;
                case 40:
                  v2 = @"StatusLightBrightness";
                  break;
                default:
                  goto LABEL_1847;
              }
            }

            break;
        }

        goto LABEL_1848;
      }

      if (a1 <= 1873)
      {
        if (a1 <= 1365)
        {
          if (a1 > 1363)
          {
            if (a1 == 1364)
            {
              goto LABEL_188;
            }

            if (a2 <= 65528)
            {
              if (!a2)
              {
                v2 = @"SupportedFormats";
                goto LABEL_1848;
              }

              if (a2 == 1)
              {
                v2 = @"CurrentConnections";
                goto LABEL_1848;
              }

              goto LABEL_1106;
            }
          }

          else
          {
            if (a1 != 1362)
            {
LABEL_188:
              if (a2 <= 65530)
              {
                if (!a2)
                {
                  v2 = @"CurrentSessions";
                  goto LABEL_1848;
                }

                goto LABEL_671;
              }

              goto LABEL_674;
            }

            if (a2 <= 6)
            {
              if (a2 > 2)
              {
                if (a2 > 4)
                {
                  if (a2 == 5)
                  {
                    v2 = @"TiltMin";
                  }

                  else
                  {
                    v2 = @"TiltMax";
                  }
                }

                else if (a2 == 3)
                {
                  v2 = @"DPTZStreams";
                }

                else
                {
                  v2 = @"ZoomMax";
                }

                goto LABEL_1848;
              }

              switch(a2)
              {
                case 0:
                  v2 = @"MPTZPosition";
                  goto LABEL_1848;
                case 1:
                  v2 = @"MaxPresets";
                  goto LABEL_1848;
                case 2:
                  v2 = @"MPTZPresets";
                  goto LABEL_1848;
              }

              goto LABEL_1847;
            }

            if (a2 <= 65528)
            {
              if (a2 <= 8)
              {
                if (a2 == 7)
                {
                  v2 = @"PanMin";
                }

                else
                {
                  v2 = @"PanMax";
                }

                goto LABEL_1848;
              }

              if (a2 == 9)
              {
                v2 = @"MovementState";
                goto LABEL_1848;
              }

              goto LABEL_1106;
            }
          }

LABEL_665:
          if (a2 > 65531)
          {
            goto LABEL_675;
          }

          if (a2 == 65529)
          {
LABEL_673:
            v2 = @"AcceptedCommandList";
            goto LABEL_1848;
          }

          if (a2 != 65531)
          {
LABEL_1847:
            v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown attributeID %u>", a2];
            goto LABEL_1848;
          }

          goto LABEL_889;
        }

        if (a1 > 1871)
        {
          if (a1 != 1872)
          {
            if (a2 <= 65530)
            {
              if (!a2)
              {
                v2 = @"SupportedDeviceCategories";
                goto LABEL_1848;
              }

              goto LABEL_671;
            }

            goto LABEL_674;
          }

          if (a2 <= 65528)
          {
            if (!a2)
            {
              v2 = @"DeviceDirectory";
              goto LABEL_1848;
            }

            if (a2 == 1)
            {
              v2 = @"LocationDirectory";
              goto LABEL_1848;
            }

            goto LABEL_1106;
          }

          goto LABEL_665;
        }

        if (a1 != 1366)
        {
          if (a1 == 1792)
          {
            if (a2 <= 65527)
            {
              v2 = @"TariffInfo";
              switch(a2)
              {
                case 0:
                  goto LABEL_1848;
                case 1:
                  goto LABEL_1049;
                case 2:
                  v2 = @"StartDate";
                  break;
                case 3:
                  v2 = @"DayEntries";
                  break;
                case 4:
                  v2 = @"DayPatterns";
                  break;
                case 5:
                  v2 = @"CalendarPeriods";
                  break;
                case 6:
                  v2 = @"IndividualDays";
                  break;
                case 7:
                  v2 = @"CurrentDay";
                  break;
                case 8:
                  v2 = @"NextDay";
                  break;
                case 9:
                  v2 = @"CurrentDayEntry";
                  break;
                case 10:
                  v2 = @"CurrentDayEntryDate";
                  break;
                case 11:
                  v2 = @"NextDayEntry";
                  break;
                case 12:
                  v2 = @"NextDayEntryDate";
                  break;
                case 13:
                  v2 = @"TariffComponents";
                  break;
                case 14:
                  v2 = @"TariffPeriods";
                  break;
                case 15:
                  v2 = @"CurrentTariffComponents";
                  break;
                case 16:
                  v2 = @"NextTariffComponents";
                  break;
                case 17:
                  v2 = @"DefaultRandomizationOffset";
                  break;
                case 18:
                  v2 = @"DefaultRandomizationType";
                  break;
                default:
                  goto LABEL_1847;
              }

              goto LABEL_1848;
            }

            goto LABEL_606;
          }

          goto LABEL_197;
        }

        if (a2 > 65528)
        {
          goto LABEL_665;
        }

        if (a2 <= 1)
        {
          if (!a2)
          {
            v2 = @"InstalledChimeSounds";
            goto LABEL_1848;
          }

          if (a2 == 1)
          {
            v2 = @"SelectedChime";
            goto LABEL_1848;
          }

          goto LABEL_1847;
        }

        if (a2 == 2)
        {
          v2 = @"Enabled";
          goto LABEL_1848;
        }

LABEL_1106:
        if (a2 != 65528)
        {
          goto LABEL_1847;
        }

        goto LABEL_1107;
      }

      if (a1 > 2821)
      {
        if (a1 > 323615743)
        {
          if (a1 == 323615744)
          {
            if (a2 <= 65528)
            {
              if (!a2)
              {
                v2 = @"SupportsTapToUnlock";
                goto LABEL_1848;
              }

              if (a2 == 1)
              {
                v2 = @"SupportsWED";
                goto LABEL_1848;
              }

LABEL_789:
              if (a2 != 65528)
              {
                goto LABEL_1847;
              }

LABEL_790:
              v2 = @"GeneratedCommandList";
              goto LABEL_1848;
            }

LABEL_510:
            if (a2 <= 65531)
            {
              if (a2 != 65529)
              {
                if (a2 != 65531)
                {
                  goto LABEL_1847;
                }

LABEL_513:
                v2 = @"AttributeList";
                goto LABEL_1848;
              }

LABEL_599:
              v2 = @"AcceptedCommandList";
              goto LABEL_1848;
            }

LABEL_514:
            if (a2 == 65532)
            {
              v2 = @"FeatureMap";
              goto LABEL_1848;
            }

            if (a2 != 65533)
            {
              goto LABEL_1847;
            }

            goto LABEL_516;
          }

          if (a1 != 323615747)
          {
LABEL_197:
            [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown clusterID %u>", a1];
            v2 = LABEL_1115:;
            goto LABEL_1848;
          }

          if (a2 > 65530)
          {
LABEL_500:
            if (a2 == 65531)
            {
              goto LABEL_513;
            }

            goto LABEL_514;
          }

          if (!a2)
          {
            v2 = @"IntentDetection";
            goto LABEL_1848;
          }

LABEL_502:
          if (a2 == 65528)
          {
            goto LABEL_790;
          }

          if (a2 != 65529)
          {
            goto LABEL_1847;
          }

          goto LABEL_599;
        }

        if (a1 == 2822)
        {
          if (a2 <= 65527)
          {
            if (a2 <= 1)
            {
              if (!a2)
              {
                v2 = @"MeterType";
                goto LABEL_1848;
              }

              if (a2 == 1)
              {
                v2 = @"PointOfDelivery";
                goto LABEL_1848;
              }
            }

            else
            {
              switch(a2)
              {
                case 2:
                  v2 = @"MeterSerialNumber";
                  goto LABEL_1848;
                case 3:
                  v2 = @"ProtocolVersion";
                  goto LABEL_1848;
                case 4:
                  v2 = @"PowerThreshold";
                  goto LABEL_1848;
              }
            }

            goto LABEL_1847;
          }
        }

        else
        {
          if (a1 != 2823)
          {
            goto LABEL_197;
          }

          if (a2 <= 65527)
          {
            if (a2 > 1)
            {
              if (a2 == 2)
              {
LABEL_1049:
                v2 = @"TariffUnit";
                goto LABEL_1848;
              }

              if (a2 == 3)
              {
                v2 = @"MaximumMeteredQuantities";
                goto LABEL_1848;
              }
            }

            else
            {
              if (!a2)
              {
                v2 = @"MeteredQuantity";
                goto LABEL_1848;
              }

              if (a2 == 1)
              {
                v2 = @"MeteredQuantityTimestamp";
                goto LABEL_1848;
              }
            }

            goto LABEL_1847;
          }
        }
      }

      else
      {
        if (a1 <= 2048)
        {
          if (a1 == 1874)
          {
            if (a2 <= 65527)
            {
              v2 = @"AnchorRootCA";
              switch(a2)
              {
                case 0:
                  goto LABEL_1848;
                case 1:
                  v2 = @"AnchorNodeID";
                  break;
                case 2:
                  v2 = @"AnchorVendorID";
                  break;
                case 3:
                  v2 = @"FriendlyName";
                  break;
                case 4:
                  v2 = @"GroupKeySetList";
                  break;
                case 5:
                  v2 = @"GroupList";
                  break;
                case 6:
                  v2 = @"NodeList";
                  break;
                case 7:
                  v2 = @"AdminList";
                  break;
                case 8:
                  v2 = @"Status";
                  break;
                case 9:
                  v2 = @"EndpointGroupIDList";
                  break;
                case 10:
                  v2 = @"EndpointBindingList";
                  break;
                case 11:
                  v2 = @"NodeKeySetList";
                  break;
                case 12:
                  v2 = @"NodeACLList";
                  break;
                case 13:
                  v2 = @"NodeEndpointList";
                  break;
                default:
                  goto LABEL_1847;
              }

              goto LABEL_1848;
            }

LABEL_606:
            if (a2 <= 65530)
            {
              goto LABEL_671;
            }

            goto LABEL_674;
          }

          if (a1 != 1875)
          {
            goto LABEL_197;
          }

          if (a2 <= 65530)
          {
            if (!a2)
            {
              v2 = @"AdministratorFabricIndex";
              goto LABEL_1848;
            }

            goto LABEL_671;
          }

          if (a2 == 65531)
          {
            goto LABEL_889;
          }

          if (a2 == 65532)
          {
            goto LABEL_1095;
          }

          if (a2 != 65533)
          {
            goto LABEL_1847;
          }

LABEL_516:
          v2 = @"ClusterRevision";
          goto LABEL_1848;
        }

        if (a1 != 2049)
        {
          if (a1 == 2050)
          {
            if (a2 <= 65528)
            {
              if (!a2)
              {
                v2 = @"MaxProvisioned";
                goto LABEL_1848;
              }

              if (a2 == 1)
              {
                v2 = @"ProvisionedEndpoints";
                goto LABEL_1848;
              }

              goto LABEL_789;
            }

            goto LABEL_510;
          }

          goto LABEL_197;
        }

        if (a2 <= 65527)
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v2 = @"MaxClientCertificates";
              goto LABEL_1848;
            }

            if (a2 == 3)
            {
              v2 = @"ProvisionedClientCertificates";
              goto LABEL_1848;
            }
          }

          else
          {
            if (!a2)
            {
              v2 = @"MaxRootCertificates";
              goto LABEL_1848;
            }

            if (a2 == 1)
            {
              v2 = @"ProvisionedRootCertificates";
              goto LABEL_1848;
            }
          }

          goto LABEL_1847;
        }
      }

LABEL_499:
      if (a2 > 65530)
      {
        goto LABEL_500;
      }

      goto LABEL_502;
    }

    if (a1 > 1028)
    {
      if (a1 > 1067)
      {
        if (a1 > 1071)
        {
          if (a1 > 1105)
          {
            if (a1 == 1106)
            {
              if (a2 <= 4)
              {
                if (a2 > 1)
                {
                  if (a2 == 2)
                  {
                    v2 = @"ThreadVersion";
                  }

                  else if (a2 == 3)
                  {
                    v2 = @"InterfaceEnabled";
                  }

                  else
                  {
                    v2 = @"ActiveDatasetTimestamp";
                  }

                  goto LABEL_1848;
                }

                if (!a2)
                {
                  v2 = @"BorderRouterName";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"BorderAgentID";
                  goto LABEL_1848;
                }

                goto LABEL_1847;
              }

              if (a2 <= 65530)
              {
                if (a2 == 5)
                {
                  v2 = @"PendingDatasetTimestamp";
                  goto LABEL_1848;
                }

LABEL_671:
                if (a2 != 65528)
                {
                  if (a2 == 65529)
                  {
                    goto LABEL_673;
                  }

                  goto LABEL_1847;
                }

LABEL_1107:
                v2 = @"GeneratedCommandList";
                goto LABEL_1848;
              }

LABEL_674:
              if (a2 != 65531)
              {
LABEL_675:
                if (a2 != 65532)
                {
                  if (a2 != 65533)
                  {
                    goto LABEL_1847;
                  }

                  goto LABEL_677;
                }

                goto LABEL_1095;
              }

LABEL_889:
              v2 = @"AttributeList";
              goto LABEL_1848;
            }

            if (a1 == 1107)
            {
              if (a2 > 65528)
              {
                goto LABEL_665;
              }

              if (a2 <= 1)
              {
                if (!a2)
                {
                  v2 = @"PreferredExtendedPanID";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"ThreadNetworks";
                  goto LABEL_1848;
                }

                goto LABEL_1847;
              }

              if (a2 == 2)
              {
                v2 = @"ThreadNetworkTableSize";
                goto LABEL_1848;
              }

              goto LABEL_1106;
            }
          }

          else
          {
            if (a1 == 1072)
            {
              if (a2 <= 65528)
              {
                if (!a2)
                {
                  v2 = @"SoilMoistureMeasurementLimits";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"SoilMoistureMeasuredValue";
                  goto LABEL_1848;
                }

                goto LABEL_1106;
              }

              goto LABEL_665;
            }

            if (a1 == 1105)
            {
              if (a2 <= 65528)
              {
                if (!a2)
                {
                  v2 = @"SSID";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"PassphraseSurrogate";
                  goto LABEL_1848;
                }

                goto LABEL_1106;
              }

              goto LABEL_665;
            }
          }

          goto LABEL_197;
        }
      }

      else if (a1 > 1042)
      {
        if (a1 <= 1065 && a1 != 1043 && a1 != 1045)
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (a1 <= 1035)
        {
          if (a1 != 1029)
          {
            if (a1 != 1030)
            {
              goto LABEL_197;
            }

            if (a2 <= 32)
            {
              if (a2 <= 3)
              {
                if (a2 > 1)
                {
                  if (a2 == 2)
                  {
                    v2 = @"OccupancySensorTypeBitmap";
                  }

                  else
                  {
                    v2 = @"HoldTime";
                  }

                  goto LABEL_1848;
                }

                if (!a2)
                {
                  v2 = @"Occupancy";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"OccupancySensorType";
                  goto LABEL_1848;
                }
              }

              else if (a2 <= 16)
              {
                if (a2 == 4)
                {
                  v2 = @"HoldTimeLimits";
                  goto LABEL_1848;
                }

                if (a2 == 16)
                {
                  v2 = @"PIROccupiedToUnoccupiedDelay";
                  goto LABEL_1848;
                }
              }

              else
              {
                switch(a2)
                {
                  case 0x11:
                    v2 = @"PIRUnoccupiedToOccupiedDelay";
                    goto LABEL_1848;
                  case 0x12:
                    v2 = @"PIRUnoccupiedToOccupiedThreshold";
                    goto LABEL_1848;
                  case 0x20:
                    v2 = @"UltrasonicOccupiedToUnoccupiedDelay";
                    goto LABEL_1848;
                }
              }

              goto LABEL_1847;
            }

            if (a2 <= 65527)
            {
              if (a2 <= 47)
              {
                if (a2 == 33)
                {
                  v2 = @"UltrasonicUnoccupiedToOccupiedDelay";
                  goto LABEL_1848;
                }

                if (a2 == 34)
                {
                  v2 = @"UltrasonicUnoccupiedToOccupiedThreshold";
                  goto LABEL_1848;
                }
              }

              else
              {
                switch(a2)
                {
                  case '0':
                    v2 = @"PhysicalContactOccupiedToUnoccupiedDelay";
                    goto LABEL_1848;
                  case '1':
                    v2 = @"PhysicalContactUnoccupiedToOccupiedDelay";
                    goto LABEL_1848;
                  case '2':
                    v2 = @"PhysicalContactUnoccupiedToOccupiedThreshold";
                    goto LABEL_1848;
                }
              }

              goto LABEL_1847;
            }

LABEL_827:
            if (a2 > 65530)
            {
              if (a2 != 65531)
              {
                goto LABEL_829;
              }

LABEL_835:
              v2 = @"AttributeList";
              goto LABEL_1848;
            }

            if (a2 != 65528)
            {
              if (a2 != 65529)
              {
                goto LABEL_1847;
              }

              goto LABEL_834;
            }

            goto LABEL_963;
          }

          goto LABEL_127;
        }

        if (a1 == 1036)
        {
          if (a2 <= 7)
          {
            if (a2 <= 3)
            {
              if (a2 <= 1)
              {
                goto LABEL_524;
              }

              if (a2 == 2)
              {
                goto LABEL_1086;
              }

              goto LABEL_192;
            }

            if (a2 <= 5)
            {
              if (a2 != 4)
              {
                goto LABEL_166;
              }

              goto LABEL_885;
            }

            if (a2 != 6)
            {
LABEL_194:
              v2 = @"Uncertainty";
              goto LABEL_1848;
            }

LABEL_1091:
            v2 = @"AverageMeasuredValueWindow";
            goto LABEL_1848;
          }

          if (a2 > 65528)
          {
            if (a2 > 65531)
            {
              if (a2 != 65532)
              {
                if (a2 != 65533)
                {
                  goto LABEL_1847;
                }

LABEL_677:
                v2 = @"ClusterRevision";
                goto LABEL_1848;
              }

LABEL_1095:
              v2 = @"FeatureMap";
              goto LABEL_1848;
            }

            if (a2 == 65529)
            {
              goto LABEL_673;
            }

            if (a2 != 65531)
            {
              goto LABEL_1847;
            }

            goto LABEL_889;
          }

          if (a2 <= 9)
          {
            if (a2 != 8)
            {
              goto LABEL_163;
            }

            goto LABEL_660;
          }

          if (a2 != 10)
          {
            if (a2 != 65528)
            {
              goto LABEL_1847;
            }

            goto LABEL_1107;
          }

LABEL_196:
          v2 = @"LevelValue";
          goto LABEL_1848;
        }

        if (a1 != 1037)
        {
          goto LABEL_197;
        }
      }

      if (a2 <= 7)
      {
        if (a2 <= 3)
        {
          if (a2 <= 1)
          {
            if (!a2)
            {
              goto LABEL_959;
            }

            if (a2 != 1)
            {
              goto LABEL_1847;
            }

            goto LABEL_526;
          }

          if (a2 == 2)
          {
            goto LABEL_1086;
          }

LABEL_192:
          v2 = @"PeakMeasuredValue";
          goto LABEL_1848;
        }

        if (a2 <= 5)
        {
          if (a2 != 4)
          {
LABEL_166:
            v2 = @"AverageMeasuredValue";
            goto LABEL_1848;
          }

LABEL_885:
          v2 = @"PeakMeasuredValueWindow";
          goto LABEL_1848;
        }

        if (a2 != 6)
        {
          goto LABEL_194;
        }

        goto LABEL_1091;
      }

      if (a2 > 65528)
      {
        goto LABEL_665;
      }

      if (a2 <= 9)
      {
        if (a2 != 8)
        {
LABEL_163:
          v2 = @"MeasurementMedium";
          goto LABEL_1848;
        }

LABEL_660:
        v2 = @"MeasurementUnit";
        goto LABEL_1848;
      }

      if (a2 != 10)
      {
        goto LABEL_1106;
      }

      goto LABEL_196;
    }

    if (a1 > 513)
    {
      if (a1 > 1023)
      {
        if (a1 <= 1026)
        {
          if (a1 == 1024)
          {
            if (a2 > 65527)
            {
              goto LABEL_827;
            }

            if (a2 > 1)
            {
              if (a2 != 2)
              {
                if (a2 != 3)
                {
                  if (a2 == 4)
                  {
                    v2 = @"LightSensorType";
                    goto LABEL_1848;
                  }

                  goto LABEL_1847;
                }

                goto LABEL_772;
              }

LABEL_1086:
              v2 = @"MaxMeasuredValue";
              goto LABEL_1848;
            }

LABEL_524:
            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_1847;
              }

              goto LABEL_526;
            }

LABEL_959:
            v2 = @"MeasuredValue";
            goto LABEL_1848;
          }

          if (a1 != 1026)
          {
            goto LABEL_197;
          }

LABEL_127:
          if (a2 > 65527)
          {
            goto LABEL_827;
          }

          if (a2 > 1)
          {
            if (a2 != 2)
            {
              if (a2 != 3)
              {
                goto LABEL_1847;
              }

LABEL_772:
              v2 = @"Tolerance";
              goto LABEL_1848;
            }

            goto LABEL_1086;
          }

          goto LABEL_524;
        }

        if (a1 != 1027)
        {
          goto LABEL_127;
        }

        if (a2 > 18)
        {
          if (a2 > 65528)
          {
            if (a2 > 65531)
            {
LABEL_829:
              if (a2 == 65532)
              {
                v2 = @"FeatureMap";
                goto LABEL_1848;
              }

              if (a2 == 65533)
              {
                v2 = @"ClusterRevision";
                goto LABEL_1848;
              }

              goto LABEL_1847;
            }

            if (a2 != 65529)
            {
              if (a2 != 65531)
              {
                goto LABEL_1847;
              }

              goto LABEL_835;
            }

LABEL_834:
            v2 = @"AcceptedCommandList";
            goto LABEL_1848;
          }

          if (a2 == 19)
          {
            v2 = @"ScaledTolerance";
            goto LABEL_1848;
          }

          if (a2 == 20)
          {
            v2 = @"Scale";
            goto LABEL_1848;
          }

          if (a2 != 65528)
          {
            goto LABEL_1847;
          }

LABEL_963:
          v2 = @"GeneratedCommandList";
          goto LABEL_1848;
        }

        if (a2 > 2)
        {
          if (a2 > 16)
          {
            if (a2 == 17)
            {
              v2 = @"MinScaledValue";
            }

            else
            {
              v2 = @"MaxScaledValue";
            }

            goto LABEL_1848;
          }

          if (a2 != 3)
          {
            if (a2 == 16)
            {
              v2 = @"ScaledValue";
              goto LABEL_1848;
            }

            goto LABEL_1847;
          }

          goto LABEL_772;
        }

        if (!a2)
        {
          goto LABEL_959;
        }

        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_1847;
          }

          goto LABEL_1086;
        }

LABEL_526:
        v2 = @"MinMeasuredValue";
        goto LABEL_1848;
      }

      if (a1 > 767)
      {
        if (a1 == 768)
        {
          if (a2 < 0x4000)
          {
            v2 = @"CurrentHue";
            switch(a2)
            {
              case 0:
                goto LABEL_1848;
              case 1:
                v2 = @"CurrentSaturation";
                break;
              case 2:
                v2 = @"RemainingTime";
                break;
              case 3:
                v2 = @"CurrentX";
                break;
              case 4:
                v2 = @"CurrentY";
                break;
              case 5:
                v2 = @"DriftCompensation";
                break;
              case 6:
                v2 = @"CompensationText";
                break;
              case 7:
                v2 = @"ColorTemperatureMireds";
                break;
              case 8:
                v2 = @"ColorMode";
                break;
              case 15:
                v2 = @"Options";
                break;
              case 16:
                v2 = @"NumberOfPrimaries";
                break;
              case 17:
                v2 = @"Primary1X";
                break;
              case 18:
                v2 = @"Primary1Y";
                break;
              case 19:
                v2 = @"Primary1Intensity";
                break;
              case 21:
                v2 = @"Primary2X";
                break;
              case 22:
                v2 = @"Primary2Y";
                break;
              case 23:
                v2 = @"Primary2Intensity";
                break;
              case 25:
                v2 = @"Primary3X";
                break;
              case 26:
                v2 = @"Primary3Y";
                break;
              case 27:
                v2 = @"Primary3Intensity";
                break;
              case 32:
                v2 = @"Primary4X";
                break;
              case 33:
                v2 = @"Primary4Y";
                break;
              case 34:
                v2 = @"Primary4Intensity";
                break;
              case 36:
                v2 = @"Primary5X";
                break;
              case 37:
                v2 = @"Primary5Y";
                break;
              case 38:
                v2 = @"Primary5Intensity";
                break;
              case 40:
                v2 = @"Primary6X";
                break;
              case 41:
                v2 = @"Primary6Y";
                break;
              case 42:
                v2 = @"Primary6Intensity";
                break;
              case 48:
                v2 = @"WhitePointX";
                break;
              case 49:
                v2 = @"WhitePointY";
                break;
              case 50:
                v2 = @"ColorPointRX";
                break;
              case 51:
                v2 = @"ColorPointRY";
                break;
              case 52:
                v2 = @"ColorPointRIntensity";
                break;
              case 54:
                v2 = @"ColorPointGX";
                break;
              case 55:
                v2 = @"ColorPointGY";
                break;
              case 56:
                v2 = @"ColorPointGIntensity";
                break;
              case 58:
                v2 = @"ColorPointBX";
                break;
              case 59:
                v2 = @"ColorPointBY";
                break;
              case 60:
                v2 = @"ColorPointBIntensity";
                break;
              default:
                goto LABEL_1847;
            }

            goto LABEL_1848;
          }

          if (a2 <= 16394)
          {
            if (a2 <= 16387)
            {
              if (a2 > 16385)
              {
                if (a2 == 16386)
                {
                  v2 = @"ColorLoopActive";
                }

                else
                {
                  v2 = @"ColorLoopDirection";
                }
              }

              else if (a2 == 0x4000)
              {
                v2 = @"EnhancedCurrentHue";
              }

              else
              {
                v2 = @"EnhancedColorMode";
              }

              goto LABEL_1848;
            }

            if (a2 <= 16389)
            {
              if (a2 == 16388)
              {
                v2 = @"ColorLoopTime";
              }

              else
              {
                v2 = @"ColorLoopStartEnhancedHue";
              }

              goto LABEL_1848;
            }

            if (a2 == 16390)
            {
              v2 = @"ColorLoopStoredEnhancedHue";
              goto LABEL_1848;
            }

            if (a2 == 16394)
            {
              v2 = @"ColorCapabilities";
              goto LABEL_1848;
            }

            goto LABEL_1847;
          }

          if (a2 <= 65527)
          {
            if (a2 <= 16396)
            {
              if (a2 == 16395)
              {
                v2 = @"ColorTempPhysicalMinMireds";
              }

              else
              {
                v2 = @"ColorTempPhysicalMaxMireds";
              }

              goto LABEL_1848;
            }

            if (a2 == 16397)
            {
              v2 = @"CoupleColorTempToLevelMinMireds";
              goto LABEL_1848;
            }

            if (a2 == 16400)
            {
              v2 = @"StartUpColorTemperatureMireds";
              goto LABEL_1848;
            }

            goto LABEL_1847;
          }
        }

        else
        {
          if (a1 != 769)
          {
            goto LABEL_197;
          }

          if (a2 <= 48)
          {
            if (a2 <= 16)
            {
              if (a2 > 1)
              {
                if (a2 == 2)
                {
                  v2 = @"BallastStatus";
                  goto LABEL_1848;
                }

                if (a2 == 16)
                {
                  v2 = @"MinLevel";
                  goto LABEL_1848;
                }
              }

              else
              {
                if (!a2)
                {
                  v2 = @"PhysicalMinLevel";
                  goto LABEL_1848;
                }

                if (a2 == 1)
                {
                  v2 = @"PhysicalMaxLevel";
                  goto LABEL_1848;
                }
              }
            }

            else if (a2 <= 20)
            {
              if (a2 == 17)
              {
                v2 = @"MaxLevel";
                goto LABEL_1848;
              }

              if (a2 == 20)
              {
                v2 = @"IntrinsicBallastFactor";
                goto LABEL_1848;
              }
            }

            else
            {
              switch(a2)
              {
                case 0x15:
                  v2 = @"BallastFactorAdjustment";
                  goto LABEL_1848;
                case 0x20:
                  v2 = @"LampQuantity";
                  goto LABEL_1848;
                case 0x30:
                  v2 = @"LampType";
                  goto LABEL_1848;
              }
            }

            goto LABEL_1847;
          }

          if (a2 <= 65527)
          {
            if (a2 <= 50)
            {
              if (a2 == 49)
              {
                v2 = @"LampManufacturer";
              }

              else
              {
                v2 = @"LampRatedHours";
              }

              goto LABEL_1848;
            }

            switch(a2)
            {
              case '3':
                v2 = @"LampBurnHours";
                goto LABEL_1848;
              case '4':
                v2 = @"LampAlarmMode";
                goto LABEL_1848;
              case '5':
                v2 = @"LampBurnHoursTripPoint";
                goto LABEL_1848;
            }

            goto LABEL_1847;
          }
        }

        goto LABEL_827;
      }

      if (a1 != 514)
      {
        if (a1 != 516)
        {
          goto LABEL_197;
        }

        if (a2 <= 65528)
        {
          if (a2 <= 1)
          {
            if (!a2)
            {
              v2 = @"TemperatureDisplayMode";
              goto LABEL_1848;
            }

            if (a2 == 1)
            {
              v2 = @"KeypadLockout";
              goto LABEL_1848;
            }

            goto LABEL_1847;
          }

          if (a2 == 2)
          {
            v2 = @"ScheduleProgrammingVisibility";
            goto LABEL_1848;
          }

          if (a2 != 65528)
          {
            goto LABEL_1847;
          }

LABEL_851:
          v2 = @"GeneratedCommandList";
          goto LABEL_1848;
        }

        if (a2 <= 65531)
        {
          if (a2 != 65529)
          {
            if (a2 != 65531)
            {
              goto LABEL_1847;
            }

LABEL_1153:
            v2 = @"AttributeList";
            goto LABEL_1848;
          }

LABEL_692:
          v2 = @"AcceptedCommandList";
          goto LABEL_1848;
        }

LABEL_645:
        if (a2 != 65532)
        {
          if (a2 != 65533)
          {
            goto LABEL_1847;
          }

LABEL_647:
          v2 = @"ClusterRevision";
          goto LABEL_1848;
        }

LABEL_1154:
        v2 = @"FeatureMap";
        goto LABEL_1848;
      }

      if (a2 <= 7)
      {
        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              v2 = @"SpeedCurrent";
            }

            else
            {
              v2 = @"RockSupport";
            }
          }

          else if (a2 == 4)
          {
            v2 = @"SpeedMax";
          }

          else
          {
            v2 = @"SpeedSetting";
          }

          goto LABEL_1848;
        }

        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v2 = @"PercentSetting";
          }

          else
          {
            v2 = @"PercentCurrent";
          }

          goto LABEL_1848;
        }

        if (!a2)
        {
          v2 = @"FanMode";
          goto LABEL_1848;
        }

        if (a2 == 1)
        {
          v2 = @"FanModeSequence";
          goto LABEL_1848;
        }

        goto LABEL_1847;
      }

      if (a2 <= 65527)
      {
        if (a2 <= 9)
        {
          if (a2 == 8)
          {
            v2 = @"RockSetting";
          }

          else
          {
            v2 = @"WindSupport";
          }

          goto LABEL_1848;
        }

        if (a2 == 10)
        {
          v2 = @"WindSetting";
          goto LABEL_1848;
        }

        if (a2 == 11)
        {
          v2 = @"AirflowDirection";
          goto LABEL_1848;
        }

        goto LABEL_1847;
      }

      goto LABEL_461;
    }

    if (a1 > 260)
    {
      if (a1 > 511)
      {
        if (a1 == 512)
        {
          if (a2 <= 65527)
          {
            v2 = @"MaxPressure";
            switch(a2)
            {
              case 0:
                goto LABEL_1848;
              case 1:
                v2 = @"MaxSpeed";
                break;
              case 2:
                v2 = @"MaxFlow";
                break;
              case 3:
                v2 = @"MinConstPressure";
                break;
              case 4:
                v2 = @"MaxConstPressure";
                break;
              case 5:
                v2 = @"MinCompPressure";
                break;
              case 6:
                v2 = @"MaxCompPressure";
                break;
              case 7:
                v2 = @"MinConstSpeed";
                break;
              case 8:
                v2 = @"MaxConstSpeed";
                break;
              case 9:
                v2 = @"MinConstFlow";
                break;
              case 10:
                v2 = @"MaxConstFlow";
                break;
              case 11:
                v2 = @"MinConstTemp";
                break;
              case 12:
                v2 = @"MaxConstTemp";
                break;
              case 16:
                v2 = @"PumpStatus";
                break;
              case 17:
                v2 = @"EffectiveOperationMode";
                break;
              case 18:
                v2 = @"EffectiveControlMode";
                break;
              case 19:
                v2 = @"Capacity";
                break;
              case 20:
                v2 = @"Speed";
                break;
              case 21:
                v2 = @"LifetimeRunningHours";
                break;
              case 22:
                v2 = @"Power";
                break;
              case 23:
                v2 = @"LifetimeEnergyConsumed";
                break;
              case 32:
                v2 = @"OperationMode";
                break;
              case 33:
                v2 = @"ControlMode";
                break;
              default:
                goto LABEL_1847;
            }

            goto LABEL_1848;
          }
        }

        else if (a2 <= 65527)
        {
          v2 = @"LocalTemperature";
          switch(a2)
          {
            case 0:
              goto LABEL_1848;
            case 1:
              v2 = @"OutdoorTemperature";
              break;
            case 2:
              v2 = @"Occupancy";
              break;
            case 3:
              v2 = @"AbsMinHeatSetpointLimit";
              break;
            case 4:
              v2 = @"AbsMaxHeatSetpointLimit";
              break;
            case 5:
              v2 = @"AbsMinCoolSetpointLimit";
              break;
            case 6:
              v2 = @"AbsMaxCoolSetpointLimit";
              break;
            case 7:
              v2 = @"PICoolingDemand";
              break;
            case 8:
              v2 = @"PIHeatingDemand";
              break;
            case 9:
              v2 = @"HVACSystemTypeConfiguration";
              break;
            case 16:
              v2 = @"LocalTemperatureCalibration";
              break;
            case 17:
              v2 = @"OccupiedCoolingSetpoint";
              break;
            case 18:
              v2 = @"OccupiedHeatingSetpoint";
              break;
            case 19:
              v2 = @"UnoccupiedCoolingSetpoint";
              break;
            case 20:
              v2 = @"UnoccupiedHeatingSetpoint";
              break;
            case 21:
              v2 = @"MinHeatSetpointLimit";
              break;
            case 22:
              v2 = @"MaxHeatSetpointLimit";
              break;
            case 23:
              v2 = @"MinCoolSetpointLimit";
              break;
            case 24:
              v2 = @"MaxCoolSetpointLimit";
              break;
            case 25:
              v2 = @"MinSetpointDeadBand";
              break;
            case 26:
              v2 = @"RemoteSensing";
              break;
            case 27:
              v2 = @"ControlSequenceOfOperation";
              break;
            case 28:
              v2 = @"SystemMode";
              break;
            case 30:
              v2 = @"ThermostatRunningMode";
              break;
            case 32:
              v2 = @"StartOfWeek";
              break;
            case 33:
              v2 = @"NumberOfWeeklyTransitions";
              break;
            case 34:
              v2 = @"NumberOfDailyTransitions";
              break;
            case 35:
              v2 = @"TemperatureSetpointHold";
              break;
            case 36:
              v2 = @"TemperatureSetpointHoldDuration";
              break;
            case 37:
              v2 = @"ThermostatProgrammingOperationMode";
              break;
            case 41:
              v2 = @"ThermostatRunningState";
              break;
            case 48:
              v2 = @"SetpointChangeSource";
              break;
            case 49:
              v2 = @"SetpointChangeAmount";
              break;
            case 50:
              v2 = @"SetpointChangeSourceTimestamp";
              break;
            case 52:
              v2 = @"OccupiedSetback";
              break;
            case 53:
              v2 = @"OccupiedSetbackMin";
              break;
            case 54:
              v2 = @"OccupiedSetbackMax";
              break;
            case 55:
              v2 = @"UnoccupiedSetback";
              break;
            case 56:
              v2 = @"UnoccupiedSetbackMin";
              break;
            case 57:
              v2 = @"UnoccupiedSetbackMax";
              break;
            case 58:
              v2 = @"EmergencyHeatDelta";
              break;
            case 64:
              v2 = @"ACType";
              break;
            case 65:
              v2 = @"ACCapacity";
              break;
            case 66:
              v2 = @"ACRefrigerantType";
              break;
            case 67:
              v2 = @"ACCompressorType";
              break;
            case 68:
              v2 = @"ACErrorCode";
              break;
            case 69:
              v2 = @"ACLouverPosition";
              break;
            case 70:
              v2 = @"ACCoilTemperature";
              break;
            case 71:
              v2 = @"ACCapacityformat";
              break;
            case 72:
              v2 = @"PresetTypes";
              break;
            case 73:
              v2 = @"ScheduleTypes";
              break;
            case 74:
              v2 = @"NumberOfPresets";
              break;
            case 75:
              v2 = @"NumberOfSchedules";
              break;
            case 76:
              v2 = @"NumberOfScheduleTransitions";
              break;
            case 77:
              v2 = @"NumberOfScheduleTransitionPerDay";
              break;
            case 78:
              v2 = @"ActivePresetHandle";
              break;
            case 79:
              v2 = @"ActiveScheduleHandle";
              break;
            case 80:
              v2 = @"Presets";
              break;
            case 81:
              v2 = @"Schedules";
              break;
            case 82:
              v2 = @"SetpointHoldExpiryTimestamp";
              break;
            case 83:
              v2 = @"MaxThermostatSuggestions";
              break;
            case 84:
              v2 = @"ThermostatSuggestions";
              break;
            case 85:
              v2 = @"CurrentThermostatSuggestion";
              break;
            case 86:
              v2 = @"ThermostatSuggestionNotFollowingReason";
              break;
            default:
              goto LABEL_1847;
          }

          goto LABEL_1848;
        }

        goto LABEL_461;
      }

      if (a1 != 261)
      {
        if (a1 != 336)
        {
          goto LABEL_197;
        }

        if (a2 <= 4)
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v2 = @"SelectedAreas";
            }

            else if (a2 == 3)
            {
              v2 = @"CurrentArea";
            }

            else
            {
              v2 = @"EstimatedEndTime";
            }

            goto LABEL_1848;
          }

          if (!a2)
          {
            v2 = @"SupportedAreas";
            goto LABEL_1848;
          }

          if (a2 == 1)
          {
            v2 = @"SupportedMaps";
            goto LABEL_1848;
          }

          goto LABEL_1847;
        }

        if (a2 > 65530)
        {
LABEL_462:
          if (a2 == 65531)
          {
            goto LABEL_1153;
          }

          goto LABEL_645;
        }

        if (a2 == 5)
        {
          v2 = @"Progress";
          goto LABEL_1848;
        }

LABEL_608:
        if (a2 == 65528)
        {
          goto LABEL_851;
        }

        if (a2 != 65529)
        {
          goto LABEL_1847;
        }

        goto LABEL_692;
      }

      if (a2 <= 7)
      {
        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              v2 = @"LimitRange";
            }

            else
            {
              v2 = @"TranslationDirection";
            }
          }

          else if (a2 == 4)
          {
            v2 = @"Unit";
          }

          else
          {
            v2 = @"UnitRange";
          }

          goto LABEL_1848;
        }

        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v2 = @"Resolution";
          }

          else
          {
            v2 = @"StepValue";
          }

          goto LABEL_1848;
        }

        if (!a2)
        {
LABEL_1131:
          v2 = @"CurrentState";
          goto LABEL_1848;
        }

        if (a2 == 1)
        {
          v2 = @"TargetState";
          goto LABEL_1848;
        }

        goto LABEL_1847;
      }

      if (a2 > 65527)
      {
LABEL_461:
        if (a2 > 65530)
        {
          goto LABEL_462;
        }

        goto LABEL_608;
      }

      if (a2 <= 9)
      {
        if (a2 == 8)
        {
          v2 = @"RotationAxis";
        }

        else
        {
          v2 = @"Overflow";
        }

        goto LABEL_1848;
      }

      if (a2 == 10)
      {
        v2 = @"ModulationType";
        goto LABEL_1848;
      }

      if (a2 != 11)
      {
        goto LABEL_1847;
      }

LABEL_1118:
      v2 = @"LatchControlModes";
      goto LABEL_1848;
    }

    switch(a1)
    {
      case 0x101:
        if (a2 <= 127)
        {
          v2 = @"LockState";
          switch(a2)
          {
            case 0:
              goto LABEL_1848;
            case 1:
              v2 = @"LockType";
              break;
            case 2:
              v2 = @"ActuatorEnabled";
              break;
            case 3:
              v2 = @"DoorState";
              break;
            case 4:
              v2 = @"DoorOpenEvents";
              break;
            case 5:
              v2 = @"DoorClosedEvents";
              break;
            case 6:
              v2 = @"OpenPeriod";
              break;
            case 17:
              v2 = @"NumberOfTotalUsersSupported";
              break;
            case 18:
              v2 = @"NumberOfPINUsersSupported";
              break;
            case 19:
              v2 = @"NumberOfRFIDUsersSupported";
              break;
            case 20:
              v2 = @"NumberOfWeekDaySchedulesSupportedPerUser";
              break;
            case 21:
              v2 = @"NumberOfYearDaySchedulesSupportedPerUser";
              break;
            case 22:
              v2 = @"NumberOfHolidaySchedulesSupported";
              break;
            case 23:
              v2 = @"MaxPINCodeLength";
              break;
            case 24:
              v2 = @"MinPINCodeLength";
              break;
            case 25:
              v2 = @"MaxRFIDCodeLength";
              break;
            case 26:
              v2 = @"MinRFIDCodeLength";
              break;
            case 27:
              v2 = @"CredentialRulesSupport";
              break;
            case 28:
              v2 = @"NumberOfCredentialsSupportedPerUser";
              break;
            case 33:
              v2 = @"Language";
              break;
            case 34:
              v2 = @"LEDSettings";
              break;
            case 35:
              v2 = @"AutoRelockTime";
              break;
            case 36:
              v2 = @"SoundVolume";
              break;
            case 37:
              v2 = @"OperatingMode";
              break;
            case 38:
              v2 = @"SupportedOperatingModes";
              break;
            case 39:
              v2 = @"DefaultConfigurationRegister";
              break;
            case 40:
              v2 = @"EnableLocalProgramming";
              break;
            case 41:
              v2 = @"EnableOneTouchLocking";
              break;
            case 42:
              v2 = @"EnableInsideStatusLED";
              break;
            case 43:
              v2 = @"EnablePrivacyModeButton";
              break;
            case 44:
              v2 = @"LocalProgrammingFeatures";
              break;
            case 48:
              v2 = @"WrongCodeEntryLimit";
              break;
            case 49:
              v2 = @"UserCodeTemporaryDisableTime";
              break;
            case 50:
              v2 = @"SendPINOverTheAir";
              break;
            case 51:
              v2 = @"RequirePINforRemoteOperation";
              break;
            case 53:
              v2 = @"ExpiringUserTimeout";
              break;
            default:
              goto LABEL_1716;
          }

          goto LABEL_1848;
        }

        if (a2 <= 65530)
        {
          if (a2 <= 132)
          {
            if (a2 <= 129)
            {
              if (a2 == 128)
              {
                v2 = @"AliroReaderVerificationKey";
              }

              else
              {
                v2 = @"AliroReaderGroupIdentifier";
              }
            }

            else if (a2 == 130)
            {
              v2 = @"AliroReaderGroupSubIdentifier";
            }

            else if (a2 == 131)
            {
              v2 = @"AliroExpeditedTransactionSupportedProtocolVersions";
            }

            else
            {
              v2 = @"AliroGroupResolvingKey";
            }

            goto LABEL_1848;
          }

          if (a2 <= 135)
          {
            if (a2 == 133)
            {
              v2 = @"AliroSupportedBLEUWBProtocolVersions";
            }

            else if (a2 == 134)
            {
              v2 = @"AliroBLEAdvertisingVersion";
            }

            else
            {
              v2 = @"NumberOfAliroCredentialIssuerKeysSupported";
            }

            goto LABEL_1848;
          }

          switch(a2)
          {
            case 0x88:
              v2 = @"NumberOfAliroEndpointKeysSupported";
              goto LABEL_1848;
            case 0xFFF8:
              goto LABEL_851;
            case 0xFFF9:
              goto LABEL_692;
          }
        }

        else if (a2 > 323551234)
        {
          if (a2 <= 323551237)
          {
            if (a2 == 323551235)
            {
              v2 = @"AppleAliroExpeditedTransactionSupportedProtocolVersions";
            }

            else if (a2 == 323551236)
            {
              v2 = @"AppleAliroGroupResolvingKey";
            }

            else
            {
              v2 = @"AppleAliroSupportedBLEUWBProtocolVersions";
            }

            goto LABEL_1848;
          }

          switch(a2)
          {
            case 0x13490006:
              v2 = @"AppleAliroBLEAdvertisingVersion";
              goto LABEL_1848;
            case 0x13490007:
              v2 = @"AppleNumberOfAliroCredentialIssuerKeysSupported";
              goto LABEL_1848;
            case 0x13490008:
              v2 = @"AppleNumberOfAliroEndpointKeysSupported";
              goto LABEL_1848;
          }
        }

        else
        {
          if (a2 > 323551231)
          {
            if (a2 == 323551232)
            {
              v2 = @"AppleAliroReaderVerificationKey";
            }

            else if (a2 == 323551233)
            {
              v2 = @"AppleAliroReaderGroupIdentifier";
            }

            else
            {
              v2 = @"AppleAliroReaderGroupSubIdentifier";
            }

            goto LABEL_1848;
          }

          switch(a2)
          {
            case 0xFFFB:
              goto LABEL_1153;
            case 0xFFFC:
              goto LABEL_1154;
            case 0xFFFD:
              goto LABEL_647;
          }
        }

LABEL_1716:
        v3 = MEMORY[0x277CCACA8];
LABEL_1028:
        [v3 stringWithFormat:@"<Unknown attributeID %u>", a2];
        goto LABEL_1115;
      case 0x102:
        if (a2 <= 65527)
        {
          v2 = @"Type";
          switch(a2)
          {
            case 0:
              goto LABEL_1848;
            case 1:
              v2 = @"PhysicalClosedLimitLift";
              break;
            case 2:
              v2 = @"PhysicalClosedLimitTilt";
              break;
            case 3:
              v2 = @"CurrentPositionLift";
              break;
            case 4:
              v2 = @"CurrentPositionTilt";
              break;
            case 5:
              v2 = @"NumberOfActuationsLift";
              break;
            case 6:
              v2 = @"NumberOfActuationsTilt";
              break;
            case 7:
              v2 = @"ConfigStatus";
              break;
            case 8:
              v2 = @"CurrentPositionLiftPercentage";
              break;
            case 9:
              v2 = @"CurrentPositionTiltPercentage";
              break;
            case 10:
              v2 = @"OperationalStatus";
              break;
            case 11:
              v2 = @"TargetPositionLiftPercent100ths";
              break;
            case 12:
              v2 = @"TargetPositionTiltPercent100ths";
              break;
            case 13:
              v2 = @"EndProductType";
              break;
            case 14:
              v2 = @"CurrentPositionLiftPercent100ths";
              break;
            case 15:
              v2 = @"CurrentPositionTiltPercent100ths";
              break;
            case 16:
              v2 = @"InstalledOpenLimitLift";
              break;
            case 17:
              v2 = @"InstalledClosedLimitLift";
              break;
            case 18:
              v2 = @"InstalledOpenLimitTilt";
              break;
            case 19:
              v2 = @"InstalledClosedLimitTilt";
              break;
            case 23:
              v2 = @"Mode";
              break;
            case 26:
              v2 = @"SafetyStatus";
              break;
            default:
              goto LABEL_1027;
          }

          goto LABEL_1848;
        }

LABEL_601:
        if (a2 <= 65530)
        {
LABEL_690:
          if (a2 == 65528)
          {
            goto LABEL_851;
          }

          if (a2 == 65529)
          {
            goto LABEL_692;
          }

          goto LABEL_1027;
        }

        break;
      case 0x104:
        if (a2 <= 4)
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v2 = @"CurrentErrorList";
            }

            else if (a2 == 3)
            {
              v2 = @"OverallCurrentState";
            }

            else
            {
              v2 = @"OverallTargetState";
            }

            goto LABEL_1848;
          }

          if (!a2)
          {
            v2 = @"CountdownTime";
            goto LABEL_1848;
          }

          if (a2 == 1)
          {
            v2 = @"MainState";
            goto LABEL_1848;
          }

LABEL_1027:
          v3 = MEMORY[0x277CCACA8];
          goto LABEL_1028;
        }

        if (a2 <= 65530)
        {
          if (a2 == 5)
          {
            goto LABEL_1118;
          }

          goto LABEL_690;
        }

        break;
      default:
        goto LABEL_197;
    }

    if (a2 == 65531)
    {
      goto LABEL_1153;
    }

LABEL_603:
    if (a2 == 65532)
    {
      goto LABEL_1154;
    }

    if (a2 == 65533)
    {
      goto LABEL_647;
    }

    goto LABEL_1027;
  }

  switch(a1)
  {
    case 3:
      if (a2 > 65528)
      {
        goto LABEL_360;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_866;
        }

        v2 = @"IdentifyType";
      }

      else
      {
        v2 = @"IdentifyTime";
      }

      break;
    case 4:
      if (a2 > 65530)
      {
        goto LABEL_819;
      }

      if (a2)
      {
        goto LABEL_816;
      }

      v2 = @"NameSupport";
      break;
    case 5:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 38:
    case 39:
    case 58:
    case 61:
    case 66:
    case 67:
    case 68:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 88:
    case 90:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 146:
    case 147:
    case 150:
    case 154:
      goto LABEL_197;
    case 6:
      if (a2 > 65527)
      {
        goto LABEL_337;
      }

      if (a2 <= 0x4000)
      {
        if (a2)
        {
          if (a2 != 0x4000)
          {
            goto LABEL_1114;
          }

          v2 = @"GlobalSceneControl";
        }

        else
        {
          v2 = @"OnOff";
        }
      }

      else
      {
        switch(a2)
        {
          case 0x4001:
            v2 = @"OnTime";
            break;
          case 0x4002:
            v2 = @"OffWaitTime";
            break;
          case 0x4003:
            v2 = @"StartUpOnOff";
            break;
          default:
            goto LABEL_1114;
        }
      }

      break;
    case 8:
      if (a2 < 0x4000)
      {
        v2 = @"CurrentLevel";
        switch(a2)
        {
          case 0:
            goto LABEL_1848;
          case 1:
            v2 = @"RemainingTime";
            break;
          case 2:
            v2 = @"MinLevel";
            break;
          case 3:
            v2 = @"MaxLevel";
            break;
          case 4:
            v2 = @"CurrentFrequency";
            break;
          case 5:
            v2 = @"MinFrequency";
            break;
          case 6:
            v2 = @"MaxFrequency";
            break;
          case 15:
            v2 = @"Options";
            break;
          case 16:
            v2 = @"OnOffTransitionTime";
            break;
          case 17:
            v2 = @"OnLevel";
            break;
          case 18:
            v2 = @"OnTransitionTime";
            break;
          case 19:
            v2 = @"OffTransitionTime";
            break;
          case 20:
            v2 = @"DefaultMoveRate";
            break;
          default:
            goto LABEL_1114;
        }

        break;
      }

      if (a2 > 65530)
      {
        goto LABEL_819;
      }

      if (a2 == 0x4000)
      {
        v2 = @"StartUpCurrentLevel";
        break;
      }

      goto LABEL_816;
    case 28:
    case 41:
      if ((a2 - 65528) >= 6 || ((0x3Bu >> (a2 + 8)) & 1) == 0)
      {
        goto LABEL_1114;
      }

      v2 = off_278A71708[(a2 - 65528)];
      break;
    case 29:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_819;
        }

        if (a2 == 5)
        {
          v2 = @"EndpointUniqueID";
          break;
        }

        goto LABEL_816;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1114;
          }

          v2 = @"ServerList";
        }

        else
        {
          v2 = @"DeviceTypeList";
        }
      }

      else if (a2 == 2)
      {
        v2 = @"ClientList";
      }

      else if (a2 == 3)
      {
        v2 = @"PartsList";
      }

      else
      {
        v2 = @"TagList";
      }

      break;
    case 30:
      if (a2 > 65530)
      {
        goto LABEL_819;
      }

      if (a2)
      {
        goto LABEL_816;
      }

      v2 = @"Binding";
      break;
    case 31:
      if (a2 <= 5)
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            v2 = @"TargetsPerAccessControlEntry";
          }

          else if (a2 == 4)
          {
            v2 = @"AccessControlEntriesPerFabric";
          }

          else
          {
            v2 = @"CommissioningARL";
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"Extension";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1114;
            }

            v2 = @"SubjectsPerAccessControlEntry";
          }
        }

        else
        {
          v2 = @"ACL";
        }

        break;
      }

      if (a2 > 65530)
      {
        goto LABEL_819;
      }

      if (a2 == 6)
      {
        v2 = @"ARL";
        break;
      }

      goto LABEL_816;
    case 37:
      if (a2 > 65528)
      {
        goto LABEL_360;
      }

      if (a2 > 1)
      {
        if (a2 != 2)
        {
          goto LABEL_866;
        }

        v2 = @"SetupURL";
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1114;
        }

        v2 = @"EndpointLists";
      }

      else
      {
        v2 = @"ActionList";
      }

      break;
    case 40:
      if (a2 > 65527)
      {
        goto LABEL_337;
      }

      v2 = @"DataModelRevision";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"VendorName";
          break;
        case 2:
          v2 = @"VendorID";
          break;
        case 3:
          v2 = @"ProductName";
          break;
        case 4:
          v2 = @"ProductID";
          break;
        case 5:
          v2 = @"NodeLabel";
          break;
        case 6:
          v2 = @"Location";
          break;
        case 7:
          v2 = @"HardwareVersion";
          break;
        case 8:
          v2 = @"HardwareVersionString";
          break;
        case 9:
          v2 = @"SoftwareVersion";
          break;
        case 10:
          v2 = @"SoftwareVersionString";
          break;
        case 11:
          v2 = @"ManufacturingDate";
          break;
        case 12:
          v2 = @"PartNumber";
          break;
        case 13:
          v2 = @"ProductURL";
          break;
        case 14:
          v2 = @"ProductLabel";
          break;
        case 15:
          v2 = @"SerialNumber";
          break;
        case 16:
          v2 = @"LocalConfigDisabled";
          break;
        case 17:
          v2 = @"Reachable";
          break;
        case 18:
          v2 = @"UniqueID";
          break;
        case 19:
          v2 = @"CapabilityMinima";
          break;
        case 20:
          v2 = @"ProductAppearance";
          break;
        case 21:
          v2 = @"SpecificationVersion";
          break;
        case 22:
          v2 = @"MaxPathsPerInvoke";
          break;
        case 24:
          v2 = @"ConfigurationVersion";
          break;
        default:
          goto LABEL_1114;
      }

      break;
    case 42:
      if (a2 > 65527)
      {
        goto LABEL_337;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"UpdateState";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_1114;
          }

          v2 = @"UpdateStateProgress";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1114;
        }

        v2 = @"UpdatePossible";
      }

      else
      {
        v2 = @"DefaultOTAProviders";
      }

      break;
    case 43:
      if (a2 > 65528)
      {
        goto LABEL_360;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_866;
        }

        v2 = @"SupportedLocales";
      }

      else
      {
        v2 = @"ActiveLocale";
      }

      break;
    case 44:
      if (a2 > 65528)
      {
        goto LABEL_360;
      }

      if (a2 > 1)
      {
        if (a2 != 2)
        {
          goto LABEL_866;
        }

        v2 = @"SupportedCalendarTypes";
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1114;
        }

        v2 = @"ActiveCalendarType";
      }

      else
      {
        v2 = @"HourFormat";
      }

      break;
    case 45:
      if (a2 > 65528)
      {
LABEL_360:
        if (a2 > 65531)
        {
          goto LABEL_820;
        }

        if (a2 == 65529)
        {
          goto LABEL_818;
        }

        if (a2 == 65531)
        {
          goto LABEL_823;
        }

        goto LABEL_1114;
      }

      if (!a2)
      {
        v2 = @"TemperatureUnit";
        break;
      }

      if (a2 == 1)
      {
        v2 = @"SupportedTemperatureUnits";
        break;
      }

LABEL_866:
      if (a2 != 65528)
      {
        goto LABEL_1114;
      }

      goto LABEL_867;
    case 46:
      if (a2 > 65530)
      {
        goto LABEL_819;
      }

      if (a2)
      {
        goto LABEL_816;
      }

      v2 = @"Sources";
      break;
    case 47:
      if (a2 > 65527)
      {
LABEL_337:
        if (a2 > 65530)
        {
LABEL_819:
          if (a2 == 65531)
          {
LABEL_823:
            v2 = @"AttributeList";
          }

          else
          {
LABEL_820:
            if (a2 == 65532)
            {
              v2 = @"FeatureMap";
            }

            else
            {
              if (a2 != 65533)
              {
                goto LABEL_1114;
              }

              v2 = @"ClusterRevision";
            }
          }
        }

        else
        {
LABEL_816:
          if (a2 == 65528)
          {
LABEL_867:
            v2 = @"GeneratedCommandList";
          }

          else
          {
            if (a2 != 65529)
            {
              goto LABEL_1114;
            }

LABEL_818:
            v2 = @"AcceptedCommandList";
          }
        }
      }

      else
      {
        v2 = @"Status";
        switch(a2)
        {
          case 0:
            goto LABEL_1848;
          case 1:
            v2 = @"Order";
            break;
          case 2:
            goto LABEL_1145;
          case 3:
            v2 = @"WiredAssessedInputVoltage";
            break;
          case 4:
            v2 = @"WiredAssessedInputFrequency";
            break;
          case 5:
            v2 = @"WiredCurrentType";
            break;
          case 6:
            v2 = @"WiredAssessedCurrent";
            break;
          case 7:
            v2 = @"WiredNominalVoltage";
            break;
          case 8:
            v2 = @"WiredMaximumCurrent";
            break;
          case 9:
            v2 = @"WiredPresent";
            break;
          case 10:
            v2 = @"ActiveWiredFaults";
            break;
          case 11:
            v2 = @"BatVoltage";
            break;
          case 12:
            v2 = @"BatPercentRemaining";
            break;
          case 13:
            v2 = @"BatTimeRemaining";
            break;
          case 14:
            v2 = @"BatChargeLevel";
            break;
          case 15:
            v2 = @"BatReplacementNeeded";
            break;
          case 16:
            v2 = @"BatReplaceability";
            break;
          case 17:
            v2 = @"BatPresent";
            break;
          case 18:
            v2 = @"ActiveBatFaults";
            break;
          case 19:
            v2 = @"BatReplacementDescription";
            break;
          case 20:
            v2 = @"BatCommonDesignation";
            break;
          case 21:
            v2 = @"BatANSIDesignation";
            break;
          case 22:
            v2 = @"BatIECDesignation";
            break;
          case 23:
            v2 = @"BatApprovedChemistry";
            break;
          case 24:
            v2 = @"BatCapacity";
            break;
          case 25:
            v2 = @"BatQuantity";
            break;
          case 26:
            v2 = @"BatChargeState";
            break;
          case 27:
            v2 = @"BatTimeToFullCharge";
            break;
          case 28:
            v2 = @"BatFunctionalWhileCharging";
            break;
          case 29:
            v2 = @"BatChargingCurrent";
            break;
          case 30:
            v2 = @"ActiveBatChargeFaults";
            break;
          case 31:
            v2 = @"EndpointList";
            break;
          default:
            goto LABEL_1114;
        }
      }

      break;
    case 48:
      if (a2 > 65527)
      {
        if (a2 <= 65530)
        {
          if (a2 == 65528)
          {
            goto LABEL_1067;
          }

          if (a2 == 65529)
          {
LABEL_1113:
            v2 = @"AcceptedCommandList";
            break;
          }
        }

        else
        {
          switch(a2)
          {
            case 0xFFFB:
              goto LABEL_629;
            case 0xFFFC:
LABEL_842:
              v2 = @"FeatureMap";
              goto LABEL_1848;
            case 0xFFFD:
              goto LABEL_632;
          }
        }

LABEL_1114:
        [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown attributeID %u>", a2];
        goto LABEL_1115;
      }

      v2 = @"Breadcrumb";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"BasicCommissioningInfo";
          break;
        case 2:
          v2 = @"RegulatoryConfig";
          break;
        case 3:
          v2 = @"LocationCapability";
          break;
        case 4:
          v2 = @"SupportsConcurrentConnection";
          break;
        case 5:
          v2 = @"TCAcceptedVersion";
          break;
        case 6:
          v2 = @"TCMinRequiredVersion";
          break;
        case 7:
          v2 = @"TCAcknowledgements";
          break;
        case 8:
          v2 = @"TCAcknowledgementsRequired";
          break;
        case 9:
          v2 = @"TCUpdateDeadline";
          break;
        case 10:
          v2 = @"RecoveryIdentifier";
          break;
        case 11:
          v2 = @"NetworkRecoveryReason";
          break;
        case 12:
          v2 = @"IsCommissioningWithoutPower";
          break;
        default:
          goto LABEL_1114;
      }

      break;
    case 49:
      if (a2 > 7)
      {
        if (a2 > 65528)
        {
          goto LABEL_626;
        }

        if (a2 > 9)
        {
          if (a2 != 10)
          {
            goto LABEL_1066;
          }

          v2 = @"ThreadVersion";
        }

        else if (a2 == 8)
        {
          v2 = @"SupportedWiFiBands";
        }

        else
        {
          v2 = @"SupportedThreadFeatures";
        }
      }

      else if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            v2 = @"LastNetworkID";
          }

          else
          {
            v2 = @"LastConnectErrorValue";
          }
        }

        else if (a2 == 4)
        {
          v2 = @"InterfaceEnabled";
        }

        else
        {
          v2 = @"LastNetworkingStatus";
        }
      }

      else if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"ScanMaxTimeSeconds";
        }

        else
        {
          v2 = @"ConnectMaxTimeSeconds";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"Networks";
      }

      else
      {
        v2 = @"MaxNetworks";
      }

      break;
    case 50:
      if ((a2 - 65528) >= 6 || ((0x3Bu >> (a2 + 8)) & 1) == 0)
      {
        goto LABEL_1847;
      }

      v2 = off_278A71708[(a2 - 65528)];
      break;
    case 51:
      if (a2 > 6)
      {
        if (a2 > 65528)
        {
          goto LABEL_626;
        }

        if (a2 == 7)
        {
          v2 = @"ActiveNetworkFaults";
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_1066;
          }

          v2 = @"TestEventTriggersEnabled";
        }
      }

      else if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"RebootCount";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1847;
            }

            v2 = @"UpTime";
          }
        }

        else
        {
          v2 = @"NetworkInterfaces";
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v2 = @"ActiveHardwareFaults";
        }

        else
        {
          v2 = @"ActiveRadioFaults";
        }
      }

      else if (a2 == 3)
      {
        v2 = @"TotalOperationalHours";
      }

      else
      {
        v2 = @"BootReason";
      }

      break;
    case 52:
      if (a2 > 65527)
      {
        goto LABEL_397;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"CurrentHeapUsed";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_1847;
          }

          v2 = @"CurrentHeapHighWatermark";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"CurrentHeapFree";
      }

      else
      {
        v2 = @"ThreadMetrics";
      }

      break;
    case 53:
      if (a2 > 65527)
      {
        goto LABEL_397;
      }

      v2 = @"Channel";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"RoutingRole";
          break;
        case 2:
          v2 = @"NetworkName";
          break;
        case 3:
          v2 = @"PanId";
          break;
        case 4:
          v2 = @"ExtendedPanId";
          break;
        case 5:
          v2 = @"MeshLocalPrefix";
          break;
        case 6:
          goto LABEL_1044;
        case 7:
          v2 = @"NeighborTable";
          break;
        case 8:
          v2 = @"RouteTable";
          break;
        case 9:
          v2 = @"PartitionId";
          break;
        case 10:
          v2 = @"Weighting";
          break;
        case 11:
          v2 = @"DataVersion";
          break;
        case 12:
          v2 = @"StableDataVersion";
          break;
        case 13:
          v2 = @"LeaderRouterId";
          break;
        case 14:
          v2 = @"DetachedRoleCount";
          break;
        case 15:
          v2 = @"ChildRoleCount";
          break;
        case 16:
          v2 = @"RouterRoleCount";
          break;
        case 17:
          v2 = @"LeaderRoleCount";
          break;
        case 18:
          v2 = @"AttachAttemptCount";
          break;
        case 19:
          v2 = @"PartitionIdChangeCount";
          break;
        case 20:
          v2 = @"BetterPartitionAttachAttemptCount";
          break;
        case 21:
          v2 = @"ParentChangeCount";
          break;
        case 22:
          v2 = @"TxTotalCount";
          break;
        case 23:
          v2 = @"TxUnicastCount";
          break;
        case 24:
          v2 = @"TxBroadcastCount";
          break;
        case 25:
          v2 = @"TxAckRequestedCount";
          break;
        case 26:
          v2 = @"TxAckedCount";
          break;
        case 27:
          v2 = @"TxNoAckRequestedCount";
          break;
        case 28:
          v2 = @"TxDataCount";
          break;
        case 29:
          v2 = @"TxDataPollCount";
          break;
        case 30:
          v2 = @"TxBeaconCount";
          break;
        case 31:
          v2 = @"TxBeaconRequestCount";
          break;
        case 32:
          v2 = @"TxOtherCount";
          break;
        case 33:
          v2 = @"TxRetryCount";
          break;
        case 34:
          v2 = @"TxDirectMaxRetryExpiryCount";
          break;
        case 35:
          v2 = @"TxIndirectMaxRetryExpiryCount";
          break;
        case 36:
          v2 = @"TxErrCcaCount";
          break;
        case 37:
          v2 = @"TxErrAbortCount";
          break;
        case 38:
          v2 = @"TxErrBusyChannelCount";
          break;
        case 39:
          v2 = @"RxTotalCount";
          break;
        case 40:
          v2 = @"RxUnicastCount";
          break;
        case 41:
          v2 = @"RxBroadcastCount";
          break;
        case 42:
          v2 = @"RxDataCount";
          break;
        case 43:
          v2 = @"RxDataPollCount";
          break;
        case 44:
          v2 = @"RxBeaconCount";
          break;
        case 45:
          v2 = @"RxBeaconRequestCount";
          break;
        case 46:
          v2 = @"RxOtherCount";
          break;
        case 47:
          v2 = @"RxAddressFilteredCount";
          break;
        case 48:
          v2 = @"RxDestAddrFilteredCount";
          break;
        case 49:
          v2 = @"RxDuplicatedCount";
          break;
        case 50:
          v2 = @"RxErrNoFrameCount";
          break;
        case 51:
          v2 = @"RxErrUnknownNeighborCount";
          break;
        case 52:
          v2 = @"RxErrInvalidSrcAddrCount";
          break;
        case 53:
          v2 = @"RxErrSecCount";
          break;
        case 54:
          v2 = @"RxErrFcsCount";
          break;
        case 55:
          v2 = @"RxErrOtherCount";
          break;
        case 56:
          v2 = @"ActiveTimestamp";
          break;
        case 57:
          v2 = @"PendingTimestamp";
          break;
        case 58:
          v2 = @"Delay";
          break;
        case 59:
          v2 = @"SecurityPolicy";
          break;
        case 60:
          v2 = @"ChannelPage0Mask";
          break;
        case 61:
          v2 = @"OperationalDatasetComponents";
          break;
        case 62:
          v2 = @"ActiveNetworkFaultsList";
          break;
        case 63:
          v2 = @"ExtAddress";
          break;
        case 64:
          v2 = @"Rloc16";
          break;
        default:
          goto LABEL_1847;
      }

      break;
    case 54:
      if (a2 > 65527)
      {
        goto LABEL_397;
      }

      v2 = @"BSSID";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"SecurityType";
          break;
        case 2:
          v2 = @"WiFiVersion";
          break;
        case 3:
          v2 = @"ChannelNumber";
          break;
        case 4:
          v2 = @"RSSI";
          break;
        case 5:
          v2 = @"BeaconLostCount";
          break;
        case 6:
          v2 = @"BeaconRxCount";
          break;
        case 7:
          v2 = @"PacketMulticastRxCount";
          break;
        case 8:
          v2 = @"PacketMulticastTxCount";
          break;
        case 9:
          v2 = @"PacketUnicastRxCount";
          break;
        case 10:
          v2 = @"PacketUnicastTxCount";
          break;
        case 11:
          v2 = @"CurrentMaxRate";
          break;
        case 12:
          goto LABEL_1044;
        default:
          goto LABEL_1847;
      }

      break;
    case 55:
      if (a2 > 6)
      {
        if (a2 > 65528)
        {
          goto LABEL_626;
        }

        if (a2 == 7)
        {
          v2 = @"CarrierDetect";
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_1066;
          }

          v2 = @"TimeSinceReset";
        }
      }

      else if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"FullDuplex";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1847;
            }

            v2 = @"PacketRxCount";
          }
        }

        else
        {
          v2 = @"PHYRate";
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v2 = @"CollisionCount";
        }

        else
        {
LABEL_1044:
          v2 = @"OverrunCount";
        }
      }

      else if (a2 == 3)
      {
        v2 = @"PacketTxCount";
      }

      else
      {
        v2 = @"TxErrCount";
      }

      break;
    case 56:
      if (a2 > 65527)
      {
        goto LABEL_397;
      }

      v2 = @"UTCTime";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"Granularity";
          break;
        case 2:
          v2 = @"TimeSource";
          break;
        case 3:
          v2 = @"TrustedTimeSource";
          break;
        case 4:
          v2 = @"DefaultNTP";
          break;
        case 5:
          v2 = @"TimeZone";
          break;
        case 6:
          v2 = @"DSTOffset";
          break;
        case 7:
          v2 = @"LocalTime";
          break;
        case 8:
          v2 = @"TimeZoneDatabase";
          break;
        case 9:
          v2 = @"NTPServerAvailable";
          break;
        case 10:
          v2 = @"TimeZoneListMaxSize";
          break;
        case 11:
          v2 = @"DSTOffsetListMaxSize";
          break;
        case 12:
          v2 = @"SupportsDNSResolve";
          break;
        default:
          goto LABEL_1847;
      }

      break;
    case 57:
      if (a2 > 65527)
      {
        goto LABEL_397;
      }

      v2 = @"VendorName";
      switch(a2)
      {
        case 1:
          goto LABEL_1848;
        case 2:
          v2 = @"VendorID";
          break;
        case 3:
          v2 = @"ProductName";
          break;
        case 4:
          v2 = @"ProductID";
          break;
        case 5:
          v2 = @"NodeLabel";
          break;
        case 7:
          v2 = @"HardwareVersion";
          break;
        case 8:
          v2 = @"HardwareVersionString";
          break;
        case 9:
          v2 = @"SoftwareVersion";
          break;
        case 10:
          v2 = @"SoftwareVersionString";
          break;
        case 11:
          v2 = @"ManufacturingDate";
          break;
        case 12:
          v2 = @"PartNumber";
          break;
        case 13:
          v2 = @"ProductURL";
          break;
        case 14:
          v2 = @"ProductLabel";
          break;
        case 15:
          v2 = @"SerialNumber";
          break;
        case 17:
          v2 = @"Reachable";
          break;
        case 18:
          v2 = @"UniqueID";
          break;
        case 20:
          v2 = @"ProductAppearance";
          break;
        case 24:
          v2 = @"ConfigurationVersion";
          break;
        default:
          goto LABEL_1847;
      }

      break;
    case 59:
      if (a2 > 65528)
      {
        goto LABEL_626;
      }

      if (a2 > 1)
      {
        if (a2 != 2)
        {
          goto LABEL_1066;
        }

        v2 = @"MultiPressMax";
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"CurrentPosition";
      }

      else
      {
        v2 = @"NumberOfPositions";
      }

      break;
    case 60:
      if (a2 > 65528)
      {
        goto LABEL_626;
      }

      if (a2 > 1)
      {
        if (a2 != 2)
        {
          goto LABEL_1066;
        }

        v2 = @"AdminVendorId";
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"AdminFabricIndex";
      }

      else
      {
        v2 = @"WindowStatus";
      }

      break;
    case 62:
      if (a2 <= 4)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_1847;
            }

            v2 = @"Fabrics";
          }

          else
          {
            v2 = @"NOCs";
          }
        }

        else if (a2 == 2)
        {
          v2 = @"SupportedFabrics";
        }

        else if (a2 == 3)
        {
          v2 = @"CommissionedFabrics";
        }

        else
        {
          v2 = @"TrustedRootCertificates";
        }

        break;
      }

      if (a2 > 65530)
      {
        goto LABEL_398;
      }

      if (a2 == 5)
      {
        v2 = @"CurrentFabricIndex";
        break;
      }

      goto LABEL_424;
    case 63:
      if (a2 > 65527)
      {
LABEL_397:
        if (a2 <= 65530)
        {
          goto LABEL_424;
        }

        goto LABEL_398;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"MaxGroupsPerFabric";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_1847;
          }

          v2 = @"MaxGroupKeysPerFabric";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"GroupTable";
      }

      else
      {
        v2 = @"GroupKeyMap";
      }

      break;
    case 64:
    case 65:
      if (a2 > 65530)
      {
        goto LABEL_398;
      }

      if (a2)
      {
        goto LABEL_424;
      }

      v2 = @"LabelList";
      break;
    case 69:
      if (a2 > 65530)
      {
        goto LABEL_398;
      }

      if (a2)
      {
        goto LABEL_424;
      }

      v2 = @"StateValue";
      break;
    case 70:
      if (a2 <= 6)
      {
        if (a2 <= 2)
        {
          if (a2)
          {
            if (a2 == 1)
            {
              v2 = @"ActiveModeDuration";
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_1847;
              }

              v2 = @"ActiveModeThreshold";
            }
          }

          else
          {
            v2 = @"IdleModeDuration";
          }
        }

        else if (a2 > 4)
        {
          if (a2 == 5)
          {
            v2 = @"ClientsSupportedPerFabric";
          }

          else
          {
            v2 = @"UserActiveModeTriggerHint";
          }
        }

        else if (a2 == 3)
        {
          v2 = @"RegisteredClients";
        }

        else
        {
          v2 = @"ICDCounter";
        }

        break;
      }

      if (a2 <= 65528)
      {
        if (a2 > 8)
        {
          if (a2 != 9)
          {
            goto LABEL_1066;
          }

          v2 = @"MaximumCheckInBackOff";
        }

        else if (a2 == 7)
        {
          v2 = @"UserActiveModeTriggerInstruction";
        }

        else
        {
          v2 = @"OperatingMode";
        }

        break;
      }

LABEL_626:
      if (a2 > 65531)
      {
        goto LABEL_630;
      }

      if (a2 == 65529)
      {
        goto LABEL_1113;
      }

      if (a2 != 65531)
      {
        goto LABEL_1847;
      }

      goto LABEL_629;
    case 71:
      if (a2 > 65528)
      {
        goto LABEL_626;
      }

      if (a2 > 1)
      {
        if (a2 != 2)
        {
          goto LABEL_1066;
        }

        v2 = @"TimerState";
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"TimeRemaining";
      }

      else
      {
        v2 = @"SetTime";
      }

      break;
    case 72:
      if (a2 > 4)
      {
        if (a2 <= 65530)
        {
          if (a2 == 5)
          {
            goto LABEL_239;
          }

LABEL_424:
          if (a2 == 65528)
          {
            goto LABEL_1067;
          }

          if (a2 == 65529)
          {
            goto LABEL_1113;
          }

          goto LABEL_1847;
        }

LABEL_398:
        if (a2 == 65531)
        {
LABEL_629:
          v2 = @"AttributeList";
          break;
        }

LABEL_630:
        if (a2 == 65532)
        {
          goto LABEL_842;
        }

        if (a2 != 65533)
        {
          goto LABEL_1847;
        }

LABEL_632:
        v2 = @"ClusterRevision";
        break;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
          goto LABEL_862;
        }

        if (a2 == 3)
        {
          goto LABEL_856;
        }

        goto LABEL_747;
      }

      if (!a2)
      {
        goto LABEL_1008;
      }

      if (a2 != 1)
      {
        goto LABEL_1847;
      }

      goto LABEL_1007;
    case 73:
      if (a2 > 65528)
      {
        goto LABEL_626;
      }

      if (!a2)
      {
        goto LABEL_255;
      }

      if (a2 == 1)
      {
        goto LABEL_739;
      }

      goto LABEL_1066;
    case 74:
      if (a2 > 65528)
      {
        goto LABEL_626;
      }

      if (!a2)
      {
        v2 = @"SupportedDrynessLevels";
        break;
      }

      if (a2 == 1)
      {
        v2 = @"SelectedDrynessLevel";
        break;
      }

LABEL_1066:
      if (a2 != 65528)
      {
        goto LABEL_1847;
      }

LABEL_1067:
      v2 = @"GeneratedCommandList";
      break;
    case 80:
      if (a2 <= 4)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_1847;
            }

            v2 = @"StandardNamespace";
          }

          else
          {
LABEL_1145:
            v2 = @"Description";
          }
        }

        else if (a2 == 2)
        {
          v2 = @"SupportedModes";
        }

        else if (a2 == 3)
        {
LABEL_739:
          v2 = @"CurrentMode";
        }

        else
        {
          v2 = @"StartUpMode";
        }

        break;
      }

      if (a2 > 65530)
      {
        switch(a2)
        {
          case 0xFFFB:
            goto LABEL_848;
          case 0xFFFC:
            goto LABEL_847;
          case 0xFFFD:
            goto LABEL_446;
        }
      }

      else
      {
        switch(a2)
        {
          case 5:
            v2 = @"OnMode";
            goto LABEL_1848;
          case 0xFFF8:
            goto LABEL_450;
          case 0xFFF9:
            goto LABEL_449;
        }
      }

      goto LABEL_1847;
    case 81:
    case 82:
    case 84:
    case 85:
    case 89:
    case 94:
      if (a2 > 65528)
      {
        goto LABEL_4;
      }

      if (!a2)
      {
        goto LABEL_255;
      }

      if (a2 != 1)
      {
        goto LABEL_101;
      }

      goto LABEL_739;
    case 83:
      if (a2 > 65527)
      {
        goto LABEL_442;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"NumberOfRinses";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_1847;
          }

          v2 = @"SupportedRinses";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"SpinSpeedCurrent";
      }

      else
      {
        v2 = @"SpinSpeeds";
      }

      break;
    case 86:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_443;
        }

        if (a2 == 5)
        {
          v2 = @"SupportedTemperatureLevels";
          break;
        }

        goto LABEL_447;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

          v2 = @"MinTemperature";
        }

        else
        {
          v2 = @"TemperatureSetpoint";
        }
      }

      else if (a2 == 2)
      {
        v2 = @"MaxTemperature";
      }

      else if (a2 == 3)
      {
        v2 = @"Step";
      }

      else
      {
        v2 = @"SelectedTemperatureLevel";
      }

      break;
    case 87:
      if (a2 > 65528)
      {
        goto LABEL_4;
      }

      if (a2 > 2)
      {
        if (a2 != 3)
        {
          goto LABEL_101;
        }

        goto LABEL_930;
      }

      if (!a2)
      {
        goto LABEL_977;
      }

      if (a2 == 2)
      {
        goto LABEL_978;
      }

      goto LABEL_1847;
    case 91:
      if (a2 > 65530)
      {
        goto LABEL_443;
      }

      if (a2)
      {
        goto LABEL_447;
      }

      v2 = @"AirQuality";
      break;
    case 92:
      if (a2 > 65527)
      {
        goto LABEL_442;
      }

      v2 = @"ExpressedState";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"SmokeState";
          break;
        case 2:
          v2 = @"COState";
          break;
        case 3:
          v2 = @"BatteryAlert";
          break;
        case 4:
          v2 = @"DeviceMuted";
          break;
        case 5:
          v2 = @"TestInProgress";
          break;
        case 6:
          v2 = @"HardwareFaultAlert";
          break;
        case 7:
          v2 = @"EndOfServiceAlert";
          break;
        case 8:
          v2 = @"InterconnectSmokeAlarm";
          break;
        case 9:
          v2 = @"InterconnectCOAlarm";
          break;
        case 10:
          v2 = @"ContaminationState";
          break;
        case 11:
          v2 = @"SmokeSensitivityLevel";
          break;
        case 12:
          v2 = @"ExpiryDate";
          break;
        default:
          goto LABEL_1847;
      }

      break;
    case 93:
      if (a2 > 65527)
      {
        goto LABEL_442;
      }

      if (a2 > 1)
      {
        if (a2 == 2)
        {
LABEL_978:
          v2 = @"State";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_1847;
          }

LABEL_930:
          v2 = @"Supported";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"Latch";
      }

      else
      {
LABEL_977:
        v2 = @"Mask";
      }

      break;
    case 95:
      if (a2 > 6)
      {
        if (a2 > 65528)
        {
          goto LABEL_4;
        }

        if (a2 == 7)
        {
          v2 = @"SelectedWattIndex";
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_101;
          }

          v2 = @"WattRating";
        }
      }

      else if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"MaxCookTime";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1847;
            }

            v2 = @"PowerSetting";
          }
        }

        else
        {
          v2 = @"CookTime";
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v2 = @"PowerStep";
        }

        else
        {
          v2 = @"SupportedWatts";
        }
      }

      else if (a2 == 3)
      {
        v2 = @"MinPower";
      }

      else
      {
        v2 = @"MaxPower";
      }

      break;
    case 96:
    case 97:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_443;
        }

        if (a2 == 5)
        {
LABEL_239:
          v2 = @"OperationalError";
          break;
        }

        goto LABEL_447;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

LABEL_1007:
          v2 = @"CurrentPhase";
        }

        else
        {
LABEL_1008:
          v2 = @"PhaseList";
        }
      }

      else if (a2 == 2)
      {
LABEL_862:
        v2 = @"CountdownTime";
      }

      else if (a2 == 3)
      {
LABEL_856:
        v2 = @"OperationalStateList";
      }

      else
      {
LABEL_747:
        v2 = @"OperationalState";
      }

      break;
    case 98:
      if (a2 > 65528)
      {
        goto LABEL_4;
      }

      if (a2 == 1)
      {
        v2 = @"SceneTableSize";
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_101;
        }

        v2 = @"FabricSceneInfo";
      }

      break;
    case 113:
    case 114:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_443;
        }

        if (a2 == 5)
        {
          v2 = @"ReplacementProductList";
          break;
        }

        goto LABEL_447;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

          v2 = @"DegradationDirection";
        }

        else
        {
          v2 = @"Condition";
        }
      }

      else if (a2 == 2)
      {
        v2 = @"ChangeIndication";
      }

      else if (a2 == 3)
      {
        v2 = @"InPlaceIndicator";
      }

      else
      {
        v2 = @"LastChangedTime";
      }

      break;
    case 128:
      if (a2 <= 5)
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            v2 = @"AlarmsActive";
          }

          else if (a2 == 4)
          {
            v2 = @"AlarmsSuppressed";
          }

          else
          {
            v2 = @"AlarmsEnabled";
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"SupportedSensitivityLevels";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1847;
            }

            v2 = @"DefaultSensitivityLevel";
          }
        }

        else
        {
          v2 = @"CurrentSensitivityLevel";
        }
      }

      else
      {
        if (a2 > 65528)
        {
          goto LABEL_4;
        }

        if (a2 == 6)
        {
          v2 = @"AlarmsSupported";
        }

        else
        {
          if (a2 != 7)
          {
            goto LABEL_101;
          }

          v2 = @"SensorFault";
        }
      }

      break;
    case 129:
      if (a2 > 7)
      {
        if (a2 > 65528)
        {
          goto LABEL_4;
        }

        if (a2 > 9)
        {
          if (a2 != 10)
          {
            goto LABEL_101;
          }

          v2 = @"LevelStep";
        }

        else if (a2 == 8)
        {
          v2 = @"DefaultOpenLevel";
        }

        else
        {
          v2 = @"ValveFault";
        }
      }

      else if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            v2 = @"CurrentLevel";
          }

          else
          {
            v2 = @"TargetLevel";
          }
        }

        else if (a2 == 4)
        {
          v2 = @"CurrentState";
        }

        else
        {
          v2 = @"TargetState";
        }
      }

      else if (a2 > 1)
      {
        if (a2 == 2)
        {
          v2 = @"AutoCloseTime";
        }

        else
        {
          v2 = @"RemainingDuration";
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_1847;
        }

        v2 = @"DefaultOpenDuration";
      }

      else
      {
        v2 = @"OpenDuration";
      }

      break;
    case 144:
      if (a2 > 65527)
      {
        goto LABEL_442;
      }

      v2 = @"PowerMode";
      switch(a2)
      {
        case 0:
          goto LABEL_1848;
        case 1:
          v2 = @"NumberOfMeasurementTypes";
          break;
        case 2:
          v2 = @"Accuracy";
          break;
        case 3:
          v2 = @"Ranges";
          break;
        case 4:
          v2 = @"Voltage";
          break;
        case 5:
          v2 = @"ActiveCurrent";
          break;
        case 6:
          v2 = @"ReactiveCurrent";
          break;
        case 7:
          v2 = @"ApparentCurrent";
          break;
        case 8:
          v2 = @"ActivePower";
          break;
        case 9:
          v2 = @"ReactivePower";
          break;
        case 10:
          v2 = @"ApparentPower";
          break;
        case 11:
          v2 = @"RMSVoltage";
          break;
        case 12:
          v2 = @"RMSCurrent";
          break;
        case 13:
          v2 = @"RMSPower";
          break;
        case 14:
          v2 = @"Frequency";
          break;
        case 15:
          v2 = @"HarmonicCurrents";
          break;
        case 16:
          v2 = @"HarmonicPhases";
          break;
        case 17:
          v2 = @"PowerFactor";
          break;
        case 18:
          v2 = @"NeutralCurrent";
          break;
        default:
          goto LABEL_1847;
      }

      break;
    case 145:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_443;
        }

        if (a2 == 5)
        {
          v2 = @"CumulativeEnergyReset";
          break;
        }

        goto LABEL_447;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

          v2 = @"CumulativeEnergyImported";
        }

        else
        {
          v2 = @"Accuracy";
        }
      }

      else if (a2 == 2)
      {
        v2 = @"CumulativeEnergyExported";
      }

      else if (a2 == 3)
      {
        v2 = @"PeriodicEnergyImported";
      }

      else
      {
        v2 = @"PeriodicEnergyExported";
      }

      break;
    case 148:
      if (a2 > 4)
      {
        if (a2 > 65530)
        {
          goto LABEL_443;
        }

        if (a2 == 5)
        {
          v2 = @"BoostState";
          break;
        }

        goto LABEL_447;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

          v2 = @"HeatDemand";
        }

        else
        {
          v2 = @"HeaterTypes";
        }
      }

      else if (a2 == 2)
      {
        v2 = @"TankVolume";
      }

      else if (a2 == 3)
      {
        v2 = @"EstimatedHeatRequired";
      }

      else
      {
        v2 = @"TankPercentage";
      }

      break;
    case 149:
      if (a2 <= 65527)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v2 = @"CurrentPrice";
          }

          else
          {
            if (a2 != 3)
            {
              goto LABEL_1847;
            }

            v2 = @"PriceForecast";
          }
        }

        else if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1847;
          }

          v2 = @"Currency";
        }

        else
        {
          v2 = @"TariffUnit";
        }

        break;
      }

LABEL_442:
      if (a2 > 65530)
      {
LABEL_443:
        if (a2 == 65531)
        {
          goto LABEL_848;
        }

        goto LABEL_444;
      }

LABEL_447:
      if (a2 == 65528)
      {
        goto LABEL_450;
      }

      if (a2 == 65529)
      {
        goto LABEL_449;
      }

      goto LABEL_1847;
    case 151:
      if (a2 > 65528)
      {
        goto LABEL_4;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_101;
        }

        v2 = @"ActiveMessageIDs";
      }

      else
      {
        v2 = @"Messages";
      }

      break;
    case 152:
      if (a2 <= 5)
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            v2 = @"AbsMinPower";
          }

          else if (a2 == 4)
          {
            v2 = @"AbsMaxPower";
          }

          else
          {
            v2 = @"PowerAdjustmentCapability";
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"ESACanGenerate";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_1847;
            }

            v2 = @"ESAState";
          }
        }

        else
        {
          v2 = @"ESAType";
        }
      }

      else if (a2 > 65528)
      {
LABEL_4:
        if (a2 > 65531)
        {
LABEL_444:
          if (a2 == 65532)
          {
LABEL_847:
            v2 = @"FeatureMap";
          }

          else
          {
            if (a2 != 65533)
            {
              goto LABEL_1847;
            }

LABEL_446:
            v2 = @"ClusterRevision";
          }
        }

        else if (a2 == 65529)
        {
LABEL_449:
          v2 = @"AcceptedCommandList";
        }

        else
        {
          if (a2 != 65531)
          {
            goto LABEL_1847;
          }

LABEL_848:
          v2 = @"AttributeList";
        }
      }

      else if (a2 == 6)
      {
        v2 = @"Forecast";
      }

      else if (a2 == 7)
      {
        v2 = @"OptOutState";
      }

      else
      {
LABEL_101:
        if (a2 != 65528)
        {
          goto LABEL_1847;
        }

LABEL_450:
        v2 = @"GeneratedCommandList";
      }

      break;
    case 153:
      if (a2 <= 47)
      {
        v2 = @"State";
        switch(a2)
        {
          case 0:
            goto LABEL_1848;
          case 1:
            v2 = @"SupplyState";
            break;
          case 2:
            v2 = @"FaultState";
            break;
          case 3:
            v2 = @"ChargingEnabledUntil";
            break;
          case 4:
            v2 = @"DischargingEnabledUntil";
            break;
          case 5:
            v2 = @"CircuitCapacity";
            break;
          case 6:
            v2 = @"MinimumChargeCurrent";
            break;
          case 7:
            v2 = @"MaximumChargeCurrent";
            break;
          case 8:
            v2 = @"MaximumDischargeCurrent";
            break;
          case 9:
            v2 = @"UserMaximumChargeCurrent";
            break;
          case 10:
            v2 = @"RandomizationDelayWindow";
            break;
          case 35:
            v2 = @"NextChargeStartTime";
            break;
          case 36:
            v2 = @"NextChargeTargetTime";
            break;
          case 37:
            v2 = @"NextChargeRequiredEnergy";
            break;
          case 38:
            v2 = @"NextChargeTargetSoC";
            break;
          case 39:
            v2 = @"ApproximateEVEfficiency";
            break;
          default:
            goto LABEL_1847;
        }

        break;
      }

      if (a2 <= 66)
      {
        if (a2 > 63)
        {
          if (a2 == 64)
          {
            v2 = @"SessionID";
          }

          else if (a2 == 65)
          {
            v2 = @"SessionDuration";
          }

          else
          {
            v2 = @"SessionEnergyCharged";
          }
        }

        else
        {
          switch(a2)
          {
            case '0':
              v2 = @"StateOfCharge";
              break;
            case '1':
              v2 = @"BatteryCapacity";
              break;
            case '2':
              v2 = @"VehicleID";
              break;
            default:
              goto LABEL_1847;
          }
        }

        break;
      }

      if (a2 > 65530)
      {
        switch(a2)
        {
          case 0xFFFB:
            goto LABEL_1153;
          case 0xFFFC:
            goto LABEL_1154;
          case 0xFFFD:
            goto LABEL_647;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x43:
            v2 = @"SessionEnergyDischarged";
            goto LABEL_1848;
          case 0xFFF8:
            goto LABEL_851;
          case 0xFFF9:
            goto LABEL_692;
        }
      }

      goto LABEL_1847;
    case 155:
      if (a2 > 65527)
      {
        goto LABEL_601;
      }

      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_1027;
          }

          v2 = @"CurrentEnergyBalance";
        }

        else
        {
          v2 = @"EnergyBalances";
        }
      }

      else
      {
        switch(a2)
        {
          case 2:
            v2 = @"EnergyPriorities";
            break;
          case 3:
            v2 = @"LowPowerModeSensitivities";
            break;
          case 4:
            v2 = @"CurrentLowPowerModeSensitivity";
            break;
          default:
            goto LABEL_1027;
        }
      }

      break;
    case 156:
      if (a2 > 65528)
      {
        goto LABEL_412;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_850;
        }

        v2 = @"ActiveEndpoints";
      }

      else
      {
        v2 = @"AvailableEndpoints";
      }

      break;
    case 157:
    case 158:
    case 159:
      if (a2 > 65528)
      {
        goto LABEL_412;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_850;
        }

        v2 = @"CurrentMode";
      }

      else
      {
LABEL_255:
        v2 = @"SupportedModes";
      }

      break;
    case 160:
      if (a2 <= 65528)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_1027;
            }

            v2 = @"CurrentConditions";
          }

          else
          {
            v2 = @"LocalGenerationAvailable";
          }

          break;
        }

        if (a2 == 2)
        {
          v2 = @"ForecastConditions";
          break;
        }

LABEL_850:
        if (a2 != 65528)
        {
          goto LABEL_1027;
        }

        goto LABEL_851;
      }

LABEL_412:
      if (a2 > 65531)
      {
        goto LABEL_603;
      }

      if (a2 == 65529)
      {
        goto LABEL_692;
      }

      if (a2 == 65531)
      {
        goto LABEL_1153;
      }

      goto LABEL_1027;
    default:
      if (a1 == -918523)
      {
        if (a2 > 253)
        {
          if (a2 > 65527)
          {
            goto LABEL_499;
          }

          if (a2 <= 12288)
          {
            switch(a2)
            {
              case 0xFE:
                v2 = @"UnsupportedAttributeRequiringAdminPrivilege";
                break;
              case 0xFF:
                v2 = @"Unsupported";
                break;
              case 0x3000:
                v2 = @"ReadFailureCode";
                break;
              default:
                goto LABEL_1847;
            }
          }

          else
          {
            switch(a2)
            {
              case 16384:
                v2 = @"NullableBoolean";
                break;
              case 16385:
                v2 = @"NullableBitmap8";
                break;
              case 16386:
                v2 = @"NullableBitmap16";
                break;
              case 16387:
                v2 = @"NullableBitmap32";
                break;
              case 16388:
                v2 = @"NullableBitmap64";
                break;
              case 16389:
                v2 = @"NullableInt8u";
                break;
              case 16390:
                v2 = @"NullableInt16u";
                break;
              case 16391:
                v2 = @"NullableInt24u";
                break;
              case 16392:
                v2 = @"NullableInt32u";
                break;
              case 16393:
                v2 = @"NullableInt40u";
                break;
              case 16394:
                v2 = @"NullableInt48u";
                break;
              case 16395:
                v2 = @"NullableInt56u";
                break;
              case 16396:
                v2 = @"NullableInt64u";
                break;
              case 16397:
                v2 = @"NullableInt8s";
                break;
              case 16398:
                v2 = @"NullableInt16s";
                break;
              case 16399:
                v2 = @"NullableInt24s";
                break;
              case 16400:
                v2 = @"NullableInt32s";
                break;
              case 16401:
                v2 = @"NullableInt40s";
                break;
              case 16402:
                v2 = @"NullableInt48s";
                break;
              case 16403:
                v2 = @"NullableInt56s";
                break;
              case 16404:
                v2 = @"NullableInt64s";
                break;
              case 16405:
                v2 = @"NullableEnum8";
                break;
              case 16406:
                v2 = @"NullableEnum16";
                break;
              case 16407:
                v2 = @"NullableFloatSingle";
                break;
              case 16408:
                v2 = @"NullableFloatDouble";
                break;
              case 16409:
                v2 = @"NullableOctetString";
                break;
              case 16410:
              case 16411:
              case 16412:
              case 16413:
              case 16415:
              case 16416:
              case 16417:
              case 16418:
              case 16419:
              case 16427:
              case 16428:
              case 16429:
              case 16430:
              case 16431:
              case 16432:
              case 16433:
              case 16434:
                goto LABEL_1847;
              case 16414:
                v2 = @"NullableCharString";
                break;
              case 16420:
                v2 = @"NullableEnumAttr";
                break;
              case 16421:
                v2 = @"NullableStruct";
                break;
              case 16422:
                v2 = @"NullableRangeRestrictedInt8u";
                break;
              case 16423:
                v2 = @"NullableRangeRestrictedInt8s";
                break;
              case 16424:
                v2 = @"NullableRangeRestrictedInt16u";
                break;
              case 16425:
                v2 = @"NullableRangeRestrictedInt16s";
                break;
              case 16426:
                v2 = @"WriteOnlyInt8u";
                break;
              case 16435:
                v2 = @"NullableGlobalEnum";
                break;
              case 16436:
                v2 = @"NullableGlobalStruct";
                break;
              default:
                if (a2 != 12289)
                {
                  goto LABEL_1847;
                }

                v2 = @"FailureInt32U";
                break;
            }
          }
        }

        else
        {
          v2 = @"Boolean";
          switch(a2)
          {
            case 0:
              goto LABEL_1848;
            case 1:
              v2 = @"Bitmap8";
              break;
            case 2:
              v2 = @"Bitmap16";
              break;
            case 3:
              v2 = @"Bitmap32";
              break;
            case 4:
              v2 = @"Bitmap64";
              break;
            case 5:
              v2 = @"Int8u";
              break;
            case 6:
              v2 = @"Int16u";
              break;
            case 7:
              v2 = @"Int24u";
              break;
            case 8:
              v2 = @"Int32u";
              break;
            case 9:
              v2 = @"Int40u";
              break;
            case 10:
              v2 = @"Int48u";
              break;
            case 11:
              v2 = @"Int56u";
              break;
            case 12:
              v2 = @"Int64u";
              break;
            case 13:
              v2 = @"Int8s";
              break;
            case 14:
              v2 = @"Int16s";
              break;
            case 15:
              v2 = @"Int24s";
              break;
            case 16:
              v2 = @"Int32s";
              break;
            case 17:
              v2 = @"Int40s";
              break;
            case 18:
              v2 = @"Int48s";
              break;
            case 19:
              v2 = @"Int56s";
              break;
            case 20:
              v2 = @"Int64s";
              break;
            case 21:
              v2 = @"Enum8";
              break;
            case 22:
              v2 = @"Enum16";
              break;
            case 23:
              v2 = @"FloatSingle";
              break;
            case 24:
              v2 = @"FloatDouble";
              break;
            case 25:
              v2 = @"OctetString";
              break;
            case 26:
              v2 = @"ListInt8u";
              break;
            case 27:
              v2 = @"ListOctetString";
              break;
            case 28:
              v2 = @"ListStructOctetString";
              break;
            case 29:
              v2 = @"LongOctetString";
              break;
            case 30:
              v2 = @"CharString";
              break;
            case 31:
              v2 = @"LongCharString";
              break;
            case 32:
              v2 = @"EpochUs";
              break;
            case 33:
              v2 = @"EpochS";
              break;
            case 34:
              v2 = @"VendorId";
              break;
            case 35:
              v2 = @"ListNullablesAndOptionalsStruct";
              break;
            case 36:
              v2 = @"EnumAttr";
              break;
            case 37:
              v2 = @"StructAttr";
              break;
            case 38:
              v2 = @"RangeRestrictedInt8u";
              break;
            case 39:
              v2 = @"RangeRestrictedInt8s";
              break;
            case 40:
              v2 = @"RangeRestrictedInt16u";
              break;
            case 41:
              v2 = @"RangeRestrictedInt16s";
              break;
            case 42:
              v2 = @"ListLongOctetString";
              break;
            case 43:
              v2 = @"ListFabricScoped";
              break;
            case 44:
            case 45:
            case 46:
            case 47:
              goto LABEL_1847;
            case 48:
              v2 = @"TimedWriteBoolean";
              break;
            case 49:
              v2 = @"GeneralErrorBoolean";
              break;
            case 50:
              v2 = @"ClusterErrorBoolean";
              break;
            case 51:
              v2 = @"GlobalEnum";
              break;
            case 52:
              v2 = @"GlobalStruct";
              break;
            default:
              if (a2 != -897279)
              {
                goto LABEL_1847;
              }

              v2 = @"MeiInt8u";
              break;
          }
        }
      }

      else
      {
        if (a1 != -918496)
        {
          goto LABEL_197;
        }

        if (a2 > 65530)
        {
          goto LABEL_500;
        }

        if (a2)
        {
          goto LABEL_502;
        }

        v2 = @"FlipFlop";
      }

      break;
  }

LABEL_1848:

  return v2;
}