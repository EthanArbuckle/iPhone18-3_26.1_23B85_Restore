uint64_t ec_log()
{
  if (ec_log_onceToken != -1)
  {
    ec_log_cold_1();
  }

  return ec_log___logger;
}

os_log_t __ec_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "EventCallback");
  ec_log___logger = result;
  return result;
}

uint64_t agps_log()
{
  if (agps_log_onceToken != -1)
  {
    agps_log_cold_1();
  }

  return agps_log___logger;
}

os_log_t __agps_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "AGPSession");
  agps_log___logger = result;
  return result;
}

uint64_t gcks_log()
{
  if (gcks_log_onceToken != -1)
  {
    gcks_log_cold_1();
  }

  return gcks_log___logger;
}

os_log_t __gcks_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "GCKSession");
  gcks_log___logger = result;
  return result;
}

uint64_t mcadvertiser_log()
{
  if (mcadvertiser_log_onceToken != -1)
  {
    mcadvertiser_log_cold_1();
  }

  return mcadvertiser_log___logger;
}

os_log_t __mcadvertiser_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyServiceAdvertiser");
  mcadvertiser_log___logger = result;
  return result;
}

uint64_t mcadvertiser_ui_log()
{
  if (mcadvertiser_ui_log_onceToken != -1)
  {
    mcadvertiser_ui_log_cold_1();
  }

  return mcadvertiser_ui_log___logger;
}

os_log_t __mcadvertiser_ui_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCAdvertiserAssistant");
  mcadvertiser_ui_log___logger = result;
  return result;
}

uint64_t mcbrowser_log()
{
  if (mcbrowser_log_onceToken != -1)
  {
    mcbrowser_log_cold_1();
  }

  return mcbrowser_log___logger;
}

os_log_t __mcbrowser_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyServiceBrowser");
  mcbrowser_log___logger = result;
  return result;
}

uint64_t mcbrowser_ui_log()
{
  if (mcbrowser_ui_log_onceToken != -1)
  {
    mcbrowser_ui_log_cold_1();
  }

  return mcbrowser_ui_log___logger;
}

os_log_t __mcbrowser_ui_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCBrowserViewController");
  mcbrowser_ui_log___logger = result;
  return result;
}

uint64_t mcdp_log()
{
  if (mcdp_log_onceToken != -1)
  {
    mcdp_log_cold_1();
  }

  return mcdp_log___logger;
}

os_log_t __mcdp_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyDiscoveryPeer");
  mcdp_log___logger = result;
  return result;
}

uint64_t mcdpc_log()
{
  if (mcdpc_log_onceToken != -1)
  {
    mcdpc_log_cold_1();
  }

  return mcdpc_log___logger;
}

os_log_t __mcdpc_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyDiscoveryPeerConnection");
  mcdpc_log___logger = result;
  return result;
}

uint64_t mcpid_log()
{
  if (mcpid_log_onceToken != -1)
  {
    mcpid_log_cold_1();
  }

  return mcpid_log___logger;
}

os_log_t __mcpid_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCPeerID");
  mcpid_log___logger = result;
  return result;
}

uint64_t mcs_log()
{
  if (mcs_log_onceToken != -1)
  {
    mcs_log_cold_1();
  }

  return mcs_log___logger;
}

os_log_t __mcs_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCSession");
  mcs_log___logger = result;
  return result;
}

uint64_t ospf_log()
{
  if (ospf_log_onceToken != -1)
  {
    ospf_log_cold_1();
  }

  return ospf_log___logger;
}

os_log_t __ospf_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "OSPF");
  ospf_log___logger = result;
  return result;
}

uint64_t MCDashboardLog(char *__format, ...)
{
  va_start(va, __format);
  v6 = *MEMORY[0x277D85DE8];
  if (MCDashboardClient_onceToken != -1)
  {
    MCDashboardLog_cold_1();
  }

  v2 = MCDashboardClient_client;
  vsnprintf(__str, 0x400uLL, __format, va);
  result = [v2 logf:{"MC: p=%{pid}; %s", getpid(), __str, va}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MCDashboardLogJSON(uint64_t a1, __CFString *a2, void *a3)
{
  if (MCDashboardClient_onceToken != -1)
  {
    MCDashboardLog_cold_1();
  }

  v6 = MCDashboardClient_client;
  if (![(__CFString *)a2 length])
  {
    a2 = @"MC";
  }

  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1];
  [v7 setObject:a2 forKey:@"_cat"];
  [v7 setObject:objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38] forKey:{"processInfo"), "processName"), @"pid"}];
  if ([a3 length])
  {
    [v7 setObject:a3 forKey:@"_op"];
  }

  return [v6 logJSON:v7];
}

void MCMetricsLog(__CFString *a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length])
  {
    if (a2)
    {
      if (metrics_log_onceToken != -1)
      {
        MCMetricsLog_cold_1();
      }

      v6 = metrics_log___logger;
      if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = a2;
        _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "MetricEvent '%@' : %@\n", &v10, 0x16u);
      }

      AnalyticsSendEvent();
      if (a3)
      {
        MCDashboardLogJSON(a2, a1, @"metrics");
      }
    }

    else
    {
      if (metrics_log_onceToken != -1)
      {
        MCMetricsLog_cold_1();
      }

      v8 = metrics_log___logger;
      if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_ERROR))
      {
        MCMetricsLog_cold_3(v8);
      }
    }
  }

  else
  {
    if (metrics_log_onceToken != -1)
    {
      MCMetricsLog_cold_1();
    }

    v7 = metrics_log___logger;
    if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_ERROR))
    {
      MCMetricsLog_cold_5(a1, v7);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __MCDashboardClient_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D02858]);
  MCDashboardClient_client = v0;

  return [v0 activate];
}

os_log_t __metrics_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "Metrics");
  metrics_log___logger = result;
  return result;
}

const char *GCKEventName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "?";
  }

  else
  {
    return off_278B44140[a1];
  }
}

const char *XDataControlTypeName(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 > 30)
  {
    switch(a1)
    {
      case 31:
        result = "XDataStreamCloseFromReceiver";
        goto LABEL_17;
      case 40:
        result = "XDataPeerIDPush";
        goto LABEL_17;
      case 41:
        result = "XDataConnectionBlobPush";
        goto LABEL_17;
    }
  }

  else
  {
    switch(a1)
    {
      case 20:
        result = "XDataStreamOpenRequest";
        goto LABEL_17;
      case 21:
        result = "XDataStreamOpenResponse";
        goto LABEL_17;
      case 30:
        result = "XDataStreamCloseFromSender";
        goto LABEL_17;
    }
  }

  v3 = mcs_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Unrecognized type [%d].", v5, 8u);
  }

  result = "invalid";
LABEL_17:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239FBFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void GCKEventListenerForMCSession(void *a1, uint64_t a2, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = mcs_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    if (v9 > 6)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_278B44140[v9];
    }

    v11 = *(a3 + 4);
    v12 = *(a3 + 5);
    v13 = 136316162;
    v14 = v10;
    v15 = 1024;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    v19 = 2048;
    v20 = a1;
    v21 = 1024;
    v22 = a2;
    _os_log_debug_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEBUG, "Event %s size=%d status=%d (%p) from pid[%08X].", &v13, 0x28u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  AGPSessionEvent([a1 agpSession], a2, a3);

  v8 = *MEMORY[0x277D85DE8];
}

void AGPEventListenerForMCSession(void *a1, int a2, unsigned int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = mcs_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a3;
    if (v16 > 6)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_278B44140[v16];
    }

    v18 = a3[4];
    v19 = a3[5];
    *buf = 136316162;
    v23 = v17;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v19;
    v28 = 2048;
    v29 = a1;
    v30 = 1024;
    v31 = a2;
    _os_log_debug_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEBUG, "Event %s size=%d status=%d (%p) from pid[%08X].", buf, 0x28u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v8 = malloc_type_malloc(a3[4] + 24, 0x101004035137979uLL);
  if (v8)
  {
    v9 = v8;
    v10 = *a3;
    v8[2] = *(a3 + 2);
    *v8 = v10;
    v11 = a3[4];
    if (v11 >= 1)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        memcpy(v8 + 3, v12, v11);
        v9[1] = v9 + 3;
      }
    }

    v13 = [a1 syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __AGPEventListenerForMCSession_block_invoke;
    block[3] = &unk_278B440E8;
    block[4] = a1;
    block[5] = v9;
    v21 = a2;
    dispatch_async(v13, block);
  }

  else
  {
    v14 = mcs_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      AGPEventListenerForMCSession_cold_1();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_239FC11AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_239FC19C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_239FC2BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void __AGPEventListenerForMCSession_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = 1;
  [*(a1 + 32) syncHandleNetworkEvent:*(a1 + 40) pid:*(a1 + 48) freeEventWhenDone:&v3];
  if (v3 == 1)
  {
    free(*(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

unsigned int *OUTLINED_FUNCTION_8@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void *OUTLINED_FUNCTION_2_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = result[5];
  v4 = result[6];
  v5 = result[1];
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t UpdateRTO(unsigned int *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *a1 + 1;
    *a1 = v4;
    if (v3 <= 0x3F)
    {
      v5 = v2 + a2;
      v6 = (v2 + a2) / v4;
      v7 = a2 - v6;
      if ((a2 - v6) < 0)
      {
        v7 = v6 - a2;
      }

      v8 = a1[2] - (a1[2] >> 5) + v7;
      a1[1] = v5;
      a1[2] = v8;
      goto LABEL_11;
    }

    v9 = a2 - (v2 >> 6);
    if (v9 >= 0)
    {
      v10 = a2 - (v2 >> 6);
    }

    else
    {
      v10 = (v2 >> 6) - a2;
    }

    v11 = a1[2];
    if (v10 < (3 * v11) >> 5)
    {
      v12 = v9 + v2;
      v13 = v10 - (v11 >> 5) + v11;
      a1[1] = v12;
      a1[2] = v13;
      v6 = (v13 >> 5) + (v12 >> 6);
LABEL_11:
      a1[3] = v6;
    }
  }

  return a1[3];
}

void TracePrintNodes(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = micro();
  if (v9 - *(a1 + 7160) > 1.0)
  {
    *(a1 + 7160) = v9;
    *(a1 + 7152) = 1;
    goto LABEL_6;
  }

  v10 = *(a1 + 7152);
  *(a1 + 7152) = v10 + 1;
  if (v10 < 201)
  {
LABEL_6:
    v12 = gcks_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (!v13)
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      v36 = a2;
      v14 = "My routing table: %d nodes.";
      v15 = v12;
      v16 = 8;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_12;
      }

      *buf = 67109376;
      v36 = a5;
      v37 = 1024;
      v38 = a2;
      v14 = "Participant %08X routing table: %d nodes.";
      v15 = v12;
      v16 = 14;
    }

    _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_12:
    if (a2 >= 1)
    {
      v17 = 0;
      v18 = (a3 + 292);
      do
      {
        v19 = gcks_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = a3 + 416 * v17;
          v21 = *v20;
          v22 = *(v20 + 4);
          v23 = *(v20 + 272);
          v24 = *(v20 + 274);
          v25 = *(v20 + 276);
          v26 = *(v20 + 280);
          LODWORD(v20) = *(v20 + 284);
          *buf = 67110912;
          v36 = v17;
          v37 = 1024;
          v38 = v21;
          v39 = 1024;
          v40 = v22;
          v41 = 1024;
          v42 = v23;
          v43 = 1024;
          v44 = v24;
          v45 = 1024;
          v46 = v25;
          v47 = 1024;
          v48 = v26;
          v49 = 1024;
          v50 = v20;
          _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "Node %d [%08X]: NextHop[%08X], SN[%u], LSASN [%u], New flag[%d], From[%08X], # of neighbors [%d]", buf, 0x32u);
        }

        v27 = a3 + 416 * v17;
        if (*(v27 + 284) >= 1)
        {
          v28 = 0;
          v29 = v18;
          do
          {
            v30 = gcks_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = *(v29 - 1);
              v32 = *v29;
              *buf = 67109632;
              v36 = v28;
              v37 = 1024;
              v38 = v31;
              v39 = 1024;
              v40 = v32;
              _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "\tneighbor %d: %08X - RTT[%u]", buf, 0x14u);
            }

            ++v28;
            v29 += 2;
          }

          while (v28 < *(v27 + 284));
        }

        ++v17;
        v18 += 104;
      }

      while (v17 != a2);
    }

    goto LABEL_22;
  }

  v11 = gcks_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    TracePrintNodes_cold_1((a1 + 7152));
  }

LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
}

void gckSessionUpdateRoutingTable(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 420);
  v4 = a1 + 424;
  v5 = *(a1 + 420);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &buf[-((v7 + 15) & 0x7FFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &buf[-v11];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &buf[-v15];
  TracePrintNodes(v14, v3, v4, 1, *(v14 + 416));
  memset(v8, 255, 4 * v3);
  memset(v12, 255, 4 * v3);
  bzero(v16, 4 * v3);
  *v8 = 0;
  if (v3 >= 1)
  {
    v17 = 0;
    v18 = -1;
    v19 = -1;
    do
    {
      do
      {
        if (!*&v16[4 * v17] && *&v8[4 * v17] < v19)
        {
          v19 = *&v8[4 * v17];
          v18 = v17;
        }

        ++v17;
      }

      while (v17 != v3);
      if (v18 == -1)
      {
        break;
      }

      *&v16[4 * v18] = 1;
      v20 = v4 + 416 * v18;
      v21 = *(v20 + 284);
      if (v21 >= 1)
      {
        v22 = 0;
        v23 = v20 + 288;
        do
        {
          if (v5 < 1)
          {
            LODWORD(v24) = 0;
          }

          else
          {
            v24 = 0;
            v25 = v4;
            while (*v25 != *(v23 + 8 * v22))
            {
              v25 += 104;
              if (v3 == ++v24)
              {
                goto LABEL_18;
              }
            }
          }

          if (v24 != v5 && !*&v16[4 * v24])
          {
            v26 = *(v23 + 8 * v22 + 4);
            if (v26 != -1)
            {
              v27 = v26 + v19;
              if (v27 < *&v8[4 * v24])
              {
                *&v8[4 * v24] = v27;
                *&v12[4 * v24] = v18;
              }
            }
          }

LABEL_18:
          ++v22;
        }

        while (v22 != v21);
      }

      v17 = 0;
      v18 = -1;
      v19 = -1;
    }

    while (v5 >= 1);
  }

  v28 = *(a1 + 708);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = a1 + 712;
    do
    {
      if (v5 < 1)
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = 0;
        v32 = v4;
        while (*v32 != *(v30 + 8 * v29))
        {
          v32 += 104;
          if (v3 == ++v31)
          {
            goto LABEL_35;
          }
        }
      }

      if (v31 != v5 && *(v30 + 8 * v29 + 4) != -1)
      {
        *&v12[4 * v31] = 0;
      }

LABEL_35:
      ++v29;
    }

    while (v29 != v28);
  }

  if (v5 > 1)
  {
    v33 = 1;
    do
    {
      v34 = v33;
      while (1)
      {
        v35 = v34;
        v34 = *&v12[4 * v34];
        if (v34 == -1)
        {
          break;
        }

        if (!v34)
        {
          *(v4 + 416 * v33 + 4) = *(v4 + 416 * v35);
          v36 = *&v8[4 * v33];
          goto LABEL_43;
        }
      }

      v36 = -1;
      *(v4 + 416 * v33 + 4) = -1;
LABEL_43:
      *(v4 + 416 * v33++ + 268) = v36;
    }

    while (v33 != v3);
  }

  v37 = gcks_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v37, OS_LOG_TYPE_DEFAULT, "Updated routing table.", buf, 2u);
  }

  TracePrintNodes(a1, *(a1 + 420), v4, 1, *(a1 + 416));
  v38 = *MEMORY[0x277D85DE8];
}

const char *GCKSessionInterfaceNameForPriority(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1 - 1;
  if (a1 - 1) < 7 && ((0x7Du >> v2))
  {
    result = off_278B44350[v2];
  }

  else
  {
    v4 = gcks_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a1;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Unrecognized interface priority type [%d].", v6, 8u);
    }

    result = "UNKNOWN";
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GCKSessionCreate(int a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v44 = *MEMORY[0x277D85DE8];
  if ((GCKSessionCreate_s_fInit & 1) == 0)
  {
    GCKSessionCreate_s_fInit = 1;
  }

  v12 = 2149187587;
  v13 = malloc_type_calloc(1uLL, 0x1D80uLL, 0x10E0040C953D487uLL);
  if (!v13)
  {
    v24 = gcks_log();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

LABEL_14:
    GCKSessionCreate_cold_4(v24, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_22;
  }

  v14 = v13;
  v15 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A00406F2D52ADuLL);
  *(v14 + 51) = v15;
  if (!v15)
  {
    free(v14);
    v24 = gcks_log();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  Handle = CreateHandle();
  if (Handle == 0xFFFFFFFFLL)
  {
    free(v14);
    v12 = 2149187589;
    goto LABEL_22;
  }

  v17 = Handle;
  *(v14 + 104) = a1;
  v18 = *(v14 + 51);
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = 0;
  v18[4] = 0;
  *(v14 + 4) = -1;
  *(v14 + 9) = 0xFFFFFFFFLL;
  *(v14 + 100) = 0;
  *(v14 + 3) = xmmword_239FEC2E0;
  *(v14 + 16) = 1;
  *(v14 + 24) = xmmword_239FEC2F0;
  *(v14 + 10) = 1;
  *(v14 + 1884) = 0;
  pthread_mutex_init((v14 + 80), 0);
  pthread_mutex_init((v14 + 7080), 0);
  pthread_rwlock_init((v14 + 7192), 0);
  pthread_mutex_init((v14 + 7400), 0);
  pthread_cond_init((v14 + 7464), 0);
  pthread_cond_init((*(v14 + 51) + 112), 0);
  pthread_mutex_init((*(v14 + 51) + 48), 0);
  pthread_mutex_init((*(v14 + 51) + 248), 0);
  __sprintf_chk(v14 + 433, 0, 0x100uLL, "%08X", a1);
  v14[432] = 8;
  *(v14 + 106) = a1;
  *(v14 + 107) = a1;
  *(v14 + 173) = 0;
  *(v14 + 348) = 0;
  *(v14 + 175) = 0;
  *(v14 + 176) = a1;
  *(v14 + 177) = 0;
  *(v14 + 105) = 1;
  *(v14 + 1788) = 0;
  *(v14 + 895) = micro();
  *(v14 + 940) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  v19 = CheckInHandleDebug();
  if (!v19)
  {
    v12 = 2149187586;
LABEL_19:
    v32 = gcks_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_3();
    }

    goto LABEL_21;
  }

  v20 = v19;
  qword_27DF919F8 = 0x404E000000000000;
  v43 = 0;
  v40 = 0;
  v42 = 0u;
  *buf = gckSessionSendICEPacket;
  *&buf[8] = gckSessionRecvICEPacketWithTimeout;
  *&buf[16] = gckSessionConnectedCallback;
  v39 = gckSessionCancelRecvUDP;
  v41 = gckSessionICEListRemoveCallback;
  v12 = ICECreateHandleWithCallback();
  v21 = *(v20 + 72);
  ICEDisableCandidatePairFilter();
  CheckOutHandleDebug();
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v22 = pthread_create(v14 + 896, 0, gckSessionRecvProc, v17);
  if (v22)
  {
    v12 = v22 | 0xC01A0000;
    v23 = gcks_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_1();
    }

LABEL_21:
    GCKSessionRelease();
    goto LABEL_22;
  }

  v35 = pthread_create(v14 + 897, 0, gckSessionSendProc, v17);
  if (v35)
  {
    v12 = v35 | 0xC01A0000;
    v36 = gcks_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_2();
    }

    goto LABEL_21;
  }

  *(v14 + 1886) = 0;
  *(v14 + 941) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  *a6 = v17;
  v37 = gcks_log();
  v12 = 0;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Oct 10 2025";
    *&buf[12] = 2080;
    *&buf[14] = "23:44:36";
    _os_log_impl(&dword_239FB7000, v37, OS_LOG_TYPE_DEFAULT, "GCKSessionCreate: [GKS: %s - %s].", buf, 0x16u);
    v12 = 0;
  }

LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
  return v12;
}

double micro()
{
  if ((_MergedGlobals & 1) == 0)
  {
    micro_cold_1();
  }

  v0 = *&qword_27DF91D30;
  return v0 * mach_absolute_time();
}

uint64_t GCKSessionRelease()
{
  v28 = *MEMORY[0x277D85DE8];
  v24.tv_sec = 0;
  *&v24.tv_usec = 50000;
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    v2 = gcks_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Oct 10 2025";
      v26 = 2080;
      v27 = "23:44:36";
      _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "GCKSessionRelease: Disposing all connections [GKS: %s - %s].", buf, 0x16u);
    }

    gckSessionDisposeAllConnections(v1);
    v3 = micro() + 1.0;
    while (1)
    {
      pthread_rwlock_rdlock((v1 + 7192));
      v4 = *(v1 + 7184);
      if (!v4)
      {
        break;
      }

      while (1)
      {
        pthread_mutex_lock((v4 + 768));
        v5 = *(v4 + 600);
        if (v5)
        {
          break;
        }

LABEL_9:
        pthread_mutex_unlock((v4 + 768));
        v4 = *(v4 + 832);
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      while (*v5 != 4)
      {
        v5 = *(v5 + 64);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      pthread_mutex_unlock((v4 + 768));
      pthread_rwlock_unlock((v1 + 7192));
      select(0, 0, 0, 0, &v24);
      if (micro() >= v3)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    pthread_rwlock_unlock((v1 + 7192));
LABEL_14:
    v6 = gcks_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Oct 10 2025";
      v26 = 2080;
      v27 = "23:44:36";
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Stop ICE connectionchecks [GKS: %s - %s].", buf, 0x16u);
    }

    pthread_rwlock_rdlock((v1 + 7192));
    for (i = *(v1 + 7184); i; i = *(i + 832))
    {
      v8 = *(v1 + 72);
      v9 = *(i + 88);
      ICEStopConnectivityCheck();
    }

    *v1 = 0x100000001;
    v10 = *(v1 + 16);
    if (v10 != -1)
    {
      *(v1 + 16) = -1;
      close(v10);
    }

    pthread_rwlock_unlock((v1 + 7192));
    do
    {
      do
      {
        select(0, 0, 0, 0, &v24);
      }

      while (*(v1 + 7176) && !*(v1 + 7516));
    }

    while (*(v1 + 7168) && !*(v1 + 7512));
    CheckOutHandleDebug();
    v11 = CheckInHandleDebug();
    pthread_rwlock_wrlock((v11 + 7192));
    for (j = *(v11 + 7184); j; j = *(j + 832))
    {
      *j = -1;
    }

    pthread_rwlock_unlock((v11 + 7192));
    v13 = *(v11 + 7168);
    if (v13)
    {
      *buf = 0;
      pthread_join(v13, buf);
    }

    v14 = *(v11 + 7176);
    if (v14)
    {
      *buf = 0;
      pthread_join(v14, buf);
    }

    CheckOutHandleDebug();
    StopEventCallbackThread(*(v11 + 408));
    *(v11 + 408) = 0;
    v15 = *(v11 + 72);
    ICECloseHandle();
    pthread_rwlock_wrlock((v11 + 7192));
    v16 = *(v11 + 7184);
    if (v16)
    {
      do
      {
        v17 = *(v16 + 832);
        gckSessionFreeCList(v16);
        v16 = v17;
      }

      while (v17);
    }

    pthread_rwlock_unlock((v11 + 7192));
    pthread_mutex_lock((v11 + 7400));
    v18 = *(v11 + 7392);
    if (v18)
    {
      do
      {
        v19 = v18[525];
        free(v18);
        v18 = v19;
      }

      while (v19);
    }

    pthread_mutex_unlock((v11 + 7400));
    pthread_mutex_destroy((v11 + 80));
    pthread_mutex_destroy((v11 + 7080));
    pthread_rwlock_destroy((v11 + 7192));
    pthread_mutex_destroy((v11 + 7400));
    pthread_cond_destroy((v11 + 7464));
    v20 = *(v11 + 7520);
    if (v20)
    {
      CFRelease(v20);
    }

    v21 = *(v11 + 7528);
    if (v21)
    {
      CFRelease(v21);
    }

    free(v11);
    result = 0;
  }

  else
  {
    result = 2149187586;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionRecvProc()
{
  v199 = *MEMORY[0x277D85DE8];
  v0 = -2145779708;
  v187.tv_sec = 0;
  *&v187.tv_usec = 0;
  pthread_setname_np("com.apple.multipeerconnectivity.gcksession.recvproc");
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    v0 = -2145779710;
    goto LABEL_343;
  }

  v2 = v1;
  memset(&v189, 0, sizeof(v189));
  v188.tv_sec = 0;
  *&v188.tv_usec = 0;
  global_queue = dispatch_get_global_queue(2, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, global_queue);
  if (!v4)
  {
    v172 = gcks_log();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      gckSessionRecvProc_cold_3();
    }

    goto LABEL_343;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __gckSessionRecvProc_block_invoke;
  handler[3] = &__block_descriptor_tmp_91;
  handler[4] = v2;
  source = v4;
  dispatch_source_set_event_handler(v4, handler);
  v5 = 0;
  v181 = micro() + 30.0;
  v182 = (v2 + 7184);
  while (1)
  {
    v6 = micro();
    if (v6 - *(v2 + 7144) > 15.0)
    {
      pthread_mutex_lock((v2 + 7080));
      *(v2 + 7144) = v6;
      TracePrintNodes(v2, *(v2 + 420), v2 + 424, 1, *(v2 + 416));
      pthread_mutex_unlock((v2 + 7080));
    }

    memset(&v189, 0, sizeof(v189));
    v7 = *(v2 + 408);
    v8 = micro();
    ServiceWaitEventCallbacks(v7, v8);
    pthread_rwlock_wrlock((v2 + 7192));
    if (*v2)
    {
      pthread_rwlock_unlock((v2 + 7192));
LABEL_336:
      v175 = source;
      goto LABEL_340;
    }

    if (*(v2 + 16) == -1)
    {
      v9 = socket(2, 1, 6);
      *(v2 + 16) = v9;
      if (v9 == -1)
      {
        break;
      }
    }

    v10 = micro();
    if (v10 >= v181)
    {
      v181 = v10 + 30.0;
      goto LABEL_303;
    }

    v11 = *(v2 + 16);
    if (__darwin_check_fd_set_overflow(v11, &v189, 0))
    {
      *(v189.fds_bits + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v11;
    }

    v12 = *(v2 + 16);
    v13 = *(v2 + 7184);
    if (v13)
    {
      v14 = v10 + 0.015;
      v15 = v10 + 0.5;
      v16 = v181;
      v17 = v182;
      while (1)
      {
        v184 = v17;
        v185 = v12;
        pthread_mutex_lock((v13 + 768));
        if ((*(v13 + 40) & 2) != 0 && (*(v13 + 80) & 0x80000000) == 0)
        {
          v18 = *(v13 + 600);
          if (!v18)
          {
            goto LABEL_28;
          }

          v19 = 0;
          v20 = (v13 + 600);
          do
          {
            if (*v18 == 8)
            {
              if (v19)
              {
                v21 = gcks_log();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Removing duplicate heartbeat.", buf, 2u);
                }

                free(*(v19 + 40));
                free(v19);
              }

              v22 = *(v18 + 64);
              *v20 = v22;
              v19 = v18;
            }

            else
            {
              v22 = *(v18 + 64);
              v20 = (v18 + 64);
            }

            v18 = v22;
          }

          while (v22);
          if (v19)
          {
            *v20 = v19;
            *(v19 + 64) = 0;
          }

          else
          {
LABEL_28:
            v23 = gcks_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v157 = *(v13 + 88);
              v158 = *(v13 + 72);
              *buf = 67109376;
              *v197 = v157;
              *&v197[4] = 1024;
              *&v197[6] = v158;
              _os_log_error_impl(&dword_239FB7000, v23, OS_LOG_TYPE_ERROR, "Expected heartbeat in the retry list not found for participant [%08X] channel [%d].", buf, 0xEu);
            }

            for (i = *v182; i; i = *(i + 832))
            {
              v25 = gcks_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = *(i + 88);
                v27 = v2;
                v29 = *(i + 60);
                v28 = *(i + 64);
                v30 = IPPORTToString();
                *v190 = 67109890;
                *v191 = v26;
                *&v191[4] = 1024;
                *&v191[6] = v29;
                LOWORD(v192) = 1024;
                *(&v192 + 2) = v28;
                v2 = v27;
                HIWORD(v192) = 2080;
                *v193 = v30;
                _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "Participant %08X: sentDD [%d], receivedDD [%d] address [%s].", v190, 0x1Eu);
              }

              for (j = *(i + 600); j; j = *(j + 8))
              {
                v32 = gcks_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = gckWaitForString(*j);
                  v34 = *(j + 1);
                  v35 = *(j + 2);
                  v36 = v10 - v34;
                  if (v34 == 0.0)
                  {
                    v36 = 0.0;
                  }

                  v37 = v35 - v10;
                  if (v35 == 0.0)
                  {
                    v37 = 0.0;
                  }

                  v38 = *(j + 4);
                  v39 = v38 - v10;
                  *v190 = 136315906;
                  *v191 = v33;
                  *&v191[8] = 2048;
                  if (v38 == 0.0)
                  {
                    v39 = 0.0;
                  }

                  v192 = v36;
                  *v193 = 2048;
                  *&v193[2] = v37;
                  v194 = 2048;
                  v195 = v39;
                  _os_log_impl(&dword_239FB7000, v32, OS_LOG_TYPE_DEFAULT, "    WaitFor [%s] timerAdd [%.1lf] nextFire [%.1lf] waitUntil [%.1lf].", v190, 0x2Au);
                }
              }
            }
          }
        }

        v40 = (v13 + 600);
        v41 = *(v13 + 600);
        v183 = (v13 + 600);
        if (v41)
        {
          while (1)
          {
            if (*(v41 + 2) != 0.0)
            {
              goto LABEL_70;
            }

            v42 = *(v41 + 5);
            if (v42)
            {
              break;
            }

            v47 = *v41;
            if (v47 == 12)
            {
              goto LABEL_58;
            }

            if (v47 == 11)
            {
              v48 = gckSessionPerformDTLSHandshake(v2, v13);
              v5 = v48;
              if (*(v13 + 640) == 1)
              {
                goto LABEL_206;
              }

              if (v48 < 0)
              {
                *v40 = *(v41 + 8);
                free(v41);
                v106 = gcks_log();
                if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_265;
                }

LABEL_211:
                v115 = *(v13 + 88);
                v116 = *(v13 + 72);
                *buf = 67109632;
                *v197 = v115;
                *&v197[4] = 1024;
                *&v197[6] = v116;
                *&v197[10] = 2048;
                *&v197[12] = v5;
                v103 = v106;
                v104 = "Perform DTLS Handshake for participant [%08X] on channel [%d] failed with hResult [%ld].";
                v105 = 24;
                goto LABEL_264;
              }

              v5 = 0;
LABEL_58:
              *(v41 + 4) = v10 + *(v41 + 4);
              *(v41 + 2) = v10 + *(v41 + 1);
LABEL_70:
              v47 = *v41;
            }

            if (v47 == 1 && !*(v41 + 5) && v10 >= *(v41 + 4))
            {
              v57 = *(v13 + 16);
              v58 = *(v13 + 352);
              if (v10 - v57 < v58)
              {
                *(v41 + 1) = 0x3FB0A3D70A3D70A4;
                v59 = v57 + v58;
                *(v41 + 4) = v59;
                *(v41 + 2) = v59;
              }
            }

            if (v10 < *(v41 + 4))
            {
              v60 = *(v41 + 2);
              if (v10 < v60 || !*(v41 + 5))
              {
                goto LABEL_198;
              }

              if (v47 > 3)
              {
                if (v47 == 4)
                {
                  v98 = gcks_log();
                  if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_186;
                  }

                  v99 = *(v41 + 28);
                  v100 = *(v13 + 88);
                  v101 = *(v13 + 72);
                  *buf = 67109632;
                  *v197 = v99;
                  *&v197[4] = 1024;
                  *&v197[6] = v100;
                  *&v197[10] = 1024;
                  *&v197[12] = v101;
                  v65 = v98;
                  v66 = "Retransmitting LSA with SN [%d] to participant [%08X] over channel [%d].";
                }

                else
                {
                  if (v47 != 8)
                  {
                    goto LABEL_186;
                  }

                  v80 = *(v13 + 360);
                  v81 = *(v13 + 48) + v80 * 0.5;
                  if (v81 >= *(v13 + 16) + v80 * 0.5)
                  {
                    v81 = *(v13 + 16) + v80 * 0.5;
                  }

                  *(v41 + 2) = v81;
                  *(v41 + 4) = v81 + v80 * 0.5;
                  v82 = gcks_log();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                  {
                    v139 = *(v13 + 88);
                    v140 = *(v41 + 2);
                    v141 = *(v41 + 4);
                    *buf = 67109888;
                    *v197 = v139;
                    *&v197[4] = 2048;
                    *&v197[6] = v10;
                    *&v197[14] = 2048;
                    *&v197[16] = v140;
                    *&v197[24] = 2048;
                    v198 = v141;
                    _os_log_debug_impl(&dword_239FB7000, v82, OS_LOG_TYPE_DEBUG, "Heartbeat state for [%08X]: Now [%.3lf] NextFire [%.3lf] WaitUntil [%.3lf].", buf, 0x26u);
                  }

                  v83 = *(v41 + 2);
                  if (v10 < v83)
                  {
                    v40 = v41 + 64;
                    if (v16 > v83)
                    {
                      v16 = *(v41 + 2);
                    }

                    goto LABEL_266;
                  }

                  v107 = gcks_log();
                  if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_186;
                  }

                  v108 = *(v41 + 28);
                  v109 = *(v13 + 88);
                  v110 = *(v13 + 72);
                  *buf = 67109632;
                  *v197 = v108;
                  *&v197[4] = 1024;
                  *&v197[6] = v109;
                  *&v197[10] = 1024;
                  *&v197[12] = v110;
                  v65 = v107;
                  v66 = "Retransmitting Heartbeat with SN [%d] to participant [%08X] over channel [%d].";
                }
              }

              else
              {
                if (v47 != 1)
                {
                  if (v47 == 2)
                  {
                    v61 = gcks_log();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      v62 = *(v41 + 28);
                      v63 = *(v13 + 88);
                      v64 = *(v13 + 72);
                      *buf = 67109632;
                      *v197 = v62;
                      *&v197[4] = 1024;
                      *&v197[6] = v63;
                      *&v197[10] = 1024;
                      *&v197[12] = v64;
                      v65 = v61;
                      v66 = "Retransmitting DD with SN [%d] to participant [%08X] over channel [%d].";
                      goto LABEL_185;
                    }
                  }

LABEL_186:
                  v111 = SendUDPPacketCList(v13, *(v41 + 5), *(v41 + 12), 0, 1);
                  v5 = v111;
                  if ((v111 & 0x80000000) == 0)
                  {
                    v112 = *v41;
                    goto LABEL_188;
                  }

                  if (v111 == -1072037876 || v111 == -1072037833)
                  {
                    v112 = *v41;
                    if (v111 != -1072037876 || v112 == 8)
                    {
                      goto LABEL_188;
                    }

                    *(v41 + 4) = v10 + *(v41 + 4) - *(v41 + 2) + 0.5;
                    *(v41 + 2) = v15;
                    v60 = v10 + 0.5;
                    v5 = -1072037876;
                  }

                  else
                  {
                    v112 = *v41;
                    if (v112 != 8 && v112 != 1 || !*(v13 + 80))
                    {
                      *v40 = *(v41 + 8);
                      v117 = *(v41 + 5);
                      if (v117)
                      {
                        free(v117);
                      }

                      free(v41);
                      if (v112 != 8)
                      {
                        v118 = gcks_log();
                        if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_265;
                        }

                        *buf = 67109120;
                        *v197 = v5;
                        v103 = v118;
                        v104 = "SendUDPPacketCList failed with error (%X).";
                        goto LABEL_156;
                      }

                      goto LABEL_256;
                    }

                    *(v13 + 80) = -1;
LABEL_188:
                    if (v112 == 1 && *(v41 + 6))
                    {
                      v60 = v14 + vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * 0.005;
                      *(v41 + 2) = v60;
                      --*(v41 + 6);
                    }

                    else
                    {
                      *(v41 + 6) = 0;
                      v60 = v10 + *(v41 + 1) + vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * 0.02;
                      v113 = *(v41 + 1) + *(v41 + 1);
                      *(v41 + 1) = v113;
                      *(v41 + 2) = v60;
                      if (v113 > 1.0)
                      {
                        *(v41 + 1) = vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * 0.02 + 1.0;
                        v60 = *(v41 + 2);
                      }
                    }
                  }

LABEL_198:
                  if (v10 >= v60 && *v41 == 11)
                  {
                    v114 = gckSessionPerformDTLSHandshake(v2, v13);
                    v5 = v114;
                    if (*(v13 + 640) != 1)
                    {
                      if (v114 < 0)
                      {
                        *v40 = *(v41 + 8);
                        free(v41);
                        v106 = gcks_log();
                        if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_265;
                        }

                        goto LABEL_211;
                      }

                      v5 = 0;
                      v60 = v10 + *(v41 + 1);
                      *(v41 + 2) = v60;
                      goto LABEL_203;
                    }
                  }

                  else
                  {
LABEL_203:
                    if (v10 < v60 || *v41 != 12)
                    {
                      goto LABEL_208;
                    }

                    if (*(v13 + 376) != 3)
                    {
                      v60 = v10 + *(v41 + 1);
                      *(v41 + 2) = v60;
LABEL_208:
                      v40 = v41 + 64;
                      if (v16 > v60)
                      {
                        v16 = v60;
                      }

                      goto LABEL_266;
                    }
                  }

LABEL_206:
                  *v40 = *(v41 + 8);
                  free(v41);
                  goto LABEL_266;
                }

                v94 = gcks_log();
                if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_186;
                }

                v95 = *(v41 + 28);
                v96 = *(v13 + 88);
                v97 = *(v13 + 72);
                *buf = 67109632;
                *v197 = v95;
                *&v197[4] = 1024;
                *&v197[6] = v96;
                *&v197[10] = 1024;
                *&v197[12] = v97;
                v65 = v94;
                v66 = "Retransmitting Hello with SN [%d] to participant [%08X] over channel [%d].";
              }

LABEL_185:
              _os_log_impl(&dword_239FB7000, v65, OS_LOG_TYPE_DEFAULT, v66, buf, 0x14u);
              goto LABEL_186;
            }

            *v40 = *(v41 + 8);
            v67 = *(v41 + 5);
            if (v67)
            {
              free(v67);
            }

            free(v41);
            v68 = gcks_log();
            v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
            if (v47 <= 7)
            {
              if (v47 != 1)
              {
                if (v47 != 2)
                {
                  if (v47 == 4)
                  {
                    if (v69)
                    {
                      v70 = *(v13 + 376);
                      if (v70 > 2)
                      {
                        switch(v70)
                        {
                          case 3:
                            v71 = "Connected";
                            break;
                          case 4:
                            v71 = "Disconnected";
                            break;
                          case 255:
                            v71 = "Invalid";
                            break;
                          default:
                            goto LABEL_242;
                        }
                      }

                      else if (v70)
                      {
                        if (v70 == 1)
                        {
                          v71 = "ICE";
                        }

                        else
                        {
                          if (v70 == 2)
                          {
                            v71 = "Connecting";
                            goto LABEL_250;
                          }

LABEL_242:
                          v71 = "?";
                        }
                      }

                      else
                      {
                        v71 = "Created";
                      }

LABEL_250:
                      v127 = *(v13 + 88);
                      v128 = *(v13 + 72);
                      *buf = 67109634;
                      *v197 = v127;
                      *&v197[4] = 1024;
                      *&v197[6] = v128;
                      *&v197[10] = 2080;
                      *&v197[12] = v71;
                      v121 = v68;
                      v122 = "LSAACK timeout expired for participant [%08X] on channel [%d] state [%s].";
LABEL_255:
                      _os_log_impl(&dword_239FB7000, v121, OS_LOG_TYPE_DEFAULT, v122, buf, 0x18u);
                    }

LABEL_256:
                    attempt_failover(v2, v13);
                    goto LABEL_266;
                  }

LABEL_130:
                  if (!v69)
                  {
                    goto LABEL_256;
                  }

                  v88 = *(v13 + 376);
                  if (v88 > 2)
                  {
                    switch(v88)
                    {
                      case 3:
                        v89 = "Connected";
                        goto LABEL_245;
                      case 4:
                        v89 = "Disconnected";
                        goto LABEL_245;
                      case 255:
                        v89 = "Invalid";
                        goto LABEL_245;
                    }
                  }

                  else
                  {
                    switch(v88)
                    {
                      case 0:
                        v89 = "Created";
                        goto LABEL_245;
                      case 1:
                        v89 = "ICE";
                        goto LABEL_245;
                      case 2:
                        v89 = "Connecting";
LABEL_245:
                        v125 = *(v13 + 88);
                        v126 = *(v13 + 72);
                        *buf = 67109634;
                        *v197 = v125;
                        *&v197[4] = 1024;
                        *&v197[6] = v126;
                        *&v197[10] = 2080;
                        *&v197[12] = v89;
                        v121 = v68;
                        v122 = "Unknown timeout expired for participant [%08X] on channel [%d] state [%s].";
                        goto LABEL_255;
                    }
                  }

                  v89 = "?";
                  goto LABEL_245;
                }

                if (!v69)
                {
                  goto LABEL_256;
                }

                v90 = *(v13 + 376);
                if (v90 > 2)
                {
                  switch(v90)
                  {
                    case 3:
                      v91 = "Connected";
                      goto LABEL_254;
                    case 4:
                      v91 = "Disconnected";
                      goto LABEL_254;
                    case 255:
                      v91 = "Invalid";
                      goto LABEL_254;
                  }
                }

                else
                {
                  switch(v90)
                  {
                    case 0:
                      v91 = "Created";
                      goto LABEL_254;
                    case 1:
                      v91 = "ICE";
                      goto LABEL_254;
                    case 2:
                      v91 = "Connecting";
LABEL_254:
                      v129 = *(v13 + 88);
                      v130 = *(v13 + 72);
                      *buf = 67109634;
                      *v197 = v129;
                      *&v197[4] = 1024;
                      *&v197[6] = v130;
                      *&v197[10] = 2080;
                      *&v197[12] = v91;
                      v121 = v68;
                      v122 = "DD timeout expired for participant [%08X] on channel [%d] state [%s].";
                      goto LABEL_255;
                  }
                }

                v91 = "?";
                goto LABEL_254;
              }

              if (!v69)
              {
                goto LABEL_256;
              }

              v84 = *(v13 + 376);
              if (v84 > 2)
              {
                switch(v84)
                {
                  case 3:
                    v85 = "Connected";
                    goto LABEL_237;
                  case 4:
                    v85 = "Disconnected";
                    goto LABEL_237;
                  case 255:
                    v85 = "Invalid";
                    goto LABEL_237;
                }
              }

              else
              {
                switch(v84)
                {
                  case 0:
                    v85 = "Created";
                    goto LABEL_237;
                  case 1:
                    v85 = "ICE";
                    goto LABEL_237;
                  case 2:
                    v85 = "Connecting";
LABEL_237:
                    v119 = *(v13 + 88);
                    v120 = *(v13 + 72);
                    *buf = 67109634;
                    *v197 = v119;
                    *&v197[4] = 1024;
                    *&v197[6] = v120;
                    *&v197[10] = 2080;
                    *&v197[12] = v85;
                    v121 = v68;
                    v122 = "Hello timeout expired for participant [%08X] on channel [%d] state [%s].";
                    goto LABEL_255;
                }
              }

              v85 = "?";
              goto LABEL_237;
            }

            if (v47 == 8)
            {
              if (!v69)
              {
                goto LABEL_256;
              }

              v86 = *(v13 + 376);
              if (v86 > 2)
              {
                switch(v86)
                {
                  case 3:
                    v87 = "Connected";
                    goto LABEL_239;
                  case 4:
                    v87 = "Disconnected";
                    goto LABEL_239;
                  case 255:
                    v87 = "Invalid";
                    goto LABEL_239;
                }
              }

              else
              {
                switch(v86)
                {
                  case 0:
                    v87 = "Created";
                    goto LABEL_239;
                  case 1:
                    v87 = "ICE";
                    goto LABEL_239;
                  case 2:
                    v87 = "Connecting";
LABEL_239:
                    v123 = *(v13 + 88);
                    v124 = *(v13 + 72);
                    *buf = 67109634;
                    *v197 = v123;
                    *&v197[4] = 1024;
                    *&v197[6] = v124;
                    *&v197[10] = 2080;
                    *&v197[12] = v87;
                    v121 = v68;
                    v122 = "Heartbeat timeout expired for participant [%08X] on channel [%d] state [%s].";
                    goto LABEL_255;
                }
              }

              v87 = "?";
              goto LABEL_239;
            }

            if (v47 == 12)
            {
              if (v69)
              {
                v92 = *(v13 + 376);
                if (v92 > 2)
                {
                  switch(v92)
                  {
                    case 3:
                      v93 = "Connected";
                      break;
                    case 4:
                      v93 = "Disconnected";
                      break;
                    case 255:
                      v93 = "Invalid";
                      break;
                    default:
                      goto LABEL_247;
                  }
                }

                else if (v92)
                {
                  if (v92 == 1)
                  {
                    v93 = "ICE";
                  }

                  else
                  {
                    if (v92 == 2)
                    {
                      v93 = "Connecting";
                      goto LABEL_258;
                    }

LABEL_247:
                    v93 = "?";
                  }
                }

                else
                {
                  v93 = "Created";
                }

LABEL_258:
                v131 = *(v13 + 88);
                v132 = *(v13 + 72);
                *buf = 67109634;
                *v197 = v131;
                *&v197[4] = 1024;
                *&v197[6] = v132;
                *&v197[10] = 2080;
                *&v197[12] = v93;
                _os_log_impl(&dword_239FB7000, v68, OS_LOG_TYPE_DEFAULT, "ICE timeout expired for participant [%08X] on channel [%d] state [%s].", buf, 0x18u);
              }

              v133 = *(v13 + 376);
              v134 = gcks_log();
              v79 = v134;
              if (v133 != 3)
              {
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_263;
                }

                goto LABEL_265;
              }

              if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
              {
LABEL_261:
                v135 = *(v13 + 88);
                v136 = *(v13 + 72);
                *buf = 67109376;
                *v197 = v135;
                *&v197[4] = 1024;
                *&v197[6] = v136;
                _os_log_impl(&dword_239FB7000, v79, OS_LOG_TYPE_DEFAULT, "Participant [%08X] on channel [%d] already connected, ignore this timeout.", buf, 0xEu);
                goto LABEL_266;
              }

              goto LABEL_266;
            }

            if (v47 != 11)
            {
              goto LABEL_130;
            }

            if (v69)
            {
              v72 = *(v13 + 88);
              v73 = *(v13 + 72);
              v74 = *(v13 + 640);
              v75 = "?";
              if (!v74)
              {
                v75 = "DTLSNotConnected";
              }

              v146 = v74 == 1;
              v76 = "DTLSConnected";
              if (!v146)
              {
                v76 = v75;
              }

              *buf = 67109634;
              *v197 = v72;
              *&v197[4] = 1024;
              *&v197[6] = v73;
              *&v197[10] = 2080;
              *&v197[12] = v76;
              _os_log_impl(&dword_239FB7000, v68, OS_LOG_TYPE_DEFAULT, "DTLS Handshake timeout expired for participant [%08X] on channel [%d] DTLS state [%s].", buf, 0x18u);
            }

            v77 = *(v13 + 640);
            v78 = gcks_log();
            v79 = v78;
            if (v77 != 1)
            {
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
LABEL_263:
                v137 = *(v13 + 88);
                v138 = *(v13 + 72);
                *buf = 67109376;
                *v197 = v137;
                *&v197[4] = 1024;
                *&v197[6] = v138;
                v103 = v79;
                v104 = "Not in connected state, so giving up for participant [%08X] on channel [%d].";
                v105 = 14;
LABEL_264:
                _os_log_error_impl(&dword_239FB7000, v103, OS_LOG_TYPE_ERROR, v104, buf, v105);
              }

LABEL_265:
              gckSessionChangeStateCList(v2, v13);
              goto LABEL_266;
            }

            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_261;
            }

LABEL_266:
            v41 = *v40;
            if (!*v40)
            {
              goto LABEL_267;
            }
          }

          v5 = SendUDPPacketCList(v13, v42, *(v41 + 12), 0, 1);
          v43 = gcks_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = gckWaitForString(*v41);
            v45 = *(v13 + 88);
            v46 = *(v13 + 72);
            *buf = 136315906;
            *v197 = v44;
            *&v197[8] = 1024;
            *&v197[10] = v45;
            *&v197[14] = 1024;
            *&v197[16] = v46;
            *&v197[20] = 1024;
            *&v197[22] = v5;
            _os_log_impl(&dword_239FB7000, v43, OS_LOG_TYPE_DEFAULT, "Sent %s packet to participant %08X on channel %d with error %d.", buf, 0x1Eu);
          }

          if (v5 < 0)
          {
            if (v5 == -1072037876)
            {
              *(v41 + 4) = v10 + *(v41 + 4) - *(v41 + 2) + 0.5;
              *(v41 + 2) = v15;
              v5 = -1072037876;
              goto LABEL_70;
            }

            if (v5 != -1072037833)
            {
              v52 = *v41;
              if (v52 != 8 && v52 != 1 || !*(v13 + 80))
              {
                *v40 = *(v41 + 8);
                free(*(v41 + 5));
                free(v41);
                v102 = gcks_log();
                if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_265;
                }

                *buf = 67109120;
                *v197 = v5;
                v103 = v102;
                v104 = "Send UDP packet failed with error (%X).";
LABEL_156:
                v105 = 8;
                goto LABEL_264;
              }

              v53 = gcks_log();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = gckWaitForString(*v41);
                v55 = *(v13 + 88);
                v56 = *(v13 + 72);
                *buf = 136315650;
                *v197 = v54;
                *&v197[8] = 1024;
                *&v197[10] = v55;
                *&v197[14] = 1024;
                *&v197[16] = v56;
                _os_log_impl(&dword_239FB7000, v53, OS_LOG_TYPE_DEFAULT, "Failed to send %s packet to participant %08X. Will mark channel %d as invalid.", buf, 0x18u);
              }

              *(v13 + 80) = -1;
            }
          }

          if (*v41 == 1 && *(v41 + 6))
          {
            *(v41 + 2) = v14 + vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * 0.005;
            *(v41 + 4) = v10 + *(v41 + 4);
            --*(v41 + 6);
          }

          else
          {
            *(v41 + 6) = 0;
            v49 = v10 + *(v41 + 1);
            v50 = arc4random();
            *(v41 + 4) = v10 + *(v41 + 4);
            v51 = *(v41 + 1) + *(v41 + 1);
            *(v41 + 1) = v51;
            *(v41 + 2) = v49 + vcvtd_n_f64_u32(v50 & 0x7FFFFFFF, 0x1FuLL) * 0.02;
            if (v51 > 1.0)
            {
              *(v41 + 1) = vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * 0.02 + 1.0;
            }
          }

          goto LABEL_70;
        }

LABEL_267:
        v142 = *(v13 + 8);
        if (!*(v13 + 56) || v142 != 0.0)
        {
          goto LABEL_282;
        }

        v143 = *v183;
        if (*v183)
        {
          break;
        }

LABEL_281:
        *(v13 + 600) = 0;
        pthread_mutex_unlock((v13 + 768));
        v17 = v184;
        *v184 = *(v13 + 832);
        gckSessionFreeCList(v13);
        v12 = v185;
LABEL_295:
        v13 = *v17;
        if (!*v17)
        {
          goto LABEL_298;
        }
      }

      v144 = *v183;
      while (1)
      {
        v145 = *v144;
        v146 = v145 == 8 || v145 == 1;
        if (!v146)
        {
          break;
        }

        v144 = *(v144 + 8);
        if (!v144)
        {
          if (v143)
          {
            do
            {
              v147 = *(v143 + 8);
              v148 = *(v143 + 5);
              if (v148)
              {
                free(v148);
              }

              free(v143);
              v143 = v147;
            }

            while (v147);
          }

          goto LABEL_281;
        }
      }

LABEL_282:
      if (v142 == 0.0 || v142 > micro())
      {
        pthread_mutex_unlock((v13 + 768));
        if (*(v13 + 376) == 4)
        {
          v149 = gcks_log();
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            v150 = *v13;
            v151 = *(v13 + 72);
            v152 = *(v13 + 88);
            *buf = 67109632;
            *v197 = v150;
            *&v197[4] = 1024;
            *&v197[6] = v151;
            *&v197[10] = 1024;
            *&v197[12] = v152;
            _os_log_impl(&dword_239FB7000, v149, OS_LOG_TYPE_DEFAULT, "Don't read from socket %d channel %d for disconnected participant %08X.", buf, 0x14u);
          }
        }

        else
        {
          v153 = *v13;
          if (__darwin_check_fd_set_overflow(*v13, &v189, 0))
          {
            *(v189.fds_bits + ((v153 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v153;
          }
        }

        v17 = (v13 + 832);
        if (*v13 <= v185)
        {
          v12 = v185;
        }

        else
        {
          v12 = *v13;
        }
      }

      else
      {
        pthread_mutex_unlock((v13 + 768));
        v154 = gcks_log();
        v12 = v185;
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          v155 = *(v13 + 88);
          v156 = *(v13 + 72);
          *buf = 67109376;
          *v197 = v155;
          *&v197[4] = 1024;
          *&v197[6] = v156;
          _os_log_impl(&dword_239FB7000, v154, OS_LOG_TYPE_DEFAULT, "Closing connection to participant [%08X] on channel [%d].", buf, 0xEu);
        }

        v17 = v184;
        *v184 = *(v13 + 832);
        gckSessionFreeCList(v13);
      }

      goto LABEL_295;
    }

    v16 = v181;
LABEL_298:
    pthread_rwlock_unlock((v2 + 7192));
    v159 = v16 - v10;
    if (v159 > 0.0)
    {
      v160 = dispatch_time(0, (v159 * 1000000000.0));
      dispatch_source_set_timer(source, v160, 0xFFFFFFFFFFFFFFFFLL, (v159 / 10.0 * 1000000000.0));
      dispatch_resume(source);
      v188.tv_sec = v159;
      v188.tv_usec = ((v159 - v159) * 1000000.0);
      v161 = select(v12 + 1, &v189, 0, 0, &v188);
      dispatch_suspend(source);
      v162 = micro();
      if (v161 == -1)
      {
        if (*__error() != 9)
        {
          v5 = *__error() | 0xC01A0000;
          v173 = gcks_log();
          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            gckSessionRecvProc_cold_1();
          }

          goto LABEL_336;
        }
      }

      else
      {
        v163 = v162;
        if (v161)
        {
          gettimeofday(&v187, 0);
        }

        if (v163 > v16)
        {
          v181 = micro() + 30.0;
        }

        if (v161)
        {
          v164 = *(v2 + 16);
          if (v164 != -1)
          {
            if (__darwin_check_fd_set_overflow(*(v2 + 16), &v189, 0))
            {
              if ((*(v189.fds_bits + ((v164 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v164))
              {
                close(*(v2 + 16));
                *(v2 + 16) = -1;
                v165 = gcks_log();
                if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_239FB7000, v165, OS_LOG_TYPE_DEFAULT, "Read condition for pGCKSession->sReset.", buf, 2u);
                }
              }
            }
          }

          pthread_rwlock_rdlock((v2 + 7192));
          for (k = *v182; k; k = *(k + 832))
          {
            v167 = *k;
            if (__darwin_check_fd_set_overflow(*k, &v189, 0) && ((*(v189.fds_bits + ((v167 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v167) & 1) != 0)
            {
              v188.tv_sec = 0;
              v188.tv_usec = 0;
              do
              {
                v168 = *k;
                if (!__darwin_check_fd_set_overflow(*k, &v189, 0) || ((*(v189.fds_bits + ((v168 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v168) & 1) == 0)
                {
                  break;
                }

                micro();
                v169 = gckSessionRecvMessage(v2, k);
                if (v169 < 0 && (v169 == -1072037831 || v169 == -2145779679))
                {
                  v170 = gcks_log();
                  if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                  {
                    v171 = *k;
                    *buf = 67109120;
                    *v197 = v171;
                    _os_log_impl(&dword_239FB7000, v170, OS_LOG_TYPE_DEFAULT, "Socket %d is no longer connected.", buf, 8u);
                  }

                  pthread_mutex_lock((k + 768));
                  gckSessionChangeStateCList(v2, k);
                  pthread_mutex_unlock((k + 768));
                  break;
                }
              }

              while (select(v12 + 1, &v189, 0, 0, &v188) > 0);
            }
          }

LABEL_303:
          pthread_rwlock_unlock((v2 + 7192));
        }
      }
    }
  }

  v5 = *__error() | 0xC01A0000;
  v176 = gcks_log();
  v175 = source;
  if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
  {
    gckSessionRecvProc_cold_2();
  }

  pthread_rwlock_unlock((v2 + 7192));
LABEL_340:
  v177 = gcks_log();
  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v197 = v5;
    _os_log_impl(&dword_239FB7000, v177, OS_LOG_TYPE_DEFAULT, "RecvProc thread end (%X).", buf, 8u);
  }

  *(v2 + 7512) = 1;
  dispatch_resume(v175);
  dispatch_source_cancel(v175);
  dispatch_release(v175);
  CheckOutHandleDebug();
  v0 = v5;
LABEL_343:
  v178 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t gckSessionSendProc()
{
  v16 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.multipeerconnectivity.gcksession.sendproc");
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    v13.tv_sec = 0;
    *&v13.tv_usec = 0;
    while (!*(v1 + 4))
    {
      v2 = *(v1 + 408);
      if (v2 && *(v2 + 24))
      {
        pthread_mutex_lock((v1 + 7080));
        v3 = *(v1 + 408);
        v4 = *(v3 + 168);
        if (v4 <= 0)
        {
          pthread_mutex_unlock((v1 + 7080));
        }

        else
        {
          v5 = 0;
          do
          {
            if (v4 <= 0x10)
            {
              *&buf[4 * v5++] = *(v3 + 172 + 4 * (v4 - 1));
              v4 = *(v3 + 168);
            }

            v6 = __OFSUB__(v4--, 1);
            *(v3 + 168) = v4;
          }

          while (!((v4 < 0) ^ v6 | (v4 == 0)));
          pthread_mutex_unlock((v1 + 7080));
          if (v5 >= 1)
          {
            v7 = v5;
            v8 = buf;
            do
            {
              HIDWORD(v12) = 1;
              BYTE2(v12) = 0;
              LOWORD(v12) = 0;
              (*(*(v1 + 408) + 24))(*(*(v1 + 408) + 32), v8, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, v12);
              v8 += 4;
              --v7;
            }

            while (v7);
          }
        }

        HIDWORD(v12) = 1;
        BYTE2(v12) = 0;
        LOWORD(v12) = 0;
        (*(*(v1 + 408) + 24))(*(*(v1 + 408) + 32), 0, 0, 0, 0, 0, 0, 0, v12);
      }

      v13.tv_sec = 0;
      v13.tv_usec = 25000;
      select(0, 0, 0, 0, &v13);
    }

    v9 = gcks_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = 0;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "SendProc thread end (%X).", buf, 8u);
    }

    *(v1 + 7516) = 1;
    CheckOutHandleDebug();
    result = 0;
  }

  else
  {
    result = -2145779710;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionDisposeAllConnections(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7192));
  pthread_mutex_lock((a1 + 7080));
  v2 = *(a1 + 708);
  v3 = a1 + 712;
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = gcks_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v3 + 8 * i);
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Disposing connection to participant %08X. Stop ICE check.", buf, 8u);
      }

      v7 = *(a1 + 72);
      v8 = *(v3 + 8 * i);
      ICEStopConnectivityCheck();
      v9 = *(v3 + 8 * i);
      v10 = *(a1 + 420);
      v11 = (a1 + 424);
      if (v10 < 1)
      {
LABEL_8:
        gckSessionDisconnectParticipant(a1, v9, 0, 0, 1);
      }

      else
      {
        while (*v11 != v9)
        {
          v11 += 104;
          if (!--v10)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  if (v2)
  {
    gckSessionCancelRecvUDPInternal(a1);
  }

  memcpy(buf, (a1 + 424), sizeof(buf));
  *&buf[284] = 0;
  gckSessionRequestLSAUpdateForNode(buf);
  gckSessionSendLSA(a1, 1u, buf, -1, 1);
  while (1)
  {
    v13 = *(a1 + 708);
    if (!v13)
    {
      break;
    }

    gckSessionDeleteNeighbor(a1, (v3 + 8 * v13 - 8));
  }

  *(a1 + 696) = *&buf[272];
  gckSessionUpdateRoutingTable(a1, v12);
  gckSessionHandleRemainingDisconnectedNodes(a1, 1);
  pthread_mutex_unlock((a1 + 7080));
  result = pthread_rwlock_unlock((a1 + 7192));
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void gckSessionFreeCList(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = gcks_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 72);
    v13[0] = 67109376;
    v13[1] = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Closing clist for participant [%08X] channel [%d].", v13, 0xEu);
  }

  pthread_mutex_lock((a1 + 768));
  v5 = *(a1 + 632);
  if (v5)
  {
    SSLClose(v5);
    CFRelease(*(a1 + 632));
    *(a1 + 632) = 0;
  }

  pthread_mutex_unlock((a1 + 768));
  v6 = *(a1 + 648);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 648) = 0;
  }

  v7 = *(a1 + 656);
  if (v7)
  {
    do
    {
      v8 = v7[525];
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 600);
  if (v9)
  {
    do
    {
      v10 = v9[8];
      v11 = v9[5];
      if (v11)
      {
        free(v11);
      }

      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  close(*a1);
  pthread_mutex_destroy((a1 + 768));
  free(*(a1 + 688));
  free(a1);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t GCKSessionPrepareConnection(uint64_t a1, int a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    v12 = 2149187586;
    goto LABEL_134;
  }

  v4 = v3;
  v94 = -2145779690;
  v98 = 0;
  *(v3 + 64) = 0;
  v5 = micro();
  v6 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = __GCKSessionPrepareConnection_block_invoke;
  aBlock[3] = &__block_descriptor_tmp;
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  pthread_mutex_lock((v4 + 80));
  v8 = 0;
  v9 = (v4 + 152);
  v10 = 16;
  do
  {
    if (*(v9 - 2) == a2 && *v9)
    {
      pthread_mutex_unlock((v4 + 80));
      dispatch_release(v6);
      v13 = gcks_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 67109120;
        *&buf[0].sa_data[2] = a2;
        _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Another PrepareConnection is already waiting for participant [%08X], bailing.", &buf[0].sa_len, 8u);
      }

      goto LABEL_133;
    }

    if (v10 == 16)
    {
      if (*v9)
      {
        v10 = 16;
      }

      else
      {
        v10 = v8;
      }
    }

    ++v8;
    v9 += 2;
  }

  while (v8 != 16);
  if (v10 == 16)
  {
    pthread_mutex_unlock((v4 + 80));
    dispatch_release(v6);
    v11 = gcks_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *&buf[0].sa_len = 67109120;
      *&buf[0].sa_data[2] = a2;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "No empty signal block slot for participant [%08X].", &buf[0].sa_len, 8u);
    }

    goto LABEL_133;
  }

  v14 = gcks_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = a2;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = v10;
    _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Insert signal block for participant [%08X] at slot %d.", &buf[0].sa_len, 0xEu);
  }

  v15 = v4 + 144 + 16 * v10;
  *v15 = a2;
  *(v15 + 8) = v7;
  pthread_mutex_unlock((v4 + 80));
  v16 = *(v4 + 72);
  if (ICEStopConnectivityCheck() == -2146107370)
  {
    gckCallICEListRemoveSignalBlock(v4, a2);
    v17 = 0;
  }

  else
  {
    gckSessionCancelRecvUDPInternal(v4);
    pthread_rwlock_wrlock((v4 + 7192));
    v18 = *(v4 + 7184);
    if (v18)
    {
      v19 = (v4 + 7184);
      do
      {
        if (*(v18 + 88) == a2)
        {
          *v19 = *(v18 + 832);
          gckSessionFreeCList(v18);
        }

        else
        {
          v19 = (v18 + 832);
        }

        v18 = *v19;
      }

      while (*v19);
    }

    pthread_rwlock_unlock((v4 + 7192));
    global_queue = dispatch_get_global_queue(2, 0);
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, global_queue);
    v17 = v21;
    if (v21)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __GCKSessionPrepareConnection_block_invoke_11;
      handler[3] = &__block_descriptor_tmp_12;
      v96 = a2;
      handler[4] = v4;
      dispatch_source_set_event_handler(v21, handler);
      v22 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v17, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v17);
    }
  }

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
  if (v17)
  {
    dispatch_source_cancel(v17);
    dispatch_release(v17);
  }

  v23 = micro();
  v24 = gcks_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 134218240;
    *&buf[0].sa_data[2] = v23 - v5;
    *&buf[0].sa_data[10] = 1024;
    *&buf[0].sa_data[12] = a2;
    _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "ICE StopConnectivityCheck took (%0.6f seconds) for participant [%08X].", &buf[0].sa_len, 0x12u);
  }

  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (!LocalInterfaceListWithOptions)
  {
    FreeLocalInterfaceList();
    v85 = gcks_log();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      GCKSessionPrepareConnection_cold_5();
    }

    goto LABEL_133;
  }

  v26 = LocalInterfaceListWithOptions;
  v27 = gcks_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = v26;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = a2;
    _os_log_impl(&dword_239FB7000, v27, OS_LOG_TYPE_DEFAULT, "%d interfaces found for participant [%08X].", &buf[0].sa_len, 0xEu);
  }

  if (v26 < 1)
  {
    v93 = 0;
    goto LABEL_125;
  }

  v28 = 0;
  v93 = 0;
  v29 = v26;
  v92 = 1;
  do
  {
    while (1)
    {
      if ((*(v98 + 40 * v28 + 1) & 1) != 0 && *(v4 + 7536))
      {
        v30 = gcks_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = IPPORTToString();
          *v120 = 136315138;
          v121 = v31;
          _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "AWDL is disabled. Will not create socket for %s.", v120, 0xCu);
        }

        goto LABEL_60;
      }

      v32 = if_nametoindex((v98 + 40 * v28 + 4));
      v33 = v98;
      v34 = *(v4 + 400);
      v119 = 0;
      v106 = 0;
      memset(&v105, 0, sizeof(v105));
      v104 = 0;
      memset(buf, 0, sizeof(buf));
      v35 = malloc_type_calloc(1uLL, 0x348uLL, 0x10B0040FFDF9BCEuLL);
      if (!v35)
      {
        break;
      }

      v36 = v35;
      v37 = (v33 + 40 * v28);
      v35[22] = a2;
      v35[18] = v34;
      *(v35 + 10) = -1;
      v35[94] = 0;
      v38 = *v37;
      v39 = v37[1];
      *(v35 + 52) = *(v37 + 4);
      *(v35 + 24) = v38;
      *(v35 + 25) = v39;
      v40 = *v37;
      if (*v37)
      {
        ai_family = 30;
      }

      else
      {
        ai_family = 2;
      }

      memset(&v105.ai_socktype, 0, 40);
      v105.ai_flags = 5;
      v105.ai_family = ai_family;
      v105.ai_socktype = 2;
      if (v40)
      {
        if (*(v37 + 20) != *MEMORY[0x277D85EE8] || *(v37 + 28) != *(MEMORY[0x277D85EE8] + 8))
        {
LABEL_47:
          v42 = IPToString();
          goto LABEL_56;
        }
      }

      else if (*(v37 + 5))
      {
        goto LABEL_47;
      }

      v42 = 0;
LABEL_56:
      __sprintf_chk(v107, 0, 6uLL, "%u", *(v37 + 18));
      v45 = getaddrinfo(v42, v107, &v105, &v104);
      if (v45)
      {
        v46 = v45;
        v47 = gcks_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *v110 = 67109120;
          *&v110[4] = v46 | 0xB01A0000;
          _os_log_error_impl(&dword_239FB7000, v47, OS_LOG_TYPE_ERROR, "Getaddrinfo failed (%X).", v110, 8u);
        }

LABEL_59:
        free(v36);
        goto LABEL_60;
      }

      v48 = v104;
      if (!v104)
      {
        v50 = gcks_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          GCKSessionPrepareConnection_cold_2(&v102, v103);
        }

        goto LABEL_59;
      }

      v49 = v104;
      while (v49->ai_family != ai_family)
      {
        v49 = v49->ai_next;
        if (!v49)
        {
          ai_family = v104->ai_family;
          goto LABEL_70;
        }
      }

      v48 = v49;
LABEL_70:
      v51 = socket(ai_family, v48->ai_socktype, v48->ai_protocol);
      *v36 = v51;
      if (v51 == -1)
      {
        v55 = *__error();
        v56 = gcks_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *v110 = 67109120;
          *&v110[4] = v55 | 0xC00F0000;
          _os_log_error_impl(&dword_239FB7000, v56, OS_LOG_TYPE_ERROR, "Socket failed (%X).", v110, 8u);
        }

        freeaddrinfo(v104);
        goto LABEL_59;
      }

      v101 = 1;
      if (v40)
      {
        setsockopt(v51, 41, 27, &v101, 4u);
        if (*(v37 + 1))
        {
          *v110 = 1;
          setsockopt(*v36, 0xFFFF, 4356, v110, 4u);
        }

        v52 = *v36;
        v53 = 41;
        v54 = 61;
      }

      else
      {
        *v110 = if_nametoindex(v37 + 4);
        setsockopt(*v36, 0, 25, v110, 4u);
        setsockopt(*v36, 0, 7, &v101, 4u);
        v52 = *v36;
        v53 = 0;
        v54 = 20;
      }

      setsockopt(v52, v53, v54, &v101, 4u);
      v100 = 1;
      setsockopt(*v36, 0xFFFF, 4130, &v100, 4u);
      v99 = 500;
      setsockopt(*v36, 0xFFFF, 4230, &v99, 4u);
      ai_addr = v48->ai_addr;
      v58 = 16402;
      do
      {
        *ai_addr->sa_data = bswap32(v58) >> 16;
        if (!bind(*v36, v48->ai_addr, v48->ai_addrlen))
        {
          freeaddrinfo(v104);
          goto LABEL_86;
        }

        --v58;
      }

      while (v58 >= 0x4000u);
      *ai_addr->sa_data = 0;
      v59 = bind(*v36, v48->ai_addr, v48->ai_addrlen);
      freeaddrinfo(v104);
      if (v59)
      {
        v60 = *__error();
        v61 = gcks_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *v110 = 67109120;
          *&v110[4] = v60 | 0xC00F0000;
          v62 = v61;
          v63 = "Bind failed (%X) for all ports in range.";
          goto LABEL_97;
        }

        goto LABEL_93;
      }

LABEL_86:
      v106 = 128;
      if (getsockname(*v36, buf, &v106) == -1)
      {
        v68 = *__error();
        v69 = gcks_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *v110 = 67109120;
          *&v110[4] = v68 | 0xC01A0000;
          v62 = v69;
          v63 = "Getsockname failed (%X).";
LABEL_97:
          _os_log_error_impl(&dword_239FB7000, v62, OS_LOG_TYPE_ERROR, v63, v110, 8u);
        }

LABEL_93:
        close(*v36);
        free(v36);
        goto LABEL_60;
      }

      SAToIPPORT();
      *(v36 + 210) = WORD2(v119);
      v64 = gcks_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = IPPORTToString();
        v66 = *v36;
        *v110 = 67109890;
        *&v110[4] = a2;
        *v111 = 2080;
        *&v111[2] = v65;
        v112 = 2080;
        v113 = v36 + 97;
        v114 = 1024;
        v115 = v66;
        _os_log_impl(&dword_239FB7000, v64, OS_LOG_TYPE_DEFAULT, "For remoteID[%08X]: Start listening on %s (%s) sock %d.", v110, 0x22u);
      }

      *(v36 + 46) = 0;
      *v110 = 0;
      *v111 = 0;
      if (pthread_mutexattr_init(v110))
      {
        v67 = gcks_log();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          GCKSessionPrepareConnection_cold_1(&v108, v109);
        }

        goto LABEL_93;
      }

      pthread_mutexattr_settype(v110, 2);
      pthread_mutex_init(v36 + 12, v110);
      pthread_mutexattr_destroy(v110);
      *(v36 + 86) = malloc_type_calloc(0x10uLL, 0x1A0uLL, 0x10000405F3595DEuLL);
      *(v36 + 45) = 0x404DFEB851EB851FLL;
      *(v36 + 44) = *(v4 + 24);
      v36[19] = v32;
      v70 = *(v4 + 72);
      if ((ICEAddOneInterface() & 0x80000000) != 0)
      {
        gckSessionFreeCList(v36);
        goto LABEL_60;
      }

      v71 = gcks_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 67109376;
        *&buf[0].sa_data[2] = a2;
        *&buf[0].sa_data[6] = 1024;
        *&buf[0].sa_data[8] = 6;
        _os_log_impl(&dword_239FB7000, v71, OS_LOG_TYPE_DEFAULT, "Added interface for participant [%08X]: proto %d.", &buf[0].sa_len, 0xEu);
      }

      pthread_rwlock_wrlock((v4 + 7192));
      v72 = (v4 + 7184);
      do
      {
        v73 = v72;
        v74 = *v72;
        v72 = (*v72 + 208);
      }

      while (v74);
      *v73 = v36;
      pthread_mutex_lock(v36 + 12);
      if (*(v4 + 7544))
      {
        v75 = 13.0;
      }

      else
      {
        v75 = 1.0;
      }

      v76 = *(v36 + 75);
      if (v76)
      {
        while (1)
        {
          v77 = v76;
          if (*v76 == 12)
          {
            break;
          }

          v76 = *(v76 + 64);
          if (!v76)
          {
            v78 = (v77 + 64);
            goto LABEL_110;
          }
        }

        *(v76 + 8) = v75;
        *(v76 + 16) = 0;
        *(v76 + 32) = 0x4024000000000000;
        *(v76 + 52) = v36[22];
      }

      else
      {
        v78 = (v36 + 150);
LABEL_110:
        v79 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
        *v79 = 12;
        v79[1] = v75;
        v79[2] = 0.0;
        v79[4] = 10.0;
        *(v79 + 13) = v36[22];
        *v78 = v79;
      }

      v80 = gcks_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v36[22];
        v82 = v36[18];
        *&buf[0].sa_len = 67109376;
        *&buf[0].sa_data[2] = v81;
        *&buf[0].sa_data[6] = 1024;
        *&buf[0].sa_data[8] = v82;
        _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Scheduling ICE connection timeout for participant [%08X] on channel [%d].", &buf[0].sa_len, 0xEu);
      }

      pthread_mutex_unlock(v36 + 12);
      v83 = *(v4 + 16);
      if (v83 != -1)
      {
        *(v4 + 16) = -1;
        close(v83);
      }

      pthread_rwlock_unlock((v4 + 7192));
      ++*(v4 + 400);
      v92 = 0;
      ++v93;
      if (++v28 == v29)
      {
        goto LABEL_119;
      }
    }

    v43 = gcks_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      GCKSessionPrepareConnection_cold_3(&v116, v117);
    }

LABEL_60:
    ++v28;
  }

  while (v28 != v29);
  if (v92)
  {
    goto LABEL_125;
  }

LABEL_119:
  pthread_rwlock_rdlock((v4 + 7192));
  v84 = *(v4 + 16);
  if (v84 != -1)
  {
    *(v4 + 16) = -1;
    close(v84);
  }

  pthread_rwlock_unlock((v4 + 7192));
LABEL_125:
  FreeLocalInterfaceList();
  v86 = gcks_log();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = v93;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = a2;
    _os_log_impl(&dword_239FB7000, v86, OS_LOG_TYPE_DEFAULT, "%d valid interfaces found for participant [%08X].", &buf[0].sa_len, 0xEu);
  }

  if (v93)
  {
    v87 = *(v4 + 72);
    v88 = ICEGetCandidates();
    if ((v88 & 0x80000000) != 0)
    {
      v94 = v88;
      v89 = gcks_log();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        GCKSessionPrepareConnection_cold_4();
      }
    }

    else
    {
      v94 = 0;
    }
  }

LABEL_133:
  CheckOutHandleDebug();
  v12 = v94;
LABEL_134:
  v90 = *MEMORY[0x277D85DE8];
  return v12;
}

void gckCallICEListRemoveSignalBlock(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 80));
  v4 = 0;
  v5 = (a1 + 152);
  while (*(v5 - 2) != a2 || !*v5)
  {
    ++v4;
    v5 += 2;
    if (v4 == 16)
    {
      pthread_mutex_unlock((a1 + 80));
      goto LABEL_6;
    }
  }

  v7 = gcks_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109376;
    v11 = a2;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Remove signal block for participant [%08X] at slot %d.", &v10, 0xEu);
  }

  v8 = *v5;
  *v5 = 0;
  *(v5 - 2) = -1;
  pthread_mutex_unlock((a1 + 80));
  if (v8)
  {
    v8[2](v8);
    _Block_release(v8);
    goto LABEL_12;
  }

LABEL_6:
  v6 = gcks_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "No signal block found for participant [%08X].", &v10, 8u);
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t gckSessionCancelRecvUDPInternal(uint64_t a1)
{
  if (!a1)
  {
    return 2149187588;
  }

  pthread_mutex_lock((a1 + 7400));
  *(a1 + 8) = 1;
  pthread_cond_broadcast((a1 + 7464));
  pthread_mutex_unlock((a1 + 7400));
  return 0;
}

void __GCKSessionPrepareConnection_block_invoke_11(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = gcks_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "ICE connectivity check failsafe timer for participant [%08X] fired!", v5, 8u);
  }

  gckCallICEListRemoveSignalBlock(*(a1 + 32), *(a1 + 40));
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t GCKSessionCertificateDecision(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_rwlock_rdlock((v5 + 7192));
    v7 = *(v6 + 7184);
    if (v7)
    {
      v8 = 0;
      v9 = *(v6 + 7184);
      do
      {
        if (*(v9 + 88) == a2)
        {
          v10 = *(v9 + 80);
          if (v10 >= v8)
          {
            v8 = v10 + 1;
          }
        }

        v9 = *(v9 + 832);
      }

      while (v9);
      v11 = 0;
      do
      {
        if (*(v7 + 88) == a2)
        {
          pthread_mutex_lock((v7 + 768));
          if (*(v7 + 628) == 1 && *(v7 + 648))
          {
            if (a3)
            {
              v12 = gcks_log();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(v7 + 88);
                v14 = *(v7 + 72);
                v15 = *(v7 + 632);
                v19[0] = 67109888;
                v19[1] = v13;
                v20 = 1024;
                v21 = v14;
                v22 = 2048;
                v23 = v15;
                v24 = 2048;
                v25 = v7;
                _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Starting OSPF Hello protocol with participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v19, 0x22u);
              }

              *(v7 + 80) = v8;
              *(v7 + 84) = v8++;
              v16 = _Block_copy(*(v7 + 648));
              v11 = 1;
            }

            else
            {
              gckSessionChangeStateCList(v6, v7);
              v16 = 0;
            }

            *(v7 + 628) = 0;
            _Block_release(*(v7 + 648));
            *(v7 + 648) = 0;
            pthread_mutex_unlock((v7 + 768));
            if (v16)
            {
              v16[2](v16);
              _Block_release(v16);
            }
          }

          else
          {
            if (!a3)
            {
              gckSessionChangeStateCList(v6, v7);
            }

            pthread_mutex_unlock((v7 + 768));
          }
        }

        v7 = *(v7 + 832);
      }

      while (v7);
      if (v11)
      {
        gckSessionReconcileChannelPriority(v6, a2);
      }
    }

    pthread_rwlock_unlock((v6 + 7192));
    CheckOutHandleDebug();
    result = 0;
  }

  else
  {
    result = 2149187586;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionChangeStateCList(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v110 = *MEMORY[0x277D85DE8];
  result = 2149187628;
  v9 = *(v3 + 376);
  v10 = 4;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (v9)
      {
        goto LABEL_172;
      }

      *(v3 + 696) = micro();
      v10 = 1;
      goto LABEL_22;
    }

    if (v9 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(v3 + 376);
    }

    if (v4 == 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 4;
    }

LABEL_21:
    if (v9 == v10)
    {
      goto LABEL_172;
    }

LABEL_22:
    v12 = gcks_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v13 = "Connected";
        goto LABEL_39;
      }

      if (v9 != 4)
      {
        if (v9 == 255)
        {
          v13 = "Invalid";
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v13 = "Disconnected";
    }

    else
    {
      if (!v9)
      {
        v13 = "Created";
        goto LABEL_39;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v13 = "Connecting";
          goto LABEL_39;
        }

LABEL_36:
        v13 = "?";
        goto LABEL_39;
      }

      v13 = "ICE";
    }

LABEL_39:
    v14 = v6[22];
    v15 = v6[18];
    v16 = off_278B44388[v5];
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v17 = "Connected";
          goto LABEL_53;
        case 4:
          v17 = "Disconnected";
          goto LABEL_53;
        case 255:
          v17 = "Invalid";
          goto LABEL_53;
      }
    }

    else
    {
      switch(v10)
      {
        case 0:
          v17 = "Created";
          goto LABEL_53;
        case 1:
          v17 = "ICE";
          goto LABEL_53;
        case 2:
          v17 = "Connecting";
LABEL_53:
          *buf = 67110146;
          *v104 = v14;
          *&v104[4] = 1024;
          *&v104[6] = v15;
          *v105 = 2080;
          *&v105[2] = v16;
          v106 = 2080;
          v107 = v13;
          v108 = 2080;
          v109 = v17;
          _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Participant %08X, channel [%d]: State Change with event %s: %s -> %s.", buf, 0x2Cu);
LABEL_54:
          v6[94] = v10;
          if (v10 == 3)
          {
            InterfacePriorityForCList = gckSessionGetInterfacePriorityForCList(v7, v6);
            if ((InterfacePriorityForCList - 3) >= 5)
            {
              v36 = InterfacePriorityForCList;
              v37 = gcks_log();
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
              v35 = 0;
              if (v38)
              {
                *buf = 67109120;
                *v104 = v36;
                _os_log_impl(&dword_239FB7000, v37, OS_LOG_TYPE_DEFAULT, "Unexpected interface interface priority [%d].", buf, 8u);
                v35 = 0;
              }
            }

            else
            {
              v35 = dword_239FEC398[InterfacePriorityForCList - 3];
            }

            v6[95] = v35;
            gckSessionReconcileChannelPriority(v7, v6[22]);
            goto LABEL_171;
          }

          if (v10 != 4)
          {
LABEL_171:
            result = 0;
            goto LABEL_172;
          }

          pthread_mutex_lock((v7 + 7080));
          if ((v9 & 0xFFFFFFFE) == 2 && !v6[20])
          {
            v43 = gcks_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v6[18];
              v45 = v6[22];
              *buf = 67109376;
              *v104 = v44;
              *&v104[4] = 1024;
              *&v104[6] = v45;
              _os_log_impl(&dword_239FB7000, v43, OS_LOG_TYPE_DEFAULT, "The disconnected channel [%d] was the active channel for participant [%08X].", buf, 0xEu);
            }

            v101 = 1;
          }

          else
          {
            v101 = 0;
          }

          v6[20] = -1;
          gckSessionReconcileChannelPriority(v7, v6[22]);
          v19 = *(v7 + 7184);
          if (v19)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            do
            {
              if (v19 != v6 && *(v19 + 88) == v6[22])
              {
                v23 = *(v19 + 376);
                switch(v23)
                {
                  case 3:
                    if (!*(v19 + 80))
                    {
                      v30 = gcks_log();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = *(v19 + 72);
                        v32 = *(v19 + 88);
                        *buf = 67109376;
                        *v104 = v31;
                        *&v104[4] = 1024;
                        *&v104[6] = v32;
                        _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "Channel [%d] is active and connected for participant [%08X].", buf, 0xEu);
                      }

                      v101 = 0;
                      v22 = 1;
                    }

                    break;
                  case 2:
                    v27 = gcks_log();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      v28 = *(v19 + 72);
                      v29 = *(v19 + 88);
                      *buf = 67109376;
                      *v104 = v28;
                      *&v104[4] = 1024;
                      *&v104[6] = v29;
                      _os_log_impl(&dword_239FB7000, v27, OS_LOG_TYPE_DEFAULT, "Connection attempt in progress on channel [%d] for participant [%08X].", buf, 0xEu);
                    }

                    v21 = 1;
                    break;
                  case 1:
                    v24 = gcks_log();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      v25 = *(v19 + 72);
                      v26 = *(v19 + 88);
                      *buf = 67109376;
                      *v104 = v25;
                      *&v104[4] = 1024;
                      *&v104[6] = v26;
                      _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "ICE is still in progress on channel [%d] for participant [%08X].", buf, 0xEu);
                    }

                    v20 = 1;
                    break;
                }
              }

              v19 = *(v19 + 832);
            }

            while (v19);
            v33 = v22 != 0;
          }

          else
          {
            v33 = 0;
            v21 = 0;
            v20 = 0;
          }

          v39 = 0;
          if (!v20 && !v21 && !v33)
          {
            v40 = *(v7 + 708);
            v41 = gcks_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v6[22];
              *buf = 67109120;
              *v104 = v42;
              _os_log_impl(&dword_239FB7000, v41, OS_LOG_TYPE_DEFAULT, "No connected or connecting cList to [%08X].", buf, 8u);
            }

            if (v40 < 1)
            {
LABEL_93:
              v39 = 0;
            }

            else
            {
              v18 = (v7 + 712);
              while (*v18 != v6[22])
              {
                v18 += 2;
                if (!--v40)
                {
                  goto LABEL_93;
                }
              }

              gckSessionDeleteNeighbor(v7, v18);
              gckSessionUpdateRoutingTable(v7, v46);
              gckSessionRequestLSAUpdateForNode((v7 + 424));
              v39 = 1;
            }
          }

          v47 = (v7 + 424);
          v48 = *(v7 + 420);
          v100 = v33;
          if (v48 < 1)
          {
LABEL_102:
            v52 = 0;
            v53 = 1;
          }

          else
          {
            v49 = v6[22];
            v50 = (v7 + 424);
            v51 = *(v7 + 420);
            while (*v50 != v49)
            {
              v50 += 104;
              if (!--v51)
              {
                goto LABEL_102;
              }
            }

            v54 = (v7 + 428);
            while (*(v54 - 1) != v49)
            {
              v54 += 104;
              if (!--v48)
              {
                v52 = 0;
                goto LABEL_108;
              }
            }

            v52 = *v54 != -1;
LABEL_108:
            v55 = gcks_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = "a";
              v57 = v6[22];
              if (!v52)
              {
                v56 = "NO";
              }

              *buf = 136315394;
              *v104 = v56;
              *&v104[8] = 1024;
              *v105 = v57;
              _os_log_impl(&dword_239FB7000, v55, OS_LOG_TYPE_DEFAULT, "There is %s valid route to participant [%08X].", buf, 0x12u);
            }

            v53 = 0;
          }

          if ((v5 & 0xFFFFFFFE) == 4 && v101 && v9 == 3)
          {
            v58 = *(v7 + 708);
            if (v58 < 1)
            {
              LODWORD(v59) = 0;
            }

            else
            {
              v59 = 0;
              v60 = (v7 + 712);
              while (1)
              {
                v61 = *v60;
                v60 += 2;
                if (v61 == v6[22])
                {
                  break;
                }

                if (v58 == ++v59)
                {
                  goto LABEL_129;
                }
              }
            }

            if (v59 == v58 || (v62 = v7 + 712 + 8 * v59, v64 = *(v62 + 4), v63 = (v62 + 4), v64 == -1))
            {
LABEL_129:
              if (!v52)
              {
                goto LABEL_149;
              }
            }

            else
            {
              *v63 = -1;
              v65 = v53;
              gckSessionUpdateRoutingTable(v7, v18);
              v53 = v65;
              v66 = *(v7 + 420);
              if (v66 < 1)
              {
                goto LABEL_149;
              }

              v67 = (v7 + 428);
              while (*(v67 - 1) != v6[22])
              {
                v67 += 104;
                if (!--v66)
                {
                  goto LABEL_149;
                }
              }

              if (*v67 == -1)
              {
                goto LABEL_149;
              }
            }

            v68 = gcks_log();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = v6[22];
              *buf = 67109120;
              *v104 = v69;
              _os_log_impl(&dword_239FB7000, v68, OS_LOG_TYPE_DEFAULT, "Remain (indirectly) connected to participant %08X.", buf, 8u);
            }

            gckSessionRequestLSAUpdateForNode((v7 + 424));
            gckSessionSendLSA(v7, *(v7 + 420), v7 + 424, v6[22], 0);
            v102 = 0;
            gckSessionFindAndRemoveDisconnectedNodes(v7, buf, &v102);
            v70 = v5 == 4;
            v71 = v102;
            if (v102 >= 1)
            {
              v72 = 0;
              do
              {
                v73 = &buf[416 * v72];
                v74 = *v73;
                v75 = *v73 == v6[22] && v70;
                gckSessionDisconnectParticipant(v7, *v73, v73 + 9, v73[8], v75);
                for (i = *(v7 + 7184); i; i = *(i + 832))
                {
                  if (*(i + 88) == v74)
                  {
                    gckSessionScheduleCListClose(i, v75);
                  }
                }

                ++v72;
              }

              while (v72 != v71);
            }

            v77 = *(v7 + 7184);
            if (v77)
            {
              v78 = v6[22];
              do
              {
                if (*(v77 + 88) == v78)
                {
                  gckSessionScheduleCListClose(v77, v70);
                }

                v77 = *(v77 + 832);
              }

              while (v77);
            }

LABEL_170:
            pthread_mutex_unlock((v7 + 7080));
            goto LABEL_171;
          }

LABEL_149:
          if (v101)
          {
            if (!v52 || v9 != 2)
            {
              goto LABEL_173;
            }
          }

          else
          {
            v79 = v100;
            if (v20 | v21)
            {
              v79 = 1;
            }

            if ((v79 & 1) == 0 && !v52)
            {
              if (v9 == 3)
              {
                v80 = gcks_log();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v81 = v6[18];
                  v82 = v6[22];
                  *buf = 67109376;
                  *v104 = v81;
                  *&v104[4] = 1024;
                  *&v104[6] = v82;
                  _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Channel [%d] wasn't active for participant [%08X]. Keeping connection open.", buf, 0xEu);
                }

                v83 = v39;
LABEL_190:
                if (v83)
                {
                  gckSessionSendLSA(v7, *(v7 + 420), v7 + 424, v6[22], 0);
                }

                goto LABEL_170;
              }

LABEL_173:
              v90 = v53;
              v91 = gcks_log();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                v92 = v6[22];
                *buf = 67109120;
                *v104 = v92;
                _os_log_impl(&dword_239FB7000, v91, OS_LOG_TYPE_DEFAULT, "Disconnected from a participant %08X. Stop ICE check.", buf, 8u);
              }

              v93 = *(v7 + 72);
              v94 = v6[22];
              ICEStopConnectivityCheck();
              if (!v90)
              {
                v98 = gckSessionHandleDeletedNode(v7, v6[22], (v5 & 0xFFFFFFFE) == 4);
                gckSessionSendLSA(v7, *(v7 + 420), v7 + 424, v6[22], 0);
                gckSessionHandleRemainingDisconnectedNodes(v7, 0);
                if (v5 == 4 && v98 == -2145779690)
                {
                  v99 = *(v7 + 420);
                  if (v99 >= 1)
                  {
                    while (*v47 != v6[22])
                    {
                      v47 += 104;
                      if (!--v99)
                      {
                        goto LABEL_170;
                      }
                    }

                    gckSessionDeleteDisconnectedNode(v7, v47);
                  }
                }

                goto LABEL_170;
              }

              v95 = *(v7 + 708);
              v96 = v6[22];
              if (v95 < 1)
              {
                v83 = v39;
              }

              else
              {
                v97 = (v7 + 712);
                v83 = v39;
                while (*v97 != v96)
                {
                  v97 += 2;
                  if (!--v95)
                  {
                    goto LABEL_189;
                  }
                }

                gckSessionDeleteNeighbor(v7, v97);
                gckSessionRequestLSAUpdateForNode((v7 + 424));
                v96 = v6[22];
                v83 = 1;
              }

LABEL_189:
              gckSessionDisconnectParticipant(v7, v96, 0, 0, 1);
              goto LABEL_190;
            }
          }

          if (!v20)
          {
            v84 = *(v7 + 72);
            v85 = v6[22];
            if (ICEStopConnectivityCheck() != -2146107370)
            {
              gckSessionCancelRecvUDPInternal(v7);
            }
          }

          if (v101)
          {
            if (v52 && v9 == 2)
            {
              v86 = gcks_log();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                v87 = v6[18];
                v88 = v6[22];
                *buf = 67109376;
                *v104 = v87;
                *&v104[4] = 1024;
                *&v104[6] = v88;
                _os_log_impl(&dword_239FB7000, v86, OS_LOG_TYPE_DEFAULT, "Last channel [%d] closed for participant [%08X], but we are still indirectly connected.", buf, 0xEu);
              }
            }
          }

          gckSessionScheduleCListClose(v6, 1);
          goto LABEL_170;
      }
    }

    v17 = "?";
    goto LABEL_53;
  }

  if (v4 == 2)
  {
    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = *(v3 + 376);
    }

    goto LABEL_21;
  }

  if (v4 == 3)
  {
    if (v9 <= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = *(v3 + 376);
    }

    goto LABEL_21;
  }

  if (v4 != 4)
  {
    goto LABEL_21;
  }

  if (v9 <= 3 && v9 != 1)
  {
    goto LABEL_22;
  }

LABEL_172:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void gckSessionReconcileChannelPriority(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = gcks_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v54 = a2;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Reconcile Channel Priority for participant [%08X].", buf, 8u);
  }

  v4 = *(a1 + 7184);
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = 0;
  v6 = 0;
  InterfacePriorityForCList = 0;
  v8 = 0;
  do
  {
    if (*(v4 + 88) == a2)
    {
      v9 = *(v4 + 80);
      if (*(v4 + 376) == 3 && v9 >= 0)
      {
        ++v6;
      }

      if (v9)
      {
        v8 = 1;
      }

      else
      {
        InterfacePriorityForCList = gckSessionGetInterfacePriorityForCList(a1, v4);
        v8 = 1;
        v5 = v4;
      }
    }

    v4 = *(v4 + 832);
  }

  while (v4);
  v49 = v5;
  v11 = *(a1 + 7184);
  if (!v11)
  {
    if (v8)
    {
      goto LABEL_65;
    }

LABEL_67:
    v46 = gcks_log();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    *buf = 67109120;
    *v54 = a2;
    v43 = "Couldn't find a clist for participant [%08X].";
LABEL_69:
    v44 = v46;
    goto LABEL_70;
  }

  v50 = v8;
  v48 = InterfacePriorityForCList;
  v12 = 0;
  v13 = 0;
  do
  {
    if (*(v11 + 88) != a2)
    {
      goto LABEL_49;
    }

    v14 = gcks_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v11 + 72);
      v16 = *(v11 + 80);
      *buf = 67109376;
      *v54 = v15;
      *&v54[4] = 1024;
      *&v54[6] = v16;
      _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Channel [%d] priority [%d].", buf, 0xEu);
    }

    if (v6 && *(v11 + 376) != 3)
    {
      v28 = gcks_log();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v29 = *(v11 + 376);
      if (v29 > 2)
      {
        switch(v29)
        {
          case 3:
            v30 = "Connected";
            goto LABEL_48;
          case 4:
            v30 = "Disconnected";
            goto LABEL_48;
          case 255:
            v30 = "Invalid";
            goto LABEL_48;
        }
      }

      else
      {
        switch(v29)
        {
          case 0:
            v30 = "Created";
            goto LABEL_48;
          case 1:
            v30 = "ICE";
            goto LABEL_48;
          case 2:
            v30 = "Connecting";
LABEL_48:
            *buf = 136315138;
            *v54 = v30;
            _os_log_impl(&dword_239FB7000, v28, OS_LOG_TYPE_DEFAULT, "Not in connected state, currently %s. Skipping.", buf, 0xCu);
            goto LABEL_49;
        }
      }

      v30 = "?";
      goto LABEL_48;
    }

    if ((*(v11 + 80) & 0x80000000) == 0)
    {
      v17 = gckSessionGetInterfacePriorityForCList(a1, v11);
      if (!v17)
      {
        v18 = gcks_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v11 + 384);
          *buf = 136315394;
          *v54 = v11 + 388;
          *&v54[8] = 1024;
          *&v54[10] = v19;
          _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find a valid priority for interface [%s] flags [%08X].", buf, 0x12u);
        }
      }

      v20 = gcks_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a2;
        v22 = v13;
        v23 = v12;
        v24 = *(v11 + 72);
        v25 = *(v11 + 80);
        v51 = *(v11 + 384);
        v26 = GCKSessionInterfaceNameForPriority(v17);
        *buf = 136316418;
        *v54 = v11 + 388;
        *&v54[8] = 1024;
        *&v54[10] = v24;
        v12 = v23;
        v13 = v22;
        a2 = v21;
        *&v54[14] = 1024;
        *&v54[16] = v25;
        *&v54[20] = 1024;
        *&v54[22] = v51;
        *&v54[26] = 1024;
        *&v54[28] = v17;
        v55 = 2080;
        v56 = v26;
        _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Checking pCList if[%s] chan[%d] cList priority [%d] flags[%08X] interface priority [%d-%s].", buf, 0x2Eu);
      }

      v27 = v13 < v17;
      if (v13 <= v17)
      {
        v13 = v17;
      }

      if (v27)
      {
        v12 = v11;
      }
    }

LABEL_49:
    v11 = *(v11 + 832);
  }

  while (v11);
  if (!v50)
  {
    goto LABEL_67;
  }

  if (!v13)
  {
LABEL_65:
    v46 = gcks_log();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    *buf = 67109120;
    *v54 = a2;
    v43 = "Unknown interface for participant [%08X].";
    goto LABEL_69;
  }

  v31 = gcks_log();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v32)
    {
      v33 = GCKSessionInterfaceNameForPriority(v48);
      v34 = GCKSessionInterfaceNameForPriority(v13);
      *buf = 67109890;
      *v54 = v48;
      *&v54[4] = 2080;
      *&v54[6] = v33;
      *&v54[14] = 1024;
      *&v54[16] = v13;
      *&v54[20] = 2080;
      *&v54[22] = v34;
      _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Currently active clist priority %d-%s; highest interface priority %d-%s.", buf, 0x22u);
    }

    if (v13 > v48)
    {
      if (v12[20])
      {
        if (v49)
        {
          v35 = gcks_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v12[18];
            v37 = *(v49 + 72);
            v38 = v12[20];
            *buf = 67109888;
            *v54 = v36;
            *&v54[4] = 1024;
            *&v54[6] = 0;
            *&v54[10] = 1024;
            *&v54[12] = v37;
            *&v54[16] = 1024;
            *&v54[18] = v38;
            _os_log_impl(&dword_239FB7000, v35, OS_LOG_TYPE_DEFAULT, "Interface Switch! Setting priority of channel [%d] to [%d] and [%d] to [%d].", buf, 0x1Au);
          }

          *(v49 + 80) = v12[20];
        }

        v12[20] = 0;
      }

      v39 = gcks_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = GCKSessionInterfaceNameForPriority(v13);
        v41 = v12[18];
        v42 = v12[96];
        *buf = 136315906;
        *v54 = v40;
        *&v54[8] = 2080;
        *&v54[10] = v12 + 97;
        *&v54[18] = 1024;
        *&v54[20] = v41;
        *&v54[24] = 1024;
        *&v54[26] = v42;
        v43 = "Now connected over interface [%s]; Active pCList: if[%s] chan[%d] flags[%08X].";
        v44 = v39;
        v45 = 34;
        goto LABEL_71;
      }
    }

    goto LABEL_72;
  }

  if (!v32)
  {
    goto LABEL_72;
  }

  *buf = 67109120;
  *v54 = a2;
  v43 = "No clist with iPriority >= 0 and interface priority < GCK_IF_PRIORITY_NONE for participant [%08X].";
  v44 = v31;
LABEL_70:
  v45 = 8;
LABEL_71:
  _os_log_impl(&dword_239FB7000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
LABEL_72:
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t GCKSessionEstablishConnection(uint64_t a1, int a2, int a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = 2149187603;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    v27 = 0;
    v10 = ICEGetCallInfoForConnectionData();
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    pthread_rwlock_rdlock((v9 + 7192));
    for (i = *(v9 + 7184); i; i = *(i + 832))
    {
      if (*(i + 88) == a2)
      {
        pthread_mutex_lock((i + 768));
        *(i + 612) = a4;
        *(i + 620) = a3;
        if (a3)
        {
          v12 = 1;
        }

        else
        {
          v12 = *(v9 + 7520) != 0;
        }

        *(i + 616) = v12;
        if (a4)
        {
          v12 = 1;
        }

        *(i + 624) = v12;
        pthread_mutex_unlock((i + 768));
      }
    }

    pthread_rwlock_unlock((v9 + 7192));
    if (v27 != *(v9 + 416))
    {
      v16 = gcks_log();
      v7 = 2149187616;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        GCKSessionEstablishConnection_cold_1(&v27, (v9 + 416));
      }

      goto LABEL_35;
    }

    pthread_mutex_lock((v9 + 7080));
    v13 = *(v9 + 708);
    if (v13 > 15)
    {
      v14 = gcks_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Max number of nodes reached.", buf, 2u);
      }

      pthread_mutex_unlock((v9 + 7080));
      v15 = gcks_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        GCKSessionEstablishConnection_cold_2();
      }

      goto LABEL_35;
    }

    if (v13 < 1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v17 = 0;
      v18 = (v9 + 712);
      while (1)
      {
        v19 = *v18;
        v18 += 2;
        if (v19 == a2)
        {
          break;
        }

        if (v13 == ++v17)
        {
          goto LABEL_28;
        }
      }
    }

    if (v17 == v13)
    {
LABEL_28:
      v20 = (v9 + 712 + 8 * v13);
      *v20 = a2;
      v20[1] = -1;
      *(v9 + 708) = v13 + 1;
    }

    pthread_mutex_unlock((v9 + 7080));
    v21 = gcks_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = a2;
      _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Update ICE role for participant %08X.", buf, 8u);
    }

    v22 = *(v9 + 72);
    *(v9 + 416);
    ICEUpdateRole();
    v23 = *(v9 + 72);
    v10 = ICEStartConnectivityCheck();
    if ((v10 & 0x80000000) != 0)
    {
LABEL_34:
      v7 = v10;
LABEL_35:
      CheckOutHandleDebug();
      goto LABEL_36;
    }

    gckSessionChangeState(v9, a2);
    CheckOutHandleDebug();
    v24 = gcks_log();
    v7 = 0;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = a2;
      _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "ICE started with participant %08X.", buf, 8u);
      v7 = 0;
    }
  }

  else
  {
    v7 = 2149187586;
  }

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t gckSessionChangeState(uint64_t a1, int a2)
{
  v4 = 2149187606;
  pthread_rwlock_rdlock((a1 + 7192));
  for (i = *(a1 + 7184); i; i = *(i + 832))
  {
    if (*(i + 88) == a2)
    {
      pthread_mutex_lock((i + 768));
      v4 = gckSessionChangeStateCList(a1, i);
      pthread_mutex_unlock((i + 768));
    }
  }

  pthread_rwlock_unlock((a1 + 7192));
  return v4;
}

uint64_t GCKSessionDisposeConnection(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  v4 = gckSessionChangeState(v3, a2);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = gcks_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      GCKSessionDisposeConnection_cold_1();
    }
  }

  CheckOutHandleDebug();
  return v4;
}

uint64_t GCKSessionDisposeAllConnections()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149187586;
  }

  gckSessionDisposeAllConnections(v0);
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSendTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned int a10, int a11)
{
  v11 = (MEMORY[0x28223BE20])();
  v75 = v12;
  v76 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v77 = v22;
  v23 = v11;
  v84 = *MEMORY[0x277D85DE8];
  memset(v81, 0, sizeof(v81));
  (MEMORY[0x28223BE20])();
  v78 = v67 - v24;
  v80 = CheckInHandleDebug();
  if (v80)
  {
    v67[0] = v23;
    v67[1] = v67;
    *&v81[0] = v19;
    DWORD2(v81[0]) = v17;
    if (v21 < 1)
    {
      v71 = -2145779666;
    }

    else
    {
      v69 = a11;
      v73 = a10;
      v72 = a9;
      v26 = v21;
      *&v25 = 67109120;
      v70 = v25;
      v74 = v21;
      v27 = v77;
      v28 = v78;
      v29 = v15;
      v30 = v80;
      do
      {
        NextHop = gckSessionFindNextHop(v30, *v27);
        *v28 = NextHop;
        if (NextHop == -1)
        {
          v33 = gcks_log();
          NextHop = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (NextHop)
          {
            v34 = *v27;
            v83[0] = v70;
            v83[1] = v34;
            _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "No next hop for participant [%08X] in the routing table.", v83, 8u);
          }

          if (v15)
          {
            *v29 = -2145779666;
          }
        }

        ++v29;
        ++v28;
        ++v27;
        --v26;
      }

      while (v26);
      v35 = 0;
      v36 = v15 + 1;
      v37 = (v77 + 1);
      v38 = v78 + 4;
      v39 = v30;
      v40 = v74;
      v41 = v74 - 1;
      v68 = (v39 + 433);
      v71 = -2145779666;
      v42 = v69;
      do
      {
        v43 = *&v78[4 * v35];
        if (v43 == -1)
        {
          ++v35;
        }

        else
        {
          v79 = v67;
          MEMORY[0x28223BE20](NextHop, v32);
          v47 = (v67 - ((v46 + 15) & 0x7FFFFFFF0));
          *v47 = v77[v35];
          if (v15)
          {
            v15[v35] = v45;
          }

          if (++v35 >= v44)
          {
            v53 = 1;
          }

          else
          {
            v48 = 1;
            v49 = v41;
            v50 = v38;
            v51 = v37;
            v52 = v36;
            do
            {
              if (*v50 == v43)
              {
                v53 = (v48 + 1);
                v47[v48] = *v51;
                *v50 = v45;
                if (v15)
                {
                  *v52 = v45;
                }
              }

              else
              {
                v53 = v48;
              }

              ++v52;
              ++v51;
              v50 += 4;
              v48 = v53;
              --v49;
            }

            while (v49);
          }

          v54 = v80;
          NextHop = OSPFMakeData(v83, 4096, v81, 0, v73, *(v80 + 416), v47, v53, *(*(v80 + 408) + 24), *(*(v80 + 408) + 32), v75, v76, v72);
          if (NextHop < 1)
          {
            v55 = -2145779698;
          }

          else
          {
            NextHop = SendUDPPacketToParticipantChannelID(v54, v83, NextHop, v43, v42, -1, 1);
            v55 = -2145779670;
            if (NextHop == -2145779670)
            {
              v56 = gcks_log();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v82[0] = v70;
                v82[1] = v43;
                _os_log_impl(&dword_239FB7000, v56, OS_LOG_TYPE_DEFAULT, "SendUDPPacket failed with error GCK_E_INVALIDSOCKET (nextHop == %08X).", v82, 8u);
              }

              v57 = v80;
              pthread_mutex_lock((v80 + 7080));
              v58 = *(v57 + 408);
              v59 = *(v58 + 168);
              if (v59 < 1)
              {
                LODWORD(v60) = 0;
                v42 = v69;
              }

              else
              {
                v60 = 0;
                v42 = v69;
                while (*(v58 + 172 + 4 * v60) != v43)
                {
                  if (v59 == ++v60)
                  {
                    LODWORD(v60) = *(v58 + 168);
                    break;
                  }
                }
              }

              if (v60 <= 0xF && v60 == v59)
              {
                *(v58 + 4 * v59 + 172) = v43;
                *(v58 + 168) = v59 + 1;
              }

              v61 = *(v80 + 420);
              v62 = v68;
              if (v61 >= 1)
              {
                while (*(v62 - 9) != v43)
                {
                  v62 += 416;
                  if (!--v61)
                  {
                    goto LABEL_44;
                  }
                }

                PostEventCallback(v58, v43, 2, v62, *(v62 - 1), 0);
              }

LABEL_44:
              NextHop = pthread_mutex_unlock((v80 + 7080));
            }

            else
            {
              v71 &= NextHop >> 31;
              v55 = NextHop;
            }
          }

          v40 = v74;
          v63 = v74;
          v64 = v15;
          do
          {
            if (v15 && *v64 == -1)
            {
              *v64 = v55;
            }

            ++v64;
            --v63;
          }

          while (v63);
        }

        ++v36;
        ++v37;
        v38 += 4;
        --v41;
      }

      while (v35 != v40);
    }

    CheckOutHandleDebug();
    result = v71;
  }

  else
  {
    result = 2149187586;
  }

  v66 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionFindNextHop(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 7080));
  v4 = *(a1 + 420);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = (a1 + 428);
    while (*(v5 - 1) != a2)
    {
      v5 += 104;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  pthread_mutex_unlock((a1 + 7080));
  return v6;
}

uint64_t GCKSessionRegisterReliableTransportCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149187586;
  }

  v6 = *(v5 + 408);
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionStartEventCallbacks()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149187586;
  }

  started = StartEventCallbackThread(*(v0 + 408));
  if ((started & 0x80000000) != 0)
  {
    v2 = gcks_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      GCKSessionStartEventCallbacks_cold_1();
    }
  }

  CheckOutHandleDebug();
  return started;
}

uint64_t GCKSessionGetInterfacesForParticipant(uint64_t a1, int a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    v7 = gcks_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = a2;
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Getting interfaces for participant %08X.", buf, 8u);
    }

    pthread_rwlock_rdlock((v6 + 7192));
    v8 = *(v6 + 7184);
    if (v8)
    {
      v9 = 0;
      do
      {
        if (*(v8 + 88) == a2)
        {
          v9 |= *(v8 + 380);
          v10 = gcks_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(v8 + 380);
            *buf = 67109120;
            v16 = v11;
            _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Available interface type: %d.", buf, 8u);
          }
        }

        v8 = *(v8 + 832);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    pthread_rwlock_unlock((v6 + 7192));
    CheckOutHandleDebug();
    v12 = gcks_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v9;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "All available interface types: %d.", buf, 8u);
    }

    *a3 = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t GCKSessionSetHeartbeatTimeout(uint64_t a1, unsigned int a2)
{
  v3 = 2149187586;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    if (*(v4 + 64))
    {
      *(v4 + 48) = a2 / 55.0;
      *(v4 + 56) = a2;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2149187588;
    }
  }

  return v3;
}

CFMutableStringRef gckSessionPListCopyDetailedDescription(pthread_mutex_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(a1 + 12);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  *&a1[5].__opaque[48];
  v10 = Mutable;
  v8 = *&a1[1].__opaque[4];
  v9 = *&a1[1].__opaque[16];
  *&a1[5].__opaque[52];
  LODWORD(a1[10].__sig);
  *&a1->__opaque[52];
  LODWORD(a1[1].__sig);
  v3 = *a1[1].__opaque;
  HIDWORD(a1[1].__sig);
  v4 = *&a1[1].__opaque[8];
  sig_low = LODWORD(a1->__sig);
  IPPORTToString();
  IPPORTToString();
  CFStringAppendF();
  pthread_mutex_unlock(a1 + 12);
  v6 = *MEMORY[0x277D85DE8];
  return v10;
}

CFMutableStringRef GCKSessionCopyDetailedDescription()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendF();
  CFStringAppendF();
  v8 = *(v1 + 416);
  CFStringAppendF();
  v3 = *(v1 + 7520);
  if (v3)
  {
    CFArrayGetCount(v3);
  }

  CFStringAppendF();
  *(v1 + 7536);
  CFStringAppendF();
  pthread_rwlock_rdlock((v1 + 7192));
  if (*(v1 + 7184))
  {
    CFStringAppendF();
    for (i = *(v1 + 7184); i; i = i[13].__sig)
    {
      v5 = gckSessionPListCopyDetailedDescription(i);
      if (v5)
      {
        v6 = v5;
        CFStringAppendF();
        CFRelease(v6);
      }
    }
  }

  pthread_rwlock_unlock((v1 + 7192));
  CheckOutHandleDebug();
  return Mutable;
}

uint64_t GCKSessionSetAWDLDisabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7536) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSetPreferNCMOverEthernet(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7540) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSetICETimeoutForced(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7544) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionCloseDirectConnectionsWithPeer(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  v4 = gckSessionChangeState(v3, a2);
  CheckOutHandleDebug();
  return v4;
}

uint64_t gckSessionSendICEPacket(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int128 *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = 2149187606;
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    v14 = 2149187586;
    goto LABEL_38;
  }

  v12 = v11;
  if (a5)
  {
    if (a6)
    {
      v13 = gcks_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = IPPORTToString();
        v25 = 2080;
        v26 = IPPORTToString();
        _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Send ICE packet from %s to %s.", &v23, 0x16u);
      }
    }
  }

  v14 = 2149187585;
  if (!a5)
  {
    goto LABEL_37;
  }

  if (!a6)
  {
    goto LABEL_37;
  }

  v14 = 0;
  if (!a3 || !a4)
  {
    goto LABEL_37;
  }

  pthread_rwlock_rdlock((v12 + 7192));
  v15 = *(v12 + 7184);
  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = *a5 & 1;
  while ((*(v15 + 384) & 1) != v16)
  {
LABEL_23:
    if (*(v15 + 384))
    {
      goto LABEL_26;
    }

    if (!*(v15 + 404))
    {
      goto LABEL_31;
    }

LABEL_32:
    v15 = *(v15 + 832);
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  v17 = (v15 + 404);
  if (!v16)
  {
    v18 = *v17;
    if (v18 != *(a5 + 20))
    {
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if (*v17 == *(a5 + 20) && *(v15 + 412) == *(a5 + 28))
  {
LABEL_22:
    if (*(v15 + 420) == *(a5 + 36))
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

LABEL_26:
  if (*(v15 + 404) != *MEMORY[0x277D85EE8] || *(v15 + 412) != *(MEMORY[0x277D85EE8] + 8))
  {
    goto LABEL_32;
  }

LABEL_31:
  if (*(v15 + 420) != *(a5 + 36))
  {
    goto LABEL_32;
  }

LABEL_35:
  v10 = SendUDPPacketCList(v15, a3, a4, a6, 0);
LABEL_36:
  pthread_rwlock_unlock((v12 + 7192));
  v14 = v10;
LABEL_37:
  CheckOutHandleDebug();
LABEL_38:
  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t gckSessionRecvICEPacketWithTimeout(uint64_t a1, int a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v15 = 2149187614;
  v16 = CheckInHandleDebug();
  if (v16)
  {
    v17 = v16;
    v18 = micro();
    pthread_mutex_lock((v17 + 7400));
    if (*(v17 + 8))
    {
LABEL_3:
      if (!*(v17 + 12))
      {
        *(v17 + 8) = 0;
      }

      pthread_mutex_unlock((v17 + 7400));
      CheckOutHandleDebug();
    }

    else
    {
      v19 = (v17 + 7392);
      v20 = a8 / 1000.0;
      while (1)
      {
        v40.tv_sec = 0;
        v40.tv_nsec = 0;
        v21 = *v19;
        if (*v19)
        {
          break;
        }

LABEL_13:
        v24 = v19;
        v25 = v20 - (micro() - v18);
        if (v25 < 0.0)
        {
          v39 = 0;
LABEL_33:
          if (*(v17 + 8))
          {
            v15 = 2149187614;
          }

          else
          {
            v15 = v39;
          }

          goto LABEL_3;
        }

        v40.tv_sec = v25;
        v40.tv_nsec = ((v25 - v25) * 1000000000.0);
        ++*(v17 + 12);
        v26 = pthread_cond_timedwait_relative_np((v17 + 7464), (v17 + 7400), &v40);
        --*(v17 + 12);
        if (v26)
        {
          v39 = v26 | 0xC01A0000;
          if (v26 == 60)
          {
            v39 = -2145779689;
          }

          goto LABEL_33;
        }

        v27 = *(v17 + 8);
        if (*v17)
        {
          if (v27)
          {
            v39 = -2145779682;
          }

          else
          {
            v39 = 0;
          }

          goto LABEL_33;
        }

        v19 = v24;
        if (v27)
        {
          goto LABEL_3;
        }
      }

      v22 = v19;
      v23 = *v19;
      if (a2)
      {
        while (*(v23 + 4108) != a2)
        {
          if (!*(v23 + 4200))
          {
            goto LABEL_13;
          }

          v22 = (v23 + 4200);
          v23 = *(v23 + 4200);
        }

        v21 = v23;
        v28 = v22;
      }

      else
      {
        v28 = v19;
      }

      v29 = *(v21 + 4104);
      *a4 = v29;
      memcpy(a3, v21, v29);
      v30 = *(v21 + 4144);
      v31 = *(v21 + 4128);
      *a5 = *(v21 + 4112);
      *(a5 + 16) = v31;
      *(a5 + 32) = v30;
      v33 = *(v21 + 4152);
      v32 = *(v21 + 4168);
      *(a6 + 32) = *(v21 + 4184);
      *a6 = v33;
      *(a6 + 16) = v32;
      if (a7)
      {
        *a7 = *(v21 + 4192);
      }

      v34 = gcks_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = IPPORTToString();
        v36 = IPPORTToString();
        *buf = 136315394;
        v42 = v35;
        v43 = 2080;
        v44 = v36;
        _os_log_impl(&dword_239FB7000, v34, OS_LOG_TYPE_DEFAULT, "Received ICE packet from %s to %s.", buf, 0x16u);
      }

      *v28 = *(v21 + 4200);
      free(v21);
      pthread_mutex_unlock((v17 + 7400));
      CheckOutHandleDebug();
      v15 = 0;
    }
  }

  else
  {
    v15 = 2149187586;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t gckSessionConnectedCallback(uint64_t a1, int a2, uint64_t a3)
{
  v152 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_rwlock_rdlock((v5 + 7192));
    v7 = *(v6 + 7184);
    for (i = 1; v7; v7 = *(v7 + 832))
    {
      if (*(v7 + 88) == a2)
      {
        v9 = 0;
        atomic_compare_exchange_strong_explicit((v7 + 68), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
        i = v9 == 0;
      }
    }

    pthread_rwlock_unlock((v6 + 7192));
    if (a3)
    {
      v10 = 0;
      v124 = v6;
      do
      {
        v11 = gcks_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = i;
          v13 = *(a3 + 16);
          v14 = IPPORTToString();
          v15 = IPPORTToString();
          v16 = IPPORTToString();
          v17 = IPPORTToString();
          *buf = 67110914;
          *&buf[4] = a2;
          LOWORD(v126) = 1024;
          *(&v126 + 2) = v13;
          i = v12;
          HIWORD(v126) = 2080;
          v127 = v14;
          v6 = v124;
          *v128 = 2080;
          *&v128[2] = v15;
          *&v128[10] = 2080;
          *&v128[12] = v16;
          *v129 = 2080;
          *&v129[2] = v17;
          *&v129[10] = 2080;
          v130 = a3 + 32;
          v131 = 1024;
          v132 = v12;
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "ICE check succeeded with participant %08X: proto %d local[%s], src[%s] <-> dst[%s], remote[%s] (on interface[%s]), first ICE result [%d].", buf, 0x46u);
        }

        if (*(a3 + 16) == 6)
        {
          v18 = gcks_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Proto GCK found.", buf, 2u);
          }

          if (!v10)
          {
            v10 = a3;
          }
        }

        a3 = *(a3 + 304);
      }

      while (a3);
      if (v10)
      {
        v19 = gcks_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = a2;
          v21 = *(v124 + 416);
          v22 = IPPORTToString();
          v23 = IPPORTToString();
          v24 = IPPORTToString();
          v25 = IPPORTToString();
          *buf = 67110402;
          *&buf[4] = v20;
          LOWORD(v126) = 1024;
          *(&v126 + 2) = v21;
          a2 = v20;
          v6 = v124;
          HIWORD(v126) = 2080;
          v127 = v22;
          *v128 = 2080;
          *&v128[2] = v23;
          *&v128[10] = 2080;
          *&v128[12] = v24;
          *v129 = 2080;
          *&v129[2] = v25;
          _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "ICE completed with participant %08X (I am %08X): local[%s], src[%s] <-> dst[%s], remote[%s].", buf, 0x36u);
        }

        v26 = v10;
        do
        {
          if (*(v26 + 16) != 6)
          {
            goto LABEL_38;
          }

          pthread_rwlock_wrlock((v6 + 7192));
          v27 = *(v6 + 7184);
          if (!v27)
          {
LABEL_35:
            pthread_rwlock_unlock((v6 + 7192));
            v29 = gcks_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = IPPORTToString();
              v31 = IPPORTToString();
              v32 = IPPORTToString();
              v33 = IPPORTToString();
              *v133 = 67110402;
              v134 = -1;
              v135 = 1024;
              v136 = a2;
              v137 = 2080;
              v138 = v30;
              v139 = 2080;
              v140 = v31;
              v141 = 2080;
              v142 = v32;
              v6 = v124;
              v143 = 2080;
              v144 = v33;
              _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Failed to setup channel %d with participant %08X: local[%s], src[%s] <-> dst[%s], remote[%s].", v133, 0x36u);
            }

            *v26 = -1;
            goto LABEL_38;
          }

          while (1)
          {
            if ((*(v27 + 84) & 0x80000000) == 0 || *(v27 + 88) != a2 || (*(v26 + 28) & 1) != (*(v27 + 384) & 1))
            {
              goto LABEL_34;
            }

            if (*(v26 + 28))
            {
              if (*(v26 + 48) != *(v27 + 404) || *(v26 + 56) != *(v27 + 412))
              {
                goto LABEL_34;
              }
            }

            else if (*(v26 + 48) != *(v27 + 404))
            {
              goto LABEL_34;
            }

            if (*(v26 + 64) == *(v27 + 420))
            {
              break;
            }

LABEL_34:
            v27 = *(v27 + 832);
            if (!v27)
            {
              goto LABEL_35;
            }
          }

          v34 = gcks_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v123 = a2;
            v35 = *(v27 + 72);
            v122 = IPPORTToString();
            v36 = IPPORTToString();
            v37 = IPPORTToString();
            v38 = IPPORTToString();
            *v133 = 67110402;
            v134 = v35;
            a2 = v123;
            v135 = 1024;
            v136 = v123;
            v137 = 2080;
            v138 = v122;
            v139 = 2080;
            v140 = v36;
            v6 = v124;
            v141 = 2080;
            v142 = v37;
            v143 = 2080;
            v144 = v38;
            _os_log_impl(&dword_239FB7000, v34, OS_LOG_TYPE_DEFAULT, "Setup channel %d with participant %08X: local[%s], src[%s] <-> dst[%s], remote[%s].", v133, 0x36u);
          }

          gckSessionUpdateDstIPPortAndSockAddrForCList(v27, (v26 + 148));
          *(v27 + 84) = 0;
          *(v27 + 608) = *(v26 + 268);
          *(v27 + 704) = micro();
          *(v27 + 712) = 1;
          *v26 = *(v27 + 72);
          if (!*(v27 + 68))
          {
            *(v27 + 68) = 1;
          }

          pthread_rwlock_unlock((v6 + 7192));
LABEL_38:
          v26 = *(v26 + 304);
        }

        while (v26);
        gckSessionUpdateNode(v6, a2, *(v10 + 268), 0);
        if (i)
        {
          gckSessionChangeState(v6, a2);
        }

        v41 = *MEMORY[0x277CBECE8];
        theString = *MEMORY[0x277CDBEB0];
        config = *MEMORY[0x277CDBEB8];
        while (1)
        {
          if (*(v10 + 16) == 6)
          {
            if ((*(v10 + 28) & 4) != 0)
            {
              LOBYTE(v42) = 1;
            }

            else
            {
              v42 = (*(v10 + 68) >> 2) & 1;
            }

            v43 = *v10;
            pthread_rwlock_rdlock((v6 + 7192));
            CListFromParticipantChanId = FindCListFromParticipantChanId(v6, a2, v43);
            if (!CListFromParticipantChanId)
            {
              v67 = gcks_log();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *v146 = 67109376;
                *v147 = a2;
                *&v147[4] = 1024;
                *&v147[6] = v43;
                _os_log_error_impl(&dword_239FB7000, v67, OS_LOG_TYPE_ERROR, "Something is terribly wrong; no clist for remoteID [%d] channelID [%d].", v146, 0xEu);
              }

              goto LABEL_91;
            }

            v45 = CListFromParticipantChanId;
            if ((v43 & 0x80000000) == 0)
            {
              v46 = gcks_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *v146 = 67109376;
                *v147 = a2;
                *&v147[4] = 1024;
                *&v147[6] = v43;
                _os_log_impl(&dword_239FB7000, v46, OS_LOG_TYPE_DEFAULT, "Connected to participant %08X on channel %d.", v146, 0xEu);
              }

              v6 = v124;
              if ((v42 & 1) == 0)
              {
                v47 = gcks_log();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *v146 = 67109120;
                  *v147 = v43;
                  _os_log_impl(&dword_239FB7000, v47, OS_LOG_TYPE_DEFAULT, "Quick disconnect enabled on channel %d.", v146, 8u);
                }

                v6 = v124;
                *(v45 + 360) = *(v124 + 56);
              }
            }

            v48 = *(v6 + 416);
            v49 = *(v45 + 88);
            *buf = MEMORY[0x277D85DD0];
            v126 = 0x40000000;
            v127 = __gckSessionSetupChannelWithDTLS_block_invoke;
            *v128 = &__block_descriptor_tmp_87;
            *&v128[8] = v6;
            *&v128[16] = a2;
            *v129 = v43;
            *&v129[4] = v48;
            *&v129[8] = v49;
            if (*(v45 + 624))
            {
              v50 = gcks_log();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *v146 = 0;
                _os_log_impl(&dword_239FB7000, v50, OS_LOG_TYPE_DEFAULT, "Initialization. Changing state to DTLSNotConnected.", v146, 2u);
              }

              *(v45 + 640) = 0;
              v51 = *(v6 + 7520) != 0;
              v52 = v51;
              if (*(v45 + 620) == v51)
              {
                v52 = *(v45 + 88) < *(v124 + 416);
              }

              v53 = gcks_log();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = *(v45 + 88);
                v55 = *(v45 + 616);
                v56 = *(v45 + 612);
                v57 = *(v45 + 620);
                *v146 = 67110400;
                *v147 = v54;
                *&v147[4] = 1024;
                *&v147[6] = v55;
                v148 = 1024;
                *v149 = v56;
                *&v149[4] = 1024;
                *&v149[6] = v51;
                LOWORD(v150) = 1024;
                *(&v150 + 2) = v57;
                HIWORD(v150) = 1024;
                v151 = v52;
                _os_log_impl(&dword_239FB7000, v53, OS_LOG_TYPE_DEFAULT, "DTLS Settings for participant [%08X]: authentication [%d] encryption [%d] localIdentitySet [%d] remoteIdentitySet [%d], isServer [%d].", v146, 0x26u);
              }

              v58 = *(v124 + 7520);
              pthread_mutex_lock((v45 + 768));
              v59 = SSLCreateContext(v41, !v52, kSSLDatagramType);
              if (v59)
              {
                v60 = v59;
                *(v45 + 632) = v59;
                *(v45 + 648) = _Block_copy(buf);
                v61 = SSLSetMaxDatagramRecordSize(v60, 0x4C7uLL);
                if (v61)
                {
                  v62 = v61;
                  v63 = gcks_log();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    v64 = *(v45 + 88);
                    *v146 = 67109376;
                    *v147 = v64;
                    *&v147[4] = 1024;
                    *&v147[6] = v62;
                    v65 = v63;
                    v66 = "Failed to set maximum datagram size for participant [%08X] with error %d.";
                    goto LABEL_86;
                  }

LABEL_88:
                  pthread_mutex_unlock((v45 + 768));
                  v79 = gcks_log();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v80 = *(v45 + 88);
                    v81 = *(v45 + 72);
                    v82 = *(v45 + 632);
                    *v146 = 67109888;
                    *v147 = v80;
                    *&v147[4] = 1024;
                    *&v147[6] = v81;
                    v148 = 2048;
                    *v149 = v82;
                    *&v149[8] = 2048;
                    v150 = v45;
                    _os_log_error_impl(&dword_239FB7000, v79, OS_LOG_TYPE_ERROR, "SetupDTLSContext failed for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v146, 0x22u);
                  }

                  pthread_mutex_lock((v45 + 768));
                  v6 = v124;
                  gckSessionChangeStateCList(v124, v45);
                  pthread_mutex_unlock((v45 + 768));
LABEL_91:
                  pthread_rwlock_unlock((v6 + 7192));
                  goto LABEL_92;
                }

                v71 = SSLSetIOFuncs(v60, DTLS_SocketRead, DTLS_SocketWrite);
                if (v71)
                {
                  v72 = v71;
                  v73 = gcks_log();
                  if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_88;
                  }

                  v74 = *(v45 + 88);
                  *v146 = 67109376;
                  *v147 = v74;
                  *&v147[4] = 1024;
                  *&v147[6] = v72;
                  v65 = v73;
                  v66 = "Failed to set IO functions for participant [%08X] with error %d.";
                  goto LABEL_86;
                }

                v75 = SSLSetConnection(v60, v45);
                if (v75)
                {
                  v76 = v75;
                  v77 = gcks_log();
                  if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_88;
                  }

                  v78 = *(v45 + 88);
                  *v146 = 67109376;
                  *v147 = v78;
                  *&v147[4] = 1024;
                  *&v147[6] = v76;
                  v65 = v77;
                  v66 = "Failed to set connection for participant [%08X] with error %d.";
                  goto LABEL_86;
                }

                if (v58)
                {
                  v83 = gcks_log();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    v84 = *(v45 + 88);
                    *v146 = 67109120;
                    *v147 = v84;
                    _os_log_impl(&dword_239FB7000, v83, OS_LOG_TYPE_DEFAULT, "Setting certificate for participant [%08X].", v146, 8u);
                  }

                  v85 = SSLSetCertificate(v60, v58);
                  if (v85)
                  {
                    v86 = v85;
                    v87 = gcks_log();
                    if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_88;
                    }

                    v88 = *(v45 + 88);
                    *v146 = 67109376;
                    *v147 = v88;
                    *&v147[4] = 1024;
                    *&v147[6] = v86;
                    v65 = v87;
                    v66 = "Failed to set certificate for participant [%08X] with error %d.";
                    goto LABEL_86;
                  }
                }

                if (*(v45 + 620))
                {
                  if (v52)
                  {
                    v89 = gcks_log();
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                    {
                      v90 = *(v45 + 88);
                      *v146 = 67109120;
                      *v147 = v90;
                      _os_log_impl(&dword_239FB7000, v89, OS_LOG_TYPE_DEFAULT, "Setting client side authentication for participant [%08X].", v146, 8u);
                    }

                    v91 = SSLSetClientSideAuthenticate(v60, kAlwaysAuthenticate);
                    if (v91)
                    {
                      v92 = v91;
                      v93 = gcks_log();
                      if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_88;
                      }

                      v94 = *(v45 + 88);
                      *v146 = 67109376;
                      *v147 = v94;
                      *&v147[4] = 1024;
                      *&v147[6] = v92;
                      v65 = v93;
                      v66 = "Failed to set client side authentication for participant [%08X] with error %d.";
                      goto LABEL_86;
                    }

                    v95 = kSSLSessionOptionBreakOnClientAuth;
                  }

                  else
                  {
                    v95 = kSSLSessionOptionBreakOnServerAuth;
                  }

                  v96 = SSLSetSessionOption(v60, v95, 1u);
                  if (v96)
                  {
                    v97 = v96;
                    v98 = gcks_log();
                    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_88;
                    }

                    v99 = *(v45 + 88);
                    *v146 = 67109376;
                    *v147 = v99;
                    *&v147[4] = 1024;
                    *&v147[6] = v97;
                    v65 = v98;
                    v66 = "Failed to set session option for participant [%08X] with error %d.";
                    goto LABEL_86;
                  }
                }

                v100 = *(v45 + 612);
                if (!*(v45 + 616))
                {
                  if (v100)
                  {
                    v108 = gcks_log();
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      CStringPtr = CFStringGetCStringPtr(config, 0x8000100u);
                      *v146 = 136315138;
                      *v147 = CStringPtr;
                      _os_log_impl(&dword_239FB7000, v108, OS_LOG_TYPE_DEFAULT, "Auth=yes, encryption=no: setting session config to %s.", v146, 0xCu);
                    }

                    v110 = SSLSetSessionConfig(v60, config);
                    if (v110)
                    {
                      v105 = v110;
                      v106 = gcks_log();
                      if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_88;
                      }

                      goto LABEL_118;
                    }
                  }

LABEL_130:
                  pthread_mutex_unlock((v45 + 768));
                  v116 = gcks_log();
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    v117 = *(v45 + 88);
                    v118 = *(v45 + 72);
                    v119 = *(v45 + 632);
                    *v146 = 67109888;
                    *v147 = v117;
                    *&v147[4] = 1024;
                    *&v147[6] = v118;
                    v148 = 2048;
                    *v149 = v119;
                    *&v149[8] = 2048;
                    v150 = v45;
                    _os_log_impl(&dword_239FB7000, v116, OS_LOG_TYPE_DEFAULT, "DTLSContext has been set up for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v146, 0x22u);
                  }

                  *(v45 + 720) = micro();
                  v6 = v124;
                  gckSessionScheduleDTLSHandshake(v124, v45);
                  goto LABEL_91;
                }

                v101 = gcks_log();
                v102 = os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT);
                if (v100)
                {
                  if (v102)
                  {
                    v103 = CFStringGetCStringPtr(theString, 0x8000100u);
                    *v146 = 136315138;
                    *v147 = v103;
                    _os_log_impl(&dword_239FB7000, v101, OS_LOG_TYPE_DEFAULT, "Auth=yes, encryption=yes: setting session config to %s.", v146, 0xCu);
                  }

                  v104 = SSLSetSessionConfig(v60, theString);
                  if (v104)
                  {
                    v105 = v104;
                    v106 = gcks_log();
                    if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_88;
                    }

LABEL_118:
                    v107 = *(v45 + 88);
                    *v146 = 67109376;
                    *v147 = v107;
                    *&v147[4] = 1024;
                    *&v147[6] = v105;
                    v65 = v106;
                    v66 = "Failed to set session config for participant [%08X] with error %d.";
                    goto LABEL_86;
                  }

                  goto LABEL_130;
                }

                if (v102)
                {
                  v111 = *(v45 + 88);
                  *v146 = 67109120;
                  *v147 = v111;
                  _os_log_impl(&dword_239FB7000, v101, OS_LOG_TYPE_DEFAULT, "Setting ciphers for: Authentication YES, encryption NO for participant [%08X].", v146, 8u);
                }

                *ciphers = 131131;
                v112 = SSLSetEnabledCiphers(v60, ciphers, 2uLL);
                if (!v112)
                {
                  goto LABEL_130;
                }

                v113 = v112;
                v114 = gcks_log();
                if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                v115 = *(v45 + 88);
                *v146 = 67109376;
                *v147 = v115;
                *&v147[4] = 1024;
                *&v147[6] = v113;
                v65 = v114;
                v66 = "Failed to set enabled ciphers for participant [%08X] with error %d.";
LABEL_86:
                v70 = 14;
              }

              else
              {
                v68 = gcks_log();
                if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                v69 = *(v45 + 88);
                *v146 = 67109120;
                *v147 = v69;
                v65 = v68;
                v66 = "Failed to create context for participant [%08X].";
                v70 = 8;
              }

              _os_log_error_impl(&dword_239FB7000, v65, OS_LOG_TYPE_ERROR, v66, v146, v70);
              goto LABEL_88;
            }

            *(v45 + 648) = _Block_copy(buf);
            pthread_mutex_lock((v45 + 768));
            *(v45 + 628) = 1;
            pthread_mutex_unlock((v45 + 768));
            pthread_rwlock_unlock((v6 + 7192));
            PostEventCallback(*(v6 + 408), a2, 6, 0, 0, 0);
          }

LABEL_92:
          v10 = *(v10 + 304);
          if (!v10)
          {
            goto LABEL_46;
          }
        }
      }
    }

    *buf = 0;
    gckSessionUpdateNode(v6, a2, -1, buf);
    gckSessionChangeState(v6, a2);
LABEL_46:
    gckSessionCheckPendingConnections(v6, 1);
    CheckOutHandleDebug();
    result = 0;
  }

  else
  {
    result = 2149187586;
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionCancelRecvUDP()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149187586;
  }

  v1 = gckSessionCancelRecvUDPInternal(v0);
  CheckOutHandleDebug();
  return v1;
}

uint64_t gckSessionICEListRemoveCallback(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  gckCallICEListRemoveSignalBlock(v3, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t SendUDPPacketCList(uint64_t a1, uint64_t a2, int a3, __int128 *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -2145779690;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v25[3] = 0;
  v30 = 0;
  v31 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  if (!a4)
  {
    a4 = (a1 + 424);
    v15 = (a1 + 444);
    if (*(a1 + 424))
    {
      if (*v15 != *MEMORY[0x277D85EE8] || *(a1 + 452) != *(MEMORY[0x277D85EE8] + 8))
      {
        goto LABEL_2;
      }
    }

    else if (*v15)
    {
      goto LABEL_2;
    }

    v12 = 0;
    goto LABEL_11;
  }

LABEL_2:
  if (a5)
  {
    gckSessionUpdateDstIPPortAndSockAddrForCList(a1, a4);
    v24 = *(a1 + 592);
    v9 = a1 + 464;
  }

  else if (*(a1 + 384))
  {
    v24 = 28;
    v9 = IPPORTToSA6();
  }

  else
  {
    v24 = 16;
    v9 = IPPORTToSA();
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __SendUDPPacketCList_block_invoke;
  v17[3] = &unk_278B442F0;
  v17[6] = a1;
  v17[7] = v9;
  v18 = a5;
  v19 = v24;
  v17[4] = &v26;
  v17[5] = v25;
  pthread_mutex_lock((a1 + 768));
  v10 = OSPFAddDynamicOptions(a2, a3, v17);
  pthread_mutex_unlock((a1 + 768));
  if (v10)
  {
    do
    {
      v11 = *(v10 + 8);
      if (*v10)
      {
        free(*v10);
      }

      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(v27 + 6);
LABEL_11:
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL __SendUDPPacketCList_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 64) || (v3 = *(a1 + 48), !*(v3 + 624)))
  {
    memset(&data.msg_namelen, 0, 40);
    *processed = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = *(a2 + 24);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = (*(a2 + 16) + 8);
      v11 = &processed[1];
      do
      {
        *(v11 - 1) = *(v10 - 1);
        v12 = *v10;
        v10 += 2;
        *v11 = v12;
        v11 += 2;
        ++v9;
      }

      while (v8 != v9);
      data.msg_iovlen = v9;
    }

    data.msg_iov = processed;
    v13 = *(a1 + 48);
    data.msg_name = *(a1 + 56);
    data.msg_namelen = *(a1 + 68);
    *(*(*(a1 + 40) + 8) + 24) = sendmsg(*v13, &data, 0);
    if (*(*(*(a1 + 40) + 8) + 24) == -1)
    {
      v14 = gcks_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = __error();
        v16 = strerror(*v15);
        v17 = *__error();
        v23 = 136315394;
        v24 = v16;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Sendmsg failed with error %s (%d).", &v23, 0x12u);
      }

      goto LABEL_18;
    }

LABEL_19:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *(*(a1 + 48) + 48) = micro();
    goto LABEL_20;
  }

  v4 = *(a2 + 24);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (*(a2 + 16) + 8);
    do
    {
      memcpy(&data + v5, *(v6 - 1), *v6);
      v7 = *v6;
      v6 += 2;
      v5 += v7;
      --v4;
    }

    while (v4);
  }

  processed[0] = 0;
  v18 = SSLWrite(*(v3 + 632), &data, v5, processed);
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = gcks_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __SendUDPPacketCList_block_invoke_cold_1((a1 + 48), v19, v20);
  }

LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = *__error() | 0xC01A0000;
LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return *(*(*(a1 + 32) + 8) + 24) >= 0;
}

const char *DTLSErrorName(int a1)
{
  if ((a1 + 9851) > 0x33)
  {
    return "?";
  }

  else
  {
    return off_278B44418[a1 + 9851];
  }
}

uint64_t gckSessionUpdateNode(uint64_t a1, int a2, int a3, int *a4)
{
  pthread_mutex_lock((a1 + 7080));
  v8 = *(a1 + 708);
  if (v8 < 1)
  {
    LODWORD(v9) = 0;
    v11 = 0;
    if (a4)
    {
LABEL_8:
      v13 = v9 == v8 && v8 > 0 || v11;
      *a4 = v13;
    }
  }

  else
  {
    v9 = 0;
    v10 = (a1 + 716);
    while (*(v10 - 1) != a2)
    {
      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        v11 = 0;
        LODWORD(v9) = *(a1 + 708);
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    *v10 = a3;
    v11 = v8 != 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

LABEL_15:

  return pthread_mutex_unlock((a1 + 7080));
}

void gckSessionCheckPendingConnections(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    pthread_rwlock_rdlock((a1 + 7192));
  }

  pthread_mutex_lock((a1 + 7080));
  v4 = *(a1 + 420);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 428);
    do
    {
      if (*v6 == -1)
      {
        ++v5;
      }

      v6 += 104;
      --v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((a1 + 7080));
  v7 = *(a1 + 7184);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 7184);
    do
    {
      if (!*(v9 + 68))
      {
        ++v8;
      }

      v9 = *(v9 + 832);
    }

    while (v9);
    v10 = 0;
    do
    {
      if (!*(v7 + 64))
      {
        ++v10;
      }

      v7 = *(v7 + 832);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = gcks_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109632;
    v13[1] = v8;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Pending connections state: iICEChecksLeft=%d, iUnconnectedNodeCount=%d, iDDsExpected=%d.", v13, 0x14u);
  }

  if (!v8 && !v5 && !v10)
  {
    PostEventCallback(*(a1 + 408), 0, 4, 0, 0, 0);
  }

  if (a2)
  {
    pthread_rwlock_unlock((a1 + 7192));
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t FindCListFromParticipantChanId(uint64_t a1, int a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  result = *(a1 + 7184);
  if (result)
  {
    while (*(result + 88) != a2 || *(result + 72) != a3)
    {
      result = *(result + 832);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = gcks_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = a2;
      v9 = 1024;
      v10 = a3;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "No CList for participant [%08X] and channel [%d]", v8, 0xEu);
    }

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __gckSessionSetupChannelWithDTLS_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  CListFromParticipantChanId = FindCListFromParticipantChanId(*(a1 + 32), *(a1 + 40), *(a1 + 44));
  if (CListFromParticipantChanId)
  {
    *(CListFromParticipantChanId + 744) = micro();
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v5 = gcks_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 <= v4)
  {
    if (v6)
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 44);
      v36 = 67109376;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Sending first Hello to participant %08X on channel %d.", &v36, 0xEu);
    }

    v23 = gckSessionSendHello(*(a1 + 32), *(a1 + 40), 1, *(*(a1 + 32) + 24), *(a1 + 44));
    if ((v23 & 0x80000000) != 0)
    {
      v26 = gcks_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __gckSessionSetupChannelWithDTLS_block_invoke_cold_1();
      }

      gckSessionChangeStateForParticipantAndChannel(*(a1 + 32), *(a1 + 40), *(a1 + 44));
    }

    goto LABEL_37;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    v36 = 67109376;
    v37 = v7;
    v38 = 1024;
    v39 = v8;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Waiting for first Hello from participant %08X on channel %d.", &v36, 0xEu);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 44);
  v12 = gcks_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109376;
    v37 = v10;
    v38 = 1024;
    v39 = 60;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Waiting for Hello from participant %08X for %d seconds.", &v36, 0xEu);
  }

  v13 = *(v9 + 7184);
  if (!v13)
  {
LABEL_15:
    v14 = gcks_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_2();
    }

    v15 = gcks_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    gckSessionChangeStateForParticipantAndChannel(*(a1 + 32), *(a1 + 40), *(a1 + 44));
    v23 = 2149187606;
    goto LABEL_37;
  }

  while (1)
  {
    if (*(v13 + 88) != v10)
    {
      goto LABEL_14;
    }

    if (v11 < 0)
    {
      break;
    }

    if (*(v13 + 72) == v11)
    {
      goto LABEL_26;
    }

LABEL_14:
    v13 = *(v13 + 832);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  if (*(v13 + 80))
  {
    goto LABEL_14;
  }

LABEL_26:
  pthread_mutex_lock((v13 + 768));
  if ((*(v13 + 40) & 0x8000000000000000) != 0)
  {
    v31 = gcks_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109120;
      v37 = v10;
      _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Hello already received from participant %08X, no need to schedule a Hello timeout.", &v36, 8u);
    }
  }

  else
  {
    v27 = micro();
    v28 = *(v13 + 600);
    if (v28)
    {
      while (1)
      {
        v29 = v28;
        if (*v28 == 1)
        {
          break;
        }

        v28 = *(v28 + 64);
        if (!v28)
        {
          v30 = (v29 + 64);
          goto LABEL_34;
        }
      }
    }

    else
    {
      v30 = (v13 + 600);
LABEL_34:
      v32 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
      *v32 = 1;
      v32[1] = 0.065;
      v32[2] = v27 + 60.0;
      v32[4] = v27 + 60.0;
      v32[5] = 0.0;
      *(v32 + 12) = 0;
      *(v32 + 13) = v10;
      *v30 = v32;
      v33 = *(v9 + 16);
      if (v33 != -1)
      {
        *(v9 + 16) = -1;
        close(v33);
      }
    }
  }

  pthread_mutex_unlock((v13 + 768));
  v23 = 0;
LABEL_37:
  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

pthread_mutex_t *gckSessionChangeStateForParticipantAndChannel(uint64_t a1, int a2, int a3)
{
  result = FindCListFromParticipantChanId(a1, a2, a3);
  if (result)
  {
    v5 = result;
    pthread_mutex_lock(result + 12);
    gckSessionChangeStateCList(a1, v5);

    return pthread_mutex_unlock(v5 + 12);
  }

  return result;
}

uint64_t gckSessionSendHello(uint64_t a1, unsigned int a2, int a3, __int16 a4, int a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v31[0] = 0u;
  v30 = 0;
  WORD6(v31[0]) = a4;
  v31[1] = 0x8000000000000002;
  v9 = gcks_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "";
    *buf = 136315906;
    if (!a3)
    {
      v10 = " back";
    }

    *v33 = v10;
    *&v33[8] = 2048;
    *&v33[10] = 0x8000000000000002;
    *&v33[18] = 1024;
    *&v33[20] = a2;
    v34 = 1024;
    v35 = a5;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Sending Hello%s with flags [%llX] to participant %08X over channel %d.", buf, 0x22u);
  }

  v11 = OSPFMakeHello(&v30, v31, *(a1 + 416), a2);
  if (v11 < 0)
  {
    v15 = 2149187618;
    v16 = gcks_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendHello_cold_2();
    }

    goto LABEL_34;
  }

  v12 = v11;
  if (!a3)
  {
    v15 = SendUDPPacketToParticipantChannelID(a1, v30, v11, a2, 0, a5, 0);
    free(v30);
    goto LABEL_34;
  }

  v13 = *(a1 + 7184);
  if (!v13)
  {
LABEL_14:
    v14 = gcks_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_2();
    }

    free(v30);
    v15 = 2149187606;
    goto LABEL_34;
  }

  while (1)
  {
    if (*(v13 + 88) != a2)
    {
      goto LABEL_13;
    }

    if (a5 < 0)
    {
      break;
    }

    if (*(v13 + 72) == a5)
    {
      goto LABEL_20;
    }

LABEL_13:
    v13 = *(v13 + 832);
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  if (*(v13 + 80))
  {
    goto LABEL_13;
  }

LABEL_20:
  pthread_mutex_lock((v13 + 768));
  v17 = *(v13 + 600);
  if (v17)
  {
    while (1)
    {
      v18 = v17;
      if (*v17 == 1)
      {
        break;
      }

      v17 = *(v17 + 8);
      if (!v17)
      {
        v19 = v18 + 64;
        goto LABEL_25;
      }
    }

    *(v17 + 8) = xmmword_239FEC300;
    *(v17 + 4) = *(a1 + 32);
    *(v17 + 6) = 1;
    v21 = *(v17 + 5);
    if (v21)
    {
      free(v21);
    }

    v20 = 0;
    *(v18 + 5) = v30;
    *(v18 + 12) = v12;
    *(v18 + 13) = a2;
  }

  else
  {
    v19 = (v13 + 600);
LABEL_25:
    v20 = 1;
    v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v18 = 1;
    *(v18 + 8) = xmmword_239FEC300;
    *(v18 + 4) = *(a1 + 32);
    *(v18 + 5) = v30;
    *(v18 + 12) = v12;
    *(v18 + 13) = a2;
    *v19 = v18;
  }

  v22 = gcks_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v18 + 12);
    v24 = *(v18 + 2);
    v25 = *(v18 + 4);
    v26 = *(v18 + 6);
    *buf = 67110144;
    *v33 = v23;
    *&v33[4] = 2048;
    *&v33[6] = v24;
    *&v33[14] = 2048;
    *&v33[16] = v25;
    v34 = 1024;
    v35 = v26;
    v36 = 1024;
    v37 = v20;
    _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "Scheduled OSPF Hello packet: length=%d nextFire=%g waitUntil=%g rapidFireCount=%d newItem=%d.", buf, 0x28u);
  }

  pthread_mutex_unlock((v13 + 768));
  v27 = *(a1 + 16);
  if (v27 != -1)
  {
    *(a1 + 16) = -1;
    close(v27);
  }

  v15 = 0;
LABEL_34:
  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t gckSessionScheduleDTLSHandshake(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 768));
  v4 = *(a2 + 600);
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (*v4 == 11)
      {
        break;
      }

      v4 = *(v4 + 64);
      if (!v4)
      {
        v6 = (v5 + 64);
        goto LABEL_6;
      }
    }

    *(v4 + 8) = xmmword_239FEC300;
    *(v4 + 32) = 0x404E000000000000;
    *(v4 + 52) = *(a2 + 88);
  }

  else
  {
    v6 = (a2 + 600);
LABEL_6:
    v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v7 = 11;
    *(v7 + 8) = xmmword_239FEC300;
    *(v7 + 4) = 0x404E000000000000;
    *(v7 + 13) = *(a2 + 88);
    *v6 = v7;
  }

  pthread_mutex_unlock((a2 + 768));
  result = *(a1 + 16);
  if (result != -1)
  {
    *(a1 + 16) = -1;

    return close(result);
  }

  return result;
}

uint64_t SendUDPPacketToParticipantChannelID(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v23 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    if (a5)
    {
      pthread_rwlock_rdlock((a1 + 7192));
    }

    v7 = 2149187606;
    for (i = *(a1 + 7184); i; i = *(i + 832))
    {
      if (*(i + 88) == a4)
      {
        if (a6 < 0)
        {
          if (*(i + 80))
          {
            continue;
          }
        }

        else if (*(i + 72) != a6)
        {
          continue;
        }

        if ((*(i + 376) & 0xFFFFFFFE) == 2)
        {
          v18 = gcks_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            SendUDPPacketToParticipantChannelID_cold_1(i, a6, v18);
          }

          v19 = micro();
          if (a7 && v19 <= *(i + 24))
          {
            v21 = gcks_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22[0] = 67109120;
              v22[1] = a4;
              _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Dropped packet for participant %08X.", v22, 8u);
            }
          }

          else
          {
            v20 = SendUDPPacketCList(i, a2, a3, 0, 1);
            if (v20 == -1072037876)
            {
              *(i + 24) = v19 + 3.0;
            }

            if (v20 == -1072037856)
            {
              v7 = 2149187626;
            }

            else
            {
              v7 = v20;
            }
          }

          break;
        }
      }
    }

    if (a5)
    {
      pthread_rwlock_unlock((a1 + 7192));
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t DTLS_SocketRead(uint64_t a1, void *__dst, int *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 656);
  if (v5)
  {
    v6 = *(v5 + 4100);
    if (*(v5 + 4104) - v6 >= *a3)
    {
      v7 = *a3;
    }

    else
    {
      v7 = *(v5 + 4104) - v6;
    }

    memcpy(__dst, (v5 + v6), v7);
    *a3 = v7;
    v8 = *(v5 + 4100) + v7;
    *(v5 + 4100) = v8;
    if (v8 == *(v5 + 4104))
    {
      *(a1 + 656) = *(v5 + 4200);
      free(v5);
    }

    result = 0;
  }

  else
  {
    v10 = gcks_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a3;
      v12 = *(a1 + 88);
      v13 = *(a1 + 72);
      v14 = *(a1 + 632);
      v16[0] = 67110144;
      v16[1] = v11;
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = a1;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "No packets available (%d bytes requested) for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]. Have to wait for more data.", v16, 0x28u);
    }

    *a3 = 0;
    result = 4294957493;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __gckSessionRecvProc_block_invoke(uint64_t a1)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 7192));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 != -1)
  {
    *(v2 + 16) = -1;
    close(v3);
    v2 = *(a1 + 32);
  }

  return pthread_rwlock_unlock((v2 + 7192));
}

const char *gckWaitForString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "UNHANDLED WAIT FOR TYPE";
  }

  else
  {
    return off_278B443B8[(a1 - 1)];
  }
}

uint64_t gckSessionPerformDTLSHandshake(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = SSLHandshake(*(a2 + 632));
  v5 = gcks_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 72);
    v8 = *(a2 + 632);
    *buf = 67109888;
    *&buf[4] = v6;
    v30 = 1024;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    v34 = 1024;
    LODWORD(v35) = v4;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Perform handshake with participant [%08X] channelID [%d] DTLS context [%p] completed with error %d.", buf, 0x1Eu);
  }

  switch(v4)
  {
    case -9841:
      v15 = gcks_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a2 + 88);
        v17 = *(a2 + 72);
        v18 = *(a2 + 632);
        *buf = 67109888;
        *&buf[4] = v16;
        v30 = 1024;
        v31 = v17;
        v32 = 2048;
        v33 = v18;
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Peer Authentication Completed for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", buf, 0x22u);
      }

      goto LABEL_23;
    case -9803:
LABEL_23:
      v14 = 0;
      goto LABEL_24;
    case 0:
      v9 = gcks_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 88);
        v11 = *(a2 + 72);
        v12 = *(a2 + 632);
        *buf = 67109888;
        *&buf[4] = v10;
        v30 = 1024;
        v31 = v11;
        v32 = 2048;
        v33 = v12;
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Completed handshake with participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]. Changing status to DTLSCONNECTED.", buf, 0x22u);
      }

      *(a2 + 640) = 1;
      *(a2 + 728) = micro();
      *(a2 + 736) = 1;
      if (*(a2 + 620))
      {
        *buf = 0;
        if (SSLCopyPeerTrust(*(a2 + 632), buf))
        {
          v13 = gcks_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            gckSessionPerformDTLSHandshake_cold_1(a2);
          }

LABEL_12:
          v14 = 2149777412;
          goto LABEL_24;
        }

        if (!*buf)
        {
          v27 = gcks_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            gckSessionPerformDTLSHandshake_cold_2(a2);
          }

          goto LABEL_12;
        }

        CertificateCount = SecTrustGetCertificateCount(*buf);
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], CertificateCount, MEMORY[0x277CBF128]);
        v28 = Mutable;
        if (CertificateCount >= 1)
        {
          v22 = Mutable;
          for (i = 0; i != CertificateCount; ++i)
          {
            CertificateAtIndex = SecTrustGetCertificateAtIndex(*buf, i);
            CFArrayAppendValue(v22, CertificateAtIndex);
          }
        }

        *(a2 + 628) = 1;
        PostEventCallback(*(a1 + 408), *(a2 + 88), 6, &v28, 8, 0);
        CFRelease(*buf);
      }

      else
      {
        *(a2 + 628) = 1;
        PostEventCallback(*(a1 + 408), *(a2 + 88), 6, 0, 0, 0);
      }

      goto LABEL_23;
  }

  v14 = 2149777412;
  v19 = gcks_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    gckSessionPerformDTLSHandshake_cold_3();
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

void attempt_failover(uint64_t a1, _DWORD *a2)
{
  *&v24[7] = *MEMORY[0x277D85DE8];
  v4 = gcks_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2[22];
    v21 = 67109120;
    v22 = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Attempting failover for participant %08X.", &v21, 8u);
  }

  if (a2[20])
  {
    goto LABEL_4;
  }

  v10 = *(a1 + 7184);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = 0;
  do
  {
    if (v10 != a2 && *(v10 + 88) == a2[22] && *(v10 + 80) >= 0)
    {
      v11 = v10;
    }

    v10 = *(v10 + 832);
  }

  while (v10);
  if (!v11)
  {
LABEL_18:
    v16 = gcks_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_34:
      gckSessionChangeStateCList(a1, a2);
      goto LABEL_35;
    }

    v17 = a2[22];
    v18 = a2[94];
    if (v18 > 2)
    {
      switch(v18)
      {
        case 3:
          v19 = "Connected";
          goto LABEL_33;
        case 4:
          v19 = "Disconnected";
          goto LABEL_33;
        case 255:
          v19 = "Invalid";
          goto LABEL_33;
      }
    }

    else
    {
      switch(v18)
      {
        case 0:
          v19 = "Created";
          goto LABEL_33;
        case 1:
          v19 = "ICE";
          goto LABEL_33;
        case 2:
          v19 = "Connecting";
LABEL_33:
          v21 = 67109378;
          v22 = v17;
          v23 = 2080;
          *v24 = v19;
          _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Connection timed out for participant [%08X] (%s).", &v21, 0x12u);
          goto LABEL_34;
      }
    }

    v19 = "?";
    goto LABEL_33;
  }

  if (v11 != a2)
  {
    v11[20] = 0;
    gckSessionUpdateNode(a1, v11[22], v11[152], 0);
    v12 = gcks_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11[18];
      v15 = v11[21];
      v14 = v11[22];
      v21 = 67109632;
      v22 = v13;
      v23 = 1024;
      *v24 = v14;
      v24[2] = 1024;
      *&v24[3] = v15;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Promoted channel %d for participant %08X to active status: original priority %d.", &v21, 0x14u);
    }
  }

LABEL_4:
  a2[20] = -1;
  v6 = gcks_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a2[18];
    v9 = a2[21];
    v8 = a2[22];
    v21 = 67109632;
    v22 = v7;
    v23 = 1024;
    *v24 = v8;
    v24[2] = 1024;
    *&v24[3] = v9;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Demoted channel %d for participant %08X to inactive status: original priority %d.", &v21, 0x14u);
  }

  gckSessionReconcileChannelPriority(a1, a2[22]);
LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t gckSessionRecvMessage(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v184 = *MEMORY[0x277D85DE8];
  v181 = 0u;
  memset(v182, 0, 24);
  v180 = 0;
  v178 = 0u;
  v179 = 0u;
  memset(v177, 0, sizeof(v177));
  *&v163.msg_namelen = 128;
  memset(v176, 0, sizeof(v176));
  v175[0] = v183;
  v175[1] = 4096;
  v163.msg_name = v177;
  v163.msg_iov = v175;
  *&v163.msg_iovlen = 1;
  v163.msg_control = v176;
  *&v163.msg_controllen = 32;
  v8 = recvmsg(*v5, &v163, 0);
  if (v8 == -1)
  {
    v11 = *__error() | 0xC01A0000;
    v16 = gcks_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_175;
    }

    v17 = *v6;
    v171 = 67109376;
    v172 = v17;
    v173 = 1024;
    v174 = v11;
    v18 = "Recvmsg on socket %d failed (%X).";
    v19 = &v171;
    v20 = v16;
LABEL_8:
    v21 = 14;
LABEL_9:
    _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, v18, v19, v21);
    goto LABEL_175;
  }

  v9 = v8;
  if (v8)
  {
    v22 = *(v6 + 400);
    v181 = *(v6 + 384);
    v182[0] = v22;
    *&v182[1] = *(v6 + 416);
    if (v163.msg_controllen >= 0xC)
    {
      msg_control = v163.msg_control;
      if (v163.msg_control)
      {
        while (msg_control[1] != 41 || msg_control[2] != 46)
        {
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if ((msg_control + 3) > v163.msg_control + v163.msg_controllen)
          {
            goto LABEL_21;
          }
        }

        if (msg_control[3] || msg_control[4] || msg_control[5] != -65536)
        {
          LODWORD(v181) = 1;
          *(v182 + 4) = *(msg_control + 3);
        }

        else
        {
          v24 = bswap32(msg_control[6]);
          LODWORD(v181) = v181 & 0xFFFFFFFE;
          DWORD1(v182[0]) = v24;
        }
      }
    }

LABEL_21:
    if (SockAddrCompareAddr())
    {
      SAToIPPORT();
    }

    else
    {
      v180 = *(v6 + 456);
      v25 = *(v6 + 440);
      v178 = *(v6 + 424);
      v179 = v25;
    }

    v161 = 0;
    v162 = 0;
    if (v183[0] == 208)
    {
      v170[0] = 0;
      v26 = malloc_type_calloc(1uLL, 0x1070uLL, 0x1020040E1A74566uLL);
      if (!v26)
      {
        v11 = 2149187587;
        v86 = gcks_log();
        if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
LABEL_78:
          v91 = gcks_log();
          if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v165 = 134217984;
          *v166 = v11;
          v18 = "Failed to process DTLS packet with error %ld.";
          v19 = &v165;
          v20 = v91;
          v21 = 12;
          goto LABEL_9;
        }

        v171 = 67109376;
        v172 = 4208;
        v173 = 1024;
        v174 = -2145779709;
        v87 = "Calloc (%d bytes) failed (%X).";
        v88 = &v171;
        v89 = v86;
        v90 = 14;
LABEL_77:
        _os_log_impl(&dword_239FB7000, v89, OS_LOG_TYPE_DEFAULT, v87, v88, v90);
        goto LABEL_78;
      }

      v27 = v26;
      v28 = v9 - 1;
      v26[1027] = *(v6 + 88);
      __memcpy_chk();
      v27[1025] = 0;
      v27[1026] = v28;
      v29 = *(v6 + 416);
      v30 = *(v6 + 400);
      *(v27 + 257) = *(v6 + 384);
      *(v27 + 258) = v30;
      *(v27 + 518) = v29;
      v32 = *(v6 + 424);
      v31 = *(v6 + 440);
      *(v27 + 523) = *(v6 + 456);
      *(v27 + 1038) = v32;
      *(v27 + 1042) = v31;
      *(v27 + 524) = v4;
      pthread_mutex_lock((v6 + 768));
      v33 = (v6 + 656);
      do
      {
        v34 = v33;
        v35 = *v33;
        v33 = (*v33 + 4200);
      }

      while (v35);
      *v34 = v27;
      v36 = *(v6 + 640);
      v37 = *(v6 + 632);
      pthread_mutex_unlock((v6 + 768));
      if (!v37)
      {
        v92 = gcks_log();
        if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_174;
        }

        v93 = *(v6 + 88);
        v94 = *(v6 + 72);
        v171 = 67109376;
        v172 = v93;
        v173 = 1024;
        v174 = v94;
        v13 = "DTLS context isn't set up yet for participant [%08X] on channel [%d]. Drop this packet.";
        v14 = v92;
        v15 = 14;
LABEL_5:
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, v13, &v171, v15);
LABEL_174:
        v11 = 0;
        goto LABEL_175;
      }

      if (v36 != 1)
      {
        gckSessionScheduleDTLSHandshake(v7, v6);
        goto LABEL_174;
      }

      pthread_mutex_lock((v6 + 768));
      v38 = SSLRead(*(v6 + 632), &v171, v28, v170);
      pthread_mutex_unlock((v6 + 768));
      if (v38)
      {
        v39 = gcks_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(v6 + 88);
          v41 = *(v6 + 72);
          v42 = *(v6 + 632);
          if ((v38 + 9851) > 0x33)
          {
            v43 = "?";
          }

          else
          {
            v43 = off_278B44418[v38 + 9851];
          }

          v165 = 67110146;
          *v166 = v40;
          *&v166[4] = 1024;
          *&v166[6] = v41;
          LOWORD(v167[0]) = 2048;
          *(v167 + 2) = v42;
          HIWORD(v167[2]) = 2080;
          *&v167[3] = v43;
          v168 = 2048;
          v169[0] = v38;
          _os_log_impl(&dword_239FB7000, v39, OS_LOG_TYPE_DEFAULT, "SSLRead for participant [%08X] channelID [%d] DTLS context [%p] returned with error %s (%ld).", &v165, 0x2Cu);
        }

        v11 = 2149187618;
        if ((v38 + 9816) > 0xB)
        {
          goto LABEL_78;
        }

        if (((1 << (v38 + 88)) & 0xC01) == 0)
        {
          goto LABEL_78;
        }

        v115 = gcks_log();
        v11 = 2149187617;
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        v116 = *(v6 + 88);
        v117 = *(v6 + 72);
        v118 = *(v6 + 632);
        v165 = 67109632;
        *v166 = v116;
        *&v166[4] = 1024;
        *&v166[6] = v117;
        LOWORD(v167[0]) = 2048;
        *(v167 + 2) = v118;
        v87 = "DTLS connection closed gracefully for participant [%08X] channelID [%d] DTLS context [%p].";
        v88 = &v165;
        v89 = v115;
        v90 = 24;
        goto LABEL_77;
      }

      if (!v170[0])
      {
        goto LABEL_174;
      }

      v9 = SLODWORD(v170[0]);
      v44 = &v171;
    }

    else
    {
      v44 = v183;
    }

    v160 = 0;
    v45 = OSPFParse(&v162, &v161, v44, v9, 0, 0, &v160);
    v158 = v7;
    if (v45 >= 1)
    {
      v46 = v162;
      v47 = *(v162 + 1);
      *(v6 + 16) = v4;
      v156 = v47;
      if (v47 == 1 && (*(v46 + 4) & 1) != 0)
      {
        *(v6 + 32) = 1;
      }

      v153 = v6;
      v48 = gcks_log();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
      if (v49)
      {
        v111 = IPPORTToString();
        v112 = *(v162 + 12);
        v113 = IPPORTToString();
        v114 = *(v162 + 8);
        v165 = 136316418;
        *v166 = v111;
        v7 = v158;
        *&v166[8] = 1024;
        v167[0] = v112;
        LOWORD(v167[1]) = 2080;
        *(&v167[1] + 2) = v113;
        HIWORD(v167[3]) = 1024;
        v167[4] = v114;
        v168 = 1024;
        LODWORD(v169[0]) = v9;
        WORD2(v169[0]) = 1024;
        *(v169 + 6) = v156;
        _os_log_debug_impl(&dword_239FB7000, v48, OS_LOG_TYPE_DEBUG, "[%s] %08X <= [%s] %08X: %d bytes(%d).", &v165, 0x2Eu);
      }

      v51 = v162;
      v52 = (v162 + 12);
      v53 = *v162 & 0xF;
      v159 = 4 * v53;
      MEMORY[0x28223BE20](v49, v50);
      v55 = (v152 - v54);
      v56 = v156;
      if (!v53)
      {
        goto LABEL_171;
      }

      v157 = 0;
      v57 = v53;
      v154 = v152 - v54;
      v155 = v52;
      do
      {
        v59 = *v52++;
        v58 = v59;
        if (v59 == *(v7 + 416))
        {
          v157 = 1;
          NextHop = 0xFFFFFFFFLL;
        }

        else
        {
          NextHop = gckSessionFindNextHop(v7, v58);
        }

        *v55++ = NextHop;
        --v57;
      }

      while (v57);
      v152[1] = v152;
      v61 = (v51 + 16);
      v62 = v154;
      v63 = v154 + 4;
      v64 = v53 - 1;
      do
      {
        v65 = *&v62[4 * v57];
        if (v65 == -1)
        {
          ++v57;
        }

        else
        {
          NextHop = MEMORY[0x28223BE20](NextHop, v58);
          v67 = (v152 - v66);
          *(v152 - v66) = *(v68 + 4 * v57++);
          v69 = 1;
          if (v57 < v53)
          {
            v70 = v64;
            v71 = v63;
            v72 = v61;
            do
            {
              if (*v71 == v65)
              {
                v67[v69] = *v72;
                v69 = (v69 + 1);
                *v71 = -1;
              }

              ++v72;
              v71 += 4;
              --v70;
            }

            while (v70);
          }

          if (v56 == 10 || v56 == 5)
          {
            v73 = v56;
            v74 = v158;
            NextHop = OSPFMakeData(&v165, 4096, v161, 0, v73, *(v162 + 8), v67, v69, *(*(v158 + 408) + 24), *(*(v158 + 408) + 32), 64, 0, 0);
            if (NextHop >= 1)
            {
              NextHop = SendUDPPacketToParticipantChannelID(v74, &v165, NextHop, v65, 0, -1, 1);
            }

            v56 = v156;
            v62 = v154;
          }
        }

        ++v61;
        v63 += 4;
        --v64;
      }

      while (v57 != v53);
      v75 = v158;
      if (!v157)
      {
        goto LABEL_171;
      }

      pthread_mutex_lock((v158 + 7080));
      v76 = *(v75 + 420);
      if (v76 < 1)
      {
        v79 = 0;
        v78 = v153;
      }

      else
      {
        v77 = *(v162 + 8);
        v78 = v153;
        if (*(v75 + 424) == v77)
        {
          v79 = 1;
        }

        else
        {
          v95 = (v75 + 840);
          v96 = 1;
          do
          {
            v97 = v96;
            if (v76 == v96)
            {
              break;
            }

            v98 = *v95;
            ++v96;
            v95 += 104;
          }

          while (v98 != v77);
          v79 = v97 < v76;
        }
      }

      pthread_mutex_unlock((v158 + 7080));
      if (v56 == 10 || v56 == 5)
      {
        if (v79)
        {
          if (v56 == 10)
          {
            v99 = 5;
          }

          else
          {
            v99 = 3;
          }

          PostEventCallback(*(v158 + 408), *(v162 + 8), v99, *v161, *(v161 + 8), 0);
        }

        else
        {
          v100 = gcks_log();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v101 = *(v162 + 8);
            v165 = 67109120;
            *v166 = v101;
            _os_log_impl(&dword_239FB7000, v100, OS_LOG_TYPE_DEFAULT, "Skipping data from unroutable peer (OSPF source ID [%08X]).", &v165, 8u);
          }
        }
      }

      else
      {
        v102 = v161;
        v103 = *(v162 + 1);
        if (v103 <= 2)
        {
          if (v103 == 1)
          {
            gckSessionProcessHello(v158, v78, v161, 1);
          }

          else
          {
            if (v103 != 2)
            {
              goto LABEL_172;
            }

            gckSessionProcessDD(v158, v78, v161);
          }
        }

        else if (v103 == 3)
        {
          gckSessionProcessLSA(v158, v78, v161);
        }

        else
        {
          if (v103 == 4)
          {
            v131 = gcks_log();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              v132 = *(v158 + 416);
              v133 = *(v78 + 88);
              v134 = v102[6];
              v135 = *(v78 + 72);
              v136 = *(v78 + 80);
              v165 = 67110144;
              *v166 = v132;
              *&v166[4] = 1024;
              *&v166[6] = v133;
              LOWORD(v167[0]) = 1024;
              *(v167 + 2) = v134;
              HIWORD(v167[1]) = 1024;
              v167[2] = v135;
              LOWORD(v167[3]) = 1024;
              *(&v167[3] + 2) = v136;
              _os_log_impl(&dword_239FB7000, v131, OS_LOG_TYPE_DEFAULT, "I am %08X. Received LSAACK from particpant %08X with SN [%d] channel [%d] priority [%d].", &v165, 0x20u);
            }

            pthread_mutex_lock((v78 + 768));
            v137 = *(v78 + 600);
            if (v137)
            {
              v138 = (v78 + 600);
              do
              {
                if (*v137 == 4 && *(v137 + 28) == v102[6])
                {
                  *v138 = *(v137 + 8);
                  v139 = *(v137 + 5);
                  if (v139)
                  {
                    free(v139);
                  }

                  free(v137);
                }

                else
                {
                  v138 = v137 + 64;
                }

                v137 = *v138;
              }

              while (*v138);
            }
          }

          else
          {
            if (v103 != 8)
            {
              goto LABEL_172;
            }

            v104 = micro();
            v105 = gcks_log();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              if ((v102[6] & 2) != 0)
              {
                v106 = "request";
              }

              else
              {
                v106 = "response";
              }

              v107 = v102[7];
              v108 = *(v78 + 88);
              v109 = *(v78 + 72);
              v165 = 136315906;
              *v166 = v106;
              *&v166[8] = 1024;
              v167[0] = v107;
              LOWORD(v167[1]) = 1024;
              *(&v167[1] + 2) = v108;
              HIWORD(v167[2]) = 1024;
              v167[3] = v109;
              _os_log_impl(&dword_239FB7000, v105, OS_LOG_TYPE_DEFAULT, "Received Heartbeat (%s) with SN [%d] from participant [%08X] over channel [%d].", &v165, 0x1Eu);
            }

            if ((v102[6] & 2) != 0)
            {
              v140 = *(v78 + 88);
              v141 = v102[7];
              v142 = *(v78 + 72);
              v164 = 0;
              v143 = OSPFMakeHeartbeat(&v164, *(v158 + 416), v140, 0, v141);
              v144 = gcks_log();
              v145 = v144;
              if (v143 < 0)
              {
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  v165 = 67109632;
                  *v166 = v140;
                  *&v166[4] = 1024;
                  *&v166[6] = v141;
                  LOWORD(v167[0]) = 1024;
                  *(v167 + 2) = v142;
                  _os_log_error_impl(&dword_239FB7000, v145, OS_LOG_TYPE_ERROR, "OSPFMakeHeartbeat failed for participant %08X, SN [%d], channel [%d].", &v165, 0x14u);
                }
              }

              else
              {
                if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                {
                  v165 = 136315906;
                  *v166 = "response";
                  *&v166[8] = 1024;
                  v167[0] = v141;
                  LOWORD(v167[1]) = 1024;
                  *(&v167[1] + 2) = v140;
                  HIWORD(v167[2]) = 1024;
                  v167[3] = v142;
                  _os_log_impl(&dword_239FB7000, v145, OS_LOG_TYPE_DEFAULT, "Sending Heartbeat (%s) with SN [%d] to participant [%08X] over channel [%d].", &v165, 0x1Eu);
                }

                SendUDPPacketToParticipantChannelID(v158, v164, v143, v140, 0, v142, 0);
                free(v164);
              }

              goto LABEL_171;
            }

            pthread_mutex_lock((v78 + 768));
            v110 = *(v78 + 600);
            if (v110)
            {
              while (*v110 != 8)
              {
                v110 = *(v110 + 64);
                if (!v110)
                {
                  goto LABEL_163;
                }
              }

              if (*(v110 + 56) == v102[7])
              {
                *(v110 + 8) = *(v158 + 48);
                v148 = *(v78 + 360);
                *(v110 + 32) = v104 + v148;
                *(v110 + 16) = v104 + v148 * 0.5;
              }

              else
              {
                v149 = gcks_log();
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  v150 = v102[7];
                  v151 = *(v110 + 56);
                  v165 = 67109376;
                  *v166 = v150;
                  *&v166[4] = 1024;
                  *&v166[6] = v151;
                  _os_log_impl(&dword_239FB7000, v149, OS_LOG_TYPE_DEFAULT, "Received SN [%u] doesn't match the expected SN [%u].", &v165, 0xEu);
                }
              }
            }
          }

LABEL_163:
          pthread_mutex_unlock((v78 + 768));
        }
      }

LABEL_171:
      v102 = v161;
LABEL_172:
      if (v102)
      {
        free(v102);
      }

      goto LABEL_174;
    }

    if (!v45)
    {
      if (*(v162 + 1) == 1)
      {
        gckSessionProcessHello(v7, v6, v161, 0);
      }

      if (v161)
      {
        free(v161);
      }

      goto LABEL_174;
    }

    v80 = "?";
    if ((v160 + 3010) <= 9)
    {
      v80 = off_278B445B8[v160 + 3010];
    }

    v81 = gcks_log();
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_141;
    }

    v82 = *(v6 + 88);
    v83 = *(v6 + 72);
    v84 = *(v6 + 376);
    if (v84 > 2)
    {
      switch(v84)
      {
        case 3:
          v85 = "Connected";
          goto LABEL_135;
        case 4:
          v85 = "Disconnected";
          goto LABEL_135;
        case 255:
          v85 = "Invalid";
          goto LABEL_135;
      }
    }

    else
    {
      switch(v84)
      {
        case 0:
          v85 = "Created";
          goto LABEL_135;
        case 1:
          v85 = "ICE";
          goto LABEL_135;
        case 2:
          v85 = "Connecting";
LABEL_135:
          v119 = *(v6 + 640);
          v120 = "DTLSNotConnected";
          if (v119)
          {
            v120 = "?";
          }

          v165 = 67110146;
          *v166 = v82;
          *&v166[4] = 1024;
          if (v119 == 1)
          {
            v121 = "DTLSConnected";
          }

          else
          {
            v121 = v120;
          }

          *&v166[6] = v83;
          LOWORD(v167[0]) = 2080;
          *(v167 + 2) = v85;
          HIWORD(v167[2]) = 2080;
          *&v167[3] = v121;
          v168 = 2080;
          v169[0] = v80;
          _os_log_impl(&dword_239FB7000, v81, OS_LOG_TYPE_DEFAULT, "Non-OSPF packet received from participant %08X on channel %d. State=%s DTLSState=%s OSPFParse err=%s.", &v165, 0x2Cu);
LABEL_141:
          v122 = malloc_type_calloc(1uLL, 0x1070uLL, 0x1020040E1A74566uLL);
          if (v122)
          {
            v123 = v122;
            v122[1027] = *(v6 + 88);
            if (v9 >> 1 >= 0x801)
            {
              v124 = gcks_log();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                gckSessionRecvMessage_cold_1();
              }

              MCDashboardLog("MC: iLenClearText=%ld (out of bounds) OSPFParse err=%s - <rdar://problem/26050877>.", v9, v80);
              LODWORD(v9) = 0;
            }

            __memcpy_chk();
            v123[1026] = v9;
            v125 = v182[0];
            *(v123 + 257) = v181;
            *(v123 + 258) = v125;
            *(v123 + 518) = *&v182[1];
            v126 = v179;
            *(v123 + 1038) = v178;
            *(v123 + 1042) = v126;
            *(v123 + 523) = v180;
            *(v123 + 524) = v4;
            pthread_mutex_lock((v158 + 7400));
            v127 = (v158 + 7392);
            do
            {
              v128 = v127;
              v129 = *v127;
              v127 = (*v127 + 4200);
            }

            while (v129);
            *v128 = v123;
            pthread_cond_broadcast((v158 + 7464));
            pthread_mutex_unlock((v158 + 7400));
            goto LABEL_174;
          }

          v11 = 2149187587;
          v130 = gcks_log();
          if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v165 = 67109376;
          *v166 = 4208;
          *&v166[4] = 1024;
          *&v166[6] = -2145779709;
          v18 = "Calloc (%d bytes) failed with error (%X).";
          v19 = &v165;
          v20 = v130;
          goto LABEL_8;
      }
    }

    v85 = "?";
    goto LABEL_135;
  }

  v10 = gcks_log();
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v6;
    v171 = 67109120;
    v172 = v12;
    v13 = "Recvmsg on socket %d returned 0 (empty message).";
    v14 = v10;
    v15 = 8;
    goto LABEL_5;
  }

LABEL_175:
  v146 = *MEMORY[0x277D85DE8];
  return v11;
}

void gckSessionProcessHello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v57[5] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 376);
  v9 = gcks_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 72);
    v12 = *(a3 + 16);
    *buf = 67109632;
    *v56 = v10;
    *&v56[4] = 1024;
    *&v56[6] = v11;
    v57[0] = 2048;
    *&v57[1] = v12;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Received Hello from participant [%08X] over channel [%d]. Hello Flags [%llX].", buf, 0x18u);
  }

  v13 = micro();
  if (a4)
  {
    pthread_mutex_lock((a2 + 768));
    v14 = gckSessionChangeStateCList(a1, a2);
    pthread_mutex_unlock((a2 + 768));
    v15 = *(a3 + 12);
    v16 = *(a1 + 24);
    if (v16 < v15)
    {
      v15 = v16;
    }

    if (v15 <= 5)
    {
      v17 = 5;
    }

    else
    {
      v17 = v15;
    }

    v18 = v14 >= 0;
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  v19 = *(a2 + 88);
  if (*(a1 + 416) <= v19 || (v20 = gckSessionSendHello(a1, v19, 0, v17, *(a2 + 72)), (v20 & 0x80000000) == 0) || v20 == -1072037876)
  {
    if (!a4)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v21 = gcks_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      gckSessionProcessHello_cold_1();
      if (!a4)
      {
        goto LABEL_52;
      }
    }

    else if (!a4)
    {
      goto LABEL_52;
    }

    pthread_mutex_lock((a2 + 768));
    gckSessionChangeStateCList(a1, a2);
    pthread_mutex_unlock((a2 + 768));
  }

  pthread_mutex_lock((a2 + 768));
  v22 = *(a3 + 16);
  *(a2 + 40) = v22;
  v23 = (a2 + 600);
  v24 = *(a2 + 600);
  if ((v22 & 2) == 0)
  {
    if (v24)
    {
      while (1)
      {
        v25 = v24;
        if (*v24 == 1)
        {
          break;
        }

        v24 = *(v24 + 8);
        if (!v24)
        {
          v23 = (v25 + 8);
          goto LABEL_23;
        }
      }

      v24[1] = 0.065;
      v44 = v13 + v17;
      v24[4] = v44;
      if (*(v24 + 5))
      {
        v45 = *(a1 + 32);
      }

      else
      {
        v45 = 0.0;
      }

      v24[2] = v44 - v45;
    }

    else
    {
LABEL_23:
      v26 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
      *v26 = 1;
      v26[1] = 0.065;
      v27 = v13 + v17;
      v26[4] = v27;
      v26[2] = v27;
      v26[5] = 0.0;
      *(v26 + 12) = 0;
      *(v26 + 13) = *(a2 + 88);
      *v23 = v26;
    }

    goto LABEL_44;
  }

  if (v24)
  {
    do
    {
      v28 = *v24;
      if (v28 == 1)
      {
        v29 = gcks_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a2 + 88);
          v31 = *(a2 + 72);
          *buf = 67109376;
          *v56 = v30;
          *&v56[4] = 1024;
          *&v56[6] = v31;
          _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Remove Hello from the retry list for participant [%08X] channel [%d].", buf, 0xEu);
        }

        *v23 = *(v24 + 8);
        v32 = *(v24 + 5);
        if (v32)
        {
          free(v32);
        }

        free(v24);
      }

      else
      {
        if (v28 == 8)
        {
          v24[1] = *(a1 + 48);
          v46 = *(a2 + 360);
          v24[4] = v13 + v46;
          v24[2] = v13 + v46 * 0.5;
          v47 = gcks_log();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(v24 + 2);
            v49 = *(v24 + 4);
            *buf = 134218240;
            *v56 = v48;
            *&v56[8] = 2048;
            *v57 = v49;
            v41 = "Heartbeat queued. Updated state to: nextFire [%.1lf] waitUntil [%.1lf].";
            v42 = v47;
            v43 = 22;
LABEL_41:
            _os_log_impl(&dword_239FB7000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
          }

          goto LABEL_44;
        }

        v23 = (v24 + 8);
      }

      v24 = *v23;
    }

    while (*v23);
  }

  v54 = 0;
  v33 = OSPFMakeHeartbeat(&v54, *(a1 + 416), *(a2 + 88), 1, 1u);
  if ((v33 & 0x80000000) == 0)
  {
    v34 = v33;
    v35 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v35 = 8;
    v35[1] = *(a1 + 48);
    v36 = *(a2 + 360);
    v35[4] = v13 + v36;
    v35[2] = v13 + v36 * 0.5;
    *(v35 + 5) = v54;
    *(v35 + 12) = v34;
    *(v35 + 28) = 1;
    *(v35 + 13) = *(a2 + 88);
    *v23 = v35;
    v37 = gcks_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v35 + 28);
      v39 = *(a2 + 88);
      v40 = *(a2 + 72);
      *buf = 67109632;
      *v56 = v38;
      *&v56[4] = 1024;
      *&v56[6] = v39;
      v57[0] = 1024;
      *&v57[1] = v40;
      v41 = "Schedule a Heartbeat with SN [%d] for participant [%08X] over channel [%d].";
      v42 = v37;
      v43 = 20;
      goto LABEL_41;
    }
  }

LABEL_44:
  v50 = *(a1 + 16);
  if (v50 != -1)
  {
    *(a1 + 16) = -1;
    close(v50);
  }

  pthread_mutex_unlock((a2 + 768));
  if (v8 != 3 && v18)
  {
    v52 = *(a2 + 88);
    if (*(a1 + 416) < v52)
    {
      gckSessionSendDD(a1, v52, -1, 1);
    }
  }

LABEL_52:
  v53 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessDD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a1 + 424;
  IsNewInformationAvailableForParticipant = gckIsNewInformationAvailableForParticipant(*(a1 + 420), a1 + 424, *(a2 + 88));
  v7 = gcks_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 416);
    v9 = *(a2 + 88);
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    *buf = 67109888;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    LOWORD(v77) = 1024;
    *(&v77 + 2) = v10;
    HIWORD(v77) = 1024;
    v78 = v11;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "I am %08X. Received DD from participant %08X on channel [%d] priority [%d].", buf, 0x1Au);
  }

  pthread_mutex_lock((a1 + 7080));
  TracePrintNodes(a1, *(a3 + 12), *(a3 + 16), 0, *(a2 + 88));
  pthread_mutex_unlock((a1 + 7080));
  v12 = *(a2 + 88);
  if (*(a1 + 416) > v12)
  {
    gckSessionSendDD(a1, v12, *(a2 + 72), 0);
  }

  pthread_mutex_lock((a2 + 768));
  if (*(a2 + 752) == 0.0)
  {
    *(a2 + 752) = micro();
    v13 = gcks_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a2 + 752);
      v15 = v14 - *(a2 + 744);
      v16 = v14 - *(a2 + 696);
      *buf = 134218240;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      v77 = v16;
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "OSPF setup took %g seconds. Overall connection establishment took %g.", buf, 0x16u);
    }

    *buf = 0;
    v17 = *(a2 + 704) - *(a2 + 696);
    v18 = *(a2 + 728) - *(a2 + 720);
    v19 = *(a2 + 752) - *(a2 + 744);
    *(a1 + 7528);
    v67 = *(a2 + 612);
    v66 = *(a2 + 620);
    v65 = *(a2 + 616);
    v64 = *(a2 + 80);
    v63 = *(a2 + 380);
    v62 = *(a2 + 88);
    v61 = *(a1 + 416);
    if (CFPropertyListCreateFormatted())
    {
      v20 = gcks_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        gckSessionProcessDD_cold_1();
      }
    }

    else
    {
      MCMetricsLog(@"com.apple.multipeerconnectivity.gcksession.connectivityinfo", *buf, 0);
      MCDashboardLogJSON(*buf, 0, @"ConnectivityInfo");
      if (*buf)
      {
        CFRelease(*buf);
      }
    }
  }

  v21 = *(a2 + 600);
  if (v21)
  {
    v22 = (a2 + 600);
    do
    {
      if (*v21 == 2)
      {
        *v22 = v21[8];
        v23 = v21[5];
        if (v23)
        {
          free(v23);
        }

        free(v21);
      }

      else
      {
        v22 = v21 + 8;
      }

      v21 = *v22;
    }

    while (*v22);
  }

  v24 = pthread_mutex_unlock((a2 + 768));
  v25 = *(a3 + 12);
  *&v75 = *(a3 + 16);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v68 - ((v27 + 15) & 0x7FFFFFFF0);
  pthread_mutex_lock((a1 + 7080));
  v74 = v25;
  if (v25 < 1)
  {
    LODWORD(v73) = 0;
  }

  else
  {
    v31 = 0;
    LODWORD(v73) = 0;
    *&v30 = 67109632;
    v70 = v30;
    *&v30 = 67109120;
    v72 = v30;
    v71 = v6;
    do
    {
      v32 = *(a1 + 420);
      if (v32 < 1)
      {
        LODWORD(v33) = 0;
      }

      else
      {
        v33 = 0;
        v34 = (v75 + 416 * v31);
        v35 = v6;
        while (*v34 != *v35)
        {
          ++v33;
          v35 += 208;
          if (v32 == v33)
          {
            goto LABEL_34;
          }
        }

        if (v34[136] > v35[136])
        {
          v36 = gcks_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v34[136];
            v38 = v35[136];
            v39 = *v35;
            *buf = v70;
            *&buf[4] = v37;
            *&buf[8] = 1024;
            *&buf[10] = v38;
            LOWORD(v77) = 1024;
            *(&v77 + 2) = v39;
            _os_log_impl(&dword_239FB7000, v36, OS_LOG_TYPE_DEFAULT, "DD has newer information (DD SN [%d]/our SN [%d]) about participant [%08X]. Updating the routing table.", buf, 0x14u);
          }

          memcpy(v35, v34, 0x1A0uLL);
          v6 = v71;
        }
      }

      if (v33 == v32)
      {
LABEL_34:
        v40 = *(a1 + 420);
        v41 = gcks_log();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40 > 15)
        {
          if (v42)
          {
            v46 = *(v75 + 416 * v31);
            *buf = v72;
            *&buf[4] = v46;
            _os_log_impl(&dword_239FB7000, v41, OS_LOG_TYPE_DEFAULT, "Maximum number of nodes reached. Ignoring node for participant [%08X].", buf, 8u);
          }
        }

        else
        {
          if (v42)
          {
            v43 = *(v75 + 416 * v31);
            *buf = v72;
            *&buf[4] = v43;
            _os_log_impl(&dword_239FB7000, v41, OS_LOG_TYPE_DEFAULT, "Adding participant [%08X] to the routing table.", buf, 8u);
          }

          v44 = (v75 + 416 * v31);
          memcpy((v6 + 416 * *(a1 + 420)), v44, 0x1A0uLL);
          ++*(a1 + 420);
          v45 = v73;
          *&v28[4 * v73] = *v44;
          LODWORD(v73) = v45 + 1;
        }
      }

      ++v31;
    }

    while (v31 != v74);
  }

  gckSessionUpdateRoutingTable(a1, v29);
  v47 = v73;
  gckPreemptivelyClearFlagsForTransientNodes(a1, v28, v73);
  if (IsNewInformationAvailableForParticipant)
  {
    v48 = -1;
  }

  else
  {
    v48 = *(a2 + 88);
  }

  gckSessionSendLSA(a1, *(a1 + 420), v6, v48, 0);
  gckSessionHandleRemainingDisconnectedNodes(a1, 0);
  v74 = *(a1 + 420);
  v49 = gcks_log();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v74;
    *&buf[8] = 1024;
    *&buf[10] = v47;
    _os_log_impl(&dword_239FB7000, v49, OS_LOG_TYPE_DEFAULT, "Number of nodes in the routing table [%d]. New nodes [%d].", buf, 0xEu);
  }

  if (v47 >= 1)
  {
    v51 = 0;
    v73 = v47;
    *&v72 = a1 + 433;
    *&v50 = 136315138;
    v75 = v50;
    while (v74 < 1)
    {
LABEL_63:
      if (++v51 == v73)
      {
        goto LABEL_64;
      }
    }

    v52 = v74;
    v53 = v72;
    v54 = v72;
    while (1)
    {
      v55 = *&v28[4 * v51];
      if (v55 != *(v53 - 9) || *(v53 - 5) == -1)
      {
        goto LABEL_62;
      }

      if (*(a2 + 80) || *(a2 + 88) != v55)
      {
        v59 = gcks_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v75;
          *&buf[4] = v54;
          v57 = v59;
          v58 = "DD: Connected to participant %s (new connection).";
          goto LABEL_60;
        }
      }

      else
      {
        v56 = gcks_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v75;
          *&buf[4] = v54;
          v57 = v56;
          v58 = "DD: Connected to participant %s (direct connection).";
LABEL_60:
          _os_log_impl(&dword_239FB7000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0xCu);
        }
      }

      PostEventCallback(*(a1 + 408), *(v53 - 9), 0, v53, *(v53 - 1), 0);
LABEL_62:
      v53 += 416;
      v54 += 416;
      if (!--v52)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  *(a2 + 64) = 1;
  pthread_mutex_unlock((a1 + 7080));
  gckSessionCheckPendingConnections(a1, 0);
  v60 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessLSA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 16);
  v97 = *(a3 + 24);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = &v92 - ((v8 + 15) & 0x7FFFFFFF0);
  pthread_mutex_lock((v7 + 7080));
  v10 = gcks_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 416);
    v12 = *(a2 + 88);
    v13 = *(a3 + 12);
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *buf = 67110144;
    v100 = v11;
    v101 = 1024;
    v102 = v12;
    v103 = 1024;
    v104 = v13;
    v105 = 1024;
    v106 = v14;
    v107 = 1024;
    v108 = v15;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "I am %08X. Received LSA from particpant %08X with SN [%d] channel [%d] priority [%d].", buf, 0x20u);
  }

  v16 = gcks_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "My nodes:", buf, 2u);
  }

  v17 = *(a1 + 420);
  v18 = *(a1 + 416);
  *&v98 = a1 + 424;
  TracePrintNodes(a1, v17, a1 + 424, 1, v18);
  v19 = gcks_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "LSA nodes:", buf, 2u);
  }

  TracePrintNodes(a1, *(a3 + 16), *(a3 + 24), 0, *(a2 + 88));
  v22 = *(a3 + 16);
  if (v22 == *(a2 + 680))
  {
    if (v22 < 1)
    {
LABEL_19:
      gckSessionSendLSAACK(a1, *(a2 + 88), *(a2 + 72), *(a3 + 12));
      v33 = gcks_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a2 + 88);
        *buf = 67109120;
        v100 = v34;
        _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "Duplicate LSA from participant %08X: ignoring.", buf, 8u);
      }

      v35 = (a1 + 7080);
      goto LABEL_112;
    }

    v23 = 0;
    v24 = *(a3 + 24);
    v25 = *(a2 + 688);
    v26 = (v24 + 292);
    v27 = (v25 + 292);
    while (1)
    {
      v28 = (v24 + 416 * v23);
      v29 = (v25 + 416 * v23);
      if (*v28 != *v29)
      {
        break;
      }

      if (v28[1] != v29[1])
      {
        break;
      }

      if (v28[70] != v29[70])
      {
        break;
      }

      v30 = v28[71];
      if (v30 != v29[71])
      {
        break;
      }

      v31 = v27;
      v32 = v26;
      if (v30 >= 1)
      {
        do
        {
          v20 = *v32;
          if (v20 != *v31)
          {
            goto LABEL_22;
          }

          v20 = *(v32 - 1);
          if (v20 != *(v31 - 1))
          {
            goto LABEL_22;
          }

          v32 += 2;
          v31 += 2;
        }

        while (--v30);
      }

      ++v23;
      v26 += 104;
      v27 += 104;
      if (v23 == v22)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_22:
  *(a2 + 680) = v22;
  v36 = v97;
  if (v22 >= 1)
  {
    v37 = 0;
    v38 = *(a3 + 24);
    v39 = 288;
    do
    {
      v40 = (v38 + 416 * v37);
      v41 = (*(a2 + 688) + 416 * v37);
      *v41 = *v40;
      v42 = v40[35];
      v41[35] = v42;
      if (SHIDWORD(v42) >= 1)
      {
        v43 = 0;
        do
        {
          *(*(a2 + 688) + v39 + 8 * v43) = *(v38 + v39 + 8 * v43);
          ++v43;
          v38 = *(a3 + 24);
        }

        while (v43 < *(v38 + 416 * v37 + 284));
        LODWORD(v22) = *(a3 + 16);
      }

      ++v37;
      v39 += 416;
    }

    while (v37 < v22);
  }

  if (v6 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = v36 + 72;
    do
    {
      v47 = v36[104 * v44 + 71];
      v48 = v46;
      if (v47 >= 1)
      {
        while (1)
        {
          v49 = *v48;
          v48 += 2;
          if (v49 == *(a1 + 416))
          {
            break;
          }

          if (!--v47)
          {
            goto LABEL_36;
          }
        }

        v45 = 1;
      }

LABEL_36:
      ++v44;
      v46 += 104;
    }

    while (v44 != v6);
  }

  if (*(a3 + 16) == 1 && !((*v36 != *(a2 + 88)) | v45 & 1))
  {
    v52 = gcks_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v52, OS_LOG_TYPE_DEFAULT, "Got declining LSA.", buf, 2u);
    }

    v53 = *(a1 + 420);
    v20 = *v97;
    if (v53 < 1)
    {
      goto LABEL_52;
    }

    if (*v98 != v20)
    {
      v54 = (a1 + 840);
      v55 = 1;
      do
      {
        v56 = v55;
        if (v53 == v55)
        {
          break;
        }

        v57 = *v54;
        ++v55;
        v54 += 104;
      }

      while (v57 != v20);
      if (v56 >= v53)
      {
LABEL_52:
        PostEventCallback(*(a1 + 408), v20, 2, v97 + 9, *(v97 + 8), 0);
      }
    }

    *(a2 + 56) = 1;
    v58 = *(a1 + 16);
    v36 = v97;
    if (v58 != -1)
    {
      *(a1 + 16) = -1;
      close(v58);
      v36 = v97;
    }

    goto LABEL_55;
  }

  if (*(a2 + 64))
  {
LABEL_55:
    if (v6 >= 1)
    {
      v59 = 0;
      v96 = 0;
      v94 = a1 + 712;
      *&v21 = 67109632;
      v92 = v21;
      *&v21 = 67109120;
      v95 = v21;
      v93 = v6;
      while (1)
      {
        v60 = *(a1 + 420);
        if (v60 < 1)
        {
          LODWORD(v61) = 0;
        }

        else
        {
          v61 = 0;
          v62 = &v36[104 * v59];
          v63 = v98;
          while (*v62 != *v63)
          {
            ++v61;
            v63 += 104;
            if (v60 == v61)
            {
              goto LABEL_70;
            }
          }

          if (v62[136] > *(v63 + 136))
          {
            v64 = gcks_log();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = v62[136];
              v66 = *(v63 + 136);
              v67 = *v63;
              *buf = v92;
              v100 = v65;
              v101 = 1024;
              v102 = v66;
              v103 = 1024;
              v104 = v67;
              _os_log_impl(&dword_239FB7000, v64, OS_LOG_TYPE_DEFAULT, "LSA has newer information (LSA SN [%d]/our SN [%d]) about participant [%08X]. Updating the routing table.", buf, 0x14u);
            }

            memcpy(v63, v62, 0x1A0uLL);
            if (v63[71])
            {
              v6 = v93;
            }

            else
            {
              v76 = gcks_log();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                v77 = *v63;
                *buf = v95;
                v100 = v77;
                _os_log_impl(&dword_239FB7000, v76, OS_LOG_TYPE_DEFAULT, "Participant [%08X] is disconnected.", buf, 8u);
              }

              v78 = *(a1 + 708);
              v6 = v93;
              if (v78 > 0)
              {
                v20 = v94;
                while (*v20 != *v63)
                {
                  v20 += 8;
                  if (!--v78)
                  {
                    goto LABEL_68;
                  }
                }

                gckSessionDeleteNeighbor(a1, v20);
                gckSessionRequestLSAUpdateForNode(v98);
              }
            }

LABEL_68:
            v36 = v97;
          }
        }

        if (v61 != v60)
        {
          goto LABEL_84;
        }

LABEL_70:
        v68 = &v36[104 * v59];
        if (v68[71])
        {
          break;
        }

        v74 = *(a1 + 708);
        if (v74 >= 1)
        {
          v20 = v94;
          while (*v20 != *v68)
          {
            v20 += 8;
            if (!--v74)
            {
              goto LABEL_83;
            }
          }

          gckSessionDeleteNeighbor(a1, v20);
          gckSessionRequestLSAUpdateForNode(v98);
          goto LABEL_83;
        }

LABEL_84:
        if (++v59 == v6)
        {
          goto LABEL_95;
        }
      }

      v69 = *(a1 + 420);
      v70 = gcks_log();
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
      if (v69 > 15)
      {
        if (v71)
        {
          v75 = *v68;
          *buf = v95;
          v100 = v75;
          _os_log_impl(&dword_239FB7000, v70, OS_LOG_TYPE_DEFAULT, "Maximum number of nodes reached. Ignoring node [%08X].", buf, 8u);
        }
      }

      else
      {
        if (v71)
        {
          v72 = *v68;
          *buf = v95;
          v100 = v72;
          _os_log_impl(&dword_239FB7000, v70, OS_LOG_TYPE_DEFAULT, "Adding participant [%08X] to the routing table.", buf, 8u);
        }

        memcpy((v98 + 416 * *(a1 + 420)), v68, 0x1A0uLL);
        ++*(a1 + 420);
        v73 = v96;
        *&v9[4 * v96] = *v68;
        v96 = v73 + 1;
      }

LABEL_83:
      v36 = v97;
      goto LABEL_84;
    }

    v96 = 0;
LABEL_95:
    gckSessionUpdateRoutingTable(a1, v20);
    gckSessionSendLSAACK(a1, *(a2 + 88), *(a2 + 72), *(a3 + 12));
    IsNewInformationAvailableForParticipant = gckIsNewInformationAvailableForParticipant(*(a1 + 420), v98, *(a2 + 88));
    gckPreemptivelyClearFlagsForTransientNodes(a1, v9, v96);
    if (IsNewInformationAvailableForParticipant)
    {
      v80 = -1;
    }

    else
    {
      v80 = *(a2 + 88);
    }

    gckSessionSendLSA(a1, *(a1 + 420), v98, v80, 0);
    v81 = v96;
    gckSessionHandleRemainingDisconnectedNodes(a1, 0);
    v83 = *(a1 + 420);
    if (v81 >= 1)
    {
      v84 = 0;
      v85 = v96;
      v97 = (a1 + 433);
      *&v82 = 67109120;
      v98 = v82;
      do
      {
        if (v83 >= 1)
        {
          v86 = v83;
          v87 = v97;
          do
          {
            if (*&v9[4 * v84] == *(v87 - 9) && *(v87 - 5) != -1)
            {
              v88 = gcks_log();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                v89 = *(v87 - 9);
                *buf = v98;
                v100 = v89;
                _os_log_impl(&dword_239FB7000, v88, OS_LOG_TYPE_DEFAULT, "Connected to participant [%08X] (new connection).", buf, 8u);
              }

              PostEventCallback(*(a1 + 408), *(v87 - 9), 0, v87, *(v87 - 1), 0);
            }

            v87 += 416;
            --v86;
          }

          while (v86);
        }

        ++v84;
      }

      while (v84 != v85);
    }

    v90 = gcks_log();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v100 = v83;
      v101 = 1024;
      v102 = v96;
      _os_log_impl(&dword_239FB7000, v90, OS_LOG_TYPE_DEFAULT, "Number of nodes in the routing table [%d] -- New nodes [%d].", buf, 0xEu);
    }

    v35 = (a1 + 7080);
LABEL_112:
    pthread_mutex_unlock(v35);
    goto LABEL_113;
  }

  pthread_mutex_unlock((a1 + 7080));
  v50 = gcks_log();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = *(a2 + 88);
    *buf = 67109120;
    v100 = v51;
    _os_log_impl(&dword_239FB7000, v50, OS_LOG_TYPE_DEFAULT, "Premature LSA from participant %08X: ignoring.", buf, 8u);
  }

LABEL_113:
  v91 = *MEMORY[0x277D85DE8];
}