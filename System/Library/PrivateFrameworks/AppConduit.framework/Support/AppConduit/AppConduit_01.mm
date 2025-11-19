void sub_100034248(uint64_t a1)
{
  v24 = [*(a1 + 32) _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0];
  v2 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = &MISCopyErrorStringForErrorCode_ptr;
    v25 = v3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [objc_alloc(v7[180]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
        v12 = v11;
        if ((!v11 || [v11 isPlaceholder]) && objc_msgSend(v9, "ACX_shouldBeTrackedByLaunchServicesWatcher"))
        {
          v13 = [*(v26 + 32) appList];
          v14 = [v13 objectForKeyedSubscript:v10];

          if (v14)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v23 = v10;
              MOLogWrite();
            }

            v15 = [*(v26 + 32) appList];
            [v15 removeObjectForKey:v10];

            v16 = [v14 counterpartIdentifiers];
            if (v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = &__NSArray0__struct;
            }

            [v2 setObject:v17 forKeyedSubscript:v10];
            v18 = v2;
            [*(v26 + 32) setLastSequenceNumber:{objc_msgSend(*(v26 + 32), "lastSequenceNumber") + 1}];
            v19 = -[ACXAppEventRecord initWithRecordType:bundleID:sequenceNumber:]([ACXAppEventRecord alloc], "initWithRecordType:bundleID:sequenceNumber:", 1, v10, [*(v26 + 32) lastSequenceNumber]);
            [*(v26 + 32) _onQueue_addAppEvent:v19];

            v2 = v18;
            v3 = v25;
            v7 = &MISCopyErrorStringForErrorCode_ptr;
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v23 = v10;
            MOLogWrite();
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v20 = *(v26 + 32);
    v21 = [v20 ourDBUUID];
    [v20 _onQueue_noteNewApps:0 updatedApps:0 removedApps:v2 forDBUUID:v21 endingSequenceNumber:{objc_msgSend(*(v26 + 32), "lastSequenceNumber")}];

    v22 = *(v26 + 32);
    if (v24)
    {
      [v22 _onQueue_writeAppListToDisk];
    }

    else
    {
      [v22 _onQueue_reSyncWithLS];
    }
  }
}

void sub_100034D74(id a1, NSArray *a2)
{
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v8 = *(*(&v9 + 1) + 8 * i);
          MOLogWrite();
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100035040(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  if (!v2)
  {
    sub_100059F54();
  }

  v3 = v2;
  v4 = [*(a1 + 32) companionAppBundleID];
  if (!v4)
  {
    sub_100059F28();
  }

  v5 = v4;
  if (![*(a1 + 40) _onQueue_installIsPendingForWatchApp:v3])
  {
    v8 = [ACXInstallQueueElement alloc];
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v13 = [*(a1 + 32) requiredCapabilities];
    v14 = [(ACXInstallQueueElement *)v8 initWithWatchBundleID:v3 companionBundleID:v5 priority:v9 appPrefs:v10 provisioningProfileInfo:v11 isUserInitiated:v12 requiredCapabilities:v13];

    v15 = [*(a1 + 40) placeholderInstallQueue];
    [v15 addObject:v14];

    v16 = [*(a1 + 64) copy];
    v17 = objc_retainBlock(v16);
    v18 = [*(a1 + 40) completions];
    [v18 setObject:v17 forKeyedSubscript:v3];

    v19 = [*(a1 + 40) currentInstallOperation];

    if (v19)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_20;
      }

      [*(a1 + 40) _onQueue_countPending];
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v20 = v3;
        MOLogWrite();
      }

      if (([*(a1 + 40) isSuspended] & 1) == 0)
      {
        [*(a1 + 40) _onQueue_startQueue];
        goto LABEL_20;
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_20;
      }
    }

    MOLogWrite();
LABEL_20:

    goto LABEL_21;
  }

  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035310;
  v21[3] = &unk_10008D118;
  v22 = *(a1 + 64);
  sub_100005828(v7, v21);

LABEL_21:
}

void sub_1000354BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100059FAC();
  }

  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    sub_100059F80();
  }

  v5 = v4;
  if (![*(a1 + 48) _onQueue_installIsPendingForWatchApp:v3])
  {
    v8 = [ACXInstallQueueElement alloc];
    LOBYTE(v21) = *(a1 + 105);
    LOBYTE(v16) = *(a1 + 104);
    v9 = [(ACXInstallQueueElement *)v8 initWithURL:*(a1 + 56) watchBundleID:v3 companionBundleID:v5 priority:*(a1 + 88) appPrefs:*(a1 + 64) provisioningProfileInfo:0 isUserInitiated:v16 requiredCapabilities:*(a1 + 72) isPlaceholder:v21 size:*(a1 + 96)];
    v10 = *(a1 + 48);
    if (*(a1 + 105) == 1)
    {
      [v10 placeholderInstallQueue];
    }

    else
    {
      [v10 _queueForPriority:*(a1 + 88)];
    }
    v11 = ;
    [v11 addObject:v9];

    v12 = [*(a1 + 80) copy];
    v13 = objc_retainBlock(v12);
    v14 = [*(a1 + 48) completions];
    [v14 setObject:v13 forKeyedSubscript:v3];

    v15 = [*(a1 + 48) currentInstallOperation];

    if (v15)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_24;
      }

      v19 = *(a1 + 56);
      [*(a1 + 48) _onQueue_countPending];
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v17 = v3;
        v18 = *(a1 + 56);
        MOLogWrite();
      }

      if (([*(a1 + 48) isSuspended] & 1) == 0)
      {
        [*(a1 + 48) _onQueue_startQueue];
        goto LABEL_24;
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_24;
      }

      v20 = *(a1 + 56);
    }

    MOLogWrite();
LABEL_24:

    goto LABEL_25;
  }

  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100035790;
  v22[3] = &unk_10008D118;
  v23 = *(a1 + 80);
  sub_100005828(v7, v22);

LABEL_25:
}

void sub_10003582C(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  v3 = [v2 isReachable];

  v4 = [*(a1 + 32) isSuspended];
  if (v3)
  {
    if (v4)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v5 = [*(a1 + 32) device];
        v10 = [v5 idsDeviceIdentifier];
        MOLogWrite();
      }

      [*(a1 + 32) setIsSuspended:{0, v10}];
      if ([*(a1 + 32) _onQueue_countPending])
      {
        v6 = [*(a1 + 32) currentInstallOperation];

        if (!v6)
        {
          v7 = *(a1 + 32);

          [v7 _onQueue_startQueue];
        }
      }
    }
  }

  else if ((v4 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v8 = [*(a1 + 32) device];
      v11 = [v8 idsDeviceIdentifier];
      MOLogWrite();
    }

    v9 = *(a1 + 32);

    [v9 setIsSuspended:1];
  }
}

void sub_100035AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035AD0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentInstallOperation];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [*(a1 + 32) currentInstallOperation];
  v5 = [v4 watchAppBundleID];
  v6 = [v5 isEqualToString:*(a1 + 40)];

  if (v6)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v26 = *(a1 + 40);
      MOLogWrite();
    }

    v7 = [*(a1 + 32) currentInstallOperation];
    [v7 cancel];

    [*(a1 + 32) setCancelCurrentOperation:1];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v8 placeholderInstallQueue];
    LOBYTE(v8) = [v8 _onQueue_removeInstallOperationWithWatchBundleID:v9 fromQueue:v10];

    if (v8)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [v11 highPriorityUpdateQueue];
    LOBYTE(v11) = [v11 _onQueue_removeInstallOperationWithWatchBundleID:v12 fromQueue:v13];

    if (v11)
    {
      goto LABEL_11;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = [v14 normalPriorityUpdateQueue];
    LOBYTE(v14) = [v14 _onQueue_removeInstallOperationWithWatchBundleID:v15 fromQueue:v16];

    if ((v14 & 1) != 0 || (v17 = *(a1 + 32), v18 = *(a1 + 40), [v17 normalPriorityNewAppUpdateQueue], v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v17) = objc_msgSend(v17, "_onQueue_removeInstallOperationWithWatchBundleID:fromQueue:", v18, v19), v19, v17))
    {
LABEL_11:
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v26 = *(a1 + 40);
        MOLogWrite();
      }

      v20 = [*(a1 + 32) completions];
      v21 = [v20 objectForKeyedSubscript:*(a1 + 40)];

      v22 = qos_class_self();
      v23 = dispatch_get_global_queue(v22, 0);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100035DAC;
      v27[3] = &unk_10008D118;
      v28 = v21;
      v24 = v21;
      sub_100005828(v23, v27);

      v25 = [*(a1 + 32) completions];
      [v25 removeObjectForKey:*(a1 + 40)];
    }
  }
}

void sub_100035DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = sub_100001B04("[ACXInstallQueue cancelInstallForWatchAppBundleID:]_block_invoke_2", 210, @"ACXErrorDomain", 6, @"Cancelled", a6, a7, a8, v9);
  (*(v8 + 16))(v8, v10);
}

void sub_100035F7C(id a1, NSString *a2, id a3)
{
  v3 = a3;
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003602C;
  v7[3] = &unk_10008D118;
  v8 = v3;
  v6 = v3;
  sub_100005828(v5, v7);
}

void sub_10003602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = sub_100001B04("[ACXInstallQueue _onQueue_cancelAllPendingInstalls]_block_invoke_2", 233, @"ACXErrorDomain", 6, @"Cancelled", a6, a7, a8, v9);
  (*(v8 + 16))(v8, v10);
}

void sub_1000369D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000369F0(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v12 = a3;
    v10 = a2;
    MOLogWrite();
  }

  v6 = [*(a1 + 32) bundleID];
  [ACXDeviceConnectionClient messageAllObserversWithInstallProgressForApplication:v6 progress:a2 phase:a3];

  if (a2 == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v13 = WeakRetained;
      if (a3 == 0.0)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v11 = [*(a1 + 32) bundleID];
          MOLogWrite();

          WeakRetained = v13;
        }

        v8 = [WeakRetained recentlyCompletedWatchAppInstalls];
        v9 = [*(a1 + 32) bundleID];
        [v8 addIdentifierIfNotPresent:v9];
      }

      else
      {
        v8 = [WeakRetained recentlyCompletedWatchAppInstalls];
        v9 = [*(a1 + 32) bundleID];
        [v8 updateTimeOnIdentifier:v9];
      }

      WeakRetained = v13;
    }
  }
}

void sub_100036B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100036C80;
  v8[3] = &unk_10008DB38;
  v13 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  sub_100005828(v4, v8);
}

id sub_100036C80(uint64_t a1)
{
  if (*(a1 + 64) != 1 || *(a1 + 32) || ([*(a1 + 40) cancelCurrentOperation] & 1) != 0 || (objc_msgSend(*(a1 + 40), "currentInstallOperation"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "installType"), v2, v3))
  {
    v4 = *(a1 + 32);
    if ([*(a1 + 40) cancelCurrentOperation])
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v4 = sub_100001B04("[ACXInstallQueue _onQueue_deQueueNextOperation]_block_invoke_3", 394, @"ACXErrorDomain", 6, @"Install canceled", v5, v6, v7, v18);
    }

    if (v4)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_19;
      }

      v9 = [*(a1 + 48) bundleID];
      sub_100006DA8(*(a1 + 64));
      sub_100006DA8([*(a1 + 48) isUserInitiated]);
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_19;
      }

      v9 = [*(a1 + 48) bundleID];
    }

    MOLogWrite();

LABEL_19:
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100036F5C;
    v19[3] = &unk_10008CCD8;
    v12 = *(a1 + 56);
    v20 = v4;
    v21 = v12;
    v13 = v4;
    sub_100005828(v11, v19);

    goto LABEL_20;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v18 = [*(a1 + 48) bundleID];
    MOLogWrite();
  }

  v13 = [*(a1 + 40) _queueForPriority:{objc_msgSend(*(a1 + 48), "priority", v18)}];
  [v13 addObject:*(a1 + 48)];
  v15 = objc_retainBlock(*(a1 + 56));
  v16 = [*(a1 + 40) completions];
  v17 = [*(a1 + 48) bundleID];
  [v16 setObject:v15 forKeyedSubscript:v17];

LABEL_20:
  return [*(a1 + 40) _onQueue_deQueueNextOperation];
}

void sub_1000375D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000375EC(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_installIsPendingForWatchApp:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100037888(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = sub_10000641C();
  [v1 removeItemAtURL:v2 error:0];

  if (mach_timebase_info(&qword_1000A4820))
  {
    syslog(3, "Failed to get timebase info\n");
    qword_1000A4820 = &_mh_execute_header;
  }
}

void sub_100038130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v9 = *(a1 + 32);
  v10 = sub_100001B04("[ACXServerInstallOperation _onQueue_armWatchdog]_block_invoke", 187, @"ACXErrorDomain", 26, @"Didn't get reply from gizmo after %llu seconds.", a6, a7, a8, 900);
  [v9 _onQueue_callCompletion:v10];
}

void sub_100038D7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]_block_invoke", 370, @"ACXErrorDomain", 8, a2, 0, @"Failed to create socket", a8, v10);
    [*(a1 + 32) _onQueue_callCompletion:v11];
  }

  else
  {
    [*(a1 + 32) setAcquiredSocket:1];
    v9 = *(a1 + 32);

    [v9 _onQueue_doTransferAndInstall];
  }
}

void sub_10003A1F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

id sub_10003A238(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained && [WeakRetained cancelled])
  {
    v13 = sub_100001B04("[ACXServerInstallOperation receivedDictionaryOrData:]_block_invoke", 507, NSPOSIXErrorDomain, 89, 0, v10, v11, v12, v20);
    v14 = [v9 watchAppBundleID];
    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]_block_invoke", 507, @"ACXErrorDomain", 6, v13, 0, @"Operation cancelled for %@.", v15, v14);

    if (a4)
    {
      v17 = v16;
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v16 = [*(a1 + 32) socketManager];
    v18 = [v16 writeBytes:a2 length:a3 error:a4];
  }

  return v18;
}

void sub_10003A36C(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _onQueue_callProgressBlockWithPhase:1 percent:a2];
    WeakRetained = v4;
  }
}

void sub_10003A3C4(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setGotStreamingZipComplete:1];
    if (v10)
    {
      v5 = [v10 domain];
      v6 = [v5 isEqualToString:@"ACXErrorDomain"];

      if (v6)
      {
        [v4 _onQueue_callCompletion:v10];
      }

      else
      {
        v8 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]_block_invoke_3", 540, @"ACXErrorDomain", 9, v10, 0, @"Transfer failed", v7, v9);
        [v4 _onQueue_callCompletion:v8];
      }
    }

    else if ([v4 gotTransferDone])
    {
      [v4 _onQueue_startInstall];
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        MOLogWrite();
      }

      [v4 _onQueue_armWatchdog];
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

void sub_10003A844(id a1)
{
  v1 = objc_alloc_init(ACXDeviceManager);
  v2 = qword_1000A4828;
  qword_1000A4828 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003A9F0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 48);

  objc_storeStrong(v3, v2);
}

void sub_10003AB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003AB9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003ABB4(uint64_t a1)
{
  v2 = [*(a1 + 32) activePairedDevice];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10003AD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003AD94(uint64_t a1)
{
  v5 = [*(a1 + 32) devices];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003AF90(uint64_t a1)
{
  v2 = [*(a1 + 32) devices];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B034;
  v5[3] = &unk_10008DCA0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10003B034(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [v8 pairingID];
  if ([v7 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10003B288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B2A0(uint64_t a1)
{
  v5 = [*(a1 + 32) devices];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003B3E0(id *a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v48 = objc_opt_new();
  v2 = objc_opt_new();
  v47 = objc_opt_new();
  v44 = objc_opt_new();
  v46 = objc_opt_new();
  v45 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = a1[4];
  v53 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v53)
  {
    v52 = *v60;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v60 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v59 + 1) + 8 * i);
        v5 = IDSCopyIDForDevice();
        v6 = [v4 productVersion];
        v7 = [v6 compare:@"8.0" options:64];

        v8 = [a1[5] serviceName];
        v9 = [v8 isEqualToString:@"com.apple.private.alloy.appsyncconduit.v2"];

        if (v9 && v7 == -1)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v10 = [v4 productVersion];
            v42 = v5;
            v43 = @"com.apple.private.alloy.appsyncconduit.v2";
            v41 = v10;
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        v11 = [a1[5] serviceName];
        v12 = [v11 isEqualToString:@"com.apple.private.alloy.appsyncconduit"];

        if (v12 && v7 != -1)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v10 = [v4 productVersion];
            v42 = v5;
            v43 = @"com.apple.private.alloy.appsyncconduit";
            v41 = v10;
LABEL_19:
            MOLogWrite();
          }

LABEL_20:
          [v2 addObject:{v5, v41, v42, v43}];
          goto LABEL_48;
        }

        [v48 addObject:v5];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v50 = [a1[5] serviceName];
          v49 = sub_100006DA8([v4 isActive]);
          sub_100006DA8([v4 isLocallyPaired]);
          sub_100006DA8([v4 isConnected]);
          sub_100006DA8([v4 isNearby]);
          [v4 serviceMinCompatibilityVersion];
          [v4 minCompatibilityVersion];
          [v4 maxCompatibilityVersion];
          v43 = v49;
          v41 = v50;
          v42 = v5;
          MOLogWrite();
        }

        v13 = [a1[6] devices];
        v14 = [v13 objectForKeyedSubscript:v5];

        if (v14)
        {
          v15 = a1[5];
          v16 = [a1[6] legacyMessagingService];
          v17 = v16;
          if (v15 == v16)
          {
            v20 = [(ACXDevice *)v14 messager];
            v21 = [a1[6] currentMessagingService];

            if (v20 == v21)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                MOLogWrite();
              }

              goto LABEL_47;
            }
          }

          else
          {
          }

          v22 = [(ACXDevice *)v14 isTombstone];
          v23 = [(ACXDevice *)v14 isConnected];
          v24 = [v4 isConnected];
          [(ACXDevice *)v14 updateIDSDevice:v4 forMessager:a1[5]];
          if (v22)
          {
            v19 = v47;
            goto LABEL_36;
          }

          if (v23 & 1 | ((v24 & 1) == 0))
          {
            if (!(v24 & 1 | ((v23 & 1) == 0)))
            {
              v19 = v45;
              goto LABEL_36;
            }
          }

          else
          {
            v19 = v46;
LABEL_36:
            [v19 addObject:v14];
          }

          if ([(ACXDevice *)v14 isActivePairedDevice])
          {
            v25 = [a1[6] activePairedDevice];
            if (!v25 || (v26 = v25, [a1[6] activePairedDevice], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqual:", v14), v27, v26, (v28 & 1) == 0))
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v29 = [a1[6] activePairedDevice];
                v30 = [v29 idsDeviceIdentifier];
                [(ACXDevice *)v14 idsDeviceIdentifier];
                v42 = v41 = v30;
                MOLogWrite();
              }

              [a1[6] setActivePairedDevice:{v14, v41}];
            }
          }

          goto LABEL_47;
        }

        v14 = [[ACXDevice alloc] initWithIDSDevice:v4 messager:a1[5]];
        if (v14)
        {
          v18 = [a1[6] devices];
          [v18 setObject:v14 forKeyedSubscript:v5];

          v19 = v47;
          goto LABEL_36;
        }

LABEL_47:

LABEL_48:
      }

      v53 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v53);
  }

  v31 = [a1[6] activePairedDevice];
  v32 = [v31 idsDeviceIdentifier];

  v33 = [a1[6] activePairedDevice];
  if (v33 && ([v48 containsObject:v32] & 1) == 0)
  {
    v40 = [v2 containsObject:v32];

    v34 = v46;
    if ((v40 & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v41 = v32;
        MOLogWrite();
      }

      [a1[6] setActivePairedDevice:{0, v41}];
    }
  }

  else
  {

    v34 = v46;
  }

  v35 = [a1[6] devices];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10003BC14;
  v54[3] = &unk_10008DCC8;
  v36 = v48;
  v55 = v36;
  v37 = v2;
  v56 = v37;
  v38 = v44;
  v57 = v38;
  v58 = a1[5];
  [v35 enumerateKeysAndObjectsUsingBlock:v54];

  v39 = [a1[6] delegate];
  if ([v47 count] || objc_msgSend(v38, "count"))
  {
    [v39 newDevices:v47 removedDevices:v38];
  }

  if ([v34 count])
  {
    [v39 devicesAreNowConnected:v34];
  }

  if ([v45 count])
  {
    [v39 devicesAreNoLongerConnected:v45];
  }
}

void sub_10003BC14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v6) & 1) == 0 && (objc_msgSend(v5, "isTombstone") & 1) == 0)
  {
    [*(a1 + 48) addObject:v5];
    [v5 updateIDSDevice:0 forMessager:*(a1 + 56)];
  }
}

void sub_10003CC1C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppConduit.ACXRemoteAppList", v3);
  v2 = qword_1000A4840;
  qword_1000A4840 = v1;
}

uint64_t sub_10003D490(uint64_t a1)
{
  result = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v3 = *(a1 + 32);
    return MOLogWrite();
  }

  return result;
}

id sub_10003D4F0(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  [*(a1 + 40) _onQueue_stopSyncTimer];
  v2 = *(a1 + 40);

  return [v2 _onQueue_reSync];
}

uint64_t sub_10003D88C(uint64_t a1)
{
  result = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v3 = *(a1 + 32);
    return MOLogWrite();
  }

  return result;
}

id sub_10003D8EC(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  v2 = *(a1 + 40);

  return [v2 _onQueue_reSync];
}

void sub_10003DC18(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 fetchBundleIDList];
}

id sub_10003DD34(uint64_t a1)
{
  [*(a1 + 32) _onQueue_stopSyncTimer];
  v2 = *(a1 + 32);

  return [v2 _onQueue_startResyncThrottleTimer];
}

void sub_10003E240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003E264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_fetchRemainingBundleIDs];
    WeakRetained = v2;
  }
}

void sub_10003E2A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fetchAppInfoForBundleIDs:*(a1 + 40)];
}

void sub_10003E754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003E778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_fetchAppsForAppInstallRecords];
    WeakRetained = v2;
  }
}

void sub_10003E7BC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fetchAppInfoForBundleIDs:*(a1 + 40)];
}

void sub_10003EA50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10003EA6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_fetchOutstandingAppEvents];
    WeakRetained = v2;
  }
}

void sub_10003EAB0(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 fetchOutstandingAppEvents];
}

void sub_10003ED10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10003ED2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_acknowledgeAppEvents];
    WeakRetained = v2;
  }
}

void sub_10003ED70(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 acknowledgeAppEventsForDBUUID:*(a1 + 40) throughSequenceNumber:*(a1 + 48)];
}

void sub_10003EFAC(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 applicationsAdded:*(a1 + 40)];
}

void sub_10003F1E8(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 applicationsUpdated:*(a1 + 40)];
}

void sub_10003F424(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 applicationsRemoved:*(a1 + 40)];
}

void sub_10003F638(uint64_t a1)
{
  v1 = [*(a1 + 32) observer];
  [v1 resyncCompleted];
}

void sub_10003F754(uint64_t a1)
{
  if (!*(*(a1 + 32) + 96))
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;
  }

  v6 = [[ACXRemoteAppListObserver alloc] initWithObserver:*(a1 + 40) queue:*(a1 + 48)];
  v5 = [*(a1 + 32) observers];
  [v5 addObject:v6];
}

void sub_10003F8C4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 count];

  if (!v5)
  {
    return;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v19;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v19 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v18 + 1) + 8 * v10);
    v12 = [v11 observer];
    v13 = v12;
    if (v12 == *(a1 + 40))
    {
      break;
    }

LABEL_11:
    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  v14 = [v11 queue];
  v15 = *(a1 + 48);

  if (v14 != v15)
  {
    goto LABEL_11;
  }

  v16 = v11;

  if (!v16)
  {
    return;
  }

  v17 = [*(a1 + 32) observers];
  [v17 removeObject:v16];

  v6 = v16;
LABEL_16:
}

id sub_10003FB00(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [*(a1 + 32) setRemoteIsConnected:0];
  v2 = *(a1 + 32);

  return [v2 _onQueue_stopResyncThrottleTimer];
}

uint64_t sub_10003FBFC(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [*(a1 + 32) setRemoteIsConnected:1];
  v5 = [*(a1 + 32) resumeOnReconnect];
  v2 = [*(a1 + 32) setResumeOnReconnect:0];
  v3 = v5;
  if (v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
      v3 = v5;
    }

    v2 = (*(v3 + 16))(v3);
    v3 = v5;
  }

  return _objc_release_x1(v2, v3);
}

id sub_10003FD98(uint64_t a1)
{
  if ([*(a1 + 32) performingResync])
  {
    result = qword_1000A4878;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v9 = *(a1 + 40);
      v11 = *(a1 + 48);
      return MOLogWrite();
    }

    return result;
  }

  v3 = [*(a1 + 32) currentDBUUID];
  v4 = [v3 isEqual:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v6 = *(a1 + 40);
      [*(a1 + 32) currentDBUUID];
      v10 = v8 = v6;
      MOLogWrite();
    }

    goto LABEL_17;
  }

  if ([*(a1 + 32) lastSequenceNumber] < *(a1 + 48))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      [*(a1 + 32) lastSequenceNumber];
      v12 = *(a1 + 48);
      MOLogWrite();
    }

    v5 = *(a1 + 32);

    return [v5 _onQueue_fetchOutstandingAppEvents];
  }

  result = [*(a1 + 32) lastSequenceNumber];
  if (result > *(a1 + 48))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v8 = [*(a1 + 32) lastSequenceNumber];
      v10 = *(a1 + 48);
      MOLogWrite();
    }

LABEL_17:
    [*(a1 + 32) setCurrentDBUUID:{*(a1 + 40), v8, v10}];
    [*(a1 + 32) setLastSequenceNumber:0];
    [*(a1 + 32) _onQueue_stopSyncTimer];
    v7 = *(a1 + 32);

    return [v7 _onQueue_reSync];
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {

    return MOLogWrite();
  }

  return result;
}

id sub_1000400DC(uint64_t a1)
{
  [*(a1 + 32) _onQueue_stopSyncTimer];
  [*(a1 + 32) setCurrentDBUUID:*(a1 + 40)];
  [*(a1 + 32) _resetLastSequenceNumberTo:*(a1 + 56)];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v2 = [*(a1 + 48) count];
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v6 = v2;
    MOLogWrite();
  }

  v3 = [*(a1 + 48) copy];
  [*(a1 + 32) setBundleIDsToFetch:v3];

  [*(a1 + 32) setAppInstallRecordsToFetch:0];
  v4 = *(a1 + 32);

  return [v4 _onQueue_fetchRemainingBundleIDs];
}

void sub_100040284(uint64_t a1)
{
  [*(a1 + 32) _onQueue_stopSyncTimer];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) currentDBUUID];
  v4 = [v2 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v49 = *(a1 + 32);

    [v49 _onQueue_reSync];
    return;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v59 = [*(a1 + 48) count];
    MOLogWrite();
  }

  v64 = objc_opt_new();
  v65 = objc_opt_new();
  v5 = [*(a1 + 32) appList];
  v74 = [v5 mutableCopy];

  v6 = [*(a1 + 32) appInstallRecordsToFetch];
  v7 = [v6 mutableCopy];

  v8 = [*(a1 + 32) bundleIDsToFetch];
  v71 = [v8 mutableCopy];

  v63 = v7 == 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = *(a1 + 48);
  v73 = v7;
  v67 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  v9 = 0;
  if (!v67)
  {
LABEL_47:

    if ([*(a1 + 32) lastSequenceNumber] < v9)
    {
      [*(a1 + 32) setLastSequenceNumber:v9];
    }

    obj = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v31 = [*(a1 + 32) attemptsPerBundleID];
    v32 = [v31 allKeys];

    v33 = [v32 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (!v33)
    {
LABEL_63:

      v44 = v64;
      v45 = v65;
      v7 = v73;
      v46 = v71;
      if ([obj count])
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v59 = 3;
          v61 = obj;
          MOLogWrite();
        }

        v47 = [*(a1 + 32) attemptsPerBundleID];
        [v47 removeObjectsForKeys:obj];
      }

      if (v73)
      {
        [*(a1 + 32) _onQueue_acknowledgeAppEvents];
        if ([v73 count])
        {
          v48 = [v73 copy];
          [*(a1 + 32) setAppInstallRecordsToFetch:v48];
        }

        else
        {
          [*(a1 + 32) setAppInstallRecordsToFetch:0];
        }
      }

      if ([v71 count])
      {
        v51 = [v71 copy];
        [*(a1 + 32) setBundleIDsToFetch:v51];
      }

      else
      {
        [*(a1 + 32) setBundleIDsToFetch:0];
      }

      v52 = [v74 copy];
      [*(a1 + 32) setAppList:v52];

      if ([v64 count])
      {
        [*(a1 + 32) _onQueue_appsAdded:v64];
      }

      if ([v65 count])
      {
        [*(a1 + 32) _onQueue_appsUpdated:v65];
      }

      v53 = [*(a1 + 32) bundleIDsToFetch];
      v54 = [v53 count];

      v55 = *(a1 + 32);
      if (v54)
      {
        [v55 _onQueue_fetchRemainingBundleIDs];
      }

      else if (v63)
      {
        [v55 _onQueue_fetchOutstandingAppEvents];
      }

      else
      {
        v56 = [v55 appInstallRecordsToFetch];
        v57 = [v56 count];

        if (v57)
        {
          [*(a1 + 32) _onQueue_fetchAppsForAppInstallRecords];
        }

        else
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            MOLogWrite();
          }

          v58 = [*(a1 + 32) attemptsPerBundleID];
          [v58 removeAllObjects];

          if ([*(a1 + 32) performingResync])
          {
            [*(a1 + 32) setPerformingResync:0];
            [*(a1 + 32) _onQueue_databaseResynced];
          }

          [*(a1 + 32) _onQueue_saveData];
        }
      }

      goto LABEL_106;
    }

    v34 = v33;
    v35 = *v76;
LABEL_51:
    v36 = 0;
    while (1)
    {
      if (*v76 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v75 + 1) + 8 * v36);
      v38 = [*(a1 + 32) attemptsPerBundleID];
      v39 = [v38 objectForKeyedSubscript:v37];

      if (v39)
      {
        v40 = [v39 unsignedIntValue];
        v41 = v40 + 1;
        if (v40 >= 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v84 = v37;
            v85 = 2048;
            v86 = v41;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to query app info for %@ after %lu attempts - attempting to proceed with the sync gracefully", buf, 0x16u);
          }

          [v73 removeObjectForKey:v37];
          [v71 removeObject:v37];
          [v74 removeObjectForKey:v37];
          [obj addObject:v37];
          goto LABEL_61;
        }
      }

      else
      {
        v41 = 1;
      }

      v42 = [NSNumber numberWithUnsignedInteger:v41];
      v43 = [*(a1 + 32) attemptsPerBundleID];
      [v43 setObject:v42 forKeyedSubscript:v37];

LABEL_61:
      if (v34 == ++v36)
      {
        v34 = [v32 countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (!v34)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }
    }
  }

  v66 = *v80;
LABEL_7:
  v10 = 0;
  while (1)
  {
    if (*v80 != v66)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v79 + 1) + 8 * v10);
    v12 = objc_autoreleasePoolPush();
    v13 = v11;
    v14 = [v13 bundleIdentifier];
    if (!v7)
    {
      [v71 removeObject:v14];
      v24 = [*(a1 + 32) attemptsPerBundleID];
      [v24 removeObjectForKey:v14];

      v16 = [v74 objectForKeyedSubscript:v14];
      if (v16)
      {
        if (qword_1000A4878)
        {
          v25 = v65;
          if (*(qword_1000A4878 + 44) <= 4)
          {
            goto LABEL_42;
          }
        }

        v69 = v12;
        v25 = v65;
      }

      else
      {
        if (qword_1000A4878)
        {
          v25 = v64;
          if (*(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_42;
          }
        }

        v69 = v12;
        v25 = v64;
      }

      v59 = [v13 bundleIdentifier];
      v61 = [v13 sequenceNumber];
      MOLogWrite();

      v12 = v69;
LABEL_42:
      v29 = [v13 copy];
      [v25 addObject:v29];

      [v74 setObject:v13 forKeyedSubscript:v14];
      goto LABEL_43;
    }

    v15 = [v7 objectForKeyedSubscript:v14];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = [v15 sequenceNumber];
    v18 = [v13 sequenceNumber];
    v19 = [v74 objectForKeyedSubscript:v14];
    v20 = v19;
    if (v17 <= v18)
    {
      if (v17 < v18)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v61 = v14;
          v62 = v17;
          v59 = v18;
          MOLogWrite();
        }

        v63 = 1;
      }

      v23 = v73;
      v21 = v20;
    }

    else
    {
      if (!v19 || [v19 sequenceNumber] != v17)
      {
        v50 = v12;
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v61 = v14;
          v62 = v17;
          v59 = v18;
          MOLogWrite();
        }

        [*(a1 + 32) _onQueue_reSync];

        v44 = v64;
        v45 = v65;
        v7 = v73;
        goto LABEL_85;
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v59 = v17;
        v61 = v14;
        MOLogWrite();
      }

      v21 = v20;
      v22 = v20;

      v13 = v22;
      v23 = v73;
    }

    [v23 removeObjectForKey:{v14, v59, v61, v62}];
    v26 = [*(a1 + 32) attemptsPerBundleID];
    [v26 removeObjectForKey:v14];

    [v74 setObject:v13 forKeyedSubscript:v14];
    v68 = v21;
    if (v21)
    {
      if (qword_1000A4878)
      {
        v27 = v65;
        if (*(qword_1000A4878 + 44) <= 4)
        {
          goto LABEL_37;
        }
      }

      v70 = v12;
      v27 = v65;
    }

    else
    {
      if (qword_1000A4878)
      {
        v27 = v64;
        if (*(qword_1000A4878 + 44) <= 4)
        {
          goto LABEL_37;
        }
      }

      v70 = v12;
      v27 = v64;
    }

    v60 = [v13 bundleIdentifier];
    v61 = [v13 sequenceNumber];
    MOLogWrite();

    v12 = v70;
LABEL_37:
    v28 = [v13 copy];
    [v27 addObject:v28];

LABEL_43:
    v30 = [v13 sequenceNumber];
    if (v30 > v9)
    {
      v9 = v30;
    }

    objc_autoreleasePoolPop(v12);
    v10 = v10 + 1;
    v7 = v73;
    if (v67 == v10)
    {
      v67 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (!v67)
      {
        goto LABEL_47;
      }

      goto LABEL_7;
    }
  }

  v50 = v12;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v59 = v14;
    MOLogWrite();
  }

  [*(a1 + 32) _onQueue_reSync];
  v44 = v64;
  v45 = v65;
LABEL_85:
  v46 = v71;

  objc_autoreleasePoolPop(v50);
LABEL_106:
}

void sub_100040E04(uint64_t a1)
{
  v1 = a1;
  [*(a1 + 32) _onQueue_stopSyncTimer];
  v2 = *(v1 + 40);
  v3 = [*(v1 + 32) currentDBUUID];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = *(v1 + 56);
  if (v4 > [*(v1 + 32) lastSequenceNumber] + 1)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_9;
    }

    v31 = *(v1 + 56);
    v33 = [*(v1 + 32) lastSequenceNumber];
LABEL_8:
    MOLogWrite();
LABEL_9:
    [*(v1 + 32) _onQueue_reSync];
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v8 = [*(v1 + 48) count];
    v33 = *(v1 + 40);
    v35 = *(v1 + 56);
    v31 = v8;
    MOLogWrite();
  }

  if ([*(v1 + 48) count])
  {
    v9 = [*(v1 + 32) appList];
    v10 = [v9 mutableCopy];

    v11 = [*(v1 + 32) lastSequenceNumber];
    v38 = objc_opt_new();
    v12 = [*(v1 + 32) appInstallRecordsToFetch];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = objc_opt_new();
    }

    v39 = v13;
    v40 = v10;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v1;
    v14 = *(v1 + 48);
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v41 = 0;
      v17 = *v43;
      v18 = v11;
      while (1)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [v20 bundleID];
          v23 = [v20 sequenceNumber];
          v24 = [v20 eventType];
          if (v24 == 1)
          {
            if (v23 <= v11)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v34 = v23;
                v36 = v11;
                v32 = v22;
                goto LABEL_50;
              }
            }

            else
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v32 = v22;
                v34 = v23;
                MOLogWrite();
              }

              if (v23 <= v18)
              {
                v25 = v18;
              }

              else
              {
                v25 = v23;
              }

              if ((v41 & 1) == 0)
              {
                v18 = v25;
              }

              v26 = [v40 objectForKeyedSubscript:{v22, v32, v34}];
              if (v26)
              {
                [v40 removeObjectForKey:v22];
                [v38 addObject:v26];
              }
            }
          }

          else if (v24)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              v34 = v22;
              v36 = v23;
              v32 = v24;
LABEL_50:
              MOLogWrite();
            }
          }

          else if (v23 <= v11)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v34 = v23;
              v36 = v11;
              v32 = v22;
              goto LABEL_50;
            }
          }

          else
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v32 = v22;
              v34 = v23;
              MOLogWrite();
            }

            [v39 setObject:v20 forKeyedSubscript:{v22, v32, v34, v36}];
            v41 = 1;
          }

          objc_autoreleasePoolPop(v21);
        }

        v16 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (!v16)
        {
          goto LABEL_56;
        }
      }
    }

    v18 = v11;
LABEL_56:

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v1 = v37;
    [*(v37 + 32) setLastSequenceNumber:{v18, v32, v34}];
    v7 = v39;
    v27 = [v39 copy];
    [*(v37 + 32) setAppInstallRecordsToFetch:v27];

    v5 = v40;
    v28 = [v40 copy];
    [*(v37 + 32) setAppList:v28];

    v6 = v38;
    if ([v38 count])
    {
      [*(v37 + 32) _onQueue_appsRemoved:v38];
    }

    [*(v37 + 32) _onQueue_acknowledgeAppEvents];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v29 = [*(v1 + 32) appInstallRecordsToFetch];
  v30 = [v29 count];

  if (v30)
  {
    [*(v1 + 32) _onQueue_fetchAppsForAppInstallRecords];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    if ([*(v1 + 32) performingResync])
    {
      [*(v1 + 32) setPerformingResync:0];
      [*(v1 + 32) _onQueue_saveData];
      [*(v1 + 32) _onQueue_databaseResynced];
    }
  }

LABEL_10:
}

void sub_100041498(uint64_t a1)
{
  if ([*(a1 + 32) performingResync])
  {
    v2 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v46;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v46 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v45 + 1) + 8 * i) bundleIdentifier];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v5);
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    return;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) currentDBUUID];
  LOBYTE(v9) = [v9 isEqual:v10];

  if ((v9 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v30 = *(a1 + 32);

    [v30 _onQueue_reSync];
    return;
  }

  v37 = objc_opt_new();
  v36 = objc_opt_new();
  v11 = [*(a1 + 32) appList];
  v12 = [v11 mutableCopy];

  v13 = [*(a1 + 32) lastSequenceNumber];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = a1;
  obj = *(a1 + 40);
  v14 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = v14;
  v39 = v12;
  v40 = *v42;
  while (2)
  {
    for (j = 0; j != v15; j = j + 1)
    {
      if (*v42 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v41 + 1) + 8 * j);
      v18 = objc_autoreleasePoolPush();
      v19 = [v17 bundleIdentifier];
      v20 = [v17 sequenceNumber];
      v21 = [v12 objectForKeyedSubscript:v19];
      v22 = v21;
      if (!v21)
      {
        v23 = v13 + 1;
        if (v13 + 1 != v20)
        {
          goto LABEL_44;
        }

        if (qword_1000A4878)
        {
          v24 = v37;
          if (*(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_33;
          }
        }

        v25 = [v17 counterpartIdentifiers];
        v33 = v25;
        v34 = v20;
        v32 = v19;
        MOLogWrite();
        v24 = v37;
LABEL_32:

LABEL_33:
        v26 = [v17 copy];
        [v24 addObject:v26];

        v12 = v39;
        [v39 setObject:v17 forKeyedSubscript:v19];
        v13 = v20;
        goto LABEL_34;
      }

      if ([v21 sequenceNumber] != v20)
      {
        v23 = v13 + 1;
        if (v13 + 1 != v20)
        {
LABEL_44:
          v29 = v36;
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v33 = v20;
            v34 = v23;
            v32 = v19;
            MOLogWrite();
          }

          objc_autoreleasePoolPop(v18);
          v27 = v35;
          goto LABEL_52;
        }

        if (qword_1000A4878)
        {
          v24 = v36;
          if (*(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_33;
          }
        }

        v25 = [v17 counterpartIdentifiers];
        v33 = v25;
        v34 = v20;
        v32 = v19;
        MOLogWrite();
        v24 = v36;
        goto LABEL_32;
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v32 = v19;
        v33 = v20;
        MOLogWrite();
      }

LABEL_34:

      objc_autoreleasePoolPop(v18);
    }

    v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v27 = v35;
  if (v13 == *(v35 + 56))
  {
    v28 = [v12 copy];
    [*(v35 + 32) setAppList:v28];

    [*(v35 + 32) setLastSequenceNumber:v13];
    [*(v35 + 32) _onQueue_acknowledgeAppEvents];
    v29 = v36;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v32 = *(v35 + 56);
      v33 = v13;
      MOLogWrite();
    }

    v29 = v36;
LABEL_52:
    v31 = [v12 copy];
    [*(v27 + 32) setAppList:v31];

    [*(v27 + 32) setLastSequenceNumber:v13];
    [*(v27 + 32) _onQueue_acknowledgeAppEvents];
    [*(v27 + 32) _onQueue_fetchOutstandingAppEvents];
  }

  [*(v27 + 32) _onQueue_saveData];
  if ([v37 count])
  {
    [*(v27 + 32) _onQueue_appsAdded:v37];
  }

  if ([v29 count])
  {
    [*(v27 + 32) _onQueue_appsUpdated:v29];
  }
}

void sub_100041B78(uint64_t a1)
{
  if ([*(a1 + 32) performingResync])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v19 = *(a1 + 40);
      MOLogWrite();
    }
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) currentDBUUID];
    LOBYTE(v2) = [v2 isEqual:v3];

    if (v2)
    {
      v22 = objc_opt_new();
      v4 = [*(a1 + 32) appList];
      v5 = [v4 mutableCopy];

      v6 = [*(a1 + 32) lastSequenceNumber];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v21 = a1;
      v7 = *(a1 + 40);
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            v14 = [v5 objectForKeyedSubscript:v12];
            if (v14)
            {
              ++v6;
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
              {
                v18 = v12;
                v20 = v6;
                MOLogWrite();
              }

              [v5 removeObjectForKey:{v12, v18, v20}];
              [v22 addObject:v14];
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              v18 = v12;
              MOLogWrite();
            }

            objc_autoreleasePoolPop(v13);
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v9);
      }

      v15 = [v5 copy];
      [*(v21 + 32) setAppList:v15];

      if (v6 == *(v21 + 56))
      {
        [*(v21 + 32) setLastSequenceNumber:v6];
        [*(v21 + 32) _onQueue_acknowledgeAppEvents];
        v16 = v22;
      }

      else
      {
        v16 = v22;
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v18 = *(v21 + 56);
          v20 = v6;
          MOLogWrite();
        }

        [*(v21 + 32) _onQueue_fetchOutstandingAppEvents];
      }

      [*(v21 + 32) _onQueue_saveData];
      if ([v16 count])
      {
        [*(v21 + 32) _onQueue_appsRemoved:v16];
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v17 = *(a1 + 32);

      [v17 _onQueue_reSync];
    }
  }
}

void sub_100041FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041FE4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _onQueue_databaseIsSynced] ^ 1;
  v4 = [*(a1 + 32) appList];
  if ([v4 count])
  {
  }

  else
  {
    v2 = [*(a1 + 32) performingResync];

    if ((v2 & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      v3 = *(a1 + 32);

      [v3 _onQueue_reSync];
    }
  }
}

void sub_1000421E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000421FC(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_databaseIsSynced];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000423AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000423D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000423E8(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v11 = [*(a1 + 32) appList];
    v3 = [v11 allKeys];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v7 = v11;
  }

  else
  {
    v6 = sub_1000061DC("[ACXRemoteAppList bundleIDsTrackedWithError:]_block_invoke", 1278, @"ACXErrorDomain", 43, 0, 0, @"App database is out of sync.", v2, v10);
    v8 = *(*(a1 + 40) + 8);
    v7 = *(v8 + 40);
    *(v8 + 40) = v6;
  }

  return _objc_release_x1(v6, v7);
}

void sub_10004264C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100042670(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v3 = [*(a1 + 32) appList];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
    v5 = [v4 copy];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      return;
    }

    v11 = sub_100001B04("[ACXRemoteAppList applicationForBundleID:error:]_block_invoke", 1300, @"ACXErrorDomain", 19, @"App not found with bundle ID %@", v8, v9, v10, *(a1 + 40));
  }

  else
  {
    v11 = sub_1000061DC("[ACXRemoteAppList applicationForBundleID:error:]_block_invoke", 1295, @"ACXErrorDomain", 43, 0, 0, @"Could not fetch app for bundle ID %@: App database is out of sync.", v2, *(a1 + 40));
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  _objc_release_x1(v11, v13);
}

void sub_100042910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100042934(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v3 = [*(a1 + 32) appList];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = v4 != 0;

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      return;
    }

    v8 = sub_100001B04("[ACXRemoteAppList applicationIsInstalledWithBundleID:error:]_block_invoke", 1321, @"ACXErrorDomain", 19, @"App not found with bundle ID %@", v5, v6, v7, *(a1 + 40));
  }

  else
  {
    v8 = sub_1000061DC("[ACXRemoteAppList applicationIsInstalledWithBundleID:error:]_block_invoke", 1316, @"ACXErrorDomain", 43, 0, 0, @"Could not check if app is installed with bundle ID %@: App database is out of sync.", v2, *(a1 + 40));
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  _objc_release_x1(v8, v10);
}

void sub_100042BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100042C20(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v3 = [*(a1 + 32) appList];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100042D94;
    v15[3] = &unk_10008DD88;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v16 = v4;
    v17 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v15];

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = sub_100001B04("[ACXRemoteAppList applicationWithCounterpartBundleID:error:]_block_invoke", 1347, @"ACXErrorDomain", 19, @"App not found with counterpart bundle ID %@", v6, v7, v8, *(a1 + 40));
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v12 = sub_1000061DC("[ACXRemoteAppList applicationWithCounterpartBundleID:error:]_block_invoke", 1337, @"ACXErrorDomain", 43, 0, 0, @"Could not get application with counterpart bundle ID %@: App database is out of sync.", v2, *(a1 + 40));
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    _objc_release_x1(v12, v14);
  }
}

void sub_100042D94(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 counterpartIdentifiers];
  v7 = [v6 containsObject:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void sub_100042F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100042FB8(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v3 = [*(a1 + 32) appList];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004312C;
    v15[3] = &unk_10008DD88;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v16 = v4;
    v17 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v15];

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v9 = sub_100001B04("[ACXRemoteAppList applicationIsInstalledWithCounterpartBundleID:error:]_block_invoke", 1373, @"ACXErrorDomain", 19, @"App not found with counterpart bundle ID %@", v6, v7, v8, *(a1 + 40));
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v12 = sub_1000061DC("[ACXRemoteAppList applicationIsInstalledWithCounterpartBundleID:error:]_block_invoke", 1363, @"ACXErrorDomain", 43, 0, 0, @"Could not get application with counterpart bundle ID %@: App database is out of sync.", v2, *(a1 + 40));
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    _objc_release_x1(v12, v14);
  }
}

void sub_10004312C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = [v8 counterpartIdentifiers];
  v7 = [v6 containsObject:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 isEligibleForWatchAppInstall];
    *a4 = 1;
  }
}

void sub_100043360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100043384(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_databaseIsSynced])
  {
    v3 = [*(a1 + 32) appList];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000434F8;
    v15[3] = &unk_10008DD88;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v16 = v4;
    v17 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v15];

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = sub_100001B04("[ACXRemoteAppList appBundleIDForCounterpartBundleID:error:]_block_invoke", 1399, @"ACXErrorDomain", 19, @"App not found with counterpart bundle ID %@", v6, v7, v8, *(a1 + 40));
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v12 = sub_1000061DC("[ACXRemoteAppList appBundleIDForCounterpartBundleID:error:]_block_invoke", 1389, @"ACXErrorDomain", 43, 0, 0, @"Could not get application with counterpart bundle ID %@: App database is out of sync.", v2, *(a1 + 40));
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    _objc_release_x1(v12, v14);
  }
}

void sub_1000434F8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 counterpartIdentifiers];
  v7 = [v6 containsObject:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 bundleIdentifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void sub_1000436C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_1000436E8(uint64_t a1)
{
  v2 = [*(a1 + 32) currentDBUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) lastSequenceNumber];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100044664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0;
  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v11];

  v8 = v11;
  if (v7)
  {
    v9 = [[ACXGizmoAppState alloc] initWithCoder:v7];
    if (v9)
    {
      v10 = [*(a1 + 32) appStates];
      [v10 setObject:v9 forKeyedSubscript:v5];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

void sub_1000447AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 unsignedIntegerValue] == 6)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_100044810(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [[ACXGizmoAppState alloc] initWithWatchBundleID:v6 companionBundleID:0];
  v7 = [v5 unsignedIntegerValue];

  [(ACXGizmoAppState *)v9 setInstallStatus:v7];
  v8 = [*(a1 + 32) appStates];
  [v8 setObject:v9 forKeyedSubscript:v6];
}

void sub_100044B4C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeWithCoder:v6];
  v7 = [v6 encodedData];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

void sub_100044C84(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v6 encodeWithCoder:v3];
  v4 = *(a1 + 32);
  v5 = [v3 encodedData];
  [v4 addObject:v5];
}

void sub_100044F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045000(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 40);
  v2 = [*(a1 + 32) npsDomain];
  [v2 setBool:*(a1 + 40) forKey:@"NeedsReunionSync"];

  v3 = [*(a1 + 32) npsDomain];
  v7 = [v3 synchronize];

  v5 = v7;
  if (v7)
  {
    v4 = qword_1000A4878;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v4 = MOLogWrite();
      v5 = v7;
    }
  }

  return _objc_release_x1(v4, v5);
}

void sub_1000451B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000451D0(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v6;
  if (v6)
  {
    v4 = [v6 installStatus];
    v3 = v6;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;

  return _objc_release_x1(v4, v3);
}

void sub_100045380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045398(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000453B0(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  v7 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v7;
  if (v7)
  {
    v4 = [v7 uniqueInstallID];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_100045564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004557C(uint64_t a1)
{
  v6 = [*(a1 + 32) appStates];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10004567C(uint64_t a1)
{
  v1 = [*(a1 + 32) appStates];
  [v1 enumerateKeysAndObjectsUsingBlock:&stru_10008DE90];
}

void sub_1000457B4(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    if ([(ACXGizmoAppState *)v3 installStatus]== *(a1 + 56))
    {
      goto LABEL_14;
    }

    [(ACXGizmoAppState *)v3 setInstallStatus:?];
    if (*(a1 + 48))
    {
      [(ACXGizmoAppState *)v3 setCompanionAppBundleID:?];
    }
  }

  else
  {
    v3 = [[ACXGizmoAppState alloc] initWithWatchBundleID:*(a1 + 40) companionBundleID:*(a1 + 48)];
    [(ACXGizmoAppState *)v3 setInstallStatus:*(a1 + 56)];
    v4 = [*(a1 + 32) appStates];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    MOLogWrite();
  }

  [*(a1 + 32) _onQueue_saveState];
  if ([*(a1 + 32) gizmoIsActivePairedDevice])
  {
    v5 = [*(a1 + 32) exportedAppStateForDeviceState:*(a1 + 56)];
    v11 = *(a1 + 40);
    v6 = [NSNumber numberWithInteger:v5];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [ACXDeviceConnectionClient messageAllObserversWithInstallStateUpdate:v7];

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v9 = *(a1 + 40);
      MOLogWrite();
    }

    notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  }

LABEL_14:
}

void sub_100045B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045B8C(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) appStates];
  v7 = [v6 objectForKeyedSubscript:v27];

  if (v7)
  {
    v8 = [v7 installStatus];
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (*(a1 + 48))
  {
    v10 = [v7 installStatus];
    v11 = [v7 companionAppBundleID];
    v12 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:v10 companionBundleID:v11];

    v13 = [v7 watchKitAppExecutableHash];
    [v12 setWatchAppExecutableHash:v13];

    v14 = *(a1 + 48);
    v15 = [v5 companionBundleID];
    v9 = (*(v14 + 16))(v14, v27, v15, v12, v5);
  }

  v16 = [v9 installStatus];
  if (v8 == v16)
  {
    v17 = [v9 watchAppExecutableHash];
    v18 = [v7 watchKitAppExecutableHash];
    if (v7 && sub_10000829C(v17, v18))
    {
      [v7 setWatchKitAppExecutableHash:v17];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    goto LABEL_25;
  }

  v19 = v16;
  if (v16)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    if (v7)
    {
      [v7 setInstallStatus:v19];
      v20 = [v9 watchAppExecutableHash];
      [v7 setWatchKitAppExecutableHash:v20];

      v21 = [v9 companionBundleID];
      if (v21)
      {
        [v7 setCompanionAppBundleID:v21];
      }
    }

    else
    {
      v22 = [ACXGizmoAppState alloc];
      v23 = [v9 companionBundleID];
      v21 = [(ACXGizmoAppState *)v22 initWithWatchBundleID:v27 companionBundleID:v23];

      [(ACXGizmoAppState *)v21 setInstallStatus:v19];
      v24 = [v9 watchAppExecutableHash];
      [(ACXGizmoAppState *)v21 setWatchKitAppExecutableHash:v24];

      v25 = [*(a1 + 32) appStates];
      [v25 setObject:v21 forKeyedSubscript:v27];
    }
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v26 = v27;
      MOLogWrite();
    }

    v21 = [*(a1 + 32) appStates];
    [(ACXGizmoAppState *)v21 removeObjectForKey:v27];
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (!sub_100011DE4(v19))
  {
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) exportedAppStateForDeviceState:v19]);
    [*(a1 + 40) setObject:v17 forKeyedSubscript:v27];
LABEL_25:
  }
}

void sub_100046048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100046060(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_setInstallStatusForApps:*(a1 + 40) sendNotification:*(a1 + 64) withUpdatePredicate:*(a1 + 48)];
  if (result)
  {
    result = [*(a1 + 32) _onQueue_saveState];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000461BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000461D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3 == 1)
  {
    *(v2 + 8) = 0;
  }

  v4 = objc_opt_new();
  v5 = [*(a1 + 32) appStates];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100046320;
  v14 = &unk_10008DF08;
  v16 = *(a1 + 40);
  v6 = v4;
  v15 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];

  v10 = (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v8, v9);
  [v6 addEntriesFromDictionary:{v10, v11, v12, v13, v14}];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _onQueue_setInstallStatusForApps:v6 sendNotification:1 withUpdatePredicate:0];
  if ((v3 & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) _onQueue_saveState];
  }
}

void sub_100046320(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 installStatus];
  v7 = *(a1 + 40);
  v8 = [v5 companionAppBundleID];
  v9 = (*(v7 + 16))(v7, v12, v8, v6);

  if (v6 != v9)
  {
    v10 = [v5 companionAppBundleID];
    v11 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:v9 companionBundleID:v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }
}

void sub_10004649C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) appStates];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100046578;
  v5[3] = &unk_10008DE00;
  v4 = v2;
  v6 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  if ([*(a1 + 32) _onQueue_setInstallStatusForApps:v4 sendNotification:1 withUpdatePredicate:0])
  {
    [*(a1 + 32) _onQueue_saveState];
  }
}

void sub_100046578(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 installStatus] == 1)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v8 = v9;
      MOLogWrite();
    }

    v6 = [v5 companionAppBundleID];
    v7 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
  }
}

void sub_1000466EC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) appStates];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000467C8;
  v5[3] = &unk_10008DE00;
  v4 = v2;
  v6 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  if ([*(a1 + 32) _onQueue_setInstallStatusForApps:v4 sendNotification:0 withUpdatePredicate:0])
  {
    [*(a1 + 32) _onQueue_saveState];
  }
}

void sub_1000467C8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 installStatus] == 2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v8 = v9;
      MOLogWrite();
    }

    v6 = [v5 companionAppBundleID];
    v7 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
  }
}

id sub_100046970(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  [v2 removeObjectsForKeys:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onQueue_saveState];
}

void sub_100046A9C(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100046B3C;
  v3[3] = &unk_10008DE00;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100046B3C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (sub_100011DE4([v5 installStatus]))
  {
    v6 = [v5 copy];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_100046F44(uint64_t a1)
{
  v2 = [*(a1 + 32) cleanUpPendingUpdateStateTimer];

  if (v2)
  {
    if ([*(a1 + 32) _onQueue_cleanUpExpiredPendingUpdateStates])
    {
      [*(a1 + 32) _onQueue_saveState];
    }

    v3 = [*(a1 + 32) pendingAppUpdateStates];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = *(a1 + 32);

      [v5 _onQueue_cancelPendingUpdateStateTimer];
    }
  }
}

void sub_100047150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100047168(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_updatePendingForCompanionApp:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1000478C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000478DC(uint64_t a1)
{
  v6 = [*(a1 + 32) appStates];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 watchKitAppExecutableHash];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100047A30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) appStates];
  v3 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  [v3 setWatchKitAppExecutableHash:v2];
}

void sub_100047BA0(uint64_t a1)
{
  v2 = qword_1000A4878;
  if ((!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5) && (![*(a1 + 32) alwaysInstallApps] ? (v3 = "No") : (v3 = "Yes"), v5 = v3, MOLogWrite(), (v2 = qword_1000A4878) == 0) || *(v2 + 44) >= 5)
  {
    if (*(*(a1 + 32) + 8))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    v5 = v4;
    MOLogWrite();
  }

  v6 = [*(a1 + 32) appStates];
  [v6 enumerateKeysAndObjectsUsingBlock:&stru_10008DF50];
}

void sub_100047CA8(id a1, NSString *a2, ACXGizmoAppState *a3, BOOL *a4)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXGizmoAppState *)v5 installStatus];
    MOLogWrite();
  }
}

void sub_100047E20(uint64_t a1)
{
  v2 = [*(a1 + 32) appStates];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100047EC0;
  v3[3] = &unk_10008DE00;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100047EC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 installStatus] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_100048FE0(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = [*(a1 + 32) gizmoIsActivePairedDevice];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100049240;
  v15[3] = &unk_10008DF78;
  v15[4] = v3;
  v15[5] = &v16;
  v5 = [v3 _onQueue_setInstallStatusForApps:v4 sendNotification:0 withUpdatePredicate:v15];
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004938C;
  v14[3] = &unk_10008DFA0;
  v14[4] = v6;
  v8 = [v6 _onQueue_setInstallStatusForApps:v7 sendNotification:0 withUpdatePredicate:v14];
  v9 = [*(a1 + 32) _onQueue_setInstallStatusForApps:*(a1 + 56) sendNotification:0 withUpdatePredicate:0];
  if (*(v17 + 24) == 1)
  {
    *(*(a1 + 32) + 8) = 1;
  }

  else if (((v9 | v8 | v5) & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 1;
  }

  [*(a1 + 32) _onQueue_saveState];
LABEL_7:
  if (v2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  }

  if (*(a1 + 64))
  {
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000494C4;
    v12[3] = &unk_10008D118;
    v13 = *(a1 + 64);
    sub_100005828(v11, v12);
  }

  _Block_object_dispose(&v16, 8);
}

void *sub_100049240(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [v10 installStatus];
  v12 = [v9 installStatus];
  v13 = v9;
  if (([*(a1 + 32) _onQueue_pendingInstallStateShouldBeIgnoredForApp:v8 existingState:v9 newState:v10] & 1) == 0)
  {
    if (v12 && v11 == 5)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_12;
    }

    v13 = v10;
    if (v12 == 5)
    {
      if (!qword_1000A4878 || (v13 = v9, *(qword_1000A4878 + 44) >= 5))
      {
        MOLogWrite();
LABEL_12:
        v13 = v9;
      }
    }
  }

  v14 = v13;

  return v13;
}

void *sub_10004938C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 installStatus];
  v14 = [v11 installStatus];
  v15 = v11;
  if (([*(a1 + 32) _onQueue_pendingInstallStateShouldBeIgnoredForApp:v9 existingState:v11 newState:v12] & 1) == 0)
  {
    v15 = v12;
    if (v13 == 1)
    {
      v15 = v12;
      if (v14 != 2)
      {
        if ([*(a1 + 32) _onQueue_updatePendingForCompanionApp:v10])
        {
          [*(a1 + 32) _onQueue_cancelUpdatePendingForCompanionApp:v10];
          v15 = v12;
        }

        else if (!qword_1000A4878 || (v15 = v11, *(qword_1000A4878 + 44) >= 5))
        {
          MOLogWrite();
          v15 = v11;
        }
      }
    }
  }

  v16 = v15;

  return v15;
}

void sub_100049B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049CE0;
  v8[3] = &unk_10008DFA0;
  v8[4] = v2;
  if ([v2 _onQueue_setInstallStatusForApps:v3 sendNotification:0 withUpdatePredicate:v8])
  {
    [*(a1 + 32) _onQueue_saveState];
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100049DF4;
  v6[3] = &unk_10008D118;
  v7 = *(a1 + 48);
  sub_100005828(v5, v6);
}

void *sub_100049CE0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [v9 installStatus];
  v12 = [v10 installStatus];
  v13 = [*(a1 + 32) _onQueue_pendingInstallStateShouldBeIgnoredForApp:v8 existingState:v9 newState:v10];
  v14 = v9;
  if ((v13 & 1) == 0)
  {
    v14 = v10;
    if (v12 == 5)
    {
      v14 = v10;
      if (v11 <= 4)
      {
        v14 = v10;
        if (((1 << v11) & 0x16) != 0)
        {
          if (!qword_1000A4878 || (v14 = v9, *(qword_1000A4878 + 44) >= 5))
          {
            MOLogWrite();
            v14 = v9;
          }
        }
      }
    }
  }

  v15 = v14;

  return v14;
}

void sub_10004A16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004A190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v19 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v19;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    objc_opt_class();
    v8 = v6;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:@"s"];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        v17 = v19;
        v18 = v12;
        MOLogWrite();
      }

      v13 = [v12 integerValue];
      if (v13 - 1 > 1)
      {
        if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 4)
        {
LABEL_33:
          *(*(*(a1 + 40) + 8) + 24) = 1;

          goto LABEL_34;
        }

        if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
        {
          v14 = 5;
          goto LABEL_32;
        }

        v14 = 5;
      }

      else
      {
        if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
        {
          v14 = 2;
          goto LABEL_32;
        }

        v14 = 2;
      }

      MOLogWrite();
LABEL_32:
      v15 = [[ACXGizmoAppState alloc] initWithWatchBundleID:v19 companionBundleID:0];
      [(ACXGizmoAppState *)v15 setInstallStatus:v14];
      v16 = [*(a1 + 32) appStates];
      [v16 setObject:v15 forKeyedSubscript:v19];

      goto LABEL_33;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
LABEL_16:
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    goto LABEL_16;
  }

LABEL_34:
}

void sub_10004AEE0(void *a1, void *a2)
{
  v3 = a1;
  v23 = a2;
  v4 = [v3 message];
  v5 = objc_opt_new();
  v28 = 0;
  v6 = [v4 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v7 = v6;
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  if (v8 && (objc_opt_class(), (sub_100005D2C(v8) & 1) != 0))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v21 = [v8 count];
      MOLogWrite();
    }

    v9 = +[ACXLaunchServicesWatcher sharedWatcher];
    v26 = 0;
    v27 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004B2E0;
    v24[3] = &unk_10008E018;
    v22 = v5;
    v10 = v5;
    v25 = v10;
    v11 = [v9 enumerateApplicationsForBundleIDs:v8 currentDBUUID:&v27 currentLastSequenceNumber:&v28 error:&v26 enumerator:v24];
    v12 = v27;
    v13 = v26;

    v14 = v11 ^ 1;
    if (v13)
    {
      v15 = [v13 domain];
      v16 = [v15 isEqualToString:@"ACXErrorDomain"];

      if (v16)
      {
        v14 = [v13 code];
      }
    }

    v5 = v22;
    if (!v14)
    {
      v29[0] = @"T";
      v29[1] = @"IL";
      v30[0] = &off_1000978D8;
      v30[1] = v10;
      v29[2] = @"DBU";
      v17 = [v12 UUIDString];
      v30[2] = v17;
      v29[3] = @"DBS";
      v18 = [NSNumber numberWithUnsignedInteger:v28];
      v30[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];

      goto LABEL_20;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
    v13 = 0;
    v14 = 20;
  }

  v31[0] = @"T";
  v31[1] = @"E";
  v32[0] = &off_1000978D8;
  v20 = [NSNumber numberWithInteger:v14];
  v32[1] = v20;
  v19 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v21 = v19;
    MOLogWrite();
  }

LABEL_20:
  [v23 sendResponse:v19 toMessage:v3 withPriority:200 timeout:@"app info reply" logDescription:{120.0, v21}];
}

void sub_10004B2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v6 = [v3 bundleIdentifier];
    MOLogWrite();

    v3 = v7;
  }

  v4 = *(a1 + 32);
  v5 = [v3 serializeAsRemoteApplication];
  [v4 addObject:v5];
}

void sub_10004B3A0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v18 = 0;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v6 = +[ACXLaunchServicesWatcher sharedWatcher];
  v16 = v5;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10004B5C0;
  v15 = &unk_10008E040;
  v7 = v5;
  [v6 enumerateApplicationEventsReturningDBUUID:&v17 startingSequenceNumber:&v18 withBlock:&v12];
  v8 = v17;

  v19[0] = @"T";
  v19[1] = @"AE";
  v20[0] = &off_1000978F0;
  v20[1] = v7;
  v19[2] = @"DBU";
  v9 = [v8 UUIDString];
  v20[2] = v9;
  v19[3] = @"DBS";
  v10 = [NSNumber numberWithUnsignedInteger:v18];
  v20[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  [v3 sendResponse:v11 toMessage:v4 withPriority:200 timeout:@"app event reply" logDescription:120.0];
}

void sub_10004B5C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

void sub_10004B618(void *a1)
{
  v9 = [a1 message];
  v1 = [v9 objectForKeyedSubscript:@"DBU"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v9 objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v4 && v7)
  {
    v8 = +[ACXLaunchServicesWatcher sharedWatcher];
    [v8 clearApplicationEventsForDBUUID:v4 endingSequenceNumber:objc_msgSend(v7 error:{"unsignedIntegerValue"), 0}];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

void sub_10004B7B4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v5 = +[ACXLaunchServicesWatcher sharedWatcher];
  v11 = 0;
  v6 = [v5 allInstalledBundleIDsInDatabaseWithUUID:&v11 lastSequenceNumber:&v12];
  v7 = v11;

  v13[0] = @"T";
  v13[1] = @"BL";
  v14[0] = &off_100097908;
  v14[1] = v6;
  v13[2] = @"DBU";
  v8 = [v7 UUIDString];
  v14[2] = v8;
  v13[3] = @"DBS";
  v9 = [NSNumber numberWithUnsignedInteger:v12];
  v14[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  [v4 sendResponse:v10 toMessage:v3 withPriority:200 timeout:@"bundle ID list reply" logDescription:120.0];
}

void sub_10004B96C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 message];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v5 = sub_10004BA18(v4, &v9, &v8, &v10);
  v6 = v9;
  v7 = v8;
  if (v5)
  {
    [v3 appsAdded:v6 currentRemoteDBUUID:v7 lastSequenceNumber:v10];
  }
}

uint64_t sub_10004BA18(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = [v7 objectForKeyedSubscript:@"IL"];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 objectForKeyedSubscript:@"DBU"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_new();
  if (v10)
  {
    v18 = 1;
  }

  else
  {
    v18 = a2 == 0;
  }

  if (!v18 || !v13 || !v16)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (a2)
  {
    v29 = v16;
    v30 = a2;
    v31 = a4;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [[ACXRemoteApplication alloc] initWithSerializedDictionary:*(*(&v32 + 1) + 8 * i)];
          if (v24)
          {
            [v17 addObject:v24];
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    *v30 = [v17 copy];
    a4 = v31;
    v16 = v29;
  }

  v25 = [[NSUUID alloc] initWithUUIDString:v13];
  if (!v25)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_39;
    }

LABEL_38:
    MOLogWrite();
LABEL_39:
    v27 = 0;
    goto LABEL_40;
  }

  v26 = v25;
  *a3 = v25;
  *a4 = [v16 unsignedIntegerValue];

  v27 = 1;
LABEL_40:

  return v27;
}

void sub_10004BD9C(void *a1, void *a2)
{
  v9 = a2;
  v3 = [a1 message];
  v4 = [v3 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && (objc_opt_class(), (sub_100005D2C(v6) & 1) != 0))
  {
    v10 = 0;
    v11 = 0;
    v7 = sub_10004BA18(v3, 0, &v10, &v11);
    v8 = v10;
    if (v7)
    {
      [v9 appsRemoved:v6 currentRemoteDBUUID:v8 lastSequenceNumber:v11];
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

void sub_10004BEF0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  dispatch_assert_queue_V2(v12);
  v14 = [v13 allObjects];

  sub_10004BFB8(v14, v12, v11, v10, v9, 0);
}

void sub_10004BFB8(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v29[0] = @"T";
  v29[1] = @"BL";
  v30[0] = &off_100097938;
  v30[1] = v11;
  v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004C660;
  v22[3] = &unk_10008E090;
  v23 = v14;
  v24 = v12;
  v25 = v11;
  v26 = v13;
  v27 = v15;
  v28 = a6;
  v17 = v15;
  v18 = v13;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  [v18 sendMessage:v16 toDevice:v21 withPriority:200 timeout:@"fetch app info" logDescription:v22 handleReply:120.0];
}

void sub_10004C17C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  dispatch_assert_queue_V2(v10);
  sub_10004C210(v10, v9, v8, v7, 0);
}

void sub_10004C210(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  dispatch_assert_queue_V2(v9);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004CAC8;
  v17[3] = &unk_10008E0E0;
  v21 = v12;
  v22 = a5;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v13 = v12;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  [v14 sendMessage:&off_100097B70 toDevice:v16 withPriority:200 timeout:@"fetch bundle ID list" logDescription:v17 handleReply:120.0];
}

void sub_10004C348(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  dispatch_assert_queue_V2(v10);
  sub_10004C3DC(v10, v9, v8, v7, 0);
}

void sub_10004C3DC(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  dispatch_assert_queue_V2(v9);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004CFBC;
  v17[3] = &unk_10008E0E0;
  v21 = v12;
  v22 = a5;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v13 = v12;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  [v14 sendMessage:&off_100097B98 toDevice:v16 withPriority:200 timeout:@"fetch app events" logDescription:v17 handleReply:120.0];
}

void sub_10004C514(void *a1, uint64_t a2, NSObject *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a1;
  dispatch_assert_queue_V2(a3);
  v16[0] = &off_100097920;
  v15[0] = @"T";
  v15[1] = @"DBU";
  v12 = [v11 UUIDString];

  v16[1] = v12;
  v15[2] = @"DBS";
  v13 = [NSNumber numberWithUnsignedInteger:a2];
  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  [v10 sendMessage:v14 toDevice:v9 withPriority:200 timeout:@"ack app events" logDescription:0 handleReply:120.0];
}

void sub_10004C660(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v20 = [v5 message];
    v21 = *(a1 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004C934;
    v23[3] = &unk_10008CC38;
    v24 = v20;
    v25 = *(a1 + 64);
    v18 = v20;
    sub_100005828(v21, v23);

    v19 = v24;
LABEL_11:

    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v22 = [*(a1 + 32) idsDeviceIdentifier];
    MOLogWrite();
  }

  if (*(a1 + 72) <= 9uLL)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v7 = os_transaction_create();
    v8 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C918;
    block[3] = &unk_10008E068;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v27 = v15;
    v28 = v14;
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v30 = v7;
    v31 = v17;
    v29 = v16;
    v18 = v7;
    dispatch_after(v8, v9, block);

    v19 = v27;
    goto LABEL_11;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_15:
}

void sub_10004C934(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = [v2 objectForKeyedSubscript:@"E"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      [v6 unsignedLongValue];
      MOLogWrite();
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v7 = sub_10004BA18(v2, &v13, &v12, &v14);
    v8 = v13;
    v10 = v12;
    if (v7)
    {
      [v3 updateAppInfoWithRecords:v8 currentRemoteDBUUID:v10];
    }

    else
    {
      v11 = sub_1000061DC("_ProcessBundleIDInfoMessage", 242, @"ACXErrorDomain", 1, 0, 0, @"Failed to extract app list from message %@, attempting to retry Remote App List sync...", v9, v2);
      [v3 reportTotalSyncFailureForError:v11];
    }
  }
}

void sub_10004CAC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v18 = [v5 message];
    v19 = *(a1 + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004CD78;
    v21[3] = &unk_10008CC38;
    v22 = v18;
    v23 = *(a1 + 56);
    v16 = v18;
    sub_100005828(v19, v21);

    v17 = v22;
LABEL_11:

    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v20 = [*(a1 + 32) idsDeviceIdentifier];
    MOLogWrite();
  }

  if (*(a1 + 64) <= 9uLL)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v7 = os_transaction_create();
    v8 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CD60;
    block[3] = &unk_10008E0B8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v25 = v14;
    v26 = v13;
    v15 = *(a1 + 64);
    v27 = v7;
    v28 = v15;
    v16 = v7;
    dispatch_after(v8, v9, block);

    v17 = v25;
    goto LABEL_11;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_15:
}

void sub_10004CD78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v15 = *(a1 + 32);
  v2 = v1;
  v3 = [v15 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v15 objectForKeyedSubscript:@"DBU"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [[NSUUID alloc] initWithUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v15 objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v5 && v9 && v12 && (objc_opt_class(), (sub_100005D2C(v5) & 1) != 0))
  {
    v14 = [NSSet setWithArray:v5];
    [v2 updateBundleIDList:v14 currentRemoteDBUUID:v9 lastSequenceNumber:{objc_msgSend(v12, "unsignedIntegerValue")}];
  }

  else
  {
    v14 = sub_1000061DC("_ProcessBundleIDListMessage", 298, @"ACXErrorDomain", 1, 0, 0, @"Not all required information was present in bundle ID list response: %@", v13, v15);
    [v2 reportTotalSyncFailureForError:v14];
  }
}

void sub_10004CFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    [v5 message];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004D27C;
    v21 = v20[3] = &unk_10008CA48;
    v18 = *(a1 + 40);
    v22 = v18;
    v23 = *(a1 + 56);
    v16 = v21;
    sub_100005828(v18, v20);

    v17 = v21;
LABEL_11:

    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v19 = [*(a1 + 32) idsDeviceIdentifier];
    MOLogWrite();
  }

  if (*(a1 + 64) <= 9uLL)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v7 = os_transaction_create();
    v8 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D264;
    block[3] = &unk_10008E0B8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v25 = v14;
    v26 = v13;
    v15 = *(a1 + 64);
    v27 = v7;
    v28 = v15;
    v16 = v7;
    dispatch_after(v8, v9, block);

    v17 = v25;
    goto LABEL_11;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_15:
}

void sub_10004D27C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = v2;
  dispatch_assert_queue_V2(v1);
  v5 = [v3 objectForKeyedSubscript:@"AE"];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectForKeyedSubscript:@"DBU"];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [[NSUUID alloc] initWithUUIDString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v7 && v11 && v14)
  {
    v28 = v11;
    v30 = v4;
    v31 = v3;
    v16 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v7;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          v23 = v22;
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = [[ACXAppEventRecord alloc] initWithDictionaryRepresentation:v23];
            if (v25)
            {
              [v16 addObject:v25];
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              MOLogWrite();
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    v26 = [v16 copy];
    v4 = v30;
    v11 = v28;
    [v30 reportAppEvents:v26 forDBUUID:v28 startingSequenceNumber:{objc_msgSend(v14, "unsignedIntegerValue")}];

    v3 = v31;
    v7 = v29;
  }

  else
  {
    v27 = sub_1000061DC("_ProcessAppEventMessage", 354, @"ACXErrorDomain", 1, 0, 0, @"Not all required information was present in event message response: %@", v15, v3);
    [v4 reportTotalSyncFailureForError:v27];
  }
}

uint64_t sub_10004E510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A4848;
  qword_1000A4848 = v2;

  return _objc_release_x1(v2, v3);
}

id sub_10004E7C4(id *a1)
{
  v2 = [a1[4] syncSessionType];
  if (v2)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          [a1[4] syncSessionType];
          [a1[4] syncSessionType];
          v9 = NSStringfromPSYSyncSessionType();
          MOLogWrite();
        }

        goto LABEL_28;
      }

      [a1[5] regenerateAllUniqueInstallIDs];
    }

    [a1[5] setNeedsReunionSync:1];
LABEL_28:
    v7 = a1[7];

    return [v7 _onQueue_triggerSyncSessionCompleteAndRemoveObserver];
  }

  v3 = [a1[6] remoteAppList];
  if (v3)
  {
    [a1[7] setRemoteAppList:v3];
    v4 = a1[7];
    v5 = [v4 queue];
    [v3 addObserver:v4 queue:v5];

    v6 = [v3 startDatabaseSyncIfNeeded] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ([a1[5] hasCompletedInitialPairedSync])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [a1[5] dumpCurrentStateToLog];
    [a1[5] markInstalledAsPending];
    [a1[5] regenerateAllUniqueInstallIDs];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [a1[5] dumpCurrentStateToLog];
    if ([a1[5] initiallyInstallAllApps])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      [a1[6] installAllApplications];
    }

    else
    {
      [a1[6] markAllApplicationsAsRemoved];
    }

    [a1[5] initialPairedSyncComplete];
  }

  if (v6)
  {
    goto LABEL_28;
  }

  result = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {

    return MOLogWrite();
  }

  return result;
}

void sub_10004EDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004EDE0(uint64_t a1)
{
  v2 = [*(a1 + 32) list];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[NSDate date];
    v6 = [*(a1 + 32) list];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];

    v7 = [*(a1 + 32) list];
    v8 = [v7 count];

    if (v8 == 1)
    {
      [*(a1 + 32) sweepTimer];
      if (objc_claimAutoreleasedReturnValue())
      {
        sub_10005A1CC();
      }

      v9 = [*(a1 + 32) queue];
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

      [*(a1 + 32) timeoutInSeconds];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      [*(a1 + 32) timeoutInSeconds];
      dispatch_source_set_timer(v10, v12, (v13 * 1000000000.0), 0x3B9ACA00uLL);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10004EFC4;
      handler[3] = &unk_10008CD40;
      handler[4] = *(a1 + 32);
      dispatch_source_set_event_handler(v10, handler);
      [*(a1 + 32) setSweepTimer:v10];
      v14 = [*(a1 + 32) sweepTimer];
      dispatch_resume(v14);
    }

    v4 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_10004EFC4(uint64_t a1)
{
  v2 = [*(a1 + 32) sweepTimer];
  if (!v2)
  {
    sub_10005A1F8();
  }

  v3 = objc_opt_new();
  v4 = +[NSDate date];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [*(a1 + 32) list];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [*(a1 + 32) list];
        v12 = [v11 objectForKeyedSubscript:v10];

        [v4 timeIntervalSinceDate:v12];
        v14 = v13;
        [*(a1 + 32) timeoutInSeconds];
        if (v14 >= v15)
        {
          [v3 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = [*(a1 + 32) list];
  [v16 removeObjectsForKeys:v3];

  v17 = [*(a1 + 32) timeoutHandler];

  if (v17)
  {
    v18 = [*(a1 + 32) timeoutHandler];
    (v18)[2](v18, v3);
  }

  v19 = [*(a1 + 32) list];
  v20 = [v19 count];

  if (!v20)
  {
    v21 = [*(a1 + 32) sweepTimer];
    dispatch_source_cancel(v21);

    [*(a1 + 32) setSweepTimer:0];
  }
}

void sub_10004F2B4(uint64_t a1)
{
  v2 = [*(a1 + 32) list];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v5 = +[NSDate date];
    v4 = [*(a1 + 32) list];
    [v4 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_10004F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004F46C(uint64_t a1)
{
  v2 = [*(a1 + 32) list];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) list];
    [v4 removeObjectForKey:*(a1 + 40)];

    v5 = [*(a1 + 32) list];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [*(a1 + 32) sweepTimer];
      if (!v7)
      {
        sub_10005A224();
      }

      v8 = [*(a1 + 32) sweepTimer];
      dispatch_source_cancel(v8);

      [*(a1 + 32) setSweepTimer:0];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10004F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004F648(uint64_t a1)
{
  v3 = [*(a1 + 32) list];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

id sub_10004F750(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 domain];
  if ([v7 isEqualToString:@"ACXErrorDomain"])
  {
    v8 = [v5 code];

    if (v8 == 13)
    {
      v9 = 3;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v10 = [v5 domain];
  if ([v10 isEqualToString:@"ACXErrorDomain"])
  {
    v11 = [v5 code];

    if (v11 == 12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = [v5 domain];
  if ([v12 isEqualToString:IXUserPresentableErrorDomain])
  {
    v13 = [v5 code];

    if (v13 == 11)
    {
LABEL_11:
      v9 = 2;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v14 = [v5 domain];
  if ([v14 isEqualToString:@"ACXErrorDomain"])
  {
    v15 = [v5 code];

    if (v15 == 29)
    {
      v9 = 4;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v16 = [v5 domain];
  if ([v16 isEqualToString:@"ACXErrorDomain"])
  {
    v17 = [v5 code];

    if (v17 == 31)
    {
      v9 = 5;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v9 = 9;
LABEL_22:
  v18 = sub_10004F91C(v9, v5, v6, a3);

  return v18;
}

id sub_10004F91C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  switch(a1)
  {
    case 0:
    case 13:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_39;
    case 1:
      v58 = 0;
      v59 = 0;
      sub_100006E08(v8, &v59, &v58);
      v10 = v59;
      v13 = v58;
      goto LABEL_33;
    case 2:
      v56 = 0;
      v57 = 0;
      sub_10000721C(v8, &v57, &v56);
      v10 = v57;
      v13 = v56;
      goto LABEL_33;
    case 3:
      v55 = 0;
      v54 = 0;
      sub_10000739C(&v55, &v54);
      v10 = v55;
      v13 = v54;
      goto LABEL_33;
    case 4:
      v52 = 0;
      v53 = 0;
      sub_1000073F8(v8, &v53, &v52);
      v10 = v53;
      v13 = v52;
      goto LABEL_33;
    case 5:
      v50 = 0;
      v51 = 0;
      sub_100007578(v8, &v51, &v50);
      v10 = v51;
      v13 = v50;
      goto LABEL_33;
    case 6:
      v48 = 0;
      v49 = 0;
      sub_1000076F8(v8, &v49, &v48);
      v10 = v49;
      v13 = v48;
      goto LABEL_33;
    case 7:
      v46 = 0;
      v47 = 0;
      sub_100007878(v8, &v47, &v46);
      v10 = v47;
      v13 = v46;
      goto LABEL_33;
    case 8:
      if (a4 == 2)
      {
        v42 = 0;
        v43 = 0;
        sub_100007B84(v8, &v43, &v42);
        v10 = v43;
        v13 = v42;
      }

      else if (a4 == 1)
      {
        v44 = 0;
        v45 = 0;
        sub_1000079F8(v8, &v45, &v44);
        v10 = v45;
        v13 = v44;
      }

      else
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v32 = a4;
          v33 = 8;
          MOLogWrite();
        }

        v40 = 0;
        v41 = 0;
        sub_100007C6C(&v41, &v40);
        v10 = v41;
        v13 = v40;
      }

      goto LABEL_33;
    case 10:
      v38 = 0;
      v39 = 0;
      sub_100007CC0(v8, &v39, &v38);
      v10 = v39;
      v13 = v38;
      goto LABEL_33;
    case 11:
      v36 = 0;
      v37 = 0;
      sub_100007E40(v8, &v37, &v36);
      v10 = v37;
      v13 = v36;
      goto LABEL_33;
    case 12:
      v34 = 0;
      v35 = 0;
      sub_100007FC0(v8, &v35, &v34);
      v10 = v35;
      v13 = v34;
LABEL_33:
      v11 = v13;
      goto LABEL_34;
    default:
      v14 = [v7 domain];
      v15 = [v14 isEqualToString:IXUserPresentableErrorDomain];

      if (v15)
      {
        v16 = v7;
        v17 = [v16 userInfo];
        v10 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        v18 = [v16 userInfo];
        v11 = [v18 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
      }

      else
      {
        v19 = [v7 domain];
        v20 = [v19 isEqualToString:ASDUserPresentableErrorDomain];

        if (!v20)
        {
          v10 = 0;
          v16 = 0;
          v11 = 0;
          goto LABEL_43;
        }

        [v7 code];
        v62 = ASDOptionsKeyAppName;
        v63 = v9;
        v21 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v22 = ASDLocalizedTextForUserPresentableError();

        v10 = [v22 objectForKeyedSubscript:ASDLocalizedTitleKey];
        v11 = [v22 objectForKeyedSubscript:ASDLocalizedMessageKey];

        v16 = 0;
      }

      if (v10)
      {
        v23 = v11 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        goto LABEL_47;
      }

LABEL_43:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v32 = v7;
        MOLogWrite();
      }

      v27 = IXCreateUserPresentableError();

      v28 = [v27 userInfo];
      v29 = [v28 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      v30 = [v27 userInfo];
      v31 = [v30 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

      v11 = v31;
      v16 = v27;
      v10 = v29;
LABEL_47:

LABEL_34:
      v12 = 0;
      if (v10 && v11)
      {
        v60[0] = NSLocalizedFailureReasonErrorKey;
        v60[1] = NSLocalizedDescriptionKey;
        v61[0] = v10;
        v61[1] = v11;
        v24 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
        v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

        if (v7)
        {
          [v25 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
        }

        v12 = [NSError errorWithDomain:@"ACXUserPresentableErrorDomain" code:a1 userInfo:v25, v32, v33];
      }

LABEL_39:

      return v12;
  }
}

BOOL sub_10004FF78(void *a1)
{
  v1 = a1;
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForWatchSetting:MCFeatureAppInstallationAllowed pairedDevice:v1];

  return v3 == 2;
}

void sub_100050224(id a1)
{
  v1 = +[NSHashTable weakObjectsHashTable];
  v2 = qword_1000A4858;
  qword_1000A4858 = v1;

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.appconduitd.DeviceConnectionClient.delegates", v3);
  v5 = qword_1000A4860;
  qword_1000A4860 = v4;

  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.appconduitd.device-connection"];
  v6 = objc_opt_new();
  v7 = qword_1000A4868;
  qword_1000A4868 = v6;

  [v8 setDelegate:qword_1000A4868];
  [v8 resume];
}

void sub_100050398(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v10 = *(a1 + 32);
    MOLogWrite();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100050560;
          v11[3] = &unk_10008DBE0;
          v12 = v7;
          v9 = [v12 remoteObjectProxyWithErrorHandler:v11];
          [v9 updatedInstallStateForApplicationsWithInfo:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100050560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100050694(double *a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v12 = *(a1 + 6);
    v11 = *(a1 + 5);
    v10 = *(a1 + 4);
    MOLogWrite();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v15 + 1) + 8 * i) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100050874;
          v13[3] = &unk_10008DBE0;
          v14 = v7;
          v9 = [v14 remoteObjectProxyWithErrorHandler:v13];
          [v9 updateInstallProgressForApplication:*(a1 + 4) progress:*(a1 + 6) phase:a1[5]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100050874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_1000509B8(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v10 = [*(a1 + 32) count];
    v11 = *(a1 + 40);
    MOLogWrite();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100050B8C;
          v12[3] = &unk_10008DBE0;
          v13 = v7;
          v9 = [v13 remoteObjectProxyWithErrorHandler:v12];
          [v9 applicationsInstalled:*(a1 + 32) onDeviceWithPairingID:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100050B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100050CD0(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v10 = [*(a1 + 32) count];
    v11 = *(a1 + 40);
    MOLogWrite();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100050EA4;
          v12[3] = &unk_10008DBE0;
          v13 = v7;
          v9 = [v13 remoteObjectProxyWithErrorHandler:v12];
          [v9 applicationsUpdated:*(a1 + 32) onDeviceWithPairingID:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100050EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100050FE8(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v10 = [*(a1 + 32) count];
    v11 = *(a1 + 40);
    MOLogWrite();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_1000511BC;
          v12[3] = &unk_10008DBE0;
          v13 = v7;
          v9 = [v13 remoteObjectProxyWithErrorHandler:v12];
          [v9 applicationsUninstalled:*(a1 + 32) onDeviceWithPairingID:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1000511BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_1000512D8(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v10 = *(a1 + 32);
    MOLogWrite();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1000514A0;
          v11[3] = &unk_10008DBE0;
          v12 = v7;
          v9 = [v12 remoteObjectProxyWithErrorHandler:v11];
          [v9 applicationDatabaseResyncedForDeviceWithPairingID:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1000514A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_1000515E4(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v10 = [*(a1 + 32) count];
    v11 = *(a1 + 40);
    MOLogWrite();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1000A4858;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) xpcConnection];
        v8 = v7;
        if (v7)
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_1000517B8;
          v12[3] = &unk_10008DBE0;
          v13 = v7;
          v9 = [v13 remoteObjectProxyWithErrorHandler:v12];
          [v9 removabilityDidChangeForApplications:*(a1 + 32) onDeviceWithPairingID:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1000517B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100051E88(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v5 = *(a1 + 32);
    MOLogWrite();
  }

  [qword_1000A4858 addObject:{*(a1 + 32), v5}];
  v2 = [*(a1 + 32) clientName];
  v6 = [NSString stringWithFormat:@"com.apple.appconduitd.observerActive_%@", v2];

  v3 = v6;
  [v6 UTF8String];
  v4 = os_transaction_create();
  [*(a1 + 32) setObserverTransaction:v4];
}

void sub_100051F78(uint64_t a1)
{
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v2 = [*(a1 + 32) xpcConnection];
  v3 = v2;
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100052058;
    v5[3] = &unk_10008DBE0;
    v6 = v2;
    v4 = [v6 remoteObjectProxyWithErrorHandler:v5];
    [v4 observerRegistrationSuccessful];
  }
}

uint64_t sub_100052058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = MOLogWrite();
    v3 = v7;
  }

  return _objc_release_x1(v4, v3);
}

id sub_100052154(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  [qword_1000A4858 removeObject:{*(a1 + 32), v4}];
  v2 = *(a1 + 32);

  return [v2 setObserverTransaction:0];
}

void sub_1000542BC(id a1)
{
  v1 = objc_alloc_init(ATConnection);
  [v1 requestKeybagSyncToPairedDevice];
}

void sub_1000547E0(id a1)
{
  v1 = objc_alloc_init(ATConnection);
  [v1 requestKeybagSyncToPairedDevice];
}

void sub_1000590A8(uint64_t a1)
{
  v24[0] = kSZArchiverOptionCompressionOptions;
  v24[1] = kSZArchiverOptionCompressionMethod;
  v25[0] = kSZArchiverCompressionOptionTryRecompress;
  v25[1] = kSZArchiverCompressionMethodLZFSE;
  v24[2] = kSZArchiverOptionNoCache;
  v24[3] = kSZArchiverOptionNoSeekOutput;
  v25[2] = &__kCFBooleanTrue;
  v25[3] = &__kCFBooleanTrue;
  v24[4] = kSZArchiverOptionNoCentralDirectory;
  v25[4] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  v17 = 0u;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v22 = 0;
  v18 = sub_100059314;
  v3 = *(a1 + 32);
  *(&v20 + 1) = j__objc_msgSend_bytesOutput;
  *&v21 = v3;
  *(&v16 + 1) = sub_1000594EC;
  *&v17 = v3;
  *(&v15 + 1) = sub_100059600;
  *&v16 = v3;
  v4 = [v3 url];
  [v4 fileSystemRepresentation];
  StreamableZip = SZArchiverCreateStreamableZip();

  if ((StreamableZip & 1) == 0)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      v10 = sub_100001B04("[ACXStreamingZipSocketSender beginSendingWithCompletionBlock:]_block_invoke", 141, @"ACXErrorDomain", 5, @"SZArchiver returned failure but we don't know why. Reason is likely in syslog.", v7, v8, v9, v13[0]);
      [*(a1 + 32) setError:v10];
    }
  }

  v11 = [*(a1 + 32) clientQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000596B4;
  v13[3] = &unk_10008CCD8;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  sub_100005828(v11, v13);
}

uint64_t sub_100059314(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = a1;
  if ([v5 stopWriting])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v9 = sub_100001B04("_WriteOutput", 62, @"ACXErrorDomain", 6, @"Client cancelled the operation", v6, v7, v8, v14);
    [v5 setError:v9];

    v26[3] = -1;
  }

  else
  {
    v10 = [v5 clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059800;
    block[3] = &unk_10008E1D0;
    v19 = a2;
    v20 = a3;
    v16 = v5;
    v17 = &v21;
    v18 = &v25;
    dispatch_sync(v10, block);
  }

  v11 = *(v22 + 6);
  if (v11)
  {
    *__error() = v11;
  }

  v12 = v26[3];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

void sub_1000594C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000594EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 == 2)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v10 = a5;
    [v10 setCompletedBytes:{objc_msgSend(v10, "completedBytes") + a3}];
    v11 = [v10 completedBytes];
    v12 = [v10 totalBytes];
    v13 = [v10 progressBlock];
    if (v13)
    {
      v14 = v11 / v12;
      v15 = [v10 clientQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000598E4;
      v16[3] = &unk_10008E1F8;
      v17 = v13;
      v18 = v14;
      dispatch_sync(v15, v16);
    }
  }
}

void sub_100059600(void *a1, void *a2)
{
  v5 = a2;
  v3 = [a1 objectForKeyedSubscript:kSZArchiverPreflightTotalFileSize];
  v4 = v3;
  if (v3)
  {
    [v5 setTotalBytes:{objc_msgSend(v3, "longLongValue")}];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

void sub_1000596B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100059800(uint64_t a1)
{
  v2 = [*(a1 + 32) writerBlock];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v9 = 0;
  v5 = (v2)[2](v2, v3, v4, &v9);
  v6 = v9;

  if (v5)
  {
    [*(a1 + 32) setBytesOutput:{objc_msgSend(*(a1 + 32), "bytesOutput") + *(a1 + 64)}];
    v7 = *(a1 + 64);
  }

  else
  {
    [*(a1 + 32) setStopWriting:1];
    [*(a1 + 32) setError:v6];
    v8 = sub_100006118(v6);
    *(*(*(a1 + 40) + 8) + 24) = [v8 code];

    v7 = -1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
}