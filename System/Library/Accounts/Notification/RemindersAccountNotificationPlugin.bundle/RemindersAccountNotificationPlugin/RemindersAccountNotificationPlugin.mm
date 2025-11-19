void sub_29C906F50(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDC64B8] accountPlugin];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 accountType];
    v5 = [v4 identifier];
    v6 = *(a1 + 72);
    v31 = 138412802;
    v32 = v3;
    v33 = 2112;
    v34 = v5;
    v35 = 1024;
    v36 = v6;
    _os_log_impl(&dword_29C906000, v2, OS_LOG_TYPE_DEFAULT, "RemindersANP: Account changed %@ %@, type: %d", &v31, 0x1Cu);
  }

  v7 = (a1 + 32);
  v8 = [*(a1 + 32) dirtyProperties];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [MEMORY[0x29EDC64B8] accountPlugin];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_29C9078F8();
    }

    v11 = [*v7 dirtyProperties];
    v12 = [v11 containsObject:*MEMORY[0x29EDB8368]];

    if (v12)
    {
      v13 = [MEMORY[0x29EDC64B8] accountPlugin];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_29C9079A0(a1 + 32);
      }
    }
  }

  v14 = [*v7 dirtyAccountProperties];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [MEMORY[0x29EDC64B8] accountPlugin];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_29C907A58();
    }
  }

  v17 = [*v7 dirtyDataclassProperties];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [MEMORY[0x29EDC64B8] accountPlugin];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_29C907B00();
    }
  }

  v20 = *MEMORY[0x29EDB84B0];
  v21 = [*(a1 + 40) isEnabledForDataclass:*MEMORY[0x29EDB84B0]];
  v22 = *(a1 + 72);
  if (v22 == 3)
  {
    if (v21)
    {
      [*(a1 + 48) deleteAccountForACAccount:*(a1 + 40)];
    }
  }

  else if (v22 == 2)
  {
    v23 = [*v7 dirtyProperties];
    v24 = [v23 containsObject:*MEMORY[0x29EDB8368]];

    if (v24)
    {
      v25 = [*(a1 + 32) enabledDataclasses];
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = *(a1 + 64);
      }

      v27 = [v26 enabledDataclasses];
      v28 = [v25 mutableCopy];
      [v28 minusSet:v27];
      if ([v28 containsObject:v20])
      {
        [*(a1 + 48) updateAccountForACAccount:*(a1 + 40)];
      }

      else
      {
        v29 = [v27 mutableCopy];
        [v29 minusSet:v25];
        if ([v29 containsObject:v20])
        {
          [*(a1 + 48) deleteAccountForACAccount:*(a1 + 40)];
        }
      }
    }
  }

  else if (v22 == 1 && v21)
  {
    [*(a1 + 48) updateAccountForACAccount:*(a1 + 40)];
  }

  v30 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C9072F8()
{
  qword_2A1A11EA8 = [MEMORY[0x29EDB8E50] setWithObjects:{*MEMORY[0x29EDB81C8], *MEMORY[0x29EDB81E8], *MEMORY[0x29EDB82C0], *MEMORY[0x29EDB8210], *MEMORY[0x29EDB8240], 0}];

  return MEMORY[0x2A1C71028]();
}

void sub_29C9075C0(uint64_t a1, int a2, int a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x29EDC64B8] accountPlugin];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109634;
      v11 = a2;
      v12 = 1024;
      v13 = a3;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_29C906000, v7, OS_LOG_TYPE_ERROR, "Failed to update account: didAddAccount: %d, didChangeAccount: %d, error: %@", &v10, 0x18u);
    }
  }

  else
  {
    v8 = [MEMORY[0x29EDC64B8] accountPlugin];
    v7 = v8;
    if ((a2 & 1) != 0 || a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 67109376;
        v11 = a2;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&dword_29C906000, v7, OS_LOG_TYPE_INFO, "Successfully updated account: didAddAccount: %d, didChangeAccount: %d", &v10, 0xEu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_29C907CEC(v7);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29C9077FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x29EDC64B8] accountPlugin];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29C907D30(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C906000, v5, OS_LOG_TYPE_INFO, "Successfully deleted account", v6, 2u);
  }
}

void sub_29C9078F8()
{
  sub_29C9078EC();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C9078E0(v2) identifier];
  v4 = [*v0 dirtyProperties];
  sub_29C9078B8();
  sub_29C9078D0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C9079A0(uint64_t a1)
{
  v1 = *MEMORY[0x29EDCA608];
  v2 = [sub_29C9078E0(a1) enabledDataclasses];
  [v2 containsObject:*MEMORY[0x29EDB84B0]];
  sub_29C9078D0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C907A58()
{
  sub_29C9078EC();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C9078E0(v2) identifier];
  v4 = [*v0 dirtyAccountProperties];
  sub_29C9078B8();
  sub_29C9078D0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C907B00()
{
  sub_29C9078EC();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C9078E0(v2) identifier];
  v4 = [*v0 dirtyDataclassProperties];
  sub_29C9078B8();
  sub_29C9078D0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C907BBC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29C906000, a2, OS_LOG_TYPE_DEBUG, "Not processing account with account type identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C907C34()
{
  sub_29C9078EC();
  v11 = *MEMORY[0x29EDCA608];
  v2 = [v1 displayAccount];
  v3 = [v0 displayAccount];
  v4 = [v3 accountProperties];
  sub_29C9078B8();
  sub_29C9078D0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C907D30(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C906000, a2, OS_LOG_TYPE_ERROR, "Failed to delete account: error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}