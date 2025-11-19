uint64_t Util_AllocRequirement(int a1, uint64_t a2, void *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_AllocRequirement");
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 320);
    goto LABEL_63;
  }

  if (a1 <= 999)
  {
    switch(a1)
    {
      case 1:
        __asm { BTI             j; jumptable 0000000000019DE0 case 1 }

        v10 = IOMallocTypeVarImpl();
        v22 = "ACMRequirement - ACMRequirementDataPasscodeValidated";
        v23 = v10;
        v24 = 346;
        goto LABEL_57;
      case 2:
        __asm { BTI             j; jumptable 0000000000019DE0 case 2 }

        v10 = IOMallocTypeVarImpl();
        v22 = "ACMRequirement - ACMRequirementDataPassphraseEntered";
        v23 = v10;
        v24 = 351;
        goto LABEL_57;
      case 3:
        __asm { BTI             j; jumptable 0000000000019DE0 case 3 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatched", v10, 172, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 356, "Util_AllocRequirement");
        v11 = 156;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 4:
        __asm { BTI             j; jumptable 0000000000019DE0 case 4 }

        if ((a2 - 11) > 0xFFFFFFFFFFFFFFF5)
        {
          v10 = IOMallocTypeVarImpl();
          v19 = "ACMRequirement - ACMRequirementDataOr";
          v20 = v10;
          v21 = 414;
          goto LABEL_36;
        }

        v25 = 411;
        goto LABEL_70;
      case 5:
        __asm { BTI             j; jumptable 0000000000019DE0 case 5 }

        if ((a2 - 11) <= 0xFFFFFFFFFFFFFFF5)
        {
          v25 = 403;
          goto LABEL_70;
        }

        v10 = IOMallocTypeVarImpl();
        v19 = "ACMRequirement - ACMRequirementDataAnd";
        v20 = v10;
        v21 = 406;
LABEL_36:
        acm_mem_alloc_info(v19, v20, 100, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", v21, "Util_AllocRequirement");
        v11 = 84;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 6:
      case 9:
      case 10:
      case 12:
      case 14:
      case 15:
      case 18:
      case 19:
      case 22:
      case 23:
      case 27:
      case 28:
        __asm { BTI             j; jumptable 0000000000019DE0 cases 6,9,10,12,14,15,18,19,22,23,27,28 }

        v10 = IOMallocTypeImpl();
        acm_mem_alloc_info("ACMRequirement", v10, 16, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 336, "Util_AllocRequirement");
        v11 = 0;
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_58;
      case 7:
        __asm { BTI             j; jumptable 0000000000019DE0 case 7 }

        if ((a2 - 11) <= 0xFFFFFFFFFFFFFFF5)
        {
          v25 = 397;
          goto LABEL_70;
        }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofN", v10, 104, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 399, "Util_AllocRequirement");
        v11 = 88;
        if (v10)
        {
          goto LABEL_7;
        }

        break;
      case 8:
        __asm { BTI             j; jumptable 0000000000019DE0 case 8 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAccessGroups", v10, 1040, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 386, "Util_AllocRequirement");
        v11 = 1024;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 11:
        __asm { BTI             j; jumptable 0000000000019DE0 case 11 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataPushButton", v10, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 341, "Util_AllocRequirement");
        v11 = 8;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 13:
        __asm { BTI             j; jumptable 0000000000019DE0 case 13 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", v10, 48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 371, "Util_AllocRequirement");
        v11 = 32;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 20:
        __asm { BTI             j; jumptable 0000000000019DE0 case 20 }

        v10 = IOMallocTypeVarImpl();
        v22 = "ACMRequirement - ACMRequirementDataSecureIntent";
        v23 = v10;
        v24 = 361;
        goto LABEL_57;
      case 21:
        __asm { BTI             j; jumptable 0000000000019DE0 case 21 }

        v10 = IOMallocTypeVarImpl();
        v22 = "ACMRequirement - ACMRequirementDataBiometryMatchAttempted";
        v23 = v10;
        v24 = 366;
        goto LABEL_57;
      case 24:
        __asm { BTI             j; jumptable 0000000000019DE0 case 24 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAP", v10, 1076, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 376, "Util_AllocRequirement");
        v11 = 1060;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 25:
        __asm { BTI             j; jumptable 0000000000019DE0 case 25 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKeyRef", v10, 59, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 381, "Util_AllocRequirement");
        v11 = 43;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 26:
        __asm { BTI             j; jumptable 0000000000019DE0 case 26 }

        v10 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMRequirement - ACMRequirementDataRatchet", v10, 44, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 392, "Util_AllocRequirement");
        v11 = 28;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      default:
        goto LABEL_62;
    }

    goto LABEL_58;
  }

  if (a1 > 1001)
  {
    switch(a1)
    {
      case 1002:
        v10 = IOMallocTypeVarImpl();
        v13 = "ACMRequirement - ACMRequirementDataPushButtonWithAttributes";
        v14 = v10;
        v15 = 432;
LABEL_60:
        acm_mem_alloc_info(v13, v14, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", v15, "Util_AllocRequirement");
        v11 = 16;
        if (!v10)
        {
          goto LABEL_58;
        }

LABEL_7:
        *v10 = a1;
        *(v10 + 1) = 0x100000001;
        v10[3] = v11;
        if ((a1 & 0xFFFFFFFE) == 4)
        {
          v12 = 4;
        }

        else if (a1 == 7)
        {
          v12 = 5;
        }

        else
        {
          if (a1 != 1000)
          {
LABEL_19:
            v16 = 0;
            *a3 = v10;
            v17 = 10;
            goto LABEL_20;
          }

          v12 = 13;
        }

        v10[v12] = a2;
        goto LABEL_19;
      case 1003:
        v10 = IOMallocTypeVarImpl();
        v22 = "ACMRequirement - ACMRequirementDataSecureStateWithAttributes";
        v23 = v10;
        v24 = 437;
LABEL_57:
        acm_mem_alloc_info(v22, v23, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", v24, "Util_AllocRequirement");
        v11 = 4;
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_7;
      case 1004:
        v10 = IOMallocTypeVarImpl();
        v13 = "ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes";
        v14 = v10;
        v15 = 442;
        goto LABEL_60;
    }

LABEL_62:
    __asm { BTI             j; jumptable 0000000000019DE0 default case, cases 16,17 }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 446);
LABEL_63:
    v16 = 4294967293;
    goto LABEL_64;
  }

  if (a1 == 1000)
  {
    if ((a2 - 11) <= 0xFFFFFFFFFFFFFFF5)
    {
      v25 = 420;
LABEL_70:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "subreqCount > 0 && subreqCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", v25);
      goto LABEL_63;
    }

    v10 = IOMallocTypeVarImpl();
    acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", v10, 136, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 422, "Util_AllocRequirement");
    v11 = 120;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = IOMallocTypeVarImpl();
    acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", v10, 184, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 427, "Util_AllocRequirement");
    v11 = 168;
    if (v10)
    {
      goto LABEL_7;
    }
  }

LABEL_58:
  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "req", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 450);
  v16 = 4294967292;
LABEL_64:
  v17 = 70;
LABEL_20:
  if (v17 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "Util_AllocRequirement", v16);
  }

  return v16;
}

uint64_t Util_CreateRequirement(int a1, uint64_t a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_CreateRequirement");
  }

  v6 = 0;
  v4 = Util_AllocRequirement(a1, a2, &v6);
  if (v4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v4, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 486);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: returning.\n", "ACM", "Util_CreateRequirement");
  }

  return v6;
}

uint64_t Util_DeallocRequirement(int *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_DeallocRequirement");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "req", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 497);
    goto LABEL_60;
  }

  v2 = *a1;
  if (*a1 > 6)
  {
    if (v2 == 7)
    {
      if (a1[5])
      {
        v6 = 0;
        do
        {
          Util_DeallocRequirement(*&a1[2 * v6++ + 6]);
        }

        while (v6 < a1[5]);
      }
    }

    else
    {
      if (v2 != 1000)
      {
        goto LABEL_25;
      }

      if (a1[13])
      {
        v4 = 0;
        do
        {
          Util_DeallocRequirement(*&a1[2 * v4++ + 14]);
        }

        while (v4 < a1[13]);
      }
    }
  }

  else if (v2 == 4)
  {
    if (a1[4])
    {
      v5 = 0;
      do
      {
        Util_DeallocRequirement(*&a1[2 * v5++ + 5]);
      }

      while (v5 < a1[4]);
    }
  }

  else
  {
    if (v2 != 5)
    {
      goto LABEL_25;
    }

    if (a1[4])
    {
      v3 = 0;
      do
      {
        Util_DeallocRequirement(*&a1[2 * v3++ + 5]);
      }

      while (v3 < a1[4]);
    }
  }

  v2 = *a1;
LABEL_25:
  if (v2 <= 999)
  {
    switch(v2)
    {
      case 1:
        __asm { BTI             j; jumptable 000000000001A80C case 1 }

        acm_explicit_bzero(a1, 0x14uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataPasscodeValidated", a1, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 553, "Util_DeallocRequirement");
        goto LABEL_54;
      case 2:
        __asm { BTI             j; jumptable 000000000001A80C case 2 }

        acm_explicit_bzero(a1, 0x14uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataPassphraseEntered", a1, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 557, "Util_DeallocRequirement");
        goto LABEL_54;
      case 3:
        __asm { BTI             j; jumptable 000000000001A80C case 3 }

        acm_explicit_bzero(a1, 0xACuLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataBiometryMatched", a1, 0xACuLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 561, "Util_DeallocRequirement");
        goto LABEL_54;
      case 4:
        __asm { BTI             j; jumptable 000000000001A80C case 4 }

        acm_explicit_bzero(a1, 0x64uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataOr", a1, 0x64uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 606, "Util_DeallocRequirement");
        goto LABEL_54;
      case 5:
        __asm { BTI             j; jumptable 000000000001A80C case 5 }

        acm_explicit_bzero(a1, 0x64uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataAnd", a1, 0x64uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 600, "Util_DeallocRequirement");
        goto LABEL_54;
      case 6:
      case 9:
      case 10:
      case 12:
      case 14:
      case 15:
      case 18:
      case 19:
      case 22:
      case 23:
      case 27:
      case 28:
        __asm { BTI             j; jumptable 000000000001A80C cases 6,9,10,12,14,15,18,19,22,23,27,28 }

        acm_mem_free_info("ACMRequirement", a1, 0x10uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 545, "Util_DeallocRequirement");
        IOFreeTypeImpl();
        goto LABEL_55;
      case 7:
        __asm { BTI             j; jumptable 000000000001A80C case 7 }

        acm_explicit_bzero(a1, 0x68uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataKofN", a1, 0x68uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 595, "Util_DeallocRequirement");
        goto LABEL_54;
      case 8:
        __asm { BTI             j; jumptable 000000000001A80C case 8 }

        acm_explicit_bzero(a1, 0x410uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataAccessGroups", a1, 0x410uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 585, "Util_DeallocRequirement");
        goto LABEL_54;
      case 11:
        __asm { BTI             j; jumptable 000000000001A80C case 11 }

        acm_explicit_bzero(a1, 0x18uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataPushButton", a1, 0x18uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 549, "Util_DeallocRequirement");
        goto LABEL_54;
      case 13:
        __asm { BTI             j; jumptable 000000000001A80C case 13 }

        acm_explicit_bzero(a1, 0x30uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", a1, 0x30uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 573, "Util_DeallocRequirement");
        goto LABEL_54;
      case 20:
        __asm { BTI             j; jumptable 000000000001A80C case 20 }

        acm_explicit_bzero(a1, 0x14uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataSecureIntent", a1, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 565, "Util_DeallocRequirement");
        goto LABEL_54;
      case 21:
        __asm { BTI             j; jumptable 000000000001A80C case 21 }

        acm_explicit_bzero(a1, 0x14uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataBiometryMatchAttempted", a1, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 569, "Util_DeallocRequirement");
        goto LABEL_54;
      case 24:
        __asm { BTI             j; jumptable 000000000001A80C case 24 }

        acm_explicit_bzero(a1, 0x434uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataAP", a1, 0x434uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 577, "Util_DeallocRequirement");
        goto LABEL_54;
      case 25:
        __asm { BTI             j; jumptable 000000000001A80C case 25 }

        acm_explicit_bzero(a1, 0x3BuLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataKeyRef", a1, 0x3BuLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 581, "Util_DeallocRequirement");
        goto LABEL_54;
      case 26:
        __asm { BTI             j; jumptable 000000000001A80C case 26 }

        acm_explicit_bzero(a1, 0x2CuLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataRatchet", a1, 0x2CuLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 590, "Util_DeallocRequirement");
        goto LABEL_54;
      default:
        goto LABEL_59;
    }
  }

  if (v2 <= 1001)
  {
    if (v2 == 1000)
    {
      acm_explicit_bzero(a1, 0x88uLL);
      acm_mem_free_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", a1, 0x88uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 612, "Util_DeallocRequirement");
    }

    else
    {
      acm_explicit_bzero(a1, 0xB8uLL);
      acm_mem_free_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", a1, 0xB8uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 616, "Util_DeallocRequirement");
    }
  }

  else
  {
    switch(v2)
    {
      case 1002:
        acm_explicit_bzero(a1, 0x20uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataPushButtonWithAttributes", a1, 0x20uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 620, "Util_DeallocRequirement");
        break;
      case 1003:
        acm_explicit_bzero(a1, 0x14uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataSecureStateWithAttributes", a1, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 624, "Util_DeallocRequirement");
        break;
      case 1004:
        acm_explicit_bzero(a1, 0x20uLL);
        acm_mem_free_info("ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes", a1, 0x20uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 628, "Util_DeallocRequirement");
        break;
      default:
LABEL_59:
        __asm { BTI             j; jumptable 000000000001A80C default case, cases 16,17 }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 632);
LABEL_60:
        v11 = 4294967293;
        v12 = 70;
        goto LABEL_56;
    }
  }

LABEL_54:
  IOFreeTypeVarImpl();
LABEL_55:
  v11 = 0;
  v12 = 10;
LABEL_56:
  if (v12 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocRequirement", v11);
  }

  return v11;
}

uint64_t ACMKernContextCreate(void *a1)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextCreate");
  }

  v2 = LibCall_ACMContextCreate(ACMKernelTransport, &transportContext, a1, 0, &_logLevel, 0);
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextCreate", v2);
  }

  return v3;
}

const void *ACMKernContextCreateWithExternalForm(_OWORD *a1, uint64_t a2)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextCreateWithExternalForm");
  }

  v4 = LibCall_ACMContextCreateWithExternalForm(ACMKernelTransport, &transportContext, a1, a2, &_logLevel, 0);
  v5 = v4;
  if (v4)
  {
    v6 = 30;
  }

  else
  {
    v6 = 70;
  }

  if (v6 >= _logLevel)
  {
    IOLog("%s: %s: returning, -> ctx = %p.\n", "ACMKernelLib", "ACMKernContextCreateWithExternalForm", v4);
  }

  return v5;
}

uint64_t ACMKernContextDelete(const void *a1, int a2)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextDelete");
  }

  v4 = LibCall_ACMContextDelete(ACMKernelTransport, &transportContext, a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = 70;
  }

  else
  {
    v6 = 10;
  }

  if (v6 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextDelete", v4);
  }

  return v5;
}

uint64_t ACMKernContextAddCredentialWithScope(_OWORD *a1, _DWORD *a2, int a3)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextAddCredentialWithScope");
  }

  v6 = LibCall_ACMContexAddCredentialWithScope(ACMKernelTransport, &transportContext, a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextAddCredentialWithScope", v6);
  }

  return v7;
}

uint64_t ACMKernGlobalContextAddCredential(_DWORD *a1)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernGlobalContextAddCredential");
  }

  v6 = 0;
  if (a1)
  {
    v2 = ACMKernContextCreate(&v6);
    if (v2)
    {
      v3 = v2;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v2, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 96);
    }

    else
    {
      v3 = ACMKernContextAddCredentialWithScope(v6, a1, 2);
    }

    if (v6)
    {
      ACMKernContextDelete(v6, 1);
    }

    if (v3)
    {
      v4 = 70;
    }

    else
    {
      v4 = 10;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 93);
    v4 = 70;
    v3 = 4294967293;
  }

  if (v4 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernGlobalContextAddCredential", v3);
  }

  return v3;
}

uint64_t ACMKernContextRemoveCredentialsByTypeAndScope(_OWORD *a1, int a2, int a3)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextRemoveCredentialsByTypeAndScope");
  }

  v6 = LibCall_ACMContexRemoveCredentialsByTypeAndScope(ACMKernelTransport, &transportContext, a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextRemoveCredentialsByTypeAndScope", v6);
  }

  return v7;
}

uint64_t ACMKernGlobalContextRemoveCredentialsByType(int a1)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernGlobalContextRemoveCredentialsByType");
  }

  v6 = 0;
  v2 = ACMKernContextCreate(&v6);
  if (v2)
  {
    v3 = v2;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v2, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 132);
  }

  else
  {
    v3 = ACMKernContextRemoveCredentialsByTypeAndScope(v6, a1, 2);
  }

  if (v6)
  {
    ACMKernContextDelete(v6, 1);
  }

  if (v3)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernGlobalContextRemoveCredentialsByType", v3);
  }

  return v3;
}

uint64_t ACMKernContextVerifyPolicyAndCopyRequirementEx(_OWORD *a1, char *__s1, _DWORD *a3, unsigned int a4, uint64_t a5, BOOL *a6, int **a7)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextVerifyPolicyAndCopyRequirementEx");
  }

  v14 = LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(ACMKernelTransport, &transportContext, a1, __s1, 0, a3, a4, a5, a6, a7, 0);
  v15 = v14;
  if (v14)
  {
    v16 = 70;
  }

  else
  {
    v16 = 10;
  }

  if (v16 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextVerifyPolicyAndCopyRequirementEx", v14);
  }

  return v15;
}

uint64_t ACMKernGlobalContextVerifyPolicyAndCopyRequirementEx(char *a1, _BOOL8 a2, _DWORD *a3, unsigned int a4, BOOL *a5, int **a6)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernGlobalContextVerifyPolicyAndCopyRequirementEx");
  }

  *v17 = 0;
  v12 = ACMKernContextCreate(v17);
  if (v12)
  {
    v16 = 170;
  }

  else
  {
    v13 = LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(ACMKernelTransport, &transportContext, *v17, a1, a2, a3, a4, 0xFFFFFFFFLL, a5, a6, 0);
    if (!v13)
    {
      goto LABEL_5;
    }

    v16 = 173;
    v12 = v13;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v12, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", v16);
LABEL_5:
  if (*v17)
  {
    ACMKernContextDelete(*v17, 1);
  }

  if (v12)
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (v14 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernGlobalContextVerifyPolicyAndCopyRequirementEx", v12);
  }

  return v12;
}

void ACMKernRequirementDelete(int *a1)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernRequirementDelete");
  }

  v2 = LibCall_ACMRequirementDelete(ACMKernelTransport, a1);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernRequirementDelete", v2);
  }
}

uint64_t ACMKernCredentialCreate(int a1, void *a2)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernCredentialCreate");
  }

  v4 = LibCall_ACMCredentialCreate(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = 70;
  }

  else
  {
    v6 = 10;
  }

  if (v6 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernCredentialCreate", v4);
  }

  return v5;
}

void ACMKernCredentialDelete(_DWORD *a1)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernCredentialDelete");
  }

  LibCall_ACMCredentialDelete(a1);
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: returning.\n", "ACMKernelLib", "ACMKernCredentialDelete");
  }
}

uint64_t ACMKernDoubleClickNotify()
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernDoubleClickNotify");
  }

  v0 = LibCall_ACMKernDoubleClickNotify(ACMKernelTransport, &transportContext);
  v1 = v0;
  if (v0)
  {
    v2 = 70;
  }

  else
  {
    v2 = 10;
  }

  if (v2 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernDoubleClickNotify", v0);
  }

  return v1;
}

uint64_t ACMKernPingOnDoubleClick()
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernPingOnDoubleClick");
  }

  v0 = LibCall_ACMPing(ACMKernelTransport, &transportContext, 47);
  v1 = v0;
  if (v0)
  {
    v2 = 70;
  }

  else
  {
    v2 = 10;
  }

  if (v2 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernPingOnDoubleClick", v0);
  }

  return v1;
}

uint64_t ACMKernControl(int a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernControl");
  }

  LibCall_ACMKernelControl(ACMKernelTransport, &transportContext, a1, a2, a3, a4, a5);
  v11 = v10;
  if (v10)
  {
    v12 = 70;
  }

  else
  {
    v12 = 10;
  }

  if (v12 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld, code=%u.\n", "ACMKernelLib", "ACMKernControl", v10, a1);
  }

  return v11;
}

uint64_t ACMKernSetEnvironmentVariable(int a1, const void *a2, size_t a3)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernSetEnvironmentVariable");
  }

  v6 = LibCall_ACMSetEnvironmentVariable(ACMKernelTransport, &transportContext, a1, 0, 0, 0, a2, a3);
  v7 = v6;
  if (v6)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld, var=%u.\n", "ACMKernelLib", "ACMKernSetEnvironmentVariable", v6, a1);
  }

  return v7;
}

uint64_t ACMKernGetEnvironmentVariable(int a1, uint64_t a2, uint64_t a3)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernGetEnvironmentVariable");
  }

  v6 = LibCall_ACMGetEnvironmentVariable(ACMKernelTransport, &transportContext, a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld, var=%u.\n", "ACMKernelLib", "ACMKernGetEnvironmentVariable", v6, a1);
  }

  return v7;
}

uint64_t ACMKernContextCredentialGetProperty(_OWORD *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextCredentialGetProperty");
  }

  v10 = LibCall_ACMContextCredentialGetProperty(ACMKernelTransport, &transportContext, a1, a2, a3, a4, a5);
  v11 = v10;
  if (v10)
  {
    v12 = 70;
  }

  else
  {
    v12 = 10;
  }

  if (v12 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextCredentialGetProperty", v10);
  }

  return v11;
}

uint64_t ACMKernContextSetData(_OWORD *a1, int a2, const void *a3, size_t a4)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextSetData");
  }

  v8 = LibCall_ACMContextSetData(ACMKernelTransport, &transportContext, a1, a2, 0, 0, a3, a4);
  v9 = v8;
  if (v8)
  {
    v10 = 70;
  }

  else
  {
    v10 = 10;
  }

  if (v10 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextSetData", v8);
  }

  return v9;
}

uint64_t ACMKernContextGetData(_OWORD *a1, int a2, uint64_t a3, void *a4)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextGetData");
  }

  if (a4)
  {
    if (a3)
    {
      v8 = LibCall_ACMContextGetData(ACMKernelTransport, &transportContext, a1, a2, 0, 0, 0, a3, a4);
      v9 = v8;
      if (v8)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v8, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 342);
        v10 = 70;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = 0;
    v13 = 4;
    v11 = LibCall_ACMContextGetData(ACMKernelTransport, &transportContext, a1, a2, 1, 0, 0, &v14, &v13);
    v9 = v11;
    if (!v11)
    {
      *a4 = v14;
LABEL_9:
      v10 = 10;
      goto LABEL_10;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 338);
    v10 = 70;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outDataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelLib.cpp", 332);
    v10 = 70;
    v9 = 4294967293;
  }

LABEL_10:
  if (v10 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextGetData", v9);
  }

  return v9;
}

uint64_t ACMKernContextGetDataProperty(_OWORD *a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, void *a5)
{
  if (_logLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACMKernelLib", "ACMKernContextGetDataProperty");
  }

  Data = ACMKernContextGetData(a1, a2 | (a3 << 16), a4, a5);
  v11 = Data;
  if (Data)
  {
    v12 = 70;
  }

  else
  {
    v12 = 10;
  }

  if (v12 >= _logLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelLib", "ACMKernContextGetDataProperty", Data);
  }

  return v11;
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void __chkstk_darwin_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v10 -= 4096;
      v11 = *v10;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }

  v12 = v10[-v9];
}

void LDMShouldEnforceParity(const OSMetaClass *a1, _BYTE *a2)
{
  if (!PlatformSupportsXART())
  {
    v5 = 0;
    v8 = 0;
LABEL_6:
    LOBYTE(v6) = 1;
    IOLog("[AppleLockdownMode - %s] ProtectedData check passed\n");
    goto LABEL_12;
  }

  v4 = IORegistryEntry::fromPath("/chosen", gIODTPlane, 0, 0, 0);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = (v4->copyProperty_4)(v4, "protected-data-access");
  v7 = OSMetaClassBase::safeMetaCast(v6, a1);
  if (!v7)
  {
    if (!v6)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    (v6->release_0)(v6);
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v8 = v7;
  if ((v7->__vftable[1].getMetaClass)(v7) == 4 && *(v8->__vftable[2].~OSMetaClassBase_0)(v8))
  {
    goto LABEL_6;
  }

  LOBYTE(v6) = 0;
LABEL_11:
  IOLog("[AppleLockdownMode - %s] ProtectedData check failed\n");
LABEL_12:
  if (v8)
  {
    (v8->release_0)(v8);
  }

  if (v5)
  {
    (v5->release_0)(v5);
  }

  *a2 = v6;
}

uint64_t LDMShouldEnforceParity(uint64_t a1)
{
  IOLog("[AppleLockdownMode - %s] MobileObliteration check failed\n", "LDMShouldEnforceParity");
  v2 = *(*a1 + 40);

  return v2(a1);
}

{
  IOLog("[AppleLockdownMode - %s] SEP check failed\n", "LDMShouldEnforceParity");
  v2 = *(*a1 + 40);

  return v2(a1);
}