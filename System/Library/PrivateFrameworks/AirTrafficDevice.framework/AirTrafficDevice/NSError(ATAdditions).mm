@interface NSError(ATAdditions)
+ (id)_ATErrorFromAMSError:()ATAdditions;
+ (id)_ATErrorFromBLError:()ATAdditions;
+ (id)_ATErrorFromCoreMediaError:()ATAdditions;
+ (id)_ATErrorFromICError:()ATAdditions;
+ (id)_ATErrorFromICServerError:()ATAdditions;
+ (id)_ATErrorFromMBError:()ATAdditions;
+ (id)at_ATErrorFromError:()ATAdditions;
@end

@implementation NSError(ATAdditions)

+ (id)_ATErrorFromCoreMediaError:()ATAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 code] == -17760)
  {
    v4 = 8;
  }

  else
  {
    v4 = 27;
  }

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"ATError" code:v4 userInfo:v6];

  return v7;
}

+ (id)_ATErrorFromMBError:()ATAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  code = [v3 code];
  if (code > 203)
  {
    if (code <= 299)
    {
      if (code <= 209)
      {
        if ((code - 204) >= 2)
        {
          if (code != 207)
          {
            if (code == 208)
            {
              v5 = 20;
LABEL_45:
              v6 = MEMORY[0x277CCA9B8];
              v10 = *MEMORY[0x277CCA7E8];
              v11[0] = v3;
              v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
              v8 = [v6 errorWithDomain:@"ATError" code:v5 userInfo:v7];

              goto LABEL_46;
            }

LABEL_53:
            v5 = 0;
            goto LABEL_45;
          }

LABEL_17:
          v5 = 4;
          goto LABEL_45;
        }

LABEL_44:
        v5 = 10;
        goto LABEL_45;
      }

      if (code == 210)
      {
        goto LABEL_44;
      }

      if (code == 219)
      {
        v5 = 31;
        goto LABEL_45;
      }

      if (code != 220)
      {
        goto LABEL_53;
      }

LABEL_43:
      v5 = 8;
      goto LABEL_45;
    }

    if (code > 303)
    {
      if (code > 305)
      {
        if (code == 306)
        {
          goto LABEL_44;
        }

        if (code != 308)
        {
          goto LABEL_53;
        }
      }

      else if (code != 304)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

    if (code == 300 || code == 302)
    {
      goto LABEL_43;
    }

    if (code != 303)
    {
      goto LABEL_53;
    }

LABEL_40:
    v5 = 14;
    goto LABEL_45;
  }

  if (code > 17)
  {
    if (code <= 22)
    {
      if ((code - 18) >= 3)
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    if (code > 105)
    {
      if (code != 106)
      {
        if (code == 202)
        {
          v5 = 2;
          goto LABEL_45;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (code == 23)
      {
        v5 = 24;
        goto LABEL_45;
      }

      if (code != 105)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_40;
  }

  if (code > 12)
  {
    if (code != 13)
    {
      if (code == 15)
      {
        v5 = 7;
        goto LABEL_45;
      }

      if (code == 17)
      {
        v5 = 25;
        goto LABEL_45;
      }

      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (code)
  {
    if (code != 3)
    {
      if (code != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v8 = 0;
LABEL_46:

  return v8;
}

+ (id)_ATErrorFromAMSError:()ATAdditions
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  code = [v3 code];
  v5 = MEMORY[0x277CCA7E8];
  if (code > 99)
  {
    if (code == 101)
    {
      v7 = 4;
      goto LABEL_19;
    }

    if (code != 100)
    {
      v7 = 0;
      goto LABEL_19;
    }

    userInfo = [v3 userInfo];
    v9 = [userInfo objectForKey:*v5];

    if (v9)
    {
      domain = [v9 domain];
      if ([domain isEqualToString:*MEMORY[0x277CEE188]])
      {
        code2 = [v9 code];

        if (code2 == 6)
        {
          v7 = 2;
        }

        else
        {
          v7 = 4;
        }

        goto LABEL_18;
      }
    }

    v7 = 4;
LABEL_18:

    goto LABEL_19;
  }

  v6 = 2;
  if (code != 6)
  {
    v6 = 0;
  }

  if (code == 1)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6;
  }

LABEL_19:
  v12 = MEMORY[0x277CCA9B8];
  v16 = *v5;
  v17[0] = v3;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v12 errorWithDomain:@"ATError" code:v7 userInfo:v13];

  return v14;
}

+ (id)_ATErrorFromBLError:()ATAdditions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  code = [v3 code];
  v5 = 14;
  v6 = 2;
  if (code != 16)
  {
    v6 = 0;
  }

  if (code != 103)
  {
    v5 = v6;
  }

  if (code == 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA7E8];
  v13[0] = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v8 errorWithDomain:@"ATError" code:v7 userInfo:v9];

  return v10;
}

+ (id)_ATErrorFromICServerError:()ATAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  code = [v3 code];
  v5 = 0;
  if (code <= 2033)
  {
    if ((code - 1003) >= 2 && code != 2002)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = 4;
    goto LABEL_8;
  }

  if (code == 2070 || code == 2034)
  {
    goto LABEL_7;
  }

LABEL_8:
  v6 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA7E8];
  v11[0] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"ATError" code:v5 userInfo:v7];

  return v8;
}

+ (id)_ATErrorFromICError:()ATAdditions
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  code = [v4 code];
  v6 = MEMORY[0x277CCA7E8];
  if (code <= -7102)
  {
    if (code > -7403)
    {
      v18 = 3;
      if (code != -7104)
      {
        v18 = 0;
      }

      if (code == -7402)
      {
        code2 = 4;
      }

      else
      {
        code2 = v18;
      }
    }

    else if (code == -8302)
    {
      code2 = 27;
    }

    else if (code == -7403)
    {
      userInfo = [v4 userInfo];
      v14 = [userInfo objectForKey:*v6];

      if (v14 && ([v14 domain], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x277CEE188]), v15, v16))
      {
        v17 = [self _ATErrorFromAMSError:v14];
        code2 = [v17 code];
      }

      else
      {
        code2 = 4;
      }
    }

    else
    {
      code2 = 0;
    }
  }

  else
  {
    v7 = 7;
    if (code != -7003)
    {
      v7 = 0;
    }

    if (code == -7004)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if (code == -7006)
    {
      v9 = 20;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8;
    if (code != -7100)
    {
      v10 = 0;
    }

    if (code == -7101)
    {
      v11 = 23;
    }

    else
    {
      v11 = v10;
    }

    if (code <= -7007)
    {
      code2 = v11;
    }

    else
    {
      code2 = v9;
    }
  }

  v19 = MEMORY[0x277CCA9B8];
  v23 = *v6;
  v24[0] = v4;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v21 = [v19 errorWithDomain:@"ATError" code:code2 userInfo:v20];

  return v21;
}

+ (id)at_ATErrorFromError:()ATAdditions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  domain = [v4 domain];
  v6 = domain;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v4;
  if ([domain isEqualToString:@"ATError"])
  {
    goto LABEL_9;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D7F900]])
  {
    v8 = [self _ATErrorFromICError:v4];
LABEL_8:
    v7 = v8;

    goto LABEL_9;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D7F9C0]])
  {
    v8 = [self _ATErrorFromICServerError:v4];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D7F930]])
  {
    v10 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA7E8];
    v25 = v4;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v7 = [v10 errorWithDomain:@"ATError" code:27 userInfo:v11];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v12 = getBLErrorDomainSymbolLoc_ptr;
    v21 = getBLErrorDomainSymbolLoc_ptr;
    if (!getBLErrorDomainSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v27 = __getBLErrorDomainSymbolLoc_block_invoke;
      v28 = &unk_2784E5B40;
      v29 = &v18;
      __getBLErrorDomainSymbolLoc_block_invoke(&buf);
      v12 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBLErrorDomain(void)"];
      [currentHandler handleFailureInFunction:v17 file:@"NSError+ATAdditions.m" lineNumber:19 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if ([v6 isEqualToString:*v12])
    {
      v7 = [self _ATErrorFromBLError:v4];
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CEE188]])
    {
      v7 = [self _ATErrorFromAMSError:v4];
    }

    else if ([v6 isEqualToString:@"MBErrorDomain"])
    {
      v7 = [self _ATErrorFromMBError:v4];
    }

    else if ([v6 isEqualToString:@"CoreMediaErrorDomain"])
    {
      v7 = [self _ATErrorFromCoreMediaError:v4];
    }

    else
    {
      v13 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "Mapping error from unknown domain: %{public}@", &buf, 0xCu);
      }

      v14 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA7E8];
      v23 = v4;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v7 = [v14 errorWithDomain:@"ATError" code:0 userInfo:v15];
    }
  }

LABEL_9:

  return v7;
}

@end