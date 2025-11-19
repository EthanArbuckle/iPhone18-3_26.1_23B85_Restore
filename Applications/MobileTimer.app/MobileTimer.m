uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"MTAAppController", @"MTAAppController");
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_100003188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000031A4(uint64_t a1)
{
  sub_1000031FC();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000733AC();
  }

  qword_1000D2900 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000031FC()
{
  v2[0] = 0;
  if (!qword_1000D2908)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000161CC;
    v2[4] = &unk_1000ADE00;
    v2[5] = v2;
    v3 = off_1000ADDE8;
    v4 = 0;
    qword_1000D2908 = _sl_dlopen();
  }

  v0 = qword_1000D2908;
  if (!qword_1000D2908)
  {
    sub_100073428(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

void sub_100003BDC(id a1)
{
  qword_1000D2A90 = objc_alloc_init(MTAStateStore);

  _objc_release_x1();
}

void sub_100003D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000041FC;
  v6[3] = &unk_1000ADAB0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100003F70(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v1;
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ no current event", buf, 0xCu);
    }

    v2 = +[MTAStateStoreEvent blankEvent];
  }

  v11 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v11];
  v6 = v11;
  v7 = MTLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000739E4(v1, v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v1;
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronized state store successfully", buf, 0xCu);
    }

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 setObject:v5 forKey:@"kMTAStateStoreLatestEvent"];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 synchronize];
  }
}

uint64_t sub_1000041FC(uint64_t a1)
{
  result = [*(a1 + 32) eventType];
  if (result <= 3)
  {
    switch(result)
    {
      case 1:
        v6 = *(a1 + 40);

        return [v6 restoreAddNewAlarm];
      case 2:
        v8 = *(a1 + 40);

        return [v8 restoreAlarmEditWithEvent:?];
      case 3:
        v4 = *(a1 + 40);

        return [v4 restoreWorldClockAdd];
    }
  }

  else
  {
    if (result <= 6)
    {
      if (result != 4)
      {
        if (result == 5)
        {
          v3 = *(a1 + 40);

          return [v3 restoreWorldClockEdit];
        }

        return result;
      }

      goto LABEL_24;
    }

    if (result == 7)
    {
      [*(a1 + 40) restoreAlarmTabEditMode];
LABEL_24:
      v7 = *(a1 + 40);

      return [v7 restoreWorldClockTabWithEvent:?];
    }

    if (result == 8)
    {
      v5 = *(a1 + 40);

      return [v5 restoreSleepEdit];
    }
  }

  return result;
}

uint64_t sub_100005038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005070()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000513C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005188(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10005F248(&qword_1000D2398);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100005244(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F248(&qword_1000D2398);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000052F4()
{
  sub_10005F2F4(&qword_1000D2360);
  sub_100061E64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100005360()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005398()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000053D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10005F248(&qword_1000D2670);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100005494(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F248(&qword_1000D2670);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100005544()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000557C()
{
  v1 = (type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_10005F248(&qword_1000D2670);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000056A8()
{
  v1 = (type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_10005F248(&qword_1000D2670);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000057C0()
{
  v1 = (type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_10005F248(&qword_1000D2670);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

void sub_1000071D0(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsUpdateConstraints];

  v3 = [*(a1 + 32) collectionViewController];
  [v3 scrollToPageContainingIndexPath:*(a1 + 40) animated:0];
}

void sub_100007378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_100009E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009E8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteRowAtIndexPath:*(a1 + 32)];
  v5[2](v5, 1);
}

void sub_10000CB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showSleepView];
}

void sub_10000E264(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000E280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showAddView];
}

void sub_10000E588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000E5A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:1 animated:0];
}

void sub_10000E74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E768(uint64_t a1)
{
  v1 = [*(a1 + 32) alarmViewController];
  [v1 setEditing:1];
}

void sub_10000E7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:1 animated:1];
}

id sub_10000EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return [a12 handleFailureInFunction:v12 file:a4 lineNumber:54 description:?];
}

uint64_t sub_10000EA60()
{

  return objc_opt_class();
}

int64_t sub_10000F0DC(id a1, MTATone *a2, MTATone *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(MTATone *)v4 isDefaultTone])
  {
    v6 = -1;
  }

  else if ([(MTATone *)v5 isDefaultTone])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MTATone *)v4 name];
    v8 = [(MTATone *)v5 name];
    v6 = [v7 localizedStandardCompare:v8];
  }

  return v6;
}

void sub_10000F1CC(id a1)
{
  qword_1000D28F0 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000F3BC(uint64_t a1, uint64_t a2)
{
  if (a2 == 5 || !a2)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F444;
    block[3] = &unk_1000AD9F0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1000100A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [NAFuture futureWithResult:v3];
  }

  else
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100073108(v5);
    }

    v6 = [v3 timerByUpdatingWithState:1];
    v7 = [*(a1 + 32) timerManager];
    v4 = [v7 updateTimer:v6];
  }

  return v4;
}

void sub_10001017C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found current timer: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) setTimer:v3];
  v5 = *(*(a1 + 32) + 8);
  [v3 duration];
  [v5 setCountDownDuration:?];
  [*(a1 + 32) reloadTimerUI];
  [*(a1 + 32) updateSelectedSoundUI];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

id sub_100010558(uint64_t a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000106C8;
  v10[3] = &unk_1000ADBF8;
  v10[4] = *(a1 + 32);
  v3 = [a2 na_firstObjectPassingTest:v10];
  v4 = v3;
  if (v3)
  {
    if ([v3 state])
    {
      v5 = [NAFuture futureWithResult:v4];
      goto LABEL_9;
    }

    v7 = MTLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100073108(v7);
    }

    v6 = [v4 timerByUpdatingWithState:1];
    v8 = [*(a1 + 32) timerManager];
    v5 = [v8 updateTimer:v6];
  }

  else
  {
    v6 = +[NSError na_genericError];
    v5 = [NAFuture futureWithError:v6];
  }

LABEL_9:

  return v5;
}

id sub_1000106C8(uint64_t a1, void *a2)
{
  v3 = [a2 timerID];
  v4 = [*(a1 + 32) timer];
  v5 = [v4 timerID];
  v6 = [v3 isEqual:v5];

  return v6;
}

void sub_10001073C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Found current timer: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) setTimer:v3];
  [*(a1 + 32) setupTimerUI:v3];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t sub_100010834(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10007314C(a1, v2);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 didCancelTimerWithSender:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100010AAC(uint64_t a1, void *a2)
{
  if ([a2 state] == 1)
  {
    +[MTTimerManager defaultDuration];
    v4 = v3;
    [*(*(a1 + 32) + 8) countDownDuration];
    if (v4 != v5)
    {
      [*(*(a1 + 32) + 8) countDownDuration];
      [MTTimerManager setDefaultDuration:?];
      v6 = [*(a1 + 32) timer];

      if (v6)
      {
        v7 = [*(a1 + 32) timer];
        v8 = [v7 mutableCopy];

        [*(*(a1 + 32) + 8) countDownDuration];
        [v8 setDuration:?];
        v9 = [*(a1 + 32) timerManager];
        v10 = [v9 updateTimer:v8];
        v11 = +[NAScheduler mtMainThreadScheduler];
        v12 = [v10 reschedule:v11];

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100010C54;
        v15[3] = &unk_1000ADC70;
        v15[4] = *(a1 + 32);
        v16 = v8;
        v13 = v8;
        v14 = [v12 addSuccessBlock:v15];
      }
    }
  }
}

void sub_100011F38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_1000124C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000124F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer started. Preparing UI for running timer.", &v5, 0xCu);
    }

    [*(a1 + 32) setTimer:*(a1 + 40)];
    [*(a1 + 32) prepareUIForState:3];
    [MTAnalytics incrementEventCount:kMTCATimerStarts];
  }
}

void sub_100012850(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained shouldHandleTimerReload])
  {
    v7 = MTLogForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v8)
      {
        sub_1000731C8(a1, v4, v7);
      }
    }

    else
    {
      if (v8)
      {
        sub_100073284(a1, v7);
      }

      [*(a1 + 32) setTimer:*(a1 + 40)];
      [*(a1 + 32) prepareUIForState:3];
    }
  }
}

void sub_100012B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012B3C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained shouldHandleTimerReload])
  {
    v4 = MTLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer stopped. Preparing UI for stopped timer.", &v15, 0xCu);
    }

    [a1[4] stopUpdatingTimerUI];
    [*(a1[4] + 1) setTimerControlState:0];
    v6 = a1[4];
    v7 = v6[1];
    v8 = [v6 timer];
    [v8 duration];
    v10 = v9;
    v11 = [a1[5] title];
    [v7 setRemainingTime:1 duration:v11 state:1 title:0.0 forceRefresh:v10];

    v12 = MTUIIsPhoneIdiom();
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      v13 = a1[5];
    }

    [a1[4] setTimer:v13];
  }

  v14 = [a1[4] delegate];
  [v14 didCancelTimerWithSender:a1[4]];

  [MTAnalytics incrementEventCount:kMTCATimerCancels];
}

void sub_100012F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained shouldHandleTimerReload])
  {
    v4 = MTLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer paused. Preparing UI for stopped timer.", &v7, 0xCu);
    }

    [*(a1 + 32) setTimer:*(a1 + 40)];
    [*(a1 + 32) prepareUIForState:*(a1 + 56)];
    v6 = &kMTCATimerPauses;
    if (*(a1 + 56) != 2)
    {
      v6 = &kMTCATimerResumes;
    }

    [MTAnalytics incrementEventCount:*v6];
  }
}

void sub_1000130B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer update failed with error: %{public}@", &v6, 0x16u);
  }
}

id sub_10001399C(uint64_t a1)
{
  [*(a1 + 32) setTimer:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateSelectedSoundUI];
}

id sub_100013CB0(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) title];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ timer label updated to: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) setTimer:*(a1 + 40)];
}

void sub_100015A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000161CC()
{
  result = _sl_dlopen();
  qword_1000D2908 = result;
  return result;
}

void *sub_100016240(uint64_t a1)
{
  v2 = sub_1000031FC();
  result = dlsym(v2, "HKFeatureIdentifierSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000D2910 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100016290(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000D2920)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000163BC;
    v3[4] = &unk_1000ADE00;
    v3[5] = v3;
    v4 = off_1000ADE20;
    v5 = 0;
    qword_1000D2920 = _sl_dlopen();
  }

  if (!qword_1000D2920)
  {
    sub_100073524(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HKSHQuickScheduleManagementViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000734A8();
  }

  qword_1000D2918 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000163BC()
{
  result = _sl_dlopen();
  qword_1000D2920 = result;
  return result;
}

void sub_100017308(id a1)
{
  +[MTAlarmManager warmUp];
  +[MTTimerManager warmUp];
  +[MTSessionManager warmUp];
  v1 = +[MTPairedDeviceListener sharedListener];
}

id sub_100017600(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) view];
  v3 = [v2 window];
  v4 = [v3 rootViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017730;
  v6[3] = &unk_1000AD9F0;
  v6[4] = *(a1 + 32);
  [v4 dismissViewControllerAnimated:0 completion:v6];

  if ([*(a1 + 40) isEqualToString:@"default"])
  {
    return [*(a1 + 32) _handleDefaultSpecifierForSection:*(a1 + 48)];
  }

  if ([*(a1 + 40) isEqualToString:@"edit"])
  {
    return [*(a1 + 32) _handleEditSpecifierForSection:*(a1 + 48)];
  }

  result = [*(a1 + 40) isEqualToString:@"add"];
  if (result)
  {
    return [*(a1 + 32) _handleAddSpecifierForSection:*(a1 + 48)];
  }

  return result;
}

id sub_100017F48(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ preparing tab bar controller", &v5, 0xCu);
  }

  result = [*(*(a1 + 32) + 16) setRootViewController:*(*(a1 + 32) + 24)];
  if (*(a1 + 40) == 1)
  {
    return [*(a1 + 32) restoreLastSelectedTabIndex];
  }

  return result;
}

uint64_t sub_1000182B0(uint64_t a1)
{
  [*(a1 + 32) finishedTest:*(*(a1 + 32) + 88)];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);
    v5 = *(a1 + 48);

    return [v3 teardownForTest:v4 options:v5];
  }

  return result;
}

void sub_100018BD4(id a1)
{
  v1 = objc_opt_class();
  v14 = NSStringFromClass(v1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSSet setWithObjects:v14, v3, v5, v7, v9, v11, 0];
  v13 = qword_1000D2938;
  qword_1000D2938 = v12;
}

NSArray *__cdecl sub_10001915C(id a1, NSArray *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000191FC;
  v4[3] = &unk_1000ADF58;
  v2 = [(NSArray *)a2 mutableCopy];
  v5 = v2;
  [v2 enumerateObjectsUsingBlock:v4];

  return v2;
}

void sub_1000191FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 action] == "pasteAndMatchStyle:")
  {
    [*(a1 + 32) removeObjectAtIndex:a3];
    *a4 = 1;
  }
}

id sub_100019298(uint64_t a1)
{
  v26 = objc_opt_new();
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WORLD_CLOCK" value:&stru_1000AEF10 table:0];
  v28[0] = v3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"ALARMS_LIST" value:&stru_1000AEF10 table:0];
  v28[1] = v5;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"STOP_WATCH" value:&stru_1000AEF10 table:0];
  v28[2] = v7;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"TIMERS" value:&stru_1000AEF10 table:0];
  v28[3] = v9;
  v10 = [NSArray arrayWithObjects:v28 count:4];

  [*(a1 + 32) setViewOptionTitles:v10];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [UIImage systemImageNamed:@"globe"];
  v13 = [UIKeyCommand commandWithTitle:v11 image:v12 action:"viewWorldClock" input:@"1" modifierFlags:0x100000 propertyList:0];

  v14 = [v10 objectAtIndexedSubscript:1];
  v15 = [UIImage systemImageNamed:@"alarm"];
  v16 = [UIKeyCommand commandWithTitle:v14 image:v15 action:"viewAlarmClock" input:@"2" modifierFlags:0x100000 propertyList:0];

  v17 = [v10 objectAtIndexedSubscript:2];
  v18 = [UIImage systemImageNamed:@"stopwatch"];
  v19 = [UIKeyCommand commandWithTitle:v17 image:v18 action:"viewStopwatch" input:@"3" modifierFlags:0x100000 propertyList:0];

  v20 = [v10 objectAtIndexedSubscript:3];
  v21 = [UIImage systemImageNamed:@"timer"];
  v22 = [UIKeyCommand commandWithTitle:v20 image:v21 action:"viewTimer" input:@"4" modifierFlags:0x100000 propertyList:0];

  v27[0] = v13;
  v27[1] = v16;
  v27[2] = v19;
  v27[3] = v22;
  v23 = [NSArray arrayWithObjects:v27 count:4];
  v24 = [UIMenu menuWithTitle:&stru_1000AEF10 image:0 identifier:0 options:1 children:v23];

  [v26 addObject:v24];

  return v26;
}

NSArray *__cdecl sub_10001966C(id a1, NSArray *a2)
{
  v2 = objc_alloc_init(NSArray);

  return v2;
}

void sub_100019BA0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [v2[3] worldClockViewController];
  [v2 _selectViewController:v4];

  v5 = +[WorldClockManager sharedManager];
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v5 citiesMatchingName:v7];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [*(*v3 + 24) worldClockViewController];
    if ([v10 conformsToProtocol:&OBJC_PROTOCOL___MTAUpdateClockViewControllerDelegate])
    {
      v11 = [v10 isViewLoaded];
      v12 = MTLogForCategory();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = *v3;
          v15 = *v6;
          v18 = 138543874;
          v19 = v14;
          v20 = 2114;
          v21 = v15;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: view controller is loaded, adding city name: %{public}@ to controller: %{public}@", &v18, 0x20u);
        }

        [v10 addCityWithoutUserInteraction:v9];
      }

      else
      {
        if (v13)
        {
          v16 = *v3;
          v17 = *v6;
          v18 = 138543874;
          v19 = v16;
          v20 = 2114;
          v21 = v17;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: defer adding city name: %{public}@ to controller: %{public}@", &v18, 0x20u);
        }

        [v10 setDeferAddedCity:v9];
      }
    }
  }

  else
  {
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100073644();
    }
  }
}

void sub_100019EF0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [v2[3] worldClockViewController];
  [v2 _selectViewController:v4];

  v5 = +[WorldClockManager sharedManager];
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v5 citiesMatchingName:v7];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [*(*v3 + 24) worldClockViewController];
    if ([v10 conformsToProtocol:&OBJC_PROTOCOL___MTAUpdateClockViewControllerDelegate])
    {
      v11 = [v10 isViewLoaded];
      v12 = MTLogForCategory();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = *v3;
          v15 = *v6;
          v18 = 138543874;
          v19 = v14;
          v20 = 2114;
          v21 = v15;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: view controller is loaded, removing city name: %{public}@ from controller: %{public}@", &v18, 0x20u);
        }

        [v10 removeCityWithoutUserInteraction:v9];
      }

      else
      {
        if (v13)
        {
          v16 = *v3;
          v17 = *v6;
          v18 = 138543874;
          v19 = v16;
          v20 = 2114;
          v21 = v17;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: defer removing city name: %{public}@ from controller: %{public}@", &v18, 0x20u);
        }

        [v10 setDeferRemovedCity:v9];
      }
    }
  }

  else
  {
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100073644();
    }
  }
}

void sub_10001A6E4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_10001AF54(uint64_t a1, void *a2, BOOL *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a2 persistentID]);
    [v5 addObject:v6];
  }

  result = [*(a1 + 32) count];
  *a3 = result > 1;
  return result;
}

id sub_10001EE14(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

id sub_10001F1F4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 40) frame];

  return [v2 setFrame:?];
}

uint64_t sub_10001F290(double a1)
{
  if (qword_1000D2A60 != -1)
  {
    sub_100073738();
  }

  [qword_1000D2948[5 * sub_100020CB8(a1)] size];

  return UIRectCenteredIntegralRect();
}

void sub_10001F750(float64x2_t *a1, unint64_t a2, void *a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  *&v80 = a4;
  v93.f64[0] = a4;
  v93.f64[1] = a5;
  v94 = a6;
  v95 = a7;
  v12 = a3;
  v13 = v12;
  if (!a2)
  {
    goto LABEL_36;
  }

  v64 = &v64;
  v14 = 32 * a2;
  __chkstk_darwin(v12);
  v78 = a2;
  v15 = (&v64 - 4 * a2);
  *&v79 = v82;
  *&v76.f64[0] = a1[1].f64;
  v16 = 1;
  *&v77.f64[0] = 3221225472;
  v74 = a1;
  v67 = v14;
  v71 = v15;
  do
  {
    LODWORD(v75) = v16;
    memcpy(v15, a1, v14);
    v17 = 0;
    do
    {
      v18 = [v13 objectAtIndexedSubscript:v17];
      v19 = [v18 iconPlacement] == 2;

      if (!v19)
      {
        v20 = [v13 objectAtIndexedSubscript:v17];
        [v20 hotspotOffsetForPlacement:1];
        v22 = v21;
        v23 = [v13 objectAtIndexedSubscript:v17];
        [v23 hotspotOffsetForPlacement:2];
        v25 = v24;

        v26 = &v74[2 * v17];
        v27 = v26->f64[0];
        v96 = *(v26 + 8);
        *&v98.origin.y = v96;
        v97 = v26[1].f64[1];
        v98.size.width = v26[1].f64[0];
        v98.size.height = v26[1].f64[1];
        v98.origin.x = v27;
        MaxX = CGRectGetMaxX(v98);
        *&v99.origin.x = v80;
        v99.origin.y = a5;
        v99.size.width = a6;
        v99.size.height = a7;
        v29 = CGRectGetMaxX(v99);
        v30 = v22 - v25;
        v89 = 0;
        v90 = &v89;
        v91 = 0x2020000000;
        v92 = 0;
        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        if (MaxX > v29)
        {
          goto LABEL_11;
        }

        v81[0] = _NSConcreteStackBlock;
        v81[1] = *&v77.f64[0];
        v82[0] = sub_100021130;
        v82[1] = &unk_1000AE040;
        v82[4] = v74;
        v82[5] = v17;
        *&v82[6] = v30 + v27;
        v83 = v96;
        v84 = v97;
        v82[2] = &v89;
        v82[3] = &v85;
        v31 = objc_retainBlock(v81);
        v32 = v76.f64[0];
        v33 = v17;
        v34 = v78;
        do
        {
          if (v33)
          {
            (v31[2])(v31, *(*&v32 - 16), *(*&v32 - 8), **&v32, *(*&v32 + 8));
          }

          --v33;
          *&v32 += 32;
          --v34;
        }

        while (v34);

        if (v86[3] < v90[3])
        {
LABEL_11:
          v35 = [v13 objectAtIndexedSubscript:v17];
          [v35 setIconPlacement:2];

          v36 = &v71[32 * v17];
          v36->f64[0] = v30 + v36->f64[0];
          sub_1000211C4(v36, &v93);
        }

        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v89, 8);
      }

      ++v17;
    }

    while (v17 != v78);
    a1 = v74;
    v15 = v71;
    v14 = v67;
    v37 = memcpy(v74, v71, v67);
    v16 = 0;
  }

  while ((v75 & 1) != 0);
  v38 = v78;
  __chkstk_darwin(v37);
  v39 = (&v64 - 2 * v38);
  v69 = v39;
  v40 = a1;
  v41 = v38;
  do
  {
    v42 = *v40;
    v40 += 2;
    *v39++ = v42;
    --v41;
  }

  while (v41);
  do
  {
    sub_1000211C4(a1, &v93);
    a1 += 2;
    --v38;
  }

  while (v38);
  v70 = 0;
  v43 = v71;
  v66 = (v71 + 32);
  v44 = v74;
  v65 = v74 + 2;
  v77 = vdupq_n_s64(0x3FAEB851EB851EB8uLL);
  v76 = vdupq_n_s64(0xBFAEB851EB851EB8);
  v68 = vdupq_n_s64(0xBF9EB851EB851EB8);
  v45 = v78;
  do
  {
    memcpy(v43, v44, v67);
    v46 = 0;
    v47 = 0;
    v73 = v65;
    v72 = v66;
    while (1)
    {
      v48 = v46 + 1;
      v49 = &v43[32 * v46];
      v75 = v46 + 1;
      if (v46 + 1 < v45)
      {
        v50 = v73;
        v51 = v72;
        v52 = &v44[2 * v46];
        do
        {
          sub_1000211C4(v49, &v93);
          v53 = [v13 objectAtIndexedSubscript:v46];
          v54 = [v13 objectAtIndexedSubscript:v48];
          [v53 sizeForIntersectionWithCityView:v54 atOrigin:v50->f64[0] selfOrigin:{v50->f64[1], v52->f64[0], v52->f64[1]}];
          v80 = v55;
          v79 = v56;

          if (*&v80 != 0.0 || *&v79 != 0.0)
          {
            v57.i64[0] = v80;
            v58 = *&v79 * *&v79 + *v57.i64 * *v57.i64;
            v57.i64[1] = v79;
            v59 = vextq_s8(v57, v57, 8uLL);
            v60 = vaddq_f64(v59, vandq_s8(vdupq_lane_s64(COERCE__INT64(sqrtf(v58)), 0), vcgtq_f64(v57, v59)));
            v61 = vextq_s8(v60, v60, 8uLL);
            v62 = vbslq_s8(vcgtq_f64(*v50, *v52), vnegq_f64(v61), v61);
            *v49 = vmlaq_f64(*v49, v77, v62);
            *v51 = vmlaq_f64(*v51, v76, v62);
            v47 = 1;
          }

          ++v48;
          v51 += 2;
          v50 += 2;
        }

        while (v78 != v48);
      }

      if (v70 > 9)
      {
        break;
      }

      v63 = vsubq_f64(v74[2 * v46], v69[v46]);
      if (v63.f64[0] == 0.0 && v63.f64[1] == 0.0)
      {
        break;
      }

      *v49 = vmlaq_f64(*v49, v68, v63);
      sub_1000211C4(v49, &v93);
      v45 = v78;
      v44 = v74;
      v43 = v71;
      if (v75 == v78)
      {
        goto LABEL_35;
      }

      v47 = 1;
LABEL_33:
      v72 += 2;
      v73 += 2;
      v46 = v75;
    }

    sub_1000211C4(v49, &v93);
    v45 = v78;
    if (v75 != v78)
    {
      v44 = v74;
      v43 = v71;
      goto LABEL_33;
    }

    v44 = v74;
    v43 = v71;
    if ((v47 & 1) == 0)
    {
      break;
    }

LABEL_35:
    memcpy(v44, v43, v67);
    ++v70;
  }

  while (v70 != 30);
LABEL_36:
}

void sub_10001FF14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 288), 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

id sub_100020890(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sin((v6 + 284.0) * 0.98630137 * 0.0174532925) * 23.45;
  v9 = (modf(v7, __y) * 24.0 + -12.0) * 15.0;
  v20 = v8;
  v10 = tan(v8 * 0.0174532925);
  v11 = v22;
  for (i = -180; i != 181; ++i)
  {
    v13 = i;
    v14 = 90.0;
    if (v10 != 0.0)
    {
      v15 = cos((v9 + v13) * 0.0174532925);
      v14 = atan(-v15 / v10) * 57.2957795;
    }

    *(v11 - 1) = v14;
    *v11 = v13;
    v11 += 2;
  }

  v16 = +[UIBezierPath bezierPath];
  if (v20 <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v3;
  }

  if ((v1 & 1) == 0)
  {
    sub_100020B64(__y[1], v22[0], v5);
  }

  [v16 moveToPoint:?];
  v18 = 0x1FFFFFFFFFFFFD2ELL;
  do
  {
    [v16 addLineToPoint:{sub_100020B64(v22[v18 + 721], v22[v18 + 722], v5)}];
    v18 += 2;
  }

  while (v18 * 8);
  if (v1)
  {
    [v16 addLineToPoint:{v5, v17}];
    [v16 addLineToPoint:{0.0, v17}];
  }

  return v16;
}

uint64_t *sub_100020C18(double a1)
{
  if (qword_1000D2A60 != -1)
  {
    sub_100073738();
  }

  v2 = &qword_1000D2948[5 * sub_100020CB8(a1)];
  if (!v2[1])
  {
    v3 = +[UIColor mtui_worldClockMapLandColor];
    v4 = [*v2 _flatImageWithColor:v3];
    v5 = v2[1];
    v2[1] = v4;
  }

  return v2;
}

uint64_t sub_100020CB8(double a1)
{
  if (qword_1000D2A60 != -1)
  {
    sub_100073738();
  }

  v2 = 0;
  v3 = 0xFFFFFFFFLL;
  v4 = &qword_1000D2948;
  v5 = 1.79769313e308;
  do
  {
    [*v4 size];
    v7 = vabdd_f64(a1, v6);
    if (v3 == -1 || (v3 & 0x80000000) == 0 && v7 < v5)
    {
      v3 = v2;
      v5 = v7;
    }

    ++v2;
    v4 += 5;
  }

  while (v2 != 7);
  return v3;
}

void sub_100020D54(id a1)
{
  [UIImage imageNamed:@"map_portrait"];
  v27 = 0;
  v26 = v28 = 0;
  v29 = xmmword_10008B980;
  [UIImage imageNamed:@"map_landscape", sub_100021014(qword_1000D2948, &v26).n128_f64[0]];
  v23 = 0;
  v22 = v24 = 0;
  v25 = xmmword_10008B990;
  v18 = [UIImage imageNamed:@"map_landscape_large", sub_100021014(&unk_1000D2970, &v22).n128_f64[0]];
  v19 = 0;
  v20 = xmmword_10008B9A0;
  v21 = 0x4000000000000000;
  [UIImage imageNamed:@"map_portrait_medium", sub_100021014(&unk_1000D2998, &v18).n128_f64[0]];
  v15 = 0;
  v14 = v16 = 0;
  v17 = xmmword_10008B9B0;
  [UIImage imageNamed:@"map_landscape_medium", sub_100021014(&unk_1000D29C0, &v14).n128_f64[0]];
  v11 = 0;
  v10 = v12 = 0;
  v13 = xmmword_10008B9C0;
  [UIImage imageNamed:@"map_landscape_medium_wide", sub_100021014(&unk_1000D29E8, &v10).n128_f64[0]];
  v7 = 0;
  v6 = v8 = 0;
  v9 = xmmword_10008B9D0;
  v1 = [UIImage imageNamed:@"map_mac", sub_100021014(&unk_1000D2A10, &v6).n128_f64[0]];
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0x4000000000000000;
  sub_100021014(&unk_1000D2A38, &v1);
}

__n128 sub_100021014(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  result = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = result;
  return result;
}

double sub_10002105C(void *a1)
{
  v1 = a1;
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = [v2 components:128 fromDate:qword_1000D2940 toDate:v1 options:0];

  v5 = [v4 second] / 86400.0 + 1.0;
  return v5;
}

double sub_100021130(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = a2;
  v10 = (*(a1 + 48) + 32 * *(a1 + 56));
  result = *v10;
  if (*v10 >= v8)
  {
    if (*v10 <= v8)
    {
      return result;
    }

    result = *(a1 + 64);
    v12 = (a1 + 72);
    v13 = (a1 + 80);
    v14 = (a1 + 88);
    v15 = 40;
  }

  else
  {
    v12 = (v10 + 1);
    v13 = (v10 + 2);
    v14 = (v10 + 3);
    v15 = 32;
  }

  v16 = *v13;
  v17 = *v12;
  v18 = *v14;
  v20 = CGRectIntersection(*&result, *&v8);
  v19 = *(*(a1 + v15) + 8);
  result = *(v19 + 24) + v20.size.width * v20.size.height;
  *(v19 + 24) = result;
  return result;
}

void sub_1000211C4(float64x2_t *a1, float64x2_t *a2)
{
  if (!CGRectContainsRect(*a2->f64, *a1->f64))
  {
    *a1 = vbslq_s8(vcgtq_f64(*a1, *a2), *a1, *a2);
    v4 = CGRectGetMaxX(*a2->f64) - a1[1].f64[0];
    if (v4 >= a1->f64[0])
    {
      v4 = a1->f64[0];
    }

    a1->f64[0] = v4;
    v5 = CGRectGetMaxY(*a2->f64) - a1[1].f64[1];
    if (v5 >= a1->f64[1])
    {
      v5 = a1->f64[1];
    }

    a1->f64[1] = v5;
  }
}

id sub_100022CDC(uint64_t a1)
{
  v2 = [*(a1 + 32) countDownView];
  v3 = v2;
  v4 = 1.0;
  if (*(a1 + 48))
  {
    v4 = 0.0;
  }

  [v2 setAlpha:v4];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 updateLabelColorForState:v6];
}

uint64_t sub_1000232B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100023508(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 alarmID];
  v4 = [*(*(a1 + 32) + 96) alarmID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(*(a1 + 32) + 104) reloadDataForAlarm:v6];
  }
}

void sub_10002399C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = +[MTAStateStore shared];
  if (v2)
  {
    v3 = [*(a1 + 32) alarmIDString];
    v4 = [MTAStateStoreEvent eventWithType:2 identifier:v3];
    [v5 pushEvent:v4];
  }

  else
  {
    v3 = [MTAStateStoreEvent eventWithType:1];
    [v5 pushEvent:v3];
  }
}

void sub_100023B50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100023B74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSource];
  v3 = [v2 hasSleepAlarmMatchingAlarmIDString:*(a1 + 32)];

  if (v3)
  {
    [WeakRetained showSleepView:0];
  }

  else
  {
    v4 = [WeakRetained dataSource];
    v5 = [v4 rowForAlarmWithID:*(a1 + 32)];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [WeakRetained dataSource];
      v7 = [v6 alarmAtRow:v5];

      [WeakRetained showAddViewForAlarm:v7];
    }
  }
}

void sub_100023D08(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 setUserInteractionEnabled:1];
}

void sub_100023E38(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 setUserInteractionEnabled:1];
}

id sub_100024018(uint64_t a1)
{
  [*(a1 + 32) _reloadUI:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadWidgetTimeline];
}

id sub_1000241F0(uint64_t a1)
{
  [*(a1 + 32) _reloadUI:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadWidgetTimeline];
}

id sub_1000243C8(uint64_t a1)
{
  [*(a1 + 32) _reloadUI:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadWidgetTimeline];
}

void sub_100024508(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading widget timeline from app", &v6, 0xCu);
  }

  v4 = +[MTWidgetUtilities reloadAlarmWidgetTimeline];
  if (v4)
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007374C(a1, v4, v5);
    }
  }
}

void sub_100024E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteRowAtIndexPath:*(a1 + 32)];
  v5[2](v5, 1);
}

void sub_1000251F4(id a1)
{
  qword_1000D2A70 = [MTAlarm alarmWithHour:7 minute:30];

  _objc_release_x1();
}

void sub_100025514(id a1)
{
  v2 = +[MTAStateStore shared];
  v1 = [MTAStateStoreEvent eventWithType:8];
  [v2 pushEvent:v1];
}

void sub_1000259BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000259DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 reloadData];

  [WeakRetained _scrollToAlarm:*(a1 + 32)];
}

void sub_100025B2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100025B4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scrollToAlarm:*(a1 + 32)];
}

void sub_100025F84(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isEnabled];
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Refreshing UI for cell (enabled: %d)", buf, 8u);
  }

  block = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000260DC;
  v10 = &unk_1000ADAB0;
  v6 = *(a1 + 32);
  v4 = v6.i64[0];
  v11 = vextq_s8(v6, v6, 8uLL);
  dispatch_after(0, &_dispatch_main_q, &block);
  v5 = &kMTCAClockAlarmActivations;
  if (!*(a1 + 48))
  {
    v5 = &kMTCAClockAlarmDeactivations;
  }

  [MTAnalytics incrementEventCount:*v5, *&v6, block, v8, v9, v10];
}

void sub_1000260DC(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 rowForAlarm:*(a1 + 40)];

  v4 = [*(a1 + 32) tableView];
  v5 = [NSIndexPath indexPathForRow:v3 inSection:3];
  v6 = [v4 cellForRowAtIndexPath:v5];

  [v6 refreshUI:*(a1 + 40) animated:1];
}

void sub_1000281CC(uint64_t a1)
{
  v2 = objc_alloc_init(GEOAlmanac);
  v3 = [*(a1 + 32) city];
  v4 = [v3 alCity];
  [v4 latitude];
  v6 = v5;
  v7 = [*(a1 + 32) city];
  v8 = [v7 alCity];
  [v8 longitude];
  v10 = v9;

  v11 = +[NSDate date];
  [v11 timeIntervalSinceReferenceDate];
  [v2 calculateAstronomicalTimeForLocation:v6 time:v10 altitudeInDegrees:{v12, GEOAlmanacAltitudeSunset}];

  v33 = [v2 sunrise];
  v31 = [v2 sunset];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v32 = [v13 localizedStringForKey:@"SUNRISE_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SUNRISE" value:&stru_1000AEF10 table:@"Localizable"];
  v16 = [*(a1 + 32) timeFormatter];
  v17 = [v16 stringFromDate:v33];
  v18 = [NSString stringWithFormat:v32, v15, v17];

  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SUNSET_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SUNSET" value:&stru_1000AEF10 table:@"Localizable"];
  v23 = [*(a1 + 32) timeFormatter];
  v24 = [v23 stringFromDate:v31];
  v25 = [NSString stringWithFormat:v20, v22, v24];

  v26 = [*(a1 + 32) city];
  v27 = [v26 alCityId];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028594;
  block[3] = &unk_1000AE208;
  block[4] = *(a1 + 32);
  v35 = v27;
  v36 = v18;
  v37 = v25;
  v28 = v25;
  v29 = v18;
  v30 = v27;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100028594(uint64_t a1)
{
  v2 = [*(a1 + 32) city];
  v3 = [v2 alCityId];
  v4 = [v3 isEqualToNumber:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) sunriseLabel];
    [v6 setText:v5];

    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) sunsetLabel];
    [v8 setText:v7];

    v9 = *(a1 + 32);

    [v9 setNeedsLayout];
  }
}

uint64_t sub_10002B03C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 setEditing:0 animated:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_10002B404(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 8) setAlpha:v1];
}

id sub_10002C7FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 collectionView];
  v5 = [v4 indexPathForCell:v3];

  return v5;
}

void sub_10002E0C0(id a1)
{
  qword_1000D2A80 = [UIFont systemFontOfSize:44.0 weight:UIFontWeightLight];

  _objc_release_x1();
}

void sub_10002EE18(id a1)
{
  v2 = +[MTAStateStore shared];
  v1 = [MTAStateStoreEvent eventWithType:3];
  [v2 pushEvent:v1];
}

void sub_10002F4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002F4DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteRowAtIndexPath:*(a1 + 32)];
  v5[2](v5, 1);
}

id sub_100032924(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 synchronize];
}

void sub_100032D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032F18(double a1)
{
  UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
  v3 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, a1, a1];
  v4 = +[UIColor mtui_backgroundColor];
  [v4 setFill];

  [v3 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

void sub_1000333F0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsUpdateConstraints];

  [*(a1 + 32) updateTimeViewFont];
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [*(a1 + 32) pageControl];
  [v4 setAlpha:v3];

  v5 = [*(a1 + 32) lapTableController];
  v9 = [v5 tableView];

  v6 = [*(a1 + 32) view];
  [v6 safeAreaInsets];
  v8 = v7;

  [v9 setContentInset:{0.0, 0.0, v8, 0.0}];
  [v9 setScrollIndicatorInsets:{0.0, 0.0, v8, 0.0}];
}

void sub_100033FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100073A60();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ migration completed without error", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) migrator];
    [v6 eraseLocalDefaults];
  }

  [*(a1 + 32) reloadStopwatchesWithCompletion:0];
}

void sub_1000341B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MTLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100073ACC();
    }
  }

  else
  {
    v10 = [v5 firstObject];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ couldn't fetch stopwatch, have to create one", &v12, 0xCu);
  }

  v10 = objc_opt_new();
LABEL_9:
  [*(a1 + 32) setupViewModelWithStopwatch:v10];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

BOOL sub_100036A14(id a1, UIApplicationShortcutItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UIApplicationShortcutItem *)a2 type:a3];
  v8[0] = @"com.apple.mobiletimer.start-stopwatch";
  v8[1] = @"com.apple.mobiletimer.stop-stopwatch";
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [v5 containsObject:v4];

  return v6;
}

id sub_100036D80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100036DF0;
  v3[3] = &unk_1000AD9F0;
  v3[4] = v1;
  return [v1 reloadStopwatchesWithCompletion:v3];
}

id sub_100036DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3 == 3)
  {
    [v2 resumeLapTimer];
  }

  else if (v3 == 1)
  {
    [v2 startLapTimer];
  }

  v4 = *(a1 + 32);

  return [v4 setMode:2];
}

id sub_100036EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100036F54;
  v3[3] = &unk_1000AD9F0;
  v3[4] = v1;
  return [v1 reloadStopwatchesWithCompletion:v3];
}

void *sub_100036F54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 2)
  {
    return [result pauseLapTimer];
  }

  return result;
}

id sub_100037004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100037074;
  v3[3] = &unk_1000AD9F0;
  v3[4] = v1;
  return [v1 reloadStopwatchesWithCompletion:v3];
}

void *sub_100037074(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 2)
  {
    return [result lapLapTimer];
  }

  return result;
}

id sub_100037124(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100037194;
  v3[3] = &unk_1000AD9F0;
  v3[4] = v1;
  return [v1 reloadStopwatchesWithCompletion:v3];
}

void *sub_100037194(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] != 1)
  {
    [result resetLapTimer];
    v3 = *(a1 + 32);

    return [v3 setMode:1];
  }

  return result;
}

void sub_10003A7C8(uint64_t a1)
{
  v2 = [*(a1 + 32) recentView];
  [v2 setEditing:*(a1 + 40)];
}

id sub_10003BFB4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [*(*(a1 + 32) + 8) setAlpha:v4];
  if (*(a1 + 40))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [*(*(a1 + 32) + 32) setAlpha:v5];
  v6 = *(*(a1 + 32) + 24);
  if (*(a1 + 40))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

id sub_100043B4C()
{
  v0 = +[UIApplication sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v1, UIContentSizeCategoryAccessibilityMedium) == NSOrderedDescending)
  {
    v2 = UIContentSizeCategoryAccessibilityMedium;

    v1 = v2;
  }

  v3 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v1];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];

  return v4;
}

uint64_t sub_100044288(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100045A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100045AC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteRowAtIndexPath:*(a1 + 32)];
  v5[2](v5, 1);
}

uint64_t sub_100045E74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004635C(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer updated", &v11, 0xCu);
  }

  v4 = *(a1 + 40);
  [*(a1 + 48) remainingTime];
  v6 = v5;
  [*(a1 + 48) duration];
  v8 = v7;
  v9 = [*(a1 + 48) state];
  if ([*(a1 + 48) isCurrentTimer])
  {
    [v4 setRemainingTime:v9 duration:0 state:1 title:v6 forceRefresh:v8];
  }

  else
  {
    v10 = [*(a1 + 48) title];
    [v4 setRemainingTime:v9 duration:v10 state:1 title:v6 forceRefresh:v8];
  }
}

void sub_1000466D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MTLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      sub_100073DC8();
    }
  }

  else if (v8)
  {
    sub_100073E78(a1);
  }

  if (*(a1 + 48))
  {
    [*(a1 + 32) dismissAddEditViewController:?];
  }

  [*(a1 + 32) setEditing:0];
  [*(a1 + 32) _reloadUI:0];
}

id sub_10004686C(uint64_t a1)
{
  [*(a1 + 32) updateAddButton];
  v2 = [*(*(a1 + 32) + 80) numberOfActiveTimers];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 showAddView];
  }

  else
  {

    return [v3 startTimer:0];
  }
}

void sub_100046BB0(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer stopped.", &v4, 0xCu);
  }
}

void sub_100048028(uint64_t a1)
{
  v2 = [*(a1 + 32) timerCellView];
  [v2 setEditing:*(a1 + 40)];
}

void sub_100048A5C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 mtui_isRTL];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 pages];
    v6 = [v5 count];
    v7 = &v6[~[*(a1 + 32) currentPage]];
  }

  else
  {
    v7 = [v4 currentPage];
  }

  v8 = v7;
  v9 = [*(a1 + 32) scrollView];
  [v9 bounds];
  v11 = v10 * v8;

  v12 = [*(a1 + 32) scrollView];
  [v12 setContentOffset:{v11, 0.0}];
}

void sub_10004E064(id a1)
{
  qword_1000D2AA0 = objc_opt_new();

  _objc_release_x1();
}

BOOL sub_10004E49C(id a1, UIApplicationShortcutItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UIApplicationShortcutItem *)a2 type:a3];
  v8[0] = kStartTimerActionID;
  v8[1] = kStopTimerActionID;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [v5 containsObject:v4];

  return v6;
}

id sub_10004F080()
{
  if (qword_1000D2AB8[0] != -1)
  {
    sub_10007401C();
  }

  v1 = qword_1000D2AB0;

  return v1;
}

void sub_10004F0C4(id a1)
{
  v6.width = 10.0;
  v6.height = 10.0;
  UIGraphicsBeginImageContextWithOptions(v6, 0, 0.0);
  v4 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 10.0, 10.0];
  v1 = +[UIColor systemOrangeColor];
  [v1 setFill];

  [v4 fill];
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  v3 = qword_1000D2AB0;
  qword_1000D2AB0 = v2;

  UIGraphicsEndImageContext();
}

void sub_1000508C0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissAddViewController:*(a1 + 32)];
}

int64_t sub_100050F2C(id a1, ALCity *a2, ALCity *a3)
{
  v4 = a3;
  v5 = [(ALCity *)a2 name];
  v6 = [(ALCity *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t sub_10005177C(id a1, ALCity *a2, ALCity *a3)
{
  v4 = a3;
  v5 = [(ALCity *)a2 name];
  v6 = [(ALCity *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_1000522C8(uint64_t a1)
{
  [*(a1 + 32) addClockViewController:0 addCity:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 finishAddViewControllerDismissal:0];
}

void sub_1000538E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (!v2)
    {
LABEL_11:
      NSLog(@"Unexpected timer state %ld", *(a1 + 40));
      return;
    }

    if (v2 == 1)
    {
      [*(*(a1 + 32) + 8) setAlpha:1.0];
      [*(*(a1 + 32) + 24) setAlpha:0.0];
      [*(*(a1 + 32) + 32) setAlpha:0.0];
      v3 = *(*(a1 + 32) + 40);

      [v3 setAlpha:0.0];
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v4 = *(*(a1 + 32) + 40);
        v5 = +[UIColor mtui_quaternaryColor];
        break;
      case 3:
        [*(*(a1 + 32) + 8) setAlpha:0.0];
        [*(*(a1 + 32) + 24) setAlpha:1.0];
        [*(*(a1 + 32) + 32) setAlpha:1.0];
        v4 = *(*(a1 + 32) + 40);
        v5 = +[UIColor mtui_secondaryTextColor];
        break;
      case 4:
        goto LABEL_11;
      default:
        return;
    }

    v6 = v5;
    [v4 setComponentColor:v5];
  }
}

id sub_1000546B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(*(a1 + 32) + 72) getRecentDurations];
  v6 = [v5 mutableCopy];

  [v6 sortUsingComparator:&stru_1000AE730];
  v7 = [v6 count];
  if ([v6 count])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100054A70;
    v26[3] = &unk_1000AE7C0;
    v26[4] = *(a1 + 32);
    v27 = v4;
    v28 = v7;
    [v6 enumerateObjectsUsingBlock:v26];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"NO_RECENT_TIMERS_MENU" value:&stru_1000AEF10 table:0];
    v10 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:&stru_1000AE770];

    [v10 setAttributes:1];
    [v4 addObject:v10];
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"RECENT_TIMERS_MENU" value:&stru_1000AEF10 table:0];
  v13 = [UIMenu menuWithTitle:v12 children:v4];

  v14 = [*(a1 + 32) menuBuilder];
  v15 = [v14 menuForIdentifier:UIMenuFile];
  v16 = [v15 children];
  v17 = [v16 mutableCopy];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100054D2C;
  v24 = sub_100054D3C;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100054D44;
  v19[3] = &unk_1000AE7E8;
  v19[4] = &v20;
  [v17 enumerateObjectsUsingBlock:v19];
  [v17 removeAllObjects];
  [v17 addObject:v13];
  [v17 addObject:v21[5]];
  _Block_object_dispose(&v20, 8);

  return v17;
}

void sub_1000549D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_1000549F0(id a1, MTTimerDuration *a2, MTTimerDuration *a3)
{
  v4 = a3;
  v5 = [(MTTimerDuration *)a2 lastModified];
  v6 = [(MTTimerDuration *)v4 lastModified];

  v7 = [v5 compare:v6];
  if (v7 == 1)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  if (v7 == -1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_100054A70(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v8 = [v7 title];
  v9 = [v8 length];

  v10 = *(*(a1 + 32) + 152);
  if (v9)
  {
    [v10 setUnitsStyle:2];
    v11 = *(*(a1 + 32) + 152);
    [v7 duration];
    v12 = [v11 stringFromTimeInterval:?];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"TIMER_LABEL_AND_DURATION" value:&stru_1000AEF10 table:0];
    v15 = [v7 title];
    v16 = [NSString localizedStringWithFormat:v14, v15, v12];
  }

  else
  {
    [v10 setUnitsStyle:3];
    v17 = *(*(a1 + 32) + 152);
    [v7 duration];
    v16 = [v17 stringFromTimeInterval:?];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100054C6C;
  v20[3] = &unk_1000AE798;
  v20[4] = *(a1 + 32);
  v21 = v7;
  v18 = v7;
  v19 = [UIAction actionWithTitle:v16 image:0 identifier:0 handler:v20];
  [*(a1 + 40) addObject:v19];
  *a4 = *(a1 + 48) - 1 == a3;
}

void sub_100054C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) duration];
  v4 = v3;
  v5 = [*(a1 + 40) title];
  v6 = [*(a1 + 40) sound];
  [v2 didStartTimerWithDuration:v5 title:v6 sound:0 sender:v4];

  v8 = +[UIApplication sharedApplication];
  v7 = [v8 delegate];
  [v7 switchToTimerTab];
}

uint64_t sub_100054D2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100054D44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:@"com.apple.menu.close"];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  return _objc_release_x1();
}

void sub_1000553F8(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];
}

uint64_t sub_100055538(uint64_t a1)
{
  [*(a1 + 32) _reloadUI:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100056200(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 showAddViewForTimer:0];
  }

  return result;
}

void sub_100056360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10005637C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showAddTimerViewWithTimer:*(a1 + 32)];
}

id sub_1000569AC(id *a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [a1[5] timerID];
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer started: %@", &v6, 0x16u);
  }

  [MTAnalytics incrementEventCount:kMTCATimerStarts];
  [a1[6] dismissAddViewController:a1[6]];
  return [a1[4] reloadState];
}

id sub_100057CE0(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) timerID];
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer started: %@", &v6, 0x16u);
  }

  [MTAnalytics incrementEventCount:kMTCATimerStarts];
  return [*(a1 + 32) reloadState];
}

id sub_100057FE0(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer stopped. Preparing UI for stopped timer.", &v5, 0xCu);
  }

  [*(a1 + 32) reloadState];
  return [MTAnalytics incrementEventCount:kMTCATimerCancels];
}

id sub_100058240(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer paused.  timer.", &v7, 0xCu);
  }

  [*(a1 + 32) reloadState];
  v4 = [*(a1 + 40) state];
  v5 = &kMTCATimerPauses;
  if (v4 != 2)
  {
    v5 = &kMTCATimerResumes;
  }

  return [MTAnalytics incrementEventCount:*v5];
}

void sub_100058634(uint64_t a1)
{
  [*(a1 + 32) updateAddButton];
  v2 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000586D0;
  block[3] = &unk_1000AD9F0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_1000586D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) numberOfActiveTimers];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 showAddView];
  }

  else
  {

    return [v3 startTimer:0];
  }
}

void sub_100058C60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100074128(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) timerID];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@ started timer: %{public}@", &v9, 0x16u);
  }
}

id sub_100059494(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer stopped.", &v5, 0xCu);
  }

  return [MTAnalytics incrementEventCount:kMTCATimerCancels];
}

id sub_1000597A4(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer paused. Preparing UI for stopped timer.", &v6, 0xCu);
  }

  [*(a1 + 32) prepareUIForState:*(a1 + 40) forceRefresh:0];
  v4 = &kMTCATimerPauses;
  if (*(a1 + 40) != 2)
  {
    v4 = &kMTCATimerResumes;
  }

  return [MTAnalytics incrementEventCount:*v4];
}

void sub_100059888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer update failed with error: %{public}@", &v6, 0x16u);
  }
}

void sub_10005A6A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10005CB60(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 alarmID];
  v4 = [*(*(a1 + 32) + 40) alarmID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(*(a1 + 32) + 48) reloadDataForAlarm:v6];
  }
}

void sub_10005CDC4(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

void sub_10005D2D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10005D2EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showAddAlarmViewPopUpWithAlarm:*(a1 + 32)];
}

id sub_10005DC14(uint64_t a1)
{
  [*(a1 + 32) setEditing:0];
  v2 = *(a1 + 32);

  return [v2 _addOrEditControllerDidDismissCommitChanges:0];
}

id sub_10005E78C(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isEnabled];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Refreshing UI for cell (enabled: %d)", v6, 8u);
  }

  [*(a1 + 40) refreshUI:*(a1 + 32) animated:1];
  v4 = &kMTCAClockAlarmActivations;
  if (!*(a1 + 48))
  {
    v4 = &kMTCAClockAlarmDeactivations;
  }

  return [MTAnalytics incrementEventCount:*v4];
}

void sub_10005EC04(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10005EC60(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MobileTimer21MTASnoozeDurationCell_tableView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10005ECF8;
}

void sub_10005ECF8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10005EDDC(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC11MobileTimer21MTASnoozeDurationCell_viewModel] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6 = a1;
  v7 = String._bridgeToObjectiveC()();
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", 0, v7);

  return v8;
}

id sub_10005EEBC(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11MobileTimer21MTASnoozeDurationCell_viewModel] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = a1;
  v6 = String._bridgeToObjectiveC()();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for MTASnoozeDurationCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", 0, v6);

  return v7;
}

id sub_10005EFF4(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_10005F038()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005F118()
{
  v1[3] = sub_10005F248(&qword_1000D2310);
  v1[4] = sub_10005F290();
  sub_10005F33C(v1);
  type metadata accessor for SnoozeDurationView();
  sub_10005F3A0();
  UIHostingConfiguration<>.init(content:)();
  return UITableViewCell.contentConfiguration.setter();
}

uint64_t sub_10005F1B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11MobileTimer21MTASnoozeDurationCell_viewModel);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v3;

  return sub_100060690(sub_10005FD1C, v4, a2);
}

uint64_t sub_10005F248(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10005F290()
{
  result = qword_1000D2318;
  if (!qword_1000D2318)
  {
    sub_10005F2F4(&qword_1000D2310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2318);
  }

  return result;
}

uint64_t sub_10005F2F4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_10005F33C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10005F3A0()
{
  result = qword_1000D2320;
  if (!qword_1000D2320)
  {
    type metadata accessor for SnoozeDurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2320);
  }

  return result;
}

void sub_10005F3F8()
{
  v0 = sub_10005F248(&qword_1000D2350);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((swift_isaMask & *Strong) + 0x78))();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 indexPathForCell:v14];
      if (v17)
      {
        v18 = v17;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = *(v4 + 32);
        v26 = v2;
        v25(v12, v10, v3);
        v19 = type metadata accessor for TaskPriority();
        (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
        (*(v4 + 16))(v7, v12, v3);
        type metadata accessor for MainActor();
        v20 = v16;
        v21 = static MainActor.shared.getter();
        v22 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v23 = swift_allocObject();
        *(v23 + 2) = v21;
        *(v23 + 3) = &protocol witness table for MainActor;
        *(v23 + 4) = v20;
        v25(&v23[v22], v7, v3);
        sub_10005F900(0, 0, v26, &unk_10008BEA8, v23);

        (*(v4 + 8))(v12, v3);
      }

      else
      {

        v14 = v16;
      }
    }
  }
}

uint64_t sub_10005F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005F874, v7, v6);
}

uint64_t sub_10005F874()
{
  v1 = *(v0 + 16);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 scrollToRowAtIndexPath:isa atScrollPosition:0 animated:1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005F248(&qword_1000D2350);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10005FEF0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10005FF60(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10005FF60(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10005FF60(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_10005FBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_10005FC9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTASnoozeDurationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005FD24()
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005FDFC;

  return sub_10005F7DC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_10005FDFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005FEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F248(&qword_1000D2350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FF60(uint64_t a1)
{
  v2 = sub_10005F248(&qword_1000D2350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005FFC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000600C0;

  return v6(a1);
}

uint64_t sub_1000600C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000601B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006033C;

  return sub_10005FFC8(a1, v4);
}

uint64_t sub_100060270(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005FDFC;

  return sub_10005FFC8(a1, v4);
}

uint64_t sub_100060344()
{
  swift_getObjectType();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_100060388()
{
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  return v1;
}

void (*sub_10006042C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v7 = v6;
  v4[8] = sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  return sub_1000604D0;
}

void sub_1000604D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  *(v2 + 24) = v3;
  if (a2)
  {
    v6 = v5;
    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t sub_10006057C()
{
  sub_10005F248(&qword_1000D2358);
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_1000605DC()
{
  v1 = *(v0 + 16);
  sub_100060610(v1);
  return v1;
}

uint64_t sub_100060610(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100060620(uint64_t a1, uint64_t a2)
{
  result = sub_100060658(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100060658(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100060690@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for SnoozeDurationView();
  AccessibilityFocusState.init<>()();
  type metadata accessor for SnoozeDurationViewModel();
  result = State.init(wrappedValue:)();
  *a3 = v7;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t type metadata accessor for SnoozeDurationView()
{
  result = qword_1000D2B50;
  if (!qword_1000D2B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060754()
{
  v1 = v0;
  v3 = v0[1];
  v11 = *v0;
  v2 = v11;
  v12 = v3;
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  v4 = v13;
  v5 = sub_100064580(&v11);
  *v6 = !*v6;
  (v5)(&v11, 0);

  v11 = v2;
  v12 = v3;
  State.wrappedValue.getter();
  v7 = v13;
  v8 = sub_1000641E4();

  if (v8)
  {
    v9 = v1[2];
    if (v9)
    {
      v9();
    }

    type metadata accessor for SnoozeDurationView();
    LOBYTE(v11) = 1;
  }

  else
  {
    type metadata accessor for SnoozeDurationView();
    LOBYTE(v11) = 0;
  }

  sub_10005F248(&qword_1000D2398);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_10006087C()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10005F248(&qword_1000D2360);
  __chkstk_darwin(v5);
  v7 = v16 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10005F248(&qword_1000D2368);
  sub_100060A9C(v0, &v7[*(v8 + 44)]);
  v9 = v0[1];
  v16[2] = *v0;
  v16[3] = v9;
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  v10 = v16[1];
  v11 = sub_100063ED4();

  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = (v11 & 1) == 0;
  v14 = &v7[*(v5 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_100061E4C;
  v14[2] = v13;
  static AccessibilityChildBehavior.contain.getter();
  sub_100061E64();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10006235C(v7, &qword_1000D2360);
}

uint64_t sub_100060A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v86 = type metadata accessor for WheelPickerStyle();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v80 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10005F248(&qword_1000D2448);
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - v4;
  v87 = sub_10005F248(&qword_1000D2450);
  v82 = *(v87 - 8);
  __chkstk_darwin(v87);
  v79 = &v75 - v5;
  v6 = sub_10005F248(&qword_1000D2458);
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin(v6);
  v85 = &v75 - v7;
  v8 = sub_10005F248(&qword_1000D2460);
  v106 = *(v8 - 8);
  v107 = v8;
  __chkstk_darwin(v8);
  v83 = &v75 - v9;
  v10 = sub_10005F248(&qword_1000D2468);
  v11 = __chkstk_darwin(v10 - 8);
  v102 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v108 = &v75 - v13;
  v100 = type metadata accessor for AccessibilityActionKind();
  *&v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AccessibilityChildBehavior();
  v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SnoozeDurationView();
  v16 = *(v76 - 8);
  __chkstk_darwin(v76);
  v91 = v17;
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10005F248(&qword_1000D2470);
  v20 = *(v19 - 8);
  v94 = v19;
  v95 = v20;
  __chkstk_darwin(v19);
  v22 = &v75 - v21;
  v23 = sub_10005F248(&qword_1000D2478);
  v24 = *(v23 - 8);
  v96 = v23;
  v97 = v24;
  __chkstk_darwin(v23);
  v93 = &v75 - v25;
  v26 = sub_10005F248(&qword_1000D2480);
  v27 = __chkstk_darwin(v26 - 8);
  v101 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v109 = &v75 - v29;
  v30 = static VerticalAlignment.center.getter();
  LOBYTE(v113) = 1;
  v92 = a1;
  sub_1000618F0(&v124);
  v119 = v125;
  v120 = v126;
  v121 = v127;
  v118 = v124;
  v123[1] = v125;
  v123[2] = v126;
  v123[3] = v127;
  v123[4] = v128;
  v122 = v128;
  v123[0] = v124;
  sub_10006213C(&v118, &v115);
  sub_10006235C(v123, &qword_1000D2488);
  *&v117[7] = v118;
  *&v117[71] = v122;
  *&v117[55] = v121;
  *&v117[39] = v120;
  *&v117[23] = v119;
  *(&v116[2] + 1) = *&v117[32];
  *(&v116[3] + 1) = *&v117[48];
  *(&v116[4] + 1) = *&v117[64];
  *(v116 + 1) = *v117;
  v115 = v30;
  LOBYTE(v116[0]) = v113;
  *&v116[5] = *(&v122 + 1);
  *(&v116[1] + 1) = *&v117[16];
  BYTE8(v116[5]) = 0;
  v90 = v18;
  sub_1000621AC(a1, v18);
  v31 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v32 = swift_allocObject();
  sub_100062210(v18, v32 + v31);
  v33 = sub_10005F248(&qword_1000D2490);
  v34 = sub_100062278();
  View.onTapGesture(count:perform:)();

  v128 = v116[3];
  v129[0] = v116[4];
  *(v129 + 9) = *(&v116[4] + 9);
  v124 = v115;
  v125 = v116[0];
  v126 = v116[1];
  v127 = v116[2];
  sub_10006235C(&v124, &qword_1000D2490);
  v35 = v104;
  static AccessibilityChildBehavior.combine.getter();
  *&v115 = v33;
  *(&v115 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v93;
  v37 = v94;
  View.accessibilityElement(children:)();
  v39 = *(v110 + 8);
  v110 += 8;
  v75 = v39;
  v39(v35, v105);
  v40 = v37;
  (*(v95 + 8))(v22, v37);
  v41 = v92;
  v42 = v90;
  sub_1000621AC(v92, v90);
  v43 = swift_allocObject();
  sub_100062210(v42, v43 + v31);
  v44 = v98;
  static AccessibilityActionKind.default.getter();
  *&v115 = v40;
  *(&v115 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v45 = v96;
  View.accessibilityAction(_:_:)();

  (*(v99 + 8))(v44, v100);
  (*(v97 + 8))(v38, v45);
  v46 = *v41;
  v47 = v41[1];
  *&v115 = *v41;
  *(&v115 + 1) = v47;
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  v48 = v113;
  LOBYTE(OpaqueTypeConformance2) = sub_1000641E4();

  v49 = 1;
  if (OpaqueTypeConformance2)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v100 = v50;
    *&v113 = v46;
    *(&v113 + 1) = v47;
    State.projectedValue.getter();
    v51 = v115;
    v52 = *&v116[0];
    swift_getKeyPath();
    v115 = v51;
    *&v116[0] = v52;
    sub_10005F248(&qword_1000D24C8);
    Binding.subscript.getter();

    v99 = v113;
    v53 = v114;

    v111 = v99;
    v112 = v53;
    __chkstk_darwin(v54);
    sub_10005F248(&qword_1000D24D0);
    sub_1000627AC();
    v55 = v77;
    Picker<>.init<A>(_:selection:content:)();
    v56 = v80;
    WheelPickerStyle.init()();
    v57 = sub_10006285C(&qword_1000D24F0, &qword_1000D2448);
    v58 = v79;
    v59 = v81;
    v60 = v86;
    View.pickerStyle<A>(_:)();
    (*(v84 + 8))(v56, v60);
    (*(v78 + 8))(v55, v59);
    v61 = v104;
    static AccessibilityChildBehavior.contain.getter();
    *&v115 = v59;
    *(&v115 + 1) = v60;
    *&v116[0] = v57;
    *(&v116[0] + 1) = &protocol witness table for WheelPickerStyle;
    v62 = swift_getOpaqueTypeConformance2();
    v63 = v85;
    v64 = v87;
    View.accessibilityElement(children:)();
    v75(v61, v105);
    (*(v82 + 8))(v58, v64);
    sub_10005F248(&qword_1000D2398);
    AccessibilityFocusState.projectedValue.getter();
    *&v115 = v64;
    *(&v115 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    v65 = v83;
    v66 = v89;
    View.accessibilityFocused(_:)();

    (*(v88 + 8))(v63, v66);
    (*(v106 + 32))(v108, v65, v107);
    v49 = 0;
  }

  v67 = v108;
  (*(v106 + 56))(v108, v49, 1, v107);
  v68 = v109;
  v69 = v101;
  sub_100062598(v109, v101, &qword_1000D2480);
  v70 = v102;
  sub_100062598(v67, v102, &qword_1000D2468);
  v71 = v103;
  sub_100062598(v69, v103, &qword_1000D2480);
  v72 = sub_10005F248(&qword_1000D24C0);
  v73 = v71 + *(v72 + 48);
  *v73 = 0;
  *(v73 + 8) = 0;
  sub_100062598(v70, v71 + *(v72 + 64), &qword_1000D2468);
  sub_10006235C(v67, &qword_1000D2468);
  sub_10006235C(v68, &qword_1000D2480);
  sub_10006235C(v70, &qword_1000D2468);
  return sub_10006235C(v69, &qword_1000D2480);
}

uint64_t sub_1000618F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v24 = v4;
  v25 = v3;
  v23 = v5;
  v26 = v6;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  sub_1000639E8();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v8._countAndFlagsBits = 1852402976;
  v8._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  LocalizedStringKey.init(stringInterpolation:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  State.wrappedValue.getter();
  v14 = sub_100063ED4();

  if (v14)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10006298C(v9, v11, v13 & 1);

  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_10006299C(v25, v24, v23 & 1);

  sub_10006299C(v15, v17, v19 & 1);

  sub_10006298C(v15, v17, v19 & 1);

  sub_10006298C(v25, v24, v23 & 1);
}

uint64_t sub_100061BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000639E8();
  *a1 = result;
  return result;
}

uint64_t sub_100061CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v4._countAndFlagsBits = 1852402976;
  v4._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_100061DF4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100061E64()
{
  result = qword_1000D2370;
  if (!qword_1000D2370)
  {
    sub_10005F2F4(&qword_1000D2360);
    sub_10006285C(&qword_1000D2378, &qword_1000D2380);
    sub_10006285C(&qword_1000D2388, &qword_1000D2390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2370);
  }

  return result;
}

void sub_100061F8C()
{
  sub_100062028();
  if (v0 <= 0x3F)
  {
    sub_100062080();
    if (v1 <= 0x3F)
    {
      sub_1000620E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100062028()
{
  if (!qword_1000D23F8)
  {
    type metadata accessor for SnoozeDurationViewModel();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D23F8);
    }
  }
}

void sub_100062080()
{
  if (!qword_1000D2400)
  {
    sub_10005F2F4(&qword_1000D2408);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D2400);
    }
  }
}

void sub_1000620E4()
{
  if (!qword_1000D2410)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D2410);
    }
  }
}

uint64_t sub_10006213C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F248(&qword_1000D2488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000621AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnoozeDurationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnoozeDurationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100062278()
{
  result = qword_1000D2498;
  if (!qword_1000D2498)
  {
    sub_10005F2F4(&qword_1000D2490);
    sub_10006285C(&qword_1000D24A0, &qword_1000D24A8);
    sub_10006285C(&qword_1000D24B0, &qword_1000D24B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2498);
  }

  return result;
}

uint64_t sub_10006235C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10005F248(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000623BC()
{
  v1 = type metadata accessor for SnoozeDurationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = v0 + v3 + *(v1 + 24);
  v6 = type metadata accessor for AccessibilityTechnologies();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_10005F248(&qword_1000D2398);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062598(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10005F248(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100062600()
{
  sub_10005F248(&qword_1000D2358);
  State.wrappedValue.getter();
  v0 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  swift_beginAccess();
  v1 = *&v5[v0];

  State.wrappedValue.getter();
  v2 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  swift_beginAccess();
  v3 = *&v4[v2];

  if (v3 < v1)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    sub_10005F248(&qword_1000D24F8);
    sub_10005F248(&qword_1000D24E8);
    sub_1000628A4();
    sub_10006285C(&qword_1000D24E0, &qword_1000D24E8);
    ForEach<>.init<A>(_:id:content:)();
  }
}

unint64_t sub_1000627AC()
{
  result = qword_1000D24D8;
  if (!qword_1000D24D8)
  {
    sub_10005F2F4(&qword_1000D24D0);
    sub_10006285C(&qword_1000D24E0, &qword_1000D24E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D24D8);
  }

  return result;
}

uint64_t sub_10006285C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005F2F4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000628A4()
{
  result = qword_1000D2500;
  if (!qword_1000D2500)
  {
    sub_10005F2F4(&qword_1000D24F8);
    sub_100062930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2500);
  }

  return result;
}

unint64_t sub_100062930()
{
  result = qword_1000D2508;
  if (!qword_1000D2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2508);
  }

  return result;
}

uint64_t sub_10006298C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10006299C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

Swift::Int sub_1000629E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100062A24()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t variable initialization expression of DeferredPublisher.receiver()
{
  sub_10005F248(&qword_1000D2510);
  swift_allocObject();
  return PassthroughSubject.init()();
}

uint64_t sub_100062B1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DeferredPublisher.deferAction(timeOut:completion:)(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v3 = sub_10005F248(&qword_1000D2528);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10005F248(&qword_1000D2530);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_10005F248(&qword_1000D2538);
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v32 = sub_10005F248(&qword_1000D2540);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v18 = &v29 - v17;
  v39[0] = *(v2 + OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_receiver);
  sub_10005F248(&qword_1000D2510);
  sub_10006285C(&qword_1000D2548, &qword_1000D2510);
  v31 = Publisher.share()();
  v39[0] = v31;
  sub_10005F248(&qword_1000D2550);
  sub_10006285C(&qword_1000D2558, &qword_1000D2550);
  Publisher.first()();
  sub_10006285C(&qword_1000D2560, &qword_1000D2530);
  sub_100063234();
  Publisher<>.setFailureType<A>(to:)();
  (*(v10 + 8))(v12, v9);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_100063288();
  v19 = static OS_dispatch_queue.main.getter();
  v39[0] = v19;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_10006285C(&qword_1000D2578, &qword_1000D2538);
  sub_1000632D4();
  v21 = v29;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10006332C(v5);

  (*(v35 + 8))(v8, v36);
  (*(v30 + 8))(v16, v21);
  v22 = swift_allocObject();
  v23 = v37;
  v24 = v38;
  *(v22 + 16) = v37;
  *(v22 + 24) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  sub_10006285C(&qword_1000D2588, &qword_1000D2540);
  swift_retain_n();
  v26 = v32;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v34 + 8))(v18, v26);
  v27 = (*((swift_isaMask & *v33) + 0x70))(v39);
  AnyCancellable.store(in:)();

  v27(v39, 0);
}

unint64_t sub_100063234()
{
  result = qword_1000D2568;
  if (!qword_1000D2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2568);
  }

  return result;
}

unint64_t sub_100063288()
{
  result = qword_1000D2570;
  if (!qword_1000D2570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D2570);
  }

  return result;
}

unint64_t sub_1000632D4()
{
  result = qword_1000D2580;
  if (!qword_1000D2580)
  {
    sub_100063288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2580);
  }

  return result;
}

uint64_t sub_10006332C(uint64_t a1)
{
  v2 = sub_10005F248(&qword_1000D2528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063394()
{
  v1 = *(v0 + 16);
  sub_1000637F0();
  sub_100063234();
  result = static Subscribers.Completion<>.== infix(_:_:)();
  if (result)
  {
    return v1();
  }

  return result;
}

Swift::Void __swiftcall DeferredPublisher.publish()()
{
  sub_10005F248(&qword_1000D2510);
  sub_10006285C(&qword_1000D2590, &qword_1000D2510);
  Subject<>.send()();
}

id SiriTipsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeferredPublisher.init()()
{
  v1 = OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_receiver;
  sub_10005F248(&qword_1000D2510);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_cancellables] = &_swiftEmptySetSingleton;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DeferredPublisher();
  return objc_msgSendSuper2(&v3, "init");
}

id DeferredPublisher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeferredPublisher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000637F0()
{
  result = qword_1000D2598;
  if (!qword_1000D2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2598);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeferredPublisherStatus(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeferredPublisherStatus(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000639E8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100063AC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063BC0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unint64_t sub_100063BC0()
{
  result = qword_1000D25C8;
  if (!qword_1000D25C8)
  {
    type metadata accessor for SnoozeDurationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D25C8);
  }

  return result;
}

uint64_t type metadata accessor for SnoozeDurationViewModel()
{
  result = qword_1000D2D90;
  if (!qword_1000D2D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100063CB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

void (*sub_100063D9C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100063EB4;
}

void (*sub_100064008(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100064120;
}

uint64_t sub_100064140(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_100063BC0();
  v6 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a4;
  swift_beginAccess();
  v8 = v6[v7];

  return v8;
}

uint64_t sub_1000641F8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_10006431C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063BC0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100064424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_100064528(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

void (*sub_100064580(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100063BC0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100064698;
}

void sub_1000646A4(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_100064778()
{
  v1 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100064810(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000648A8()
{
  v1 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100064940(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100064990(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  *&v11[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes] = 15;
  v13 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  *&v11[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes] = 1;
  ObservationRegistrar.init()();
  *&v11[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration] = a1;
  swift_beginAccess();
  *&v11[v12] = a2;
  swift_beginAccess();
  *&v11[v13] = a3;
  v11[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isEnabled] = a4;
  v11[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isPickerShown] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100064A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  *&v5[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes] = 15;
  v13 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  *&v5[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes] = 1;
  ObservationRegistrar.init()();
  *&v5[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration] = a1;
  swift_beginAccess();
  *&v5[v12] = a2;
  swift_beginAccess();
  *&v5[v13] = a3;
  v5[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isEnabled] = a4;
  v5[OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isPickerShown] = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100064C24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100064CD0()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100064D90()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100064DC0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100064E18()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100064E48(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100064E80()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001000A0190;
  v1._object = 0x80000001000A0160;
  v4._countAndFlagsBits = 0xD000000000000044;
  v1._countAndFlagsBits = 0xD000000000000023;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  sub_100064F4C();
  return Text.init<A>(_:)();
}

unint64_t sub_100064F4C()
{
  result = qword_1000D2620;
  if (!qword_1000D2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2620);
  }

  return result;
}

uint64_t sub_100064FA0()
{
  v1 = sub_10005F248(&qword_1000D2628);
  __chkstk_darwin(v1 - 8);
  v56 = &v51 - v2;
  v3 = sub_10005F248(&qword_1000D2630);
  v4 = __chkstk_darwin(v3 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v51 - v6;
  v62 = sub_10005F248(&qword_1000D2638);
  v65 = *(v62 - 8);
  v7 = __chkstk_darwin(v62);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v51 - v9;
  v64 = type metadata accessor for AttributedString();
  v61 = *(v64 - 8);
  v10 = __chkstk_darwin(v64);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v12;
  v13 = *v0;
  v14 = v0[1];
  sub_10005F248(&qword_1000D2640);
  v15 = swift_allocObject();
  v57 = xmmword_10008C2F0;
  *(v15 + 16) = xmmword_10008C2F0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_100065780();
  *(v15 + 64) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;

  v17 = String.init(format:_:)();
  v19 = v18;
  v21 = v0[2];
  v20 = v0[3];
  v22 = swift_allocObject();
  *(v22 + 16) = v57;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v16;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;

  v23 = String.init(format:_:)();
  v25 = v24;
  v26 = [objc_opt_self() mainBundle];
  v69._object = 0x80000001000A0210;
  v27._object = 0x80000001000A01E0;
  v69._countAndFlagsBits = 0xD00000000000004BLL;
  v27._countAndFlagsBits = 0xD000000000000025;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v69);

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10008C300;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = v16;
  *(v29 + 32) = v17;
  *(v29 + 40) = v19;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v16;
  v54 = v23;
  *(v29 + 72) = v23;
  *(v29 + 80) = v25;

  *&v57 = v25;

  String.init(format:_:)();

  AttributedString.init(stringLiteral:)();
  v67 = v17;
  v68 = v19;
  v30 = type metadata accessor for Locale();
  v31 = v56;
  v53 = *(*(v30 - 8) + 56);
  v53(v56, 1, 1, v30);
  sub_10006A014(&qword_1000D2650, &type metadata accessor for AttributedString);
  sub_100064F4C();
  v32 = v58;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10006235C(v31, &qword_1000D2628);

  v33 = *(v65 + 48);
  v65 += 48;
  if (v33(v32, 1, v62) == 1)
  {

    sub_10006235C(v32, &qword_1000D2630);
    v35 = v63;
    v34 = v64;
  }

  else
  {
    sub_1000657D4(v32, v59);
    v67 = v54;
    v68 = v57;
    v53(v31, 1, 1, v30);
    v36 = v55;
    v37 = v63;
    v34 = v64;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10006235C(v31, &qword_1000D2628);

    v35 = v37;
    if (v33(v36, 1, v62) == 1)
    {
      sub_10006235C(v59, &qword_1000D2638);
      v38 = &qword_1000D2630;
      v39 = v36;
    }

    else
    {
      v40 = v52;
      sub_1000657D4(v36, v52);
      v41 = static Color.primary.getter();
      sub_10006285C(&qword_1000D2658, &qword_1000D2638);
      v42 = v59;
      v43 = AttributedString.subscript.modify();
      v66 = v41;
      sub_100065844();
      AttributedSubstring.subscript.setter();
      v43(&v67, 0);
      v44 = static Color.primary.getter();
      v45 = AttributedString.subscript.modify();
      v66 = v44;
      AttributedSubstring.subscript.setter();
      v45(&v67, 0);
      sub_10006235C(v40, &qword_1000D2638);
      v39 = v42;
      v38 = &qword_1000D2638;
      v34 = v64;
    }

    sub_10006235C(v39, v38);
  }

  v46 = v61;
  (*(v61 + 16))(v60, v35, v34);
  v47 = Text.init(_:)();
  v48 = v34;
  v49 = v47;
  (*(v46 + 8))(v35, v48);
  return v49;
}

unint64_t sub_100065780()
{
  result = qword_1000D2648;
  if (!qword_1000D2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2648);
  }

  return result;
}

uint64_t sub_1000657D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F248(&qword_1000D2638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100065844()
{
  result = qword_1000D2660;
  if (!qword_1000D2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2660);
  }

  return result;
}

uint64_t sub_100065898()
{
  v0 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  v1 = sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);

  return SiriKitIntentTip.siriIcon.getter(v0, v1);
}

uint64_t type metadata accessor for SetTimerWithLabelWithSiriTip()
{
  result = qword_1000D30B0;
  if (!qword_1000D30B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065974@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetTimerWithLabelWithSiriTip() + 24);
  v4 = sub_10005F248(&qword_1000D2670);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000659FC()
{
  v1 = sub_10005F248(&qword_1000D2670);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  sub_10005F248(&qword_1000D2678);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_10008C300;
  v5 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  (*(v2 + 16))(v4, v0 + *(v5 + 24), v1);
  type metadata accessor for Tips.EmptyDonation();
  sub_10006A014(&qword_1000D2680, &type metadata accessor for Tips.EmptyDonation);
  sub_10006A014(&qword_1000D2688, &type metadata accessor for Tips.EmptyDonation);
  Tips.Rule.init<A>(_:_:)();
  sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);
  SiriKitIntentTip.siriDidExecuteIntent.getter();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v6 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v6;
}

uint64_t sub_100065CB8@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10005F248(&qword_1000D27D0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v27 = &v26 - v5;
  v6 = sub_10005F248(&qword_1000D27D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_10005F248(&qword_1000D27E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v28 = sub_10005F248(&qword_1000D27E8);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  sub_10006285C(&qword_1000D27F0, &qword_1000D27D8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10006285C(&qword_1000D27F8, &qword_1000D27E0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v27;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v31);
  v21 = sub_10005F248(&qword_1000D2840);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_10006AE78(&qword_1000D2848, &qword_1000D2840);
  sub_10005F33C(v22);
  sub_10006285C(&qword_1000D2830, &qword_1000D27E8);
  sub_10006285C(&qword_1000D2838, &qword_1000D27D0);
  v23 = v28;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_10006620C@<X0>(uint64_t *a1@<X8>)
{
  sub_10005F248(&qword_1000D2670);
  result = Tips.Event.donations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10006625C@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v1 = sub_10005F248(&qword_1000D27D0);
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  __chkstk_darwin(v1);
  v22 = &v21 - v3;
  v4 = sub_10005F248(&qword_1000D27D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_10005F248(&qword_1000D27E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v21 = sub_10005F248(&qword_1000D27E8);
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v21 - v13;
  sub_10006285C(&qword_1000D27F0, &qword_1000D27D8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  sub_10006285C(&qword_1000D27F8, &qword_1000D27E0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v26 = 0;
  v15 = v22;
  static PredicateExpressions.build_Arg<A>(_:)();
  v16 = sub_10005F248(&qword_1000D2800);
  v17 = v23;
  v23[3] = v16;
  v17[4] = sub_10006AE78(&qword_1000D2808, &qword_1000D2800);
  sub_10005F33C(v17);
  sub_10006285C(&qword_1000D2830, &qword_1000D27E8);
  sub_10006285C(&qword_1000D2838, &qword_1000D27D0);
  v18 = v21;
  v19 = v24;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v25 + 8))(v15, v19);
  return (*(v12 + 8))(v14, v18);
}

uint64_t sub_1000666E4()
{
  v0 = sub_10005F248(&qword_1000D2690);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10005F248(&qword_1000D2698);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_100066988@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for SetTimerWithLabelWithSiriTip();
  return Tips.Event.init<>(id:)();
}

uint64_t sub_1000669E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  type metadata accessor for SetTimerWithLabelWithSiriTip();
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100066A34@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100066A80(uint64_t a1)
{
  v2 = sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);

  return SiriKitIntentTip.siriIcon.getter(a1, v2);
}

uint64_t sub_100066AF0(uint64_t a1)
{
  v3 = sub_10005F248(&qword_1000D2670);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_10005F248(&qword_1000D2678);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_10008C300;
  (*(v4 + 16))(v6, v1 + *(a1 + 24), v3);
  type metadata accessor for Tips.EmptyDonation();
  sub_10006A014(&qword_1000D2680, &type metadata accessor for Tips.EmptyDonation);
  sub_10006A014(&qword_1000D2688, &type metadata accessor for Tips.EmptyDonation);
  Tips.Rule.init<A>(_:_:)();
  sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);
  SiriKitIntentTip.siriDidExecuteIntent.getter();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v7 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v7;
}

uint64_t sub_100066DA4@<X0>(uint64_t *a1@<X8>)
{
  sub_10006A014(&qword_1000D26C0, type metadata accessor for SetTimerWithLabelWithSiriTip);
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100066E88@<X0>(uint64_t *a1@<X8>)
{
  sub_10006A06C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_100066EC8(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  CreateTimerIntent.duration.setter();
  [v5 setType:a1];
  [v5 setLabel:a2];
  v6 = String._bridgeToObjectiveC()();
  [v5 _setLaunchId:v6];

  return v5;
}

id sub_100066F94()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = String._bridgeToObjectiveC()();

  [v1 setLabel:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 _setLaunchId:v3];

  return v1;
}

uint64_t sub_10006715C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer18SiriTipsController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id SiriTipsController.__deallocating_deinit()
{
  (*((swift_isaMask & *v0) + 0xD8))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTipsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100067368()
{
  v1 = sub_10005F248(&qword_1000D2350);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView);
  if (v4)
  {
    v5 = *((swift_isaMask & *v0) + 0x70);
    v12 = v4;
    v6 = v5();
    if (v6)
    {
      [v6 tipViewControllerDidBecomeAvailableWithSiriTipsController:v0 tipView:v12];

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v9 = v0;
    *(v9 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_checkForSiriTipsTask) = sub_10005F900(0, 0, v3, &unk_10008C360, v8);
  }
}

uint64_t sub_100067548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_10005F248(&qword_1000D2350);
  v4[11] = swift_task_alloc();
  sub_10005F248(&qword_1000D2798);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v4[15] = *(v6 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100067744, 0, 0);
}

uint64_t sub_100067744()
{
  sub_10005F248(&qword_1000D27A0);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_10008C300;
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v38 = v0[18];
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v2 + 8))(v1, v3);
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v5 + 8))(v4, v38);
  static Tips.configure(_:)();

  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (!v7)
  {
    if (qword_1000D2DA0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100069EA4(v29, qword_1000D3480);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_20;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Not able to get the current Siri locale setting. Returning";
    goto LABEL_19;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [objc_opt_self() sharedInstance];
  if (!v11)
  {
    __break(1u);
    return static SiriKitIntentTip.create(with:)(v11, v12);
  }

  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() mainBundle];
  v0[2] = v8;
  v0[3] = v10;
  v0[4] = 45;
  v0[5] = 0xE100000000000000;
  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v37 = sub_100064F4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v17 = String._bridgeToObjectiveC()();

  v18 = [v13 localizedStringForKey:v14 table:v15 bundle:v16 languageCode:{v17, &type metadata for String, v37, v37, v37}];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = v18;

    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      type metadata accessor for CreateTimerIntent();
      v24 = [objc_allocWithZone(INSpeakableString) initWithSpokenPhrase:v22];

      v0[24] = sub_100066EC8(1, v24);
      v25 = [objc_allocWithZone(type metadata accessor for SearchTimerIntent()) init];
      v0[25] = v25;
      v26 = v25;
      [v26 setLabel:v22];

      v27 = String._bridgeToObjectiveC()();
      [v26 _setLaunchId:v27];

      v28 = swift_task_alloc();
      v0[26] = v28;
      sub_10006A39C();
      *v28 = v0;
      v28[1] = sub_100067DB4;
      v11 = v0 + 8;
      v12 = v26;

      return static SiriKitIntentTip.create(with:)(v11, v12);
    }
  }

  if (qword_1000D2DA0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100069EA4(v34, qword_1000D3480);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Not able to get the timer label in Siri locale. Returning";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);
  }

LABEL_20:

  v35 = v0[1];

  return v35();
}

uint64_t sub_100067DB4()
{

  return _swift_task_switch(sub_100067EB0, 0, 0);
}

uint64_t sub_100067EB0()
{
  v1 = v0[9];
  v0[27] = v0[8];
  v0[28] = v1;
  if (v1)
  {

    v2 = String.count.getter();

    if (v2 > 0)
    {
      v3 = swift_task_alloc();
      v0[29] = v3;
      sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);
      *v3 = v0;
      v3[1] = sub_10006810C;
      v4 = v0[24];
      v5 = v0[12];

      return static SiriKitIntentTip.create(with:)(v5, v4);
    }
  }

  if (qword_1000D2DA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100069EA4(v6, qword_1000D3480);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[24];
  v10 = v0[25];
  if (v9)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Not able to create HowMuchTimeLeft Tip or its example utterance is empty. Returning", v12, 2u);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10006810C()
{

  return _swift_task_switch(sub_100068208, 0, 0);
}

uint64_t sub_100068208()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = (*(v1 + 48))(v2, 1, v0[13]);
  v4 = v0[28];
  if (v3 == 1)
  {

    sub_10006235C(v2, &qword_1000D2798);
    if (qword_1000D2DA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100069EA4(v5, qword_1000D3480);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[24];
    v9 = v0[25];
    if (v8)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not able to create SetTimerWithLabel Tip. Returning", v11, 2u);
    }
  }

  else
  {
    v12 = v0[27];
    v31 = v0[24];
    v32 = v0[25];
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v16 = v0[11];
    v28 = v12;
    v29 = v0[10];
    sub_10006A3F0(v2, v13);

    *(v13 + 16) = v12;
    *(v13 + 24) = v4;
    v17 = type metadata accessor for TaskPriority();
    v30 = *(*(v17 - 8) + 56);
    v30(v16, 1, 1, v17);
    sub_10006A454(v13, v14);
    v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_10006A3F0(v14, v20 + v18);
    *(v20 + v19) = v29;
    v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v21 = v28;
    v21[1] = v4;
    v22 = v29;
    *&v22[OBJC_IVAR____TtC11MobileTimer18SiriTipsController_updateTipStatusTask] = sub_10005F900(0, 0, v16, &unk_10008C5F8, v20);

    v30(v16, 1, 1, v17);
    sub_10006A454(v13, v14);
    type metadata accessor for MainActor();
    v23 = v22;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    sub_10006A3F0(v14, v25 + v18);
    *(v25 + v19) = v23;
    sub_10005F900(0, 0, v16, &unk_10008C608, v25);

    sub_10006A6D8(v13);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000685D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005FDFC;

  return sub_100067548(v3, v4, v5, v2);
}

uint64_t sub_100068664()
{
  if (qword_1000D2DA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100069EA4(v0, qword_1000D3480);
}

uint64_t sub_1000686C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v7[16] = *(v9 + 64);
  v7[17] = swift_task_alloc();
  sub_10005F248(&qword_1000D2350);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v10 = type metadata accessor for Tips.Status();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  sub_10005F248(&qword_1000D27B0);
  v7[26] = swift_task_alloc();
  v11 = sub_10005F248(&qword_1000D27B8);
  v7[27] = v11;
  v7[28] = *(v11 - 8);
  v7[29] = swift_task_alloc();
  v12 = sub_10005F248(&qword_1000D27C0);
  v7[30] = v12;
  v7[31] = *(v12 - 8);
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_100068960, 0, 0);
}

uint64_t sub_100068960()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10006A014(&qword_1000D26C0, type metadata accessor for SetTimerWithLabelWithSiriTip);
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 272) = enum case for Tips.Status.invalidated(_:);
  *(v0 + 276) = enum case for Tips.Status.pending(_:);
  *(v0 + 280) = enum case for Tips.Status.available(_:);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_100068AC8;
  v5 = *(v0 + 240);
  v6 = *(v0 + 208);

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_100068AC8()
{

  return _swift_task_switch(sub_100068BC4, 0, 0);
}

uint64_t sub_100068BC4()
{
  v2 = v0 + 192;
  v1 = *(v0 + 192);
  v3 = *(v0 + 208);
  v5 = (v0 + 184);
  v4 = *(v0 + 184);
  if ((*(v1 + 48))(v3, 1, v4) == 1)
  {
    v2 = v0 + 248;
    v6 = (v0 + 256);
    v5 = (v0 + 240);
LABEL_5:
    (*(*v2 + 8))(*v6, *v5);

    v19 = *(v0 + 8);

    return v19();
  }

  v6 = (v0 + 200);
  v7 = *(v0 + 200);
  v8 = *(v0 + 272);
  (*(v1 + 32))(v7, v3, v4);
  v9 = (*(v1 + 88))(v7, v4);
  if (v9 == v8)
  {
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    v13 = *(v0 + 144);
    v14 = *(v0 + 88);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    type metadata accessor for MainActor();
    v16 = v14;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    sub_10006940C(0, 0, v13, &unk_10008C630, v18);

    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  if (v9 == *(v0 + 276))
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = *(v0 + 88);
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v22, 1, 1, v24);
    type metadata accessor for MainActor();
    v26 = v23;
    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v26;
    sub_10005FEF0(v22, v21);
    LODWORD(v21) = (*(v25 + 48))(v21, 1, v24);

    v29 = *(v0 + 168);
    if (v21 == 1)
    {
      sub_10006235C(*(v0 + 168), &qword_1000D2350);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v25 + 8))(v29, v24);
    }

    v44 = v28[2];
    swift_unknownObjectRetain();

    if (v44)
    {
      swift_getObjectType();
      v45 = dispatch thunk of Actor.unownedExecutor.getter();
      v47 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_10006235C(*(v0 + 176), &qword_1000D2350);
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_10008C658;
    *(v48 + 24) = v28;
    sub_10005F248(&qword_1000D27C8);
    if (v47 | v45)
    {
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v45;
      *(v0 + 72) = v47;
    }

LABEL_28:
    swift_task_create();

    goto LABEL_29;
  }

  if (v9 == *(v0 + 280))
  {
    v30 = *(v0 + 160);
    v31 = *(v0 + 136);
    v57 = *(v0 + 128);
    v58 = v30;
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    v59 = *(v0 + 96);
    v60 = *(v0 + 152);
    v34 = *(v0 + 80);
    v35 = *(v0 + 88);
    v36 = type metadata accessor for TaskPriority();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v30, 1, 1, v36);
    sub_10006A454(v34, v31);
    type metadata accessor for MainActor();
    v38 = v35;

    v39 = static MainActor.shared.getter();
    v40 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = &protocol witness table for MainActor;
    v41[4] = v38;
    sub_10006A3F0(v31, v41 + v40);
    v42 = (v41 + ((v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = v59;
    v42[1] = v33;
    sub_10005FEF0(v58, v60);
    LODWORD(v40) = (*(v37 + 48))(v60, 1, v36);

    v43 = *(v0 + 152);
    if (v40 == 1)
    {
      sub_10006235C(*(v0 + 152), &qword_1000D2350);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v37 + 8))(v43, v36);
    }

    v49 = v41[2];
    swift_unknownObjectRetain();

    if (v49)
    {
      swift_getObjectType();
      v50 = dispatch thunk of Actor.unownedExecutor.getter();
      v52 = v51;
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    sub_10006235C(*(v0 + 160), &qword_1000D2350);
    v53 = swift_allocObject();
    *(v53 + 16) = &unk_10008C640;
    *(v53 + 24) = v41;
    if (v52 | v50)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v50;
      *(v0 + 40) = v52;
    }

    goto LABEL_28;
  }

  (*(*v2 + 8))(*v6, *v5);
LABEL_29:
  v54 = swift_task_alloc();
  *(v0 + 264) = v54;
  *v54 = v0;
  v54[1] = sub_100068AC8;
  v55 = *(v0 + 240);
  v56 = *(v0 + 208);

  return AsyncStream.Iterator.next(isolation:)(v56, 0, 0, v55);
}

uint64_t sub_100069374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006AF14, v6, v5);
}

uint64_t sub_10006940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005F248(&qword_1000D2350);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10005FEF0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10006235C(v11, &qword_1000D2350);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10005F248(&qword_1000D27C8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10006235C(a3, &qword_1000D2350);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10006235C(a3, &qword_1000D2350);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10005F248(&qword_1000D27C8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100069710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  type metadata accessor for MainActor();
  v7[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000697AC, v9, v8);
}

uint64_t sub_1000697AC()
{
  v1 = v0[4];

  v2 = *(v1 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView);
  if (v2)
  {
    v3 = *((swift_isaMask & *v0[4]) + 0x70);
    v4 = v2;
    v5 = v3();
    if (v5)
    {
      [v5 tipViewControllerDidBecomeAvailableWithSiriTipsController:v0[4] tipView:v4];
      swift_unknownObjectRelease();
    }

    v7 = v0[6];
    v6 = v0[7];
    type metadata accessor for SetTimerWithLabelWithSiriTip();
    sub_10006A014(&qword_1000D2668, type metadata accessor for SetTimerWithLabelWithSiriTip);
    v8 = SiriKitIntentTip.notifySiriTipOnDisplay.getter();
    v8();

    v0[2] = v7;
    v0[3] = v6;
    sub_10006A39C();
    v9 = SiriKitIntentTip.notifySiriTipOnDisplay.getter();
    v9();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100069930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000699C8, v6, v5);
}

uint64_t sub_1000699C8()
{
  v1 = *(v0 + 24);

  v3 = (*((swift_isaMask & *v1) + 0x70))(v2);
  v4 = v3;
  if (v3)
  {
    [v3 tipViewControllerWasInvalidatedWithSiriTipsController:*(v0 + 24)];
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100069A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100069B28, v7, v6);
}

uint64_t sub_100069B28()
{
  v1 = v0[8];
  v2 = v0[7];

  v0[5] = type metadata accessor for SetTimerWithLabelWithSiriTip();
  v0[6] = sub_10006A014(&qword_1000D26C0, type metadata accessor for SetTimerWithLabelWithSiriTip);
  v3 = sub_10005F33C(v0 + 2);
  sub_10006A454(v2, v3);
  objc_allocWithZone(type metadata accessor for TipUIView());
  v4 = TipUIView.init(_:arrowEdge:actionHandler:)();
  v5 = *(v1 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView);
  *(v1 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView) = v4;

  v6 = v0[1];

  return v6();
}

void sub_100069C74()
{
  v1 = OBJC_IVAR____TtC11MobileTimer18SiriTipsController_updateTipStatusTask;
  if (*(v0 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_updateTipStatusTask))
  {

    Task.cancel()();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC11MobileTimer18SiriTipsController_checkForSiriTipsTask;
  if (*(v0 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_checkForSiriTipsTask))
  {

    Task.cancel()();
  }

  *(v0 + v2) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView);
  *(v0 + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView) = 0;
}

id SiriTipsController.init()()
{
  *&v0[OBJC_IVAR____TtC11MobileTimer18SiriTipsController_delegate] = 0;
  *&v0[OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView] = 0;
  *&v0[OBJC_IVAR____TtC11MobileTimer18SiriTipsController_checkForSiriTipsTask] = 0;
  *&v0[OBJC_IVAR____TtC11MobileTimer18SiriTipsController_updateTipStatusTask] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTipsController();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100069E2C()
{
  v0 = type metadata accessor for Logger();
  sub_10006A338(v0, qword_1000D3480);
  sub_100069EA4(v0, qword_1000D3480);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100069EA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100069EDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000D2DA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100069EA4(v2, qword_1000D3480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10006A014(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006A06C()
{
  result = qword_1000D26D0;
  if (!qword_1000D26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D26D0);
  }

  return result;
}

unint64_t sub_10006A0C4()
{
  result = qword_1000D26D8;
  if (!qword_1000D26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D26D8);
  }

  return result;
}

void sub_10006A140()
{
  sub_10006A1BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10006A1BC()
{
  if (!qword_1000D2738)
  {
    type metadata accessor for Tips.EmptyDonation();
    sub_10006A014(&qword_1000D2680, &type metadata accessor for Tips.EmptyDonation);
    sub_10006A014(&qword_1000D2688, &type metadata accessor for Tips.EmptyDonation);
    v0 = type metadata accessor for Tips.Event();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D2738);
    }
  }
}

__n128 sub_10006A288(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10006A294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10006A2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_10006A338(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10006A39C()
{
  result = qword_1000D27A8;
  if (!qword_1000D27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D27A8);
  }

  return result;
}

uint64_t sub_10006A3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A4B8()
{
  v2 = *(type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10006033C;

  return sub_1000686C8(v9, v10, v11, v0 + v3, v5, v7, v8);
}

uint64_t sub_10006A5D8()
{
  v2 = *(type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006033C;

  return sub_100069A90(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_10006A6D8(uint64_t a1)
{
  v2 = type metadata accessor for SetTimerWithLabelWithSiriTip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A734(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006033C;

  return sub_100069930(a1, v5, v6, v4);
}

uint64_t sub_10006A7D4()
{
  v2 = *(type metadata accessor for SetTimerWithLabelWithSiriTip() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10006033C;

  return sub_100069710(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_10006A8EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A92C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006033C;

  return sub_100069374(a1, v5, v6, v4);
}

uint64_t sub_10006A9CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10006AAC0;

  return v5(v2 + 32);
}

uint64_t sub_10006AAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10006ABD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006033C;

  return sub_10006A9CC(a1, v4);
}

uint64_t sub_10006AC8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005FDFC;

  return sub_10006A9CC(a1, v4);
}

unint64_t sub_10006AD44()
{
  result = qword_1000D2810;
  if (!qword_1000D2810)
  {
    sub_10005F2F4(&qword_1000D27E8);
    sub_10006ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2810);
  }

  return result;
}

unint64_t sub_10006ADC8()
{
  result = qword_1000D2818;
  if (!qword_1000D2818)
  {
    sub_10005F2F4(&qword_1000D27E0);
    sub_10006285C(&qword_1000D2820, &qword_1000D27D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2818);
  }

  return result;
}

uint64_t sub_10006AE78(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005F2F4(a2);
    sub_10006AD44();
    sub_10006285C(&qword_1000D2828, &qword_1000D27D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006AF28()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000D30D8 = result;
  return result;
}

uint64_t sub_10006AF7C()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3498);
  sub_100069EA4(v0, qword_1000D3498);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B098()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D34B0);
  sub_100069EA4(v0, qword_1000D34B0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B1B0()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D34C8);
  sub_100069EA4(v0, qword_1000D34C8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B2C8()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D34E0);
  sub_100069EA4(v0, qword_1000D34E0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B3E0()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D34F8);
  sub_100069EA4(v0, qword_1000D34F8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B500()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3510);
  sub_100069EA4(v0, qword_1000D3510);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B620()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3528);
  sub_100069EA4(v0, qword_1000D3528);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B740()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3540);
  sub_100069EA4(v0, qword_1000D3540);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B860()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3558);
  sub_100069EA4(v0, qword_1000D3558);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006B980()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3570);
  sub_100069EA4(v0, qword_1000D3570);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006BAA0()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D3588);
  sub_100069EA4(v0, qword_1000D3588);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006BBC0()
{
  v0 = type metadata accessor for ColorResource();
  sub_10006A338(v0, qword_1000D35A0);
  sub_100069EA4(v0, qword_1000D35A0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10006BCE0()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D35B8);
  sub_100069EA4(v0, qword_1000D35B8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006BE00()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D35D0);
  sub_100069EA4(v0, qword_1000D35D0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006BF18()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D35E8);
  sub_100069EA4(v0, qword_1000D35E8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C030()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3600);
  sub_100069EA4(v0, qword_1000D3600);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C148()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3618);
  sub_100069EA4(v0, qword_1000D3618);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C260()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3630);
  sub_100069EA4(v0, qword_1000D3630);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C378()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3648);
  sub_100069EA4(v0, qword_1000D3648);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C494()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3660);
  sub_100069EA4(v0, qword_1000D3660);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C5AC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3678);
  sub_100069EA4(v0, qword_1000D3678);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C6C4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3690);
  sub_100069EA4(v0, qword_1000D3690);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C7DC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D36A8);
  sub_100069EA4(v0, qword_1000D36A8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006C8F4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D36C0);
  sub_100069EA4(v0, qword_1000D36C0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CA0C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D36D8);
  sub_100069EA4(v0, qword_1000D36D8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CB24()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D36F0);
  sub_100069EA4(v0, qword_1000D36F0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CC3C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3708);
  sub_100069EA4(v0, qword_1000D3708);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CD54()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3720);
  sub_100069EA4(v0, qword_1000D3720);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CE6C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3738);
  sub_100069EA4(v0, qword_1000D3738);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006CF84()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3750);
  sub_100069EA4(v0, qword_1000D3750);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D09C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3768);
  sub_100069EA4(v0, qword_1000D3768);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D1B4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3780);
  sub_100069EA4(v0, qword_1000D3780);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D2CC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3798);
  sub_100069EA4(v0, qword_1000D3798);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D3E4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D37B0);
  sub_100069EA4(v0, qword_1000D37B0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D4FC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D37C8);
  sub_100069EA4(v0, qword_1000D37C8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D614()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D37E0);
  sub_100069EA4(v0, qword_1000D37E0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D72C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D37F8);
  sub_100069EA4(v0, qword_1000D37F8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D844()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3810);
  sub_100069EA4(v0, qword_1000D3810);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006D95C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3828);
  sub_100069EA4(v0, qword_1000D3828);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DA74()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3840);
  sub_100069EA4(v0, qword_1000D3840);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DB8C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3858);
  sub_100069EA4(v0, qword_1000D3858);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DCA4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3870);
  sub_100069EA4(v0, qword_1000D3870);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DDBC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3888);
  sub_100069EA4(v0, qword_1000D3888);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DED4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D38A0);
  sub_100069EA4(v0, qword_1000D38A0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006DFEC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D38B8);
  sub_100069EA4(v0, qword_1000D38B8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E104()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D38D0);
  sub_100069EA4(v0, qword_1000D38D0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E21C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D38E8);
  sub_100069EA4(v0, qword_1000D38E8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E334()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3900);
  sub_100069EA4(v0, qword_1000D3900);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E44C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3918);
  sub_100069EA4(v0, qword_1000D3918);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E564()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3930);
  sub_100069EA4(v0, qword_1000D3930);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E67C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3948);
  sub_100069EA4(v0, qword_1000D3948);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E794()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3960);
  sub_100069EA4(v0, qword_1000D3960);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E8AC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3978);
  sub_100069EA4(v0, qword_1000D3978);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006E9C4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3990);
  sub_100069EA4(v0, qword_1000D3990);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006EADC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D39A8);
  sub_100069EA4(v0, qword_1000D39A8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006EBF4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D39C0);
  sub_100069EA4(v0, qword_1000D39C0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006ED0C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D39D8);
  sub_100069EA4(v0, qword_1000D39D8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006EE24()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D39F0);
  sub_100069EA4(v0, qword_1000D39F0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006EF3C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A08);
  sub_100069EA4(v0, qword_1000D3A08);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F054()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A20);
  sub_100069EA4(v0, qword_1000D3A20);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F16C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A38);
  sub_100069EA4(v0, qword_1000D3A38);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F284()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A50);
  sub_100069EA4(v0, qword_1000D3A50);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F39C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A68);
  sub_100069EA4(v0, qword_1000D3A68);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F4B4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A80);
  sub_100069EA4(v0, qword_1000D3A80);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F5CC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3A98);
  sub_100069EA4(v0, qword_1000D3A98);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F6E4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3AB0);
  sub_100069EA4(v0, qword_1000D3AB0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F7FC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3AC8);
  sub_100069EA4(v0, qword_1000D3AC8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006F914()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3AE0);
  sub_100069EA4(v0, qword_1000D3AE0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FA2C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3AF8);
  sub_100069EA4(v0, qword_1000D3AF8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FB44()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B10);
  sub_100069EA4(v0, qword_1000D3B10);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FC5C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B28);
  sub_100069EA4(v0, qword_1000D3B28);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FD74()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B40);
  sub_100069EA4(v0, qword_1000D3B40);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FE8C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B58);
  sub_100069EA4(v0, qword_1000D3B58);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10006FFA4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B70);
  sub_100069EA4(v0, qword_1000D3B70);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000700BC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3B88);
  sub_100069EA4(v0, qword_1000D3B88);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000701D4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3BA0);
  sub_100069EA4(v0, qword_1000D3BA0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000702EC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3BB8);
  sub_100069EA4(v0, qword_1000D3BB8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070404()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3BD0);
  sub_100069EA4(v0, qword_1000D3BD0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007051C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3BE8);
  sub_100069EA4(v0, qword_1000D3BE8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070634()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C00);
  sub_100069EA4(v0, qword_1000D3C00);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007074C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C18);
  sub_100069EA4(v0, qword_1000D3C18);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070864()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C30);
  sub_100069EA4(v0, qword_1000D3C30);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007097C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C48);
  sub_100069EA4(v0, qword_1000D3C48);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070A94()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C60);
  sub_100069EA4(v0, qword_1000D3C60);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070BAC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C78);
  sub_100069EA4(v0, qword_1000D3C78);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070CC4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3C90);
  sub_100069EA4(v0, qword_1000D3C90);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070DDC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3CA8);
  sub_100069EA4(v0, qword_1000D3CA8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100070EF4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3CC0);
  sub_100069EA4(v0, qword_1000D3CC0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007100C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3CD8);
  sub_100069EA4(v0, qword_1000D3CD8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071124()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3CF0);
  sub_100069EA4(v0, qword_1000D3CF0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007123C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D08);
  sub_100069EA4(v0, qword_1000D3D08);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071354()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D20);
  sub_100069EA4(v0, qword_1000D3D20);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007146C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D38);
  sub_100069EA4(v0, qword_1000D3D38);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071584()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D50);
  sub_100069EA4(v0, qword_1000D3D50);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007169C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D68);
  sub_100069EA4(v0, qword_1000D3D68);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000717B4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D80);
  sub_100069EA4(v0, qword_1000D3D80);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000718CC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3D98);
  sub_100069EA4(v0, qword_1000D3D98);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000719E4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3DB0);
  sub_100069EA4(v0, qword_1000D3DB0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071AFC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3DC8);
  sub_100069EA4(v0, qword_1000D3DC8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071C14()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3DE0);
  sub_100069EA4(v0, qword_1000D3DE0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071D2C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3DF8);
  sub_100069EA4(v0, qword_1000D3DF8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071E44()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E10);
  sub_100069EA4(v0, qword_1000D3E10);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100071F5C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E28);
  sub_100069EA4(v0, qword_1000D3E28);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072074()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E40);
  sub_100069EA4(v0, qword_1000D3E40);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007218C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E58);
  sub_100069EA4(v0, qword_1000D3E58);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000722A4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E70);
  sub_100069EA4(v0, qword_1000D3E70);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000723BC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3E88);
  sub_100069EA4(v0, qword_1000D3E88);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000724D4()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3EA0);
  sub_100069EA4(v0, qword_1000D3EA0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000725EC()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3EB8);
  sub_100069EA4(v0, qword_1000D3EB8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072704()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3ED0);
  sub_100069EA4(v0, qword_1000D3ED0);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10007281C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3EE8);
  sub_100069EA4(v0, qword_1000D3EE8);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072934()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3F00);
  sub_100069EA4(v0, qword_1000D3F00);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072A4C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3F18);
  sub_100069EA4(v0, qword_1000D3F18);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072B64()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3F30);
  sub_100069EA4(v0, qword_1000D3F30);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072C7C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3F48);
  sub_100069EA4(v0, qword_1000D3F48);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072D94()
{
  v0 = type metadata accessor for ImageResource();
  sub_10006A338(v0, qword_1000D3F60);
  sub_100069EA4(v0, qword_1000D3F60);
  if (qword_1000D30D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D30D8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100072E70(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100069EA4(v4, a3);
}

uint64_t sub_100072F08@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100069EA4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void sub_100072FF0()
{
  sub_10000EA54();
  v10 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10000EA60();
  sub_10000EA34(v1, v2, v3, @"NSObject+NAAdditions.h", v4, @"Expected class of %@ but was %@", v5, v6, v7, v8, v9, v10);
}

void sub_10007307C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ missing alarm identifier", &v2, 0xCu);
}

void sub_10007314C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ Current timer not found!", &v3, 0xCu);
}

void sub_1000731C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) timerID];
  v7 = 138543874;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ starting timer: %{public}@ completed with error: %{public}@", &v7, 0x20u);
}

void sub_100073284(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) timerID];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ started timer: %{public}@", &v5, 0x16u);
}

void sub_100073334()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"HKFeatureIdentifier getHKFeatureIdentifierSleepCoaching(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTASleepCoordinator.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1000733AC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTASleepCoordinator.m" lineNumber:40 description:{@"Unable to find class %s", "HKHealthStore"}];

  __break(1u);
}

void sub_100073428(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *HealthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTASleepCoordinator.m" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1000734A8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHKSHQuickScheduleManagementViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTASleepCoordinator.m" lineNumber:39 description:{@"Unable to find class %s", "HKSHQuickScheduleManagementViewController"}];

  __break(1u);
}

void sub_100073524(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SleepHealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTASleepCoordinator.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1000735CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_10001A6E4(&_mh_execute_header, a2, a3, "%{public}@ didFailToContinueUserActivityWithType, error: %{public}@ ", *v3, *&v3[8], *&v3[16]);
}

void sub_1000736B4(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[MTACircleButton buttonWidthForSize:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s Missing window!!!", &v1, 0xCu);
}

void sub_10007374C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to reload alarm widget timeline, error: %{public}@", &v4, 0x16u);
}

void sub_1000737D8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAAlarmTableViewController.m" lineNumber:415 description:@"Unexpected number of sections wake"];
}

void sub_10007384C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAAlarmTableViewController.m" lineNumber:420 description:@"Unexpected number of sections regular"];
}

void sub_1000738E8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WorldClock activity resignCurrent %@", &v3, 0xCu);
}

void sub_10007396C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_10001A6E4(&_mh_execute_header, a2, a3, "%{public}@ error decoding latest event: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000739E4(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_10001A6E4(&_mh_execute_header, a2, a3, "%{public}@ error encoding: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100073B38()
{
  sub_100047990();
  [v0 row];
  sub_100047978();
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100073BB8()
{
  sub_100047990();
  [v1 row];
  sub_100047978();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Unable to get recent timer duration at index: %{public}ld. Current total is %{public}ld", v2, 0x16u);
}

void sub_100073C40(void *a1)
{
  [a1 row];
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100073CC4()
{
  sub_100047990();
  [v0 row];
  sub_100047978();
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100073D44(void *a1)
{
  [a1 row];
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100073DC8()
{
  sub_100047990();
  v6 = [*(v0 + 40) timerID];
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100073E78(uint64_t a1)
{
  v6 = [*(a1 + 40) timerID];
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100073F20(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTATimerTableViewController.m" lineNumber:897 description:@"Unexpected Siri tips controller instance"];
}

void sub_100073F94(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTATimerTableViewController.m" lineNumber:914 description:@"Unexpected Siri tips controller instance"];
}

void sub_100074030(void *a1)
{
  v1 = [a1 dataSource];
  [v1 numberOfActiveTimers];
  sub_10005A6BC();
  sub_100047968();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100074128(uint64_t a1)
{
  v6 = [*(a1 + 40) timerID];
  sub_100047968();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100074244(uint64_t a1, void *a2)
{
  [a2 state];
  sub_100047968();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000742DC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTATimerCollectionViewController.m" lineNumber:1498 description:@"Unexpected Siri tips controller instance"];
}

void sub_100074350(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTATimerCollectionViewController.m" lineNumber:1516 description:@"Unexpected Siri tips controller instance"];
}

void sub_1000743C4(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ Passing in invalid duration to picker: %f", &v3, 0x16u);
}

void sub_100074448(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAAlarmCollectionViewController.m" lineNumber:366 description:@"Invalid section for Alarm"];
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}