void sub_29C89EF64(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != 3)
  {
    if (v2 == 1)
    {
      v16 = [*(a1 + 32) accountType];
      v3 = [v16 identifier];
      if ([v3 isEqualToString:*MEMORY[0x29EDB81C8]])
      {
        v4 = [*(a1 + 32) aa_isAccountClass:*MEMORY[0x29EDBE2C0]];

        if (!v4)
        {
          return;
        }

        if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v19 = 0;
        v5 = MEMORY[0x29EDCA988];
        v6 = "[BluetoothUserAccountPlugin] Primary Apple Account added";
        v7 = &v19;
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v9 = [*(a1 + 32) accountType];
    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:*MEMORY[0x29EDB8248]];

    if (!v11)
    {
      return;
    }

    v12 = [MEMORY[0x29EDBFB38] sharedInstance];
    v13 = [v12 securityLevelForAccount:*(a1 + 32)];
    v14 = [MEMORY[0x29EDBFB38] sharedInstance];
    v15 = [v14 securityLevelForAccount:*(a1 + 48)];

    if (v13 == v15)
    {
      return;
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      [*(a1 + 56) accountModified];
      return;
    }

    *buf = 0;
    v5 = MEMORY[0x29EDCA988];
    v6 = "[BluetoothUserAccountPlugin] IDMS account security level changed, signaling primaryAccountModified";
    v7 = buf;
LABEL_18:
    _os_log_impl(&dword_29C89E000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    goto LABEL_19;
  }

  v16 = [*(a1 + 40) accountType];
  v3 = [v16 identifier];
  if ([v3 isEqualToString:*MEMORY[0x29EDB81C8]])
  {
    v8 = [*(a1 + 40) aa_isAccountClass:*MEMORY[0x29EDBE2C0]];

    if (!v8)
    {
      return;
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v18 = 0;
    v5 = MEMORY[0x29EDCA988];
    v6 = "[BluetoothUserAccountPlugin] Primary Apple Account deleted";
    v7 = &v18;
    goto LABEL_18;
  }

LABEL_11:
}