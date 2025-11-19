void sub_240ECFCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  std::__shared_weak_count::__release_weak(v21);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
  if (v20)
  {
    dispatch_release(v20);
  }

  xpc_release(v19);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void abb::router::Client::State::reconnect_sync(abb::router::Client::State *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Reconnecting client", v3, 2u);
  }

  abb::router::Client::State::connect_sync(this);
}

void abb::router::Client::State::sendAction_sync(abb::router::Client::State *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(this + 112);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2 > 2)
    {
      v4 = "(unknown)";
    }

    else
    {
      v4 = (&off_278CBB470)[v2];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Sending client action [%s]", buf, 0xCu);
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    *buf = v5;
  }

  else
  {
    v6 = xpc_null_create();
    *buf = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_13;
    }
  }

  if (MEMORY[0x245CD2F50](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_14;
  }

  v7 = xpc_null_create();
LABEL_13:
  *buf = v7;
LABEL_14:
  xpc_release(v6);
  v8 = xpc_int64_create(v2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v9 = *buf;
  xpc_dictionary_set_value(*buf, "ClientAction", v8);
  v10 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v10);
  v11 = *(this + 33);
  if (v11 && (*(*v11 + 16))(v11))
  {
    (*(**(this + 33) + 40))(*(this + 33), buf);
    v9 = *buf;
  }

  else
  {
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", v14, 2u);
    }
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_240ED0054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Client::State::handleConnected_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is connected; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::register_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::register_sync(abb::router::Client::State *this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 26);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Registering client expectations; Client=0x%02x", buf, 8u);
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *buf = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *buf = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CD2F50](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_11;
  }

  v6 = xpc_null_create();
LABEL_10:
  *buf = v6;
LABEL_11:
  xpc_release(v5);
  v7 = this + 48;
  if (*(this + 71) < 0)
  {
    v7 = *v7;
  }

  v8 = xpc_string_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v9 = *buf;
  xpc_dictionary_set_value(*buf, "ClientName", v8);
  v10 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v10);
  xarray = 0xAAAAAAAAAAAAAAAALL;
  abb::router::Client::State::getRegisteredEvents_sync(this, &xarray);
  v11 = MEMORY[0x245CD2F50](xarray);
  v12 = MEMORY[0x277D86440];
  if (v11 == MEMORY[0x277D86440] && xpc_array_get_count(xarray))
  {
    v13 = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "RegisteredEvents", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  abb::router::Client::State::getRegisteredIndications_sync(this, &object);
  if (MEMORY[0x245CD2F50](object) == v12 && xpc_array_get_count(object))
  {
    v15 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "RegisteredIndications", v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  abb::router::Client::State::getWakeableIndications_sync(this, &v22);
  if (MEMORY[0x245CD2F50](v22) == v12 && xpc_array_get_count(v22))
  {
    v17 = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "RegisteredWakeables", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
  }

  v19 = *(this + 33);
  if (v19 && (*(*v19 + 16))(v19))
  {
    (*(**(this + 33) + 40))(*(this + 33), buf);
  }

  else
  {
    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_debug_impl(&dword_240E91000, v20, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", v25, 2u);
    }
  }

  xpc_release(v22);
  xpc_release(object);
  xpc_release(xarray);
  xpc_release(*buf);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_240ED052C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Client::State::handleRegistered_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  *(this + 29) = 2;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is registered; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::sendAction_sync(this);
    abb::router::Client::State::trySendingClientMessage_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::trySendingClientMessage_sync(abb::router::Client::State *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEBUG, "#D Try sending client message from init-queue", buf, 2u);
    if ((*(this + 112) | 2) == 2)
    {
      goto LABEL_39;
    }
  }

  else if ((*(this + 112) | 2) == 2)
  {
    goto LABEL_39;
  }

  v3 = *(this + 33);
  if (v3 && (*(*v3 + 16))(v3) && *(this + 26))
  {
    if (*(this + 29) == 2)
    {
      while (1)
      {
        if (!*(this + 32))
        {
          goto LABEL_39;
        }

        v4 = *(*(this + 28) + 8 * (*(this + 31) / 0x18uLL)) + 168 * (*(this + 31) % 0x18uLL);
        v5 = *(this + 26);
        *(v4 + 84) = 0;
        v6 = *(v4 + 8);
        if (v6)
        {
          v7 = *v6;
          if ((*(*(v4 + 8) + 8) - v7) >= 0x10)
          {
            *(v7 + 13) = v5;
          }
        }

        object = 0xAAAAAAAAAAAAAAAALL;
        abb::router::createReqDict(&object, v4);
        v8 = *(this + 33);
        if (!v8 || !(*(*v8 + 16))(v8))
        {
          v12 = *(this + 5);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", buf, 2u);
          }

          v13 = 0;
          goto LABEL_36;
        }

        (*(**(this + 33) + 40))(*(this + 33), &object);
        v9 = *(this + 5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(v4);
          v10 = (v4 + 112);
          if (*(v4 + 135) < 0)
          {
            v10 = *v10;
          }

          *buf = 136315138;
          v24 = v10;
          _os_log_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEFAULT, "#I Sent client message (from init queue): %s", buf, 0xCu);
        }

        v11 = *(v4 + 160);
        if (v11)
        {
          if (v11 == v4 + 136)
          {
            v22 = v21;
            (*(**(v4 + 160) + 24))(*(v4 + 160), v21);
            goto LABEL_25;
          }

          v11 = (*(*v11 + 16))(v11);
        }

        v22 = v11;
LABEL_25:
        abb::router::Client::State::trackConfirmation_sync(this, &object, v21);
        if (v22 == v21)
        {
          (*(*v22 + 32))(v22);
        }

        else if (v22)
        {
          (*(*v22 + 40))();
        }

        v14 = (*(*(this + 28) + 8 * (*(this + 31) / 0x18uLL)) + 168 * (*(this + 31) % 0x18uLL));
        v15 = *(v14 + 20);
        if (v15 == (v14 + 136))
        {
          (*(*v15 + 32))(v15);
        }

        else if (v15)
        {
          (*(*v15 + 40))(v15);
        }

        abb::router::Message::~Message(v14);
        v16 = vaddq_s64(*(this + 248), xmmword_240EDF890);
        *(this + 248) = v16;
        if (v16.i64[0] >= 0x30uLL)
        {
          operator delete(**(this + 28));
          *(this + 28) += 8;
          *(this + 31) -= 24;
        }

        v13 = 1;
LABEL_36:
        xpc_release(object);
        if ((v13 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v19 = "#D Client not registered yet; will retry later";
LABEL_45:
      _os_log_debug_impl(&dword_240E91000, v17, OS_LOG_TYPE_DEBUG, v19, buf, 2u);
    }
  }

  else
  {
    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v19 = "#D Client not connected yet; will retry later";
      goto LABEL_45;
    }
  }

LABEL_39:
  v18 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::handleActive_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is activated; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::notifyStartedEvent_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

_BYTE *abb::router::Client::State::notifyStartedEvent_sync(_BYTE *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this + 128;
    do
    {
      v3 = *(v1 + 32);
      if ((v3 & 0x80000000) == 0)
      {
        v2 = v1;
      }

      v1 = *(v1 + ((v3 >> 28) & 8));
    }

    while (v1);
    if (v2 != this + 128 && *(v2 + 8) <= 0)
    {
      v5 = *(this + 9);
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = this;
        if (v6 == v2 + 40)
        {
          v16 = v15;
          (*(*v6 + 24))(v6, v15);
        }

        else
        {
          v16 = (*(*v6 + 16))(v6);
        }

        this = v7;
        LOBYTE(v17) = 0;
        v19 = 0;
        v8 = *(v7 + 96);
        if (v8 != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v16 = 0;
        LOBYTE(v17) = 0;
        v19 = 0;
        v8 = this[96];
        if (v8 != 1)
        {
          goto LABEL_19;
        }
      }

      v9 = *(this + 11);
      v17 = *(this + 10);
      v18 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = 1;
LABEL_19:
      v10 = operator new(0x38uLL);
      v11 = v16;
      if (v16)
      {
        if (v16 != v15)
        {
          v10[3] = v16;
          v16 = 0;
          *(v10 + 32) = 0;
          *(v10 + 48) = 0;
          if (!v8)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v10[3] = v10;
        v13 = v10;
        (*(*v11 + 24))(v11);
        v14 = v19;
        v10 = v13;
        v13[32] = 0;
        v13[48] = 0;
        if ((v14 & 1) == 0)
        {
LABEL_23:
          dispatch_async_f(v5, v10, dispatch::async<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
          if (v19 == 1 && v18)
          {
            std::__shared_weak_count::__release_weak(v18);
          }

          this = v16;
          if (v16 == v15)
          {
            this = (*(*v16 + 32))(v16);
          }

          else if (v16)
          {
            this = (*(*v16 + 40))();
          }

          goto LABEL_8;
        }
      }

      else
      {
        v10[3] = 0;
        *(v10 + 32) = 0;
        *(v10 + 48) = 0;
        if (!v8)
        {
          goto LABEL_23;
        }
      }

LABEL_22:
      v12 = v18;
      v10[4] = v17;
      v10[5] = v12;
      v17 = 0;
      v18 = 0;
      *(v10 + 48) = 1;
      goto LABEL_23;
    }
  }

LABEL_8:
  v4 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_240ED0F80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void abb::router::Client::State::handleStopped_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is stopped; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::notifyStoppedEvent_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

_BYTE *abb::router::Client::State::notifyStoppedEvent_sync(_BYTE *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this + 128;
    do
    {
      if (*(v1 + 32) >= 1)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 32) < 1));
    }

    while (v1);
    if (v2 != this + 128 && *(v2 + 8) <= 1)
    {
      v3 = *(this + 9);
      v4 = *(v2 + 8);
      if (v4)
      {
        v5 = this;
        if (v4 == v2 + 40)
        {
          v15 = v14;
          (*(*v4 + 24))(v4, v14);
        }

        else
        {
          v15 = (*(*v4 + 16))(v4);
        }

        this = v5;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = *(v5 + 96);
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = this[96];
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      v7 = *(this + 11);
      v16 = *(this + 10);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 1;
LABEL_18:
      v8 = operator new(0x38uLL);
      v9 = v15;
      if (v15)
      {
        if (v15 != v14)
        {
          v8[3] = v15;
          v15 = 0;
          *(v8 + 32) = 0;
          *(v8 + 48) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v8[3] = v8;
        v12 = v8;
        (*(*v9 + 24))(v9);
        v13 = v18;
        v8 = v12;
        v12[32] = 0;
        v12[48] = 0;
        if ((v13 & 1) == 0)
        {
LABEL_22:
          dispatch_async_f(v3, v8, dispatch::async<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
          if (v18 == 1 && v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          this = v15;
          if (v15 == v14)
          {
            this = (*(*v15 + 32))(v15);
          }

          else if (v15)
          {
            this = (*(*v15 + 40))();
          }

          goto LABEL_31;
        }
      }

      else
      {
        v8[3] = 0;
        *(v8 + 32) = 0;
        *(v8 + 48) = 0;
        if (!v6)
        {
          goto LABEL_22;
        }
      }

LABEL_21:
      v10 = v17;
      v8[4] = v16;
      v8[5] = v10;
      v16 = 0;
      v17 = 0;
      *(v8 + 48) = 1;
      goto LABEL_22;
    }
  }

LABEL_31:
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_240ED130C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void abb::router::Client::State::handleSleep_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is sleeping; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::notifyWillSleepEvent_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::notifyWillSleepEvent_sync(abb::router::Client::State *this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v3 = v2;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = this + 128;
    do
    {
      if (v4[8] >= 2)
      {
        v5 = v4;
      }

      v4 = *&v4[2 * (v4[8] < 2)];
    }

    while (v4);
    if (v5 != this + 128 && *(v5 + 8) <= 2)
    {
      v6 = *(this + 9);
      group = v2;
      if (v2)
      {
        dispatch_retain(v2);
        dispatch_group_enter(v3);
      }

      v7 = *(v5 + 8);
      if (v7)
      {
        if (v7 == v5 + 40)
        {
          v27 = v26;
          (*(*v7 + 24))(v7, v26);
LABEL_15:
          LOBYTE(v28) = 0;
          v30 = 0;
          v8 = *(this + 96);
          if (v8 == 1)
          {
            v9 = *(this + 11);
            v28 = *(this + 10);
            v29 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = 1;
          }

          v10 = operator new(0x40uLL);
          v11 = v27;
          *v10 = group;
          v24 = 0xAAAAAAAAAAAAAAAALL;
          group = 0;
          if (v11)
          {
            if (v11 == v26)
            {
              v10[4] = v10 + 1;
              (*(*v11 + 24))(v11);
              v22 = v30;
              *(v10 + 40) = 0;
              *(v10 + 56) = 0;
              if ((v22 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v10[4] = v11;
              v27 = 0;
              *(v10 + 40) = 0;
              *(v10 + 56) = 0;
              if (!v8)
              {
LABEL_23:
                v23 = 0;
                v24 = 0;
                dispatch_async_f(v6, v10, dispatch::async<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
                std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&v23);
                std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&v24);
                if (v30 == 1 && v29)
                {
                  std::__shared_weak_count::__release_weak(v29);
                }

                if (v27 == v26)
                {
                  (*(*v27 + 32))(v27);
                  v13 = group;
                  if (!group)
                  {
                    goto LABEL_36;
                  }
                }

                else
                {
                  if (v27)
                  {
                    (*(*v27 + 40))();
                  }

                  v13 = group;
                  if (!group)
                  {
                    goto LABEL_36;
                  }
                }

                dispatch_group_leave(v13);
                if (group)
                {
                  dispatch_release(group);
                }

                goto LABEL_36;
              }
            }
          }

          else
          {
            v10[4] = 0;
            *(v10 + 40) = 0;
            *(v10 + 56) = 0;
            if (!v8)
            {
              goto LABEL_23;
            }
          }

          v12 = v29;
          v10[5] = v28;
          v10[6] = v12;
          v28 = 0;
          v29 = 0;
          *(v10 + 56) = 1;
          goto LABEL_23;
        }

        v7 = (*(*v7 + 16))(v7);
      }

      v27 = v7;
      goto LABEL_15;
    }
  }

LABEL_36:
  v14 = *(this + 2);
  if (!v14 || (v15 = *(this + 1), (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  p_shared_weak_owners = &v16->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v19 = *(this + 3);
  v20 = operator new(0x18uLL);
  *v20 = this;
  v20[1] = v15;
  v20[2] = v17;
  dispatch_group_notify_f(v3, v19, v20, dispatch::detail::group_notify<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_1>(dispatch_group_s *,dispatch_queue_s *,abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::__shared_weak_count::__release_weak(v17);
  if (v3)
  {
    dispatch_release(v3);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_240ED179C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Client::State::handleWakeup_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is waking up; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::notifyIsAwakeEvent_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

_BYTE *abb::router::Client::State::notifyIsAwakeEvent_sync(_BYTE *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this + 128;
    do
    {
      if (*(v1 + 32) >= 3)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 32) < 3));
    }

    while (v1);
    if (v2 != this + 128 && *(v2 + 8) <= 3)
    {
      v3 = *(this + 9);
      v4 = *(v2 + 8);
      if (v4)
      {
        v5 = this;
        if (v4 == v2 + 40)
        {
          v15 = v14;
          (*(*v4 + 24))(v4, v14);
        }

        else
        {
          v15 = (*(*v4 + 16))(v4);
        }

        this = v5;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = *(v5 + 96);
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = this[96];
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      v7 = *(this + 11);
      v16 = *(this + 10);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 1;
LABEL_18:
      v8 = operator new(0x38uLL);
      v9 = v15;
      if (v15)
      {
        if (v15 != v14)
        {
          v8[3] = v15;
          v15 = 0;
          *(v8 + 32) = 0;
          *(v8 + 48) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v8[3] = v8;
        v12 = v8;
        (*(*v9 + 24))(v9);
        v13 = v18;
        v8 = v12;
        v12[32] = 0;
        v12[48] = 0;
        if ((v13 & 1) == 0)
        {
LABEL_22:
          dispatch_async_f(v3, v8, dispatch::async<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
          if (v18 == 1 && v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          this = v15;
          if (v15 == v14)
          {
            this = (*(*v15 + 32))(v15);
          }

          else if (v15)
          {
            this = (*(*v15 + 40))();
          }

          goto LABEL_31;
        }
      }

      else
      {
        v8[3] = 0;
        *(v8 + 32) = 0;
        *(v8 + 48) = 0;
        if (!v6)
        {
          goto LABEL_22;
        }
      }

LABEL_21:
      v10 = v17;
      v8[4] = v16;
      v8[5] = v10;
      v16 = 0;
      v17 = 0;
      *(v8 + 48) = 1;
      goto LABEL_22;
    }
  }

LABEL_31:
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_240ED1B74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void abb::router::Client::State::handleDown_sync(abb::router::Client::State *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 26);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client is shutdown; Client=0x%02x", v6, 8u);
    if (*(this + 112) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    abb::router::Client::State::handleError_sync(this);
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 112) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::handleError_sync(abb::router::Client::State *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 26);
    v13 = 67109120;
    v14 = v3;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Client link is down; Client=0x%02x", &v13, 8u);
  }

  if (*(this + 112) == 1)
  {
    if (!*(this + 35))
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(this + 26);
        v13 = 67109120;
        v14 = v5;
        _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Start listening to router server ready notification; Client=0x%02x", &v13, 8u);
      }

      v6 = operator new(0x10uLL);
      v7 = *(this + 2);
      if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      *v6 = v8;
      v6[1] = v9;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(this + 35) = v6;
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v9;
        (v9->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, *(this + 35), abb::router::Client::State::sServerReadyNotification, @"kMipcRouterServerReadyNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    abb::router::Client::State::notifyErrorEvent_sync(this);
    *(this + 29) = 0;
    *(this + 26) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

_BYTE *abb::router::Client::State::notifyErrorEvent_sync(_BYTE *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this + 128;
    do
    {
      if (*(v1 + 32) >= 4)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 32) < 4));
    }

    while (v1);
    if (v2 != this + 128 && *(v2 + 8) <= 4)
    {
      v3 = *(this + 9);
      v4 = *(v2 + 8);
      if (v4)
      {
        v5 = this;
        if (v4 == v2 + 40)
        {
          v15 = v14;
          (*(*v4 + 24))(v4, v14);
        }

        else
        {
          v15 = (*(*v4 + 16))(v4);
        }

        this = v5;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = *(v5 + 96);
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        LOBYTE(v16) = 0;
        v18 = 0;
        v6 = this[96];
        if (v6 != 1)
        {
          goto LABEL_18;
        }
      }

      v7 = *(this + 11);
      v16 = *(this + 10);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 1;
LABEL_18:
      v8 = operator new(0x38uLL);
      v9 = v15;
      if (v15)
      {
        if (v15 != v14)
        {
          v8[3] = v15;
          v15 = 0;
          *(v8 + 32) = 0;
          *(v8 + 48) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v8[3] = v8;
        v12 = v8;
        (*(*v9 + 24))(v9);
        v13 = v18;
        v8 = v12;
        v12[32] = 0;
        v12[48] = 0;
        if ((v13 & 1) == 0)
        {
LABEL_22:
          dispatch_async_f(v3, v8, dispatch::async<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
          if (v18 == 1 && v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          this = v15;
          if (v15 == v14)
          {
            this = (*(*v15 + 32))(v15);
          }

          else if (v15)
          {
            this = (*(*v15 + 40))();
          }

          goto LABEL_31;
        }
      }

      else
      {
        v8[3] = 0;
        *(v8 + 32) = 0;
        *(v8 + 48) = 0;
        if (!v6)
        {
          goto LABEL_22;
        }
      }

LABEL_21:
      v10 = v17;
      v8[4] = v16;
      v8[5] = v10;
      v16 = 0;
      v17 = 0;
      *(v8 + 48) = 1;
      goto LABEL_22;
    }
  }

LABEL_31:
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_240ED20D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL abb::router::Client::State::sendMessage_sync(abb::router::Client::State *this, const xpc::dict *a2)
{
  v3 = *(this + 33);
  if (v3 && (*(*v3 + 16))(v3))
  {
    (*(**(this + 33) + 40))(*(this + 33), a2);
    return 1;
  }

  else
  {
    v6 = *(this + 5);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", v7, 2u);
      return 0;
    }
  }

  return result;
}

void abb::router::Client::State::getRegisteredEvents_sync(abb::router::Client::State *this@<X0>, xpc_object_t *a2@<X8>)
{
  if (!*(this + 17))
  {
    *a2 = xpc_null_create();
    return;
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CD2F50](v5) == MEMORY[0x277D86440])
  {
    xpc_retain(v5);
    goto LABEL_11;
  }

  v6 = xpc_null_create();
LABEL_10:
  *a2 = v6;
LABEL_11:
  xpc_release(v5);
  v7 = *(this + 15);
  v8 = this + 128;
  if (v7 != this + 128)
  {
    do
    {
      v9 = *(v7 + 8);
      if ((v9 & 0xFFFFFFFE) == 2)
      {
        v10 = xpc_int64_create(v9);
        if (!v10)
        {
          v10 = xpc_null_create();
        }

        xpc_array_append_value(*a2, v10);
        xpc_release(v10);
      }

      v11 = *(v7 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v7 + 2);
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }
}

void sub_240ED232C(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

void abb::router::Client::State::getRegisteredIndications_sync(abb::router::Client::State *this@<X0>, xpc_object_t *a2@<X8>)
{
  if (!*(this + 20))
  {
    *a2 = xpc_null_create();
    return;
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CD2F50](v5) == MEMORY[0x277D86440])
  {
    xpc_retain(v5);
    goto LABEL_11;
  }

  v6 = xpc_null_create();
LABEL_10:
  *a2 = v6;
LABEL_11:
  xpc_release(v5);
  v7 = *(this + 18);
  v8 = this + 152;
  if (v7 != this + 152)
  {
    do
    {
      v9 = xpc_int64_create(*(v7 + 8));
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v9);
      xpc_release(v9);
      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }
}

void sub_240ED24D8(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

void abb::router::Client::State::getWakeableIndications_sync(abb::router::Client::State *this@<X0>, xpc_object_t *a2@<X8>)
{
  if (!*(this + 23))
  {
    *a2 = xpc_null_create();
    return;
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CD2F50](v5) == MEMORY[0x277D86440])
  {
    xpc_retain(v5);
    goto LABEL_11;
  }

  v6 = xpc_null_create();
LABEL_10:
  *a2 = v6;
LABEL_11:
  xpc_release(v5);
  v7 = *(this + 21);
  v8 = this + 176;
  if (v7 != this + 176)
  {
    do
    {
      v9 = xpc_int64_create(*(v7 + 7));
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v9);
      xpc_release(v9);
      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }
}

void sub_240ED2650(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::regEventHandler(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v13 = v12;
      (*(*v5 + 24))(v5, v12);
    }

    else
    {
      v13 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 0;
  v6 = operator new(0x30uLL);
  *v6 = &unk_2852C9810;
  v6[2] = a2;
  v7 = v13;
  if (v13)
  {
    if (v13 == v12)
    {
      *(v6 + 5) = v6 + 4;
      v8 = v6;
      (*(*v7 + 24))(v7);
      v6 = v8;
    }

    else
    {
      *(v6 + 5) = v13;
      v13 = 0;
    }
  }

  else
  {
    *(v6 + 5) = 0;
  }

  v15 = v6;
  abb::router::Client::State::regEventHandler(v4, a2, v14);
  if (v15 != v14)
  {
    if (v15)
    {
      (*(*v15 + 40))();
    }

    result = v13;
    if (v13 != v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (*(*v15 + 32))(v15);
  result = v13;
  if (v13 == v12)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

{
  return abb::router::Client::State::regEventHandler(*(a1 + 8), a2, a3);
}

void sub_240ED28A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abb::router::Client::State::regEventHandler(void *a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v18 = v17;
      (*(*v4 + 24))(v4, v17);
    }

    else
    {
      v18 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x30uLL);
  *v9 = a1;
  v9[2] = a2;
  v10 = v18;
  if (v18)
  {
    if (v18 == v17)
    {
      *(v9 + 5) = v9 + 4;
      (*(*v10 + 24))(v10);
    }

    else
    {
      *(v9 + 5) = v18;
      v18 = 0;
    }
  }

  else
  {
    *(v9 + 5) = 0;
  }

  v11 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v9;
  v12[1] = v6;
  v12[2] = v8;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0>(abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0,std::default_delete<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v18;
    if (v18 != v17)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  result = v18;
  if (v18 == v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240ED2B0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)const::$_0::~$_0(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void abb::router::Client::State::deregEventHandler(void *a1, int a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[2] = a2;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0>(abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t abb::router::Client::regIndHandlerInternal(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v10 = v9;
      v5 = a2;
      v6 = v3;
      (*(*v4 + 24))(v4, v9);
      v3 = v6;
      a2 = v5;
    }

    else
    {
      v10 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  abb::router::Client::State::regIndHandlerInternal(v3, a2, v9);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240ED2E04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t abb::router::Client::State::regIndHandlerInternal(void *a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v18 = v17;
      (*(*v4 + 24))(v4, v17);
    }

    else
    {
      v18 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x30uLL);
  *v9 = a1;
  v9[2] = a2;
  v10 = v18;
  if (v18)
  {
    if (v18 == v17)
    {
      *(v9 + 5) = v9 + 4;
      (*(*v10 + 24))(v10);
    }

    else
    {
      *(v9 + 5) = v18;
      v18 = 0;
    }
  }

  else
  {
    *(v9 + 5) = 0;
  }

  v11 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v9;
  v12[1] = v6;
  v12[2] = v8;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0>(abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v18;
    if (v18 != v17)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  result = v18;
  if (v18 == v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240ED3050(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Client::State::deregIndHandler(abb::router::Client::State *this, int a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[2] = a2;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::deregIndHandler::$_0>(abb::router::Client::State::deregIndHandler::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::deregIndHandler::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::deregIndHandler::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Client::State::setIndShouldWake(abb::router::Client::State *this, int a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[2] = a2;
  *(v10 + 12) = a3;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0>(abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void abb::router::Client::State::getRegisteredIndications(abb::router::Client::State *this@<X0>, void *a2@<X8>)
{
  v5 = this;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6Client5StateEE20execute_wrapped_syncIZNKS4_24getRegisteredIndicationsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v6[3] = &__block_descriptor_tmp_58;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = this + 24;
  v2 = *(this + 3);
  v4 = a2 + 1;
  if (*(v3 + 1))
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke_0;
    v11 = &__block_descriptor_tmp_60;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *v4 = 0;
    a2[2] = 0;
    *a2 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke_0;
    v11 = &__block_descriptor_tmp_59;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }
}

void abb::router::Client::State::handleLinkConnect(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = xpc_null_create();
  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0>(abb::router::Client::State::handleLinkConnect(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v9);
}

void abb::router::Client::State::handleLinkMessage(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = xpc_null_create();
  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0>(abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v9);
}

void abb::router::Client::State::handleServerError(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = xpc_null_create();
  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleServerError(xpc::object)::$_0>(abb::router::Client::State::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleServerError(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleServerError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v9);
}

void abb::router::Client::State::handleStatus_sync(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 104);
          v16 = 67109120;
          v17 = v10;
          _os_log_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEFAULT, "#I Client is stopped; Client=0x%02x", &v16, 8u);
        }

        if (*(a1 + 112) == 1)
        {
          abb::router::Client::State::notifyStoppedEvent_sync(a1);
        }

        break;
      case 5:
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 104);
          v16 = 67109120;
          v17 = v14;
          _os_log_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEFAULT, "#I Client is sleeping; Client=0x%02x", &v16, 8u);
        }

        if (*(a1 + 112) == 1)
        {
          abb::router::Client::State::notifyWillSleepEvent_sync(a1);
        }

        break;
      case 7:
        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 104);
          v16 = 67109120;
          v17 = v6;
          _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Client is waking up; Client=0x%02x", &v16, 8u);
        }

        if (*(a1 + 112) == 1)
        {
          abb::router::Client::State::notifyIsAwakeEvent_sync(a1);
        }

        break;
    }
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      *(a1 + 116) = 2;
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 104);
        v16 = 67109120;
        v17 = v12;
        _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Client is registered; Client=0x%02x", &v16, 8u);
      }

      if (*(a1 + 112) == 1)
      {
        abb::router::Client::State::sendAction_sync(a1);
        abb::router::Client::State::trySendingClientMessage_sync(a1);
      }
    }

    else if (a2 == 3)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 104);
        v16 = 67109120;
        v17 = v4;
        _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Client is activated; Client=0x%02x", &v16, 8u);
      }

      if (*(a1 + 112) == 1)
      {
        abb::router::Client::State::notifyStartedEvent_sync(a1);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 104);
      v16 = 67109120;
      v17 = v8;
      _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Client is shutdown; Client=0x%02x", &v16, 8u);
    }

    if (*(a1 + 112) == 1)
    {
      abb::router::Client::State::handleError_sync(a1);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void abb::router::Client::State::handleConfirmation_sync(uint64_t a1, xpc_object_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  value = xpc_dictionary_get_value(*a2, "TrxId");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 200);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = a1 + 200;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 200 || v5 < *(v7 + 32))
  {
LABEL_13:
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 104);
      LODWORD(object) = 67109376;
      HIDWORD(object) = v5;
      v44 = 1024;
      v45 = v12;
      _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Confirmation handler missing for TrxId=%u; may not be a problem; Client=0x%02x", &object, 0xEu);
    }

LABEL_15:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v42[3] = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = v14;
  v42[2] = v14;
  v41 = v14;
  v42[0] = v14;
  v39 = v14;
  v40 = v14;
  v37 = v14;
  v38 = v14;
  v15 = xpc_dictionary_get_value(*a2, "Confirmation");
  xdata = v15;
  if (v15)
  {
    xpc_retain(v15);
    v16 = xdata;
  }

  else
  {
    v16 = xpc_null_create();
    xdata = v16;
  }

  if (MEMORY[0x245CD2F50](v16) == MEMORY[0x277D864B0])
  {
    v18 = 94;
    v17 = std::generic_category();
    goto LABEL_23;
  }

  if (MEMORY[0x245CD2F50](xdata) != MEMORY[0x277D86458])
  {
    LODWORD(v18) = xpc::dyn_cast_or_default();
    v17 = std::generic_category();
    v18 = v18;
LABEL_23:
    *&v40 = 0;
    BYTE8(v40) = 0;
    LOBYTE(v41) = 0;
    BYTE8(v41) = 0;
    BYTE12(v41) = 0;
    *&v37 = &unk_2852C94E8;
    *(&v37 + 1) = 0;
    LODWORD(v42[0]) = 0;
    memset(v42 + 8, 0, 48);
    *&v38 = 0;
    *(&v38 + 1) = v18;
    *&v39 = v17;
    BYTE8(v39) = 1;
    BYTE4(v42[0]) = 0;
    goto LABEL_25;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  length = xpc_data_get_length(xdata);
  abb::router::Message::Message(&v37, bytes_ptr, length);
LABEL_25:
  xpc_release(xdata);
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v21;
  v51 = v21;
  v22 = *(v7 + 64);
  if (!v22)
  {
    *(&v51 + 1) = 0;
    v23 = *(a1 + 72);
    goto LABEL_33;
  }

  if (v22 == (v7 + 40))
  {
    *(&v51 + 1) = &v50;
    (*(*v22 + 3))(v22, &v50);
    v22 = *(&v51 + 1);
    v23 = *(a1 + 72);
    if (*(&v51 + 1))
    {
      goto LABEL_31;
    }

LABEL_33:
    p_object = v22;
    goto LABEL_34;
  }

  v22 = (*(*v22 + 2))(v22);
  *(&v51 + 1) = v22;
  v23 = *(a1 + 72);
  if (!v22)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v22 != &v50)
  {
    v22 = (*(*v22 + 2))(v22);
    goto LABEL_33;
  }

  p_object = &object;
  (*(*v22 + 3))(v22, &object);
LABEL_34:
  abb::router::Message::Message(v47, &v37);
  LOBYTE(v48) = 0;
  v49 = 0;
  if (*(a1 + 96) == 1)
  {
    v24 = *(a1 + 88);
    *&v48 = *(a1 + 80);
    *(&v48 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
    }

    v49 = 1;
  }

  v25 = operator new(0xC0uLL);
  v26 = p_object;
  if (p_object)
  {
    if (p_object == &object)
    {
      *(v25 + 3) = v25;
      (*(*v26 + 3))(v26, v25);
    }

    else
    {
      *(v25 + 3) = p_object;
      p_object = 0;
    }
  }

  else
  {
    *(v25 + 3) = 0;
  }

  abb::router::Message::Message((v25 + 32), v47);
  v25[168] = 0;
  v25[184] = 0;
  v27 = v49;
  if (v49 == 1)
  {
    *(v25 + 168) = v48;
    v48 = 0uLL;
    v25[184] = v27;
  }

  dispatch_async_f(v23, v25, dispatch::async<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1,std::default_delete<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (v49 == 1 && *(&v48 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v48 + 1));
  }

  abb::router::Message::~Message(v47);
  if (p_object == &object)
  {
    (*(*p_object + 4))(p_object);
    v28 = *(v7 + 8);
    if (!v28)
    {
LABEL_56:
      v30 = v7;
      do
      {
        v29 = v30[2];
        v31 = *v29 == v30;
        v30 = v29;
      }

      while (!v31);
      goto LABEL_59;
    }
  }

  else
  {
    if (p_object)
    {
      (*(*p_object + 5))();
    }

    v28 = *(v7 + 8);
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  do
  {
    v29 = v28;
    v28 = *v28;
  }

  while (v28);
LABEL_59:
  if (*(a1 + 192) == v7)
  {
    *(a1 + 192) = v29;
  }

  v32 = *(a1 + 200);
  --*(a1 + 208);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v32, v7);
  v33 = *(v7 + 64);
  if (v33 == v7 + 40)
  {
    (*(*v33 + 32))(v33);
    operator delete(v7);
    v34 = *(&v51 + 1);
    if (*(&v51 + 1) != &v50)
    {
LABEL_65:
      if (v34)
      {
        (*(*v34 + 40))(v34);
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v33)
    {
      (*(*v33 + 40))(v33);
    }

    operator delete(v7);
    v34 = *(&v51 + 1);
    if (*(&v51 + 1) != &v50)
    {
      goto LABEL_65;
    }
  }

  (*(*v34 + 32))(v34);
LABEL_69:
  abb::router::Message::~Message(&v37);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_240ED4028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, xpc_object_t a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Client::State::handleIndication_sync(uint64_t a1, xpc_object_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 112) != 1 || !xpc_dictionary_get_value(*a2, "MsgId"))
  {
    goto LABEL_43;
  }

  value = xpc_dictionary_get_value(*a2, "MsgId");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = a1 + 152;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 152 || v5 < *(v7 + 32))
  {
LABEL_14:
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 104);
      LODWORD(object) = 67109376;
      HIDWORD(object) = v5;
      v30 = 1024;
      v31 = v12;
      _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Indication handler missing for IndId=%ul; may not be a problem; Client=0x%02x", &object, 0xEu);
    }

    goto LABEL_43;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 104);
    LODWORD(object) = 67109376;
    HIDWORD(object) = v5;
    v30 = 1024;
    v31 = v26;
    _os_log_debug_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEBUG, "#D Indication handler found for IndId=%ul; Client=0x%02x", &object, 0xEu);
  }

  if (xpc_dictionary_get_value(*a2, "Indication"))
  {
    v14 = xpc_dictionary_get_value(*a2, "Indication");
    bytes_ptr = xpc_data_get_bytes_ptr(v14);
    v16 = xpc_dictionary_get_value(*a2, "Indication");
    length = xpc_data_get_length(v16);
    v28 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[6] = v18;
    v27[7] = v18;
    v27[4] = v18;
    v27[5] = v18;
    v27[2] = v18;
    v27[3] = v18;
    v27[0] = v18;
    v27[1] = v18;
    abb::router::Message::Message(v27, bytes_ptr, length);
    v19 = *(a1 + 72);
    v20 = *(v7 + 64);
    if (v20)
    {
      if (v20 == v7 + 40)
      {
        p_object = &object;
        (*(*v20 + 24))(v20, &object);
        goto LABEL_24;
      }

      v20 = (*(*v20 + 16))(v20);
    }

    p_object = v20;
LABEL_24:
    abb::router::Message::Message(v33, v27);
    LOBYTE(v34) = 0;
    v35 = 0;
    if (*(a1 + 96) == 1)
    {
      v21 = *(a1 + 88);
      *&v34 = *(a1 + 80);
      *(&v34 + 1) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
      }

      v35 = 1;
    }

    v22 = operator new(0xC0uLL);
    v23 = p_object;
    if (p_object)
    {
      if (p_object == &object)
      {
        *(v22 + 3) = v22;
        (*(*v23 + 3))(v23, v22);
      }

      else
      {
        *(v22 + 3) = p_object;
        p_object = 0;
      }
    }

    else
    {
      *(v22 + 3) = 0;
    }

    abb::router::Message::Message((v22 + 32), v33);
    v22[168] = 0;
    v22[184] = 0;
    v24 = v35;
    if (v35 == 1)
    {
      *(v22 + 168) = v34;
      v34 = 0uLL;
      v22[184] = v24;
    }

    dispatch_async_f(v19, v22, dispatch::async<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0,std::default_delete<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (v35 == 1 && *(&v34 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v34 + 1));
    }

    abb::router::Message::~Message(v33);
    if (p_object == &object)
    {
      (*(*p_object + 4))(p_object);
    }

    else if (p_object)
    {
      (*(*p_object + 5))();
    }

    abb::router::Message::~Message(v27);
  }

LABEL_43:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_240ED4510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Client::State::trackConfirmation_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  value = xpc_dictionary_get_value(*a2, "TrxId");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (!v6)
  {
    return;
  }

  v8 = (a1 + 200);
  v7 = *(a1 + 200);
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 32);
        if (v6 >= v10)
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_12;
        }
      }

      if (v10 >= v6)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        v8 = v9 + 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = (a1 + 200);
LABEL_12:
    v11 = v9;
    v9 = operator new(0x48uLL);
    *(v9 + 8) = v6;
    v9[8] = 0;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v11;
    *v8 = v9;
    v12 = **(a1 + 192);
    if (v12)
    {
      *(a1 + 192) = v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 200), v9);
    ++*(a1 + 208);
  }

  v15 = v9[8];
  v14 = v9 + 8;
  v13 = v15;
  *v14 = 0;
  if (v15 != v14 - 3)
  {
    if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    v16 = (a3 + 24);
    v17 = *(a3 + 24);
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_22:
    v16 = v14;
    goto LABEL_23;
  }

  (*(*v13 + 32))(v13);
  v16 = (a3 + 24);
  v17 = *(a3 + 24);
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v17 != a3)
  {
    *v14 = v17;
LABEL_23:
    *v16 = 0;
    return;
  }

  *v14 = v14 - 3;
  (*(**v16 + 24))(*v16, v14 - 3);
}

uint64_t abb::router::Client::State::sendClientMessage_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v7 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Received request from client; %s", buf, 0xCu);
  }

  if (*(a1 + 112) == 2)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(a2);
      v12 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Canceling request as client is stopped; %s", buf, 0xCu);
    }

    v13 = *(a3 + 24);
    if (v13)
    {
      if (v13 == a3)
      {
        v58 = v57;
        (*(*v13 + 24))(v13, v57);
      }

      else
      {
        v58 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator()(a1, v57);
    result = v58;
    if (v58 != v57)
    {
      goto LABEL_89;
    }

    v27 = *v58;
LABEL_92:
    (*(v27 + 32))();
    result = 0;
    goto LABEL_93;
  }

  if (!*(a1 + 112))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(a2);
      v9 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Queue client message as user has not started the client yet; %s", buf, 0xCu);
    }

    abb::router::Message::Message(v44, a2);
    v10 = *(a3 + 24);
    if (v10)
    {
      if (v10 == a3)
      {
        v60 = v59;
        (*(*v10 + 24))(v10, v59);
      }

      else
      {
        v60 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    abb::router::Message::Message(buf, v44);
    if (v60)
    {
      if (v60 == v59)
      {
        v64 = v63;
        (*(*v60 + 24))();
      }

      else
      {
        v64 = v60;
        v60 = 0;
      }
    }

    else
    {
      v64 = 0;
    }

    std::deque<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>::emplace_back<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>(a1 + 216, buf);
    if (v64 == v63)
    {
      (*(*v64 + 32))(v64);
      abb::router::Message::~Message(buf);
      v28 = v60;
      if (v60 != v59)
      {
LABEL_63:
        if (v28)
        {
          (*(*v28 + 40))(v28);
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (v64)
      {
        (*(*v64 + 40))();
      }

      abb::router::Message::~Message(buf);
      v28 = v60;
      if (v60 != v59)
      {
        goto LABEL_63;
      }
    }

    (*(*v28 + 32))(v28);
LABEL_67:
    v29 = v44;
LABEL_85:
    abb::router::Message::~Message(v29);
LABEL_86:
    result = 1;
    v31 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(a1 + 116))
  {
    v14 = *(a1 + 264);
    if (v14 && (*(*v14 + 16))(v14) && *(a1 + 104))
    {
      if (*(a1 + 116) != 2)
      {
        v34 = *(a1 + 40);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240E91000, v34, OS_LOG_TYPE_DEFAULT, "#I Queue client message as client is not registered yet", buf, 2u);
        }

        abb::router::Message::Message(v42, a2);
        v35 = *(a3 + 24);
        if (v35)
        {
          if (v35 == a3)
          {
            v52 = v51;
            (*(*v35 + 24))(v35, v51);
          }

          else
          {
            v52 = *(a3 + 24);
            *(a3 + 24) = 0;
          }
        }

        else
        {
          v52 = 0;
        }

        abb::router::Message::Message(buf, v42);
        if (v52)
        {
          if (v52 == v51)
          {
            v64 = v63;
            (*(*v52 + 24))();
          }

          else
          {
            v64 = v52;
            v52 = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        std::deque<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>::emplace_back<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>(a1 + 216, buf);
        if (v64 == v63)
        {
          (*(*v64 + 32))(v64);
        }

        else if (v64)
        {
          (*(*v64 + 40))();
        }

        abb::router::Message::~Message(buf);
        if (v52 == v51)
        {
          (*(*v52 + 32))(v52);
          v29 = v42;
        }

        else
        {
          if (v52)
          {
            (*(*v52 + 40))();
          }

          v29 = v42;
        }

        goto LABEL_85;
      }

      abb::router::Client::State::trySendingClientMessage_sync(a1);
      v15 = *(a1 + 104);
      *(a2 + 84) = 0;
      v16 = *(a2 + 8);
      if (v16)
      {
        v17 = *v16;
        if ((*(*(a2 + 8) + 8) - v17) >= 0x10)
        {
          *(v17 + 13) = v15;
        }
      }

      object = 0xAAAAAAAAAAAAAAAALL;
      abb::router::createReqDict(&object, a2);
      v18 = *(a1 + 264);
      if (v18 && (*(*v18 + 16))(v18))
      {
        (*(**(a1 + 264) + 40))(*(a1 + 264), &object);
        v19 = *(a1 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          xpc::object::to_string(buf, &object);
          v39 = v62 >= 0 ? buf : *buf;
          *v49 = 136315138;
          v50 = v39;
          _os_log_debug_impl(&dword_240E91000, v19, OS_LOG_TYPE_DEBUG, "#D Sent client message: %s", v49, 0xCu);
          if (v62 < 0)
          {
            operator delete(*buf);
          }
        }

        v20 = *(a3 + 24);
        if (v20)
        {
          if (v20 == a3)
          {
            v48 = v47;
            (*(*v20 + 24))(v20, v47);
LABEL_141:
            abb::router::Client::State::trackConfirmation_sync(a1, &object, v47);
            if (v48 == v47)
            {
              (*(*v48 + 32))(v48);
            }

            else if (v48)
            {
              (*(*v48 + 40))();
            }

LABEL_139:
            xpc_release(object);
            goto LABEL_86;
          }

          v20 = (*(*v20 + 16))(v20);
        }

        v48 = v20;
        goto LABEL_141;
      }

      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_240E91000, v36, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", buf, 2u);
        v36 = *(a1 + 40);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
LABEL_101:
        abb::router::Message::generatePrintString(a2);
        v37 = (a2 + 112);
        if (*(a2 + 135) < 0)
        {
          v37 = *v37;
        }

        *buf = 136315138;
        *&buf[4] = v37;
        _os_log_impl(&dword_240E91000, v36, OS_LOG_TYPE_DEFAULT, "#I Queue client message as client got disconnected; %s", buf, 0xCu);
      }

      abb::router::Message::Message(v40, a2);
      v38 = *(a3 + 24);
      if (v38)
      {
        if (v38 == a3)
        {
          v46 = v45;
          (*(*v38 + 24))(v38, v45);
        }

        else
        {
          v46 = *(a3 + 24);
          *(a3 + 24) = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      abb::router::Message::Message(buf, v40);
      if (v46)
      {
        if (v46 == v45)
        {
          v64 = v63;
          (*(*v46 + 24))();
        }

        else
        {
          v64 = v46;
          v46 = 0;
        }
      }

      else
      {
        v64 = 0;
      }

      std::deque<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>::emplace_back<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>(a1 + 216, buf);
      if (v64 == v63)
      {
        (*(*v64 + 32))(v64);
      }

      else if (v64)
      {
        (*(*v64 + 40))();
      }

      abb::router::Message::~Message(buf);
      if (v46 == v45)
      {
        (*(*v46 + 32))(v46);
      }

      else if (v46)
      {
        (*(*v46 + 40))();
      }

      abb::router::Message::~Message(v40);
      goto LABEL_139;
    }

    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v21, OS_LOG_TYPE_DEFAULT, "#I Queue client message as client is not connected", buf, 2u);
    }

    abb::router::Message::Message(v43, a2);
    v22 = *(a3 + 24);
    if (v22)
    {
      if (v22 == a3)
      {
        v54 = v53;
        (*(*v22 + 24))(v22, v53);
      }

      else
      {
        v54 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    abb::router::Message::Message(buf, v43);
    if (v54)
    {
      if (v54 == v53)
      {
        v64 = v63;
        (*(*v54 + 24))();
      }

      else
      {
        v64 = v54;
        v54 = 0;
      }
    }

    else
    {
      v64 = 0;
    }

    std::deque<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>::emplace_back<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>(a1 + 216, buf);
    if (v64 == v63)
    {
      (*(*v64 + 32))(v64);
      abb::router::Message::~Message(buf);
      v30 = v54;
      if (v54 != v53)
      {
LABEL_80:
        if (v30)
        {
          (*(*v30 + 40))(v30);
        }

        goto LABEL_84;
      }
    }

    else
    {
      if (v64)
      {
        (*(*v64 + 40))();
      }

      abb::router::Message::~Message(buf);
      v30 = v54;
      if (v54 != v53)
      {
        goto LABEL_80;
      }
    }

    (*(*v30 + 32))(v30);
LABEL_84:
    v29 = v43;
    goto LABEL_85;
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v24 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v24 = *v24;
    }

    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_impl(&dword_240E91000, v23, OS_LOG_TYPE_DEFAULT, "#I Canceling request as proxy is down; %s", buf, 0xCu);
  }

  v25 = *(a3 + 24);
  if (v25)
  {
    if (v25 == a3)
    {
      v56 = v55;
      (*(*v25 + 24))(v25, v55);
    }

    else
    {
      v56 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator()(a1, v55);
  result = v56;
  if (v56 == v55)
  {
    v27 = *v56;
    goto LABEL_92;
  }

LABEL_89:
  if (result)
  {
    (*(*result + 40))(result);
    result = 0;
    v32 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_93:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240ED558C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v4;
  v25 = v4;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v25) = 0;
  BYTE8(v25) = 0;
  LOBYTE(v26) = 0;
  BYTE4(v26) = 0;
  v19 = &unk_2852C94E8;
  v20 = 0;
  DWORD2(v26) = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = 0;
  v22 = 94;
  v23 = std::generic_category();
  LOBYTE(v24) = 1;
  BYTE12(v26) = 0;
  v5 = *(a1 + 72);
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v31 = v30;
      (*(*v6 + 24))(v6, v30);
    }

    else
    {
      v31 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  abb::router::Message::Message(v32, &v19);
  LOBYTE(v33) = 0;
  v34 = 0;
  if (*(a1 + 96) == 1)
  {
    v7 = *(a1 + 88);
    *&v33 = *(a1 + 80);
    *(&v33 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    v34 = 1;
  }

  v8 = operator new(0xC0uLL);
  v9 = v31;
  if (v31)
  {
    if (v31 == v30)
    {
      *(v8 + 3) = v8;
      (*(*v9 + 24))(v9, v8);
    }

    else
    {
      *(v8 + 3) = v31;
      v31 = 0;
    }
  }

  else
  {
    *(v8 + 3) = 0;
  }

  abb::router::Message::Message((v8 + 32), v32);
  v8[168] = 0;
  v8[184] = 0;
  v10 = v34;
  if (v34 == 1)
  {
    *(v8 + 168) = v33;
    v33 = 0uLL;
    v8[184] = v10;
  }

  dispatch_async_f(v5, v8, dispatch::async<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (v34 == 1 && *(&v33 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v33 + 1));
  }

  abb::router::Message::~Message(v32);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))(v31, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1));
  }

  abb::router::Message::~Message(&v19);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_240ED59C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abb::router::Client::State::isClientConnected_sync(abb::router::Client::State *this)
{
  result = *(this + 33);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      return *(this + 26) != 0;
    }
  }

  return result;
}

void abb::router::createReqDict(abb::router *this, const abb::router::Message *a2)
{
  *this = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *this = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *this = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CD2F50](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *this = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(*(**(a2 + 1) + 8));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *this;
  xpc_dictionary_set_value(v8, "SimId", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(**(a2 + 1) + 10));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "MsgId", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_int64_create(*(**(a2 + 1) + 12));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "TrxId", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (*(a2 + 16))
  {
    v14 = xpc_int64_create(*(a2 + 7));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "TimeoutMillisec", v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
  }

  v16 = *(a2 + 9);
  if ((v16 & 0x100000000) != 0)
  {
    v17 = xpc_int64_create(v16);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "QueuePolicy", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
  }

  v19 = *(a2 + 40);
  if ((v19 & 0x100) != 0)
  {
    v20 = xpc_BOOL_create(v19 & 1);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "AllowSleep", v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
  }

  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  if (v23)
  {
    v24 = 1;
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v22;
    v22 = *(a2 + 1);
    v26 = *(a2 + 2);
    if (v26)
    {
      v24 = 0;
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = 0;
    v25 = *v22;
    v24 = 1;
  }

  v27 = xpc_data_create(v25, *(v22 + 8) - *v22);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "Request", v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  if ((v24 & 1) != 0 || atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v23)
    {
      return;
    }
  }

  else
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    if (!v23)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void abb::router::SyncClient::~SyncClient(abb::router::SyncClient *this)
{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>::~pair(abb::router::Message *this)
{
  v2 = this + 136;
  v3 = *(this + 20);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  abb::router::Message::~Message(v4);
}

uint64_t std::deque<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>::emplace_back<std::pair<abb::router::Message,std::function<void ()(abb::router::Message const&)>>>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 24 * ((v4 - v5) >> 3) - 1;
  }

  v8 = *(a1 + 32);
  if (v7 == *(a1 + 40) + v8)
  {
    v9 = v8 >= 0x18;
    v10 = v8 - 24;
    if (v9)
    {
      *(a1 + 32) = v10;
      v69 = *v5;
      *(a1 + 8) = v5 + 8;
LABEL_8:
      std::__split_buffer<abb::router::Message *>::emplace_back<abb::router::Message *&>(a1, &v69);
LABEL_22:
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
      goto LABEL_23;
    }

    v11 = *(a1 + 24);
    v12 = *a1;
    v13 = &v11[-*a1];
    if (v6 < v13)
    {
      v14 = operator new(0xFC0uLL);
      if (v11 != v4)
      {
        *v4 = v14;
        *(a1 + 16) = v4 + 8;
        goto LABEL_22;
      }

      if (v5 != v12)
      {
        v29 = v5;
LABEL_72:
        *(v29 - 1) = v14;
        v69 = v14;
        *(a1 + 8) = v29;
        goto LABEL_8;
      }

      v52 = (v11 - v5) >> 2;
      if (v4 == v5)
      {
        v52 = 1;
      }

      if (!(v52 >> 61))
      {
        v53 = v14;
        v54 = (v52 + 3) >> 2;
        v55 = 8 * v52;
        v56 = operator new(8 * v52);
        v29 = &v56[8 * v54];
        v57 = v29;
        v14 = v53;
        if (v4 != v5)
        {
          v57 = &v29[v6];
          v58 = v4 - v5 - 8;
          v59 = &v56[8 * v54];
          v60 = v5;
          if (v58 < 0x38)
          {
            goto LABEL_78;
          }

          v61 = &v56[8 * v54];
          v59 = v61;
          v60 = v5;
          if ((v61 - v5) < 0x20)
          {
            goto LABEL_78;
          }

          v62 = (v58 >> 3) + 1;
          v63 = 8 * (v62 & 0x3FFFFFFFFFFFFFFCLL);
          v59 = &v29[v63];
          v60 = &v5[v63];
          v64 = (v5 + 16);
          v65 = v61 + 16;
          v66 = v62 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v67 = *v64;
            *(v65 - 1) = *(v64 - 1);
            *v65 = v67;
            v64 += 2;
            v65 += 2;
            v66 -= 4;
          }

          while (v66);
          if (v62 != (v62 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_78:
            do
            {
              v68 = *v60;
              v60 += 8;
              *v59 = v68;
              v59 += 8;
            }

            while (v59 != v57);
          }
        }

        *a1 = v56;
        *(a1 + 8) = v29;
        *(a1 + 16) = v57;
        *(a1 + 24) = &v56[v55];
        if (v5)
        {
          operator delete(v12);
          v14 = v53;
          v29 = *(a1 + 8);
        }

        goto LABEL_72;
      }

LABEL_74:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = v13 >> 2;
    if (v11 == v12)
    {
      v15 = 1;
    }

    if (v15 >> 61)
    {
      goto LABEL_74;
    }

    v16 = 8 * v15;
    v17 = operator new(8 * v15);
    v18 = operator new(0xFC0uLL);
    v19 = v18;
    v20 = &v17[v6];
    v21 = &v17[v16];
    if (v6 != v16)
    {
      goto LABEL_18;
    }

    if (v6 >= 1)
    {
      v20 -= ((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_18:
      *v20 = v18;
      v22 = v20 + 8;
      if (v4 != v5)
      {
        goto LABEL_42;
      }

LABEL_19:
      v23 = v20;
LABEL_20:
      v24 = *a1;
      *a1 = v17;
      *(a1 + 8) = v23;
      *(a1 + 16) = v22;
      *(a1 + 24) = v21;
      if (v24)
      {
        operator delete(v24);
      }

      goto LABEL_22;
    }

    if (v4 == v5)
    {
      v30 = 1;
    }

    else
    {
      v30 = v6 >> 2;
    }

    if (v30 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = operator new(8 * v30);
    v21 = &v20[8 * v30];
    operator delete(v17);
    v31 = *(a1 + 8);
    v4 = *(a1 + 16);
    v17 = v20;
    *v20 = v19;
    v22 = v20 + 8;
    if (v4 == v31)
    {
      goto LABEL_19;
    }

LABEL_42:
    while (v20 != v17)
    {
      v32 = v20;
LABEL_41:
      v33 = *(v4 - 1);
      v4 -= 8;
      *(v32 - 1) = v33;
      v23 = v32 - 8;
      v20 = v23;
      if (v4 == *(a1 + 8))
      {
        goto LABEL_20;
      }
    }

    if (v22 < v21)
    {
      v32 = &v17[8 * ((((v21 - v22) >> 3) + 1 + ((((v21 - v22) >> 3) + 1) >> 63)) >> 1)];
      v35 = v22 - v17;
      v34 = v22 == v17;
      v22 += 8 * ((((v21 - v22) >> 3) + 1 + ((((v21 - v22) >> 3) + 1) >> 63)) >> 1);
      if (!v34)
      {
        memmove(v32, v20, v35);
      }

      goto LABEL_41;
    }

    if (v21 == v17)
    {
      v36 = 1;
    }

    else
    {
      v36 = (v21 - v17) >> 2;
    }

    if (v36 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v37 = operator new(8 * v36);
    v38 = v37;
    v39 = (v36 + 3) >> 2;
    v32 = &v37[8 * v39];
    v40 = v22 - v17;
    v34 = v22 == v17;
    v22 = v32;
    if (!v34)
    {
      v22 = &v32[v40];
      v41 = v40 - 8;
      if (v41 >= 0x18 && (v42 = 8 * v39, (&v37[8 * v39] - v20) >= 0x20))
      {
        v46 = (v41 >> 3) + 1;
        v47 = 8 * (v46 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = &v32[v47];
        v44 = &v20[v47];
        v48 = (v20 + 16);
        v49 = &v37[v42 + 16];
        v50 = v46 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v51 = *v48;
          *(v49 - 1) = *(v48 - 1);
          *v49 = v51;
          v48 += 2;
          v49 += 32;
          v50 -= 4;
        }

        while (v50);
        if (v46 == (v46 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v43 = &v37[8 * v39];
        v44 = v20;
      }

      do
      {
        v45 = *v44;
        v44 += 8;
        *v43 = v45;
        v43 += 8;
      }

      while (v43 != v22);
    }

LABEL_55:
    v21 = &v37[8 * v36];
    operator delete(v17);
    v17 = v38;
    goto LABEL_41;
  }

LABEL_23:
  if (v4 == v5)
  {
    result = abb::router::Message::Message(0, a2);
    v27 = a2 + 160;
    v28 = *(a2 + 160);
    if (v28)
    {
      goto LABEL_25;
    }

LABEL_28:
    v27 = result + 160;
    goto LABEL_29;
  }

  v25 = *(a1 + 40) + *(a1 + 32);
  result = abb::router::Message::Message(*&v5[8 * (v25 / 0x18)] + 168 * (v25 % 0x18), a2);
  v27 = a2 + 160;
  v28 = *(a2 + 160);
  if (!v28)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v28 == a2 + 136)
  {
    *(result + 160) = result + 136;
    result = (*(**v27 + 24))();
    goto LABEL_31;
  }

  *(result + 160) = v28;
LABEL_29:
  *v27 = 0;
LABEL_31:
  ++*(a1 + 40);
  return result;
}

void sub_240ED6588(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 184) == 1)
    {
      v3 = *(v1 + 176);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    abb::router::Message::~Message((v1 + 32));
    v4 = *(v1 + 24);
    if (v4 == v1)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v10 = a1;
  if (*(a1 + 184) != 1)
  {
    v11 = 0;
LABEL_9:
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(*(a1 + 24), a1 + 32);
    goto LABEL_13;
  }

  v1 = *(a1 + 176);
  if (!v1)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v2 = a1;
  v3 = *(a1 + 168);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    v11 = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_13;
  }

  v11 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  if (*(v7 + 184) == 1)
  {
    v8 = *(v7 + 176);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  abb::router::Message::~Message((v7 + 32));
  v9 = *(v7 + 24);
  if (v9 == v7)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  operator delete(v7);
}

void sub_240ED68C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a10);
  std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0>(abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = *(v2 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Reconnecting client", buf, 2u);
  }

  abb::router::Client::State::connect_sync(v2);
  shared_owners = v1->__shared_owners_;
  if (shared_owners && !atomic_fetch_add(&shared_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (shared_owners->__on_zero_shared)(shared_owners);
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  operator delete(v1);
  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = a1;
      }
    }

    operator delete(v5);
  }
}

void sub_240ED6A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<abb::router::TimerService::create(void)::$_0,std::default_delete<abb::router::TimerService::create(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<abb::router::Client::State>::shared_ptr[abi:ne200100]<abb::router::Client::State,std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2852C9730;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_240ED6B4C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State*)#1}::operator() const(abb::router::Client::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<abb::router::Client::State *,std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State *)#1},std::allocator<abb::router::Client::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::Client::State *,std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State *)#1},std::allocator<abb::router::Client::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abb6router6Client5StateEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abb6router6Client5StateEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abb6router6Client5StateEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abb6router6Client5StateEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State*)#1}::operator() const(abb::router::Client::State*)::{lambda(void *)#1}::__invoke(void **a1)
{
  if (a1)
  {
    abb::router::Client::State::~State(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::__map_value_compare<abb::router::Client::Event,std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::less<abb::router::Client::Event>,true>,std::allocator<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::__map_value_compare<abb::router::Client::Event,std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::less<abb::router::Client::Event>,true>,std::allocator<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>>>::destroy(*a1);
    std::__tree<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::__map_value_compare<abb::router::Client::Event,std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::less<abb::router::Client::Event>,true>,std::allocator<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
      v3 = a1;
    }

    else
    {
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = a1;
    }

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
      v3 = a1;
    }

    else
    {
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = a1;
    }

    operator delete(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>(abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v8, *a1 + 8);
  v4 = v2[21];
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != v2 + 18)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_4:
    v10 = v4;
    goto LABEL_6;
  }

  v10 = v9;
  (*(*v4 + 24))(v4, v9);
LABEL_6:
  abb::router::Client::State::sendClientMessage_sync(v3, v8, v9);
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    abb::router::Message::~Message(v8);
    v5 = v2[21];
    if (v5 != v2 + 18)
    {
      goto LABEL_10;
    }

LABEL_13:
    (*(*v5 + 32))(v5);
    goto LABEL_14;
  }

  (*(*v10 + 32))(v10);
  abb::router::Message::~Message(v8);
  v5 = v2[21];
  if (v5 == v2 + 18)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

LABEL_14:
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v6 = *(a1 + 2);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_240ED7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  abb::router::Message::~Message(&a11);
  std::unique_ptr<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_240ED7068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[21];
    if (v3 == v1 + 18)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    abb::router::Message::~Message((v1 + 1));
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN3abb6router6Client5StateEE20execute_wrapped_syncIZNKS4_12getNextTrxIdEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = *(v1 + 104);
  v3 = *(v1 + 108);
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 1;
  }

  *(v1 + 108) = v4;
  return (v3 | (v2 << 8));
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0>(abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0,std::default_delete<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Setting client tracker", v14, 2u);
    v5 = v2[2];
    if (v5)
    {
LABEL_3:
      v6 = v2[1];
      v7 = 1;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v3 + 96);
      if (v8 == 1)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (!v8)
      {
        *(v3 + 80) = v6;
        *(v3 + 88) = v5;
        *(v3 + 96) = 1;
        v12 = v2[2];
        if (!v12)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v10 = *(v3 + 88);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      *(v3 + 96) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = v2[2];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v3 + 96);
  if (*(v3 + 96))
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v8)
  {
    v9 = *(v3 + 88);
    *(v3 + 80) = v6;
    *(v3 + 88) = v5;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_weak(v9);
    goto LABEL_19;
  }

LABEL_13:
  if (v5)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v9 = v5;
    goto LABEL_18;
  }

LABEL_19:
  v12 = v2[2];
  if (v12)
  {
LABEL_20:
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_21:
  operator delete(v2);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::start(void)::$_0>(abb::router::Client::State::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::start(void)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  abb::router::Client::State::start_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_240ED7410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::stop(void)::$_0>(abb::router::Client::State::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::stop(void)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  abb::router::Client::State::stop_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_240ED74F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::~ClientLinkDelegate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  abb::link::ClientLinkDelegateBase::~ClientLinkDelegateBase(a1);
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::~ClientLinkDelegate(abb::link::ClientLinkDelegateBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  abb::link::ClientLinkDelegateBase::~ClientLinkDelegateBase(this);

  operator delete(v3);
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::handleLinkConnect(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        abb::router::Client::State::handleLinkConnect(v7, &object);
        xpc_release(object);
        object = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::handleLinkMessage(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        abb::router::Client::State::handleLinkMessage(v7, &object);
        xpc_release(object);
        object = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::handleLinkMessage(uint64_t a1, void **a2, NSObject **a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  if (*(a1 + 8))
  {
    v11 = *a2;
    *a2 = xpc_null_create();
    v12 = *a3;
    *a3 = 0;
    v13 = *(a4 + 24);
    if (v13)
    {
      if (v13 == a4)
      {
        v16 = v15;
        (*(*v13 + 24))(v13, v15);
      }

      else
      {
        v16 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16)
      {
        (*(*v16 + 40))();
      }

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    dispatch_release(v12);
LABEL_14:
    xpc_release(v11);
  }

  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_240ED7908(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::handleServerError(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        abb::router::Client::State::handleServerError(v7, &object);
        xpc_release(object);
        object = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::link::ClientLinkDelegate<abb::router::Client::State>::reset(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN3ctu15XpcClientHelper9setServerIN3abb4link13XpcClientLinkEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v13 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      object[1] = v8;
      if (!v8)
      {
LABEL_21:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v9 = MEMORY[0x245CD2F50](a2);
      v10 = MEMORY[0x277D86468];
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 == MEMORY[0x277D86480] && *v5 == a1[7])
        {
          object[0] = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          abb::link::XpcClientLink::handleServerError();
          xpc_release(object[0]);
        }

        goto LABEL_21;
      }

      if (a2)
      {
        xpc_retain(a2);
        object[0] = a2;
      }

      else
      {
        a2 = xpc_null_create();
        object[0] = a2;
        if (!a2)
        {
          v11 = xpc_null_create();
          a2 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x245CD2F50](a2) == v10)
      {
        xpc_retain(a2);
        goto LABEL_17;
      }

      v11 = xpc_null_create();
LABEL_16:
      object[0] = v11;
LABEL_17:
      abb::link::XpcClientLink::handleMessage(v8, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(a2);
      v7 = v13;
      if (!v13)
      {
        return;
      }

      goto LABEL_21;
    }
  }
}

void sub_240ED7BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN3abb4link13XpcClientLinkEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN3abb4link13XpcClientLinkEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::~__func(void *a1)
{
  *a1 = &unk_2852C9810;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::~__func(char *__p)
{
  *__p = &unk_2852C9810;
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

_DWORD *std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2852C9810;
  v2[2] = *(a1 + 8);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 != a1 + 16)
  {
    v3 = (*(*v3 + 16))(v3);
LABEL_4:
    *(v2 + 5) = v3;
    return v2;
  }

  *(v2 + 5) = v2 + 4;
  (*(*v3 + 24))(v3);
  return v2;
}

uint64_t std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2852C9810;
  *(a2 + 8) = *(result + 8);
  v3 = *(result + 40);
  if (v3)
  {
    if (v3 == result + 16)
    {
      *(a2 + 40) = a2 + 16;
      v4 = *(**(result + 40) + 24);

      return v4();
    }

    else
    {
      result = (*(*v3 + 16))(*(result + 40));
      *(a2 + 40) = result;
    }
  }

  else
  {
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::operator()(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  *a2 = 0;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_240ED8108(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::Client::regEventHandler(abb::router::Client::Event,std::function<void ()(void)> &&)::$_0,std::allocator<std::function<void ()(void)> &&>,void ()(dispatch::group)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3abb6router6Client15regEventHandlerENS1_5EventEONSt3__18functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3abb6router6Client15regEventHandlerENS1_5EventEONSt3__18functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3abb6router6Client15regEventHandlerENS1_5EventEONSt3__18functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3abb6router6Client15regEventHandlerENS1_5EventEONSt3__18functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0>(abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0,std::default_delete<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  __p = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(v1 + 2);
    if (v8 > 4)
    {
      v9 = "(unknown)";
    }

    else
    {
      v9 = (&off_278CBB488)[v8];
    }

    v10 = *(v2 + 104);
    *buf = 136315394;
    v29 = v9;
    v30 = 1024;
    v31 = v10;
    _os_log_debug_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEBUG, "#D Registering '%s' handler; Client=0x%02x", buf, 0x12u);
    v5 = (v2 + 128);
    v4 = *(v2 + 128);
    v6 = *(v1 + 2);
    if (v4)
    {
      while (1)
      {
LABEL_10:
        while (1)
        {
          v7 = v4;
          v11 = *(v4 + 32);
          if (v6 >= v11)
          {
            break;
          }

          v4 = *v7;
          v5 = v7;
          if (!*v7)
          {
            goto LABEL_14;
          }
        }

        if (v11 >= v6)
        {
          break;
        }

        v4 = v7[1];
        if (!v4)
        {
          v5 = v7 + 1;
          goto LABEL_14;
        }
      }

      v12 = v7;
      v14 = v1[5];
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v5 = (v2 + 128);
    v4 = *(v2 + 128);
    v6 = *(v1 + 2);
    if (v4)
    {
      goto LABEL_10;
    }
  }

  v7 = v5;
LABEL_14:
  v12 = operator new(0x48uLL);
  *(v12 + 8) = v6;
  *(v12 + 8) = 0;
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = v7;
  *v5 = v12;
  v13 = **(v2 + 120);
  if (v13)
  {
    *(v2 + 120) = v13;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 128), v12);
  ++*(v2 + 136);
  v14 = v1[5];
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v14 != v1 + 2)
  {
    v14 = (*(*v14 + 16))(v14);
LABEL_21:
    v32 = v14;
    goto LABEL_23;
  }

  v32 = buf;
  (*(*v14 + 24))(v14, buf);
LABEL_23:
  v15 = (v12 + 40);
  if (v12 + 40 == buf)
  {
    goto LABEL_32;
  }

  v16 = v32;
  v17 = *(v12 + 8);
  if (v32 != buf)
  {
    if (v17 != v15)
    {
      v32 = *(v12 + 8);
      *(v12 + 8) = v16;
      v18 = v17;
      if (v17 == buf)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    (*(*v17 + 24))(*(v12 + 8), buf);
    (*(**(v12 + 8) + 32))(*(v12 + 8));
    *(v12 + 8) = v32;
    v32 = buf;
LABEL_32:
    v18 = v32;
    if (v32 == buf)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v17 == v15)
  {
    memset(v33, 170, 24);
    (*(*v32 + 24))();
    (*(*v32 + 32))(v32);
    v32 = 0;
    (*(**(v12 + 8) + 24))(*(v12 + 8), buf);
    (*(**(v12 + 8) + 32))(*(v12 + 8));
    *(v12 + 8) = 0;
    v32 = buf;
    (*(v33[0] + 24))(v33, v12 + 40);
    (*(v33[0] + 32))(v33);
    *(v12 + 8) = v15;
    v18 = v32;
    if (v32 == buf)
    {
      goto LABEL_39;
    }
  }

  else
  {
    (*(*v32 + 24))();
    (*(*v32 + 32))(v32);
    v32 = *(v12 + 8);
    v19 = v32;
    *(v12 + 8) = v15;
    v18 = v19;
    if (v19 == buf)
    {
LABEL_39:
      (*(*v18 + 32))(v18);
      v20 = __p;
      if (__p)
      {
        goto LABEL_40;
      }

LABEL_36:
      v21 = a1;
      if (!a1)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }
  }

LABEL_33:
  if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  v20 = __p;
  if (!__p)
  {
    goto LABEL_36;
  }

LABEL_40:
  v22 = v20[5];
  if (v22 == v20 + 2)
  {
    (*(*v22 + 32))(v22);
    operator delete(v20);
    v21 = a1;
    if (!a1)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  operator delete(v20);
  v21 = a1;
  if (a1)
  {
LABEL_46:
    v23 = v21[2];
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v21;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v21 = v24;
    }

    operator delete(v21);
  }

LABEL_50:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_240ED8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<abb::router::Client::State::regEventHandler(abb::router::Client::Event,std::function<void ()(dispatch::group)> &&)::$_0,std::default_delete<std::function<void ()(dispatch::group)> &&>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[5];
    if (v3 == v1 + 2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0>(abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::deregEventHandler(abb::router::Client::Event)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v3[16];
  if (v4)
  {
    v5 = v2[2];
    v6 = v3 + 16;
    v7 = v3[16];
    do
    {
      if (*(v7 + 32) >= v5)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < v5));
    }

    while (v7);
    if (v6 != v3 + 16 && *(v6 + 8) <= v5)
    {
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        v10 = v6;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      v12 = v2;
      if (v3[15] == v6)
      {
        v3[15] = v9;
      }

      --v3[17];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v6);
      v13 = v6[8];
      if (v13 == v6 + 5)
      {
        (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      operator delete(v6);
      v2 = v12;
    }
  }

  operator delete(v2);
  v14 = a1[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = a1;
  }

  else
  {
    v15 = a1;
  }

  operator delete(v15);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0>(abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    shared_owners = v1->__shared_owners_;
    get_deleter = v2[2].__get_deleter;
    *buf = 67109376;
    v26 = shared_owners;
    v27 = 1024;
    v28 = get_deleter;
    _os_log_debug_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEBUG, "#D Registering indication handler for '%u'; Client=0x%02x", buf, 0xEu);
    p_on_zero_shared_weak = &v2[3].__on_zero_shared_weak;
    on_zero_shared_weak = v2[3].__on_zero_shared_weak;
    v6 = v1->__shared_owners_;
    if (on_zero_shared_weak)
    {
      while (1)
      {
LABEL_7:
        while (1)
        {
          v7 = on_zero_shared_weak;
          v10 = *(on_zero_shared_weak + 8);
          if (v6 >= v10)
          {
            break;
          }

          on_zero_shared_weak = *v7;
          p_on_zero_shared_weak = v7;
          if (!*v7)
          {
            goto LABEL_11;
          }
        }

        if (v10 >= v6)
        {
          break;
        }

        on_zero_shared_weak = v7[1];
        if (!on_zero_shared_weak)
        {
          p_on_zero_shared_weak = v7 + 1;
          goto LABEL_11;
        }
      }

      v11 = v7;
      shared_weak_owners = v1[1].__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    p_on_zero_shared_weak = &v2[3].__on_zero_shared_weak;
    on_zero_shared_weak = v2[3].__on_zero_shared_weak;
    v6 = v1->__shared_owners_;
    if (on_zero_shared_weak)
    {
      goto LABEL_7;
    }
  }

  v7 = p_on_zero_shared_weak;
LABEL_11:
  v11 = operator new(0x48uLL);
  *(v11 + 8) = v6;
  *(v11 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = v7;
  *p_on_zero_shared_weak = v11;
  v12 = *v2[3].__get_deleter;
  if (v12)
  {
    v2[3].__get_deleter = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[3].__on_zero_shared_weak, v11);
  ++v2[4].~__shared_weak_count;
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (shared_weak_owners != &v1->__shared_weak_owners_)
  {
    shared_weak_owners = (*(*shared_weak_owners + 16))(shared_weak_owners);
LABEL_18:
    v29 = shared_weak_owners;
    goto LABEL_20;
  }

  v29 = buf;
  (*(*shared_weak_owners + 24))(shared_weak_owners, buf);
LABEL_20:
  v14 = (v11 + 40);
  if (v11 + 40 == buf)
  {
    goto LABEL_29;
  }

  v15 = v29;
  v16 = *(v11 + 8);
  if (v29 != buf)
  {
    if (v16 != v14)
    {
      v29 = *(v11 + 8);
      *(v11 + 8) = v15;
      v17 = v16;
      if (v16 == buf)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    (*(*v16 + 24))(*(v11 + 8), buf);
    (*(**(v11 + 8) + 32))(*(v11 + 8));
    *(v11 + 8) = v29;
    v29 = buf;
LABEL_29:
    v17 = v29;
    if (v29 == buf)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v16 == v14)
  {
    memset(v30, 170, 24);
    (*(*v29 + 24))();
    (*(*v29 + 32))(v29);
    v29 = 0;
    (*(**(v11 + 8) + 24))(*(v11 + 8), buf);
    (*(**(v11 + 8) + 32))(*(v11 + 8));
    *(v11 + 8) = 0;
    v29 = buf;
    (*(v30[0] + 24))(v30, v11 + 40);
    (*(v30[0] + 32))(v30);
    *(v11 + 8) = v14;
    v17 = v29;
    if (v29 == buf)
    {
      goto LABEL_35;
    }
  }

  else
  {
    (*(*v29 + 24))();
    (*(*v29 + 32))(v29);
    v29 = *(v11 + 8);
    v18 = v29;
    *(v11 + 8) = v14;
    v17 = v18;
    if (v18 == buf)
    {
LABEL_35:
      (*(*v17 + 32))(v17);
      if (LOBYTE(v2[2].__on_zero_shared_weak) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

LABEL_30:
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  if (LOBYTE(v2[2].__on_zero_shared_weak) == 1)
  {
LABEL_36:
    abb::router::Client::State::register_sync(v2);
  }

LABEL_37:
  if (__p)
  {
    v19 = __p[1].__shared_weak_owners_;
    if (v19 == &__p->__shared_weak_owners_)
    {
      (*(*v19 + 32))(v19);
    }

    else if (v19)
    {
      (*(*v19 + 40))(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v20 = a1;
    }

    operator delete(v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_240ED8F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::regIndHandlerInternal(unsigned int,std::function<void ()(abb::router::Message const&)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[5];
    if (v3 == v1 + 2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::deregIndHandler(unsigned int)::$_0>(abb::router::Client::State::deregIndHandler(unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::deregIndHandler(unsigned int)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::deregIndHandler(unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(v2 + 2);
    v21 = *(v3 + 104);
    *buf = 67109376;
    v23 = v20;
    v24 = 1024;
    v25 = v21;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Deregistering indication handler for '%u'; Client=0x%02x", buf, 0xEu);
    v6 = (v3 + 152);
    v5 = *(v3 + 152);
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = (v3 + 152);
    v5 = *(v3 + 152);
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  v7 = *(v2 + 2);
  v8 = v6;
  v9 = v5;
  do
  {
    v10 = *(v9 + 8);
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v8 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v8 != v6 && v7 >= *(v8 + 8))
  {
    v13 = v8[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v15 = v8;
      do
      {
        v14 = v15[2];
        v16 = *v14 == v15;
        v15 = v14;
      }

      while (!v16);
    }

    if (*(v3 + 144) == v8)
    {
      *(v3 + 144) = v14;
    }

    --*(v3 + 160);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v8);
    v17 = v8[8];
    if (v17 == v8 + 5)
    {
      ((*v17)[4])(v17);
    }

    else if (v17)
    {
      ((*v17)[5])(v17);
    }

    operator delete(v8);
  }

LABEL_23:
  if (*(v3 + 112) == 1)
  {
    abb::router::Client::State::register_sync(v3);
  }

  operator delete(v2);
  v18 = a1[2];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(a1);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_240ED9254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0>(abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::setIndShouldWake(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(v2 + 12) == 1)
    {
      goto LABEL_3;
    }

LABEL_17:
    v15 = *(v3 + 176);
    if (v15)
    {
      v16 = *(v2 + 2);
      v17 = v3 + 176;
      v18 = *(v3 + 176);
      do
      {
        v19 = *(v18 + 28);
        v20 = v19 >= v16;
        v21 = v19 < v16;
        if (v20)
        {
          v17 = v18;
        }

        v18 = *(v18 + 8 * v21);
      }

      while (v18);
      if (v17 != v3 + 176 && v16 >= *(v17 + 28))
      {
        v22 = *(v17 + 8);
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
          v24 = v17;
          do
          {
            v23 = v24[2];
            v25 = *v23 == v24;
            v24 = v23;
          }

          while (!v25);
        }

        if (*(v3 + 168) == v17)
        {
          *(v3 + 168) = v23;
        }

        --*(v3 + 184);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v15, v17);
        operator delete(v17);
      }
    }

    goto LABEL_34;
  }

  v12 = *(v2 + 2);
  if (*(v2 + 12))
  {
    v13 = "";
  }

  else
  {
    v13 = "not ";
  }

  v14 = *(v3 + 104);
  *buf = 67109634;
  v29 = v12;
  v30 = 2080;
  v31 = v13;
  v32 = 1024;
  v33 = v14;
  _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Set indication '%u' as %swakeable; Client=0x%02x", buf, 0x18u);
  if (*(v2 + 12) != 1)
  {
    goto LABEL_17;
  }

LABEL_3:
  v6 = (v3 + 176);
  v5 = *(v3 + 176);
  v7 = *(v2 + 2);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 28);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (v3 + 176);
LABEL_10:
    v10 = operator new(0x20uLL);
    v10[7] = v7;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v8;
    *v6 = v10;
    v11 = **(v3 + 168);
    if (v11)
    {
      *(v3 + 168) = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 176), v10);
    ++*(v3 + 184);
  }

LABEL_34:
  if (*(v3 + 112) == 1)
  {
    abb::router::Client::State::register_sync(v3);
  }

  operator delete(v2);
  v26 = a1[2];
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  operator delete(a1);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_240ED9518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *___ZNK3ctu20SharedSynchronizableIN3abb6router6Client5StateEE20execute_wrapped_syncIZNKS4_24getRegisteredIndicationsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result[5];
  a2[1] = 0;
  v4 = (a2 + 1);
  a2[2] = 0;
  *a2 = (a2 + 1);
  v5 = *(v3 + 144);
  v6 = (v3 + 152);
  if (v5 != (v3 + 152))
  {
    do
    {
      v7 = *(v5 + 8);
      v8 = a2 + 1;
      v9 = a2 + 1;
      if (*v4)
      {
        v10 = *v4;
        while (1)
        {
          while (1)
          {
            v9 = v10;
            v11 = *(v10 + 28);
            if (v7 >= v11)
            {
              break;
            }

            v10 = *v9;
            v8 = v9;
            if (!*v9)
            {
              goto LABEL_11;
            }
          }

          if (v11 >= v7)
          {
            break;
          }

          v10 = v9[1];
          if (!v10)
          {
            v8 = v9 + 1;
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v12 = operator new(0x20uLL);
        v12[7] = v7;
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 2) = v9;
        *v8 = v12;
        v13 = **a2;
        if (v13)
        {
          *a2 = v13;
        }

        result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a2[1], v12);
        a2[2] = (a2[2] + 1);
      }

      v14 = v5[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v5[2];
          v16 = *v15 == v5;
          v5 = v15;
        }

        while (!v16);
      }

      v5 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<unsigned int>::destroy(v2, *(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  else
  {
    *v2 = v3;
  }

  std::__tree<unsigned int>::destroy(&v6, v5);
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setIjNS1_4lessIjEENS1_9allocatorIjEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<unsigned int>::destroy(v2, *(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  else
  {
    *v2 = v3;
  }

  std::__tree<unsigned int>::destroy(&v6, v5);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0>(abb::router::Client::State::handleLinkConnect(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(xpc_object_t **a1)
{
  object[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x245CD2F50](v2[1]) == v5)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](v3) == v5)
  {
    value = xpc_dictionary_get_value(v3, "ClientId");
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(v4 + 26) = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
  }

  v7 = *(v4 + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v4 + 26);
    LODWORD(object[0]) = 67109120;
    HIDWORD(object[0]) = v8;
    _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Client is connected; Client=0x%02x", object, 8u);
  }

  if (*(v4 + 112) == 1)
  {
    abb::router::Client::State::register_sync(v4);
  }

  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_240ED9974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t **std::unique_ptr<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0,std::default_delete<abb::router::Client::State::handleLinkConnect(xpc::object)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0>(abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(__p, (v2 + 1));
    v15 = v26 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Received message from server: %s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  value = xpc_dictionary_get_value(v2[1], "ClientStatus");
  __p[0] = value;
  if (value)
  {
    xpc_retain(value);
    v6 = __p[0];
  }

  else
  {
    v6 = xpc_null_create();
    __p[0] = v6;
  }

  v7 = MEMORY[0x245CD2F50](v6);
  v8 = MEMORY[0x277D864B0];
  if (v7 != MEMORY[0x277D864B0])
  {
    v9 = *(v3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v3 + 104);
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_debug_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEBUG, "#D Received client status; Client=0x%02x", buf, 8u);
    }

    v10 = xpc::dyn_cast_or_default();
    abb::router::Client::State::handleStatus_sync(v3, v10);
  }

  v11 = xpc_dictionary_get_value(v2[1], "Confirmation");
  v12 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](v12) != v8)
  {
    v13 = *(v3 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(v3 + 104);
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_debug_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEBUG, "#D Received client confirmation; Client=0x%02x", buf, 8u);
      v14 = v2[1];
      *buf = v14;
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v2[1];
      *buf = v14;
      if (v14)
      {
LABEL_15:
        xpc_retain(v14);
LABEL_23:
        abb::router::Client::State::handleConfirmation_sync(v3, buf);
        xpc_release(v14);
        *buf = 0;
        goto LABEL_24;
      }
    }

    v14 = xpc_null_create();
    *buf = v14;
    goto LABEL_23;
  }

LABEL_24:
  v18 = xpc_dictionary_get_value(v2[1], "Indication");
  v19 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v19 = xpc_null_create();
  }

  if (MEMORY[0x245CD2F50](v19) == v8)
  {
    goto LABEL_34;
  }

  v20 = *(v3 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(v3 + 104);
    *v27 = 67109120;
    *&v27[4] = v22;
    _os_log_debug_impl(&dword_240E91000, v20, OS_LOG_TYPE_DEBUG, "#D Received client indication; Client=0x%02x", v27, 8u);
    v21 = v2[1];
    *v27 = v21;
    if (v21)
    {
      goto LABEL_30;
    }

LABEL_32:
    v21 = xpc_null_create();
    *v27 = v21;
    goto LABEL_33;
  }

  v21 = v2[1];
  *v27 = v21;
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_30:
  xpc_retain(v21);
LABEL_33:
  abb::router::Client::State::handleIndication_sync(v3, v27);
  xpc_release(v21);
  *v27 = 0;
LABEL_34:
  xpc_release(v19);
  xpc_release(v12);
  xpc_release(__p[0]);
  xpc_release(v2[1]);
  operator delete(v2);
  v23 = *(a1 + 2);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete(a1);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_240ED9DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t **std::unique_ptr<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0,std::default_delete<abb::router::Client::State::handleLinkMessage(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::handleServerError(xpc::object)::$_0>(abb::router::Client::State::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleServerError(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::handleServerError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, (v2 + 1));
    v5 = v10 >= 0 ? __p : __p[0];
    v6 = *(v3 + 104);
    *buf = 136315394;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Received error from server: %s; Client=0x%02x", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  abb::router::Client::State::handleError_sync(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_240EDA058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t **std::unique_ptr<abb::router::Client::State::handleServerError(xpc::object)::$_0,std::default_delete<abb::router::Client::State::handleServerError(xpc::object)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1,std::default_delete<abb::router::Client::State::handleConfirmation_sync(xpc::dict)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v10 = a1;
  if (*(a1 + 184) != 1)
  {
    v11 = 0;
LABEL_9:
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(*(a1 + 24), a1 + 32);
    goto LABEL_13;
  }

  v1 = *(a1 + 176);
  if (!v1)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v2 = a1;
  v3 = *(a1 + 168);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    v11 = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_13;
  }

  v11 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  if (*(v7 + 184) == 1)
  {
    v8 = *(v7 + 176);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  abb::router::Message::~Message((v7 + 32));
  v9 = *(v7 + 24);
  if (v9 == v7)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  operator delete(v7);
}

void sub_240EDA318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a10);
  std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0,std::default_delete<abb::router::Client::State::handleIndication_sync(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v10 = a1;
  if (*(a1 + 184) != 1)
  {
    v11 = 0;
LABEL_9:
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(*(a1 + 24), a1 + 32);
    goto LABEL_13;
  }

  v1 = *(a1 + 176);
  if (!v1)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v2 = a1;
  v3 = *(a1 + 168);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    v11 = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_13;
  }

  v11 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  if (*(v7 + 184) == 1)
  {
    v8 = *(v7 + 176);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  abb::router::Message::~Message((v7 + 32));
  v9 = *(v7 + 24);
  if (v9 == v7)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  operator delete(v7);
}

void sub_240EDA584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a10);
  std::unique_ptr<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1},std::default_delete<abb::router::Client::State::sendClientMessage_sync(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0::operator() const(std::function<void ()(abb::router::Message const&)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 48) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    v4 = *(v2 + 24);
    if (v4 == v2)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p = a1;
  memset(&object[1], 170, 24);
  if (*(a1 + 48) != 1)
  {
    LOBYTE(object[1]) = 1;
    object[2] = 0;
    object[3] = 0;
LABEL_9:
    object[0] = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, object);
    if (object[0])
    {
      dispatch_release(object[0]);
    }

    goto LABEL_14;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    goto LABEL_14;
  }

  v2 = a1;
  v3 = *(a1 + 32);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_14;
  }

  LOBYTE(object[1]) = v3 != 0;
  object[2] = v3;
  object[3] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (object[1])
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = object[3];
  if (object[3] && !atomic_fetch_add(&object[3][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (__p)
  {
    if (*(__p + 48) == 1)
    {
      v8 = *(__p + 5);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = *(__p + 3);
    if (v9 == __p)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    operator delete(__p);
  }
}

void sub_240EDA87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a12);
  std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStoppedEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p = a1;
  memset(&object[1], 170, 24);
  if (*(a1 + 48) != 1)
  {
    LOBYTE(object[1]) = 1;
    object[2] = 0;
    object[3] = 0;
LABEL_9:
    object[0] = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, object);
    if (object[0])
    {
      dispatch_release(object[0]);
    }

    goto LABEL_14;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    goto LABEL_14;
  }

  v2 = a1;
  v3 = *(a1 + 32);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_14;
  }

  LOBYTE(object[1]) = v3 != 0;
  object[2] = v3;
  object[3] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (object[1])
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = object[3];
  if (object[3] && !atomic_fetch_add(&object[3][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (__p)
  {
    if (*(__p + 48) == 1)
    {
      v8 = *(__p + 5);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = *(__p + 3);
    if (v9 == __p)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    operator delete(__p);
  }
}

void sub_240EDAAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a12);
  std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyErrorEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p = a1;
  memset(&object[1], 170, 24);
  if (*(a1 + 48) != 1)
  {
    LOBYTE(object[1]) = 1;
    object[2] = 0;
    object[3] = 0;
LABEL_9:
    object[0] = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, object);
    if (object[0])
    {
      dispatch_release(object[0]);
    }

    goto LABEL_14;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    goto LABEL_14;
  }

  v2 = a1;
  v3 = *(a1 + 32);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_14;
  }

  LOBYTE(object[1]) = v3 != 0;
  object[2] = v3;
  object[3] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (object[1])
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = object[3];
  if (object[3] && !atomic_fetch_add(&object[3][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (__p)
  {
    if (*(__p + 48) == 1)
    {
      v8 = *(__p + 5);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = *(__p + 3);
    if (v9 == __p)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    operator delete(__p);
  }
}

void sub_240EDAD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a12);
  std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[56] == 1)
    {
      v3 = *(v2 + 6);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    v4 = *(v2 + 4);
    if (v4 == v2 + 8)
    {
      (*(*v4 + 32))(v4);
      v5 = *v2;
      if (!*v2)
      {
LABEL_13:
        operator delete(v2);
        return a1;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = *v2;
      if (!*v2)
      {
        goto LABEL_13;
      }
    }

    dispatch_group_leave(v5);
    if (*v2)
    {
      dispatch_release(*v2);
    }

    goto LABEL_13;
  }

  return a1;
}

void **dispatch::async<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v10 = a1;
  memset(&object[1], 170, 24);
  if (*(a1 + 56) != 1)
  {
    LOBYTE(object[1]) = 1;
    object[2] = 0;
    object[3] = 0;
    v6 = *a1;
    object[0] = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = a1[6];
  if (!v2)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    goto LABEL_16;
  }

  v3 = a1[5];
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    std::__shared_weak_count::__release_weak(v2);
    goto LABEL_16;
  }

  LOBYTE(object[1]) = v3 != 0;
  object[2] = v3;
  object[3] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v2);
  if (object[1])
  {
    v6 = *a1;
    object[0] = v6;
    if (!v6)
    {
LABEL_9:
      v7 = a1[4];
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v7 + 48))(v7, object);
      if (object[0])
      {
        dispatch_release(object[0]);
      }

      goto LABEL_16;
    }

LABEL_8:
    dispatch_retain(v6);
    goto LABEL_9;
  }

LABEL_16:
  v8 = object[3];
  if (object[3] && !atomic_fetch_add(&object[3][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&v10);
}

void sub_240EDAFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t object, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a12);
  std::unique_ptr<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_1>(dispatch_group_s *,dispatch_queue_s *,abb::router::Client::State::notifyWillSleepEvent_sync(void)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v18 = v4;
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!a1[1])
  {
    goto LABEL_20;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x245CD2F50](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_12;
  }

  v7 = xpc_null_create();
LABEL_11:
  xdict = v7;
LABEL_12:
  xpc_release(v6);
  v8 = xpc_int64_create(5);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v9 = xdict;
  xpc_dictionary_set_value(xdict, "ClientStatus", v8);
  v10 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v10);
  v11 = *(v3 + 264);
  if (v11 && (*(*v11 + 16))(v11))
  {
    (*(**(v3 + 264) + 40))(*(v3 + 264), &xdict);
    v9 = xdict;
  }

  else
  {
    v12 = *(v3 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEBUG, "#D Skipping message as link is not ready", buf, 2u);
    }
  }

  xpc_release(v9);
  v4 = v18;
  if (v18)
  {
LABEL_20:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_22:
  if (a1)
  {
    v14 = a1[2];
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    operator delete(a1);
  }
}

void sub_240EDB238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyIsAwakeEvent_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p = a1;
  memset(&object[1], 170, 24);
  if (*(a1 + 48) != 1)
  {
    LOBYTE(object[1]) = 1;
    object[2] = 0;
    object[3] = 0;
LABEL_9:
    object[0] = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, object);
    if (object[0])
    {
      dispatch_release(object[0]);
    }

    goto LABEL_14;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    goto LABEL_14;
  }

  v2 = a1;
  v3 = *(a1 + 32);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    LOBYTE(object[1]) = 0;
    object[2] = 0;
    object[3] = 0;
    std::__shared_weak_count::__release_weak(v1);
    goto LABEL_14;
  }

  LOBYTE(object[1]) = v3 != 0;
  object[2] = v3;
  object[3] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_weak(v1);
  a1 = v2;
  if (object[1])
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = object[3];
  if (object[3] && !atomic_fetch_add(&object[3][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (__p)
  {
    if (*(__p + 48) == 1)
    {
      v8 = *(__p + 5);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = *(__p + 3);
    if (v9 == __p)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    operator delete(__p);
  }
}

void sub_240EDB4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(&a12);
  std::unique_ptr<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0,std::default_delete<abb::router::Client::State::notifyStartedEvent_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

abb::router::SendProxy *abb::router::SendProxy::SendProxy(abb::router::SendProxy *this, abb::router::Client::State **a2, const abb::router::Message *a3)
{
  *this = &unk_2852C98A0;
  *(this + 1) = a2;
  abb::router::Message::Message(this + 16, a3);
  *(this + 22) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(a2[1]);
  *(this + 100) = 0;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(this + 3) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  return this;
}

{
  *this = &unk_2852C98A0;
  *(this + 1) = a2;
  abb::router::Message::Message(this + 16, a3);
  *(this + 22) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(a2[1]);
  *(this + 100) = 0;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(this + 3) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  return this;
}

uint64_t abb::router::SendProxy::SendProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v9, a3);
  abb::router::Message::Message(a1 + 16, v9);
  abb::router::Message::~Message(v9);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(a1 + 24) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  return a1;
}

{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v9, a3);
  abb::router::Message::Message(a1 + 16, v9);
  abb::router::Message::~Message(v9);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(a1 + 24) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  return a1;
}

void sub_240EDB664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void sub_240EDB710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t abb::router::SendProxy::SendProxy(uint64_t a1, uint64_t a2, __int16 a3, char **a4)
{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v10, a3, a4);
  abb::router::Message::Message(a1 + 16, v10);
  abb::router::Message::~Message(v10);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *v7;
    if ((*(*(a1 + 24) + 8) - v8) >= 0x10)
    {
      *(v8 + 12) = NextTrxId;
    }
  }

  return a1;
}

{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v10, a3, a4);
  abb::router::Message::Message(a1 + 16, v10);
  abb::router::Message::~Message(v10);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *v7;
    if ((*(*(a1 + 24) + 8) - v8) >= 0x10)
    {
      *(v8 + 12) = NextTrxId;
    }
  }

  return a1;
}

void sub_240EDB7C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void sub_240EDB870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void *abb::router::SendProxy::SendProxy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_2852C98A0;
  a1[1] = v4;
  abb::router::Message::Message((a1 + 2), a2 + 16);
  v6 = (a2 + 176);
  v5 = *(a2 + 176);
  v7 = a2 + 152;
  if (!v5)
  {
    v8 = a1 + 22;
    goto LABEL_5;
  }

  if (v5 != v7)
  {
    a1[22] = v5;
    v8 = (a2 + 176);
LABEL_5:
    *v8 = 0;
    goto LABEL_7;
  }

  a1[22] = a1 + 19;
  (*(**v6 + 24))(*v6, a1 + 19);
LABEL_7:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  BYTE8(v14) = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_2852C94E8;
  DWORD2(v15) = 0;
  BYTE12(v15) = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  abb::router::Message::operator=(a2 + 16, v11);
  abb::router::Message::~Message(v11);
  v9 = *v6;
  *v6 = 0;
  if (v9 == v7)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

void sub_240EDBA10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::function<void ()(abb::router::Message const&)>::~function(v3);
  abb::router::Message::~Message((v2 + 16));
  _Unwind_Resume(a1);
}

void abb::router::SendProxy::~SendProxy(abb::router::SendProxy *this)
{
  *this = &unk_2852C98A0;
  if (!*(*(this + 1) + 8))
  {
    goto LABEL_8;
  }

  v3 = *(this + 3);
  v2 = *(this + 4);
  if (!v2 || (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v4 = *(this + 22);
    if (v4 == (this + 152))
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_5:
  abb::router::Client::sendInternal(*(this + 1), this);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  BYTE8(v8) = 0;
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_2852C94E8;
  DWORD2(v9) = 0;
  BYTE12(v9) = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  abb::router::Message::operator=(this + 16, v5);
  abb::router::Message::~Message(v5);
  v4 = *(this + 22);
  if (v4 == (this + 152))
  {
LABEL_6:
    (*(*v4 + 32))(v4);
    goto LABEL_11;
  }

LABEL_9:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_11:
  abb::router::Message::~Message((this + 16));
}

{
  abb::router::SendProxy::~SendProxy(this);

  operator delete(v1);
}

uint64_t abb::router::SendProxy::timeout(uint64_t result, uint64_t a2)
{
  *(result + 100) = 0;
  *(result + 72) = a2;
  *(result + 80) = 1;
  return result;
}

uint64_t abb::router::SendProxy::queuePolicy(uint64_t result, int a2)
{
  *(result + 100) = 0;
  *(result + 88) = a2;
  *(result + 92) = 1;
  return result;
}

uint64_t abb::router::SendProxy::allowSleep(uint64_t result)
{
  *(result + 100) = 0;
  *(result + 96) = 257;
  return result;
}

abb::router::SyncSendProxy *abb::router::SyncSendProxy::SyncSendProxy(abb::router::SyncSendProxy *this, abb::router::Client::State **a2, const abb::router::Message *a3)
{
  *this = &unk_2852C98A0;
  *(this + 1) = a2;
  abb::router::Message::Message(this + 16, a3);
  *(this + 22) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(a2[1]);
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(this + 3) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  *this = &unk_2852C98C0;
  *(this + 100) = 0;
  *(this + 22) = 2;
  *(this + 92) = 1;
  return this;
}

{
  *this = &unk_2852C98A0;
  *(this + 1) = a2;
  abb::router::Message::Message(this + 16, a3);
  *(this + 22) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(a2[1]);
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(this + 3) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  *this = &unk_2852C98C0;
  *(this + 100) = 0;
  *(this + 22) = 2;
  *(this + 92) = 1;
  return this;
}

uint64_t abb::router::SyncSendProxy::SyncSendProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v9, a3);
  abb::router::Message::Message(a1 + 16, v9);
  abb::router::Message::~Message(v9);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(a1 + 24) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  *a1 = &unk_2852C98C0;
  *(a1 + 100) = 0;
  *(a1 + 88) = 2;
  *(a1 + 92) = 1;
  return a1;
}

{
  *a1 = &unk_2852C98A0;
  *(a1 + 8) = a2;
  abb::router::Message::Message(v9, a3);
  abb::router::Message::Message(a1 + 16, v9);
  abb::router::Message::~Message(v9);
  *(a1 + 176) = 0;
  NextTrxId = abb::router::Client::State::getNextTrxId(*(a2 + 8));
  *(a1 + 100) = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if ((*(*(a1 + 24) + 8) - v7) >= 0x10)
    {
      *(v7 + 12) = NextTrxId;
    }
  }

  *a1 = &unk_2852C98C0;
  *(a1 + 100) = 0;
  *(a1 + 88) = 2;
  *(a1 + 92) = 1;
  return a1;
}

void sub_240EDBE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void sub_240EDBF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void *abb::router::SyncSendProxy::SyncSendProxy(void *a1, uint64_t a2)
{
  result = abb::router::SendProxy::SendProxy(a1, a2);
  *result = &unk_2852C98C0;
  return result;
}

{
  result = abb::router::SendProxy::SendProxy(a1, a2);
  *result = &unk_2852C98C0;
  return result;
}

void abb::router::SyncSendProxy::~SyncSendProxy(abb::router::SyncSendProxy *this)
{
  *this = &unk_2852C98C0;
  if (*(*(this + 1) + 8))
  {
    v3 = *(this + 3);
    v2 = *(this + 4);
    if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else if (!v3)
    {
      goto LABEL_8;
    }

    v4 = *(this + 1);
    if (v4)
    {
      v5 = **v4;
    }

    abb::router::Client::sendInternal(v4, this);
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    BYTE8(v9) = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[0] = &unk_2852C94E8;
    DWORD2(v10) = 0;
    BYTE12(v10) = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    abb::router::Message::operator=(this + 16, v6);
    abb::router::Message::~Message(v6);
  }

LABEL_8:
  abb::router::SendProxy::~SendProxy(this);
}

{
  abb::router::SyncSendProxy::~SyncSendProxy(this);

  operator delete(v1);
}

uint64_t abb::router::SyncSendProxy::timeout(uint64_t result, uint64_t a2)
{
  *(result + 100) = 0;
  *(result + 72) = a2;
  *(result + 80) = 1;
  return result;
}

uint64_t abb::router::SyncSendProxy::queuePolicy(uint64_t result, int a2)
{
  *(result + 100) = 0;
  *(result + 88) = a2;
  *(result + 92) = 1;
  return result;
}

uint64_t abb::router::SyncSendProxy::allowSleep(uint64_t result)
{
  *(result + 100) = 0;
  *(result + 96) = 257;
  return result;
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2821F6658]();
}

{
  return MEMORY[0x2821F6660]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A70]();
}

{
  return MEMORY[0x2821F6A88]();
}

{
  return MEMORY[0x2821F6A98]();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

uint64_t std::ios::~ios()
{
  return MEMORY[0x2821F7EE8]();
}

{
  return MEMORY[0x2821F7EF0]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}