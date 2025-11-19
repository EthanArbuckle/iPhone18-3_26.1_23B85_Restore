BOOL __sec_protocol_options_add_external_pre_shared_key_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 384);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] array];
      *(a2 + 384) = v5;
    }

    [v5 addObject:*(a1 + 32)];
  }

  return a2 != 0;
}

void sec_protocol_options_set_external_pre_shared_key_selection_block(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5 && a3)
  {
    v7 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __sec_protocol_options_set_queue_helper_block_invoke;
    v10[3] = &__block_descriptor_tmp_37;
    v11 = 0;
    v10[4] = a3;
    sec_protocol_options_access_handle(v7, v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __sec_protocol_options_set_external_pre_shared_key_selection_block_block_invoke;
    v8[3] = &unk_1E70D49F0;
    v9 = v6;
    sec_protocol_options_access_handle(v7, v8);
  }
}

BOOL __sec_protocol_options_set_external_pre_shared_key_selection_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 392);
    if (v4)
    {
      *(a2 + 392) = 0;
      CFRelease(v4);
    }

    *(a2 + 392) = _Block_copy(*(a1 + 32));
  }

  return a2 != 0;
}

void sec_protocol_options_set_pake_challenge_block(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5 && a3)
  {
    v7 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __sec_protocol_options_set_queue_helper_block_invoke;
    v10[3] = &__block_descriptor_tmp_37;
    v11 = 1;
    v10[4] = a3;
    sec_protocol_options_access_handle(v7, v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __sec_protocol_options_set_pake_challenge_block_block_invoke;
    v8[3] = &unk_1E70D49F0;
    v9 = v6;
    sec_protocol_options_access_handle(v7, v8);
  }
}

BOOL __sec_protocol_options_set_pake_challenge_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 416);
    if (v4)
    {
      *(a2 + 416) = 0;
      CFRelease(v4);
    }

    *(a2 + 416) = _Block_copy(*(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_use_raw_external_pre_shared_keys(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __sec_protocol_options_set_use_raw_external_pre_shared_keys_block_invoke;
    v2[3] = &__block_descriptor_33_e9_B16__0_v8l;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_use_raw_external_pre_shared_keys_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 408) = *(a2 + 408) & 0xFE | *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_raw_external_pre_shared_keys_enabled(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_get_raw_external_pre_shared_keys_enabled_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_options_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_options_get_raw_external_pre_shared_keys_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 408) & 1;
  }

  return a2 != 0;
}

id sec_protocol_options_get_sec_session_ticket_info(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__1167;
    v10 = __Block_byref_object_dispose__1168;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_get_sec_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_options_access_handle(v1, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __sec_protocol_options_get_sec_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 376);
    if (v3)
    {
      v5 = v3;
      v6 = [SecSessionInfo alloc];
      v7 = [v5 psk];
      v8 = [v5 psk_id];
      v9 = -[SecSessionInfo initWithPSK:::::](v6, "initWithPSK:::::", v7, v8, [v5 ticket_age_add], objc_msgSend(v5, "ticket_creation_time"), objc_msgSend(v5, "ticket_lifetime"));
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  return a2 != 0;
}

void sec_protocol_metadata_set_session_ticket_info(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_set_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49C8;
    v6 = v3;
    sec_protocol_metadata_access_handle(a1, v5);
  }
}

BOOL __sec_protocol_metadata_set_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [SecSessionInfo alloc];
    v5 = [*(a1 + 32) psk];
    v6 = [*(a1 + 32) psk_id];
    v7 = -[SecSessionInfo initWithPSK:::::](v4, "initWithPSK:::::", v5, v6, [*(a1 + 32) ticket_age_add], objc_msgSend(*(a1 + 32), "ticket_creation_time"), objc_msgSend(*(a1 + 32), "ticket_lifetime"));

    v8 = *(a2 + 368);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a2 + 368) = v7;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_negotiated_epsk(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_negotiated_epsk_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_negotiated_epsk_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 376) & 2) != 0;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_epsk_offered(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_epsk_offered_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_epsk_offered_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 376) & 1;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_pake_offered(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_pake_offered_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_pake_offered_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 376) & 4) != 0;
  }

  return a2 != 0;
}

uint64_t sec_session_tickets_are_equal(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v3 psk];
  v6 = [v4 psk];
  v7 = [v5 isEqualToData:v6];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v3 psk_id];
  v9 = [v4 psk_id];
  v10 = [v8 isEqualToData:v9];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v3 ticket_age_add];
  if (v11 == [v4 ticket_age_add] && (v12 = objc_msgSend(v3, "ticket_lifetime"), v12 == objc_msgSend(v4, "ticket_lifetime")))
  {
    v13 = [v3 ticket_creation_time];
    v14 = v13 == [v4 ticket_creation_time];
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  return v14;
}

id SecEscrowRequestSetupControlProtocol(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  [v1 setClasses:v2 forSelector:sel_triggerEscrowUpdate_options_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_cachePrerecord_serializedPrerecord_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchPrerecord_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRequestWaitingOnPasscode_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRequestStatuses_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_resetAllRequests_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_storePrerecordsInEscrow_ argumentIndex:1 ofReply:1];

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

CFURLRef SecCopyHomeURL()
{
  v0 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v0;
  }

  else
  {

    return CFCopyHomeDirectoryURL();
  }
}

CFURLRef SecCopyBaseFilesURL(int a1)
{
  v1 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v1;
  }

  else if (a1)
  {

    return CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  }

  else
  {

    return SecCopyHomeURL();
  }
}

CFTypeRef SecSetCustomHomeURL(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  sCustomHomeURL = v1;
  return cf;
}

void SecSetCustomHomeURLString(CFStringRef filePath)
{
  v2 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    sCustomHomeURL = 0;
    CFRelease(v2);
  }

  if (filePath)
  {
    sCustomHomeURL = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
  }
}

uint64_t SECSFAActionDropEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeEvent;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeEvent;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeCount;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeCount;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OctagonIsSOSFeatureEnabled()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OctagonSOSFeatureIsEnabledOverrideSet == 1)
  {
    v0 = secLogObjForScope("octagon");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      if (OctagonSOSFeatureIsEnabledOverride)
      {
        v1 = @"enabled";
      }

      else
      {
        v1 = @"disabled";
      }

      v5 = 138412290;
      v6 = v1;
      _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "SOS Feature is %@ (overridden)", &v5, 0xCu);
    }

    v2 = &OctagonSOSFeatureIsEnabledOverride;
  }

  else
  {
    if (OctagonIsSOSFeatureEnabled_onceToken != -1)
    {
      dispatch_once(&OctagonIsSOSFeatureEnabled_onceToken, &__block_literal_global_1513);
    }

    v2 = &OctagonIsSOSFeatureEnabled_sosEnabled;
  }

  result = *v2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __OctagonIsSOSFeatureEnabled_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  OctagonIsSOSFeatureEnabled_sosEnabled = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (OctagonIsSOSFeatureEnabled_sosEnabled)
    {
      v1 = @"enabled";
    }

    else
    {
      v1 = @"disabled";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "SOS Feature is %@ (via feature flags)", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t OctagonSetSOSFeatureEnabled(uint64_t result)
{
  OctagonSOSFeatureIsEnabledOverrideSet = 1;
  OctagonSOSFeatureIsEnabledOverride = result;
  return result;
}

uint64_t OctagonSupportsPersonaMultiuser()
{
  if (gOctagonSupportsPersonaMultiuserStatus)
  {
    v0 = gOctagonSupportsPersonaMultiuserStatus == 1;
  }

  else
  {
    if (OctagonSupportsPersonaMultiuser_onceToken != -1)
    {
      dispatch_once(&OctagonSupportsPersonaMultiuser_onceToken, &__block_literal_global_37);
    }

    v0 = OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus;
  }

  return v0 & 1;
}

void __OctagonSupportsPersonaMultiuser_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser is %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void OctagonSetSupportsPersonaMultiuser(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  gOctagonSupportsPersonaMultiuserStatus = v2;
  v3 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (a1)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser overridden to %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void OctagonClearSupportsPersonaMultiuserOverride()
{
  gOctagonSupportsPersonaMultiuserStatus = 0;
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser override removed", v1, 2u);
  }
}

uint64_t SOSCompatibilityModeEnabled()
{
  if (gDeferSOSFromSignInStatus)
  {
    v0 = gDeferSOSFromSignInStatus == 1;
  }

  else
  {
    if (SOSCompatibilityModeEnabled_onceToken != -1)
    {
      dispatch_once(&SOSCompatibilityModeEnabled_onceToken, &__block_literal_global_42);
    }

    v0 = SOSCompatibilityModeEnabled_ffDeferSOSFromSignInStatus;
  }

  return v0 & 1;
}

void __SOSCompatibilityModeEnabled_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  SOSCompatibilityModeEnabled_ffDeferSOSFromSignInStatus = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (SOSCompatibilityModeEnabled_ffDeferSOSFromSignInStatus)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "DeferSOSFromSignIn is %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void SetSOSCompatibilityMode(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  gDeferSOSFromSignInStatus = v2;
  v3 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (a1)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "DeferSOSFromSignIn overridden to %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ClearSOSCompatibilityModeOverride()
{
  gDeferSOSFromSignInStatus = 0;
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "DeferSOSFromSignIn override removed", v1, 2u);
  }
}

uint64_t IsRollOctagonIdentityEnabled()
{
  if (gRollOctagonIdentityEnabled)
  {
    v0 = gRollOctagonIdentityEnabled == 1;
  }

  else
  {
    if (IsRollOctagonIdentityEnabled_onceToken != -1)
    {
      dispatch_once(&IsRollOctagonIdentityEnabled_onceToken, &__block_literal_global_46);
    }

    v0 = IsRollOctagonIdentityEnabled_ffRollOctagonIdentityEnabled;
  }

  return v0 & 1;
}

void __IsRollOctagonIdentityEnabled_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  IsRollOctagonIdentityEnabled_ffRollOctagonIdentityEnabled = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (IsRollOctagonIdentityEnabled_ffRollOctagonIdentityEnabled)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "RollIdentityOnMIDRotation is %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void SetRollOctagonIdentityEnabled(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  gRollOctagonIdentityEnabled = v2;
  v3 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (a1)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "RollIdentityOnMIDRotation overridden to %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ClearRollOctagonIdentityEnabledOverride()
{
  gRollOctagonIdentityEnabled = 0;
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "RollIdentityOnMIDRotation override removed", v1, 2u);
  }
}

uint64_t NtlmGeneratorCreate(int a1, void *a2)
{
  v4 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  result = 0;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = a1;
  *a2 = v5;
  return result;
}

void NtlmGeneratorRelease(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t NtlmCreateClientRequest(_DWORD *a1, __CFData **a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return 4294967188;
  }

  v5 = Mutable;
  CFDataAppendBytes(Mutable, "NTLMSSP", 8);
  LODWORD(bytes) = 1;
  CFDataAppendBytes(v5, &bytes, 4);
  if ((*a1 & 2) != 0)
  {
    v6 = 557575;
  }

  else
  {
    v6 = 33287;
  }

  a1[2] = v6;
  LODWORD(bytes) = v6;
  CFDataAppendBytes(v5, &bytes, 4);
  appendSecBuf(v5, 0, &bytes);
  appendSecBuf(v5, 0, &bytes);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t NtlmCreateClientResponse(uint64_t a1, const __CFData *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, __CFData **a6)
{
  v15 = 0;
  cf = 0;
  PasswordHashes = _NtlmGeneratePasswordHashes(*MEMORY[0x1E695E480], a5, &cf, &v15);
  v13 = cf;
  if (!PasswordHashes)
  {
    PasswordHashes = _NtlmCreateClientResponse(a1, a2, a3, a4, cf, v11, a6);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return PasswordHashes;
}

uint64_t _NtlmGeneratePasswordHashes(const __CFAllocator *a1, const __CFString *a2, CFDataRef *a3, CFDataRef *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(md, 170, sizeof(md));
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15 = -1431655766;
  v7 = ntlmStringToLE(a2, &v16, &v15);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = v16;
    v10 = v15;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[13] = v11;
    *&c.data[6] = v11;
    *&c.data[10] = v11;
    *&c.Nl = v11;
    *&c.data[2] = v11;
    *&c.A = v11;
    CC_MD4_Init(&c);
    CC_MD4_Update(&c, v9, v10);
    CC_MD4_Final(md, &c);
    free(v9);
    v12 = CFDataCreate(a1, md, 16);
    *a3 = v12;
    memset(md, 0, sizeof(md));
    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294967188;
    }

    *a4 = CFDataCreate(0, _NtlmGeneratePasswordHashes_zero, 16);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _NtlmCreateClientResponse(uint64_t a1, CFDataRef theData, const __CFString *a3, const __CFString *a4, const __CFData *a5, uint64_t a6, __CFData **a7)
{
  v76 = *MEMORY[0x1E69E9840];
  memset(dataOut, 170, sizeof(dataOut));
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  *&v70 = 0xAAAAAAAAAAAAAAAALL;
  *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!theData)
  {
    goto LABEL_6;
  }

  Length = CFDataGetLength(theData);
  if (Length < 0x20)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr != 0x5053534D4C544ELL)
  {
    goto LABEL_6;
  }

  v15 = BytePtr;
  if (*(BytePtr + 2) != 2)
  {
    goto LABEL_6;
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  if ((Length & 0xFFFFFFFE) < 0x12uLL)
  {
    goto LABEL_6;
  }

  v53 = a7;
  v19 = *(BytePtr + 6);
  v20 = *(BytePtr + 4);
  v16 = 4294967246;
  if (!__CFADD__(v20, v19) && !((v20 + v19) >> 16) && (v20 + v19) <= Length)
  {
    v52 = malloc_type_malloc(*(BytePtr + 6), 0x100004077774924uLL);
    memmove(v52, &v15[v20], v19);
    v21 = *(v15 + 5);
    dataOut[6] = *(v15 + 3);
    if ((Length & 0xFFFFFFF0) >= 0x30uLL)
    {
      if ((Length & 0xFFFFFFFE) < 0x2EuLL || (v23 = *(v15 + 20), v28 = *(v15 + 11), __CFADD__(v28, v23)) || (v28 + v23) >> 16 || (v28 + v23) > Length)
      {
        free(v52);
LABEL_6:
        v16 = 4294967246;
        goto LABEL_7;
      }

      v22 = malloc_type_malloc(*(v15 + 20), 0x100004077774924uLL);
      memmove(v22, &v15[v28], v23);
    }

    else
    {
      v22 = 0;
      LODWORD(v23) = 0;
    }

    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      if (!a3)
      {
LABEL_17:
        CFDataAppendBytes(Mutable, "NTLMSSP", 8);
        LODWORD(bytes) = 3;
        CFDataAppendBytes(Mutable, &bytes, 4);
        if (v22 && v23 && (v21 & 0x800000) != 0 && (*a1 & 4) != 0)
        {
          v51 = v21;
          *v75 = 0xAAAAAAAAAAAAAAAALL;
          v29 = *MEMORY[0x1E69E94D8];
          CCRandomCopyBytes();
          bytes = *CFDataGetBytePtr(a5);
          MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
          v31 = MutableCopy;
          if (a3)
          {
            CFStringAppend(MutableCopy, a3);
          }

          CFStringUppercase(v31, 0);
          v68 = 0;
          v67 = -1431655766;
          memset(v73, 170, sizeof(v73));
          memset(v72, 170, sizeof(v72));
          *v66 = 257;
          ntlmStringToLE(v31, &v68, &v67);
          v50 = v68;
          ntlmHmacMD5(&bytes, v68, v67, &v73[2]);
          v73[0] = dataOut[6];
          v73[1] = *v75;
          ntlmHmacMD5(&v73[2], v73, 0x10u, &v72[1]);
          *&dataOut[3] = v72[1];
          dataOut[5] = *v75;
          v32 = CFDataCreateMutable(0, 0);
          CFDataAppendBytes(v32, v66, 4);
          *v69 = 0;
          CFDataAppendBytes(v32, v69, 4);
          ntlmAppendTimestamp(v32);
          CFDataAppendBytes(v32, v75, 8);
          *v69 = 0;
          CFDataAppendBytes(v32, v69, 4);
          CFDataAppendBytes(v32, v22, v23);
          *v69 = 0;
          CFDataAppendBytes(v32, v69, 4);
          v33 = CFDataGetLength(v32);
          v34 = CFDataCreateMutable(0, 0);
          CFDataAppendBytes(v34, &dataOut[6], 8);
          v35 = CFDataGetBytePtr(v32);
          v36 = v33;
          v49 = v31;
          v37 = v33;
          CFDataAppendBytes(v34, v35, v33);
          v38 = CFDataGetBytePtr(v34);
          v39 = CFDataGetLength(v34);
          ntlmHmacMD5(&v73[2], v38, v39, v72);
          v27 = malloc_type_malloc(v37 + 16, 0x100004077774924uLL);
          *v27 = v72[0];
          v40 = CFDataGetBytePtr(v32);
          memmove(v27 + 1, v40, v36);
          if (v49)
          {
            CFRelease(v49);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          v41 = v37 + 16;
          if (v34)
          {
            CFRelease(v34);
          }

          if (v50)
          {
            free(v50);
          }

          appendSecBuf(Mutable, 24, &v65);
          appendSecBuf(Mutable, v37 + 16, &v64);
          *(a1 + 4) = 4;
        }

        else
        {
          if ((v21 & 0x80000) == 0 || (*a1 & 2) == 0)
          {
            v26 = 0;
            v27 = 0;
            v16 = 4294942003;
LABEL_27:
            if (v52)
            {
              free(v52);
            }

            if (v22)
            {
              free(v22);
            }

            if (v63)
            {
              free(v63);
            }

            if (v60)
            {
              free(v60);
            }

            if (v26)
            {
              free(v26);
            }

            if (a3)
            {
              CFRelease(a3);
            }

            if (v27 != dataOut && v27)
            {
              free(v27);
            }

            if (v16)
            {
              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            else
            {
              *v53 = Mutable;
            }

            goto LABEL_7;
          }

          v42 = *MEMORY[0x1E69E94D8];
          CCRandomCopyBytes();
          dataOut[4] = 0;
          dataOut[5] = 0;
          *&bytes = dataOut[6];
          *(&bytes + 1) = dataOut[3];
          v73[2] = 0xAAAAAAAAAAAAAAAALL;
          v73[3] = 0xAAAAAAAAAAAAAAAALL;
          md5Hash(&bytes, &v73[2]);
          v70 = *CFDataGetBytePtr(a5);
          v44 = lmv2Response(&v70, &v73[2], dataOut, *&v70, v43);
          if (v44)
          {
            v16 = v44;
            v26 = 0;
            v27 = 0;
            goto LABEL_27;
          }

          v51 = v21;
          *(a1 + 4) = 2;
          v41 = 24;
          appendSecBuf(Mutable, 24, &v65);
          appendSecBuf(Mutable, 24, &v64);
          v27 = dataOut;
        }

        if (a3)
        {
          if (ntlmStringFlatten(a3, v51 & 1, &v63, &v62))
          {
LABEL_69:
            v26 = 0;
            v16 = 4294967246;
            goto LABEL_27;
          }

          v45 = v62;
          v46 = v62;
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }

        appendSecBuf(Mutable, v46, &v61);
        if (!ntlmStringFlatten(a4, v51 & 1, &v60, &v59))
        {
          v47 = v59;
          appendSecBuf(Mutable, v59, &v58);
          ntlmHostName(v51 & 1, &v57, &v56);
          v48 = v56;
          appendSecBuf(Mutable, v56, &v55);
          appendSecBuf(Mutable, 0, &v54);
          LODWORD(bytes) = *(a1 + 8) & v51;
          CFDataAppendBytes(Mutable, &bytes, 4);
          secBufOffset(Mutable, v65);
          CFDataAppendBytes(Mutable, &dataOut[3], 24);
          secBufOffset(Mutable, v64);
          CFDataAppendBytes(Mutable, v27, v41);
          if (a3)
          {
            secBufOffset(Mutable, v61);
            CFDataAppendBytes(Mutable, v63, v45);
          }

          secBufOffset(Mutable, v58);
          CFDataAppendBytes(Mutable, v60, v47);
          secBufOffset(Mutable, v55);
          v26 = v57;
          CFDataAppendBytes(Mutable, v57, v48);
          v16 = 0;
          goto LABEL_27;
        }

        goto LABEL_69;
      }

      v25 = CFStringCreateMutableCopy(0, 0, a3);
      a3 = v25;
      if (v25)
      {
        CFStringUppercase(v25, 0);
        goto LABEL_17;
      }
    }

    v26 = 0;
    v27 = 0;
    v16 = 4294967188;
    goto LABEL_27;
  }

LABEL_7:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t NtlmGeneratePasswordHashes(const __CFAllocator *a1, const __CFString *a2, CFDataRef *a3, CFDataRef *a4)
{
  v8 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  if (!v8)
  {
    return 4294967188;
  }

  v9 = v8;
  *v8 = 6;
  *(v8 + 2) = 0;
  PasswordHashes = _NtlmGeneratePasswordHashes(a1, a2, a3, a4);
  free(v9);
  return PasswordHashes;
}

void sub_188835678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id KCSharingSetupInvitationNotificationProtocol(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  [v1 setClasses:v4 forSelector:sel_receivedGroupInvitation_ argumentIndex:0 ofReply:0];
  v5 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t SECSFAActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 99)
      {
        if (!v13)
        {
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v24 & 0x80000000) == 0)
            {
              break;
            }

            if (v17++ > 8)
            {
              goto LABEL_45;
            }
          }

          [a2 hasError];
          goto LABEL_45;
        }

        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 32);
          *(a1 + 32) = v15;

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 'd':
            [a1 clearOneofValuesForAction];
            *(a1 + 48) |= 1u;
            *(a1 + 16) = 1;
            v14 = objc_alloc_init(SECSFAActionTapToRadar);
            objc_storeStrong((a1 + 40), v14);
            v24 = 0xAAAAAAAAAAAAAAAALL;
            v25 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !SECSFAActionTapToRadarReadFrom(v14, a2))
            {
LABEL_47:

              return 0;
            }

            goto LABEL_32;
          case 'e':
            [a1 clearOneofValuesForAction];
            *(a1 + 48) |= 1u;
            *(a1 + 16) = 2;
            v14 = objc_alloc_init(SECSFAActionAutomaticBugCapture);
            objc_storeStrong((a1 + 8), v14);
            v24 = 0xAAAAAAAAAAAAAAAALL;
            v25 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !SECSFAActionAutomaticBugCaptureReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_32;
          case 'f':
            [a1 clearOneofValuesForAction];
            *(a1 + 48) |= 1u;
            *(a1 + 16) = 3;
            v14 = objc_alloc_init(SECSFAActionDropEvent);
            objc_storeStrong((a1 + 24), v14);
            v24 = 0xAAAAAAAAAAAAAAAALL;
            v25 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !SECSFAActionDropEventReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

LABEL_32:
            PBReaderRecallMark();

            goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1888371C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Could not configure SecuritydXPCProtocol: %@", &a9, 0xCu);
    }

    v11 = v9;
    objc_exception_throw(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __SecuritydXPCProxyObject_block_invoke()
{
  SecuritydXPCProxyObject_rpc = objc_alloc_init(SecuritydXPCClient);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SecKeychainSetOverrideStaticPersistentRefsIsEnabled(uint64_t result)
{
  SecKeychainStaticPersistentRefsEnabledOverrideSet = 1;
  SecKeychainStaticPersistentRefsEnabledOverride = result;
  return result;
}

uint64_t SECSFAActionAutomaticBugCaptureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E70D4C98[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__2486(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18883A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

CFIndex appendSecBuf(__CFData *a1, __int16 a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v7[1] = a2;
  v8 = 0;
  CFDataAppendBytes(a1, v7, 8);
  result = CFDataGetLength(a1);
  *a3 = result - 4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void secBufOffset(const __CFData *a1, CFIndex a2)
{
  *newBytes = CFDataGetLength(a1);
  v5.location = a2;
  v5.length = 4;
  CFDataReplaceBytes(a1, v5, newBytes, 4);
}

uint64_t ntlmStringToLE(const __CFString *a1, void *a2, _DWORD *a3)
{
  Length = CFStringGetLength(a1);
  if (Length > 2048)
  {
    return 4294967188;
  }

  v7 = Length;
  v8 = 2 * Length;
  v9 = malloc_type_malloc(2 * Length, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294967188;
  }

  v10 = v9;
  if (v7 >= 1)
  {
    v11 = 0;
    v12 = v9;
    do
    {
      *v12++ = CFStringGetCharacterAtIndex(a1, v11++);
    }

    while (v7 != v11);
  }

  result = 0;
  *a2 = v10;
  *a3 = v8;
  return result;
}

uint64_t ntlmStringFlatten(CFStringRef theString, int a2, char **a3, unsigned int *a4)
{
  if (a2)
  {

    return ntlmStringToLE(theString, a3, a4);
  }

  else
  {
    Length = CFStringGetLength(theString);
    if (Length <= 2048)
    {
      v9 = Length;
      v10 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (v10)
      {
        v11 = v10;
        if (CFStringGetCString(theString, v10, v9 + 1, 0x600u))
        {
          result = 0;
          *a3 = v11;
          *a4 = v9;
          return result;
        }

        free(v11);
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, theString, 0x8000100u, 0);
        if (!ExternalRepresentation)
        {
          return 4294967246;
        }

        v13 = ExternalRepresentation;
        v14 = CFDataGetLength(ExternalRepresentation);
        *a4 = v14;
        v15 = malloc_type_malloc(v14, 0x43D017FCuLL);
        *a3 = v15;
        if (v15)
        {
          v16 = v15;
          BytePtr = CFDataGetBytePtr(v13);
          memcpy(v16, BytePtr, *a4);
          CFRelease(v13);
          return 0;
        }

        CFRelease(v13);
      }
    }

    return 4294967188;
  }
}

_BYTE *ntlmHostName(int a1, void *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  strcpy(__s, "WORKSTATION");
  v6 = strlen(__s);
  v7 = v6;
  if (a1)
  {
    result = malloc_type_malloc(2 * v6, 0x100004077774924uLL);
    *a2 = result;
    if (v7)
    {
      v9 = __s;
      v10 = v7;
      do
      {
        v11 = *v9++;
        *result = v11;
        result[1] = 0;
        result += 2;
        --v10;
      }

      while (v10);
    }

    *a3 = 2 * v7;
  }

  else
  {
    v12 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    *a2 = v12;
    *a3 = v7;
    result = memcpy(v12, __s, v7);
    a2[v7] = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __ntlmGetBasis_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __CFAbsoluteTimeForGregorianZuluDay_block_invoke;
  v3[3] = &unk_1E70D4FF0;
  v3[4] = &v5;
  v3[5] = 0x100000641;
  v4 = 1;
  SecCFCalendarDoWithZuluCalendar(v3);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  **(a1 + 32) = v2;
}

CFAbsoluteTime __CFAbsoluteTimeForGregorianZuluDay_block_invoke(uint64_t a1, CFCalendarRef calendar)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v6 = *(a1 + 48);
  at = NAN;
  CFCalendarComposeAbsoluteTime(calendar, &at, "yMd", v3, v4, v6);
  result = at;
  *(*(*(a1 + 32) + 8) + 24) = at;
  return result;
}

void ntlmAppendTimestamp(__CFData *a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __ntlmGetBasis_block_invoke;
  v4[3] = &__block_descriptor_tmp_2940;
  v4[4] = &ntlmGetBasis_sntlmGetBasisSingleton;
  if (ntlmGetBasis_sntlmGetBasisOnce != -1)
  {
    dispatch_once(&ntlmGetBasis_sntlmGetBasisOnce, v4);
  }

  v4[0] = ((Current - *&ntlmGetBasis_sntlmGetBasisSingleton) * 10000000.0);
  CFDataAppendBytes(a1, v4, 8);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t md5Hash(const void *a1, unsigned __int8 *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6.data[13] = v4;
  *&v6.data[6] = v4;
  *&v6.data[10] = v4;
  *&v6.Nl = v4;
  *&v6.data[2] = v4;
  *&v6.A = v4;
  CC_MD5_Init(&v6);
  CC_MD5_Update(&v6, a1, 0x10u);
  return CC_MD5_Final(a2, &v6);
}

void ntlmHmacMD5(void *key, const void *a2, unsigned int a3, void *a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.ctx[88] = v7;
  *&v8.ctx[92] = v7;
  *&v8.ctx[80] = v7;
  *&v8.ctx[84] = v7;
  *&v8.ctx[72] = v7;
  *&v8.ctx[76] = v7;
  *&v8.ctx[64] = v7;
  *&v8.ctx[68] = v7;
  *&v8.ctx[56] = v7;
  *&v8.ctx[60] = v7;
  *&v8.ctx[48] = v7;
  *&v8.ctx[52] = v7;
  *&v8.ctx[40] = v7;
  *&v8.ctx[44] = v7;
  *&v8.ctx[32] = v7;
  *&v8.ctx[36] = v7;
  *&v8.ctx[24] = v7;
  *&v8.ctx[28] = v7;
  *&v8.ctx[16] = v7;
  *&v8.ctx[20] = v7;
  *&v8.ctx[8] = v7;
  *&v8.ctx[12] = v7;
  *v8.ctx = v7;
  *&v8.ctx[4] = v7;
  CCHmacInit(&v8, 1u, key, 0x10uLL);
  CCHmacUpdate(&v8, a2, a3);
  CCHmacFinal(&v8, a4);
}

uint64_t lmv2Response(uint64_t a1, void *dataIn, char *dataOut, uint8x8_t a4, uint8x8_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  a4.i32[0] = *a1;
  v14 = vmovl_u8(a4).u64[0];
  v15 = *(a1 + 15);
  key = v14.i8[0] & 0xFE;
  a5.i32[0] = *(a1 + 1);
  v16 = *&vshl_u16(vorr_s8(vshl_n_s16(v14, 8uLL), *&vmovl_u8(a5)), 0xFFFCFFFDFFFEFFFFLL) & 0x80FE80FE80FE80FELL;
  v17 = vuzp1_s8(v16, v16);
  v35 = v17.i32[0];
  HIDWORD(v18) = v7;
  LODWORD(v18) = v8 << 24;
  v36 = (v18 >> 29) & 0xFE;
  HIDWORD(v18) = v8;
  LODWORD(v18) = v9 << 24;
  v37 = (v18 >> 30) & 0xFE;
  v38 = 2 * v9;
  v17.i32[0] = *(a1 + 7);
  v19 = vmovl_u8(v17).u64[0];
  v29 = v19.i8[0] & 0xFE;
  v20 = vext_s8(v19, v19, 2uLL);
  v20.i16[3] = v10;
  v21 = *&vshl_u16(vsli_n_s16(v20, v19, 8uLL), 0xFFFCFFFDFFFEFFFFLL) & 0x80FE80FE80FE80FELL;
  v30 = vuzp1_s8(v21, v21).u32[0];
  HIDWORD(v18) = v10;
  LODWORD(v18) = v11 << 24;
  v22 = (v18 >> 29) & 0xFE;
  HIDWORD(v18) = v11;
  LODWORD(v18) = v12 << 24;
  v31 = v22;
  v32 = (v18 >> 30) & 0xFE;
  v33 = 2 * v12;
  v26[0] = v13 & 0xFE;
  HIDWORD(v18) = v13;
  LODWORD(v18) = v15 << 24;
  v26[1] = (v18 >> 25) & 0xFE;
  v26[2] = v15 << 6;
  v27 = 0;
  v28 = 0;
  dataOutMoved = 0xAAAAAAAAAAAAAAAALL;
  result = CCCrypt(0, 1u, 0, &key, 8uLL, 0, dataIn, 8uLL, dataOut, 8uLL, &dataOutMoved);
  if (!result)
  {
    dataOutMoved = 0xAAAAAAAAAAAAAAAALL;
    result = CCCrypt(0, 1u, 0, &v29, 8uLL, 0, dataIn, 8uLL, dataOut + 8, 8uLL, &dataOutMoved);
    if (!result)
    {
      dataOutMoved = 0xAAAAAAAAAAAAAAAALL;
      result = CCCrypt(0, 1u, 0, v26, 8uLL, 0, dataIn, 8uLL, dataOut + 16, 8uLL, &dataOutMoved);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SECSFAPropertyValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 101)
      {
        [a1 clearOneofValuesForProperty];
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 2;
        v26 = PBReaderReadString();
        v27 = *(a1 + 24);
        *(a1 + 24) = v26;
      }

      else if (v13 == 100)
      {
        [a1 clearOneofValuesForProperty];
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 1;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v32 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v32 & 0x7F) << v19;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_44;
          }
        }

        v25 = [a2 hasError] ? 0 : v21;
LABEL_44:
        *(a1 + 8) = v25;
      }

      else if (v13)
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          v31 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v31 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_46;
          }
        }

        [a2 hasError];
      }

LABEL_46:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SECSFAVersionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v46 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 8;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 32) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 16;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SECSFAVersionMatchReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SECSFAVersion);
        [a1 addVersions:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !SECSFAVersionReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SECSFAEventRuleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v38 = objc_alloc_init(SECSFAVersionMatch);
            objc_storeStrong((a1 + 56), v38);
            v41 = 0xAAAAAAAAAAAAAAAALL;
            v42 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !SECSFAVersionMatchReadFrom(v38, a2))
            {
LABEL_79:

              return 0;
            }

            goto LABEL_64;
          }

          if (v13 == 8)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_76;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_76:
            *(a1 + 64) = v36;
            goto LABEL_77;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_58;
          }

          if (v13 == 6)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v41 & 0x7F) << v16;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_70:
            *(a1 + 24) = v22;
            goto LABEL_77;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v38 = objc_alloc_init(SECSFAAction);
          objc_storeStrong((a1 + 16), v38);
          v41 = 0xAAAAAAAAAAAAAAAALL;
          v42 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !SECSFAActionReadFrom(v38, a2))
          {
            goto LABEL_79;
          }

LABEL_64:
          PBReaderRecallMark();

          goto LABEL_77;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_74:
          *(a1 + 8) = v29;
          goto LABEL_77;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 40;
LABEL_58:
          v37 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_188847F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_188848538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_188848898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188848C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18884900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18884941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1888497EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188849B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __sec_protocol_options_copy_block_invoke()
{
  v0 = dlopen("/usr/lib/libnetwork.dylib", 5);
  sec_protocol_options_copy_libnetworkImage = v0;
  if (v0)
  {
    sec_protocol_options_copy__nw_protocol_options_copy = dlsym(v0, "nw_protocol_options_copy");
    if (!sec_protocol_options_copy__nw_protocol_options_copy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 0;
      v1 = MEMORY[0x1E69E9C10];
      v2 = "dlsym libnetwork nw_protocol_options_copy";
      v3 = &v5;
LABEL_8:
      _os_log_error_impl(&dword_1887D2000, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 0;
    v1 = MEMORY[0x1E69E9C10];
    v2 = "dlopen libnetwork";
    v3 = &v4;
    goto LABEL_8;
  }
}

uint64_t sec_protocol_options_contents_compare(unsigned __int16 *a1, unsigned __int16 *a2, int a3)
{
  result = 1;
  if (a1 == a2)
  {
    return result;
  }

  if (a3 == 1)
  {
    return result;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 39) != *(a2 + 39))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 82) != *(a2 + 82))
  {
    return 0;
  }

  if (*(a1 + 332) != *(a2 + 332))
  {
    return 0;
  }

  if (((*(a2 + 369) ^ *(a1 + 369)) & 0xAEAAAAAF) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 373);
  v6 = *(a2 + 373);
  if (((v6 ^ v5) & 3) != 0)
  {
    return 0;
  }

  result = 0;
  if (((v6 ^ v5) & 4) != 0 || a1[167] != a2[167])
  {
    return result;
  }

  if ((*(a2 + 408) ^ *(a1 + 408)))
  {
    return 0;
  }

  if ((a3 - 4) <= 0xFFFFFFFD)
  {
    v7 = v5 & 0x30;
    v8 = v6 & 0x30;
    if (v7 == 32)
    {
      if (v8 == 32)
      {
        goto LABEL_23;
      }

      return 0;
    }

    if (v8 == 32)
    {
      return 0;
    }
  }

LABEL_23:
  if ((a3 & 0xFE) == 2 && (v9 = *(a1 + 44), v10 = *(a2 + 44), v9 | v10))
  {
    v11 = a1;
    v13 = a2;
    if (v9 != v10)
    {
      return 0;
    }
  }

  else
  {
    v11 = a1;
    v12 = *(a1 + 11);
    v13 = a2;
    v14 = *(a2 + 11);
    if (v12)
    {
      if (v12 != v14 || *(v11 + 12) != *(a2 + 12))
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    v15 = *(v11 + 32);
    v16 = *(a2 + 32);
    if (v15)
    {
      if (v15 != v16 || *(v11 + 33) != *(a2 + 33))
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    v19 = *(v11 + 49);
    v20 = *(a2 + 49);
    if (v19)
    {
      if (v19 != v20 || *(v11 + 50) != *(a2 + 50))
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    v23 = *(v11 + 52);
    v24 = *(a2 + 52);
    if (v23)
    {
      if (v23 != v24 || *(v11 + 53) != *(a2 + 53))
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v29 = *(v11 + 13);
    v30 = *(a2 + 13);
    if (v29)
    {
      if (v29 != v30 || *(v11 + 14) != *(a2 + 14))
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    v33 = *(v11 + 15);
    v34 = *(a2 + 15);
    if (v33)
    {
      if (v33 != v34 || *(v11 + 16) != *(a2 + 16))
      {
        return 0;
      }
    }

    else if (v34)
    {
      return 0;
    }

    v37 = *(v11 + 18);
    v38 = *(a2 + 18);
    if (v37)
    {
      if (v37 != v38 || *(v11 + 19) != *(a2 + 19))
      {
        return 0;
      }
    }

    else if (v38)
    {
      return 0;
    }

    v43 = *(v11 + 20);
    v44 = *(a2 + 20);
    if (v43)
    {
      if (v43 != v44 || *(v11 + 21) != *(a2 + 21))
      {
        return 0;
      }
    }

    else if (v44)
    {
      return 0;
    }
  }

  v17 = *(v11 + 28);
  v18 = *(v13 + 28);
  if (v17)
  {
    if (!v18 || (sec_protocol_helper_dispatch_data_equal(v17, v18) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v21 = *(v11 + 17);
  v22 = *(v13 + 17);
  if (v21)
  {
    if (!v22 || (sec_protocol_helper_dispatch_data_equal(v21, v22) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = *(v11 + 10);
  v26 = *(v13 + 10);
  if (v25)
  {
    if (!v26 || (sec_protocol_helper_dispatch_data_equal(v25, v26) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(v11 + 6);
  v28 = *(v13 + 6);
  if (v27)
  {
    if (!v28 || !xpc_equal(v27, v28))
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v31 = *(v11 + 5);
  v32 = *(v13 + 5);
  if (v31)
  {
    if (!v32 || !xpc_equal(v31, v32))
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v35 = *(v11 + 29);
  v36 = *(v13 + 29);
  if (v35)
  {
    if (!v36 || !xpc_equal(v35, v36))
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = *(v11 + 9);
  v40 = *(v13 + 9);
  if (v39)
  {
    if (!v40 || !xpc_equal(v39, v40))
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v41 = *(v11 + 1);
  v42 = *(v13 + 1);
  if (v41)
  {
    if (!v42 || strcmp(v41, v42))
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v45 = *(v11 + 7);
  v46 = *(v13 + 7);
  if (!v45)
  {
    if (v46)
    {
      return 0;
    }

    goto LABEL_135;
  }

  if (!v46)
  {
    return 0;
  }

  v47 = *(v45 + 48);
  if (v47 != *(v46 + 48))
  {
    return 0;
  }

  if (v47 != 2)
  {
    if (v47 == 1)
    {
      v48 = *(v45 + 8);
      if (v48)
      {
        v49 = CFRetain(v48);
        v46 = *(v13 + 7);
        if (!v46)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v49 = 0;
      }

      v58 = *(v46 + 8);
      if (v58)
      {
        v59 = CFRetain(v58);
        goto LABEL_134;
      }

LABEL_133:
      v59 = 0;
LABEL_134:
      v60 = CFEqual(v49, v59);
      CFRelease(v49);
      CFRelease(v59);
      if (!v60)
      {
        return 0;
      }
    }

LABEL_135:
    v61 = *(v11 + 42);
    v62 = *(v13 + 42);
    if (v61)
    {
      if (v61 == v62)
      {
LABEL_139:
        result = sec_session_tickets_are_equal(*(v11 + 47), *(v13 + 47));
        if (result)
        {
          return *(v11 + 37) == *(v13 + 37);
        }

        return result;
      }
    }

    else if (!v62)
    {
      goto LABEL_139;
    }

    return 0;
  }

  if (*(v45 + 56))
  {
    v50 = *(v13 + 7);
    if (v50)
    {
      if (*(v50 + 56))
      {
        v51 = *(v11 + 7);
        if (v51)
        {
          v52 = *(v51 + 56);
        }

        else
        {
          v52 = 0;
        }

        v63 = *(v13 + 7);
        if (v63)
        {
          v64 = *(v63 + 56);
        }

        else
        {
          v64 = 0;
        }

        if (sec_protocol_helper_dispatch_data_equal(v52, v64))
        {
          goto LABEL_146;
        }

        v74 = *(v11 + 7);
        if (v74)
        {
          v75 = *(v74 + 56);
        }

        else
        {
          v75 = 0;
        }

        dispatch_release(v75);
LABEL_169:
        v77 = *(v13 + 7);
        if (!v77)
        {
          goto LABEL_308;
        }

        v78 = *(v77 + 56);
LABEL_307:
        v145 = v78;
LABEL_309:
        dispatch_release(v145);
        return 0;
      }
    }
  }

  v53 = *(v11 + 7);
  if (v53 && *(v53 + 56) || (v54 = *(v13 + 7)) != 0 && *(v54 + 56))
  {
    v55 = *(v11 + 7);
    if (v55 && *(v55 + 56))
    {
      v56 = *(v11 + 7);
      if (v56)
      {
        v57 = *(v56 + 56);
      }

      else
      {
        v57 = 0;
      }

      dispatch_release(v57);
    }

    v76 = *(v13 + 7);
    if (!v76)
    {
      return 0;
    }

    result = *(v76 + 56);
    if (!result)
    {
      return result;
    }

    goto LABEL_169;
  }

LABEL_146:
  v65 = *(v11 + 7);
  if (!v65)
  {
    goto LABEL_154;
  }

  if (!*(v65 + 64) || (v66 = *(v13 + 7)) == 0 || !*(v66 + 64))
  {
    v69 = *(v11 + 7);
    if (v69 && *(v69 + 64))
    {
LABEL_156:
      v71 = *(v11 + 7);
      if (v71 && *(v71 + 64))
      {
        v72 = *(v11 + 7);
        if (v72)
        {
          v73 = *(v72 + 64);
        }

        else
        {
          v73 = 0;
        }

        dispatch_release(v73);
      }

      v79 = *(v13 + 7);
      if (!v79)
      {
        return 0;
      }

      result = *(v79 + 64);
      if (!result)
      {
        return result;
      }

      goto LABEL_204;
    }

LABEL_154:
    v70 = *(v13 + 7);
    if (!v70 || !*(v70 + 64))
    {
      goto LABEL_181;
    }

    goto LABEL_156;
  }

  v67 = *(v11 + 7);
  if (v67)
  {
    v68 = *(v67 + 64);
  }

  else
  {
    v68 = 0;
  }

  v80 = *(v13 + 7);
  if (v80)
  {
    v81 = *(v80 + 64);
  }

  else
  {
    v81 = 0;
  }

  if ((sec_protocol_helper_dispatch_data_equal(v68, v81) & 1) == 0)
  {
    v91 = *(v11 + 7);
    if (v91)
    {
      v92 = *(v91 + 64);
    }

    else
    {
      v92 = 0;
    }

    dispatch_release(v92);
LABEL_204:
    v94 = *(v13 + 7);
    if (!v94)
    {
      goto LABEL_308;
    }

    v78 = *(v94 + 64);
    goto LABEL_307;
  }

LABEL_181:
  v82 = *(v11 + 7);
  if (!v82)
  {
    goto LABEL_189;
  }

  if (!*(v82 + 72) || (v83 = *(v13 + 7)) == 0 || !*(v83 + 72))
  {
    v86 = *(v11 + 7);
    if (v86 && *(v86 + 72))
    {
LABEL_191:
      v88 = *(v11 + 7);
      if (v88 && *(v88 + 72))
      {
        v89 = *(v11 + 7);
        if (v89)
        {
          v90 = *(v89 + 72);
        }

        else
        {
          v90 = 0;
        }

        dispatch_release(v90);
      }

      v93 = *(v13 + 7);
      if (!v93)
      {
        return 0;
      }

      result = *(v93 + 72);
      if (!result)
      {
        return result;
      }

      goto LABEL_234;
    }

LABEL_189:
    v87 = *(v13 + 7);
    if (!v87 || !*(v87 + 72))
    {
      goto LABEL_211;
    }

    goto LABEL_191;
  }

  v84 = *(v11 + 7);
  if (v84)
  {
    v85 = *(v84 + 72);
  }

  else
  {
    v85 = 0;
  }

  v95 = *(v13 + 7);
  if (v95)
  {
    v96 = *(v95 + 72);
  }

  else
  {
    v96 = 0;
  }

  if ((sec_protocol_helper_dispatch_data_equal(v85, v96) & 1) == 0)
  {
    v106 = *(v11 + 7);
    if (v106)
    {
      v107 = *(v106 + 72);
    }

    else
    {
      v107 = 0;
    }

    dispatch_release(v107);
LABEL_234:
    v109 = *(v13 + 7);
    if (!v109)
    {
      goto LABEL_308;
    }

    v78 = *(v109 + 72);
    goto LABEL_307;
  }

LABEL_211:
  v97 = *(v11 + 7);
  if (!v97)
  {
    goto LABEL_219;
  }

  if (!*(v97 + 88) || (v98 = *(v13 + 7)) == 0 || !*(v98 + 88))
  {
    v101 = *(v11 + 7);
    if (v101 && *(v101 + 88))
    {
LABEL_221:
      v103 = *(v11 + 7);
      if (v103 && *(v103 + 88))
      {
        v104 = *(v11 + 7);
        if (v104)
        {
          v105 = *(v104 + 88);
        }

        else
        {
          v105 = 0;
        }

        dispatch_release(v105);
      }

      v108 = *(v13 + 7);
      if (!v108)
      {
        return 0;
      }

      result = *(v108 + 88);
      if (!result)
      {
        return result;
      }

      goto LABEL_264;
    }

LABEL_219:
    v102 = *(v13 + 7);
    if (!v102 || !*(v102 + 88))
    {
      goto LABEL_241;
    }

    goto LABEL_221;
  }

  v99 = *(v11 + 7);
  if (v99)
  {
    v100 = *(v99 + 88);
  }

  else
  {
    v100 = 0;
  }

  v110 = *(v13 + 7);
  if (v110)
  {
    v111 = *(v110 + 88);
  }

  else
  {
    v111 = 0;
  }

  if ((sec_protocol_helper_dispatch_data_equal(v100, v111) & 1) == 0)
  {
    v121 = *(v11 + 7);
    if (v121)
    {
      v122 = *(v121 + 88);
    }

    else
    {
      v122 = 0;
    }

    dispatch_release(v122);
LABEL_264:
    v124 = *(v13 + 7);
    if (!v124)
    {
      goto LABEL_308;
    }

    v78 = *(v124 + 88);
    goto LABEL_307;
  }

LABEL_241:
  v112 = *(v11 + 7);
  if (!v112)
  {
    goto LABEL_249;
  }

  if (!*(v112 + 80) || (v113 = *(v13 + 7)) == 0 || !*(v113 + 80))
  {
    v116 = *(v11 + 7);
    if (v116 && *(v116 + 80))
    {
LABEL_251:
      v118 = *(v11 + 7);
      if (v118 && *(v118 + 80))
      {
        v119 = *(v11 + 7);
        if (v119)
        {
          v120 = *(v119 + 80);
        }

        else
        {
          v120 = 0;
        }

        dispatch_release(v120);
      }

      v123 = *(v13 + 7);
      if (!v123)
      {
        return 0;
      }

      result = *(v123 + 80);
      if (!result)
      {
        return result;
      }

      goto LABEL_294;
    }

LABEL_249:
    v117 = *(v13 + 7);
    if (!v117 || !*(v117 + 80))
    {
      goto LABEL_271;
    }

    goto LABEL_251;
  }

  v114 = *(v11 + 7);
  if (v114)
  {
    v115 = *(v114 + 80);
  }

  else
  {
    v115 = 0;
  }

  v125 = *(v13 + 7);
  if (v125)
  {
    v126 = *(v125 + 80);
  }

  else
  {
    v126 = 0;
  }

  if ((sec_protocol_helper_dispatch_data_equal(v115, v126) & 1) == 0)
  {
    v136 = *(v11 + 7);
    if (v136)
    {
      v137 = *(v136 + 80);
    }

    else
    {
      v137 = 0;
    }

    dispatch_release(v137);
LABEL_294:
    v139 = *(v13 + 7);
    if (!v139)
    {
      goto LABEL_308;
    }

    v78 = *(v139 + 80);
    goto LABEL_307;
  }

LABEL_271:
  v127 = *(v11 + 7);
  if (!v127)
  {
    goto LABEL_279;
  }

  if (*(v127 + 96))
  {
    v128 = *(v13 + 7);
    if (v128)
    {
      if (*(v128 + 96))
      {
        v129 = *(v11 + 7);
        if (v129)
        {
          v130 = *(v129 + 96);
        }

        else
        {
          v130 = 0;
        }

        v140 = *(v13 + 7);
        if (v140)
        {
          v141 = *(v140 + 96);
        }

        else
        {
          v141 = 0;
        }

        if (sec_protocol_helper_dispatch_data_equal(v130, v141))
        {
          goto LABEL_135;
        }

        v142 = *(v11 + 7);
        if (v142)
        {
          v143 = *(v142 + 96);
        }

        else
        {
          v143 = 0;
        }

        dispatch_release(v143);
LABEL_305:
        v144 = *(v13 + 7);
        if (v144)
        {
          v78 = *(v144 + 96);
          goto LABEL_307;
        }

LABEL_308:
        v145 = 0;
        goto LABEL_309;
      }
    }
  }

  v131 = *(v11 + 7);
  if (!v131 || !*(v131 + 96))
  {
LABEL_279:
    v132 = *(v13 + 7);
    if (!v132 || !*(v132 + 96))
    {
      goto LABEL_135;
    }
  }

  v133 = *(v11 + 7);
  if (v133 && *(v133 + 96))
  {
    v134 = *(v11 + 7);
    if (v134)
    {
      v135 = *(v134 + 96);
    }

    else
    {
      v135 = 0;
    }

    dispatch_release(v135);
  }

  v138 = *(v13 + 7);
  if (!v138)
  {
    return 0;
  }

  result = *(v138 + 96);
  if (result)
  {
    goto LABEL_305;
  }

  return result;
}

BOOL sec_protocol_options_are_equal(sec_protocol_options_t optionsA, sec_protocol_options_t optionsB)
{
  if (optionsA == optionsB)
  {
    return 1;
  }

  v4 = 0;
  if (optionsA && optionsB)
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __sec_protocol_options_are_equal_block_invoke;
    v6[3] = &__block_descriptor_tmp_13;
    v6[4] = optionsB;
    return sec_protocol_options_access_handle(optionsA, v6);
  }

  return v4;
}

uint64_t __sec_protocol_options_are_equal_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __sec_protocol_options_are_equal_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_12;
  v4[4] = a2;
  return sec_protocol_options_access_handle(v2, v4);
}

void sec_protocol_options_set_local_identity(sec_protocol_options_t options, sec_identity_t identity)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_local_identity_block_invoke;
    v2[3] = &__block_descriptor_tmp_14;
    v2[4] = identity;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_local_identity_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      os_release(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = os_retain(v5);
    }

    *(a2 + 56) = v5;
  }

  return a2 != 0;
}

void sec_protocol_options_append_tls_ciphersuite(sec_protocol_options_t options, tls_ciphersuite_t ciphersuite)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_append_tls_ciphersuite_block_invoke;
    v2[3] = &__block_descriptor_tmp_15_3708;
    v3 = ciphersuite;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_append_tls_ciphersuite_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 40);
    if (!v4)
    {
      v4 = xpc_array_create(0, 0);
      *(a2 + 40) = v4;
    }

    xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  }

  return a2 != 0;
}

BOOL __sec_protocol_options_clear_tls_ciphersuites_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      xpc_release(v3);
      *(a2 + 40) = 0;
    }
  }

  return a2 != 0;
}

tls_protocol_version_t sec_protocol_options_get_default_min_dtls_protocol_version(void)
{
  if (dyld_program_sdk_at_least())
  {
    return -259;
  }

  else
  {
    return -257;
  }
}

void sec_protocol_options_set_tls_max_version(sec_protocol_options_t options, SSLProtocol version)
{
  v2 = 8;
  for (i = &ssl_protocol_version_map; *i != version; i += 2)
  {
    if (!--v2)
    {
      return;
    }
  }

  if (*(i + 2))
  {
    sec_protocol_options_set_max_tls_protocol_version(options, *(i + 2));
  }
}

uint64_t sec_protocol_options_get_tls_ciphersuites(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_options_get_tls_ciphersuites_block_invoke;
  v3[3] = &unk_1E70D52E8;
  v3[4] = &v4;
  sec_protocol_options_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_options_get_tls_ciphersuites_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 40);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_clear_tls_application_protocols(uint64_t result)
{
  if (result)
  {
    return sec_protocol_options_access_handle(result, &__block_literal_global_29_3738);
  }

  return result;
}

BOOL __sec_protocol_options_clear_tls_application_protocols_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      xpc_release(v3);
    }

    *(a2 + 48) = 0;
  }

  return a2 != 0;
}

void sec_protocol_options_set_tls_diffie_hellman_parameters(sec_protocol_options_t options, dispatch_data_t params)
{
  if (options)
  {
    if (params)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_tls_diffie_hellman_parameters_block_invoke;
      v2[3] = &__block_descriptor_tmp_33;
      v2[4] = params;
      sec_protocol_options_access_handle(options, v2);
    }
  }
}

BOOL __sec_protocol_options_set_tls_diffie_hellman_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 224);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 32);
    *(a2 + 224) = v5;
    dispatch_retain(v5);
  }

  return a2 != 0;
}

void sec_protocol_options_add_pre_shared_key(sec_protocol_options_t options, dispatch_data_t psk, dispatch_data_t psk_identity)
{
  if (options && psk)
  {
    if (psk_identity)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_add_pre_shared_key_block_invoke;
      v3[3] = &__block_descriptor_tmp_34;
      v3[4] = psk;
      v3[5] = psk_identity;
      sec_protocol_options_access_handle(options, v3);
    }
  }
}

BOOL __sec_protocol_options_add_pre_shared_key_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 72))
    {
      *(a2 + 72) = xpc_array_create(0, 0);
    }

    v4 = xpc_data_create_with_dispatch_data(*(a1 + 32));
    v5 = xpc_data_create_with_dispatch_data(*(a1 + 40));
    v6 = xpc_array_create(0, 0);
    xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v4);
    xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v5);
    xpc_release(v4);
    xpc_release(v5);
    xpc_array_set_value(*(a2 + 72), 0xFFFFFFFFFFFFFFFFLL, v6);
    xpc_release(v6);
  }

  return a2 != 0;
}

void sec_protocol_options_set_tls_pre_shared_key_identity_hint(sec_protocol_options_t options, dispatch_data_t psk_identity_hint)
{
  if (options)
  {
    if (psk_identity_hint)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_tls_pre_shared_key_identity_hint_block_invoke;
      v2[3] = &__block_descriptor_tmp_35;
      v2[4] = psk_identity_hint;
      sec_protocol_options_access_handle(options, v2);
    }
  }
}

BOOL __sec_protocol_options_set_tls_pre_shared_key_identity_hint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 32);
    *(a2 + 80) = v5;
    dispatch_retain(v5);
  }

  return a2 != 0;
}

void sec_protocol_options_set_pre_shared_key_selection_block(sec_protocol_options_t options, sec_protocol_pre_shared_key_selection_t psk_selection_block, dispatch_queue_t psk_selection_queue)
{
  if (options && psk_selection_block)
  {
    if (psk_selection_queue)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_set_pre_shared_key_selection_block_block_invoke;
      v3[3] = &unk_1E70D5488;
      v3[4] = psk_selection_block;
      v3[5] = psk_selection_queue;
      sec_protocol_options_access_handle(options, v3);
    }
  }
}

BOOL __sec_protocol_options_set_pre_shared_key_selection_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 256);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 264);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = _Block_copy(*(a1 + 32));
    v7 = *(a1 + 40);
    *(a2 + 256) = v6;
    *(a2 + 264) = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

BOOL __sec_protocol_options_set_queue_helper_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = (a2 + 400);
    if (v4)
    {
      v5 = 0;
    }

    if (v4 == 1)
    {
      v6 = (a2 + 424);
    }

    else
    {
      v6 = v5;
    }

    if (*v6)
    {
      dispatch_release(*v6);
    }

    v7 = *(a1 + 32);
    *v6 = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_quic_early_data_context(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_options_set_quic_early_data_context_block_invoke;
    v3[3] = &__block_descriptor_tmp_43_3743;
    v3[4] = a3;
    v3[5] = a2;
    return sec_protocol_options_access_handle(result, v3);
  }

  return result;
}

BOOL __sec_protocol_options_set_quic_early_data_context_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 344);
    if (v4)
    {
      free(v4);
      *(a2 + 360) = 0;
    }

    v5 = malloc_type_malloc(*(a1 + 32), 0x100004077774924uLL);
    *(a2 + 344) = v5;
    if (v5)
    {
      memcpy(v5, *(a1 + 40), *(a1 + 32));
      *(a2 + 360) = *(a1 + 32);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_tls_sni_disabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_sni_disabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_45;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_sni_disabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFFF9F | (32 * *(a1 + 32)) | 0x40;
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_enforce_ev(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_enforce_ev_block_invoke;
    v2[3] = &__block_descriptor_tmp_46;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_enforce_ev_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFF9FFFF | (*(a1 + 32) << 17) | 0x40000;
  }

  return a2 != 0;
}

void sec_protocol_options_set_tls_ocsp_enabled(sec_protocol_options_t options, BOOL ocsp_enabled)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_ocsp_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_47;
    v3 = ocsp_enabled;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_tls_ocsp_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFE7FFF | (*(a1 + 32) << 15) | 0x10000;
  }

  return a2 != 0;
}

void sec_protocol_options_set_tls_sct_enabled(sec_protocol_options_t options, BOOL sct_enabled)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_sct_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_48_3744;
    v3 = sct_enabled;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_tls_sct_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFF9FFF | (*(a1 + 32) << 13) | 0x4000;
  }

  return a2 != 0;
}

void sec_protocol_options_set_tls_renegotiation_enabled(sec_protocol_options_t options, BOOL renegotiation_enabled)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_renegotiation_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_49;
    v3 = renegotiation_enabled;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_tls_renegotiation_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFF9FFFFF | (*(a1 + 32) << 21) | 0x400000;
  }

  return a2 != 0;
}

void sec_protocol_options_set_peer_authentication_optional(sec_protocol_options_t options, BOOL peer_authentication_optional)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_peer_authentication_optional_block_invoke;
    v2[3] = &__block_descriptor_tmp_51;
    v3 = peer_authentication_optional;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_peer_authentication_optional_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xE7FFFFFF | (*(a1 + 32) << 27) | 0x10000000;
  }

  return a2 != 0;
}

void sec_protocol_options_set_enable_encrypted_client_hello(sec_protocol_options_t options, BOOL enable_encrypted_client_hello)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_enable_encrypted_client_hello_block_invoke;
    v2[3] = &__block_descriptor_tmp_52;
    v3 = enable_encrypted_client_hello;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_enable_encrypted_client_hello_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFDFFFFFF | ((*(a1 + 32) & 1) << 25);
  }

  return a2 != 0;
}

void sec_protocol_options_set_key_update_block(sec_protocol_options_t options, sec_protocol_key_update_t key_update_block, dispatch_queue_t key_update_queue)
{
  if (options)
  {
    if (key_update_queue)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_set_key_update_block_block_invoke;
      v3[3] = &unk_1E70D56D0;
      v3[4] = key_update_block;
      v3[5] = key_update_queue;
      sec_protocol_options_access_handle(options, v3);
    }
  }
}

BOOL __sec_protocol_options_set_key_update_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 88);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 96);
    if (v5)
    {
      dispatch_release(v5);
    }

    *(a2 + 88) = _Block_copy(*(a1 + 32));
    v6 = _Block_copy(*(a1 + 40));
    *(a2 + 96) = v6;
    dispatch_retain(v6);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_session_update_block(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3002000000;
  v7 = __Block_byref_object_copy__3746;
  v8 = __Block_byref_object_dispose__3747;
  v9 = 0;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_options_get_session_update_block_block_invoke;
    v3[3] = &unk_1E70D5770;
    v3[4] = &v4;
    sec_protocol_options_access_handle(a1, v3);
    v1 = v5[5];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_options_get_session_update_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 176);
    if (v2)
    {
      *(*(*(a1 + 32) + 8) + 40) = v2;
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_session_update_queue(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_options_get_session_update_queue_block_invoke;
    v3[3] = &unk_1E70D5798;
    v3[4] = &v4;
    sec_protocol_options_access_handle(a1, v3);
    v1 = v5[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_options_get_session_update_queue_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 184);
    if (v2)
    {
      *(*(*(a1 + 32) + 8) + 24) = v2;
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_private_key_blocks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result && a2 && a3)
  {
    if (a4)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 0x40000000;
      v4[2] = __sec_protocol_options_set_private_key_blocks_block_invoke;
      v4[3] = &unk_1E70D5938;
      v4[4] = a2;
      v4[5] = a3;
      v4[6] = a4;
      return sec_protocol_options_access_handle(result, v4);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_private_key_blocks_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[25];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = a2[26];
    if (v5)
    {
      _Block_release(v5);
    }

    v6 = a2[27];
    if (v6)
    {
      dispatch_release(v6);
    }

    a2[25] = _Block_copy(*(a1 + 32));
    v7 = _Block_copy(*(a1 + 40));
    v8 = *(a1 + 48);
    a2[26] = v7;
    a2[27] = v8;
    dispatch_retain(v8);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_local_certificates(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_local_certificates_block_invoke;
      v2[3] = &__block_descriptor_tmp_72;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_local_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 64);
    if (v4)
    {
      os_release(v4);
    }

    v5 = *(a1 + 32);
    *(a2 + 64) = v5;
    if (v5)
    {
      os_retain(v5);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_tls_handshake_message_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_tls_handshake_message_callback_block_invoke;
      v3[3] = &unk_1E70D59C8;
      v3[4] = a2;
      v3[5] = a3;
      return sec_protocol_options_access_handle(result, v3);
    }
  }

  return result;
}

BOOL __sec_protocol_options_tls_handshake_message_callback_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 240);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 248);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = _Block_copy(*(a1 + 32));
    v7 = *(a1 + 40);
    *(a2 + 240) = v6;
    *(a2 + 248) = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_eddsa_enabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_eddsa_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_76;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_eddsa_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0x7FFFFFFF | (*(a1 + 32) << 31);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_tls_delegated_credentials_enabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_delegated_credentials_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_77;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_delegated_credentials_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 373) = *(a2 + 373) & 0xFE | *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_tls_grease_enabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_grease_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_78;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_grease_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 373) = *(a2 + 373) & 0xFD | (2 * *(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_experiment_identifier(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_experiment_identifier_block_invoke;
      v2[3] = &__block_descriptor_tmp_81;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_experiment_identifier_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      *(a2 + 16) = strdup(v5);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_connection_id(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_connection_id_block_invoke;
      v2[3] = &__block_descriptor_tmp_82;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_connection_id_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 24) = **(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_tls_ticket_request_count(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_ticket_request_count_block_invoke;
    v2[3] = &__block_descriptor_tmp_83;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_ticket_request_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 332) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_append_tls_key_exchange_group(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_append_tls_key_exchange_group_block_invoke;
    v2[3] = &__block_descriptor_tmp_86;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_append_tls_key_exchange_group_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 232);
    if (!v4)
    {
      v4 = xpc_array_create(0, 0);
      *(a2 + 232) = v4;
    }

    xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_append_tls_key_exchange_group_set(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_append_tls_key_exchange_group_set_block_invoke;
    v2[3] = &__block_descriptor_tmp_87;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_append_tls_key_exchange_group_set_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 232))
    {
      *(a2 + 232) = xpc_array_create(0, 0);
    }

    v4 = *(a1 + 32);
    if (v4 <= 2)
    {
      v5 = qword_18895ED68[v4];
      v6 = *(&off_1E70D6938 + v4);
      do
      {
        v7 = *v6++;
        xpc_array_set_uint64(*(a2 + 232), 0xFFFFFFFFFFFFFFFFLL, v7);
        --v5;
      }

      while (v5);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_add_tls_key_exchange_group_set(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    return sec_protocol_options_append_tls_key_exchange_group_set(result, a2);
  }

  return result;
}

uint64_t sec_protocol_metadata_set_negotiated_protocol(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __sec_protocol_metadata_set_negotiated_protocol_block_invoke;
    v5[3] = &__block_descriptor_tmp_90;
    v5[4] = a2;
    sec_protocol_metadata_access_handle(a1, v5);
  }

  return v3;
}

BOOL __sec_protocol_metadata_set_negotiated_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      free(v4);
    }

    *(a2 + 40) = strdup(*(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_copy_server_name(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_server_name_block_invoke;
  v3[3] = &unk_1E70D5BE0;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_server_name_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = strdup(v4);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_time_ms(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_time_ms_block_invoke;
  v3[3] = &unk_1E70D5C30;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_time_ms_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 264);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_byte_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_byte_count_block_invoke;
  v3[3] = &unk_1E70D5C58;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_byte_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 272);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_sent_byte_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_sent_byte_count_block_invoke;
  v3[3] = &unk_1E70D5C80;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_sent_byte_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 280);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_received_byte_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_received_byte_count_block_invoke;
  v3[3] = &unk_1E70D5CA8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_received_byte_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 288);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_read_stall_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_read_stall_count_block_invoke;
  v3[3] = &unk_1E70D5CD0;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_read_stall_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 296);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_write_stall_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_write_stall_count_block_invoke;
  v3[3] = &unk_1E70D5CF8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_write_stall_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 304);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_async_call_count(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_async_call_count_block_invoke;
  v3[3] = &unk_1E70D5D20;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_async_call_count_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 312);
  }

  return a2 != 0;
}

dispatch_data_t sec_protocol_metadata_copy_peer_public_key(sec_protocol_metadata_t metadata)
{
  if (!metadata)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_peer_public_key_block_invoke;
  v3[3] = &unk_1E70D5D98;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(metadata, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_peer_public_key_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 104);
    v3 = *(*(*(a1 + 32) + 8) + 24);
    if (v3)
    {
      dispatch_retain(v3);
    }
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_set_negotiated_tls_protocol_version(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_set_negotiated_tls_protocol_version_block_invoke;
    v4[3] = &__block_descriptor_tmp_105;
    v5 = a2;
    sec_protocol_metadata_access_handle(a1, v4);
  }

  return a1 != 0;
}

BOOL __sec_protocol_metadata_set_negotiated_tls_protocol_version_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = *(a1 + 32);
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_set_negotiated_tls_ciphersuite(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_set_negotiated_tls_ciphersuite_block_invoke;
    v4[3] = &__block_descriptor_tmp_108;
    v5 = a2;
    sec_protocol_metadata_access_handle(a1, v4);
  }

  return a1 != 0;
}

BOOL __sec_protocol_metadata_set_negotiated_tls_ciphersuite_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 34) = *(a1 + 32);
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_access_supported_signature_algorithms(sec_protocol_metadata_t metadata, void *handler)
{
  v2 = 0;
  if (metadata && handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_supported_signature_algorithms_block_invoke;
    v4[3] = &unk_1E70D5EC0;
    v4[4] = handler;
    return sec_protocol_metadata_access_handle(metadata, v4);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_access_supported_signature_algorithms_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 112);
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __sec_protocol_metadata_access_supported_signature_algorithms_block_invoke_2;
    applier[3] = &unk_1E70D5E98;
    applier[4] = *(a1 + 32);
    xpc_array_apply(result, applier);
    return 1;
  }

  return result;
}

uint64_t __sec_protocol_metadata_access_supported_signature_algorithms_block_invoke_2(uint64_t a1, int a2, xpc_object_t xuint)
{
  v3 = *(a1 + 32);
  value = xpc_uint64_get_value(xuint);
  (*(v3 + 16))(v3, value);
  return 1;
}

BOOL sec_protocol_metadata_access_ocsp_response(sec_protocol_metadata_t metadata, void *handler)
{
  v2 = 0;
  if (metadata && handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_ocsp_response_block_invoke;
    v4[3] = &unk_1E70D5F10;
    v4[4] = handler;
    return sec_protocol_metadata_access_handle(metadata, v4);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_access_ocsp_response_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 136);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_ocsp_response_block_invoke_2;
    v4[3] = &unk_1E70D5EE8;
    v4[4] = *(a1 + 32);
    sec_array_apply(result, v4);
    return 1;
  }

  return result;
}

BOOL sec_protocol_metadata_access_pre_shared_keys(sec_protocol_metadata_t metadata, void *handler)
{
  v2 = 0;
  if (metadata && handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_pre_shared_keys_block_invoke;
    v4[3] = &unk_1E70D5FB0;
    v4[4] = handler;
    return sec_protocol_metadata_access_handle(metadata, v4);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_access_pre_shared_keys_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 96);
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __sec_protocol_metadata_access_pre_shared_keys_block_invoke_2;
    applier[3] = &unk_1E70D5F88;
    applier[4] = *(a1 + 32);
    xpc_array_apply(result, applier);
    return 1;
  }

  return result;
}

uint64_t __sec_protocol_metadata_access_pre_shared_keys_block_invoke_2(uint64_t a1, int a2, xpc_object_t xarray)
{
  if (xpc_array_get_count(xarray) != 2)
  {
    return 1;
  }

  value = xpc_array_get_value(xarray, 0);
  v6 = xpc_array_get_value(xarray, 1uLL);
  dispatch_data_from_xpc_data = create_dispatch_data_from_xpc_data(value);
  v8 = create_dispatch_data_from_xpc_data(v6);
  result = 0;
  if (dispatch_data_from_xpc_data && v8)
  {
    (*(*(a1 + 32) + 16))();
    return 1;
  }

  return result;
}

dispatch_data_t create_dispatch_data_from_xpc_data(NSObject *xdata)
{
  v1 = xdata;
  if (xdata)
  {
    length = xpc_data_get_length(xdata);
    if (length && (v3 = length, (v4 = malloc_type_malloc(length, 0x3C9F84ECuLL)) != 0))
    {
      v5 = v4;
      bytes = xpc_data_get_bytes(v1, v4, 0, v3);
      v1 = 0;
      if (bytes == v3)
      {
        v1 = dispatch_data_create(v5, v3, 0, 0);
      }

      free(v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

BOOL sec_protocol_metadata_peers_are_equal(sec_protocol_metadata_t metadataA, sec_protocol_metadata_t metadataB)
{
  v2 = 0;
  if (metadataA && metadataB)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_peers_are_equal_block_invoke;
    v4[3] = &__block_descriptor_tmp_122;
    v4[4] = metadataB;
    return sec_protocol_metadata_access_handle(metadataA, v4);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_peers_are_equal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __sec_protocol_metadata_peers_are_equal_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_121;
  v4[4] = a2;
  return sec_protocol_metadata_access_handle(v2, v4);
}

uint64_t __sec_protocol_metadata_peers_are_equal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 88);
  v5 = *(a2 + 88);
  count = sec_array_get_count(v4);
  if (count != sec_array_get_count(v5))
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __sec_protocol_sec_array_of_sec_certificate_are_equal_block_invoke;
  v9[3] = &unk_1E70D6648;
  v9[4] = &v10;
  v9[5] = v5;
  sec_array_apply(v4, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  if (v7 != 1)
  {
    return 0;
  }

  result = sec_protocol_dispatch_data_are_equal(*(*(a1 + 32) + 104), *(a2 + 104));
  if (result)
  {
    result = sec_protocol_xpc_object_are_equal(*(*(a1 + 32) + 112), *(a2 + 112));
    if (result)
    {
      result = sec_protocol_sec_array_of_dispatch_data_are_equal(*(*(a1 + 32) + 136), *(a2 + 136));
      if (result)
      {
        return sec_protocol_sec_array_of_dispatch_data_are_equal(*(*(a1 + 32) + 144), *(a2 + 144));
      }
    }
  }

  return result;
}

BOOL __sec_protocol_sec_array_of_sec_certificate_are_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __sec_protocol_sec_array_of_sec_certificate_are_equal_block_invoke_2;
  v5[3] = &unk_1E70D6620;
  v5[5] = a2;
  v5[6] = a3;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  return sec_array_apply(v3, v5);
}

uint64_t sec_protocol_dispatch_data_are_equal(dispatch_data_t data, NSObject *a2)
{
  v2 = data == a2;
  if (data != a2 && data && a2)
  {
    size = dispatch_data_get_size(data);
    if (size == dispatch_data_get_size(a2))
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2000000000;
      v11 = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __sec_protocol_dispatch_data_are_equal_block_invoke;
      v7[3] = &unk_1E70D6698;
      v7[4] = &v8;
      v7[5] = a2;
      dispatch_data_apply(data, v7);
      v2 = *(v9 + 24);
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

BOOL sec_protocol_xpc_object_are_equal(unint64_t a1, unint64_t a2)
{
  if (!a1 && a2 || a1 && !a2)
  {
    return 0;
  }

  if (a1 | a2)
  {
    return xpc_equal(a1, a2);
  }

  return 1;
}

uint64_t sec_protocol_sec_array_of_dispatch_data_are_equal(void *a1, void *a2)
{
  count = sec_array_get_count(a1);
  if (count == sec_array_get_count(a2))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __sec_protocol_sec_array_of_dispatch_data_are_equal_block_invoke;
    v7[3] = &unk_1E70D66E8;
    v7[4] = &v8;
    v7[5] = a2;
    sec_array_apply(a1, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL __sec_protocol_sec_array_of_dispatch_data_are_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __sec_protocol_sec_array_of_dispatch_data_are_equal_block_invoke_2;
  v5[3] = &unk_1E70D66C0;
  v5[5] = a2;
  v5[6] = a3;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  return sec_array_apply(v3, v5);
}

uint64_t __sec_protocol_sec_array_of_dispatch_data_are_equal_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (*(a1 + 40) == a2)
  {
    *(*(*(a1 + 32) + 8) + 24) &= sec_protocol_dispatch_data_are_equal(*(a1 + 48), a3);
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t __sec_protocol_dispatch_data_are_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __sec_protocol_dispatch_data_are_equal_block_invoke_2;
  v8[3] = &unk_1E70D6670;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  v8[6] = a5;
  v8[7] = a4;
  dispatch_data_apply(v6, v8);
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t __sec_protocol_dispatch_data_are_equal_block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1[5];
  }

  v9 = v6 + v7;
  if (v6 + v7 >= a5 + a3)
  {
    v10 = a5 + a3;
  }

  else
  {
    v10 = v6 + v7;
  }

  v11 = v10 > v8;
  v12 = v10 - v8;
  if (v11)
  {
    *(*(a1[4] + 8) + 24) = memcmp((a4 + v8 - a3), (a1[7] + v8 - v7), v12) == 0;
  }

  else
  {
    if (v9 < a3)
    {
      v13 = 0;
      return v13 & 1;
    }

    if (a5 + a3 < v7)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  v13 = *(*(a1[4] + 8) + 24);
  return v13 & 1;
}

uint64_t __sec_protocol_sec_array_of_sec_certificate_are_equal_block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[5] == a2)
  {
    v5 = a1[6];
    if (v5 && (v6 = *(v5 + 8)) != 0)
    {
      v7 = CFRetain(v6);
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v9 = *(a3 + 8);
    if (v9)
    {
      v10 = CFRetain(v9);
      v11 = v10;
      v12 = v7 == 0;
      v13 = v10 != 0;
      if (!v7 && v10)
      {
        *(*(a1[4] + 8) + 24) = 0;
        goto LABEL_18;
      }

LABEL_13:
      if (!v7 || v11)
      {
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          goto LABEL_23;
        }

        *(*(a1[4] + 8) + 24) &= CFEqual(v7, v11);
        if (v12)
        {
LABEL_17:
          if (!v13)
          {
LABEL_23:
            v8 = *(*(a1[4] + 8) + 24);
            return v8 & 1;
          }

LABEL_18:
          CFRelease(v11);
          goto LABEL_23;
        }
      }

      else
      {
        *(*(a1[4] + 8) + 24) = 0;
      }

      CFRelease(v7);
      goto LABEL_17;
    }

LABEL_12:
    v13 = 0;
    v11 = 0;
    v12 = v7 == 0;
    goto LABEL_13;
  }

  v8 = 1;
  return v8 & 1;
}

BOOL sec_protocol_metadata_challenge_parameters_are_equal(sec_protocol_metadata_t metadataA, sec_protocol_metadata_t metadataB)
{
  v2 = 0;
  if (metadataA && metadataB)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_challenge_parameters_are_equal_block_invoke;
    v4[3] = &__block_descriptor_tmp_124;
    v4[4] = metadataB;
    return sec_protocol_metadata_access_handle(metadataA, v4);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_challenge_parameters_are_equal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __sec_protocol_metadata_challenge_parameters_are_equal_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_123;
  v4[4] = a2;
  return sec_protocol_metadata_access_handle(v2, v4);
}

uint64_t __sec_protocol_metadata_challenge_parameters_are_equal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sec_protocol_xpc_object_are_equal(*(*(a1 + 32) + 112), *(a2 + 112)) || !sec_protocol_sec_array_of_dispatch_data_are_equal(*(*(a1 + 32) + 144), *(a2 + 144)))
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 120);
  v5 = *(a2 + 120);

  return sec_protocol_dispatch_data_are_equal(v4, v5);
}

dispatch_data_t sec_protocol_metadata_create_secret(sec_protocol_metadata_t metadata, size_t label_len, const char *label, size_t exporter_length)
{
  v4 = 0;
  if (metadata && label_len && label && exporter_length)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __sec_protocol_metadata_create_secret_block_invoke;
    v6[3] = &unk_1E70D6058;
    v6[4] = &v7;
    v6[5] = label_len;
    v6[6] = label;
    v6[7] = exporter_length;
    sec_protocol_metadata_access_handle(metadata, v6);
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

BOOL __sec_protocol_metadata_create_secret_block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      if (*a2)
      {
        *(*(a1[4] + 8) + 24) = v3(*a2, a1[5], a1[6], 0, 0, a1[7]);
      }
    }
  }

  return a2 != 0;
}

dispatch_data_t sec_protocol_metadata_create_secret_with_context(sec_protocol_metadata_t metadata, size_t label_len, const char *label, size_t context_len, const uint8_t *context, size_t exporter_length)
{
  v6 = 0;
  if (metadata && label_len && label && context_len && context && exporter_length)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __sec_protocol_metadata_create_secret_with_context_block_invoke;
    v8[3] = &unk_1E70D6080;
    v8[4] = &v9;
    v8[5] = label_len;
    v8[6] = label;
    v8[7] = context_len;
    v8[8] = context;
    v8[9] = exporter_length;
    sec_protocol_metadata_access_handle(metadata, v8);
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

BOOL __sec_protocol_metadata_create_secret_with_context_block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      if (*a2)
      {
        *(*(a1[4] + 8) + 24) = v3(*a2, a1[5], a1[6], a1[7], a1[8], a1[9]);
      }
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_false_start_used(uint64_t result)
{
  if (result)
  {
    return sec_protocol_metadata_access_handle(result, &__block_literal_global_129_3755);
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_tls_false_start_used_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_metadata_get_ticket_offered(uint64_t result)
{
  if (result)
  {
    return sec_protocol_metadata_access_handle(result, &__block_literal_global_132);
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_ticket_offered_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_metadata_get_ticket_received(uint64_t result)
{
  if (result)
  {
    return sec_protocol_metadata_access_handle(result, &__block_literal_global_135);
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_ticket_received_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_metadata_get_session_resumed(uint64_t result)
{
  if (result)
  {
    return sec_protocol_metadata_access_handle(result, &__block_literal_global_138);
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_session_resumed_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 7) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_metadata_get_session_renewed(uint64_t result)
{
  if (result)
  {
    return sec_protocol_metadata_access_handle(result, &__block_literal_global_141);
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_session_renewed_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return HIBYTE(*(a2 + 336)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_metadata_get_connection_strength(uint64_t a1)
{
  v1 = 2;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 2;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_connection_strength_block_invoke;
    v3[3] = &unk_1E70D6148;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(a1, v3);
    v1 = *(v5 + 6);
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

BOOL __sec_protocol_metadata_get_connection_strength_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2 < 0x303)
    {
      v3 = v2 - 769 > 1 ? 2 : 1;
      *(*(*(a1 + 32) + 8) + 24) = v3;
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 24) != 2)
    {
      v5 = 0;
      v6 = *(a2 + 34);
      do
      {
        v7 = Listtls_ciphersuite_group_legacy[v5];
      }

      while (v7 != v6 && v5++ != 6);
      if (v7 == v6)
      {
        *(v4 + 24) = 1;
      }
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_copy_authenticator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __sec_protocol_metadata_copy_authenticator_block_invoke;
    v6[3] = &unk_1E70D6198;
    v6[4] = &v7;
    v6[5] = a2;
    v6[6] = a3;
    v6[7] = a4;
    sec_protocol_metadata_access_handle(a1, v6);
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

BOOL __sec_protocol_metadata_copy_authenticator_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 344);
    if (v3)
    {
      v5 = *(a2 + 360);
      if (v5)
      {
        *(*(a1[4] + 8) + 24) = v3(v5, a1[5], a1[6], a1[7]);
      }
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_copy_authenticator_trust(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a2 && a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __sec_protocol_metadata_copy_authenticator_trust_block_invoke;
    v7[3] = &unk_1E70D61C0;
    v7[4] = &v8;
    v7[5] = a2;
    v7[6] = a3;
    v7[7] = a4;
    v7[8] = a5;
    sec_protocol_metadata_access_handle(a1, v7);
    v5 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  return v5;
}

BOOL __sec_protocol_metadata_copy_authenticator_trust_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 352);
    if (v3)
    {
      v5 = *(a2 + 360);
      if (v5)
      {
        *(*(a1[4] + 8) + 24) = v3(v5, a1[5], a1[6], a1[7], a1[8]);
      }
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_copy_experiment_identifier(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_experiment_identifier_block_invoke;
  v3[3] = &unk_1E70D61E8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_experiment_identifier_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = strdup(v4);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_experiment_identifier(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    os_unfair_lock_lock(&returned_raw_string_pointers_lock);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_experiment_identifier_block_invoke;
    v3[3] = &unk_1E70D6210;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(v1, v3);
    os_unfair_lock_unlock(&returned_raw_string_pointers_lock);
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

uint64_t __sec_protocol_metadata_get_experiment_identifier_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = *(a2 + 384);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, &sec_protocol_helper_c_string_set_callbacks);
    *(a2 + 384) = Mutable;
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = CFSetGetValue(Mutable, *(a2 + 56));
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 24))
  {
    *(v6 + 24) = strdup(v5);
    CFSetAddValue(*(a2 + 384), *(*(*(a1 + 32) + 8) + 24));
  }

  return 1;
}

uint64_t sec_protocol_metadata_copy_connection_id(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_metadata_copy_connection_id_block_invoke;
      v2[3] = &__block_descriptor_tmp_148;
      v2[4] = a2;
      return sec_protocol_metadata_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_metadata_copy_connection_id_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    **(a1 + 32) = *(a2 + 64);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_serialize_with_options(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v8[3])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __sec_protocol_metadata_serialize_with_options_block_invoke;
      v6[3] = &unk_1E70D6280;
      v6[4] = &v7;
      v6[5] = a2;
      sec_protocol_metadata_access_handle(a1, v6);
      v2 = v8[3];
    }

    else
    {
      v2 = 0;
    }

    _Block_object_dispose(&v7, 8);
  }

  return v2;
}

uint64_t __sec_protocol_metadata_serialize_with_options_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __sec_protocol_metadata_serialize_with_options_block_invoke_2;
  v4[3] = &unk_1E70D6258;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return sec_protocol_options_access_handle(v2, v4);
}

BOOL __sec_protocol_metadata_serialize_with_options_block_invoke_2(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    if (*(v3 + 336))
    {
      xpc_dictionary_set_uint64(*(v4 + 24), "alert_type", *(v3 + 216));
      xpc_dictionary_set_uint64(v5, "alert_code", *(v3 + 224));
      xpc_dictionary_set_uint64(v5, "handshake_state", *(v3 + 232));
      xpc_dictionary_set_uint64(v5, "stack_error", *(v3 + 240));
    }

    else
    {
      _serialize_options(*(v4 + 24), a2);
      xpc_dictionary_set_uint64(v5, "cipher_name", *(v3 + 34));
      xpc_dictionary_set_uint64(v5, "version", *(v3 + 32));
      xpc_dictionary_set_uint64(v5, "ticket_lifetime", *(v3 + 200));
      if (*(v3 + 184))
      {
        v6 = *(v3 + 184);
      }

      else
      {
        v6 = "none";
      }

      xpc_dictionary_set_string(v5, "peer_public_key_type", v6);
      if (*(v3 + 176))
      {
        v7 = *(v3 + 176);
      }

      else
      {
        v7 = "none";
      }

      xpc_dictionary_set_string(v5, "neg_curve", v7);
      if (*(v3 + 192))
      {
        v8 = *(v3 + 192);
      }

      else
      {
        v8 = "none";
      }

      xpc_dictionary_set_string(v5, "cert_request_type", v8);
      if (*(v3 + 40))
      {
        v9 = *(v3 + 40);
      }

      else
      {
        v9 = "none";
      }

      xpc_dictionary_set_string(v5, "negotiated_protocol", v9);
      xpc_dictionary_set_BOOL(v5, "false_start_used", (*(v3 + 336) & 0x10) != 0);
      xpc_dictionary_set_BOOL(v5, "session_resumed", (*(v3 + 336) & 0x80) != 0);
      xpc_dictionary_set_BOOL(v5, "ticket_offered", (*(v3 + 336) & 0x20) != 0);
      xpc_dictionary_set_BOOL(v5, "ticket_received", (*(v3 + 336) & 0x40) != 0);
      xpc_dictionary_set_BOOL(v5, "session_renewed", *(v3 + 336) & 0x100);
      xpc_dictionary_set_BOOL(v5, "resumption_attempted", (*(v3 + 336) & 0x200) != 0);
      xpc_dictionary_set_BOOL(v5, "alpn_used", (*(v3 + 336) & 0x400) != 0);
      xpc_dictionary_set_BOOL(v5, "npn_used", (*(v3 + 336) & 0x800) != 0);
      xpc_dictionary_set_BOOL(v5, "ocsp_enabled", (*(v3 + 336) & 4) != 0);
      xpc_dictionary_set_BOOL(v5, "ocsp_received", *(v3 + 136) != 0);
      xpc_dictionary_set_BOOL(v5, "sct_enabled", (*(v3 + 336) & 2) != 0);
      xpc_dictionary_set_BOOL(v5, "sct_received", *(v3 + 128) != 0);
    }
  }

  return a2 != 0;
}

void _serialize_options(void *a1, unsigned __int16 *a2)
{
  xpc_dictionary_set_uint64(a1, "min_version", *a2);
  xpc_dictionary_set_uint64(a1, "max_version", a2[1]);
  xpc_dictionary_set_uint64(a1, "minimum_rsa_key_size", *(a2 + 39));
  xpc_dictionary_set_uint64(a1, "minimum_ecdsa_key_size", *(a2 + 40));
  xpc_dictionary_set_uint64(a1, "minimum_signature_algorithm", *(a2 + 82));
  xpc_dictionary_set_uint64(a1, "tls_ticket_request_count", *(a2 + 332));
  xpc_dictionary_set_uint64(a1, "pqtls_mode", a2[167]);
  xpc_dictionary_set_BOOL(a1, "ats_required", *(a2 + 369) & 1);
  xpc_dictionary_set_BOOL(a1, "ats_minimum_tls_version_allowed", (*(a2 + 369) & 2) != 0);
  xpc_dictionary_set_BOOL(a1, "ats_non_pfs_ciphersuite_allowed", (*(a2 + 369) & 4) != 0);
  xpc_dictionary_set_BOOL(a1, "trusted_peer_certificate", (*(a2 + 369) & 8) != 0);
  xpc_dictionary_set_BOOL(a1, "disable_sni", (*(a2 + 369) & 0x20) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_fallback_attempt", (*(a2 + 369) & 0x80) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_false_start", (*(a2 + 369) & 0x200) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_tickets", (*(a2 + 369) & 0x800) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_sct", (*(a2 + 369) & 0x2000) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_ocsp", (*(a2 + 369) & 0x8000) != 0);
  xpc_dictionary_set_BOOL(a1, "enforce_ev", (*(a2 + 369) & 0x20000) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_ech", (*(a2 + 369) & 0x2000000) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_resumption", (*(a2 + 369) & 0x80000) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_renegotiation", (*(a2 + 369) & 0x200000) != 0);
  xpc_dictionary_set_BOOL(a1, "enable_early_data", (*(a2 + 369) & 0x800000) != 0);
  xpc_dictionary_set_BOOL(a1, "quic_use_legacy_codepoint", (*(a2 + 373) & 0x10) != 0);
  xpc_dictionary_set_BOOL(a1, "peer_authentication_required", (*(a2 + 369) & 0x4000000) != 0);
  xpc_dictionary_set_BOOL(a1, "peer_authentication_optional", (*(a2 + 369) & 0x8000000) != 0);
  xpc_dictionary_set_BOOL(a1, "certificate_compression_enabled", (*(a2 + 369) & 0x20000000) != 0);
  xpc_dictionary_set_BOOL(a1, "eddsa_enabled", *(a2 + 369) < 0);
  xpc_dictionary_set_BOOL(a1, "tls_delegated_credentials_enabled", *(a2 + 373) & 1);
  xpc_dictionary_set_BOOL(a1, "tls_grease_enabled", (*(a2 + 373) & 2) != 0);
  v4 = a2[204] & 1;

  xpc_dictionary_set_BOOL(a1, "enable_raw_external_pre_shared_keys", v4);
}

uint64_t sec_protocol_metadata_get_tls_certificate_compression_used(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_tls_certificate_compression_used_block_invoke;
    v3[3] = &unk_1E70D62D0;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(a1, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL __sec_protocol_metadata_get_tls_certificate_compression_used_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 336) & 0x2000) != 0;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_certificate_compression_algorithm(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_tls_certificate_compression_algorithm_block_invoke;
  v3[3] = &unk_1E70D62F8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_tls_certificate_compression_algorithm_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 256);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_handshake_rtt(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_handshake_rtt_block_invoke;
  v3[3] = &unk_1E70D6320;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_handshake_rtt_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 248);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_access_sent_certificates(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_sent_certificates_block_invoke;
    v4[3] = &unk_1E70D63C0;
    v4[4] = a2;
    return sec_protocol_metadata_access_handle(a1, v4);
  }

  return v2;
}

BOOL __sec_protocol_metadata_access_sent_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 160);
  if (!v4 || !v4[2].isa)
  {
    v7 = *(a2 + 80);
    if (v7)
    {
      v8[5] = v2;
      v8[6] = v3;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __sec_protocol_metadata_access_sent_certificates_block_invoke_2;
      v8[3] = &unk_1E70D6398;
      v8[4] = *(a1 + 32);
      return sec_array_apply(v7, v8);
    }

    return 0;
  }

  v5 = *(a1 + 32);

  return sec_identity_access_certificates(v4, v5);
}

uint64_t sec_protocol_metadata_copy_tls_negotiated_group(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_tls_negotiated_group_block_invoke;
  v3[3] = &unk_1E70D63E8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_tls_negotiated_group_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 176);
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = strdup(v4);
    }
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_negotiated_pake(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_tls_negotiated_pake_block_invoke;
  v3[3] = &unk_1E70D6438;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_get_tls_negotiated_pake_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 320);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_create_config(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v6[3])
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 0x40000000;
      v4[2] = __sec_protocol_options_create_config_block_invoke;
      v4[3] = &unk_1E70D6460;
      v4[4] = &v5;
      v2 = sec_protocol_options_access_handle(v1, v4);
      v1 = v6[3];
      if (v2)
      {
LABEL_6:
        _Block_object_dispose(&v5, 8);
        return v1;
      }

      xpc_release(v6[3]);
    }

    v1 = 0;
    goto LABEL_6;
  }

  return v1;
}

BOOL __sec_protocol_options_create_config_block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    _serialize_options(*(*(*(a1 + 32) + 8) + 24), a2);
  }

  return a2 != 0;
}

BOOL sec_protocol_options_matches_config(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (MEMORY[0x18CFDC200](a2) == MEMORY[0x1E69E9E80] && (config = sec_protocol_options_create_config(a1)) != 0)
    {
      v6 = config;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___options_config_matches_partial_config_block_invoke;
      v8[3] = &__block_descriptor_tmp_275;
      v8[4] = config;
      v8[5] = a2;
      v2 = xpc_dictionary_apply(a2, v8);
      xpc_release(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL ___options_config_matches_partial_config_block_invoke(uint64_t a1, char *__s1)
{
  v4 = strnlen(__s1, 0x80uLL);
  v5 = 0;
  while (1)
  {
    v6 = _options_uint64_keys[v5];
    v7 = strlen(v6);
    v8 = v4 <= v7 ? v7 : v4;
    if (!strncmp(__s1, v6, v8))
    {
      result = _dictionary_has_key(*(a1 + 32), v6);
      if (!result)
      {
        return result;
      }

      uint64 = xpc_dictionary_get_uint64(*(a1 + 32), v6);
      if (uint64 != xpc_dictionary_get_uint64(*(a1 + 40), v6))
      {
        break;
      }
    }

    if (++v5 == 7)
    {
      v11 = 0;
      while (1)
      {
        v12 = _options_BOOL_keys[v11];
        v13 = strlen(v12);
        v14 = v4 <= v13 ? v13 : v4;
        if (!strncmp(__s1, v12, v14))
        {
          result = _dictionary_has_key(*(a1 + 32), v12);
          if (!result)
          {
            return result;
          }

          v15 = xpc_dictionary_get_BOOL(*(a1 + 32), v12);
          if (v15 != xpc_dictionary_get_BOOL(*(a1 + 40), v12))
          {
            break;
          }
        }

        if (++v11 == 23)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

BOOL _dictionary_has_key(void *a1, uint64_t a2)
{
  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E80])
  {
    return 0;
  }

  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___dictionary_has_key_block_invoke;
  applier[3] = &__block_descriptor_tmp_276;
  applier[4] = a2;
  return !xpc_dictionary_apply(a1, applier);
}

BOOL ___dictionary_has_key_block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = strlen(v3);
  return strncmp(a2, v3, v4) != 0;
}

uint64_t sec_protocol_options_apply_config(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (MEMORY[0x18CFDC200](a2) == MEMORY[0x1E69E9E80])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = ___apply_config_options_block_invoke;
      v5[3] = &__block_descriptor_tmp_280;
      v5[4] = a2;
      v5[5] = a1;
      return sec_protocol_options_access_handle(a1, v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ___apply_config_options_block_invoke(int8x16_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___apply_config_options_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_279;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  return xpc_dictionary_apply(v2.i64[0], v4);
}

uint64_t ___apply_config_options_block_invoke_2(uint64_t a1, char *__s1, void *a3)
{
  v6 = strnlen(__s1, 0x80uLL);
  v7 = &off_1EFA885F8;
  v8 = 23;
  do
  {
    v9 = *(v7 - 1);
    v10 = strnlen(v9, 0x80uLL);
    if (v6 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (!strncmp(v9, __s1, v11))
    {
      v12 = *v7;
      v13 = *(a1 + 32);
      v14 = xpc_dictionary_get_BOOL(*(a1 + 40), __s1);
      (v12)(v13, v14);
    }

    v7 += 2;
    --v8;
  }

  while (v8);
  v15 = &off_1EFA88768;
  v16 = 7;
  do
  {
    v17 = *(v15 - 1);
    v18 = strnlen(v17, 0x80uLL);
    if (v6 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v6;
    }

    if (!strncmp(v17, __s1, v19))
    {
      v20 = *v15;
      v21 = *(a1 + 32);
      uint64 = xpc_dictionary_get_uint64(*(a1 + 40), __s1);
      (v20)(v21, uint64);
    }

    v15 += 2;
    --v16;
  }

  while (v16);
  if (!strncmp(__s1, "ciphersuites", v6) && MEMORY[0x18CFDC200](a3) == MEMORY[0x1E69E9E50])
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___apply_config_options_block_invoke_3;
    v25[3] = &__block_descriptor_tmp_278;
    v23 = *(a1 + 32);
    v25[4] = a3;
    v25[5] = v23;
    xpc_array_apply(a3, v25);
  }

  return 1;
}

uint64_t ___apply_config_options_block_invoke_3(uint64_t a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(*(a1 + 32), a2);
  sec_protocol_options_append_tls_ciphersuite(*(a1 + 40), uint64);
  return 1;
}

void _set_min_tls_protocol_version(NSObject *a1, unint64_t a2)
{
  if (a2 >= 0x10000)
  {
    _os_assumes_log();
  }

  else
  {

    sec_protocol_options_set_min_tls_protocol_version(a1, a2);
  }
}

uint64_t sec_protocol_options_set_tls_block_length_padding(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_block_length_padding_block_invoke;
    v2[3] = &__block_descriptor_tmp_163;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_block_length_padding_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 374) = *(a1 + 32);
  }

  return a2 != 0;
}

void sec_protocol_options_add_server_raw_public_key_certificate(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = CFDataCreate(v6, a2, a3);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(v8, v9);
      CFRelease(v10);
      sec_protocol_options_set_server_raw_public_key_certificates(a1, v8);
    }

    CFRelease(v8);
  }
}

uint64_t sec_protocol_options_set_client_raw_public_key_certificates(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_client_raw_public_key_certificates_block_invoke;
      v2[3] = &__block_descriptor_tmp_165;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

CFMutableArrayRef __sec_protocol_options_set_client_raw_public_key_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 288);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 288) = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Count = CFArrayGetCount(*(a1 + 32));
  result = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v8 = result;
    for (i = 0; i < CFArrayGetCount(*(a1 + 32)); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
      CFArrayAppendValue(v8, ValueAtIndex);
    }

    *(a2 + 288) = v8;
    return 1;
  }

  return result;
}

uint64_t sec_protocol_options_set_new_session_ticket_request(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_new_session_ticket_request_block_invoke;
    v2[3] = &__block_descriptor_tmp_166;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_new_session_ticket_request_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 304) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_resumed_session_ticket_request(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_resumed_session_ticket_request_block_invoke;
    v2[3] = &__block_descriptor_tmp_167;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_resumed_session_ticket_request_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 305) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_eap_method(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 <= 1)
    {
      v6 = v2;
      v7 = v3;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 0x40000000;
      v4[2] = __sec_protocol_options_set_eap_method_block_invoke;
      v4[3] = &__block_descriptor_tmp_168;
      v5 = a2;
      return sec_protocol_options_access_handle(result, v4);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_eap_method_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 368) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_eap_method(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_options_get_eap_method_block_invoke;
  v3[3] = &unk_1E70D6548;
  v3[4] = &v4;
  sec_protocol_options_access_handle(a1, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_options_get_eap_method_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 368);
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_eap_key_material(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && (a3 - 129) >= 0xFFFFFFFFFFFFFF80)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __sec_protocol_metadata_get_eap_key_material_block_invoke;
    v5[3] = &unk_1E70D6570;
    v5[5] = a2;
    v5[6] = a3;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(a1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_eap_key_material_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 328);
    if (v3)
    {
      memmove(*(a1 + 40), v3, *(a1 + 48));
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return a2 != 0;
}

BOOL sec_protocol_helper_ciphersuite_group_contains_ciphersuite(unsigned int a1, int a2)
{
  if (a1 > 4)
  {
    return 0;
  }

  v2 = *(&off_1E70D6910 + a1);
  v3 = qword_18895ED40[a1] - 1;
  do
  {
    v4 = *v2++;
    result = v4 == a2;
  }

  while (v4 != a2 && v3-- != 0);
  return result;
}

uint64_t sec_protocol_helper_ciphersuite_minimum_TLS_version(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      return 0;
    }
  }

  return v1[1];
}

uint64_t sec_protocol_helper_ciphersuite_maximum_TLS_version(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      return 0;
    }
  }

  return v1[2];
}

const char *sec_protocol_helper_get_ciphersuite_name(int a1)
{
  if (a1 <= 4866)
  {
    if (a1 > 102)
    {
      if (a1 > 157)
      {
        if (a1 > 4864)
        {
          if (a1 == 4865)
          {
            return "TLS_AES_128_GCM_SHA256";
          }

          else
          {
            return "TLS_AES_256_GCM_SHA384";
          }
        }

        if (a1 == 158)
        {
          return "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256";
        }

        if (a1 == 159)
        {
          return "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384";
        }
      }

      else
      {
        if (a1 > 155)
        {
          if (a1 == 156)
          {
            return "TLS_RSA_WITH_AES_128_GCM_SHA256";
          }

          else
          {
            return "TLS_RSA_WITH_AES_256_GCM_SHA384";
          }
        }

        if (a1 == 103)
        {
          return "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256";
        }

        if (a1 == 107)
        {
          return "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256";
        }
      }
    }

    else if (a1 > 52)
    {
      if (a1 > 59)
      {
        if (a1 == 60)
        {
          return "TLS_RSA_WITH_AES_128_CBC_SHA256";
        }

        if (a1 == 61)
        {
          return "TLS_RSA_WITH_AES_256_CBC_SHA256";
        }
      }

      else
      {
        if (a1 == 53)
        {
          return "TLS_RSA_WITH_AES_256_CBC_SHA";
        }

        if (a1 == 57)
        {
          return "TLS_DHE_RSA_WITH_AES_256_CBC_SHA";
        }
      }
    }

    else if (a1 > 46)
    {
      if (a1 == 47)
      {
        return "TLS_RSA_WITH_AES_128_CBC_SHA";
      }

      if (a1 == 51)
      {
        return "TLS_DHE_RSA_WITH_AES_128_CBC_SHA";
      }
    }

    else
    {
      if (a1 == 10)
      {
        return "SSL_RSA_WITH_3DES_EDE_CBC_SHA";
      }

      if (a1 == 22)
      {
        return "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA";
      }
    }

    return 0;
  }

  if (a1 > 49187)
  {
    if (a1 <= 49195)
    {
      if (a1 > 49191)
      {
        if (a1 == 49192)
        {
          return "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384";
        }

        if (a1 == 49195)
        {
          return "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256";
        }
      }

      else
      {
        if (a1 == 49188)
        {
          return "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384";
        }

        if (a1 == 49191)
        {
          return "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256";
        }
      }
    }

    else if (a1 <= 49199)
    {
      if (a1 == 49196)
      {
        return "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384";
      }

      if (a1 == 49199)
      {
        return "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256";
      }
    }

    else
    {
      switch(a1)
      {
        case 49200:
          return "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384";
        case 52392:
          return "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256";
        case 52393:
          return "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256";
      }
    }

    return 0;
  }

  if (a1 <= 49169)
  {
    if (a1 > 49160)
    {
      if (a1 == 49161)
      {
        return "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA";
      }

      if (a1 == 49162)
      {
        return "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA";
      }
    }

    else
    {
      if (a1 == 4867)
      {
        return "TLS_CHACHA20_POLY1305_SHA256";
      }

      if (a1 == 49160)
      {
        return "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA";
      }
    }

    return 0;
  }

  if (a1 > 49171)
  {
    if (a1 == 49172)
    {
      return "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA";
    }

    if (a1 == 49187)
    {
      return "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256";
    }

    return 0;
  }

  if (a1 == 49170)
  {
    return "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA";
  }

  else
  {
    return "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA";
  }
}

uint64_t sec_protocol_helper_dispatch_data_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v3 == v4;
  if (v3 != v4 && v3 && v4)
  {
    size = dispatch_data_get_size(v3);
    if (size == dispatch_data_get_size(v5))
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __sec_protocol_helper_dispatch_data_equal_block_invoke;
      v9[3] = &unk_1E70D68F0;
      v10 = v5;
      v11 = &v12;
      dispatch_data_apply(v3, v9);
      v6 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t __sec_protocol_helper_dispatch_data_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __sec_protocol_helper_dispatch_data_equal_block_invoke_2;
  v8[3] = &unk_1E70D68C8;
  v8[4] = *(a1 + 40);
  v8[5] = a3;
  v8[6] = a5;
  v8[7] = a4;
  dispatch_data_apply(v6, v8);
  return *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __sec_protocol_helper_dispatch_data_equal_block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1[5];
  }

  v9 = v6 + v7;
  if (v6 + v7 >= a5 + a3)
  {
    v10 = a5 + a3;
  }

  else
  {
    v10 = v6 + v7;
  }

  v11 = v10 > v8;
  v12 = v10 - v8;
  if (v11)
  {
    *(*(a1[4] + 8) + 24) = memcmp((a4 + v8 - a3), (a1[7] + v8 - v7), v12) == 0;
  }

  else
  {
    if (v9 < a3)
    {
      v13 = 0;
      return v13 & 1;
    }

    if (a5 + a3 < v7)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  v13 = *(*(a1[4] + 8) + 24);
  return v13 & 1;
}

BOOL useMessageSecurityEnabled()
{
  if (isMessageSecurityAllowedForCurrentBundleID_onceToken != -1)
  {
    dispatch_once(&isMessageSecurityAllowedForCurrentBundleID_onceToken, &__block_literal_global_3844);
  }

  return isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound == 0;
}

uint64_t MS_SecCMSDecodeSignedData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = [MEMORY[0x1E69B1790] decodeMessageSecurityObject:a1 options:0 error:&v21];
  v6 = v21;
  if (v5)
  {
    v7 = [v5 contentType];
    if ([v7 isEqualToString:*MEMORY[0x1E69B1738]] && (objc_msgSend(v5, "embeddedContent"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [v5 embeddedContent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v5 embeddedContent];
        v13 = v12;
        if (a2)
        {
          if (([v12 detached]& 1) != 0)
          {
            v14 = [MEMORY[0x1E695DEF0] data];
          }

          else
          {
            v17 = [v13 contentType];
            v18 = [v17 isEqualToString:*MEMORY[0x1E69B1728]];

            if ((v18 & 1) == 0)
            {
              v19 = secLogObjForScope("SecWarning");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [v13 contentType];
                *buf = 138412290;
                v23 = v20;
                _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "returning attached embedded content of type %@", buf, 0xCu);
              }
            }

            v14 = [v13 dataContent];
          }

          *a2 = v14;
        }

        if (a3)
        {
          addSignedAttribues(v13, a3);
          a3 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "CMS message does not contain a SignedData", buf, 2u);
    }

    a3 = 4294941021;
  }

  else
  {
    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "failed to decode CMS message: %@", buf, 0xCu);
    }

    a3 = 4294942003;
  }

LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t MS_SecCMSDecryptEnvelopedData(uint64_t a1, __CFData *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v5 = [MEMORY[0x1E69B1790] decodeMessageSecurityObject:a1 options:0 error:&v31];
  v6 = v31;
  if (v5)
  {
    v7 = [v5 contentType];
    if ([v7 isEqualToString:*MEMORY[0x1E69B1730]] && (objc_msgSend(v5, "embeddedContent"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [v5 embeddedContent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v5 embeddedContent];
        v13 = [v12 contentType];
        if ([v13 isEqualToString:*MEMORY[0x1E69B1728]])
        {
          v14 = [v12 dataContent];
          if (v14)
          {
            v15 = v14;
            CFDataAppendBytes(a2, [v14 bytes], objc_msgSend(v14, "length"));

            if (!a3)
            {
              v22 = 0;
LABEL_30:

              goto LABEL_19;
            }

            v16 = [v12 recipients];
            v17 = [v16 count];

            if (v17)
            {
              v18 = [v12 recipients];
              v19 = [v18 objectAtIndex:0];

              v20 = [v19 recipientCertificate];
              v21 = v20;
              if (v20)
              {
                CFRetain(v20);
              }

              v22 = 0;
              *a3 = v21;
              goto LABEL_29;
            }

            v22 = 4294899625;
            v19 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v28 = "failed to read the recipient after decoding";
              goto LABEL_27;
            }
          }

          else
          {
            v22 = 4294899625;
            v19 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v28 = "failed to read the decrypted content after decoding";
LABEL_27:
              v29 = v19;
              v30 = 2;
              goto LABEL_28;
            }
          }
        }

        else
        {
          v22 = 4294899625;
          v19 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v13;
            v28 = "unexpected content type %@";
            v29 = v19;
            v30 = 12;
LABEL_28:
            _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
          }
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
    }

    v12 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "CMS message does not contain a EnvelopedData";
      v24 = v12;
      v25 = 2;
LABEL_17:
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }
  }

  else
  {
    v12 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v6;
      v23 = "failed to decode CMS message: %@";
      v24 = v12;
      v25 = 12;
      goto LABEL_17;
    }
  }

  v22 = 4294941021;
LABEL_19:

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t SECSFAEventFilterReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_188854EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id KCSharingSetupMessagingdServerProtocol(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  v3 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v5 = [v3 setWithArray:v4];

  [v1 setClass:objc_opt_class() forSelector:sel_sendNewInvitesForGroup_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_sendNewInvitesForGroup_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_cancelPendingInvitesForGroup_participantHandles_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_cancelPendingInvitesForGroup_participantHandles_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_didAcceptInviteForGroupID_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_didDeclineInviteForGroupID_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_fetchReceivedInviteWithGroupID_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v5 forSelector:sel_fetchReceivedInviteWithGroupID_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchReceivedInviteWithGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_fetchReceivedInvitesWithCompletion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchReceivedInvitesWithCompletion_ argumentIndex:1 ofReply:1];

  v6 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t __Block_byref_object_copy__4506(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SecPaddingCompute(int a1, unsigned int a2, CFErrorRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      Default = CFAllocatorGetDefault();
      v5 = -1;
      *a3 = CFErrorCreate(Default, @"com.apple.security.padding", -1, 0);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v6 = 64;
    v7 = (a2 + 0x1FFFLL) & 0x1FFFFE000;
    if (a2 <= 0x7D00)
    {
      v7 = (a2 + 1023) & 0xFC00;
    }

    v8 = a2;
    v9 = 1 << -__clz(a2);
    if ((a2 & (a2 - 1)) != 0)
    {
      v8 = v9;
    }

    if (a2 <= 0x400)
    {
      v7 = v8;
    }

    if (a2 >= 0x41)
    {
      v6 = v7;
    }

    return v6 - a2;
  }

  return v5;
}

id getOSLog()
{
  if (getOSLog_onceToken != -1)
  {
    dispatch_once(&getOSLog_onceToken, &__block_literal_global_247);
  }

  v1 = getOSLog_sfaLog;

  return v1;
}

uint64_t __getOSLog_block_invoke()
{
  getOSLog_sfaLog = os_log_create("SFA", "log");

  return MEMORY[0x1EEE66BB8]();
}

void sub_188857718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188857AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188857FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__4729(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18885829C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

const __CFString *___is_apple_bundle_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFStringHasPrefix(result, @"com.apple.");
    v2 = result != 0;
  }

  else
  {
    v2 = 1;
  }

  _is_apple_bundle_result = v2;
  return result;
}

void sec_array_append(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  if (v7)
  {
    if (v7[1])
    {
      v4 = MEMORY[0x18CFDC200]();
      if (v3)
      {
        if (v4 == MEMORY[0x1E69E9E50])
        {
          v5 = v3;
          v6 = v7[1];
          xpc_array_set_pointer();
        }
      }
    }
  }
}

size_t sec_array_get_count(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && v1[1] && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(v2[1]);
  }

  else
  {
    count = 0;
  }

  return count;
}

sec_identity_t sec_identity_create(SecIdentityRef identity)
{
  v2 = [SecConcrete_sec_identity alloc];

  return [(SecConcrete_sec_identity *)v2 initWithIdentity:identity];
}

sec_identity_t sec_identity_create_with_certificates(SecIdentityRef identity, CFArrayRef certificates)
{
  v4 = [SecConcrete_sec_identity alloc];

  return [(SecConcrete_sec_identity *)v4 initWithIdentityAndCertificates:identity certificates:certificates];
}

SecConcrete_sec_identity *sec_identity_create_with_certificates_and_external_private_key(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[SecConcrete_sec_identity alloc] initWithCertificates:a1 signBlock:v9 decryptBlock:v8 queue:v7];

  return v10;
}

SecConcrete_sec_identity *sec_identity_create_client_SPAKE2PLUSV1_identity_internal(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10 && dispatch_data_get_size(v10) == 80)
  {
    v12 = v11;
    ccspake_cp_256_rfc();
    v13 = ccspake_sizeof_w() + 8;
    size = dispatch_data_get_size(v12);
    if (size == 2 * v13 && (v15 = size, (v16 = malloc_type_malloc(size, 0x100004077774924uLL)) != 0))
    {
      v17 = v16;
      if (dispatch_data_copyout(v12, v16, v15) == v15 && (v18 = 2 * ccspake_sizeof_w(), (v19 = malloc_type_malloc(v18, 0x100004077774924uLL)) != 0))
      {
        v20 = v19;
        ccspake_sizeof_w();
        if (ccspake_reduce_w_RFC9383() || (ccspake_sizeof_w(), ccspake_sizeof_w(), ccspake_reduce_w_RFC9383()))
        {
          v43 = 0;
        }

        else
        {
          v43 = dispatch_data_create(v20, v18, 0, 0);
        }

        free(v17);
      }

      else
      {
        v43 = 0;
        v20 = v17;
      }

      free(v20);
    }

    else
    {
      v43 = 0;
    }

    v22 = v12;
    v23 = ccspake_sizeof_w() + 8;
    v24 = dispatch_data_get_size(v22);
    if (v24 == 2 * v23 && (v25 = v24, (v26 = malloc_type_malloc(v24, 0x100004077774924uLL)) != 0))
    {
      v27 = v26;
      if (dispatch_data_copyout(v22, v26, v25) == v25 && (v28 = ccspake_sizeof_w(), (v29 = malloc_type_malloc(v28, 0x100004077774924uLL)) != 0))
      {
        v30 = v29;
        ccspake_sizeof_w();
        if (ccspake_reduce_w_RFC9383())
        {
          v31 = 0;
        }

        else
        {
          v31 = dispatch_data_create(v30, v28, 0, 0);
        }

        free(v27);
      }

      else
      {
        v31 = 0;
        v30 = v27;
      }

      free(v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = v22;
    v33 = ccspake_sizeof_w() + 8;
    v34 = dispatch_data_get_size(v32);
    if (v34 == 2 * v33 && (v35 = v34, (v36 = malloc_type_malloc(v34, 0x100004077774924uLL)) != 0))
    {
      v37 = v36;
      if (dispatch_data_copyout(v32, v36, v35) == v35 && ccrng() && (v42 = ccspake_sizeof_point(), (v38 = malloc_type_malloc(v42, 0x100004077774924uLL)) != 0))
      {
        v39 = v38;
        ccspake_sizeof_w();
        if (ccspake_reduce_w_RFC9383() || (ccspake_sizeof_w(), ccspake_generate_L()))
        {
          v40 = 0;
        }

        else
        {
          v40 = dispatch_data_create(v39, v42, 0, 0);
        }

        free(v37);
      }

      else
      {
        v40 = 0;
        v39 = v37;
      }

      free(v39);
    }

    else
    {
      v40 = 0;
    }

    v21 = [[SecConcrete_sec_identity alloc] initWithSPAKE2PLUSV1Context:v7 clientIdentity:v8 serverIdentity:v9 clientPasswordVerifier:v43 serverPasswordVerifier:v31 registrationRecord:v40];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = a2;
  if (a1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E70D6B60;
    applier[5] = v6;
    applier[6] = a3;
    applier[4] = &v7;
    dispatch_data_apply(a1, applier);
    v3 = v8[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL __dispatch_data_copyout_block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = a1[6];
  v6 = *(*(a1[4] + 8) + 24);
  if (v5 - v6 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v5 - v6;
  }

  if (v7)
  {
    memcpy((*(*(a1[5] + 8) + 24) + v6), __src, v7);
    *(*(a1[4] + 8) + 24) += v7;
    v6 = *(*(a1[4] + 8) + 24);
    v5 = a1[6];
  }

  return v6 < v5;
}

SecConcrete_sec_identity *sec_identity_create_client_SPAKE2PLUSV1_identity(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!a5)
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    if (v17)
    {
      v48 = 0;
      if (!v15 || (v48 = dispatch_data_get_size(v15), !(v48 >> 16)))
      {
        v47 = 0;
        if (!v16 || (v47 = dispatch_data_get_size(v16), !(v47 >> 16)))
        {
          size = dispatch_data_get_size(v17);
          if (!(size >> 16))
          {
            v45 = 0;
            client_SPAKE2PLUSV1_identity_internal = 0;
            if (!dispatch_data_copyout_and_alloc(v15, &v45, &v48))
            {
LABEL_22:

              goto LABEL_23;
            }

            v44 = 0;
            if (dispatch_data_copyout_and_alloc(v16, &v44, &v47))
            {
              __src = 0;
              if (dispatch_data_copyout_and_alloc(v17, &__src, &size))
              {
                v18 = size;
                v36 = (size + 16);
                __n = v48;
                v19 = size + 16 + v48;
                v40 = v47;
                v41 = (v19 + 8);
                v20 = malloc_type_malloc(v19 + 8 + v47, 0x100004077774924uLL);
                if (v20)
                {
                  v33 = v19;
                  v21 = v20;
                  *v20 = v18;
                  v35 = __src;
                  memcpy(v20 + 1, __src, v18);
                  *(v21 + v18 + 8) = __n;
                  v22 = &v36[v21];
                  v37 = v45;
                  v23 = v21;
                  memcpy(v22, v45, __n);
                  *&v33[v21] = v40;
                  v24 = v44;
                  __na = v23;
                  memcpy(&v41[v23], v44, v40);
                  v25 = ccscrypt_storage_size();
                  v26 = malloc_type_malloc(v25, 0x100004077774924uLL);
                  if (v26)
                  {
                    v34 = v24;
                    v27 = v26;
                    bzero(v26, v25);
                    *&v28 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    buffer[3] = v28;
                    buffer[4] = v28;
                    buffer[1] = v28;
                    buffer[2] = v28;
                    buffer[0] = v28;
                    v42 = v27;
                    if (!ccscrypt())
                    {
                      v32 = dispatch_data_create(buffer, 0x50uLL, 0, 0);
                      free(v37);
                      free(v34);
                      free(v35);
                      free(__na);
                      free(v42);
                      client_SPAKE2PLUSV1_identity_internal = sec_identity_create_client_SPAKE2PLUSV1_identity_internal(v14, v15, v16, v32);

                      goto LABEL_22;
                    }

                    free(v37);
                    free(v34);
                    free(v35);
                    free(__na);
                    v29 = v27;
                  }

                  else
                  {
                    free(v37);
                    free(v24);
                    free(v35);
                    v29 = __na;
                  }
                }

                else
                {
                  free(v45);
                  free(v44);
                  v29 = __src;
                }
              }

              else
              {
                free(v45);
                v29 = v44;
              }
            }

            else
            {
              v29 = v45;
            }

            free(v29);
          }
        }
      }
    }

    client_SPAKE2PLUSV1_identity_internal = 0;
    goto LABEL_22;
  }

  client_SPAKE2PLUSV1_identity_internal = 0;
LABEL_23:

  v30 = *MEMORY[0x1E69E9840];
  return client_SPAKE2PLUSV1_identity_internal;
}

BOOL dispatch_data_copyout_and_alloc(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  *a2 = 0;
  size = dispatch_data_get_size(v5);
  *a3 = size;
  if (size)
  {
    v7 = malloc_type_malloc(size, 0x52933193uLL);
    *a2 = v7;
    if (v7)
    {
      v8 = dispatch_data_copyout(v5, v7, *a3) == *a3;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

SecConcrete_sec_identity *sec_identity_create_server_SPAKE2PLUSV1_identity(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    goto LABEL_6;
  }

  size = dispatch_data_get_size(v12);
  v15 = 0;
  if (v13 && size == 32)
  {
    if (dispatch_data_get_size(v13) == 65)
    {
      v15 = [[SecConcrete_sec_identity alloc] initWithSPAKE2PLUSV1Context:v9 clientIdentity:v10 serverIdentity:v11 clientPasswordVerifier:0 serverPasswordVerifier:v12 registrationRecord:v13];
      goto LABEL_7;
    }

LABEL_6:
    v15 = 0;
  }

LABEL_7:

  return v15;
}

uint64_t sec_identity_copy_type(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

SecIdentityRef sec_identity_copy_ref(sec_identity_t identity)
{
  if (identity && (isa = identity[1].isa) != 0)
  {
    return CFRetain(isa);
  }

  else
  {
    return 0;
  }
}

CFArrayRef sec_identity_copy_certificates_ref(sec_identity_t identity)
{
  if (identity && (isa = identity[2].isa) != 0)
  {
    return CFRetain(isa);
  }

  else
  {
    return 0;
  }
}

BOOL sec_identity_access_certificates(sec_identity_t identity, void *handler)
{
  v3 = handler;
  v4 = v3;
  if (identity)
  {
    identity = identity[2].isa;
    if (identity)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __sec_identity_access_certificates_block_invoke;
      context[3] = &unk_1E70DD8F8;
      v7 = v3;
      v8.length = CFArrayGetCount(identity);
      v8.location = 0;
      CFArrayApplyFunction(identity, v8, apply_block_1, context);

      LOBYTE(identity) = 1;
    }
  }

  return identity;
}

void __sec_identity_access_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[SecConcrete_sec_certificate alloc] initWithCertificate:a2];
    (*(*(a1 + 32) + 16))();
  }
}

BOOL sec_identity_has_certificates(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

void *sec_identity_copy_private_key_sign_block(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return _Block_copy(v1);
  }

  else
  {
    return 0;
  }
}

void *sec_identity_copy_private_key_decrypt_block(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return _Block_copy(v1);
  }

  else
  {
    return 0;
  }
}

id sec_identity_copy_private_key_queue(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40)) != 0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

id *sec_identity_copy_SPAKE2PLUSV1_context(id *result)
{
  if (result)
  {
    return result[7];
  }

  return result;
}

id *sec_identity_copy_SPAKE2PLUSV1_client_identity(id *result)
{
  if (result)
  {
    return result[8];
  }

  return result;
}

id *sec_identity_copy_SPAKE2PLUSV1_server_identity(id *result)
{
  if (result)
  {
    return result[9];
  }

  return result;
}

id *sec_identity_copy_SPAKE2PLUSV1_server_password_verifier(id *result)
{
  if (result)
  {
    return result[11];
  }

  return result;
}

id *sec_identity_copy_SPAKE2PLUSV1_client_password_verifier(id *result)
{
  if (result)
  {
    return result[10];
  }

  return result;
}

id *sec_identity_copy_SPAKE2PLUSV1_registration_record(id *result)
{
  if (result)
  {
    return result[12];
  }

  return result;
}

SecCertificateRef sec_certificate_copy_ref(sec_certificate_t certificate)
{
  if (certificate && (isa = certificate[1].isa) != 0)
  {
    return CFRetain(isa);
  }

  else
  {
    return 0;
  }
}

SecTrustRef sec_trust_copy_ref(sec_trust_t trust)
{
  if (trust && (isa = trust[1].isa) != 0)
  {
    return CFRetain(isa);
  }

  else
  {
    return 0;
  }
}

uint64_t sec_protocol_configuration_builder_create(uint64_t a1, uint64_t a2)
{
  v4 = [SecConcrete_sec_protocol_configuration_builder alloc];

  return [(SecConcrete_sec_protocol_configuration_builder *)v4 initWithDictionary:a1 andInternalFlag:a2];
}

SecConcrete_sec_protocol_configuration *sec_protocol_configuration_create_with_builder(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SecConcrete_sec_protocol_configuration);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v3 == 1)
    {
      if (v4)
      {
        *v17 = 0;
        v5 = 2;
        _os_log_debug_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Building default configuration for first-party bundle", v17, 2u);
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      if (v4)
      {
        *v16 = 0;
        _os_log_debug_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Building default configuration for third-party bundle", v16, 2u);
      }

      v5 = 0;
    }

    v6 = v2->dictionary;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v6, "NSExceptionDomains", v7);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v6, "NSCIDRExceptions", v8);
    xpc_dictionary_set_uint64(v6, "NSAllowsArbitraryLoadsInWebContent", 0);
    xpc_dictionary_set_uint64(v6, "NSAllowsArbitraryLoadsForMedia", 0);
    xpc_dictionary_set_uint64(v6, "NSAllowsLocalNetworking", 0);
    xpc_dictionary_set_uint64(v6, "NSAllowsArbitraryLoads", v5);

    v9 = v2->dictionary;
    sec_protocol_configuration_register_builtin_exception(v9, "apple.com", 0x303u);
    sec_protocol_configuration_register_builtin_exception(v9, "ls.apple.com", 0x301u);
    sec_protocol_configuration_register_builtin_exception(v9, "gs.apple.com", 0x301u);
    sec_protocol_configuration_register_builtin_exception(v9, "geo.apple.com", 0x301u);
    sec_protocol_configuration_register_builtin_exception(v9, "is.autonavi.com", 0x301u);
    sec_protocol_configuration_register_builtin_exception(v9, "apple-mapkit.com", 0x301u);
    sec_protocol_configuration_register_builtin_exception(v9, "setup.icloud.com", 0x303u);

    v10 = v1[1];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Setting configuration overrides based on AppTransportSecurity exceptions", buf, 2u);
      }

      sec_protocol_configuration_set_ats_overrides(v2, v10);
    }

    else if (v11)
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Using default configuration settings", v14, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "sec_protocol_configuration_create failed", v13, 2u);
  }

  return v2;
}

void SecCoreAnalyticsSendValue(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"value";
  v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [SecCoreAnalytics sendEvent:a1 event:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void SecCoreAnalyticsSendKernEntropyAnalytics()
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.startup_done", &v21, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.startup_done";
    v7 = MEMORY[0x1E69E9C10];
LABEL_36:
    v8 = &v23;
LABEL_37:
    _os_log_error_impl(&dword_1887D2000, v7, OS_LOG_TYPE_ERROR, "failed to read sysctl %s", v8, 0xCu);
    goto LABEL_38;
  }

  v20 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.adaptive_proportion_test.failure_count", &v20, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.adaptive_proportion_test.failure_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v19 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.adaptive_proportion_test.max_observation_count", &v19, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.adaptive_proportion_test.max_observation_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v18 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.adaptive_proportion_test.reset_count", &v18, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.adaptive_proportion_test.reset_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v17 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.repetition_count_test.failure_count", &v17, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.repetition_count_test.failure_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v16 = -1431655766;
  *&v23 = 4;
  if (sysctlbyname("kern.entropy.health.repetition_count_test.max_observation_count", &v16, &v23, 0, 0) < 0 || v23 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.repetition_count_test.max_observation_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v15 = -1431655766;
  *&v23 = 4;
  if ((sysctlbyname("kern.entropy.health.repetition_count_test.reset_count", &v15, &v23, 0, 0) & 0x80000000) == 0 && v23 == 4)
  {
    v0 = v18;
    v1 = 1 << -__clz(v18);
    if ((v18 & (v18 - 1)) != 0)
    {
      v0 = v1;
    }

    v18 = v0;
    v2 = v15;
    v3 = 1 << -__clz(v15);
    if ((v15 & (v15 - 1)) != 0)
    {
      v2 = v3;
    }

    v15 = v2;
    v4 = v20 | v17;
    if (!(v20 | v17))
    {
      v6 = 0;
      v5 = -1;
      goto LABEL_56;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    time(&v22);
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if ((sysctl_read(&v23) & 0x80000000) == 0)
    {
      v5 = (v22 - v23) / 60;
      v6 = v20;
      v4 = v17;
      v0 = v18;
      v2 = v15;
LABEL_56:
      *&v23 = MEMORY[0x1E69E9820];
      *(&v23 + 1) = 3221225472;
      v24 = __SecCoreAnalyticsSendKernEntropyHealthAnalytics_block_invoke;
      v25 = &__block_descriptor_64_e19___NSDictionary_8__0l;
      v26 = COERCE_DOUBLE(__PAIR64__(v21, v5));
      v27 = __PAIR64__(v19, v6);
      v28 = v0;
      v29 = v4;
      v30 = v16;
      v31 = v2;
      [SecCoreAnalytics sendEventLazy:@"com.apple.kern.entropyHealth" builder:&v23];
      goto LABEL_38;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *v32 = 136315138;
    *&v32[4] = "kern.boottime";
    v7 = MEMORY[0x1E69E9C10];
    v8 = v32;
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.health.repetition_count_test.reset_count";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

LABEL_38:
  *v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 8;
  if (sysctlbyname("kern.entropy.filter.rejected_sample_count", v32, &v23, 0, 0) < 0 || v23 != 8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.filter.rejected_sample_count";
    v13 = MEMORY[0x1E69E9C10];
LABEL_54:
    _os_log_error_impl(&dword_1887D2000, v13, OS_LOG_TYPE_ERROR, "failed to read sysctl %s", &v23, 0xCu);
    goto LABEL_52;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 8;
  if (sysctlbyname("kern.entropy.filter.total_sample_count", &v22, &v23, 0, 0) < 0 || v23 != 8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = "kern.entropy.filter.total_sample_count";
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_54;
  }

  v9 = __clz(v22);
  if (v9)
  {
    v10 = 1 << -v9;
  }

  else
  {
    v10 = -1;
  }

  if ((v22 & (v22 - 1)) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v22;
  }

  *(&v23 + 1) = 3221225472;
  v12 = v22;
  v22 = v11;
  *&v23 = MEMORY[0x1E69E9820];
  v24 = __SecCoreAnalyticsSendKernEntropyFilterAnalytics_block_invoke;
  v25 = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v26 = *v32 / v12;
  v27 = v11;
  [SecCoreAnalytics sendEventLazy:@"com.apple.kern.entropy.filter" builder:&v23];
LABEL_52:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sysctl_read(void *a1)
{
  v3 = 16;
  LODWORD(result) = sysctlbyname("kern.boottime", a1, &v3, 0, 0);
  if (v3 == 16 || result < 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id __SecCoreAnalyticsSendKernEntropyHealthAnalytics_block_invoke(unsigned int *a1)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v13[0] = @"uptime";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:a1[8]];
  v14[0] = v2;
  v13[1] = @"startup_done";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1[9]];
  v14[1] = v3;
  v13[2] = @"adaptive_proportion_failure_count";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[10]];
  v14[2] = v4;
  v13[3] = @"adaptive_proportion_max_observation_count";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[11]];
  v14[3] = v5;
  v13[4] = @"adaptive_proportion_reset_count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[12]];
  v14[4] = v6;
  v13[5] = @"repetition_failure_count";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[13]];
  v14[5] = v7;
  v13[6] = @"repetition_max_observation_count";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[14]];
  v14[6] = v8;
  v13[7] = @"repetition_reset_count";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[15]];
  v14[7] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __SecCoreAnalyticsSendKernEntropyFilterAnalytics_block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"rejection_rate";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v7[1] = @"total_sample_count";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void SecCoreAnalyticsSendLegacyKeychainUIEvent(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = [SecCoreAnalytics appNameFromPath:v3];

  v5 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"unknown";
  }

  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SecCoreAnalyticsSendLegacyKeychainUIEvent_block_invoke;
    v9[3] = &unk_1E70D6B90;
    v10 = v7;
    v11 = v6;
    [SecCoreAnalytics sendEventLazy:@"com.apple.security.LegacyAPICounts" builder:v9];

    v8 = v10;
  }

  else
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Logging keychain UI event failed: couldn't turn dialog type c_str into NSString", buf, 2u);
    }
  }
}

id __SecCoreAnalyticsSendLegacyKeychainUIEvent_block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"app";
  v5[1] = @"api";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_18885C190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL process_matches_target(_BOOL8 __s)
{
  if (__s)
  {
    v1 = __s;
    if (get_running_process_onceToken != -1)
    {
      dispatch_once(&get_running_process_onceToken, &__block_literal_global_62);
    }

    if (get_running_process_processName)
    {
      v2 = strlen(v1);
      return strncmp(get_running_process_processName, v1, v2) == 0;
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

uint64_t *__get_running_process_block_invoke()
{
  result = _CFGetProgname();
  get_running_process_processName = *result;
  return result;
}

id sec_protocol_configuration_copy_singleton()
{
  if (sec_protocol_configuration_copy_singleton_onceToken != -1)
  {
    dispatch_once(&sec_protocol_configuration_copy_singleton_onceToken, &__block_literal_global_3_5165);
  }

  v1 = sec_protocol_configuration_copy_singleton_singleton;

  return v1;
}

void __sec_protocol_configuration_copy_singleton_block_invoke()
{
  v2 = objc_alloc_init(SecConcrete_sec_protocol_configuration_builder);
  v0 = sec_protocol_configuration_create_with_builder(v2);
  v1 = sec_protocol_configuration_copy_singleton_singleton;
  sec_protocol_configuration_copy_singleton_singleton = v0;
}

NSObject *sec_protocol_configuration_copy_transformed_options(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    sec_protocol_options_access_handle(v2, &__block_literal_global_19);
  }

  sec_protocol_options_append_tls_ciphersuite_group(v3, tls_ciphersuite_group_ats);
  sec_protocol_configuration_copy_transformed_options_with_ats_minimums(v3);
  objc_claimAutoreleasedReturnValue();

  return v3;
}

BOOL sec_protocol_configuration_tls_required(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  if (!v1)
  {
LABEL_13:
    v5 = 1;
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(v1, "NSAllowsArbitraryLoadsForMedia");
  if (uint64 != 2)
  {
    goto LABEL_9;
  }

  if (client_is_mediaserverd_onceToken != -1)
  {
    dispatch_once(&client_is_mediaserverd_onceToken, &__block_literal_global_64);
  }

  if ((client_is_mediaserverd_is_mediaplaybackd & 1) == 0)
  {
LABEL_9:
    v4 = xpc_dictionary_get_uint64(v2, "NSAllowsArbitraryLoadsInWebContent");
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    if (client_is_WebKit_onceToken != -1)
    {
      dispatch_once(&client_is_WebKit_onceToken, &__block_literal_global_5162);
    }

    if ((client_is_WebKit_is_WebKit & 1) == 0)
    {
LABEL_12:
      if (!xpc_dictionary_get_uint64(v2, "NSAllowsLocalNetworking") && !(v4 | uint64))
      {
        v5 = xpc_dictionary_get_uint64(v2, "NSAllowsArbitraryLoads") != 2;
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v5 = 0;
LABEL_14:

  return v5;
}