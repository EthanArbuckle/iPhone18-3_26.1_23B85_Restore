void sub_233522510(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D47208]);
  v3 = [*(a1 + 32) incomingCall];
  if (v3 || ([*(a1 + 32) incomingVideoCall], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "An incoming call exists. Answering it and returning success", v10, 2u);
    }

    [*(a1 + 32) answerCall:v4];
    v6 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2335271FC(v9);
    }

    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"No call to answer"];
    v4 = v2;
  }

  v7 = *(a1 + 40);
  v8 = [v6 dictionary];
  (*(v7 + 16))(v7, v8);
}

void sub_2335227E4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D47208]);
  v3 = [*(a1 + 32) incomingCall];
  if (v3 || ([*(a1 + 32) incomingVideoCall], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "An incoming call exists. Declining it and returning success: %@", &v14, 0xCu);
    }

    [*(a1 + 32) disconnectCall:v4 withReason:2];
    v6 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v10 = [*(a1 + 32) hasCurrentCalls];
    v11 = PHDefaultLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_233521000, v12, OS_LOG_TYPE_DEFAULT, "At least one call exists. Hanging up and returning success", &v14, 2u);
      }

      [*(a1 + 32) disconnectCurrentCall];
      v13 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_233527240(v12);
      }

      v13 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"No call to hang up"];
    }

    v6 = v13;
    v4 = 0;
  }

  v7 = *(a1 + 40);
  v8 = [v6 dictionary];
  (*(v7 + 16))(v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_233524870(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_233527670(a1, v4, v5);
    }

    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Unable to open url"];
  }

  else
  {
    v6 = [MEMORY[0x277D47650] callStarted];
    [v6 setPhoneLogId:*(a1 + 32)];
    v7 = [*(a1 + 40) provider];
    v8 = [v7 isTelephonyProvider];

    if (v8)
    {
      v9 = [*(a1 + 40) handle];
      TUGreenTeaLogOutgoingSiriCallToHandle();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_233524B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_233524B44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233524B5C(uint64_t a1)
{
  v2 = [*(a1 + 32) frontmostAudioOrVideoCall];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 callStatus];
    if (v4 == 3)
    {
      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "Outgoing call exists. Returning failure", buf, 2u);
      }

      v6 = MEMORY[0x277D48770];
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_11;
      }

      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "Incoming call exists. Returning failure", buf, 2u);
      }

      v6 = MEMORY[0x277D48768];
    }

    v7 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*v6];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

LABEL_11:
  v10 = *(*(*(a1 + 64) + 8) + 40);
  if (!v10)
  {
    v13 = [*(a1 + 40) peerInfoForCurrentCommand];
    v12 = [v13 idsIdentifier];

    v14 = [*(a1 + 48) appPunchOutDialRequestWithEndpointIDSDestinationURI:v12];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_233524D6C;
    v17[3] = &unk_2789DD810;
    v18 = *(a1 + 56);
    [v15 _performAppPunchOutWithDialRequest:v14 withServiceHelper:v16 completion:v17];

    goto LABEL_15;
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = [v10 dictionary];
    (*(v11 + 16))(v11, v12);
LABEL_15:
  }
}

void sub_233524D6C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_233521000, v4, OS_LOG_TYPE_DEFAULT, "appPunchOutResult: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v3 dictionary];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_233524F34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_233524F74(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id PHDefaultLog()
{
  if (qword_27DE0E898 != -1)
  {
    sub_2335276EC();
  }

  v1 = qword_27DE0E890;

  return v1;
}

uint64_t sub_233524FD8()
{
  qword_27DE0E890 = os_log_create("com.apple.calls.mobilephone", "Default");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLog()
{
  if (qword_27DE0E8A8 != -1)
  {
    sub_233527700();
  }

  v1 = qword_27DE0E8A0;

  return v1;
}

uint64_t sub_233525060()
{
  qword_27DE0E8A0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLogQueue()
{
  if (qword_27DE0E8B8 != -1)
  {
    sub_233527714();
  }

  v1 = qword_27DE0E8B0;

  return v1;
}

void sub_2335250E8()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v0 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v2);
  v1 = qword_27DE0E8B0;
  qword_27DE0E8B0 = v0;
}

uint64_t sub_233525194()
{
  qword_27DE0E8C0 = objc_alloc_init(MEMORY[0x277CBDAB8]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_233525398(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDeleted] & 1) != 0 || (objc_msgSend(v2, "isTrashed"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isBlocked] ^ 1;
  }

  return v3;
}

uint64_t sub_2335253EC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 isDataAvailable] || (objc_msgSend(v2, "isDeleted") & 1) != 0 || (objc_msgSend(v2, "isTrashed") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isBlocked] ^ 1;
  }

  return v3;
}

uint64_t sub_2335269EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) didSpecifyContacts];
  v5 = *(a1 + 32);
  if (!v4)
  {
    v12 = [v5 start];
    if (v12)
    {
      v13 = v12;
      v14 = [*(a1 + 32) start];
      v15 = [v3 date];
      v16 = [v14 compare:v15];

      if (v16 == 1)
      {
        goto LABEL_10;
      }
    }

    v17 = [*(a1 + 32) end];
    if (v17)
    {
      v18 = v17;
      v19 = [*(a1 + 32) end];
      v20 = [v3 date];
      v21 = [v19 compare:v20];

      if (v21 == -1)
      {
        goto LABEL_10;
      }
    }

    v22 = [*(a1 + 32) isNew];
    if ([v22 BOOLValue])
    {
      v23 = [v3 isRead];

      if (v23)
      {
LABEL_10:
        v11 = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v11 = 1;
    goto LABEL_15;
  }

  v6 = [v5 contactsByVoicemailIdentifier];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "identifier")}];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [*(a1 + 32) specifiedContactIdentifiers];
    v10 = [v8 identifier];
    v11 = [v9 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  return v11;
}

uint64_t sub_233526C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) didSpecifyContacts])
  {
    v8 = [*(a1 + 32) end];
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) end];
      v11 = [v3 date];
      v12 = [v10 compare:v11];

      if (v12 == -1)
      {
        goto LABEL_8;
      }
    }

    v13 = [*(a1 + 32) isNew];
    if ([v13 BOOLValue])
    {
      v14 = [v3 read];

      if (v14)
      {
LABEL_8:
        v7 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v7 = 1;
    goto LABEL_13;
  }

  v4 = [v3 contactIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) specifiedContactIdentifiers];
    v6 = [v3 contactIdentifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  return v7;
}

void sub_233527284()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_233524F50();
  sub_233524F74(&dword_233521000, v0, v1, "Could not find contact with identifier %{sensitive}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2335272EC()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_233524F50();
  sub_233524F74(&dword_233521000, v0, v1, "Could not read contents of %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_233527388(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_233521000, a2, OS_LOG_TYPE_ERROR, "Retrieving subscription info failed with error %@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_233527538()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_233524F50();
  sub_233524F74(&dword_233521000, v0, v1, "[PHAssistantCall _validate]: Destination ID %@ is NOT VALID for country %@ according to PNIsValidPhoneNumberForCountry, failing validation");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_233527670(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  sub_233524F74(&dword_233521000, a2, a3, "Failed to perform app punch-out with URL %@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}