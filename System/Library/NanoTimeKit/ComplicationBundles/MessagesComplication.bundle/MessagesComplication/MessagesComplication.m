uint64_t sub_23BD1D2D0(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  objc_msgSend_connectToDaemon(*(a1 + 32), a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v11, sel_startUnreadCountObservation, v7, v8, v9, v10);
}

void sub_23BD1D30C(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  if (objc_msgSend_isConnectedToDaemon(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 40);
    v24 = objc_msgSend_sharedRegistry(MEMORY[0x277D18D40], v7, v8, v9, v10, v11);
    v18 = objc_msgSend_unreadCount(v24, v13, v14, v15, v16, v17);
    objc_msgSend_setInitialUnreadCount_(v12, v19, v20, v21, v22, v23, v18);
  }
}

uint64_t sub_23BD1D49C(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  objc_msgSend_stopUnreadCountObservation(*(a1 + 32), a2, a3, a4, a5, a6);
  v12 = *(a1 + 32);

  return objc_msgSend_disconnectFromDaemon(v12, v7, v8, v9, v10, v11);
}

void sub_23BD1D658(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v7 = objc_msgSend_log(*(a1 + 32), a2, a3, a4, a5, a6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20CE0();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD1D708;
  block[3] = &unk_278B93128;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_23BD1D708(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_currentSubscribers(v7, a2, a3, a4, a5, a6);
  objc_msgSend_notifySubscribersAboutNewUnreadCount_(v7, v9, v10, v11, v12, v13, v8);

  v18 = *(a1 + 32);

  return MEMORY[0x2821F9670](v18, sel_setIsConnectedToDaemon_, v14, v15, v16, v17);
}

void sub_23BD1D93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD1D960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v7 = objc_msgSend_currentSubscribers(WeakRetained, v2, v3, v4, v5, v6);
    objc_msgSend_notifySubscribersAboutNewUnreadCount_(v13, v8, v9, v10, v11, v12, v7);

    WeakRetained = v13;
  }
}

void sub_23BD1DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD1DDE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23BD1DDFC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  *(*(*(a1 + 32) + 8) + 40) = objc_msgSend_firstObject(a2, a2, a3, a4, a5, a6);

  return MEMORY[0x2821F96F8]();
}

void sub_23BD1DF14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_23BD1E250(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setCommunicationPolicies_(WeakRetained, v4, v5, v6, v7, v8, v2);

  v20 = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_delegate(v20, v9, v10, v11, v12, v13);
  objc_msgSend_invalidateEntries(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_23BD1FC8C()
{
  qword_27E1C4168 = objc_alloc_init(CKMessagesComplicationImageProvider);

  return MEMORY[0x2821F96F8]();
}

void sub_23BD1FE9C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_23BD2012C(uint64_t a1, void *a2)
{
  v43 = a2;
  v8 = objc_msgSend_bubbleTintColor(CKMessagesComplicationSpecs, v3, v4, v5, v6, v7);
  objc_msgSend_set(v8, v9, v10, v11, v12, v13);

  objc_msgSend_drawInRect_(*(a1 + 32), v14, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  if (*(a1 + 80) == 1)
  {
    v20 = objc_msgSend_CGContext(v43, v15, v16, v17, v18, v19);
    CGContextSetBlendMode(v20, kCGBlendModeClear);
    v26 = objc_msgSend_bubbleText(*(a1 + 40), v21, v22, v23, v24, v25);
    objc_msgSend_bubbleTextOrigin(*(a1 + 40), v27, v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;
    v39 = objc_msgSend_textAttributes(*(a1 + 40), v36, v32, v34, v37, v38);
    objc_msgSend_drawAtPoint_withAttributes_(v26, v40, v33, v35, v41, v42, v39);
  }
}

void sub_23BD20BF0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_23BD1C000, a2, OS_LOG_TYPE_DEBUG, "added subscriber %{public}@", &v2, 0xCu);
}

void sub_23BD20C68(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_23BD1C000, a2, OS_LOG_TYPE_DEBUG, "removed subscriber %{public}@", &v2, 0xCu);
}

void sub_23BD20DE4()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BD1F6E8();
  _os_log_error_impl(&dword_23BD1C000, v0, OS_LOG_TYPE_ERROR, "unable to request communication policies with error: %{public}@", v1, 0xCu);
}

void sub_23BD20E58()
{
  sub_23BD1F6E8();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD20EC8()
{
  sub_23BD1F6E8();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD20F38()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD20F74()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD20FB0()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD21064(uint64_t a1, const char *a2, NSObject *a3, double a4, double a5, double a6, double a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a4, a5, a6, a7, a1);
  sub_23BD1F6E8();
  v11 = 2050;
  v12 = a2;
  _os_log_debug_impl(&dword_23BD1C000, a3, OS_LOG_TYPE_DEBUG, "creating template for family: %{public}@, unread: %{public}lu", v10, 0x16u);
}

void sub_23BD2111C()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}