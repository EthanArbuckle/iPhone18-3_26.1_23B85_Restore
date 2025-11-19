void sub_2334FDD50(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334FDE68;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334FDE68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334FDF38;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:25 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334FDF38(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Set Repeat Mode" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Set Repeat Mode", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Set Repeat Mode (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334FE628(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334FE740;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334FE740(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334FE810;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:26 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334FE810(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Set Shuffle Mode" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Set Shuffle Mode", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Set Shuffle Mode (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334FEE54(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allKeys];
  if (!v3)
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(*(a1 + 40) + 64) length])
    {
      v7 = [*(a1 + 40) aceId];
      v8 = sub_233505670(@"Set Volume Level", v7);
      v9 = *(*(a1 + 40) + 64);
      *(*(a1 + 40) + 64) = v8;
    }

    v10 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 40) + 64);
      v12 = [v6 dictionary];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_ERROR, "Set Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v13 = *(a1 + 48);
    v14 = [v6 dictionary];
    (*(v13 + 16))(v13, v14);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = sub_2334FF2CC;
  v48 = sub_2334FF2DC;
  v49 = objc_alloc_init(MEMORY[0x277D47208]);
  v15 = dispatch_group_create();
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2334FF2E4;
  v42[3] = &unk_2789DB990;
  v16 = v15;
  v17 = *(a1 + 40);
  v43 = v16;
  v44 = v17;
  v45 = buf;
  v18 = MEMORY[0x2383A14D0](v42);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2334FF3D0;
  v37[3] = &unk_2789DB9E0;
  v37[4] = *(a1 + 40);
  v19 = v5;
  v38 = v19;
  v20 = v18;
  v40 = v20;
  v21 = v16;
  v39 = v21;
  v41 = buf;
  v22 = MEMORY[0x2383A14D0](v37);
  v23 = objc_alloc_init(MEMORY[0x277D27838]);
  v24 = *(a1 + 40);
  v25 = *(v24 + 56);
  *(v24 + 56) = v23;

  dispatch_group_enter(v21);
  v26 = *(*(a1 + 40) + 56);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2334FFB7C;
  v34[3] = &unk_2789DBA30;
  v27 = v21;
  v35 = v27;
  v28 = v22;
  v36 = v28;
  [v26 discoverRemoteControlEndpointsMatchingUIDs:v19 completion:v34];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334FFD30;
  block[3] = &unk_2789DBA58;
  v29 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v33 = buf;
  v32 = v29;
  dispatch_group_notify(v27, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(buf, 8);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334FF2CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334FF2E4(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  CFRetain(a2);
  dispatch_group_enter(*(a1 + 32));
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = v7.i64[0];
  MRAVEndpointSetOutputDeviceUIDVolume();
}

void sub_2334FF3D0(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 64) length])
  {
    v3 = [*(a1 + 32) aceId];
    v4 = sub_233505670(@"Set Volume Level", v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;
  }

  v7 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v8[8];
    v10 = [v8 volumeValue];
    [v10 floatValue];
    *buf = 138543874;
    v88 = v9;
    v89 = 2048;
    v90 = v11;
    v91 = 2114;
    v92 = a2;
    _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: volume: %f endpoint %{public}@", buf, 0x20u);
  }

  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = MRAVEndpointCopyOutputDevices();
  v12 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v82;
    v68 = *MEMORY[0x277D48738];
    v65 = *MEMORY[0x277D48730];
    v64 = *MEMORY[0x277D48728];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v82 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v81 + 1) + 8 * i);
        v17 = [v16 uid];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v18 = *(a1 + 40);
        v19 = [v18 countByEnumeratingWithState:&v77 objects:v85 count:16];
        if (!v19)
        {
          goto LABEL_25;
        }

        v20 = v19;
        v21 = *v78;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v78 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([v16 containsUID:*(*(&v77 + 1) + 8 * j)])
            {

              v23 = [*(a1 + 32) actionType];
              v24 = [v23 isEqualToString:v68];

              v25 = *(a1 + 32);
              if (v24)
              {
                if (![v25[8] length])
                {
                  v26 = [*(a1 + 32) aceId];
                  v27 = sub_233505670(@"Set Volume Level", v26);
                  v28 = *(a1 + 32);
                  v29 = *(v28 + 64);
                  *(v28 + 64) = v27;
                }

                v30 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = *(a1 + 32);
                  v32 = v31[8];
                  v33 = [v31 volumeValue];
                  [v33 floatValue];
                  *buf = 138543874;
                  v88 = v32;
                  v89 = 2048;
                  v90 = v34;
                  v91 = 2114;
                  v92 = v17;
                  _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: set volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                v35 = *(a1 + 56);
                v18 = [*(a1 + 32) volumeValue];
                [v18 floatValue];
                (*(v35 + 16))(v35, a2, v17);
                goto LABEL_25;
              }

              v36 = [v25 actionType];
              v37 = [v36 isEqualToString:v65];

              v38 = *(a1 + 32);
              if (v37)
              {
                if (![v38[8] length])
                {
                  v39 = [*(a1 + 32) aceId];
                  v40 = sub_233505670(@"Set Volume Level", v39);
                  v41 = *(a1 + 32);
                  v42 = *(v41 + 64);
                  *(v41 + 64) = v40;
                }

                v43 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = *(a1 + 32);
                  v45 = v44[8];
                  v46 = [v44 volumeValue];
                  [v46 floatValue];
                  *buf = 138543874;
                  v88 = v45;
                  v89 = 2048;
                  v90 = v47;
                  v91 = 2114;
                  v92 = v17;
                  _os_log_impl(&dword_2334D9000, v43, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: increase volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                dispatch_group_enter(*(a1 + 48));
                CFRetain(a2);
                v73 = *(a1 + 32);
                v76 = *(a1 + 56);
                v74 = v17;
                v75 = *(a1 + 48);
                MRAVEndpointGetOutputDeviceUIDVolume();

                v48 = v76;
              }

              else
              {
                v49 = [v38 actionType];
                v50 = [v49 isEqualToString:v64];

                if (!v50)
                {
                  v60 = objc_alloc_init(MEMORY[0x277D47208]);
                  v61 = *(*(a1 + 64) + 8);
                  v62 = *(v61 + 40);
                  *(v61 + 40) = v60;

                  goto LABEL_40;
                }

                if (![*(*(a1 + 32) + 64) length])
                {
                  v51 = [*(a1 + 32) aceId];
                  v52 = sub_233505670(@"Set Volume Level", v51);
                  v53 = *(a1 + 32);
                  v54 = *(v53 + 64);
                  *(v53 + 64) = v52;
                }

                v55 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = *(a1 + 32);
                  v57 = v56[8];
                  v58 = [v56 volumeValue];
                  [v58 floatValue];
                  *buf = 138543874;
                  v88 = v57;
                  v89 = 2048;
                  v90 = v59;
                  v91 = 2114;
                  v92 = v17;
                  _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: decrease volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                dispatch_group_enter(*(a1 + 48));
                CFRetain(a2);
                v69 = *(a1 + 32);
                v72 = *(a1 + 56);
                v70 = v17;
                v71 = *(a1 + 48);
                MRAVEndpointGetOutputDeviceUIDVolume();

                v48 = v72;
              }

              goto LABEL_40;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

LABEL_25:

LABEL_40:
      }

      v13 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v13);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_2334FFB7C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277D27830]);
        dispatch_group_enter(*(a1 + 32));
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = sub_2334FFE8C;
        v12[3] = &unk_2789DBA08;
        v13 = v8;
        v15 = *(a1 + 40);
        v16 = v7;
        v14 = *(a1 + 32);
        v9 = v8;
        [v9 connectToEndpoint:v7 completion:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334FFD30(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 64) length])
  {
    v2 = [*(a1 + 32) aceId];
    v3 = sub_233505670(@"Set Volume Level", v2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 64);
    v8 = [*(*(*(a1 + 48) + 8) + 40) dictionary];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Set Volume Level (completion) <%{public}@>: notifying assistant %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 40);
  v10 = [*(*(*(a1 + 48) + 8) + 40) dictionary];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334FFE8C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(v2 + 16);
  v5 = *(a1 + 32);
  v4(v2, v3);
  dispatch_group_leave(*(a1 + 40));
}

void sub_2334FFF04(uint64_t a1, void *a2, float a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _MPLogCategoryAssistant();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 msv_description];
      v16 = 134218242;
      v17 = a3;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "volume: %f error=%{public}@", &v16, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "volume: %f", &v16, 0xCu);
    }

    v9 = [*(a1 + 32) volumeValue];
    [v9 floatValue];
    v11 = v10 + a3;

    v12.n128_u32[0] = 1.0;
    if (v11 <= 1.0)
    {
      v12.n128_f32[0] = v11;
    }

    v13 = *(a1 + 64);
    v14 = *(a1 + 40);
    (*(*(a1 + 56) + 16))(v12);
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

void sub_233500088(uint64_t a1, void *a2, float a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _MPLogCategoryAssistant();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 msv_description];
      v15 = 134218242;
      v16 = a3;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "volume: %f error=%{public}@", &v15, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = a3;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "volume: %f", &v15, 0xCu);
    }

    v9 = [*(a1 + 32) volumeValue];
    [v9 floatValue];
    v11 = a3 - v10;

    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    (*(*(a1 + 56) + 16))(fmaxf(v11, 0.0));
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));

  v14 = *MEMORY[0x277D85DE8];
}

void sub_233500208(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 64) length];
  if (a2)
  {
    if (!v4)
    {
      v5 = [*(a1 + 32) aceId];
      v6 = sub_233505670(@"Set Volume Level", v5);
      v7 = *(a1 + 32);
      v8 = *(v7 + 64);
      *(v7 + 64) = v6;
    }

    v9 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 64);
      v21 = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = *&a2;
      _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_ERROR, "Set Volume Level (setvolume) <%{public}@>: volume set failed with error: %{public}@", &v21, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v11 = [*(a1 + 32) aceId];
      v12 = sub_233505670(@"Set Volume Level", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 64);
      *(v13 + 64) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 32) + 64);
      v17 = *(a1 + 64);
      v21 = 138543618;
      v22 = v16;
      v23 = 2048;
      v24 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: new volume: %f", &v21, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277D47218]);
    v19 = *(*(a1 + 48) + 8);
    v9 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  CFRelease(*(a1 + 56));
  dispatch_group_leave(*(a1 + 40));
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23350078C(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2335008A8;
  v11[3] = &unk_2789DBAA8;
  v7 = *(a1 + 48);
  v15 = *(a1 + 80);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2335008A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_233500984;
  v10[3] = &unk_2789DBB98;
  v11 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  [v11 sendCommand:v4 toDestination:a2 withOptions:v6 completion:v10];
}

void sub_233500984(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Skip Time Interval" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Skip Time Interval", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Skip Time Interval (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_233500F50(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_233501068;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_233501068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233501138;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:4 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_233501138(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Skip To Next Item" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Skip To Next Item", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Skip To Next Item (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_233501758(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23350184C;
  v11[3] = &unk_2789DBB48;
  v10 = *(a1 + 40);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v4 resolveWithHashedRouteIdentifiers:v5 audioRoutingInfo:a2 completion:v11];
}

void sub_23350184C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233501918;
  v7[3] = &unk_2789DBB20;
  v7[4] = v4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v6 sendCommand:5 toDestination:a2 withOptions:v5 completion:v7];
}

void sub_233501918(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Seek To Previous Item" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 32) + 64) length])
  {
    v14 = [*(a1 + 32) aceId];
    v15 = sub_233505670(@"Seek To Previous Item", v14);
    v16 = *(a1 + 32);
    v17 = *(v16 + 64);
    *(v16 + 64) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 64);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Seek To Previous Item (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 48);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_233501F48(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_233502050;
  v11[3] = &unk_2789DBBC0;
  v6 = (a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 80);
  [v4 resolveWithHashedRouteIdentifiers:v5 audioRoutingInfo:a2 completion:v11];
}

void sub_233502050(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233502120;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:0 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_233502120(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Start Playback" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Start Playback", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Start Playback (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

id sub_233502524(void *a1)
{
  v1 = *MEMORY[0x277CD56B0];
  v2 = a1;
  v3 = [v2 valueForProperty:v1];
  v4 = [v3 longLongValue];

  v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v6 = [v2 identifierURLScheme];

  [v5 setScheme:v6];
  [v5 setHost:@"device"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%lld", v4];
  [v5 setPath:v7];

  v8 = [v5 URL];

  return v8;
}

uint64_t sub_23350261C(void *a1)
{
  v1 = qword_27DE0E780;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_27DE0E780, &unk_2848D4420);
  }

  v3 = qword_27DE0E778;
  v4 = [v2 host];

  v5 = [v3 objectForKey:v4];
  v6 = [v5 integerValue];

  return v6;
}

void sub_2335026B4()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"device";
  v3[1] = @"multiverse";
  v4[0] = &unk_2848D8CA0;
  v4[1] = &unk_2848D8CB8;
  v3[2] = @"store";
  v3[3] = @"ulid";
  v4[2] = &unk_2848D8CD0;
  v4[3] = &unk_2848D8CE8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_27DE0E778;
  qword_27DE0E778 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23350408C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2335040A4(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233504158;
  v5[3] = &unk_2789DBC78;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  sub_233507BFC(@"Subscription Status Sync Handler", @"*", 1, a2, v5);
}

void sub_233504158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_2335046B4(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v2 = v1;
    v3 = [v2 itemsQuery];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_233504870;
    v13[3] = &unk_2789DBD18;
    v13[4] = &v14;
    [v3 _enumerateItemsUsingBlock:v13];

    v4 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v5 = *MEMORY[0x277CD57C8];
    v6 = *MEMORY[0x277CD5798];
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD57C8], *MEMORY[0x277CD5798], 0}];
    v8 = [v1 valuesForProperties:v7];

    v9 = [v8 objectForKey:v5];
    v10 = [v9 integerValue];

    if ((v10 & 0x300) != 0)
    {
      v11 = [v8 objectForKey:v6];
      v4 = [v11 BOOLValue];
    }

    else
    {
      v4 = (v10 & 0x805) != 0;
    }
  }

  return v4 & 1;
}

void sub_233504858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233504870(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (v5)
  {
    if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (v6 = v5, *(*(*(a1 + 32) + 8) + 24) = sub_2335046B4(), v5 = v6, (*(*(*(a1 + 32) + 8) + 24)))
    {
      *a3 = 1;
    }
  }
}

void sub_233504D4C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_233504E8C;
  v13[3] = &unk_2789DBCC8;
  v13[4] = v3;
  [v4 enumerateEntityChangesAfterSyncAnchor:v2 maximumRevisionType:0 inUsersLibrary:1 usingBlock:v13];
  v5 = *(a1 + 32);
  if (*(v5 + 42) == 1)
  {
    v6 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v7 = "Sync Handler (enumeration): aborted";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_2334D9000, v8, v9, v7, v12, 2u);
    }
  }

  else
  {
    dispatch_semaphore_wait(*(v5 + 16), 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    dispatch_semaphore_signal(*(*(a1 + 32) + 24));
    v6 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      v7 = "Sync Handler (enumeration): finished";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      goto LABEL_6;
    }
  }
}

void sub_233504E8C(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v5 = objc_autoreleasePoolPush();
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(a1 + 32) + 42) == 1)
  {
    *a3 = 1;
    goto LABEL_21;
  }

  v6 = [v16 entity];
  if (*(*(a1 + 32) + 41) == 1 && [v16 deletionType])
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 valueForProperty:*MEMORY[0x277CD5918]];
    if ([v8 BOOLValue])
    {
LABEL_10:
      v7 = 16;
LABEL_19:

      goto LABEL_20;
    }

    v9 = [v6 valueForProperty:*MEMORY[0x277CD5920]];
    if ([v9 BOOLValue])
    {

      goto LABEL_10;
    }

    v12 = [v6 valueForProperty:*MEMORY[0x277CD5910]];
    v13 = [v12 BOOLValue];

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v6 valueForProperty:*MEMORY[0x277CD57A0]];
        v11 = [v10 BOOLValue];

        if ((v11 & 1) == 0)
        {
          *(*(a1 + 32) + 40) = 1;
        }
      }

      goto LABEL_18;
    }

    if ([v6 groupingType])
    {
LABEL_18:
      v14 = *(a1 + 32);
      v15 = v16;
      v8 = *(v14 + 32);
      *(v14 + 32) = v15;
      v7 = 24;
      goto LABEL_19;
    }
  }

LABEL_5:
  v7 = 16;
LABEL_20:
  dispatch_semaphore_signal(*(*(a1 + 32) + v7));

LABEL_21:
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_233505178()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_2814EE818;
  qword_2814EE818 = v0;

  v2 = qword_2814EE818;

  return [v2 setMaxConcurrentOperationCount:5];
}

id sub_2335051C8(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27C30]];
  if ([v2 isEqualToString:*MEMORY[0x277D27B10]])
  {
    v3 = MEMORY[0x277D47588];
LABEL_5:
    v4 = objc_alloc_init(v3);
    goto LABEL_7;
  }

  if ([v2 isEqualToString:*MEMORY[0x277D27AF0]])
  {
    v3 = MEMORY[0x277D47520];
    goto LABEL_5;
  }

  v4 = objc_alloc_init(MEMORY[0x277D475B8]);
  v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
  [v4 setGenre:v5];

LABEL_7:
  v6 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
  [v4 setArtist:v6];

  v7 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
  [v4 setAlbum:v7];

  v8 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27C88]];
  [v4 setTitle:v8];

  v9 = [v1 objectForKeyedSubscript:*MEMORY[0x277D27CC0]];
  v10 = [v9 longLongValue];

  if ([v2 isEqualToString:*MEMORY[0x277D27AF8]])
  {
    v11 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v11 setScheme:@"x-sampradiotrack"];
    [v11 setHost:@"device"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%lld", v10];
    [v11 setPath:v12];

    v13 = [v11 URL];

    [v4 setIdentifier:v13];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CD5DE0]) initWithPersistentID:v10];
    if (v14)
    {
      v15 = MEMORY[0x277D27840];
      v13 = v14;
      v16 = objc_alloc_init(v15);
      v17 = [v13 multiverseIdentifier];
      v18 = [v17 data];
      v19 = [v16 encodeURLData:v18];
      v20 = objc_alloc_init(MEMORY[0x277CCACE0]);
      v21 = [v13 identifierURLScheme];

      [v20 setScheme:v21];
      [v20 setHost:@"multiverse"];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v19];
      [v20 setPath:v22];

      v23 = [v20 URL];

      [v4 setIdentifier:v23];
    }

    else
    {
      v13 = 0;
    }
  }

  return v4;
}

id sub_23350552C(void *a1)
{
  v1 = MEMORY[0x277D471B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setDate:v2];

  v4 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v5 = [v4 name];
  [v3 setTimeZoneId:v5];

  return v3;
}

BOOL sub_2335055C0(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v7 = 0;
  v3 = [v2 getPropertiesForUserIdentity:v1 error:&v7];

  v4 = [v3 DSID];
  v5 = [v4 unsignedLongLongValue] && objc_msgSend(v3, "isActiveLocker") && MPCloudControllerGetSagaOnDiskDatabaseRevisionForUserIdentity() == 0;

  return v5;
}

id sub_233505670(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 substringToIndex:3];
  v7 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 3}];
  v8 = [v5 stringWithFormat:@"%@%@", v6, v7];

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (gethash) <%{public}@>: ace id: %{public}@", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_2335057BC(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_INFO, "%{public}@ (hashedroute) <%{public}@>: encoded route UID table", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          v22 = v5;
          v23 = 2114;
          v24 = v6;
          v25 = 2114;
          v26 = v14;
          _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_INFO, "%{public}@ (hashedroute) <%{public}@>: id: %{public}@", buf, 0x20u);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2335059A8(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v7 + 1) + 8 * i) unsignedIntValue])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_233505AA8(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 containsObject:&unk_2848D8D00])
  {
LABEL_2:
    v2 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_23;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
LABEL_20:

    v15 = objc_alloc(MEMORY[0x277D47208]);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"player statuses: %@", v3];
    v17 = [v15 initWithReason:v16];

    goto LABEL_24;
  }

  v5 = v4;
  v6 = *v21;
  v7 = MEMORY[0x277D48640];
  v8 = MEMORY[0x277D485A0];
  v9 = MEMORY[0x277D485E8];
  v10 = MEMORY[0x277D486B8];
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v21 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v12 = [*(*(&v20 + 1) + 8 * v11) unsignedIntValue];
    if (v12 > 99)
    {
      break;
    }

    if (v12 == 1)
    {
      v13 = v7;
      goto LABEL_17;
    }

    if (v12 == 20)
    {
      v13 = v8;
      goto LABEL_17;
    }

LABEL_18:
    if (v5 == ++v11)
    {
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  if (v12 != 101)
  {
    if (v12 == 100)
    {
      v13 = v10;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v13 = v9;
LABEL_17:
  v14 = *v13;
  if (*v13 == -1)
  {
    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_2;
  }

  v2 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v14];
LABEL_23:
  v17 = v2;
LABEL_24:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void sub_233505CB8(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  [v14 setObject:v9 forKeyedSubscript:@"pluginname"];
  v15 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MRMediaRemoteCopyCommandDescription();
    *buf = 138543874;
    v33 = v9;
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = v16;
    _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: feedback command %{public}@", buf, 0x20u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_233505EDC;
  v24[3] = &unk_2789DBE08;
  v31 = a3;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v14;
  v29 = v13;
  v30 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = v9;
  sub_233505EDC(v24, 0);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_233505EDC(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_233506080;
  v13[3] = &unk_2789DBDE0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = cf;
  v7 = *(a1 + 48);
  v19 = *(a1 + 80);
  v17 = *(a1 + 72);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 64);
  v11 = v13;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_233506244;
  v23 = &unk_2789DBE30;
  v25 = v4;
  v24 = v11;
  v12 = v11;
  MRMediaRemoteGetSupportedCommandsForOrigin();
}

void sub_233506080(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v20 = v3;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: getting now playing", buf, 0x16u);
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v17 = *(a1 + 80);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18 = *(a1 + 88);
  v16 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 64);
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_233506244(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      v9 = MEMORY[0x2383A0F00](ValueAtIndex) == *(a1 + 40);
      v6 = v7++;
    }

    while (!v9 && v5 > v6);
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

void sub_2335062DC(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v42 = 0;
  v4 = [v3 objectForKey:*MEMORY[0x277D27C28]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v40[1] = MEMORY[0x277D85DD0];
    v40[2] = 3221225472;
    v40[3] = sub_2335067AC;
    v40[4] = &unk_2789DBD40;
    v41 = v3;
    v6 = MPMediaRemoteCommandOptionsForFeedbackOrPurchaseCommandEvent();
    v7 = [v6 mutableCopy];

    v8 = MEMORY[0x277D485C0];
  }

  else
  {
    v7 = 0;
    v8 = MEMORY[0x277D485C0];
  }

  v9 = *v8;
  if (*(a1 + 92) == 1)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v40[0] = 0;
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v40];
      v12 = v40[0];
      if (!v12)
      {
        [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277D27E18]];
      }
    }

    [v7 setObject:@"com.apple.MediaAssistant.siri" forKeyedSubscript:*MEMORY[0x277D27DC0]];
    v13 = objc_alloc_init(MEMORY[0x277D27850]);
    [v13 setOrigin:*(a1 + 80)];
    v14 = objc_alloc_init(MEMORY[0x277D27828]);
    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 138543874;
      v44 = v16;
      v45 = 2114;
      v46 = v17;
      v47 = 2114;
      v48 = v7;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: sending command with options: %{public}@", buf, 0x20u);
    }

    v18 = *(a1 + 88);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2335067B8;
    v34[3] = &unk_2789DBD90;
    v35 = v14;
    v38 = *(a1 + 72);
    v36 = *(a1 + 56);
    v39 = v9;
    v37 = *(a1 + 64);
    v19 = v14;
    [v19 sendCommand:v18 toDestination:v13 withOptions:v7 completion:v34];
  }

  else
  {
    if (!*(a1 + 72))
    {
      goto LABEL_19;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *buf = 138543618;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "%{public}@ (feedback) <%{public}@>: command not supported", buf, 0x16u);
    }

    [*(a1 + 56) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v24 = [v23 stringValue];
    [*(a1 + 56) setObject:v24 forKeyedSubscript:@"errorcode"];

    v25 = MEMORY[0x277CCABB0];
    [*(a1 + 64) timeIntervalSinceNow];
    v27 = [v25 numberWithDouble:fabs(v26)];
    [*(a1 + 56) setObject:v27 forKeyedSubscript:@"duration"];

    v28 = *(a1 + 72);
    v29 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v9];
    v30 = [v29 dictionary];
    (*(v28 + 16))(v28, v30);

    v33 = *(a1 + 56);
    AnalyticsSendEventLazy();
    v13 = v33;
  }

LABEL_19:
  v31 = *(a1 + 80);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2335067B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (sub_2335059A8(a3))
    {
      v6 = objc_alloc_init(MEMORY[0x277D47218]);
      v7 = [v6 dictionary];

      [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*(a1 + 64)];
      v7 = [v8 dictionary];

      [*(a1 + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
      v10 = [v9 stringValue];
      [*(a1 + 40) setObject:v10 forKeyedSubscript:@"errorcode"];
    }

    v11 = MEMORY[0x277CCABB0];
    [*(a1 + 48) timeIntervalSinceNow];
    v13 = [v11 numberWithDouble:fabs(v12)];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:@"duration"];

    (*(*(a1 + 56) + 16))();
    v14 = *(a1 + 40);
    AnalyticsSendEventLazy();
  }
}

id sub_23350699C()
{
  if (qword_27DE0E788 != -1)
  {
    dispatch_once(&qword_27DE0E788, &unk_2848D4460);
  }

  v1 = qword_27DE0E790;

  return v1;
}

uint64_t sub_2335069F0()
{
  qword_27DE0E790 = dispatch_group_create();

  return MEMORY[0x2821F96F8]();
}

void sub_233506A24(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (MSVDeviceIsAudioAccessory())
  {
    v44 = v12;
    v14 = objc_alloc_init(MEMORY[0x277CEF318]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_2335070FC;
    v51[3] = &unk_2789DBEC8;
    v15 = v14;
    v52 = v15;
    v16 = v9;
    v53 = v16;
    v43 = v10;
    v17 = v10;
    v54 = v17;
    v41 = v13;
    v55 = v41;
    v42 = MEMORY[0x2383A14D0](v51);
    v18 = v16;
    v19 = v17;
    v20 = [MEMORY[0x277D7FA80] currentDeviceInfo];
    v21 = [v20 isInternalBuild];

    if (v21)
    {
      CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      v22 = CFPreferencesCopyAppValue(@"SiriLibrarySharedUserID", @"com.apple.mobileipod");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
        if (v23)
        {
          v24 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v57 = v18;
            v58 = 2114;
            v59 = v19;
            _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ (utility) <%{public}@>: override library Shared User ID in place", buf, 0x16u);
          }
        }
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

    v26 = v18;
    v27 = v19;
    v28 = [MEMORY[0x277D7FA80] currentDeviceInfo];
    v29 = [v28 isInternalBuild];

    if (v29)
    {
      CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      v30 = CFPreferencesCopyAppValue(@"SiriRequesterSharedUserID", @"com.apple.mobileipod");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
        if (v31)
        {
          v32 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v57 = v26;
            v58 = 2114;
            v59 = v27;
            _os_log_impl(&dword_2334D9000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ (utility) <%{public}@>: override requester Shared User ID in place", buf, 0x16u);
          }
        }
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

    v12 = v44;

    if (v23)
    {
      if (v31)
      {
LABEL_25:
        if ([v23 length])
        {
          v33 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543875;
            v57 = v26;
            v58 = 2114;
            v59 = v27;
            v60 = 2113;
            v61 = v23;
            _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: library Shared User ID %{private}@", buf, 0x20u);
          }

          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = sub_233507224;
          v45[3] = &unk_2789DBF18;
          v46 = v26;
          v47 = v27;
          v48 = v31;
          v34 = v42;
          v49 = v42;
          v50 = v41;
          (v42)[2](v49, v23, 1, v45);

          v35 = v46;
        }

        else
        {
          v36 = [v31 length];
          v37 = _MPLogCategoryAssistant();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            if (v38)
            {
              v39 = [MEMORY[0x277D7FCA0] activeAccount];
              *buf = 138543875;
              v57 = v26;
              v58 = 2114;
              v59 = v27;
              v60 = 2113;
              v61 = v39;
              _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in forced guest mode with forced private listening: YES", buf, 0x20u);
            }

            v35 = [MEMORY[0x277D7FCA0] activeAccount];
            (*(v41 + 2))(v41, v35, MEMORY[0x277CBEC38]);
            v12 = v44;
          }

          else
          {
            v12 = v44;
            if (v38)
            {
              *buf = 138543618;
              v57 = v26;
              v58 = 2114;
              v59 = v27;
              _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using active account with configured private listening", buf, 0x16u);
            }

            v35 = [MEMORY[0x277D7FCA0] activeAccount];
            (*(v41 + 2))(v41, v35, 0);
          }

          v34 = v42;
        }

        v10 = v43;
        goto LABEL_40;
      }
    }

    else
    {
      v23 = v44;
      if (v31)
      {
        goto LABEL_25;
      }
    }

    v31 = v11;
    goto LABEL_25;
  }

  v25 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v57 = v9;
    v58 = 2114;
    v59 = v10;
    _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using active account with configured private listening for single user only device", buf, 0x16u);
  }

  v15 = [MEMORY[0x277D7FCA0] activeAccount];
  (*(v13 + 2))(v13, v15, 0);
LABEL_40:

  v40 = *MEMORY[0x277D85DE8];
}

void sub_2335070FC(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2335076B0;
  v12[3] = &unk_2789DBEA0;
  v13 = v9;
  v19 = a3;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  [v13 getHomeUserIdForSharedUserId:v10 completion:v12];
}

void sub_233507224(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543875;
    v24 = v5;
    v25 = 2114;
    v26 = v6;
    v27 = 2113;
    v28 = v3;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: library User Identity %{private}@", buf, 0x20u);
  }

  v7 = [*(a1 + 48) length];
  v8 = _MPLogCategoryAssistant();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138543875;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2113;
      v28 = v12;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: requester Shared User ID %{private}@", buf, 0x20u);
    }

    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2335074A0;
    v18[3] = &unk_2789DBEF0;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = v3;
    v22 = *(a1 + 64);
    (*(v13 + 16))(v13, v14, 0, v18);
  }

  else
  {
    if (v9)
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138543875;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2113;
      v28 = v3;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in guest mode with forced private listening: YES", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2335074A0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v20 = 138543875;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2113;
    v25 = v3;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: requester User Identity %{private}@", &v20, 0x20u);
  }

  v7 = [v3 DSID];
  v8 = [*(a1 + 48) DSID];
  v9 = [v7 isEqualToNumber:v8];

  v10 = _MPLogCategoryAssistant();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v20 = 138543875;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      v24 = 2113;
      v25 = v14;
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ and not enforcing private listening override because requester and library match", &v20, 0x20u);
    }
  }

  else if (v11)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = 138543875;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2113;
    v25 = v17;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in cross-user mode with forced private listening: YES", &v20, 0x20u);
  }

  v18 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2335076B0(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138544131;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2113;
      v29 = v10;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "%{public}@ (sharedid) <%{public}@>: shared ID %{private}@ not available: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v12 = [MEMORY[0x277CB8F48] ic_sharedAccountStore];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2335078E0;
    v15[3] = &unk_2789DBE78;
    v16 = *(a1 + 32);
    v23 = *(a1 + 80);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = v5;
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v20 = v11;
    v13 = v11;
    [v12 ic_storeAccountForHomeUserIdentifier:v13 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2335078E0(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v36 = 138544131;
      v37 = v9;
      v38 = 2114;
      v39 = v10;
      v40 = 2113;
      v41 = v11;
      v42 = 2114;
      v43 = v6;
      v12 = "%{public}@ (sharedid) <%{public}@>: home ID %{private}@ not found in database: %{public}@";
      v13 = v8;
      v14 = 42;
LABEL_4:
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_ERROR, v12, &v36, v14);
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  v16 = [v5 ic_DSID];
  v17 = [v16 longLongValue];

  if (!v17)
  {
    v28 = *(a1 + 88);
    v29 = _MPLogCategoryAssistant();
    v8 = v29;
    if (v28 != 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v35 = *(a1 + 56);
        v36 = 138543875;
        v37 = v33;
        v38 = 2114;
        v39 = v34;
        v40 = 2113;
        v41 = v35;
        _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: no DSID for home ID: %{private}@, but it is NOT required", &v36, 0x20u);
      }

      v15 = *(*(a1 + 80) + 16);
      goto LABEL_6;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v36 = 138543875;
      v37 = v30;
      v38 = 2114;
      v39 = v31;
      v40 = 2113;
      v41 = v32;
      v12 = "%{public}@ (sharedid) <%{public}@>: no DSID for home ID: %{private}@";
      v13 = v8;
      v14 = 32;
      goto LABEL_4;
    }

LABEL_5:

    v15 = *(*(a1 + 72) + 16);
LABEL_6:
    v15();
    goto LABEL_13;
  }

  v18 = [v5 ic_privateListeningEnabledForHomeUsers];
  v19 = [v18 objectForKey:*(a1 + 64)];

  if ([MEMORY[0x277CD5D90] isCurrentDeviceValidHomeAccessory])
  {
    v20 = [MEMORY[0x277CD5D98] userMonitorWithHomeIdentifier:*(a1 + 64)];
    v21 = v20;
    if (v20)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v20, "isPrivateListeningEnabledForCurrentAccessory")}];

      v19 = v22;
    }
  }

  v23 = *(a1 + 80);
  v24 = MEMORY[0x277D7FCA0];
  v25 = [v5 ic_DSID];
  v26 = [v24 specificAccountWithDSID:v25];
  (*(v23 + 16))(v23, v26, v19);

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_233507BFC(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v266 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a2;
  v131 = a1;
  v129 = v9;
  v130 = v8;
  v128 = v10;
  if (!_os_feature_enabled_impl())
  {
    v84 = v131;
    v85 = v10;
    v86 = v8;
    v87 = v85;
    v88 = v9;
    v153 = v86;
    v89 = [MEMORY[0x277CBEAA8] date];
    v90 = [MEMORY[0x277CBEB38] dictionary];
    [v90 setObject:v84 forKeyedSubscript:@"plugin_name"];
    v206 = 0;
    v207 = &v206;
    v208 = 0x3010000000;
    v211 = 0;
    v209 = &unk_233518917;
    v210 = 0;
    v91 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v84;
      *&buf[12] = 2114;
      *&buf[14] = v87;
      _os_log_impl(&dword_2334D9000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting dynamite client state using ACAccount", buf, 0x16u);
    }

    v155 = dispatch_queue_create("com.apple.Assistant.MPAssistantUtilitiesGetDynamiteClientState", 0);
    v92 = dispatch_group_create();
    v93 = objc_alloc_init(MEMORY[0x277D472D0]);
    block = 0;
    p_block = &block;
    v198 = 0x3032000000;
    v199 = sub_2335095FC;
    v200 = sub_23350960C;
    v201 = 0;
    *&v217 = 0;
    *(&v217 + 1) = &v217;
    *&v218 = 0x3032000000;
    *(&v218 + 1) = sub_2335095FC;
    *&v219 = sub_23350960C;
    *(&v219 + 1) = [MEMORY[0x277CBEB38] dictionary];
    *&v174 = 0;
    *(&v174 + 1) = &v174;
    *&v175 = 0x2810000000;
    *(&v175 + 1) = &unk_233518917;
    LODWORD(v176) = 0;
    if (MSVDeviceIsAudioAccessory())
    {
      goto LABEL_61;
    }

    v94 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v84;
      *&buf[12] = 2114;
      *&buf[14] = v87;
      _os_log_impl(&dword_2334D9000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting stored WLK configuration", buf, 0x16u);
    }

    v235 = 0;
    v236 = &v235;
    v237 = 0x2050000000;
    v95 = qword_2814EE808;
    v238 = qword_2814EE808;
    if (!qword_2814EE808)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_233509614;
      v252 = &unk_2789DC280;
      *&v253 = &v235;
      sub_233509614(buf);
      v95 = *(v236 + 24);
    }

    v96 = v95;
    _Block_object_dispose(&v235, 8);
    v97 = [v95 sharedInstance];
    v98 = [v97 storedConfiguration];

    if (v98)
    {
      [v93 setActiveTvUser:{objc_msgSend(v98, "activeUser")}];
      v99 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = [v98 activeUser];
        *buf = 138543874;
        *&buf[4] = v84;
        *&buf[12] = 2114;
        *&buf[14] = v87;
        *&buf[22] = 1024;
        LODWORD(v252) = v100;
        _os_log_impl(&dword_2334D9000, v99, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: active TV user: %{BOOL}u", buf, 0x1Cu);
      }
    }

    else
    {
      v235 = 0;
      v236 = &v235;
      v237 = 0x2050000000;
      v101 = qword_27DE0E798;
      v238 = qword_27DE0E798;
      if (!qword_27DE0E798)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_2335096DC;
        v252 = &unk_2789DC280;
        *&v253 = &v235;
        sub_2335096DC(buf);
        v101 = *(v236 + 24);
      }

      v102 = v101;
      _Block_object_dispose(&v235, 8);
      if (!v101)
      {
        goto LABEL_60;
      }

      dispatch_group_enter(v92);
      v103 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v84;
        *&buf[12] = 2114;
        *&buf[14] = v87;
        _os_log_impl(&dword_2334D9000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting WLK configuration", buf, 0x16u);
      }

      v104 = [v101 sharedInstance];
      v157 = MEMORY[0x277D85DD0];
      v158 = 3221225472;
      v159 = sub_2335097A4;
      v160 = &unk_2789DBFE0;
      v161 = v155;
      v162 = v93;
      v163 = v84;
      v164 = v87;
      v165 = v92;
      [v104 fetchConfigurationWithCompletionHandler:&v157];

      v99 = v161;
    }

LABEL_60:
LABEL_61:
    v105 = v88;
    v106 = v90;
    v221 = 0;
    v222 = &v221;
    v223 = 0x2020000000;
    LODWORD(v224) = 0;
    v190 = 0;
    v191 = &v190;
    v192 = 0x2020000000;
    LODWORD(v193) = 0;
    v107 = [MEMORY[0x277CBEB18] array];
    dispatch_group_enter(v92);
    v108 = [MEMORY[0x277CB8F48] ic_sharedAccountStore];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_233509884;
    v252 = &unk_2789DC078;
    v151 = v105;
    *&v253 = v151;
    v109 = v84;
    *(&v253 + 1) = v109;
    v110 = v87;
    v254 = v110;
    v111 = v92;
    v255 = v111;
    v265 = a3;
    v112 = v155;
    v256 = v112;
    v259 = &v174;
    v260 = &v217;
    v113 = v93;
    v257 = v113;
    v261 = &v190;
    v114 = v107;
    v258 = v114;
    v262 = &v221;
    v263 = &block;
    v264 = &v206;
    [v108 ic_allStoreAccountsWithCompletion:buf];

    v115 = v106;
    v235 = MEMORY[0x277D85DD0];
    v236 = 3221225472;
    v237 = sub_23350AC7C;
    v238 = &unk_2789DC0A0;
    v239 = v109;
    v240 = v110;
    v241 = v113;
    v242 = v114;
    v246 = &block;
    v245 = v153;
    v243 = v106;
    v244 = v89;
    v247 = &v217;
    v248 = &v206;
    v249 = &v221;
    v250 = &v190;
    v116 = v89;
    v117 = v115;
    v156 = v153;
    v118 = v114;
    v119 = v113;
    v120 = v110;
    v121 = v109;
    dispatch_group_notify(v111, v112, &v235);

    _Block_object_dispose(&v190, 8);
    _Block_object_dispose(&v221, 8);
    _Block_object_dispose(&v174, 8);
    _Block_object_dispose(&v217, 8);

    _Block_object_dispose(&block, 8);
    _Block_object_dispose(&v206, 8);

    goto LABEL_62;
  }

  v148 = v131;
  v147 = v10;
  v11 = v9;
  v125 = v8;
  v124 = [MEMORY[0x277CBEAA8] date];
  v127 = [MEMORY[0x277CBEB38] dictionary];
  [v127 setObject:v148 forKeyedSubscript:@"plugin_name"];
  v190 = 0;
  v191 = &v190;
  v192 = 0x3010000000;
  v195 = 0;
  v193 = &unk_233518917;
  v194 = 0;
  v12 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v148;
    *&buf[12] = 2114;
    *&buf[14] = v147;
    *&buf[22] = 1024;
    LODWORD(v252) = a3;
    _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting dynamite client state using media user state, syncing: %d", buf, 0x1Cu);
  }

  v141 = dispatch_queue_create("com.apple.Assistant.MPAssistantUtilitiesGetDynamiteClientState", 0);
  group = dispatch_group_create();
  v139 = objc_alloc_init(MEMORY[0x277D472D0]);
  v188[0] = 0;
  v188[1] = v188;
  v188[2] = 0x3032000000;
  v188[3] = sub_2335095FC;
  v188[4] = sub_23350960C;
  v189 = 0;
  v186[0] = 0;
  v186[1] = v186;
  v186[2] = 0x3032000000;
  v186[3] = sub_2335095FC;
  v186[4] = sub_23350960C;
  v187 = [MEMORY[0x277CBEB38] dictionary];
  v184[0] = 0;
  v184[1] = v184;
  v184[2] = 0x2810000000;
  v184[3] = &unk_233518917;
  v185 = 0;
  v13 = [MEMORY[0x277D7FB20] shared];
  v126 = [v13 allUserStates];

  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = sub_23350D370;
  v182[3] = &unk_2789DBF40;
  v123 = v11;
  v183 = v123;
  v144 = [v126 msv_firstWhere:v182];
  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v144 debugDescription];
    *buf = 138543875;
    *&buf[4] = v148;
    *&buf[12] = 2114;
    *&buf[14] = v147;
    *&buf[22] = 2113;
    v252 = v15;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: found prefferedMediaUserStateCandidate=%{private}@", buf, 0x20u);
  }

  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v181 = 0;
  v178[0] = 0;
  v178[1] = v178;
  v178[2] = 0x2020000000;
  v179 = 0;
  v138 = [MEMORY[0x277CBEB18] array];
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v16 = [MEMORY[0x277D7FB20] shared];
  obj = [v16 allUserStates];

  v143 = [obj countByEnumeratingWithState:&v174 objects:&v235 count:16];
  if (v143)
  {
    v136 = *MEMORY[0x277D47D60];
    v137 = *v175;
    v135 = *MEMORY[0x277D47D68];
    v133 = *MEMORY[0x277D483C8];
    v134 = *MEMORY[0x277D483C0];
    do
    {
      for (i = 0; i != v143; ++i)
      {
        if (*v175 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v174 + 1) + 8 * i);
        v18 = [v17 isEqual:v144];
        v19 = v18;
        if (v144)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18;
        }

        if ((v20 & 1) == 0)
        {
          v19 = [v17 isActive];
        }

        dispatch_group_enter(group);
        v157 = MEMORY[0x277D85DD0];
        v158 = 3221225472;
        v159 = sub_23350D3B4;
        v160 = &unk_2789DBF90;
        v161 = v141;
        v172 = v19;
        v21 = v148;
        v162 = v21;
        v22 = v147;
        v163 = v22;
        v164 = v17;
        v168 = v184;
        v169 = v186;
        v23 = v139;
        v173 = a3;
        v165 = v23;
        v170 = v178;
        v166 = v138;
        v171 = v180;
        v167 = group;
        v152 = v21;
        v150 = v22;
        v24 = v17;
        v145 = &v157;
        v25 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v24 shortDebugName];
          *buf = 138543875;
          *&buf[4] = v148;
          *&buf[12] = 2114;
          *&buf[14] = v147;
          *&buf[22] = 2113;
          v252 = v26;
          _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: getting user state for %{private}@", buf, 0x20u);
        }

        v221 = 0;
        v222 = &v221;
        v223 = 0x3032000000;
        v224 = sub_2335095FC;
        v225 = sub_23350960C;
        v27 = MEMORY[0x277D47B78];
        v154 = v24;
        v28 = objc_alloc_init(v27);
        [v28 setAgeVerificationRequired:{objc_msgSend(v154, "ageVerificationRequired")}];
        v29 = MEMORY[0x277CCABB0];
        v30 = [v154 music];
        v31 = [v29 numberWithInt:{objc_msgSend(v30, "usesListeningHistory") ^ 1}];
        [v28 setUserHistoryUnmodifiable:v31];

        v32 = [v154 music];
        v33 = [v32 subscriptionStatus];
        v34 = (~[v33 capabilities] & 0x101) == 0;

        if (v34)
        {
          v35 = v136;
        }

        else
        {
          v35 = v135;
        }

        [v28 setStatus:v35];
        [v28 setIsPromotionRelatedStatus:0];
        v36 = [v154 music];
        v37 = [v36 subscriptionStatus];
        v38 = [v37 eligibleOffers];
        [v28 setEligibleOffers:v38];

        v39 = [v154 music];
        v40 = [v39 subscriptionStatus];
        if ([v40 isMatchEnabled])
        {
          v41 = v134;
        }

        else
        {
          v41 = v133;
        }

        [v28 setITunesMatchSubscriptionStatus:v41];

        v42 = objc_alloc_init(MEMORY[0x277D47B80]);
        v43 = MEMORY[0x277CCABB0];
        v44 = [v154 music];
        v45 = [v44 libraryAuthTokenStatus];
        v46 = [v45 lastError];
        v47 = [v43 numberWithInteger:{objc_msgSend(v46, "code")}];
        [v42 setErrorCode:v47];

        v48 = MEMORY[0x277CCABB0];
        v49 = [v154 music];
        v50 = [v49 libraryAuthTokenStatus];
        v51 = [v50 lastUpdatedDate];
        [v51 timeIntervalSinceReferenceDate];
        v52 = [v48 numberWithDouble:?];
        [v42 setLastUpdateAttemptTime:v52];

        v53 = MEMORY[0x277CCABB0];
        v54 = [v154 music];

        v55 = [v54 libraryAuthTokenStatus];
        v56 = [v53 numberWithBool:{objc_msgSend(v55, "shouldExcludeFromBackgroundRefresh")}];
        [v42 setShouldExcludeFromBackgroundRefresh:v56];

        [v28 setUserTokenStatus:v42];
        v226 = v28;
        v57 = [v154 homeUserIDs];
        LOBYTE(v42) = [v57 count] == 0;

        if (v42)
        {
          v75 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [v154 shortDebugName];
            *buf = 138543875;
            *&buf[4] = v148;
            *&buf[12] = 2114;
            *&buf[14] = v147;
            *&buf[22] = 2113;
            v252 = v76;
            _os_log_impl(&dword_2334D9000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user does not have any home IDs for %{private}@", buf, 0x20u);
          }

          v159(v145, 0, v222[5]);
        }

        else
        {
          v58 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [v154 shortDebugName];
            v60 = MEMORY[0x277CCABB0];
            v61 = [v154 homeUserIDs];
            v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
            *buf = 138544131;
            *&buf[4] = v148;
            *&buf[12] = 2114;
            *&buf[14] = v147;
            *&buf[22] = 2113;
            v252 = v59;
            LOWORD(v253) = 2114;
            *(&v253 + 2) = v62;
            _os_log_impl(&dword_2334D9000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: media user state %{private}@ has %{public}@ homeUserIDs", buf, 0x2Au);
          }

          queue = dispatch_queue_create("com.apple.Assistant.MPAssistantGetDynamiteClientState.userState", 0);
          v63 = [MEMORY[0x277CBEB38] dictionary];
          v64 = objc_alloc_init(sub_2334DA3E8());
          v65 = dispatch_group_create();
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v66 = [v154 homeUserIDs];
          v67 = [v66 countByEnumeratingWithState:&v217 objects:buf count:16];
          if (v67)
          {
            v68 = *v218;
            do
            {
              for (j = 0; j != v67; ++j)
              {
                if (*v218 != v68)
                {
                  objc_enumerationMutation(v66);
                }

                v70 = *(*(&v217 + 1) + 8 * j);
                dispatch_group_enter(v65);
                v71 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = [v154 shortDebugName];
                  *v227 = 138544131;
                  v228 = v148;
                  v229 = 2114;
                  v230 = v147;
                  v231 = 2113;
                  v232 = v70;
                  v233 = 2113;
                  v234 = v72;
                  _os_log_impl(&dword_2334D9000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching shared user id for home user id %{private}@ for %{private}@", v227, 0x2Au);
                }

                v206 = MEMORY[0x277D85DD0];
                v207 = 3221225472;
                v208 = sub_23350D850;
                v209 = &unk_2789DC0F0;
                v73 = v64;
                v210 = v73;
                v211 = v152;
                v212 = v150;
                v213 = v154;
                v214 = v65;
                v215 = queue;
                v216 = v63;
                [v73 getConformingSharedUserIdForHomeUserId:v70 completion:&v206];
              }

              v67 = [v66 countByEnumeratingWithState:&v217 objects:buf count:16];
            }

            while (v67);
          }

          block = MEMORY[0x277D85DD0];
          p_block = 3221225472;
          v198 = sub_23350DAA8;
          v199 = &unk_2789DC118;
          v200 = v152;
          v201 = v150;
          v202 = v154;
          v204 = v145;
          v203 = v63;
          v205 = &v221;
          v74 = v63;
          dispatch_group_notify(v65, queue, &block);
        }

        _Block_object_dispose(&v221, 8);
      }

      v143 = [obj countByEnumeratingWithState:&v174 objects:&v235 count:16];
    }

    while (v143);
  }

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_23350D518;
  v252 = &unk_2789DC0A0;
  *&v253 = v139;
  *(&v253 + 1) = v138;
  v254 = v148;
  v255 = v147;
  v259 = v188;
  v258 = v125;
  v256 = v127;
  v257 = v124;
  v260 = v186;
  v261 = &v190;
  v262 = v180;
  v263 = v178;
  v77 = v124;
  v78 = v127;
  v79 = v125;
  v80 = v147;
  v81 = v148;
  v82 = v138;
  v83 = v139;
  dispatch_group_notify(group, v141, buf);

  _Block_object_dispose(v178, 8);
  _Block_object_dispose(v180, 8);

  _Block_object_dispose(v184, 8);
  _Block_object_dispose(v186, 8);

  _Block_object_dispose(v188, 8);
  _Block_object_dispose(&v190, 8);

LABEL_62:
  v122 = *MEMORY[0x277D85DE8];
}

void sub_23350949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2335095FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233509614(uint64_t a1)
{
  sub_23350D1AC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKStoredConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2814EE808 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWLKStoredConfigurationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPAssistantUtilities.m" lineNumber:50 description:{@"Unable to find class %s", "WLKStoredConfigurationManager"}];

    __break(1u);
  }
}

void sub_2335096DC(uint64_t a1)
{
  sub_23350D1AC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DE0E798 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWLKConfigurationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPAssistantUtilities.m" lineNumber:48 description:{@"Unable to find class %s", "WLKConfigurationManager"}];

    __break(1u);
  }
}

void sub_2335097A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23350D0C8;
  v6[3] = &unk_2789DBFB8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_sync(v4, v6);
  dispatch_group_leave(*(a1 + 64));
}

void sub_233509884(uint64_t a1, void *a2, void *a3)
{
  v237 = *MEMORY[0x277D85DE8];
  v86 = a2;
  v87 = a3;
  v101 = [v86 msv_filter:&unk_2848D4480];
  if (*(a1 + 32))
  {
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    obj = v101;
    v107 = [obj countByEnumeratingWithState:&v137 objects:v222 count:16];
    if (v107)
    {
      v106 = *v138;
      do
      {
        v4 = 0;
        do
        {
          if (*v138 != v106)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v111 = v4;
          v6 = *(*(&v137 + 1) + 8 * v4);
          v7 = [v6 ic_homeUserIdentifiers];
          if (([v6 ams_isLocalAccount] & 1) != 0 || !objc_msgSend(v7, "count"))
          {
            goto LABEL_23;
          }

          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v133 objects:v221 count:16];
          if (!v9)
          {

LABEL_23:
            goto LABEL_24;
          }

          v105 = 0;
          v10 = *v134;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v134 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [*(*(&v133 + 1) + 8 * i) UUIDString];
              v13 = [v12 isEqual:*(a1 + 32)];

              if (v13)
              {
                v14 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = *(a1 + 40);
                  v15 = *(a1 + 48);
                  v17 = *(a1 + 32);
                  *buf = 138543875;
                  v232 = v16;
                  v233 = 2114;
                  v234 = v15;
                  v235 = 2113;
                  v236 = v17;
                  _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ (preferredMediaUserHomeUserID) <%{public}@>: found preferredMediaUser's account with home ID: %{private}@", buf, 0x20u);
                }

                v18 = v6;
                v105 = v18;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v133 objects:v221 count:16];
          }

          while (v9);

          if (v105)
          {
            goto LABEL_27;
          }

LABEL_24:
          v4 = v111 + 1;
        }

        while ((v111 + 1) != v107);
        v107 = [obj countByEnumeratingWithState:&v137 objects:v222 count:16];
      }

      while (v107);
    }

    v105 = 0;
LABEL_27:
  }

  else
  {
    v105 = 0;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v89 = v101;
  v95 = [v89 countByEnumeratingWithState:&v129 objects:v220 count:16];
  if (v95)
  {
    v94 = *v130;
    do
    {
      v19 = 0;
      do
      {
        if (*v130 != v94)
        {
          v20 = v19;
          objc_enumerationMutation(v89);
          v19 = v20;
        }

        v102 = v19;
        v21 = *(*(&v129 + 1) + 8 * v19);
        if ([v21 ams_isLocalAccount])
        {
          v22 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 40);
            v24 = *(a1 + 48);
            *buf = 138543618;
            v232 = v23;
            v233 = 2114;
            v234 = v24;
            _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: skipping local account", buf, 0x16u);
          }
        }

        else
        {
          dispatch_group_enter(*(a1 + 56));
          v26 = *(a1 + 40);
          v25 = *(a1 + 48);
          v27 = *(a1 + 136);
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v116 = sub_23350AFB0;
          v117 = &unk_2789DC050;
          v118 = *(a1 + 64);
          v119 = v21;
          v120 = v105;
          v28 = *(a1 + 40);
          v29 = *(a1 + 48);
          v124 = *(a1 + 88);
          v30 = *(a1 + 72);
          v128 = *(a1 + 136);
          v125 = *(a1 + 104);
          v31 = *(a1 + 80);
          *&v32 = v30;
          *(&v32 + 1) = v31;
          *&v33 = v28;
          *(&v33 + 1) = v29;
          v121 = v33;
          v122 = v32;
          v126 = *(a1 + 112);
          v127 = *(a1 + 128);
          v123 = *(a1 + 56);
          v99 = v26;
          v100 = v25;
          obja = v21;
          v97 = v115;
          v214 = 0;
          v215 = &v214;
          v216 = 0x3010000000;
          v217 = &unk_233518917;
          v218 = 0;
          v219 = 0;
          v112 = objc_alloc_init(sub_2334DA3E8());
          v34 = _MPLogCategoryAssistant();
          v108 = v27;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [obja shortDebugName];
            *buf = 138543875;
            v232 = v99;
            v233 = 2114;
            v234 = v100;
            v235 = 2113;
            v236 = v35;
            _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: getting user state for %{private}@", buf, 0x20u);
          }

          v96 = objc_alloc_init(MEMORY[0x277D47B78]);
          v212[0] = 0;
          v212[1] = v212;
          v212[2] = 0x2810000000;
          v212[3] = &unk_233518917;
          v213 = 0;
          v210[0] = 0;
          v210[1] = v210;
          v210[2] = 0x3032000000;
          v210[3] = sub_2335095FC;
          v210[4] = sub_23350960C;
          v211 = 0;
          v36 = [obja ic_DSID];
          v37 = [v36 longLongValue] == 0;

          if (v37)
          {
            v67 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v68 = [obja shortDebugName];
              *buf = 138543875;
              v232 = v99;
              v233 = 2114;
              v234 = v100;
              v235 = 2113;
              v236 = v68;
              _os_log_impl(&dword_2334D9000, v67, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: no DSID found in account for %{private}@", buf, 0x20u);
            }

            v116(v97, 0, 0, 0, 0, 0, v215[8], v215[9], v215[10], v215[11]);
          }

          else
          {
            v38 = MEMORY[0x277D7FCA0];
            v39 = [obja ic_DSID];
            group = [v38 specificAccountWithDSID:v39];

            v40 = dispatch_group_create();
            v41 = [MEMORY[0x277CBEAA8] date];
            dispatch_group_enter(v40);
            v42 = [MEMORY[0x277D7FA28] defaultManager];
            v201[0] = MEMORY[0x277D85DD0];
            v201[1] = 3221225472;
            v201[2] = sub_23350B1A4;
            v201[3] = &unk_2789DC140;
            v43 = v99;
            v202 = v43;
            v44 = v100;
            v203 = v44;
            v45 = obja;
            v204 = v45;
            v208 = v212;
            v46 = v96;
            v205 = v46;
            v209 = &v214;
            v47 = v41;
            v206 = v47;
            v48 = v40;
            v207 = v48;
            [v42 getAgeVerificationStateWithCompletion:v201];

            dispatch_group_enter(v48);
            v199[0] = 0;
            v199[1] = v199;
            v199[2] = 0x3032000000;
            v199[3] = sub_2335095FC;
            v199[4] = sub_23350960C;
            v200 = 0;
            v49 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
            v189[0] = MEMORY[0x277D85DD0];
            v189[1] = 3221225472;
            v189[2] = sub_23350B314;
            v189[3] = &unk_2789DC168;
            v50 = v43;
            v190 = v50;
            v51 = v44;
            v191 = v51;
            v52 = v45;
            v192 = v52;
            v196 = v212;
            v53 = v46;
            v193 = v53;
            v197 = v199;
            v198 = &v214;
            v54 = v47;
            v194 = v54;
            v55 = v48;
            v195 = v55;
            [v49 getPropertiesForUserIdentity:group completionHandler:v189];

            v56 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = [v52 shortDebugName];
              *buf = 138543875;
              v232 = v50;
              v233 = 2114;
              v234 = v51;
              v235 = 2113;
              v236 = v57;
              _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching subscription status for %{private}@", buf, 0x20u);
            }

            dispatch_group_enter(v55);
            v58 = objc_alloc(MEMORY[0x277D7FC30]);
            v187[0] = MEMORY[0x277D85DD0];
            v187[1] = 3221225472;
            v187[2] = sub_23350B518;
            v187[3] = &unk_2789DC190;
            v92 = group;
            v188 = v92;
            v59 = [v58 initWithBlock:v187];
            v60 = v53;
            v98 = [objc_alloc(MEMORY[0x277D7FB88]) initWithStoreRequestContext:v59];
            [v98 setAllowsFallbackToExpiredStatus:1];
            [v98 setAllowsFallbackToStatusNeedingReload:1];
            v61 = [MEMORY[0x277D7FB78] sharedStatusController];
            v176[0] = MEMORY[0x277D85DD0];
            v176[1] = 3221225472;
            v176[2] = sub_23350B58C;
            v176[3] = &unk_2789DC1E0;
            v62 = v50;
            v177 = v62;
            v63 = v51;
            v178 = v63;
            v64 = v52;
            v179 = v64;
            v90 = v59;
            v180 = v90;
            v184 = v212;
            v185 = v210;
            v93 = v60;
            v181 = v93;
            v186 = &v214;
            v91 = v54;
            v182 = v91;
            groupa = v55;
            v183 = groupa;
            [v61 performSubscriptionStatusRequest:v98 withCompletionHandler:v176];

            if (v108)
            {
              v65 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = [v64 shortDebugName];
                *buf = 138543875;
                v232 = v62;
                v233 = 2114;
                v234 = v63;
                v235 = 2113;
                v236 = v66;
                _os_log_impl(&dword_2334D9000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: not syncing token for %{private}@", buf, 0x20u);
              }
            }

            else
            {
              v69 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = [v64 shortDebugName];
                *buf = 138543875;
                v232 = v62;
                v233 = 2114;
                v234 = v63;
                v235 = 2113;
                v236 = v70;
                _os_log_impl(&dword_2334D9000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching store client token for %{private}@", buf, 0x20u);
              }

              dispatch_group_enter(groupa);
              v164 = MEMORY[0x277D85DD0];
              v165 = 3221225472;
              v166 = sub_23350B9FC;
              v167 = &unk_2789DC208;
              v174 = v212;
              v168 = v62;
              v169 = v63;
              v170 = v64;
              v171 = v93;
              v175 = &v214;
              v172 = v91;
              v173 = groupa;
              MPStoreGetClientTokenStatusForIdentity();

              v65 = v168;
            }

            v71 = [MEMORY[0x277CBEB38] dictionary];
            if (MSVDeviceIsAudioAccessory())
            {
              v72 = [v64 ic_homeUserIdentifiers];
              v88 = [v72 count] != 0;

              if (v88)
              {
                v162 = 0u;
                v163 = 0u;
                v160 = 0u;
                v161 = 0u;
                v73 = [v64 ic_homeUserIdentifiers];
                v74 = [v73 countByEnumeratingWithState:&v160 objects:buf count:16];
                v109 = v73;
                if (v74)
                {
                  v75 = *v161;
                  do
                  {
                    for (j = 0; j != v74; ++j)
                    {
                      if (*v161 != v75)
                      {
                        objc_enumerationMutation(v109);
                      }

                      v77 = [*(*(&v160 + 1) + 8 * j) UUIDString];
                      dispatch_group_enter(groupa);
                      v78 = _MPLogCategoryAssistant();
                      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        v79 = [v64 shortDebugName];
                        *v223 = 138544131;
                        v224 = v62;
                        v225 = 2114;
                        v226 = v63;
                        v227 = 2113;
                        v228 = v77;
                        v229 = 2113;
                        v230 = v79;
                        _os_log_impl(&dword_2334D9000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching shared user id for home user id %{private}@ for %{private}@", v223, 0x2Au);
                      }

                      v152[0] = MEMORY[0x277D85DD0];
                      v152[1] = 3221225472;
                      v152[2] = sub_23350BDD0;
                      v152[3] = &unk_2789DC230;
                      v80 = v112;
                      v153 = v80;
                      v154 = v62;
                      v155 = v63;
                      v156 = v64;
                      v157 = groupa;
                      v159 = v212;
                      v158 = v71;
                      [v80 getConformingSharedUserIdForHomeUserId:v77 completion:v152];
                    }

                    v74 = [v109 countByEnumeratingWithState:&v160 objects:buf count:16];
                  }

                  while (v74);
                }
              }

              else
              {
                v109 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = [v64 shortDebugName];
                  *buf = 138543875;
                  v232 = v62;
                  v233 = 2114;
                  v234 = v63;
                  v235 = 2113;
                  v236 = v82;
                  _os_log_impl(&dword_2334D9000, v109, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user does not have any home IDs for %{private}@", buf, 0x20u);
                }
              }

              v81 = v88;
            }

            else
            {
              v81 = 0;
            }

            v83 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_23350BFCC;
            block[3] = &unk_2789DC258;
            v142 = v62;
            v143 = v63;
            v144 = v64;
            v147 = v97;
            v145 = v93;
            v146 = v71;
            v148 = v210;
            v149 = v199;
            v151 = v81;
            v150 = &v214;
            v84 = v71;
            dispatch_group_notify(groupa, v83, block);

            _Block_object_dispose(v199, 8);
          }

          _Block_object_dispose(v210, 8);

          _Block_object_dispose(v212, 8);
          _Block_object_dispose(&v214, 8);

          v22 = v118;
        }

        v19 = v102 + 1;
      }

      while (v102 + 1 != v95);
      v95 = [v89 countByEnumeratingWithState:&v129 objects:v220 count:16];
    }

    while (v95);
  }

  dispatch_group_leave(*(a1 + 56));
  v85 = *MEMORY[0x277D85DE8];
}

void sub_23350ABC8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose(&STACK[0x598], 8);
  _Block_object_dispose(&STACK[0x5C8], 8);
  _Block_object_dispose(&STACK[0x5F0], 8);
  _Unwind_Resume(a1);
}

void sub_23350AC7C(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138543874;
    v26 = v3;
    v27 = 2114;
    v28 = v4;
    v29 = 2114;
    v30 = v5;
    _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: finished getting dynamite client state: %{public}@", buf, 0x20u);
  }

  [*(a1 + 48) setInContextUsersStates:*(a1 + 56)];
  v6 = sub_23350552C(*(*(*(a1 + 88) + 8) + 40));
  [*(a1 + 48) setExpirationDate:v6];

  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 96) + 8) + 40);
  (*(*(a1 + 80) + 16))();
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 72) timeIntervalSinceNow];
  v11 = [v9 numberWithDouble:fabs(v10)];
  [*(a1 + 64) setObject:v11 forKeyedSubscript:@"duration"];

  LODWORD(v12) = *(*(*(a1 + 104) + 8) + 32);
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [*(a1 + 64) setObject:v13 forKeyedSubscript:@"age_verification_duration"];

  LODWORD(v14) = *(*(*(a1 + 104) + 8) + 36);
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [*(a1 + 64) setObject:v15 forKeyedSubscript:@"subscription_status_duration"];

  LODWORD(v16) = *(*(*(a1 + 104) + 8) + 40);
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [*(a1 + 64) setObject:v17 forKeyedSubscript:@"token_duration"];

  LODWORD(v18) = *(*(*(a1 + 104) + 8) + 44);
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [*(a1 + 64) setObject:v19 forKeyedSubscript:@"use_history_duration"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "count")}];
  [*(a1 + 64) setObject:v20 forKeyedSubscript:@"accounts_on_device"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 112) + 8) + 24)];
  [*(a1 + 64) setObject:v21 forKeyedSubscript:@"accounts_without_state"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 120) + 8) + 24)];
  [*(a1 + 64) setObject:v22 forKeyedSubscript:@"token_failure"];

  v24 = *(a1 + 64);
  AnalyticsSendEventLazy();

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23350AFB0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, float a7, float a8, float a9, float a10)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23350C52C;
  block[3] = &unk_2789DC028;
  v35 = v19;
  v33 = *(a1 + 40);
  v24 = *(&v33 + 1);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  *&v27 = v25;
  *(&v27 + 1) = v26;
  v36 = v33;
  v37 = v27;
  v43 = *(a1 + 96);
  v38 = *(a1 + 72);
  v39 = v22;
  v51 = *(a1 + 144);
  v44 = *(a1 + 112);
  v40 = v21;
  v28 = *(a1 + 80);
  v52 = a6;
  v41 = v28;
  v42 = v20;
  v45 = *(a1 + 120);
  v46 = *(a1 + 136);
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v19;
  dispatch_sync(v23, block);
  dispatch_group_leave(*(a1 + 88));
}

void sub_23350B1A4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v3 status];
    v8 = [*(a1 + 48) shortDebugName];
    v11 = 138544131;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2113;
    v18 = v8;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: age verification: %ld for %{private}@", &v11, 0x2Au);
  }

  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  if ([v3 status] == 2)
  {
    [*(a1 + 56) setAgeVerificationRequired:1];
  }

  [*(a1 + 64) timeIntervalSinceNow];
  *&v9 = v9;
  *(*(*(a1 + 88) + 8) + 32) = fabsf(*&v9);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23350B314(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 privateListeningEnabled];
  if ([MEMORY[0x277CD5D90] isCurrentDeviceValidHomeAccessory])
  {
    v5 = MEMORY[0x277CD5D98];
    v6 = [v3 homeUserIdentifiers];
    v7 = [v5 userMonitorWithHomeIdentifiers:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isPrivateListeningEnabledForCurrentAccessory")}];

      v4 = v8;
    }
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) shortDebugName];
    v18 = 138544131;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v4;
    v24 = 2113;
    v25 = v12;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user history unmodifiable: %{public}@ for %{private}@", &v18, 0x2Au);
  }

  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  [*(a1 + 56) setUserHistoryUnmodifiable:v4];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isActiveLocker")}];
  v14 = *(*(a1 + 88) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(a1 + 64) timeIntervalSinceNow];
  *&v16 = v16;
  *(*(*(a1 + 96) + 8) + 44) = fabsf(*&v16);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23350B518(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentity:v2];
  v4 = [objc_alloc(MEMORY[0x277D7FC40]) initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v4];
}

void sub_23350B58C(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v45 = v8;
      v46 = 2114;
      v47 = v9;
      v48 = 2114;
      *v49 = v6;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: Failed to load subscription status. error=%{public}@", buf, 0x20u);
    }

    v10 = [v6 domain];
    if ([v10 isEqualToString:*MEMORY[0x277D7F900]])
    {
      v11 = [v6 code];

      if (v11 == -7007)
      {
        v12 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          v15 = [*(a1 + 48) shortDebugName];
          *buf = 138543875;
          v45 = v13;
          v46 = 2114;
          v47 = v14;
          v48 = 2113;
          *v49 = v15;
          _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: Privacy acceptance required - falling back to lightweight status for %{private}@", buf, 0x20u);
        }

        v16 = [objc_alloc(MEMORY[0x277D7FAF8]) initWithRequestContext:*(a1 + 56)];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_23350C0E8;
        v35[3] = &unk_2789DC1B8;
        v42 = *(a1 + 88);
        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v38 = *(a1 + 48);
        v17 = *(a1 + 64);
        v18 = *(a1 + 104);
        v39 = v17;
        v43 = v18;
        v40 = *(a1 + 72);
        v41 = *(a1 + 80);
        [v16 performRequestWithResponseHandler:v35];

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v16 = [v5 subscriptionStatus];
  v19 = [v16 capabilities] & 0x101;
  v20 = [v16 isMatchEnabled];
  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v16;
    v23 = v6;
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = [*(a1 + 48) shortDebugName];
    *buf = 138544387;
    v45 = v24;
    v46 = 2114;
    v47 = v25;
    v6 = v23;
    v16 = v22;
    v48 = 1024;
    *v49 = v19 == 257;
    *&v49[4] = 1024;
    *&v49[6] = v20;
    v50 = 2113;
    v51 = v26;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: store account is a subscriber: %{BOOL}u, match subscriber: %{BOOL}u for %{private}@", buf, 0x2Cu);
  }

  os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
  v27 = MEMORY[0x277D47D60];
  if (v19 != 257)
  {
    v27 = MEMORY[0x277D47D68];
  }

  [*(a1 + 64) setStatus:*v27];
  v28 = MEMORY[0x277D483C0];
  if (!v20)
  {
    v28 = MEMORY[0x277D483C8];
  }

  [*(a1 + 64) setITunesMatchSubscriptionStatus:*v28];
  [*(a1 + 64) setIsPromotionRelatedStatus:0];
  v29 = [v16 eligibleOffers];
  [*(a1 + 64) setEligibleOffers:v29];

  [*(a1 + 72) timeIntervalSinceNow];
  *&v30 = v30;
  *(*(*(a1 + 104) + 8) + 44) = fabsf(*&v30);
  v31 = [v16 expirationDate];
  v32 = *(*(a1 + 96) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
  dispatch_group_leave(*(a1 + 80));
LABEL_17:

  v34 = *MEMORY[0x277D85DE8];
}

void sub_23350B9FC(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  v7 = objc_alloc_init(MEMORY[0x277D47B80]);
  if (v6)
  {
    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) shortDebugName];
      v32 = 138544131;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      v36 = 2113;
      v37 = v11;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching store client token status for %{private}@: %{public}@", &v32, 0x2Au);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setErrorCode:v12];
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    [v5 lastUpdateAttemptTime];
    v14 = [v13 numberWithDouble:?];
    [v7 setLastUpdateAttemptTime:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "shouldExcludeFromBackgroundRefresh")}];
    [v7 setShouldExcludeFromBackgroundRefresh:v15];

    v16 = [v5 lastError];

    v17 = _MPLogCategoryAssistant();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        v21 = [*(a1 + 48) shortDebugName];
        v22 = [v5 lastError];
        v32 = 138544131;
        v33 = v19;
        v34 = 2114;
        v35 = v20;
        v36 = 2113;
        v37 = v21;
        v38 = 2114;
        v39 = v22;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: error fetching client token for %{private}@: %{public}@", &v32, 0x2Au);
      }

      v23 = MEMORY[0x277CCABB0];
      v12 = [v5 lastError];
      v24 = [v23 numberWithInteger:{objc_msgSend(v12, "code")}];
      [v7 setErrorCode:v24];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v27 = [v5 tokenResult];
        v28 = [v27 token];
        v29 = [*(a1 + 48) shortDebugName];
        v32 = 138544131;
        v33 = v25;
        v34 = 2114;
        v35 = v26;
        v36 = 2113;
        v37 = v28;
        v38 = 2113;
        v39 = v29;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched store client token %{private}@ for %{private}@", &v32, 0x2Au);
      }

      v12 = [v5 tokenResult];
      v24 = [v12 token];
      [*(a1 + 56) setUserToken:v24];
    }
  }

  [*(a1 + 56) setUserTokenStatus:v7];
  [*(a1 + 64) timeIntervalSinceNow];
  *&v30 = v30;
  *(*(*(a1 + 88) + 8) + 40) = fabsf(*&v30);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));

  v31 = *MEMORY[0x277D85DE8];
}

void sub_23350BDD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = _MPLogCategoryAssistant();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [*(a1 + 56) shortDebugName];
      v20 = 138544131;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2113;
      v25 = v15;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching shared user id for %{private}@: %{public}@", &v20, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = [*(a1 + 56) shortDebugName];
      v20 = 138544387;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v8;
      v26 = 2113;
      v27 = v7;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched shared user id: %{public}@:%{private}@ for %{public}@", &v20, 0x34u);
    }

    os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
    [*(a1 + 72) setObject:v7 forKeyedSubscript:v8];
    os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 64));

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23350BFCC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) shortDebugName];
    v13 = 138543875;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2113;
    v18 = v5;
    _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: finished getting user state for %{private}@", &v13, 0x20u);
  }

  v6 = *(*(*(a1 + 80) + 8) + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(*(*(a1 + 88) + 8) + 40);
  v10 = *(a1 + 104);
  result = (*(*(a1 + 72) + 16))(*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 36), *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 96) + 8) + 44));
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23350C0E8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 80) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = [v4 lightweightSubscriptionStatus];

  v6 = [v5 expirationDate];
  v7 = *(*(a1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 capabilities] & 0x101;
  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) shortDebugName];
    v18 = 138544131;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 1024;
    v23 = v9 == 257;
    v24 = 2113;
    v25 = v13;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: store account is a subscriber: %{BOOL}u for %{private}@", &v18, 0x26u);
  }

  v14 = MEMORY[0x277D47D60];
  if (v9 != 257)
  {
    v14 = MEMORY[0x277D47D68];
  }

  [*(a1 + 56) setStatus:*v14];
  [*(a1 + 56) setIsPromotionRelatedStatus:0];
  v15 = [v5 eligibleOffers];
  [*(a1 + 56) setEligibleOffers:v15];

  [*(a1 + 64) timeIntervalSinceNow];
  *&v16 = v16;
  *(*(*(a1 + 96) + 8) + 44) = fabsf(*&v16);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));

  v17 = *MEMORY[0x277D85DE8];
}

Class sub_23350C2CC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!qword_2814EE830)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = sub_23350C4B8;
    v7[4] = &unk_2789DC2B8;
    v7[5] = v7;
    v8 = xmmword_2789DC2D8;
    v9 = 0;
    qword_2814EE830 = _sl_dlopen();
  }

  if (!qword_2814EE830)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPAssistantUtilities.m" lineNumber:60 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AFMultiUserConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFMultiUserConnectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"MPAssistantUtilities.m" lineNumber:61 description:{@"Unable to find class %s", "AFMultiUserConnection"}];

LABEL_10:
    __break(1u);
  }

  qword_2814EE810 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23350C4B8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2814EE830 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23350C52C(uint64_t a1)
{
  v1 = a1;
  v107 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (([*(a1 + 40) isEqual:*(a1 + 48)] & 1) != 0 || !*(v1 + 48) && objc_msgSend(*(v1 + 40), "isActive"))
    {
      v2 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v1 + 56);
        v4 = *(v1 + 64);
        v5 = [*(v1 + 40) shortDebugName];
        *buf = 138543875;
        v97 = v3;
        v98 = 2114;
        v99 = v4;
        v100 = 2113;
        v101 = v5;
        _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ is default", buf, 0x20u);
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = [*(v1 + 32) syncSharedUserId];
      v8 = [*(v1 + 32) userHistoryUnmodifiable];
      v9 = [v8 stringValue];
      v10 = [*(v1 + 32) status];
      if ([*(v1 + 32) ageVerificationRequired])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = [*(v1 + 32) defaultMediaPlaybackAppBundleIdentifier];
      if ([*(v1 + 32) isPromotionRelatedStatus])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = [*(a1 + 32) eligibleOffers];
      v86 = v13;
      v1 = a1;
      v15 = [v6 stringWithFormat:@"Default_UserState_v2_%@_%@_%@_%@_%@_%@_%@", v7, v9, v10, v11, v12, v86, v14];

      os_unfair_lock_lock((*(*(a1 + 112) + 8) + 32));
      v16 = *(*(*(a1 + 120) + 8) + 40);
      v17 = [*(a1 + 40) ic_DSID];
      [v16 setObject:v15 forKeyedSubscript:v17];

      os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 32));
      [*(v1 + 72) setDefaultUserState:*(v1 + 32)];
      v18 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v21 = [*(a1 + 32) dictionary];
        *buf = 138543875;
        v97 = v19;
        v98 = 2114;
        v99 = v20;
        v100 = 2113;
        v101 = v21;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: default user state: %{private}@", buf, 0x20u);
      }

      [*(a1 + 72) setICloudMusicLibraryToggle:*(a1 + 80)];
      [*(a1 + 72) setAgeVerificationRequired:{objc_msgSend(*(a1 + 32), "ageVerificationRequired")}];
      v22 = [*(a1 + 32) status];
      [*(a1 + 72) setStatus:v22];

      v23 = [*(a1 + 32) iTunesMatchSubscriptionStatus];
      [*(a1 + 72) setITunesMatchSubscriptionStatus:v23];

      v24 = [*(a1 + 32) userHistoryUnmodifiable];
      [*(a1 + 72) setUserHistoryUnmodifiable:v24];

      v25 = [*(a1 + 32) userToken];
      [*(a1 + 72) setUserToken:v25];

      v26 = [*(a1 + 32) userTokenStatus];
      [*(a1 + 72) setUserTokenStatus:v26];

      v27 = [*(a1 + 32) eligibleOffers];
      [*(a1 + 72) setEligibleOffers:v27];

      [*(a1 + 72) setIsPromotionRelatedStatus:{objc_msgSend(*(a1 + 32), "isPromotionRelatedStatus")}];
      v28 = [*(a1 + 32) xpAbCookie];
      [*(a1 + 72) setXpAbCookie:v28];

      if ((*(a1 + 176) & 1) == 0)
      {
        v29 = [*(a1 + 72) userToken];
        v30 = [v29 length];

        if (!v30)
        {
          ++*(*(*(a1 + 128) + 8) + 24);
        }
      }
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [*(v1 + 88) allKeys];
    v90 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v90)
    {
      v88 = *v93;
      do
      {
        v31 = 0;
        do
        {
          if (*v93 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v92 + 1) + 8 * v31);
          v33 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(v1 + 56);
            v35 = *(v1 + 64);
            v36 = [*(v1 + 40) shortDebugName];
            v37 = [*(v1 + 88) objectForKeyedSubscript:v32];
            *buf = 138544387;
            v97 = v34;
            v98 = 2114;
            v99 = v35;
            v100 = 2113;
            v101 = v36;
            v102 = 2114;
            v103 = v32;
            v104 = 2113;
            v105 = v37;
            _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shared user ID %{public}@:%{private}@", buf, 0x34u);
          }

          v91 = v31;

          v38 = [*(v1 + 32) copy];
          if ((*(v1 + 176) & 1) == 0)
          {
            v39 = [*(v1 + 88) objectForKeyedSubscript:v32];
            [v38 setSharedUserId:v39];
          }

          [v38 setSyncSharedUserId:v32];
          v40 = MEMORY[0x277CCACA8];
          v41 = [v38 syncSharedUserId];
          v42 = [v38 userHistoryUnmodifiable];
          v43 = [v42 stringValue];
          v44 = [v38 status];
          v45 = @"NO";
          if ([v38 ageVerificationRequired])
          {
            v46 = @"YES";
          }

          else
          {
            v46 = @"NO";
          }

          v47 = [v38 defaultMediaPlaybackAppBundleIdentifier];
          if ([v38 isPromotionRelatedStatus])
          {
            v45 = @"YES";
          }

          v48 = [v38 eligibleOffers];
          v49 = [v40 stringWithFormat:@"UserState_v2_%@_%@_%@_%@_%@_%@_%@", v41, v43, v44, v46, v47, v45, v48];

          v1 = a1;
          v50 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(a1 + 56);
            v52 = *(a1 + 64);
            v53 = [*(a1 + 40) shortDebugName];
            v54 = [v38 dictionary];
            *buf = 138544131;
            v97 = v51;
            v98 = 2114;
            v99 = v52;
            v100 = 2113;
            v101 = v53;
            v102 = 2113;
            v103 = v54;
            _os_log_impl(&dword_2334D9000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
          }

          os_unfair_lock_lock((*(*(a1 + 112) + 8) + 32));
          [*(a1 + 96) addObject:v38];
          v55 = *(*(*(a1 + 120) + 8) + 40);
          v56 = [*(a1 + 40) ic_DSID];
          [v55 setObject:v49 forKeyedSubscript:v56];

          os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 32));
          v31 = v91 + 1;
        }

        while (v90 != v91 + 1);
        v90 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v90);
    }

    if (![*(v1 + 88) count] && *(v1 + 177) == 1)
    {
      v57 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v1 + 56);
        v59 = *(v1 + 64);
        v60 = [*(v1 + 40) shortDebugName];
        *buf = 138543875;
        v97 = v58;
        v98 = 2114;
        v99 = v59;
        v100 = 2113;
        v101 = v60;
        _os_log_impl(&dword_2334D9000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has no shared user IDs", buf, 0x20u);
      }

      v61 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(v1 + 56);
        v63 = *(v1 + 64);
        v64 = [*(v1 + 40) shortDebugName];
        v65 = [*(v1 + 32) dictionary];
        *buf = 138544131;
        v97 = v62;
        v98 = 2114;
        v99 = v63;
        v100 = 2113;
        v101 = v64;
        v102 = 2113;
        v103 = v65;
        _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
      }

      v66 = MEMORY[0x277CCACA8];
      v67 = [*(v1 + 32) userHistoryUnmodifiable];
      v68 = [v67 stringValue];
      v69 = [*(v1 + 32) status];
      if ([*(v1 + 32) ageVerificationRequired])
      {
        v70 = @"YES";
      }

      else
      {
        v70 = @"NO";
      }

      v71 = [*(v1 + 32) defaultMediaPlaybackAppBundleIdentifier];
      v72 = [v66 stringWithFormat:@"UserState_v2_%@_%@_%@_%@_%@", @"none", v68, v69, v70, v71];

      os_unfair_lock_lock((*(*(v1 + 112) + 8) + 32));
      v73 = *(v1 + 96);
      v74 = [*(v1 + 32) copy];
      [v73 addObject:v74];

      v75 = *(*(*(v1 + 120) + 8) + 40);
      v76 = [*(v1 + 40) ic_DSID];
      [v75 setObject:v72 forKeyedSubscript:v76];

      os_unfair_lock_unlock((*(*(v1 + 112) + 8) + 32));
    }
  }

  else
  {
    ++*(*(*(a1 + 136) + 8) + 24);
  }

  v77 = *(v1 + 104);
  if (v77)
  {
    if (!*(*(*(v1 + 144) + 8) + 40) || ([v77 timeIntervalSince1970], v79 = v78, objc_msgSend(*(*(*(v1 + 144) + 8) + 40), "timeIntervalSince1970"), v79 < v80))
    {
      v81 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(v1 + 56);
        v83 = *(v1 + 64);
        v84 = [*(v1 + 40) shortDebugName];
        *buf = 138543875;
        v97 = v82;
        v98 = 2114;
        v99 = v83;
        v100 = 2113;
        v101 = v84;
        _os_log_impl(&dword_2334D9000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shortest expiration time", buf, 0x20u);
      }

      objc_storeStrong((*(*(v1 + 144) + 8) + 40), *(v1 + 104));
    }
  }

  *(*(*(v1 + 152) + 8) + 32) = *(v1 + 160) + *(*(*(v1 + 152) + 8) + 32);
  *(*(*(v1 + 152) + 8) + 40) = *(v1 + 168) + *(*(*(v1 + 152) + 8) + 40);
  *(*(*(v1 + 152) + 8) + 44) = *(v1 + 172) + *(*(*(v1 + 152) + 8) + 44);
  *(*(*(v1 + 152) + 8) + 36) = *(v1 + 164) + *(*(*(v1 + 152) + 8) + 36);
  v85 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23350D060(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D7FA80] currentDeviceInfo];
  if ([v3 supportsMultipleITunesAccounts])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isActive];
  }

  return v4;
}

void sub_23350D0C8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setActiveTvUser:{objc_msgSend(*(a1 + 40), "isActiveUser")}];
  v2 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = [*(a1 + 40) isActiveUser];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: active TV user: %{BOOL}u", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23350D1AC()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_2814EE828)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = sub_23350D2FC;
    v4[4] = &unk_2789DC2B8;
    v4[5] = v4;
    v5 = xmmword_2789DC2A0;
    v6 = 0;
    qword_2814EE828 = _sl_dlopen();
  }

  if (!qword_2814EE828)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WatchListKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"MPAssistantUtilities.m" lineNumber:47 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23350D2FC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2814EE828 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23350D370(uint64_t a1, void *a2)
{
  v3 = [a2 homeUserIDs];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_23350D3B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23350DBB8;
  block[3] = &unk_2789DBF68;
  v18 = v6;
  v26 = *(a1 + 120);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v23 = *(a1 + 88);
  v16 = *(a1 + 56);
  v10 = *(&v16 + 1);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v20 = v16;
  v19 = v11;
  v27 = *(a1 + 121);
  v24 = *(a1 + 104);
  v21 = v5;
  v12 = *(a1 + 72);
  v13 = *(a1 + 112);
  v22 = v12;
  v25 = v13;
  v14 = v5;
  v15 = v6;
  dispatch_sync(v7, block);
  dispatch_group_leave(*(a1 + 80));
}

void sub_23350D518(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInContextUsersStates:*(a1 + 40)];
  v2 = sub_23350552C(*(*(*(a1 + 88) + 8) + 40));
  [*(a1 + 32) setExpirationDate:v2];

  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    *buf = 138543875;
    v26 = v4;
    v27 = 2114;
    v28 = v5;
    v29 = 2113;
    v30 = v6;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: finished getting dynamite client state: %{private}@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 96) + 8) + 40);
  (*(*(a1 + 80) + 16))();
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 72) timeIntervalSinceNow];
  v11 = [v9 numberWithDouble:fabs(v10)];
  [*(a1 + 64) setObject:v11 forKeyedSubscript:@"duration"];

  LODWORD(v12) = *(*(*(a1 + 104) + 8) + 32);
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [*(a1 + 64) setObject:v13 forKeyedSubscript:@"age_verification_duration"];

  LODWORD(v14) = *(*(*(a1 + 104) + 8) + 36);
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [*(a1 + 64) setObject:v15 forKeyedSubscript:@"subscription_status_duration"];

  LODWORD(v16) = *(*(*(a1 + 104) + 8) + 40);
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [*(a1 + 64) setObject:v17 forKeyedSubscript:@"token_duration"];

  LODWORD(v18) = *(*(*(a1 + 104) + 8) + 44);
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [*(a1 + 64) setObject:v19 forKeyedSubscript:@"use_history_duration"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  [*(a1 + 64) setObject:v20 forKeyedSubscript:@"accounts_on_device"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 112) + 8) + 24)];
  [*(a1 + 64) setObject:v21 forKeyedSubscript:@"accounts_without_state"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 120) + 8) + 24)];
  [*(a1 + 64) setObject:v22 forKeyedSubscript:@"token_failure"];

  v24 = *(a1 + 64);
  AnalyticsSendEventLazy();

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23350D850(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = _MPLogCategoryAssistant();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [*(a1 + 56) shortDebugName];
      *buf = 138544131;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      v29 = 2113;
      v30 = v15;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching shared user id for %{private}@: %{public}@", buf, 0x2Au);
    }

    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = [*(a1 + 56) shortDebugName];
      *buf = 138544387;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v8;
      v31 = 2113;
      v32 = v7;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched shared user id: %{public}@:%{private}@ for %{public}@", buf, 0x34u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23350DBA8;
    block[3] = &unk_2789DC0C8;
    v19 = *(a1 + 72);
    v22 = *(a1 + 80);
    v23 = v8;
    v24 = v7;
    dispatch_sync(v19, block);
    dispatch_group_leave(*(a1 + 64));
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23350DAA8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) shortDebugName];
    v10 = 138543875;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2113;
    v15 = v5;
    _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: finished getting user state for %{private}@", &v10, 0x20u);
  }

  v6 = *(a1 + 56);
  v7 = *(*(*(a1 + 72) + 8) + 40);
  result = (*(*(a1 + 64) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23350DBB8(uint64_t a1)
{
  v1 = a1;
  v106 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 120) == 1)
    {
      v2 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v1 + 40);
        v4 = *(v1 + 48);
        v5 = [*(v1 + 56) shortDebugName];
        *buf = 138543875;
        v96 = v3;
        v97 = 2114;
        v98 = v4;
        v99 = 2113;
        v100 = v5;
        _os_log_impl(&dword_2334D9000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ is default", buf, 0x20u);
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = [*(v1 + 32) syncSharedUserId];
      v8 = [*(v1 + 32) userHistoryUnmodifiable];
      v9 = [v8 stringValue];
      v10 = [*(v1 + 32) status];
      if ([*(v1 + 32) ageVerificationRequired])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = [*(v1 + 32) defaultMediaPlaybackAppBundleIdentifier];
      if ([*(v1 + 32) isPromotionRelatedStatus])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = [*(a1 + 32) eligibleOffers];
      v85 = v13;
      v1 = a1;
      v15 = [v6 stringWithFormat:@"Default_UserState_v2_%@_%@_%@_%@_%@_%@_%@", v7, v9, v10, v11, v12, v85, v14];

      os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
      v16 = *(*(*(a1 + 96) + 8) + 40);
      v17 = [*(a1 + 56) dsid];
      [v16 setObject:v15 forKeyedSubscript:v17];

      os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
      v18 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v19 = *(a1 + 48);
        v21 = [*(a1 + 32) dictionary];
        *buf = 138543875;
        v96 = v20;
        v97 = 2114;
        v98 = v19;
        v99 = 2113;
        v100 = v21;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: default user state: %{private}@", buf, 0x20u);
      }

      [*(a1 + 64) setDefaultUserState:*(a1 + 32)];
      v22 = MEMORY[0x277CCABB0];
      v23 = [*(a1 + 56) music];
      v24 = [v22 numberWithInt:{objc_msgSend(v23, "cloudLibrarySyncStatus") == 1}];
      [*(a1 + 64) setICloudMusicLibraryToggle:v24];

      [*(a1 + 64) setAgeVerificationRequired:{objc_msgSend(*(a1 + 32), "ageVerificationRequired")}];
      v25 = [*(a1 + 32) iTunesMatchSubscriptionStatus];
      [*(a1 + 64) setITunesMatchSubscriptionStatus:v25];

      v26 = [*(a1 + 32) userHistoryUnmodifiable];
      [*(a1 + 64) setUserHistoryUnmodifiable:v26];

      v27 = [*(a1 + 32) userToken];
      [*(a1 + 64) setUserToken:v27];

      v28 = [*(a1 + 32) status];
      [*(a1 + 64) setStatus:v28];

      v29 = [*(a1 + 32) userTokenStatus];
      [*(a1 + 64) setUserTokenStatus:v29];

      v30 = [*(a1 + 32) eligibleOffers];
      [*(a1 + 64) setEligibleOffers:v30];

      [*(a1 + 64) setIsPromotionRelatedStatus:{objc_msgSend(*(a1 + 32), "isPromotionRelatedStatus")}];
      v31 = [*(a1 + 56) music];
      v32 = [v31 cookies];
      v33 = [v32 xpab];
      [*(a1 + 64) setXpAbCookie:v33];

      if ((*(a1 + 121) & 1) == 0)
      {
        v34 = [*(a1 + 64) userToken];
        v35 = [v34 length];

        if (!v35)
        {
          ++*(*(*(a1 + 104) + 8) + 24);
        }
      }
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = [*(v1 + 72) allKeys];
    v89 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
    if (v89)
    {
      v87 = *v92;
      do
      {
        v36 = 0;
        do
        {
          if (*v92 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v91 + 1) + 8 * v36);
          v38 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(v1 + 40);
            v40 = *(v1 + 48);
            v41 = [*(v1 + 56) shortDebugName];
            v42 = [*(v1 + 72) objectForKeyedSubscript:v37];
            *buf = 138544387;
            v96 = v39;
            v97 = 2114;
            v98 = v40;
            v99 = 2113;
            v100 = v41;
            v101 = 2114;
            v102 = v37;
            v103 = 2113;
            v104 = v42;
            _os_log_impl(&dword_2334D9000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shared user ID %{public}@:%{private}@", buf, 0x34u);
          }

          v90 = v36;

          v43 = [*(v1 + 32) copy];
          if ((*(v1 + 121) & 1) == 0)
          {
            v44 = [*(v1 + 72) objectForKeyedSubscript:v37];
            [v43 setSharedUserId:v44];
          }

          [v43 setSyncSharedUserId:v37];
          v45 = MEMORY[0x277CCACA8];
          v46 = [v43 syncSharedUserId];
          v47 = [v43 userHistoryUnmodifiable];
          v48 = [v47 stringValue];
          v49 = [v43 status];
          v50 = @"NO";
          if ([v43 ageVerificationRequired])
          {
            v51 = @"YES";
          }

          else
          {
            v51 = @"NO";
          }

          v52 = [v43 defaultMediaPlaybackAppBundleIdentifier];
          if ([v43 isPromotionRelatedStatus])
          {
            v50 = @"YES";
          }

          v53 = [v43 eligibleOffers];
          v54 = [v45 stringWithFormat:@"UserState_v2_%@_%@_%@_%@_%@_%@_%@", v46, v48, v49, v51, v52, v50, v53];

          v1 = a1;
          v55 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(a1 + 40);
            v57 = *(a1 + 48);
            v58 = [*(a1 + 56) shortDebugName];
            v59 = [v43 dictionary];
            *buf = 138544131;
            v96 = v56;
            v97 = 2114;
            v98 = v57;
            v99 = 2113;
            v100 = v58;
            v101 = 2113;
            v102 = v59;
            _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
          }

          os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
          [*(a1 + 80) addObject:v43];
          v60 = *(*(*(a1 + 96) + 8) + 40);
          v61 = [*(a1 + 56) dsid];
          [v60 setObject:v54 forKeyedSubscript:v61];

          os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
          v36 = v90 + 1;
        }

        while (v89 != v90 + 1);
        v89 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
      }

      while (v89);
    }

    if (![*(v1 + 72) count])
    {
      v62 = [*(v1 + 56) homeUserIDs];
      v63 = [v62 count];

      if (v63)
      {
        v64 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(v1 + 40);
          v66 = *(v1 + 48);
          v67 = [*(v1 + 56) shortDebugName];
          *buf = 138543875;
          v96 = v65;
          v97 = 2114;
          v98 = v66;
          v99 = 2113;
          v100 = v67;
          _os_log_impl(&dword_2334D9000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has no shared user IDs", buf, 0x20u);
        }

        v68 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = *(v1 + 40);
          v70 = *(v1 + 48);
          v71 = [*(v1 + 56) shortDebugName];
          v72 = [*(v1 + 32) dictionary];
          *buf = 138544131;
          v96 = v69;
          v97 = 2114;
          v98 = v70;
          v99 = 2113;
          v100 = v71;
          v101 = 2113;
          v102 = v72;
          _os_log_impl(&dword_2334D9000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
        }

        v73 = MEMORY[0x277CCACA8];
        v74 = [*(v1 + 32) userHistoryUnmodifiable];
        v75 = [v74 stringValue];
        v76 = [*(v1 + 32) status];
        if ([*(v1 + 32) ageVerificationRequired])
        {
          v77 = @"YES";
        }

        else
        {
          v77 = @"NO";
        }

        v78 = [*(v1 + 32) defaultMediaPlaybackAppBundleIdentifier];
        v79 = [v73 stringWithFormat:@"UserState_v2_%@_%@_%@_%@_%@", @"none", v75, v76, v77, v78];

        os_unfair_lock_lock((*(*(v1 + 88) + 8) + 32));
        v80 = *(v1 + 80);
        v81 = [*(v1 + 32) copy];
        [v80 addObject:v81];

        v82 = *(*(*(v1 + 96) + 8) + 40);
        v83 = [*(v1 + 56) dsid];
        [v82 setObject:v79 forKeyedSubscript:v83];

        os_unfair_lock_unlock((*(*(v1 + 88) + 8) + 32));
      }
    }
  }

  else
  {
    ++*(*(*(a1 + 112) + 8) + 24);
  }

  v84 = *MEMORY[0x277D85DE8];
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}