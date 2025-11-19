void sub_111C(id a1)
{
  qword_CD10 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSavedResetDate" readwriteResetKey:@"companionSavedResetDate" readonlyKey:@"gizmoSavedStates" readwriteKey:@"companionSavedStates"];

  _objc_release_x1();
}

void sub_11C0(id a1)
{
  qword_CD20 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSeenResetDate" readwriteResetKey:@"companionSeenResetDate" readonlyKey:@"gizmoSeenStates" readwriteKey:@"companionSeenStates"];

  _objc_release_x1();
}

void sub_2838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2854(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

intptr_t sub_2888(uint64_t a1, int a2, id a3)
{
  v4 = objc_retainBlock(a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2B88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_326C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_3D7C(id a1)
{
  qword_CD30 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.nanonews.sync"];

  _objc_release_x1();
}

void sub_3EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_3EBC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_CD48)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_4000;
    v4[4] = &unk_84C0;
    v4[5] = v4;
    v5 = off_84A8;
    v6 = 0;
    qword_CD48 = _sl_dlopen();
    v2 = v4[0];
    if (qword_CD48)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_41A0();
  }

  qword_CD40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_4000(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CD48 = result;
  return result;
}