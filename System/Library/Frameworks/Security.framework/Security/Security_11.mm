uint64_t SecCEPNameConstraints(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  v9 = v3;
  if (!DERParseSequence(a2 + 24, DERNumNameConstraintsItemSpecs, &DERNameConstraintsItemSpecs, &v8, 0x20uLL) && (!*(&v8 + 1) || !parseGeneralSubtrees(&v8, (a1 + 488))) && (!*(&v9 + 1) || !parseGeneralSubtrees(&v9, (a1 + 496))))
  {
    return 1;
  }

  v5 = secLogObjForScope("SecWarning");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    *v7 = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Invalid Name Constraints extension", v7, 2u);
    return 0;
  }

  return result;
}

CFDataRef parseGeneralSubtrees(unint64_t *a1, CFTypeRef *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = DERDecodeSeqContentInit(a1, v19);
  if (v3)
  {
    v9 = v3;
    goto LABEL_21;
  }

  memset(v18, 170, sizeof(v18));
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v6 = Mutable;
  for (i = 0x2000; ; --i)
  {
    v8 = DERDecodeSeqNext(v19, v18);
    if (v8 == 1)
    {
      goto LABEL_18;
    }

    v9 = v8;
    if (v8)
    {
      goto LABEL_23;
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v10;
    v17 = v10;
    *bytes = v10;
    if (v18[0] != 0x2000000000000010)
    {
LABEL_22:
      v9 = 0;
LABEL_23:
      CFRelease(v6);
      goto LABEL_21;
    }

    v11 = DERParseSequenceContent(&v18[1], DERNumGeneralSubtreeItemSpecs, &DERGeneralSubtreeItemSpecs, bytes, 0x30uLL);
    if (v11)
    {
      v9 = v11;
      goto LABEL_23;
    }

    if (*(&v16 + 1))
    {
      *buf = -1431655766;
      if (DERParseInteger(&v16, buf) || *buf)
      {
        goto LABEL_22;
      }
    }

    if (*(&v17 + 1) || (bytes[1] - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
    {
      goto LABEL_22;
    }

    v9 = CFDataCreate(v4, bytes[0], bytes[1]);
    if (!v9)
    {
      goto LABEL_23;
    }

    CFArrayAppendValue(v6, v9);
    CFRelease(v9);
    if (!i)
    {
      break;
    }
  }

  v12 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = 0x2000;
    _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Skipping subtrees after the first %d", buf, 8u);
  }

LABEL_18:
  if (*a2)
  {
    CFRelease(*a2);
  }

  v9 = 0;
  *a2 = v6;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

__CFString *copyHexDescription(const __CFAllocator *a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (v2 > 0x2AAAAAAAAAAAAAA9)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(a1, 3 * v2 - 1);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i)
      {
        CFStringAppendFormat(Mutable, 0, @" %02X", (*a2)[i]);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"%02X", **a2);
      }
    }
  }

  return Mutable;
}

__CFString *copyIntegerContentDescription(const __CFAllocator *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = *v6++;
      v5 = v7 | (v5 << 8);
      --v3;
    }

    while (v3);
    return CFStringCreateWithFormat(a1, 0, @"%llu", v5);
  }

  else
  {

    return copyHexDescription(a1, a2);
  }
}

CFStringRef copyBlobString(const __CFAllocator *a1, const __CFString *cf, const __CFString *a3, uint64_t a4, char a5)
{
  v7 = cf;
  if (a5)
  {
    v7 = SecFrameworkCopyLocalizedString(cf, @"Certificate");
    a3 = SecFrameworkCopyLocalizedString(a3, @"Certificate");
    v9 = SecFrameworkCopyLocalizedString(@"%@; %d %@; data = %@", @"Certificate");
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v9 = @"%@; %d %@; data = %@";
  }

  v10 = copyHexDescription(a1, a4);
  v11 = CFStringCreateWithFormat(a1, 0, v9, v7, *(a4 + 8), a3, v10);
  CFRelease(v10);
  CFRelease(v9);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

CFStringRef copyOidDescription(const __CFAllocator *a1, uint64_t a2, int a3)
{
  if (a2 && *(a2 + 8))
  {
    v6 = SecDERItemCopyOIDDecimalRepresentation(a1, a2);
    if (!a3)
    {
      return v6;
    }

    v7 = *(a2 + 8);
    if (v7 > 0x2AAAAAAAAAAAAAA5)
    {
      return v6;
    }

    Mutable = CFStringCreateMutable(a1, 3 * v7 + 5);
    CFStringAppendFormat(Mutable, 0, @"06 %02lX", *(a2 + 8));
    if (*(a2 + 8))
    {
      v9 = 0;
      do
      {
        CFStringAppendFormat(Mutable, 0, @" %02X", *(*a2 + v9++));
      }

      while (v9 < *(a2 + 8));
    }

    v10 = SecFrameworkCopyLocalizedString(Mutable, @"OID");
    if (v10)
    {
      v11 = v10;
      if (CFEqual(Mutable, v10))
      {
        v12 = v11;
        v11 = v6;
LABEL_18:
        CFRelease(v12);
        goto LABEL_19;
      }

      v12 = v6;
      if (v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v6;
    }

LABEL_19:
    CFRelease(Mutable);
    return v11;
  }

  if (!a3)
  {
    return @"<NULL>";
  }

  return SecFrameworkCopyLocalizedString(@"<NULL>", @"Certificate");
}

CFMutableArrayRef SecCertificateCopyRFC822Names(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 456);
  if (v3 && SecCertificateParseGeneralNames(v3 + 24, Mutable, appendRFC822NamesFromGeneralNames) || parseX501NameContent((a1 + 184), Mutable, appendRFC822NamesFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendRFC822NamesFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidEmailAddress);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a1, v9);
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

uint64_t appendRFC822NamesFromGeneralNames(__CFArray *a1, int a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (v3 < 0)
  {
    return 4294941021;
  }

  v5 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *a3, v3, 0x600u, 0);
  if (!v5)
  {
    return 4294941021;
  }

  v6 = v5;
  CFArrayAppendValue(a1, v5);
  CFRelease(v6);
  return 0;
}

SecCertificateRef SecCertificateCreateWithKeychainItem(const __CFAllocator *a1, const __CFData *a2, const void *a3)
{
  v4 = SecCertificateCreateWithData(a1, a2);
  if (v4)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    *(v4 + 77) = a3;
  }

  return v4;
}

uint64_t SecCertificateSetKeychainItem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = *(a1 + 640);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateSetKeychainItem_block_invoke;
  v4[3] = &__block_descriptor_tmp_70_9559;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

void __SecCertificateSetKeychainItem_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 616);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 616)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 616) = v1;
  }
}

void appendProperty(void *cf, void *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, char a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a6)
    {
      if (a4)
      {
        v10 = 0;
      }

      else
      {
        v10 = SecFrameworkCopyLocalizedString(a3, @"Certificate");
        a4 = v10;
      }
    }

    else
    {
      CFRetain(a3);
      v10 = a3;
      a4 = a3;
    }

    keys = @"type";
    v21 = @"label";
    v22 = @"localized label";
    v23 = @"value";
    values = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v13 = CFGetAllocator(cf);
    if (a5)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v12 = CFDictionaryCreate(v13, &keys, &values, v14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    keys = @"type";
    v21 = @"value";
    values = a2;
    v17 = a5;
    v11 = CFGetAllocator(cf);
    v12 = CFDictionaryCreate(v11, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  CFArrayAppendValue(cf, v12);
  CFRelease(v12);
  v15 = *MEMORY[0x1E69E9840];
}

CFDateRef SecCertificateCopyNotValidBeforeDate(CFDateRef result)
{
  if (result)
  {
    return CFDateCreate(0, *(result + 21));
  }

  return result;
}

CFDateRef SecCertificateCopyNotValidAfterDate(CFDateRef result)
{
  if (result)
  {
    return CFDateCreate(0, *(result + 22));
  }

  return result;
}

CFMutableArrayRef SecCertificateCopySummaryProperties(double *a1, double a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v6 = SecCertificateCopySubjectSummary(a1);
  if (v6)
  {
    v7 = v6;
    appendProperty(Mutable, @"title", 0, 0, v6, 1);
    CFRelease(v7);
  }

  v8 = a1[22];
  if (v8 >= a2)
  {
    v12 = a1[21];
    if (v12 <= a2)
    {
      v11 = @"success";
    }

    else
    {
      v11 = @"error";
    }

    if (v12 <= a2)
    {
      v10 = @"This certificate is valid";
    }

    else
    {
      v10 = @"This certificate is not yet valid";
    }

    if (v12 <= a2)
    {
      v9 = @"Expires";
    }

    else
    {
      v8 = v12;
      v9 = @"Valid from";
    }
  }

  else
  {
    v9 = @"Expired";
    v10 = @"This certificate has expired";
    v11 = @"error";
  }

  appendDateProperty(Mutable, v9, 1, v8);
  v13 = SecFrameworkCopyLocalizedString(v10, @"Certificate");
  appendProperty(Mutable, v11, 0, 0, v13, 1);
  CFRelease(v13);
  return Mutable;
}

void appendDateProperty(void *a1, const __CFString *a2, char a3, CFAbsoluteTime a4)
{
  v8 = CFGetAllocator(a1);
  v9 = CFDateCreate(v8, a4);
  appendProperty(a1, @"date", a2, 0, v9, a3);

  CFRelease(v9);
}

CFMutableArrayRef SecCertificateCopyLegacyProperties(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  PropertiesForX501NameContent = createPropertiesForX501NameContent(v2, (a1 + 184), 0);
  appendProperty(Mutable, @"section", @"Subject Name", 0, PropertiesForX501NameContent, 0);
  CFRelease(PropertiesForX501NameContent);
  v5 = createPropertiesForX501NameContent(v2, (a1 + 152), 0);
  appendProperty(Mutable, @"section", @"Issuer Name", 0, v5, 0);
  CFRelease(v5);
  v6 = CFStringCreateWithFormat(v2, 0, @"%d", *(a1 + 96) + 1);
  appendProperty(Mutable, @"string", @"Version", 0, v6, 0);
  CFRelease(v6);
  if (*(a1 + 112))
  {
    appendIntegerProperty(Mutable, @"Serial Number", a1 + 104, 0);
  }

  appendAlgorithmProperty(Mutable, @"Signature Algorithm", a1 + 120, 0);
  appendDateProperty(Mutable, @"Not Valid Before", 0, *(a1 + 168));
  appendDateProperty(Mutable, @"Not Valid After", 0, *(a1 + 176));
  if (*(a1 + 288))
  {
    appendDataProperty(Mutable, @"Subject Unique ID", 0, a1 + 280, 0);
  }

  if (*(a1 + 272))
  {
    appendDataProperty(Mutable, @"Issuer Unique ID", 0, a1 + 264, 0);
  }

  appendAlgorithmProperty(Mutable, @"Public Key Algorithm", a1 + 216, 0);
  appendDataProperty(Mutable, @"Public Key Data", 0, a1 + 248, 0);
  appendDataProperty(Mutable, @"Signature", 0, a1 + 80, 0);
  if (*(a1 + 504) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      appendExtension(Mutable, *(a1 + 512) + v7, 0);
      ++v8;
      v7 += 40;
    }

    while (v8 < *(a1 + 504));
  }

  appendFingerprintsProperty(Mutable, a1, 0);
  return Mutable;
}

__CFArray *createPropertiesForX501NameContent(const __CFAllocator *a1, unint64_t *a2, uint64_t a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent(a2, Mutable, appendRDNProperty, a3))
  {
    CFArrayRemoveAllValues(Mutable);
    appendRelabeledProperty(Mutable, @"X.501 Name", 0, a2, @"Invalid %@", a3);
  }

  return Mutable;
}

void appendIntegerProperty(void *a1, const __CFString *a2, uint64_t a3, char a4)
{
  v8 = CFGetAllocator(a1);
  v9 = copyIntegerContentDescription(v8, a3);
  appendProperty(a1, @"string", a2, 0, v9, a4);

  CFRelease(v9);
}

void appendAlgorithmProperty(void *a1, const __CFString *a2, uint64_t a3, int a4)
{
  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  appendOIDProperty(Mutable, @"Algorithm", 0, a3, a4);
  v10 = *(a3 + 24);
  if (v10)
  {
    if (v10 == 2 && (v11 = *(a3 + 16), *v11 == 5) && !v11[1])
    {
      v12 = SecFrameworkCopyLocalizedString(@"none", @"Certificate");
      appendProperty(Mutable, @"string", @"Parameters", 0, v12, a4);
      CFRelease(v12);
    }

    else
    {
      appendRelabeledProperty(Mutable, @"Parameters", 0, a3 + 16, @"Unparsed %@", a4);
    }
  }

  appendProperty(a1, @"section", a2, 0, Mutable, a4);

  CFRelease(Mutable);
}

void appendDataProperty(void *a1, const __CFString *a2, const __CFString *a3, uint64_t a4, char a5)
{
  if ((*(a4 + 8) & 0x8000000000000000) == 0)
  {
    v10 = CFGetAllocator(a1);
    v11 = CFDataCreate(v10, *a4, *(a4 + 8));
    appendProperty(a1, @"data", a2, a3, v11, a5);

    CFRelease(v11);
  }
}

void appendExtension(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  appendBoolProperty(Mutable, @"Critical", *(a2 + 16), a3);
  v8 = *(a2 + 8);
  if (v8 == 3)
  {
    v9 = *a2;
    if (!memcmp(*a2, &_oidSubjectKeyIdentifier, 2uLL))
    {
      v15 = v9[2];
      if (v15 > 0x1D)
      {
        if (v9[2] > 0x22u)
        {
          switch(v15)
          {
            case '#':
              appendAuthorityKeyIdentifier(Mutable, a2 + 24, a3);
              goto LABEL_77;
            case '$':
              appendPolicyConstraints(Mutable, a2 + 24, a3);
              goto LABEL_77;
            case '%':
              appendExtendedKeyUsage(Mutable, a2 + 24, a3);
              goto LABEL_77;
          }
        }

        else
        {
          switch(v15)
          {
            case 0x1Eu:
              appendNameConstraints(Mutable, a2 + 24, a3);
              goto LABEL_77;
            case 0x1Fu:
              appendCrlDistributionPoints(Mutable, a2 + 24, a3);
              goto LABEL_77;
            case 0x20u:
              appendCertificatePolicies(Mutable, a2 + 24, a3);
              goto LABEL_77;
          }
        }
      }

      else if (v9[2] > 0x10u)
      {
        if (v15 - 17 < 2)
        {
          appendGeneralNames(Mutable, a2 + 24, a3);
          goto LABEL_77;
        }

        if (v15 == 19)
        {
          appendBasicConstraints(Mutable, a2 + 24, a3);
          goto LABEL_77;
        }
      }

      else
      {
        switch(v15)
        {
          case 0xEu:
            appendSubjectKeyIdentifier(Mutable, a2 + 24, a3);
            goto LABEL_77;
          case 0xFu:
            v11 = appendKeyUsage_usageNames;
            v12 = a2 + 24;
            v13 = Mutable;
            v14 = 9;
            goto LABEL_7;
          case 0x10u:
            appendPrivateKeyUsagePeriod(Mutable, a2 + 24, a3);
            goto LABEL_77;
        }
      }

      goto LABEL_63;
    }
  }

  if (v8 != 8 || (v10 = *a2, memcmp(*a2, &_oidAuthorityInfoAccess, 7uLL)))
  {
    if (DEROidCompare(a2, &oidNetscapeCertType))
    {
      v11 = appendNetscapeCertType_certTypes;
      v12 = a2 + 24;
      v13 = Mutable;
      v14 = 8;
LABEL_7:
      appendBitStringNames(v13, v12, v11, v14, a3);
      goto LABEL_77;
    }

LABEL_63:
    v36[0] = 0xAAAAAAAAAAAAAAAALL;
    v38[0] = 0xAAAAAAAAAAAAAAAALL;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    if (DERDecodeSeqInit(a2 + 24, v36, v38) || v36[0] != 0x2000000000000010)
    {
      goto LABEL_75;
    }

    v27 = 0;
    memset(v35, 170, 24);
    while (1)
    {
      v28 = DERDecodeSeqNext(v38, v35);
      if (v28)
      {
        break;
      }

      if (*v35 <= 0x1CuLL && ((1 << v35[0]) & 0x1E7C1000) != 0)
      {
        v30 = CFGetAllocator(Mutable);
        v31 = copyDERThingContentDescription(v30, *v35, &v35[8], a3);
        if (!v31)
        {
          goto LABEL_75;
        }

        v32 = v31;
        appendProperty(Mutable, @"string", @"Data", 0, v31, a3);
        CFRelease(v32);
        v27 = 1;
      }
    }

    if (v28 != 1 || (v27 & 1) == 0)
    {
LABEL_75:
      v25 = @"Data";
      v26 = @"Unparsed %@";
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v16 = v10[7];
  if (v16 == 11)
  {
LABEL_17:
    appendInfoAccess(Mutable, a2 + 24, a3);
    goto LABEL_77;
  }

  if (v16 != 3)
  {
    if (v16 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_17;
  }

  if (!CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    goto LABEL_60;
  }

  memset(v37, 170, sizeof(v37));
  if (DERDecodeSeqInit(a2 + 24, &v37[2], v37) || v37[2] != 0x2000000000000010 || v37[0] == v37[1])
  {
    goto LABEL_60;
  }

  v17 = 0;
  memset(v36, 170, sizeof(v36));
  while (1)
  {
    v18 = DERDecodeSeqNext(v37, v36);
    if (v18)
    {
      break;
    }

    if (v36[0] != 0x2000000000000010)
    {
      goto LABEL_60;
    }

    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v35 = v19;
    *&v35[16] = v19;
    if (DERParseSequenceContent(&v36[1], 2u, &DERQCStatementItemSpecs, v35, 0x20uLL) || v17 == 1023)
    {
      goto LABEL_60;
    }

    if (DEROidCompare(&oidQCCompliance, v35))
    {
      appendBoolProperty(Mutable, @"Qualified Certificate", 1, a3);
    }

    else if (DEROidCompare(&oidQCType, v35))
    {
      memset(v39, 170, sizeof(v39));
      if (DERDecodeSeqInit(&v35[16], &v39[2], v39) || v39[2] != 0x2000000000000010)
      {
        goto LABEL_50;
      }

      memset(v38, 170, sizeof(v38));
      while (1)
      {
        v20 = DERDecodeSeqNext(v39, v38);
        if (v20)
        {
          break;
        }

        if (v38[0] != 6)
        {
          goto LABEL_50;
        }

        appendOIDProperty(Mutable, @"Qualified Certificate Type", 0, &v38[1], a3);
      }

      if (v20 != 1)
      {
LABEL_50:
        appendRelabeledProperty(Mutable, @"Qualified Certificate Type", 0, &v35[16], @"Invalid %@", a3);
      }
    }

    else
    {
      v21 = CFGetAllocator(Mutable);
      v22 = SecDERItemCopyOIDDecimalRepresentation(v21, v35);
      v23 = copyOidDescription(v21, v35, a3);
      v24 = copyDERThingDescription(v21, &v35[16], 0, a3);
      if (v24)
      {
        appendProperty(Mutable, @"string", v22, v23, v24, a3);
      }

      else
      {
        appendRelabeledProperty(Mutable, v22, v23, &v35[16], @"Unparsed %@", a3);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    ++v17;
  }

  if (v18 != 1)
  {
LABEL_60:
    v25 = @"Qualified Certificate Statements";
    v26 = @"Invalid %@";
LABEL_76:
    appendRelabeledProperty(Mutable, v25, 0, a2 + 24, v26, a3);
  }

LABEL_77:
  v33 = SecDERItemCopyOIDDecimalRepresentation(v6, a2);
  v34 = copyOidDescription(v6, a2, a3);
  appendProperty(a1, @"section", v33, v34, Mutable, a3);
  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void appendFingerprintsProperty(void *a1, void *a2, char a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  v8 = SecCertificateCopySHA256Digest(a2);
  if (v8)
  {
    v9 = v8;
    appendProperty(Mutable, @"data", @"SHA-256", 0, v8, a3);
    CFRelease(v9);
  }

  v10 = SecCertificateCopySHA1Digest(a2);
  if (v10)
  {
    v11 = v10;
    appendProperty(Mutable, @"data", @"SHA-1", 0, v10, a3);
    CFRelease(v11);
  }

  appendProperty(a1, @"section", @"Fingerprints", 0, Mutable, a3);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

__CFData *SecCertificateCopySHA1Digest(void *cf)
{
  if (!cf || !cf[2] || (cf[3] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[2];
  v4 = cf[3];

  return SecSHA1DigestCreate(v2, v3, v4);
}

void appendBoolProperty(void *cf, const __CFString *a2, int a3, int a4)
{
  v4 = a4;
  if (a3)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  if (a4)
  {
    v7 = SecFrameworkCopyLocalizedString(v7, @"Certificate");
  }

  appendProperty(cf, @"string", a2, 0, v7, v4);

  CFRelease(v7);
}

void appendSubjectKeyIdentifier(void *a1, uint64_t a2, char a3)
{
  memset(v6, 170, sizeof(v6));
  if (DERDecodeItem(a2, v6) || v6[0] != 4)
  {
    appendRelabeledProperty(a1, @"Subject Key Identifier", 0, a2, @"Invalid %@", a3);
  }

  else
  {
    appendDataProperty(a1, @"Key Identifier", 0, &v6[1], a3);
  }
}

void appendBitStringNames(void *a1, uint64_t a2, const __CFString **a3, unsigned __int16 a4, int a5)
{
  memset(v10, 170, sizeof(v10));
  if (DERDecodeItem(a2, v10) || v10[0] != 3)
  {
    appendRelabeledProperty(a1, @"Usage", 0, a2, @"Invalid %@", a5);
  }

  else
  {
    appendBitStringContentNames(a1, @"Usage", &v10[1], a3, a4, a5);
  }
}

void appendPrivateKeyUsagePeriod(void *a1, uint64_t a2, char a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v6;
  v8 = v6;
  if (DERParseSequence(a2, DERNumPrivateKeyUsagePeriodItemSpecs, &DERPrivateKeyUsagePeriodItemSpecs, &v7, 0x20uLL))
  {
    appendRelabeledProperty(a1, @"Private Key Usage Period", 0, a2, @"Invalid %@", a3);
  }

  else
  {
    if (*(&v7 + 1))
    {
      appendDateContentProperty(a1, @"Not Valid Before", &v7, a3);
    }

    if (*(&v8 + 1))
    {
      appendDateContentProperty(a1, @"Not Valid After", &v8, a3);
    }
  }
}

void appendGeneralNames(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v6, 170, sizeof(v6));
  if (DERDecodeItem(a2, v6) || v6[0] != 0x2000000000000010)
  {
    appendRelabeledProperty(a1, @"General Names", 0, a2, @"Invalid %@", a3);
  }

  else
  {
    appendGeneralNamesContent(a1, &v6[1], a3);
  }
}

void appendBasicConstraints(void *a1, uint64_t a2, int a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v6;
  v8 = v6;
  if (DERParseSequence(a2, DERNumBasicConstraintsItemSpecs, &DERBasicConstraintsItemSpecs, &v7, 0x20uLL))
  {
    appendRelabeledProperty(a1, @"Basic Constraints", 0, a2, @"Invalid %@", a3);
  }

  else
  {
    v9 = -86;
    if (DERParseBooleanWithDefault(&v7, 0, &v9))
    {
      appendRelabeledProperty(a1, @"Certificate Authority", 0, &v7, @"Invalid %@", a3);
    }

    else
    {
      appendBoolProperty(a1, @"Certificate Authority", v9, a3);
    }

    if (*(&v8 + 1))
    {
      appendIntegerProperty(a1, @"Path Length Constraint", &v8, a3);
    }
  }
}

void appendNameConstraints(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v7;
  v30 = v7;
  if (DERParseSequence(a2, DERNumNameConstraintsItemSpecs, &DERNameConstraintsItemSpecs, &v29, 0x20uLL))
  {
    goto LABEL_29;
  }

  if (*(&v29 + 1))
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    if (DERDecodeSeqContentInit(&v29, &v27))
    {
      goto LABEL_29;
    }

    memset(v26, 170, sizeof(v26));
    v8 = @"Permitted Subtree Maximum";
    while (1)
    {
      v9 = DERDecodeSeqNext(&v27, v26);
      if (v9)
      {
        break;
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v10;
      v25 = v10;
      v23 = v10;
      if (v26[0] != 0x2000000000000010 || DERParseSequenceContent(&v26[1], DERNumGeneralSubtreeItemSpecs, &DERGeneralSubtreeItemSpecs, &v23, 0x30uLL))
      {
        goto LABEL_29;
      }

      if (*(&v24 + 1))
      {
        appendIntegerProperty(a1, @"Permitted Subtree Minimum", &v24, a3);
      }

      if (*(&v25 + 1))
      {
        appendIntegerProperty(a1, v8, &v25, a3);
      }

      if (*(&v23 + 1))
      {
        v11 = v8;
        Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        appendProperty(a1, @"section", @"Permitted Subtree General Name", 0, Mutable, a3);
        appendGeneralNameProperty(Mutable, &v23, a3);
        v13 = Mutable;
        v8 = v11;
        CFRelease(v13);
      }
    }

    if (v9 != 1)
    {
      goto LABEL_29;
    }
  }

  if (*(&v30 + 1))
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    if (DERDecodeSeqContentInit(&v30, &v27))
    {
      goto LABEL_29;
    }

    memset(v26, 170, sizeof(v26));
    v14 = @"Excluded Subtree Maximum";
    v15 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v16 = DERDecodeSeqNext(&v27, v26);
      if (v16)
      {
        break;
      }

      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v17;
      v25 = v17;
      v23 = v17;
      if (v26[0] != 0x2000000000000010 || DERParseSequenceContent(&v26[1], DERNumGeneralSubtreeItemSpecs, &DERGeneralSubtreeItemSpecs, &v23, 0x30uLL))
      {
        goto LABEL_29;
      }

      if (*(&v24 + 1))
      {
        appendIntegerProperty(a1, @"Excluded Subtree Minimum", &v24, a3);
      }

      if (*(&v25 + 1))
      {
        appendIntegerProperty(a1, v14, &v25, a3);
      }

      if (*(&v23 + 1))
      {
        v18 = CFArrayCreateMutable(v6, 0, v15);
        v19 = v15;
        v20 = v14;
        v21 = v18;
        appendProperty(a1, @"section", @"Excluded Subtree General Name", 0, v18, a3);
        appendGeneralNameProperty(v21, &v23, a3);
        v22 = v21;
        v14 = v20;
        v15 = v19;
        CFRelease(v22);
      }
    }

    if (v16 != 1)
    {
LABEL_29:
      appendRelabeledProperty(a1, @"Name Constraints", 0, a2, @"Invalid %@", a3);
    }
  }
}

void appendCrlDistributionPoints(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  memset(v16, 170, sizeof(v16));
  if (DERDecodeSeqInit(a2, &v16[2], v16) || v16[2] != 0x2000000000000010)
  {
    goto LABEL_20;
  }

  memset(v15, 170, sizeof(v15));
  while (1)
  {
    v7 = DERDecodeSeqNext(v16, v15);
    if (v7)
    {
      break;
    }

    if (v15[0] != 0x2000000000000010)
    {
      goto LABEL_20;
    }

    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v8;
    v14 = v8;
    v12 = v8;
    if (DERParseSequenceContent(&v15[1], DERNumDistributionPointItemSpecs, &DERDistributionPointItemSpecs, &v12, 0x30uLL))
    {
      goto LABEL_20;
    }

    if (*(&v12 + 1))
    {
      memset(v11, 170, sizeof(v11));
      if (DERDecodeItem(&v12, v11))
      {
        goto LABEL_20;
      }

      if (v11[0] == 0xA000000000000001)
      {
        Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        if (parseRDNContent(&v13, Mutable, appendRDNProperty, a3))
        {
          CFArrayRemoveAllValues(Mutable);
          appendRelabeledProperty(Mutable, @"RDN", 0, &v13, @"Invalid %@", a3);
        }

        appendProperty(a1, @"section", @"Name Relative To CRL Issuer", 0, Mutable, a3);
        CFRelease(Mutable);
      }

      else
      {
        if (v11[0] != 0xA000000000000000)
        {
          goto LABEL_20;
        }

        appendGeneralNamesContent(a1, &v11[1], a3);
      }
    }

    if (*(&v13 + 1))
    {
      appendBitStringContentNames(a1, @"Reasons", &v13, appendCrlDistributionPoints_reasonNames, 9u, a3);
    }

    if (*(&v14 + 1))
    {
      v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      appendProperty(a1, @"section", @"CRL Issuer", 0, v10, a3);
      CFRelease(v10);
      appendGeneralNames(v10, &v14, a3);
    }
  }

  if (v7 != 1)
  {
LABEL_20:
    appendRelabeledProperty(a1, @"CRL Distribution Points", 0, a2, @"Invalid %@", a3);
  }
}

void appendCertificatePolicies(void *a1, uint64_t a2, int a3)
{
  alloc = CFGetAllocator(a1);
  memset(v47, 170, sizeof(v47));
  if (DERDecodeSeqInit(a2, &v47[2], v47) || v47[2] != 0x2000000000000010)
  {
LABEL_62:
    appendRelabeledProperty(a1, @"Certificate Policies", 0, a2, @"Invalid %@", a3);
    return;
  }

  v4 = @"Policy Identifier #%d";
  memset(v46, 170, sizeof(v46));
  v5 = 1;
LABEL_4:
  while (2)
  {
    v6 = DERDecodeSeqNext(v47, v46);
    if (!v6)
    {
      if (v46[0] != 0x2000000000000010)
      {
        goto LABEL_62;
      }

      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v7;
      v45 = v7;
      if (DERParseSequenceContent(&v46[1], DERNumPolicyInformationItemSpecs, &DERPolicyInformationItemSpecs, &v44, 0x20uLL))
      {
        goto LABEL_62;
      }

      v8 = CFStringCreateWithFormat(alloc, 0, v4, v5);
      if (!v8)
      {
        goto LABEL_62;
      }

      v9 = v8;
      v10 = v4;
      if (a3)
      {
        v10 = SecFrameworkCopyLocalizedString(v4, @"Certificate");
        if (!v10)
        {
          goto LABEL_61;
        }
      }

      v11 = v4;
      v12 = CFStringCreateWithFormat(alloc, 0, v10, v5);
      if (!v12)
      {
LABEL_60:
        CFRelease(v10);
LABEL_61:
        CFRelease(v9);
        goto LABEL_62;
      }

      v13 = v12;
      v5 = (v5 + 1);
      CFRelease(v10);
      appendOIDProperty(a1, v9, v13, &v44, a3);
      CFRelease(v9);
      CFRelease(v13);
      if (!*(&v45 + 1))
      {
        v4 = v11;
        continue;
      }

      v43[0] = 0xAAAAAAAAAAAAAAAALL;
      v43[1] = 0xAAAAAAAAAAAAAAAALL;
      if (DERDecodeSeqContentInit(&v45, v43))
      {
        goto LABEL_62;
      }

      v4 = v11;
      v14 = 1;
      memset(v42, 170, sizeof(v42));
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v15 = DERDecodeSeqNext(v43, v42);
              if (v15)
              {
                if (v15 != 1)
                {
                  goto LABEL_62;
                }

                goto LABEL_4;
              }

              *&v16 = 0xAAAAAAAAAAAAAAAALL;
              *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v40 = v16;
              v41 = v16;
              if (DERParseSequenceContent(&v42[1], DERNumPolicyQualifierInfoItemSpecs, &DERPolicyQualifierInfoItemSpecs, &v40, 0x20uLL))
              {
                goto LABEL_62;
              }

              memset(v39, 170, sizeof(v39));
              if (DERDecodeItem(&v41, v39))
              {
                goto LABEL_62;
              }

              v17 = CFStringCreateWithFormat(alloc, 0, @"Policy Qualifier #%d", v14);
              if (!v17)
              {
                goto LABEL_62;
              }

              v9 = v17;
              v10 = @"Policy Qualifier #%d";
              if (a3)
              {
                v10 = SecFrameworkCopyLocalizedString(@"Policy Qualifier #%d", @"Certificate");
                if (!v10)
                {
                  goto LABEL_61;
                }
              }

              v18 = CFStringCreateWithFormat(alloc, 0, v10, v14);
              if (!v18)
              {
                goto LABEL_60;
              }

              v19 = v18;
              v14 = (v14 + 1);
              CFRelease(v10);
              appendOIDProperty(a1, v9, v19, &v40, a3);
              CFRelease(v9);
              CFRelease(v19);
              if (!DEROidCompare(&oidQtCps, &v40))
              {
                break;
              }

              if (v39[0] != 22)
              {
                goto LABEL_62;
              }

              v4 = v11;
              appendURLContentProperty(a1, @"CPS URI", &v39[1], a3);
            }

            v4 = v11;
            if (DEROidCompare(&oidQtUNotice, &v40))
            {
              break;
            }

            appendRelabeledProperty(a1, @"Qualifier", 0, &v41, @"Unparsed %@", a3);
          }

          if (v39[0] != 0x2000000000000010)
          {
            goto LABEL_62;
          }

          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v37 = v20;
          v38 = v20;
          if (DERParseSequenceContent(&v39[1], DERNumUserNoticeItemSpecs, &DERUserNoticeItemSpecs, &v37, 0x20uLL))
          {
            goto LABEL_62;
          }

          if (*(&v37 + 1))
          {
            break;
          }

          if (*(&v38 + 1))
          {
            goto LABEL_53;
          }
        }

        v31 = a2;
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35 = v21;
        v36 = v21;
        if (DERParseSequenceContent(&v37, DERNumNoticeReferenceItemSpecs, &DERNoticeReferenceItemSpecs, &v35, 0x20uLL))
        {
          goto LABEL_62;
        }

        appendDERThingProperty(a1, @"Organization", 0, &v35, a3);
        v22 = CFGetAllocator(a1);
        v49[0] = 0xAAAAAAAAAAAAAAAALL;
        v49[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!DERDecodeSeqContentInit(&v36, v49))
        {
          v23 = @"%@, %@";
          memset(v48, 170, sizeof(v48));
          if (!a3 || (v23 = SecFrameworkCopyLocalizedString(@"%@, %@", @"Certificate")) != 0)
          {
            v24 = 0;
            while (1)
            {
              v25 = DERDecodeSeqNext(v49, v48);
              if (v25)
              {
                break;
              }

              if (v48[0] != 2 || (v26 = copyIntegerContentDescription(v22, &v48[1])) == 0)
              {
                CFRelease(v23);
                goto LABEL_49;
              }

              v27 = v26;
              if (v24)
              {
                v28 = CFStringCreateWithFormat(v22, 0, v23, v24, v26);
                CFRelease(v24);
                if (!v28)
                {
                  goto LABEL_54;
                }

                v24 = v28;
              }

              else
              {
                MutableCopy = CFStringCreateMutableCopy(v22, 0, v26);
                if (!MutableCopy)
                {
LABEL_54:
                  CFRelease(v23);
                  v24 = v27;
                  goto LABEL_50;
                }

                v24 = MutableCopy;
              }

              CFRelease(v27);
            }

            v30 = v25;
            CFRelease(v23);
            if (v30 == 1 && v24)
            {
              appendProperty(a1, @"string", @"Notice Numbers", 0, v24, a3);
              CFRelease(v24);
              goto LABEL_52;
            }

LABEL_49:
            if (!v24)
            {
              goto LABEL_51;
            }

LABEL_50:
            CFRelease(v24);
          }
        }

LABEL_51:
        appendRelabeledProperty(a1, @"Notice Numbers", 0, &v36, @"Invalid %@", a3);
LABEL_52:
        a2 = v31;
        v4 = v11;
        if (*(&v38 + 1))
        {
LABEL_53:
          appendDERThingProperty(a1, @"Explicit Text", 0, &v38, a3);
        }
      }
    }

    break;
  }

  if (v6 != 1)
  {
    goto LABEL_62;
  }
}

void appendAuthorityKeyIdentifier(void *a1, uint64_t a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v6;
  v9 = v6;
  v7 = v6;
  if (DERParseSequence(a2, DERNumAuthorityKeyIdentifierItemSpecs, &DERAuthorityKeyIdentifierItemSpecs, &v7, 0x30uLL))
  {
    goto LABEL_9;
  }

  if (*(&v7 + 1))
  {
    appendDataProperty(a1, @"Key Identifier", 0, &v7, a3);
  }

  if (*(&v8 + 1) | *(&v9 + 1))
  {
    if (*(&v8 + 1) && *(&v9 + 1))
    {
      appendGeneralNamesContent(a1, &v8, a3);
      appendIntegerProperty(a1, @"Authority Certificate Serial Number", &v9, a3);
      return;
    }

LABEL_9:
    appendRelabeledProperty(a1, @"Authority Key Identifier", 0, a2, @"Invalid %@", a3);
  }
}

void appendPolicyConstraints(void *a1, uint64_t a2, char a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v6;
  v8 = v6;
  if (DERParseSequence(a2, DERNumPolicyConstraintsItemSpecs, &DERPolicyConstraintsItemSpecs, &v7, 0x20uLL))
  {
    appendRelabeledProperty(a1, @"Policy Constraints", 0, a2, @"Invalid %@", a3);
  }

  else
  {
    if (*(&v7 + 1))
    {
      appendIntegerProperty(a1, @"Require Explicit Policy", &v7, a3);
    }

    if (*(&v8 + 1))
    {
      appendIntegerProperty(a1, @"Inhibit Policy Mapping", &v8, a3);
    }
  }
}

void appendExtendedKeyUsage(void *a1, uint64_t a2, int a3)
{
  memset(v8, 170, sizeof(v8));
  if (DERDecodeSeqInit(a2, &v8[2], v8) || v8[2] != 0x2000000000000010)
  {
    goto LABEL_8;
  }

  memset(v7, 170, sizeof(v7));
  while (1)
  {
    v6 = DERDecodeSeqNext(v8, v7);
    if (v6)
    {
      break;
    }

    if (v7[0] != 6)
    {
      goto LABEL_8;
    }

    appendOIDProperty(a1, @"Purpose", 0, &v7[1], a3);
  }

  if (v6 != 1)
  {
LABEL_8:
    appendRelabeledProperty(a1, @"Extended Key Usage", 0, a2, @"Invalid %@", a3);
  }
}

void appendInfoAccess(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v11, 170, sizeof(v11));
  if (DERDecodeSeqInit(a2, &v11[2], v11) || v11[2] != 0x2000000000000010)
  {
    goto LABEL_9;
  }

  memset(v10, 170, sizeof(v10));
  while (1)
  {
    v6 = DERDecodeSeqNext(v11, v10);
    if (v6)
    {
      break;
    }

    if (v10[0] != 0x2000000000000010)
    {
      goto LABEL_9;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v7;
    v9 = v7;
    if (DERParseSequenceContent(&v10[1], DERNumAccessDescriptionItemSpecs, &DERAccessDescriptionItemSpecs, &v8, 0x20uLL))
    {
      goto LABEL_9;
    }

    appendOIDProperty(a1, @"Access Method", 0, &v8, a3);
    appendGeneralNameProperty(a1, &v9, a3);
  }

  if (v6 != 1)
  {
LABEL_9:
    appendRelabeledProperty(a1, @"Authority Information Access", 0, a2, @"Invalid %@", a3);
  }
}

void appendOIDProperty(void *a1, const __CFString *a2, const __CFString *a3, uint64_t a4, int a5)
{
  v10 = CFGetAllocator(a1);
  v11 = copyOidDescription(v10, a4, a5);
  appendProperty(a1, @"string", a2, a3, v11, a5);

  CFRelease(v11);
}

void appendRelabeledProperty(void *a1, const __CFString *a2, const __CFString *a3, uint64_t a4, const __CFString *a5, char a6)
{
  v12 = CFGetAllocator(a1);
  v13 = CFStringCreateWithFormat(v12, 0, a5, a2);
  if (a6)
  {
    if (a3)
    {
      a2 = 0;
    }

    else
    {
      a2 = SecFrameworkCopyLocalizedString(a2, @"Certificate");
      a3 = a2;
    }

    a5 = SecFrameworkCopyLocalizedString(a5, @"Certificate");
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    a3 = a2;
  }

  v14 = CFGetAllocator(a1);
  v15 = CFStringCreateWithFormat(v14, 0, a5, a3);
  if (a2)
  {
    CFRelease(a2);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  appendDataProperty(a1, v13, v15, a4, a6);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void appendGeneralNameProperty(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v6, 170, sizeof(v6));
  if (DERDecodeItem(a2, v6) || (appendGeneralNameContentProperty(a1, *v6, &v6[2], a3) & 1) == 0)
  {
    appendRelabeledProperty(a1, @"General Name", 0, a2, @"Invalid %@", a3);
  }
}

uint64_t appendGeneralNameContentProperty(void *cf, int64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3;
  result = 0;
  if (a2 > 0x9FFFFFFFFFFFFFFFLL)
  {
    if (a2 > 0xA000000000000003)
    {
      if (a2 == 0xA000000000000004)
      {
        v17 = CFGetAllocator(cf);
        Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
        memset(v23, 170, 24);
        if (DERDecodeItem(v5, v23) || *v23 != 0x2000000000000010 || parseX501NameContent(&v23[8], Mutable, appendRDNProperty, a4))
        {
          CFArrayRemoveAllValues(Mutable);
          appendRelabeledProperty(Mutable, @"X.501 Name", 0, v5, @"Invalid %@", a4);
        }

        v18 = @"section";
        v19 = @"Directory Name";
        goto LABEL_37;
      }

      if (a2 != 0xA000000000000005)
      {
        if (a2 != 0xA000000000000006)
        {
          return result;
        }

        memset(v23, 170, 24);
        if (!DERDecodeItem(a3, v23) && *v23 == 22)
        {
          a3 = &v23[8];
          v8 = cf;
          goto LABEL_29;
        }

        v10 = @"URI";
LABEL_41:
        v22 = @"Invalid %@";
LABEL_44:
        appendRelabeledProperty(cf, v10, 0, v5, v22, a4);
        return 1;
      }

      v10 = @"EDI Party Name";
LABEL_43:
      v22 = @"Unparsed %@";
      goto LABEL_44;
    }

    if (a2 != 0xA000000000000000)
    {
      if (a2 != 0xA000000000000003)
      {
        return result;
      }

      v10 = @"X.400 Address";
      goto LABEL_43;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v23 = v11;
    *&v23[16] = v11;
    if (DERParseSequenceContent(a3, DERNumOtherNameItemSpecs, &DEROtherNameItemSpecs, v23, 0x20uLL))
    {
      v10 = @"Other Name";
      goto LABEL_41;
    }

    v12 = CFGetAllocator(cf);
    v13 = SecDERItemCopyOIDDecimalRepresentation(v12, v23);
    Mutable = copyOidDescription(v12, v23, a4);
    v15 = copyDERThingDescription(v12, &v23[16], 0, a4);
    if (v15)
    {
      v16 = v15;
      appendProperty(cf, @"string", v13, Mutable, v15, a4);
      CFRelease(v16);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    else
    {
      appendRelabeledProperty(cf, v13, Mutable, &v23[16], @"Unparsed %@", a4);
      if (!v13)
      {
LABEL_26:
        if (!Mutable)
        {
          return 1;
        }

        goto LABEL_38;
      }
    }

    CFRelease(v13);
    goto LABEL_26;
  }

  if (a2 <= 0x8000000000000005)
  {
    if (a2 == 0x8000000000000001)
    {
      v9 = @"Email Address";
    }

    else
    {
      if (a2 != 0x8000000000000002)
      {
        return result;
      }

      v9 = @"DNS Name";
    }

    appendStringContentProperty(cf, v9, a3, a4);
    return 1;
  }

  if (a2 != 0x8000000000000006)
  {
    if (a2 != 0x8000000000000007)
    {
      if (a2 != 0x8000000000000008)
      {
        return result;
      }

      appendOIDProperty(cf, @"Registered ID", 0, a3, a4);
      return 1;
    }

    v20 = CFGetAllocator(cf);
    v21 = copyIPAddressContentDescription(v20, v5);
    if (v21)
    {
      Mutable = v21;
      v18 = @"string";
      v19 = @"IP Address";
LABEL_37:
      appendProperty(cf, v18, v19, 0, Mutable, a4);
LABEL_38:
      CFRelease(Mutable);
      return 1;
    }

    v10 = @"IP Address";
    goto LABEL_43;
  }

  v8 = cf;
LABEL_29:
  appendURLContentProperty(v8, @"URI", a3, a4);
  return 1;
}

void appendStringContentProperty(void *cf, const __CFString *a2, uint64_t a3, char a4)
{
  if ((*(a3 + 8) & 0x8000000000000000) != 0 || (v8 = CFGetAllocator(cf), (v9 = CFStringCreateWithBytes(v8, *a3, *(a3 + 8), 0x600u, 0)) == 0))
  {

    appendRelabeledProperty(cf, a2, 0, a3, @"Invalid %@", a4);
  }

  else
  {
    v10 = v9;
    appendProperty(cf, @"string", a2, 0, v9, a4);

    CFRelease(v10);
  }
}

void appendURLContentProperty(void *cf, const __CFString *a2, uint64_t a3, char a4)
{
  if ((*(a3 + 8) & 0x8000000000000000) != 0 || (v8 = CFGetAllocator(cf), (v9 = CFURLCreateWithBytes(v8, *a3, *(a3 + 8), 0x600u, 0)) == 0))
  {

    appendRelabeledProperty(cf, a2, 0, a3, @"Invalid %@", a4);
  }

  else
  {
    v10 = v9;
    appendProperty(cf, @"url", a2, 0, v9, a4);

    CFRelease(v10);
  }
}

CFStringRef copyIPAddressContentDescription(const __CFAllocator *a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (v2 == 16)
  {
    return CFStringCreateWithFormat(a1, 0, @"%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X", **a2, (*a2)[1], (*a2)[2], (*a2)[3], (*a2)[4], (*a2)[5], (*a2)[6], (*a2)[7], (*a2)[8], (*a2)[9], (*a2)[10], (*a2)[11], (*a2)[12], (*a2)[13], (*a2)[14], (*a2)[15]);
  }

  if (v2 == 4)
  {
    return CFStringCreateWithFormat(a1, 0, @"%u.%u.%u.%u", **a2, (*a2)[1], (*a2)[2], (*a2)[3]);
  }

  return 0;
}

uint64_t appendRDNProperty(const __CFArray *cf, unsigned __int8 **a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  Value = cf;
  if (a4 >= 1)
  {
    v10 = CFArrayGetCount(cf) - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
    v12 = ValueAtIndex;
    if (a4 == 1)
    {
      v13 = CFGetAllocator(Value);
      Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, v12);
      CFArrayRemoveValueAtIndex(Value, v10);
      appendProperty(Value, @"section", 0, 0, Mutable, a5);
      if (Mutable)
      {
        CFRelease(Mutable);
        Value = Mutable;
      }

      else
      {
        Value = 0;
      }
    }

    else
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"value");
    }
  }

  v15 = CFGetAllocator(Value);
  v16 = SecDERItemCopyOIDDecimalRepresentation(v15, a2);
  v17 = CFGetAllocator(Value);
  v18 = copyOidDescription(v17, a2, a5);
  appendDERThingProperty(Value, v16, v18, a3, a5);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return 0;
}

void appendDERThingProperty(void *a1, const __CFString *a2, const __CFString *a3, unsigned __int8 **a4, int a5)
{
  v10 = CFGetAllocator(a1);
  v11 = copyDERThingDescription(v10, a4, 0, a5);
  if (v11)
  {
    v12 = v11;
    appendProperty(a1, @"string", a2, a3, v11, a5);

    CFRelease(v12);
  }
}

void appendGeneralNamesContent(void *a1, unint64_t *a2, uint64_t a3)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a2, v8))
  {
    goto LABEL_5;
  }

  memset(v7, 170, sizeof(v7));
  while (1)
  {
    v6 = DERDecodeSeqNext(v8, v7);
    if (v6)
    {
      break;
    }

    if ((appendGeneralNameContentProperty(a1, *v7, &v7[2], a3) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v6 != 1)
  {
LABEL_5:
    appendRelabeledProperty(a1, @"General Names", 0, a2, @"Invalid %@", a3);
  }
}

void appendBitStringContentNames(void *a1, const __CFString *a2, unsigned __int8 **a3, const __CFString **a4, unsigned __int16 a5, int a6)
{
  v9 = a3[1];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2 && (v10 = *a3, v11 = **a3, v11 <= 7) && (v12 = v9 - 1, LOWORD(v13) = 8 * v12 - v11, v13 <= a5))
  {
    v14 = *(v10 + 1);
    if (v12 < 2)
    {
      LOWORD(v15) = 128;
    }

    else
    {
      v14 = _byteswap_ushort(*(v10 + 1));
      LOWORD(v15) = 0x8000;
    }

    if (a6)
    {
      v16 = SecFrameworkCopyLocalizedString(@"%@, %@", @"Certificate");
      if (v13)
      {
LABEL_9:
        v17 = 0;
        v13 = v13;
        while (1)
        {
          v18 = *a4;
          if (a6)
          {
            v18 = SecFrameworkCopyLocalizedString(*a4, @"Certificate");
          }

          else if (v18)
          {
            CFRetain(*a4);
          }

          v19 = v15;
          if ((v15 & v14) == 0)
          {
            goto LABEL_17;
          }

          if (v17)
          {
            break;
          }

          v15 = v15 >> 1;
          if (!v18)
          {
            v17 = 0;
            goto LABEL_22;
          }

          CFRetain(v18);
          v17 = v18;
LABEL_21:
          CFRelease(v18);
LABEL_22:
          ++a4;
          if (!--v13)
          {
            goto LABEL_27;
          }
        }

        v20 = CFGetAllocator(a1);
        v21 = CFStringCreateWithFormat(v20, 0, v16, v17, v18);
        CFRelease(v17);
        v17 = v21;
LABEL_17:
        v15 = v19 >> 1;
        if (!v18)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = @"%@, %@";
      if (8 * v12 != v11)
      {
        goto LABEL_9;
      }
    }

    v17 = 0;
LABEL_27:
    CFRelease(v16);
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = &stru_1EFA8C6C8;
    }

    appendProperty(a1, @"string", a2, 0, v22, a6);
    if (v17)
    {

      CFRelease(v17);
    }
  }

  else
  {

    appendRelabeledProperty(a1, a2, 0, a3, @"Invalid %@", a6);
  }
}

void appendDateContentProperty(void *a1, const __CFString *a2, uint64_t a3, char a4)
{
  at = NAN;
  if (derDateContentGetAbsoluteTime(24, *a3, *(a3 + 8), &at))
  {
    v8 = CFGetAllocator(a1);
    v9 = CFDateCreate(v8, at);
    appendProperty(a1, @"date", a2, 0, v9, a4);

    CFRelease(v9);
  }

  else
  {

    appendRelabeledProperty(a1, a2, 0, a3, @"Invalid %@", a4);
  }
}

uint64_t SecCertificateCopyProperties(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 640);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateCopyProperties_block_invoke;
  v4[3] = &unk_1E70DDF98;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__SecCertificateCopyProperties_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 560);
  if (v3 || (result = CopyProperties(v2, 1), *(*(a1 + 40) + 560) = result, (v3 = *(*(a1 + 40) + 560)) != 0))
  {
    result = CFRetain(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

CFMutableArrayRef CopyProperties(uint64_t a1, int a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    PropertiesForX501NameContent = createPropertiesForX501NameContent(v4, (a1 + 184), a2 != 0);
    if (PropertiesForX501NameContent)
    {
      v7 = PropertiesForX501NameContent;
      appendProperty(Mutable, @"section", @"Subject Name", 0, PropertiesForX501NameContent, a2 != 0);
      CFRelease(v7);
    }

    v8 = createPropertiesForX501NameContent(v4, (a1 + 152), a2 != 0);
    if (v8)
    {
      v9 = v8;
      appendProperty(Mutable, @"section", @"Issuer Name", 0, v8, a2 != 0);
      CFRelease(v9);
    }

    v10 = SecFrameworkCopyLocalizedString(@"%d", @"Certificate");
    if (v10)
    {
      v11 = v10;
      v12 = CFStringCreateWithFormat(v4, 0, v10, *(a1 + 96) + 1);
      CFRelease(v11);
      if (v12)
      {
        appendProperty(Mutable, @"string", @"Version", 0, v12, a2 != 0);
        CFRelease(v12);
      }
    }

    v13 = CFGetAllocator(Mutable);
    v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
    v15 = v14;
    if (*(a1 + 112))
    {
      appendIntegerProperty(v14, @"Serial Number", a1 + 104, a2 != 0);
      appendProperty(Mutable, @"section", @"Serial Number", 0, v15, a2 != 0);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v16 = CFGetAllocator(Mutable);
    v17 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
    appendDateProperty(v17, @"Not Valid Before", a2 != 0, *(a1 + 168));
    appendDateProperty(v17, @"Not Valid After", a2 != 0, *(a1 + 176));
    appendProperty(Mutable, @"section", @"Validity Period", 0, v17, a2 != 0);
    if (v17)
    {
      CFRelease(v17);
    }

    if (*(a1 + 288))
    {
      appendDataProperty(Mutable, @"Subject Unique ID", 0, a1 + 280, a2 != 0);
    }

    if (*(a1 + 272))
    {
      appendDataProperty(Mutable, @"Issuer Unique ID", 0, a1 + 264, a2 != 0);
    }

    v18 = CFGetAllocator(Mutable);
    v19 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
    appendAlgorithmProperty(v19, @"Public Key Algorithm", a1 + 216, a2 != 0);
    v20 = _SecCertificateCopyKey_onqueue(a1);
    if (v20)
    {
      v21 = v20;
      valuePtr = 0;
      v22 = SecKeyCopyAttributes(v20);
      if (!v22)
      {
        goto LABEL_24;
      }

      v23 = v22;
      Value = CFDictionaryGetValue(v22, @"bsiz");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
      }

      CFRelease(v23);
      v25 = valuePtr;
      if (!valuePtr)
      {
LABEL_24:
        _SecKeyCheck(v21, "SecKeyGetBlockSize");
        v25 = *(*(v21 + 2) + 80);
        if (v25)
        {
          v25 = (8 * v25(v21));
        }

        valuePtr = v25;
      }

      v26 = CFStringCreateWithFormat(v18, 0, @"%ld", v25, valuePtr);
      if (v26)
      {
        v27 = v26;
        appendProperty(v19, @"string", @"Public Key Size", 0, v26, a2 != 0);
        CFRelease(v27);
      }

      CFRelease(v21);
    }

    appendDataProperty(v19, @"Public Key Data", 0, a1 + 248, a2 != 0);
    appendProperty(Mutable, @"section", @"Public Key Info", 0, v19, a2 != 0);
    if (v19)
    {
      CFRelease(v19);
    }

    if (*(a1 + 504) >= 1)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        appendExtension(Mutable, *(a1 + 512) + v28, a2 != 0);
        ++v29;
        v28 += 40;
      }

      while (v29 < *(a1 + 504));
    }

    v30 = CFGetAllocator(Mutable);
    v31 = CFArrayCreateMutable(v30, 0, MEMORY[0x1E695E9C0]);
    appendAlgorithmProperty(v31, @"Signature Algorithm", a1 + 120, a2 != 0);
    appendDataProperty(v31, @"Signature Data", 0, a1 + 80, a2 != 0);
    appendProperty(Mutable, @"section", @"Signature", 0, v31, a2 != 0);
    if (v31)
    {
      CFRelease(v31);
    }

    appendFingerprintsProperty(Mutable, a1, a2 != 0);
  }

  return Mutable;
}

uint64_t SecCertificateCopyLocalizedProperties(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    v4 = *(a1 + 640);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __SecCertificateCopyLocalizedProperties_block_invoke;
    v5[3] = &unk_1E70DDFC0;
    v5[4] = &v6;
    v5[5] = a1;
    dispatch_sync(v4, v5);
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
    return v3;
  }

  return SecCertificateCopyProperties(a1);
}

void *__SecCertificateCopyLocalizedProperties_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 552);
  if (v3 || (result = CopyProperties(v2, 0), *(*(a1 + 40) + 552) = result, (v3 = *(*(a1 + 40) + 552)) != 0))
  {
    result = CFRetain(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

CFDataRef SecCertificateCopySerialNumber(SecCertificateRef certificate)
{
  if (!certificate)
  {
    return 0;
  }

  v1 = *(certificate + 71);
  if (v1)
  {
    CFRetain(*(certificate + 71));
  }

  return v1;
}

uint64_t SecCertificateGetSubjectAltName(uint64_t a1)
{
  v1 = *(a1 + 456);
  if (v1)
  {
    return v1 + 24;
  }

  else
  {
    return 0;
  }
}

CFTypeRef SecFrameworkCopyIPAddressData(const __CFString *a1)
{
  v2 = 0;
  if (convertIPAddress(a1, &v2))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

const __CFArray *SecCertificateCopyIPAddresses(uint64_t a1)
{
  v1 = SecCertificateCopyIPAddressDatas(a1);
  if (v1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __SecCertificateCopyIPAddresses_block_invoke;
    context[3] = &unk_1E70DDFE8;
    context[4] = &v7;
    v11.length = CFArrayGetCount(v1);
    v11.location = 0;
    CFArrayApplyFunction(v1, v11, apply_block_1_9675, context);
    CFRelease(v1);
    Count = CFArrayGetCount(v8[3]);
    v3 = v8;
    if (!Count)
    {
      v4 = v8[3];
      if (v4)
      {
        v8[3] = 0;
        CFRelease(v4);
        v3 = v8;
      }
    }

    v1 = v3[3];
    _Block_object_dispose(&v7, 8);
  }

  return v1;
}

CFMutableArrayRef SecCertificateCopyIPAddressDatas(uint64_t a1)
{
  if (!*(a1 + 456))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (SecCertificateParseGeneralNames(*(a1 + 456) + 24, Mutable, appendIPAddressesFromGeneralNames) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void __SecCertificateCopyIPAddresses_block_invoke(uint64_t a1, CFDataRef theData)
{
  if ((CFDataGetLength(theData) & 0x8000000000000000) == 0)
  {
    v6[0] = CFDataGetBytePtr(theData);
    v6[1] = CFDataGetLength(theData);
    v4 = copyIPAddressContentDescription(0, v6);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v4);
      CFRelease(v5);
    }
  }
}

uint64_t appendIPAddressesFromGeneralNames(__CFArray *a1, int a2, uint64_t a3)
{
  if (a2 != 7)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (v3 != 16 && v3 != 4)
  {
    return 4294941021;
  }

  v6 = CFDataCreate(0, *a3, v3);
  CFArrayAppendValue(a1, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

CFMutableArrayRef SecCertificateCopyRFC822NamesFromSAN(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 456);
  if (v3 && SecCertificateParseGeneralNames(v3 + 24, Mutable, appendRFC822NamesFromGeneralNames) || !CFArrayGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

OSStatus SecCertificateCopyEmailAddresses(SecCertificateRef certificate, CFArrayRef *emailAddresses)
{
  result = -50;
  if (certificate && emailAddresses)
  {
    v5 = SecCertificateCopyRFC822Names(certificate);
    *emailAddresses = v5;
    if (v5)
    {
      return 0;
    }

    else
    {
      v6 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      result = 0;
      *emailAddresses = v6;
    }
  }

  return result;
}

CFMutableArrayRef SecCertificateCopyRFC822NamesFromSubject(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent((a1 + 184), Mutable, appendRFC822NamesFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFMutableArrayRef SecCertificateCopyURIs(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 456);
  if (v3 && SecCertificateParseGeneralNames(v3 + 24, Mutable, appendURIsFromGeneralNames) || !CFArrayGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t appendURIsFromGeneralNames(__CFArray *a1, int a2, uint64_t a3)
{
  if (a2 != 6)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (v3 < 0)
  {
    return 4294941021;
  }

  v5 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *a3, v3, 0x600u, 0);
  if (!v5)
  {
    return 4294941021;
  }

  v6 = v5;
  CFArrayAppendValue(a1, v5);
  CFRelease(v6);
  return 0;
}

OSStatus SecCertificateCopyCommonName(SecCertificateRef certificate, CFStringRef *commonName)
{
  if (!certificate)
  {
    return -50;
  }

  v3 = SecCertificateCopyCommonNames(certificate);
  if (!v3)
  {
    return -26276;
  }

  v4 = v3;
  if (commonName)
  {
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v4, Count - 1);
    v7 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    *commonName = v7;
  }

  CFRelease(v4);
  return 0;
}

const void *SecCertificateCopySubjectAttributeValue(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4[0] = a2;
  v4[1] = &v5;
  v2 = parseX501NameContent((a1 + 184), v4, copyAttributeValueFromX501Name, 0);
  result = v5;
  if (v2)
  {
    if (v5)
    {
      v5 = 0;
      CFRelease(result);
      return v5;
    }
  }

  return result;
}

uint64_t copyAttributeValueFromX501Name(uint64_t *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, *a1);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[1];
      if (*v11)
      {
        CFRelease(*v11);
      }

      result = 0;
      *v11 = v10;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

CFMutableArrayRef SecCertificateCopyNTPrincipalNames(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 456);
  if (v3 && SecCertificateParseGeneralNames(v3 + 24, Mutable, appendNTPrincipalNamesFromGeneralNames) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendNTPrincipalNamesFromGeneralNames(__CFArray *a1, int a2, unint64_t *a3)
{
  if (a2)
  {
    return 0;
  }

  v12 = v3;
  v13 = v4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v7;
  v11 = v7;
  if (DERParseSequenceContent(a3, DERNumOtherNameItemSpecs, &DEROtherNameItemSpecs, &v10, 0x20uLL))
  {
    return 4294941021;
  }

  if (DEROidCompare(&v10, &oidMSNTPrincipalName))
  {
    v8 = copyDERThingDescription(*MEMORY[0x1E695E480], &v11, 1, 1);
    if (v8)
    {
      v9 = v8;
      CFArrayAppendValue(a1, v8);
      CFRelease(v9);
      return 0;
    }

    return 4294941021;
  }

  return 0;
}

CFMutableStringRef SecCertificateCopySubjectString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (parseX501NameContent((a1 + 184), Mutable, appendToRFC2253String, 1) || !CFStringGetLength(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendToRFC2253String(__CFString *theString, unsigned __int8 **a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4 <= 0)
  {
    if (!CFStringGetLength(theString))
    {
      goto LABEL_6;
    }

    v9 = @",";
  }

  else
  {
    v9 = @"+";
  }

  CFStringAppend(theString, v9);
LABEL_6:
  if (DEROidCompare(a2, &oidCommonName))
  {
    v10 = 0;
    v11 = @"CN";
  }

  else if (DEROidCompare(a2, &oidLocalityName))
  {
    v10 = 0;
    v11 = @"L";
  }

  else if (DEROidCompare(a2, &oidStateOrProvinceName))
  {
    v10 = 0;
    v11 = @"ST";
  }

  else if (DEROidCompare(a2, &oidOrganizationName))
  {
    v10 = 0;
    v11 = @"O";
  }

  else if (DEROidCompare(a2, &oidOrganizationalUnitName))
  {
    v10 = 0;
    v11 = @"OU";
  }

  else if (DEROidCompare(a2, &oidCountryName))
  {
    v10 = 0;
    v11 = @"C";
  }

  else
  {
    v10 = SecDERItemCopyOIDDecimalRepresentation(*MEMORY[0x1E695E480], a2);
    v11 = v10;
  }

  CFStringAppend(theString, v11);
  CFStringAppend(theString, @"=");
  if (v10 || (v14 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5)) == 0)
  {
    CFStringAppend(theString, @"#");
    if (*(a3 + 8))
    {
      v12 = 0;
      do
      {
        CFStringAppendFormat(theString, 0, @"%02X", *(*a3 + v12++));
      }

      while (v12 < *(a3 + 8));
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v15 = v14;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *buffer = 0u;
    v38 = 0u;
    Length = CFStringGetLength(v14);
    v45 = v15;
    v48 = 0;
    v49 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v15);
    CStringPtr = 0;
    v46 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
    }

    v47 = CStringPtr;
    v50 = 0;
    v51 = 0;
    if (Length >= 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 64;
      while (1)
      {
        if (v20 >= 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = v20;
        }

        v23 = v49;
        if (v49 <= v20)
        {
          v25 = 0;
          v36 = 0;
          goto LABEL_42;
        }

        if (v46)
        {
          break;
        }

        if (!v47)
        {
          v29 = v50;
          if (v51 <= v20 || v50 > v20)
          {
            v31 = v22 + v19;
            v32 = v21 - v22;
            v33 = v20 - v22;
            v34 = v33 + 64;
            if (v33 + 64 >= v49)
            {
              v34 = v49;
            }

            v50 = v33;
            v51 = v34;
            if (v49 >= v32)
            {
              v23 = v32;
            }

            v52.location = v33 + v48;
            v52.length = v23 + v31;
            CFStringGetCharacters(v45, v52, buffer);
            v29 = v50;
          }

          v24 = &buffer[-v29];
          goto LABEL_37;
        }

        v25 = v47[v48 + v20];
LABEL_41:
        v36 = v25;
        if (v25 > 0x1Fu)
        {
          if (v25 - 32 > 0x3C)
          {
            goto LABEL_64;
          }

          if (((1 << (v25 - 32)) & 0x1000000058001804) != 0)
          {
            goto LABEL_45;
          }

          if (v25 == 32)
          {
            if (!v20 || Length - 1 == v20)
            {
              goto LABEL_45;
            }

LABEL_65:
            v26 = &v36;
            v27 = theString;
            v28 = 1;
          }

          else
          {
LABEL_64:
            if (v20 || v25 != 35)
            {
              goto LABEL_65;
            }

LABEL_45:
            chars[0] = 92;
            chars[1] = v25;
            v26 = chars;
            v27 = theString;
            v28 = 2;
          }

          CFStringAppendCharacters(v27, v26, v28);
          goto LABEL_47;
        }

LABEL_42:
        CFStringAppendFormat(theString, 0, @"\\%02X", v25);
LABEL_47:
        ++v20;
        --v19;
        ++v21;
        if (Length == v20)
        {
          goto LABEL_66;
        }
      }

      v24 = &v46[v48];
LABEL_37:
      v25 = v24[v20];
      goto LABEL_41;
    }

LABEL_66:
    CFRelease(v15);
  }

  return 0;
}

BOOL SecCertificateIsStrongKey(_BOOL8 result)
{
  if (result)
  {
    v4 = 0;
    PublicKeyAlgorithmIdAndSize = SecCertificateGetPublicKeyAlgorithmIdAndSize(result, &v4);
    v2 = PublicKeyAlgorithmIdAndSize;
    if (PublicKeyAlgorithmIdAndSize <= 3)
    {
      if (PublicKeyAlgorithmIdAndSize == 1)
      {
        return v4 > 0xFF;
      }

      if (PublicKeyAlgorithmIdAndSize == 3)
      {
        return v4 > 0x1B;
      }

      return 0;
    }

    result = 1;
    if (v2 != 4 && v2 != 6)
    {
      return 0;
    }
  }

  return result;
}

__CFData *SecCertificateCopyIssuerSHA256Digest(uint64_t a1)
{
  result = SecDERItemCopySequence(a1 + 152);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E480];
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v2);
    v6 = SecSHA256DigestCreate(v3, BytePtr, Length);
    CFRelease(v2);
    return v6;
  }

  return result;
}

__CFData *SecCertificateCopyPublicKeySHA256Digest(void *cf)
{
  if (!cf || !cf[31] || (cf[32] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[31];
  v4 = cf[32];

  return SecSHA256DigestCreate(v2, v3, v4);
}

CFDataRef SecCertificateCopySubjectPublicKeyInfoSHA1Digest(const void *a1)
{
  result = SecCertificateCopySPKIEncoded(a1);
  if (result)
  {
    v3 = result;
    v4 = CFGetAllocator(a1);
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    v7 = SecSHA1DigestCreate(v4, BytePtr, Length);
    CFRelease(v3);
    return v7;
  }

  return result;
}

uint64_t SecCertificateCopyKeychainItem(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 640);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateCopyKeychainItem_block_invoke;
  v4[3] = &unk_1E70DE060;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__SecCertificateCopyKeychainItem_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 616);
  if (v3)
  {
    result = CFRetain(*(v2 + 616));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

uint64_t SecCertificateGetCAIssuers(uint64_t result)
{
  if (result)
  {
    return *(result + 480);
  }

  return result;
}

uint64_t SecCertificateHasCriticalSubjectAltName(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 456);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 16);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

BOOL SecCertificateHasSubject(_BOOL8 result)
{
  if (result)
  {
    return *(result + 192) != 0;
  }

  return result;
}

uint64_t SecCertificateShow(const void *a1)
{
  v1 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "SecCertificate instance %p:\n", a1);
  v2 = *v1;

  return fputc(10, v2);
}

CFDictionaryRef SecCertificateCopyAttributeDictionary(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (SecCertificateIsCertificate(a1))
  {
    v2 = CFGetAllocator(a1);
    v3 = (MEMORY[0x1EEE9AC00])();
    v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v4;
    v39 = v4;
    v36 = v4;
    v37 = v4;
    v35 = v4;
    v5 = MEMORY[0x1EEE9AC00](v3);
    v34 = v6;
    v32 = v7;
    v33 = v7;
    v30 = v7;
    v31 = v7;
    v29 = v7;
    v8 = *(a1 + 96) + 1;
    v43 = 3;
    valuePtr = v8;
    v42 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    if (v42)
    {
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &v43);
      if (v9)
      {
        v10 = v9;
        v11 = CFGetAllocator(a1);
        v12 = CFDataCreate(v11, *(a1 + 16), *(a1 + 24));
        if (v12)
        {
          v13 = v12;
          SubjectKeyID = SecCertificateGetSubjectKeyID(a1);
          v15 = SecCertificateCopyPublicKeySHA1Digest(a1);
          if (v15)
          {
            v16 = v15;
            *&v35 = @"class";
            *(&v35 + 1) = @"ctyp";
            *&v29 = @"cert";
            *(&v29 + 1) = v42;
            *&v36 = @"cenc";
            *&v30 = v10;
            v17 = *(a1 + 584);
            v41 = &v41;
            if (v17 && (v18 = CFGetTypeID(v17), v18 == CFDataGetTypeID()))
            {
              *(&v36 + 1) = @"subj";
              *(&v30 + 1) = *(a1 + 584);
              v19 = 4;
            }

            else
            {
              v19 = 3;
            }

            v21 = *(a1 + 576);
            if (v21 && (v22 = CFGetTypeID(v21), v22 == CFDataGetTypeID()) && (*(&v35 + v19) = @"issr", *(&v29 + v19) = *(a1 + 576), (v23 = *(a1 + 568)) != 0) && (v24 = CFGetTypeID(v23), v24 == CFDataGetTypeID()))
            {
              *(&v35 + v19 + 1) = @"slnr";
              *(&v29 + v19 + 1) = *(a1 + 568);
              v25 = v19 + 2;
              if (SubjectKeyID)
              {
                *(&v35 + v25) = @"skid";
                *(&v29 + v25) = SubjectKeyID;
                v25 = v19 + 3;
              }

              *(&v35 + v25) = @"pkhh";
              *(&v29 + v25) = v16;
              v26 = 8 * v25 + 8;
              *(&v35 + v26) = @"v_Data";
              *(&v29 + v26) = v13;
              v20 = CFDictionaryCreate(v2, &v35, &v29, v25 + 2, 0, MEMORY[0x1E695E9E8]);
            }

            else
            {
              v20 = 0;
            }

            CFRelease(v16);
          }

          else
          {
            v20 = 0;
          }

          CFRelease(v13);
        }

        else
        {
          v20 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v20 = 0;
      }

      CFRelease(v42);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

const __CFData *SecCertificateCreateFromAttributeDictionary(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"v_Data");
  if (result)
  {

    return SecCertificateCreateWithData(0, result);
  }

  return result;
}

uint64_t SecCertificateIsSelfSignedCA(void *a1)
{
  result = _SecCertificateIsSelfSigned(a1);
  if (result)
  {

    return SecCertificateIsCA(a1);
  }

  return result;
}

CFDataRef SecCertificateCopyiAPAuthCapabilities(uint64_t a1)
{
  v2 = SecCertificateGetiAuthVersion(a1);
  if (v2 != 5)
  {
    if (v2 == 3)
    {
      result = SecCertificateGetExtensionValue(a1, @"1.2.840.113635.100.6.36");
      if (!result)
      {
        return result;
      }

      v4 = result;
      if (*(result + 1) == 34)
      {
        memset(v7, 170, sizeof(v7));
        if (!DERDecodeItem(result, v7))
        {
          if (v7[0] == 4)
          {
            if (v7[2] == 32)
            {
              v5 = v7[1];
              return CFDataCreate(0, v5, 32);
            }
          }

          else
          {
            v5 = *v4;
            if (!*(*v4 + 33) && !*(v5 + 32))
            {
              return CFDataCreate(0, v5, 32);
            }
          }
        }
      }
    }

    return 0;
  }

  result = SecCertificateGetExtensionValue(a1, @"1.2.840.113635.100.6.71.1");
  if (!result)
  {
    return result;
  }

  if (*(result + 1) != 32)
  {
    return 0;
  }

  v6 = *result;

  return CFDataCreate(0, v6, 32);
}

uint64_t SecCertificateGetiAuthVersion(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (SecCertificateGetExtensionValue(result, @"1.2.840.113635.100.6.36"))
    {
      return 3;
    }

    else if (SecCertificateGetExtensionValue(v1, @"1.2.840.113635.100.6.59.1"))
    {
      return 4;
    }

    else if (SecCertificateGetExtensionValue(v1, @"1.2.840.113635.100.6.71.1"))
    {
      return 5;
    }

    else
    {
      v2 = *(v1 + 104);
      if (v2 && *(v1 + 112) == 15 && v2[2] == 170 && v2[6] == 170 && v2[8] == 170 && v2[11] == 170)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFDataRef SecCertificateCopyiAPSWAuthCapabilities(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 3)
    {
      v7[3] = v2;
      v7[4] = v3;
      result = SecCertificateGetExtensionValue(a1, off_1E70DE378[a2]);
      if (result)
      {
        memset(v7, 170, 24);
        if (DERDecodeItem(result, v7))
        {
          v6 = 0;
        }

        else
        {
          v6 = v7[0] == 4;
        }

        if (v6 && v7[2] <= 0x7FFFFFFFFFFFFFFELL)
        {
          return CFDataCreate(0, v7[1], v7[2]);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFStringRef SecCertificateCopyComponentType(CFStringRef result)
{
  if (result)
  {
    result = SecCertificateGetExtensionValue(result, @"1.2.840.113635.100.11.1");
    if (result)
    {
      v1 = result;
      memset(v6, 170, sizeof(v6));
      v2 = DERDecodeItem(result, v6);
      if (!v2 && v6[0] == 22)
      {
        info = v6[2];
        if (v6[2] <= 0x7FFFFFFFFFFFFFFELL)
        {
          isa = v6[1];
          v5 = 1536;
          return CFStringCreateWithBytes(0, isa, info, v5, 0);
        }

        return 0;
      }

      if (v2 || v6[0] != 12)
      {
        if (v2 != 3)
        {
          return 0;
        }

        info = v1->info;
        if (info > 0x7FFFFFFFFFFFFFFELL)
        {
          return 0;
        }

        isa = v1->isa;
      }

      else
      {
        info = v6[2];
        if (v6[2] > 0x7FFFFFFFFFFFFFFELL)
        {
          return 0;
        }

        isa = v6[1];
      }

      v5 = 134217984;
      return CFStringCreateWithBytes(0, isa, info, v5, 0);
    }
  }

  return result;
}

CFDictionaryRef SecCertificateCopyComponentAttributes(const __CFDictionary *a1)
{
  Copy = a1;
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ExtensionValue = SecCertificateGetExtensionValue(Copy, @"1.2.840.113635.100.11.3");
    if (ExtensionValue && (v6[0] = MEMORY[0x1E69E9820], v6[1] = 0x40000000, v6[2] = __SecCertificateCopyComponentAttributes_block_invoke, v6[3] = &unk_1E70DE0F8, v6[4] = &v7, !DERDecodeSequenceWithBlock(ExtensionValue, v6)) && (v3 = v8[3]) != 0 && CFDictionaryGetCount(v3) >= 1)
    {
      Copy = CFDictionaryCreateCopy(0, v8[3]);
    }

    else
    {
      Copy = 0;
    }

    v4 = v8[3];
    if (v4)
    {
      v8[3] = 0;
      CFRelease(v4);
    }

    _Block_object_dispose(&v7, 8);
  }

  return Copy;
}

uint64_t __SecCertificateCopyComponentAttributes_block_invoke(uint64_t a1, void *a2)
{
  cf[3] = *MEMORY[0x1E69E9840];
  v3 = (a2 + 1);
  valuePtr = *a2 & 0x1FFFFFFFFFFFFFFFLL;
  v4 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  memset(v18, 170, sizeof(v18));
  v5 = DERDecodeItem(v3, v18);
  if (v5)
  {
    goto LABEL_29;
  }

  if (v18[0] <= 4)
  {
    if (v18[0] > 2)
    {
      if (v18[0] != 3)
      {
LABEL_15:
        v9 = v18[2];
        if ((v18[2] & 0x8000000000000000) != 0)
        {
          v13 = 0;
          v14 = 7;
          goto LABEL_43;
        }

        v10 = v18[1];
        goto LABEL_34;
      }

      *cf = 0uLL;
      v5 = DERParseBitString(&v18[1], cf, 0);
      if (!v5)
      {
        v9 = cf[1];
        if ((cf[1] & 0x8000000000000000) == 0)
        {
          v10 = cf[0];
LABEL_34:
          v8 = CFDataCreate(0, v10, v9);
          goto LABEL_35;
        }

        v14 = 7;
LABEL_30:
        v13 = 0;
        goto LABEL_43;
      }
    }

    else if (v18[0] == 1)
    {
      LOBYTE(cf[0]) = 0;
      v5 = DERParseBoolean(&v18[1], cf);
      if (cf[0])
      {
        v15 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v15 = MEMORY[0x1E695E4C0];
      }

      if (!v5)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v18[0] != 2)
      {
        goto LABEL_20;
      }

      cf[0] = 0;
      v5 = DERParseInteger64(&v18[1], cf);
      if (!v5)
      {
        v8 = CFNumberCreate(0, kCFNumberSInt64Type, cf);
        goto LABEL_35;
      }
    }

LABEL_29:
    v14 = v5;
    goto LABEL_30;
  }

  if (v18[0] > 0x1C)
  {
LABEL_18:
    if (v18[0] != 5)
    {
      if (v18[0] != 6)
      {
LABEL_20:
        v12 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(cf[0]) = 134217984;
          *(cf + 4) = v18[0];
          _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "unsupported value tag (%lld) found in Component Attribute dictionary, skipping", cf, 0xCu);
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v15 = MEMORY[0x1E695E738];
LABEL_40:
    v13 = *v15;
    goto LABEL_36;
  }

  if (((1 << SLOBYTE(v18[0])) & 0x18001000) != 0)
  {
    v11 = 134217984;
  }

  else
  {
    if (((1 << SLOBYTE(v18[0])) & 0x480000) == 0)
    {
      if (((1 << SLOBYTE(v18[0])) & 0x1800000) != 0)
      {
        cf[0] = 0;
        v6 = SecAbsoluteTimeFromDateContentWithError(v18[0], v18[1], v18[2], cf);
        v7 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v7);
LABEL_22:
          v13 = 0;
          v14 = 0;
          goto LABEL_43;
        }

        v8 = CFDateCreate(0, v6);
        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v11 = 1536;
  }

  v8 = copyContentString(0, &v18[1], v11);
LABEL_35:
  v13 = v8;
LABEL_36:
  v14 = 0;
  if (!v4 || !v13)
  {
LABEL_43:
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  CFDictionaryAddValue(*(*(*(a1 + 32) + 8) + 24), v4, v13);
  v14 = 0;
LABEL_44:
  CFRelease(v4);
LABEL_45:
  if (v13)
  {
    CFRelease(v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

CFDataRef SecCertificateCopyCompressedMFiCert(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = *(a1 + 24);
  if (v2 < 0)
  {
    goto LABEL_12;
  }

  size = 0;
  v3 = CTCompressComputeBufferSize(*(a1 + 16), v2, &size);
  if (v3)
  {
    v6 = v3;
LABEL_10:
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v6;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "coretrust compress failed: %04x", buf, 8u);
    }

    goto LABEL_12;
  }

  v4 = malloc_type_malloc(size, 0xB19ECD37uLL);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  CTCompress(*(a1 + 16), *(a1 + 24), v4, size);
  v6 = v5;
  if (v5 || size > 0x7FFFFFFFFFFFFFFELL)
  {
    free(v4);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = CFDataCreate(0, v4, size);
LABEL_8:
  free(v4);
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

const __CFData *SecCertificateCreateWithCompressedMFiCert(const __CFData *cf)
{
  v1 = cf;
  v17 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFDataGetTypeID() && (CFDataGetLength(v1) & 0x8000000000000000) == 0)
    {
      size = 0;
      BytePtr = CFDataGetBytePtr(v1);
      Length = CFDataGetLength(v1);
      v5 = CTDecompressComputeBufferSize(BytePtr, Length, &size);
      if (v5)
      {
        v10 = v5;
        v6 = 0;
      }

      else
      {
        v6 = malloc_type_malloc(size, 0x81CBB5BFuLL);
        if (!v6)
        {
          goto LABEL_9;
        }

        v7 = CFDataGetBytePtr(v1);
        v8 = CFDataGetLength(v1);
        v9 = CTDecompress(v7, v8, v6, size);
        if (!v9)
        {
          if (size <= 0x7FFFFFFFFFFFFFFELL)
          {
            v1 = SecCertificateCreateWithBytes(0, v6, size);
LABEL_10:
            free(v6);
            goto LABEL_16;
          }

LABEL_9:
          v1 = 0;
          goto LABEL_10;
        }

        v10 = v9;
      }

      free(v6);
      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v10;
        _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "coretrust decompress failed: %04x", buf, 8u);
      }
    }

    v1 = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v1;
}

void *SecCertificateCreateWithPEM(int a1, CFDataRef theData)
{
  if (!theData || CFDataGetLength(theData) < 1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v5 = strnstr(BytePtr, "-----BEGIN CERTIFICATE-----", Length);
  v6 = strnstr(BytePtr, "-----END CERTIFICATE-----", Length);
  v7 = 0;
  if (!v5 || !v6 || v5 > v6)
  {
    return v7;
  }

  v8 = v5 + 27;
  if (v5 + 27 >= v6)
  {
LABEL_14:
    v9 = *v8;
  }

  else
  {
    while (1)
    {
      v9 = *v8;
      if (v9 != 32 && v9 != 9)
      {
        break;
      }

      if (++v8 == v6)
      {
        v8 = v6;
        goto LABEL_14;
      }
    }
  }

  if (v9 == 13)
  {
    v13 = v8[1];
    v12 = (v8 + 1);
    if (v13 == 10)
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 = v12;
    }

    goto LABEL_21;
  }

  if (v9 != 10)
  {
    return 0;
  }

  v11 = (v8 + 1);
LABEL_21:
  if (v11 > v6)
  {
    return 0;
  }

  v14 = v6 - v11;
  v15 = (v6 - v11) >> 2;
  if (((v6 - v11) & 3) != 0)
  {
    ++v15;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = 3 * v15;
  if (3 * v15 >= CFDataGetLength(theData))
  {
    return 0;
  }

  v17 = malloc_type_calloc(1uLL, v16, 0xF5039875uLL);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = SecBase64Decode_(v11, v14, v17, v16, 0, &v22, &v21);
  if (v19)
  {
    v7 = SecCertificateCreateWithBytes(*MEMORY[0x1E695E480], v18, v19);
  }

  else
  {
    v7 = 0;
  }

  free(v18);
  return v7;
}

CFStringRef SecCertificateCopyPEMRepresentation(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (2 * (((v2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = v3 + 2 * ((v3 + 63) >> 6);
  v5 = v4 - 2;
  v6 = v4 + 53;
  v7 = malloc_type_malloc(v4 + 53, 0xB7B6840CuLL);
  v8 = &v7[snprintf(v7, v6, "-----BEGIN %s-----\n", "CERTIFICATE")];
  v12 = -1431655766;
  v9 = SecBase64Encode_(v1, v2, v8, v5, 0x40u, &v12);
  if (v12)
  {
    v10 = 0;
  }

  else
  {
    snprintf(&v8[v9], &v7[v6] - &v8[v9], "\n-----END %s-----\n", "CERTIFICATE");
    v10 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v7, v6, 0x8000100u, 0);
  }

  free(v7);
  return v10;
}

xpc_object_t SecCertificateArrayCopyXPCArray(const __CFArray *a1, __CFString **a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        if (!SecCertificateAppendToXPCArray(ValueAtIndex, v4, a2))
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v4;
        }
      }

      xpc_release(v4);
      return 0;
    }
  }

  else
  {
    SecError(-108, a2, @"failed to create xpc_array");
  }

  return v4;
}

CFArrayRef SecCertificateCopyEscrowRoots(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1 > 5)
  {
    v2 = &kBaseLineEscrowEnrollmentRoots;
    v1 = 4;
  }

  else
  {
    v1 = qword_188962908[a1];
    v2 = off_1E70DE398[a1];
  }

  MEMORY[0x1EEE9AC00](a1);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v4, 170, v3);
  v5 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = v2[v5];
    if (v7)
    {
      if (*v7 >= 1)
      {
        v8 = v7[1];
        if (v8)
        {
          v9 = CFDataCreate(v6, v8, *v7);
          if (v9)
          {
            v10 = v9;
            v4[v5] = SecCertificateCreateWithData(v6, v9);
            CFRelease(v10);
          }
        }
      }
    }

    ++v5;
  }

  while (v1 != v5);
  v11 = CFArrayCreate(v6, v4, v1, MEMORY[0x1E695E9C0]);
  do
  {
    if (*v4)
    {
      CFRelease(*v4);
    }

    ++v4;
    --v1;
  }

  while (v1);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SecCertificateCopyTrustedCTLogs()
{
  cf = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (gTrustd && (v0 = *(gTrustd + 104)) != 0)
  {
    v1 = v0(&cf);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __CopyTrustedCTLogs_block_invoke_2;
    v4[3] = &unk_1E70DE2E0;
    v4[4] = &v5;
    securityd_send_sync_and_do(0x19u, &cf, &__block_literal_global_657, v4);
    v1 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

BOOL __CopyTrustedCTLogs_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get CT logs");
  }
}

uint64_t SecCertificateCopyCTLogForKeyID(const __CFData *a1)
{
  cf = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFDataGetTypeID()))
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (BytePtr && (v4 = BytePtr, CFDataGetLength(a1) == 32))
    {
      if (gTrustd)
      {
        v5 = *(gTrustd + 112);
        if (v5)
        {
          v6 = v5(a1, &cf);
          goto LABEL_11;
        }
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __CopyCTLogForKeyID_block_invoke;
      v10[3] = &__block_descriptor_tmp_668;
      v10[4] = v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __CopyCTLogForKeyID_block_invoke_2;
      v9[3] = &unk_1E70DE328;
      v9[4] = &v11;
      securityd_send_sync_and_do(0x1Au, &cf, v10, v9);
    }

    else
    {
      SecError(-50, &cf, @"keyID data was not the expected length");
    }
  }

  else
  {
    SecError(-50, &cf, @"keyID was not a valid CFDataRef");
  }

  v6 = v12[3];
LABEL_11:
  _Block_object_dispose(&v11, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

BOOL __CopyCTLogForKeyID_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to match CT log");
  }
}

__CFArray *SecCertificateCopyiPhoneDeviceCAChain()
{
  v0 = SecCertificateCreateWithBytes(0, &_AppleiPhoneDeviceCA, 877);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecCertificateCreateWithBytes(0, &_AppleiPhoneCA, 1015);
  if (!v2)
  {
    v6 = 0;
    v4 = v1;
LABEL_7:
    CFRelease(v4);
    return v6;
  }

  v3 = v2;
  v4 = SecCertificateCreateWithBytes(0, &_AppleRootCA, 1215);
  if (v4)
  {
    Mutable = CFArrayCreateMutable(0, 3, MEMORY[0x1E695E9C0]);
    v6 = Mutable;
    if (Mutable)
    {
      CFArrayAppendValue(Mutable, v1);
      CFArrayAppendValue(v6, v3);
      CFArrayAppendValue(v6, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v1);
  CFRelease(v3);
  if (v4)
  {
    goto LABEL_7;
  }

  return v6;
}

BOOL SecCertificateGetDeveloperIDDate(uint64_t a1, double *a2, __CFString **a3)
{
  if (a1 && a2)
  {
    ExtensionValue = SecCertificateGetExtensionValue(a1, @"1.2.840.113635.100.6.1.33");
    if (ExtensionValue)
    {
      memset(v10, 170, sizeof(v10));
      if (DERDecodeItem(ExtensionValue, v10))
      {
        return SecError(-26275, a3, @"DeveloperID Date parsing: extension value failed to decode", cf);
      }

      cf = 0;
      if (v10[0] != 12)
      {
        return SecError(-26275, a3, @"DeveloperID Date parsing: extension value wrong tag", cf);
      }

      *a2 = SecAbsoluteTimeFromDateContentWithError(24, v10[1], v10[2], &cf);
      if (!cf)
      {
        return 1;
      }

      if (a3 && !*a3)
      {
        result = 0;
        *a3 = cf;
      }

      else
      {
        CFRelease(cf);
        return 0;
      }

      return result;
    }

    v7 = @"DeveloperID Date parsing: extension not found";
    v8 = -67880;
  }

  else
  {
    v7 = @"DeveloperID Date parsing: missing required input";
    v8 = -50;
  }

  return SecError(v8, a3, v7);
}

uint64_t SecCertificateGetUnparseableKnownExtension(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 520);
  }

  else
  {
    return -1;
  }
}

uint64_t SecCertificateGetDuplicateExtension(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 528);
  }

  else
  {
    return -1;
  }
}

__CFArray *SecCertificateCopyAppleExternalRoots()
{
  v0 = SecCertificateCreateWithBytes(0, &_AppleExternalECRootCA, 519);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecCertificateCreateWithBytes(0, &_TestAppleExternalECRootCA, 530);
  if (v2)
  {
    v3 = v2;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v5 = Mutable;
    if (Mutable)
    {
      CFArrayAppendValue(Mutable, v1);
      if (os_variant_allows_internal_security_policies())
      {
        CFArrayAppendValue(v5, v3);
      }
    }

    CFRelease(v1);
  }

  else
  {
    v5 = 0;
    v3 = v1;
  }

  CFRelease(v3);
  return v5;
}

uint64_t SecCurve25519PublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, const __CFData *a7, __CFString **a8)
{
  v8 = *(a1 + 16);
  if (v8 != &kSecEd25519PublicKeyDescriptor && v8 != &kSecEd25519PrivateKeyDescriptor)
  {
    return *MEMORY[0x1E695E738];
  }

  if (a2 != 1 || !CFEqual(cf1, @"algid:sign:EdDSA:message-Curve25519:SHA512"))
  {
    v15 = MEMORY[0x1E695E738];
    return *v15;
  }

  if (!a5)
  {
    Length = CFDataGetLength(a7);
    CFDataGetBytePtr(a7);
    CFDataGetLength(a6);
    CFDataGetBytePtr(a6);
    if (Length == 64)
    {
      v18 = *(a1 + 24);
      ccsha512_di();
      v19 = cced25519_verify();
      if (!v19)
      {
        goto LABEL_9;
      }

      SecError(-67808, a8, @"Ed25519 signature verification failed (ccerr %d)", v19);
    }

    else
    {
      SecError(-67808, a8, @"Ed25519 signature verification failed (invalid signature length)");
    }

    return 0;
  }

LABEL_9:
  v15 = MEMORY[0x1E695E4D0];
  return *v15;
}

__CFData *SecCurve25519PrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = *MEMORY[0x1E695E738];
  v14 = *(a1 + 24);
  if (a2 != 4)
  {
    if (a2)
    {
      goto LABEL_27;
    }

    v15 = *(a1 + 16);
    v16 = v15 == &kSecEd25519PublicKeyDescriptor || v15 == &kSecEd25519PrivateKeyDescriptor;
    if (!v16 || !CFEqual(cf1, @"algid:sign:EdDSA:message-Curve25519:SHA512"))
    {
      goto LABEL_27;
    }

    if (!a5)
    {
      ccsha512_di();
      ccrng();
      if (cced25519_make_pub_with_rng())
      {
        SecError(-2070, a8, @"%@: Failed to get public key from private key", a1);
        goto LABEL_27;
      }

      Mutable = CFDataCreateMutable(0, 0);
      CFDataSetLength(Mutable, 64);
      if (!Mutable)
      {
        SecError(-108, a8, @"%@: Failed to create buffer for a signature", a1);
        goto LABEL_27;
      }

      CFDataGetLength(a6);
      CFDataGetBytePtr(a6);
      CFDataGetMutableBytePtr(Mutable);
      ccsha512_di();
      ccrng();
      v17 = cced25519_sign_with_rng();
      cc_clear();
      if (v17)
      {
        CFRelease(Mutable);
        SecError(-50, a8, @"%@: Ed25519 signing failed (ccerr %d)", a1, v17, 0, 0, 0, 0);
LABEL_32:
        Mutable = 0;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

LABEL_21:
    Mutable = *MEMORY[0x1E695E4D0];
    goto LABEL_27;
  }

  v18 = *(a1 + 16);
  v19 = v18 == &kSecEd25519PublicKeyDescriptor || v18 == &kSecEd25519PrivateKeyDescriptor;
  if (v19 || !CFEqual(cf1, @"algid:keyexchange:ECDH") && !CFEqual(cf1, @"algid:keyexchange:ECDHC"))
  {
    goto LABEL_27;
  }

  if (a5)
  {
    goto LABEL_21;
  }

  CFDataGetBytePtr(a6);
  if (CFDataGetLength(a6) == 32)
  {
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
    CFDataSetLength(Mutable, 32);
    ccrng();
    CFDataGetMutableBytePtr(Mutable);
    v20 = cccurve25519_with_rng();
    if (v20)
    {
      v23 = v20;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      SecError(-50, a8, @"%@: X25519 DH failed (ccerr %d)", a1, v23);
      goto LABEL_32;
    }

    CFDataSetLength(Mutable, 32);
  }

  else
  {
    SecError(-50, a8, @"X25519priv sharedsecret: bad public key");
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFDataRef SecCurve25519PrivateKeyCopyExternalRepresentation(void *a1)
{
  v1 = a1[3];
  v2 = CFGetAllocator(a1);

  return CFDataCreate(v2, v1, 32);
}

uint64_t SecCurve25519PrivateKeyCopyPublicOctets(void *a1, CFDataRef *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v4 = a1[2];
  v5 = a1[3];
  if (v4 != &kSecEd25519PublicKeyDescriptor && v4 != &kSecEd25519PrivateKeyDescriptor)
  {
    ccrng();
    if (!cccurve25519_make_pub_with_rng())
    {
      goto LABEL_9;
    }

LABEL_7:
    result = 4294941020;
    goto LABEL_12;
  }

  ccsha512_di();
  ccrng();
  if (cced25519_make_pub_with_rng())
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = CFGetAllocator(a1);
  *a2 = CFDataCreate(v9, v11, 32);
  cc_clear();
  if (*a2)
  {
    result = 0;
  }

  else
  {
    result = 4294941021;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SecCurve25519PrivateKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x1E695E480];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v5 = *(a1 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v8 = *(*(a1 + 16) + 80);
  if (v8)
  {
    v8 = (8 * v8(a1));
  }

  v9 = v2 == &kSecEd25519PrivateKeyDescriptor || v2 == &kSecEd25519PublicKeyDescriptor;
  v10 = "kSecX25519";
  if (v9)
  {
    v10 = "kSecEd25519";
  }

  return CFStringCreateWithFormat(v3, 0, @"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v10, AlgorithmId, v6, v7, v8, a1);
}

CFDictionaryRef SecCurve25519PrivateKeyCopyAttributeDictionary(void *a1)
{
  v2 = a1[3];
  v3 = CFGetAllocator(a1);
  v4 = CFDataCreate(v3, v2, 32);
  v5 = a1[2];
  if (v5 == &kSecEd25519PrivateKeyDescriptor || v5 == &kSecEd25519PublicKeyDescriptor)
  {
    v7 = @"105";
  }

  else
  {
    v7 = @"106";
  }

  v8 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, v7, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t SecCurve25519PrivateKeyInit(uint64_t a1, _OWORD *a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (a4 == 5)
  {
    v18 = 0u;
    v19 = 0u;
    v7 = *(a1 + 16);
    if (v7 == &kSecEd25519PublicKeyDescriptor || v7 == &kSecEd25519PrivateKeyDescriptor)
    {
      ccsha512_di();
      ccrng();
      key_pair = cced25519_make_key_pair();
      if (!key_pair)
      {
LABEL_15:
        cc_clear();
        result = 0;
        goto LABEL_16;
      }

      v10 = key_pair;
      v11 = _SECKEY_LOG_9783();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = 67109120;
      v17 = v10;
      v12 = "cced25519_make_key_pair() failed, error %d";
    }

    else
    {
      ccrng();
      v13 = cccurve25519_make_key_pair();
      if (!v13)
      {
        goto LABEL_15;
      }

      v15 = v13;
      v11 = _SECKEY_LOG_9783();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v16 = 67109120;
      v17 = v15;
      v12 = "cccurve25519_make_key_pair() failed, error %d";
    }

    _os_log_error_impl(&dword_1887D2000, v11, OS_LOG_TYPE_ERROR, v12, &v16, 8u);
    goto LABEL_18;
  }

  if (a4 != 7)
  {
    result = 4294899625;
    goto LABEL_16;
  }

  if (a3 != 32)
  {
LABEL_19:
    result = 4294941021;
    goto LABEL_16;
  }

  result = 0;
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

id _SECKEY_LOG_9783()
{
  if (_SECKEY_LOG_once_9786 != -1)
  {
    dispatch_once(&_SECKEY_LOG_once_9786, &__block_literal_global_9787);
  }

  v1 = _SECKEY_LOG_log_9788;

  return v1;
}

CFDataRef SecCurve25519PublicKeyCopyExternalRepresentation(void *a1)
{
  v1 = a1[3];
  v2 = CFGetAllocator(a1);

  return CFDataCreate(v2, v1, 32);
}

uint64_t SecCurve25519PublicKeyCopyPublicOctets(void *a1, CFDataRef *a2)
{
  v3 = a1[3];
  v4 = CFGetAllocator(a1);
  v5 = CFDataCreate(v4, v3, 32);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t SecCurve25519KeyGetAlgorithmID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == &kSecEd25519PrivateKeyDescriptor || v1 == &kSecEd25519PublicKeyDescriptor)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t SecCurve25519PublicKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E696AEC0];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v5 = *(a1 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v8 = *(*(a1 + 16) + 80);
  if (v8)
  {
    v8 = (8 * v8(a1));
  }

  v9 = v2 == &kSecEd25519PrivateKeyDescriptor || v2 == &kSecEd25519PublicKeyDescriptor;
  v10 = "kSecX25519";
  if (v9)
  {
    v10 = "kSecEd25519";
  }

  [v3 stringWithFormat:@"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v10, AlgorithmId, v6, v7, v8, a1];
  return objc_claimAutoreleasedReturnValue();
}

__CFDictionary *SecCurve25519PublicKeyCopyAttributeDictionary(void *a1)
{
  v1 = a1[2];
  if (v1 == &kSecEd25519PrivateKeyDescriptor || v1 == &kSecEd25519PublicKeyDescriptor)
  {
    v3 = @"105";
  }

  else
  {
    v3 = @"106";
  }

  v4 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, v3, 0);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
    CFRelease(v4);
  }

  return MutableCopy;
}

uint64_t SecCurve25519PublicKeyInit(uint64_t a1, _OWORD *a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (a4 != 6)
  {
    if (a4 != 7)
    {
      result = 4294967246;
      goto LABEL_16;
    }

    if (a3 == 32)
    {
      result = 0;
      v6 = a2[1];
      *v4 = *a2;
      v4[1] = v6;
      goto LABEL_16;
    }

LABEL_19:
    result = 4294941021;
    goto LABEL_16;
  }

  if (a3 != 32)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 16);
  if (v7 == &kSecEd25519PublicKeyDescriptor || v7 == &kSecEd25519PrivateKeyDescriptor)
  {
    ccsha512_di();
    ccrng();
    result = cced25519_make_pub_with_rng();
    if (!result)
    {
      goto LABEL_16;
    }

    v9 = result;
    v10 = _SECKEY_LOG_9783();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v14 = 67109120;
    v15 = v9;
    v11 = "cced25519_make_pub_with_rng() failed, error %d";
    goto LABEL_21;
  }

  ccrng();
  result = cccurve25519_make_pub_with_rng();
  if (result)
  {
    v13 = result;
    v10 = _SECKEY_LOG_9783();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      goto LABEL_19;
    }

    v14 = 67109120;
    v15 = v13;
    v11 = "cccurve25519_make_pub_with_rng() failed, error %d";
LABEL_21:
    _os_log_error_impl(&dword_1887D2000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 8u);
    goto LABEL_18;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t curve25519KeyGeneratePair(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  if (a4 == 4)
  {
    v9 = &kSecEd25519PrivateKeyDescriptor;
  }

  else
  {
    v9 = &kSecX25519PrivateKeyDescriptor;
  }

  v10 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, v9, a1, 0, 5);
  if (!v10)
  {
    return 4294967246;
  }

  v11 = v10;
  if (a4 == 4)
  {
    v12 = &kSecEd25519PublicKeyDescriptor;
  }

  else
  {
    v12 = &kSecX25519PublicKeyDescriptor;
  }

  v13 = SecKeyCreate(v8, v12, v10[3], 32, 6);
  if (!v13)
  {
    v14 = 4294967246;
LABEL_18:
    CFRelease(v11);
    return v14;
  }

  if (a2)
  {
    *a2 = v13;
    v13 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = 0;
  result = 0;
  if (v11)
  {
    goto LABEL_18;
  }

  return result;
}

__CFArray *SecCertificateCopyAppleCorporateRoots()
{
  v0 = SecCertificateCreateWithBytes(0, &_AppleCorporateRootCA, 949);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecCertificateCreateWithBytes(0, &_AppleCorporateRootCA2, 585);
  if (!v2)
  {
    v6 = 0;
    v4 = v1;
LABEL_7:
    CFRelease(v4);
    return v6;
  }

  v3 = v2;
  v4 = SecCertificateCreateWithBytes(0, &_AppleCorporateRootCA3, 1417);
  if (v4)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v6 = Mutable;
    if (Mutable)
    {
      CFArrayAppendValue(Mutable, v1);
      CFArrayAppendValue(v6, v3);
      CFArrayAppendValue(v6, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v1);
  CFRelease(v3);
  if (v4)
  {
    goto LABEL_7;
  }

  return v6;
}

CFDataRef SecGenerateCertificateRequestWithParameters(const __CFString ***a1, const __CFDictionary *a2, __SecKey *a3, __SecKey *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1 || (v4 = a1, !*a1))
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v70 = 0;
  v8 = PORT_NewArena(1024);
  error = 0;
  if (!v8)
  {
    v17 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "csr: pool allocation failure", buf, 2u);
    }

    goto LABEL_13;
  }

  v9 = v8;
  cf = a3;
  key = a4;
  v68 = 0u;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  *v65 = 0u;
  memset(v64, 0, sizeof(v64));
  v61 = 0;
  *buf = 1;
  v63 = &v61;
  v10 = *v4;
  if (*v4)
  {
    v11 = 0;
    v12 = 0;
    v13 = v4;
    do
    {
      if (*v10)
      {
        v14 = (v10 + 3);
        do
        {
          ++v11;
          v15 = *v14;
          v14 += 3;
        }

        while (v15);
      }

      ++v11;
      ++v12;
      v16 = v13[1];
      ++v13;
      v10 = v16;
    }

    while (v16);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (v11 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v11;
  }

  if (v12 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v12;
  }

  v23 = malloc_type_malloc(8 * (v21 + 4 * v21), 0x10100404675C823uLL);
  v24 = malloc_type_malloc(8 * v21, 0x2004093837F09uLL);
  v25 = malloc_type_malloc(8 * v22, 0x80040B8603338uLL);
  v26 = malloc_type_malloc(8 * (v12 + 1), 0x2004093837F09uLL);
  if (*v4)
  {
    LODWORD(v27) = 0;
    LODWORD(v28) = 0;
    v55 = v25;
    v56 = v26;
    while (1)
    {
      v29 = &v25[8 * v28];
      *v29 = &v24[v27];
      v26[v28] = v29;
      v30 = **v4;
      if (v30)
      {
        break;
      }

      v34 = v27;
LABEL_30:
      v28 = (v28 + 1);
      LODWORD(v27) = v27 + 1;
      v24[v34] = 0;
      v35 = v4[1];
      ++v4;
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    v31 = a2;
    v32 = *v4 + 3;
    while ((make_nss_atv(v9, v30, *(v32 - 1), *(v32 - 16), &v23[40 * v27], &error) & 1) != 0)
    {
      v24[v27] = &v23[40 * v27];
      v27 = (v27 + 1);
      v33 = *v32;
      v32 += 3;
      v30 = v33;
      if (!v33)
      {
        v34 = v27;
        v25 = v55;
        v26 = v56;
        a2 = v31;
        goto LABEL_30;
      }
    }

    v36 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEFAULT, "csr: failed to encode atv", v71, 2u);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v18 = 0;
    v25 = v55;
    v40 = v56;
    goto LABEL_55;
  }

  v28 = 0;
LABEL_36:
  v26[v28] = 0;
  v40 = v26;
  *&v64[0] = v26;
  if (!key || (v37 = SecKeyCopyPublicKey(key)) == 0)
  {
    v41 = secLogObjForScope("csr");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *v71 = 0;
      _os_log_debug_impl(&dword_1887D2000, v41, OS_LOG_TYPE_DEBUG, "unable to create public key from private, using input public key", v71, 2u);
    }

    v37 = cf;
    if (!cf)
    {
      v47 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 0;
        _os_log_impl(&dword_1887D2000, v47, OS_LOG_TYPE_DEFAULT, "csr: failed to get public key", v71, 2u);
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v18 = 0;
      goto LABEL_55;
    }

    CFRetain(cf);
  }

  v42 = v25;
  public_key = make_public_key(v37, v64 + 8, &v70, &error);
  if (!public_key)
  {
    v50 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_1887D2000, v50, OS_LOG_TYPE_DEFAULT, "csr: failed to encode public key", v71, 2u);
    }

    v38 = 0;
    v39 = 0;
    goto LABEL_76;
  }

  v39 = public_key;
  *(&v66 + 1) = nss_attributes_from_parameters_dict(v9, a2);
  SecCmsArraySortByDER(*(&v66 + 1), &kSecAsn1AttributeTemplate, 0);
  v59 = 0;
  v60 = 0;
  if (!SEC_ASN1EncodeItem(v9, &v59, buf, &kSecAsn1CertRequestInfoTemplate))
  {
    v44 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "csr: failed to encode request info", v71, 2u);
    }
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, kSecCMSSignHashAlgorithm);
  }

  else
  {
    Value = 0;
  }

  signature = make_signature(v60, v59, key, Value, v67, &error);
  if (!signature)
  {
    v51 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "csr: failed to create CSR signature", v71, 2u);
    }

    v38 = 0;
    goto LABEL_76;
  }

  v38 = signature;
  *(&v68 + 1) = CFDataGetBytePtr(signature);
  *&v68 = 8 * CFDataGetLength(v38);
  v57 = 0;
  v58 = 0;
  if (!SEC_ASN1EncodeItem(v9, &v57, buf, &kSecAsn1CertRequestTemplate))
  {
    v52 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, "csr: failed to encode cert request", v71, 2u);
    }

LABEL_76:
    v18 = 0;
    v25 = v42;
    goto LABEL_55;
  }

  v25 = v42;
  v18 = CFDataCreate(*MEMORY[0x1E695E480], v58, v57);
LABEL_55:
  if (v70 == 1)
  {
    free(v65[0]);
  }

  PORT_FreeArena(v9, 1);
  if (v37)
  {
    CFRelease(v37);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  free(v23);
  free(v24);
  free(v25);
  free(v40);
  if (error)
  {
    v48 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 138412290;
      v72 = error;
      _os_log_impl(&dword_1887D2000, v48, OS_LOG_TYPE_DEFAULT, "csr: cert request encoding failed: %@", v71, 0xCu);
    }

    v49 = error;
    if (error)
    {
      error = 0;
      CFRelease(v49);
    }
  }

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t make_nss_atv(uint64_t a1, const __CFString *a2, const __CFString *cf, int a4, uint64_t a5, __CFString **a6)
{
  v12 = CFGetTypeID(cf);
  if (v12 == CFStringGetTypeID())
  {
    Length = CFStringGetLength(cf);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = PORT_ArenaAlloc(a1, MaximumSizeForEncoding);
    if (!CFStringGetCString(cf, v15, MaximumSizeForEncoding, 0x600u))
    {
      if (!CFStringGetCString(cf, v15, MaximumSizeForEncoding, 0x8000100u))
      {
        SecError(-50, a6, @"ATV value is not a Printable or UTF8 string");
        return 0;
      }

      v16 = 12;
      if (a4 && a4 != 12)
      {
        SecError(-50, a6, @"ATV input type does not match value encoding");
        return 0;
      }

      goto LABEL_26;
    }

    if (a4 != 19)
    {
      v16 = a4;
      if (a4)
      {
LABEL_26:
        v21 = strlen(v15);
        LOBYTE(a4) = v16;
        goto LABEL_27;
      }
    }

    if (!a2)
    {
      goto LABEL_22;
    }

    v17 = CFGetTypeID(a2);
    if (v17 == CFStringGetTypeID())
    {
      if (!CFEqual(@"1.2.840.113549.1.9.1", a2) && CFStringCompare(@"EMAIL", a2, 1uLL))
      {
LABEL_22:
        v19 = 0;
        v18 = 19;
LABEL_23:
        if (printable_string(cf, v19))
        {
          v16 = v18;
        }

        else
        {
          v16 = 12;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v22 = CFGetTypeID(a2);
      if (v22 != CFDataGetTypeID())
      {
        goto LABEL_22;
      }

      if (CFDataGetLength(a2) != 9)
      {
        goto LABEL_22;
      }

      BytePtr = CFDataGetBytePtr(a2);
      if (memcmp(BytePtr, &_oidEmailAddress, 9uLL))
      {
        goto LABEL_22;
      }
    }

    v18 = 22;
    v19 = 1;
    goto LABEL_23;
  }

  v20 = CFGetTypeID(cf);
  if (v20 != CFDataGetTypeID())
  {
    SecError(-50, a6, @"ATV value of unsupported type");
    return 0;
  }

  v21 = CFDataGetLength(cf);
  v15 = CFDataGetBytePtr(cf);
LABEL_27:
  v30 = 0;
  v24 = CFGetTypeID(a2);
  if (v24 == CFStringGetTypeID())
  {
    if (CFEqual(@"CN", a2))
    {
      v25 = &oidCommonName;
LABEL_46:
      data = v25->data;
      v27 = v25->length;
      goto LABEL_47;
    }

    if (CFEqual(@"C", a2))
    {
      v25 = &oidCountryName;
      goto LABEL_46;
    }

    if (CFEqual(@"ST", a2))
    {
      v25 = &oidStateOrProvinceName;
      goto LABEL_46;
    }

    if (CFEqual(@"L", a2))
    {
      v25 = &oidLocalityName;
      goto LABEL_46;
    }

    if (CFEqual(@"O", a2))
    {
      v25 = &oidOrganizationName;
      goto LABEL_46;
    }

    if (CFEqual(@"OU", a2))
    {
      v25 = &oidOrganizationalUnitName;
      goto LABEL_46;
    }

    if (CFEqual(@"EMAIL", a2))
    {
      v25 = &oidEmailAddress;
      goto LABEL_46;
    }

    data = oid_der_data(a1, a2, &v30);
    if (data)
    {
      v27 = v30;
      goto LABEL_47;
    }

    SecError(-26276, a6, @"ATV OID encode failed for %@", a2);
    return 0;
  }

  v26 = CFGetTypeID(a2);
  if (v26 != CFDataGetTypeID())
  {
    SecError(-50, a6, @"ATV OID of unsupported type");
    return 0;
  }

  v27 = CFDataGetLength(a2);
  data = CFDataGetBytePtr(a2);
LABEL_47:
  *a5 = v27;
  *(a5 + 8) = data;
  *(a5 + 16) = v21;
  *(a5 + 24) = v15;
  *(a5 + 32) = a4;
  *(a5 + 33) = -1431655766;
  result = 1;
  *(a5 + 36) = -1431655766;
  return result;
}

const __CFData *make_public_key(__SecKey *a1, uint64_t a2, char *a3, CFErrorRef *error)
{
  if (!a1)
  {
    return 0;
  }

  v8 = SecKeyCopyExternalRepresentation(a1, error);
  if (v8)
  {
    if (SecKeyGetAlgorithmId(a1) == 1)
    {
      v9 = 0;
      *a2 = 9;
      *(a2 + 8) = &_oidRsa;
      *(a2 + 16) = asn1_null;
LABEL_5:
      *a3 = v9;
      *(a2 + 40) = CFDataGetBytePtr(v8);
      *(a2 + 32) = 8 * CFDataGetLength(v8);
      return v8;
    }

    if (SecKeyGetAlgorithmId(a1) == 3)
    {
      *a2 = 7;
      *(a2 + 8) = &_oidEcPubKey;
      v10 = SecECKeyGetNamedCurve(a1) - 23;
      if (v10 <= 2)
      {
        v11 = *(&off_1E70DE980 + v10);
        v12 = **(&off_1E70DE968 + v10);
        v13 = malloc_type_malloc(v12 + 2, qword_188963590[v10]);
        memcpy(v13 + 2, *v11, v12);
        *v13 = 6;
        v13[1] = v12;
        *(a2 + 16) = v12 + 2;
        *(a2 + 24) = v13;
        v9 = 1;
        goto LABEL_5;
      }

      SecError(-4, error, @"unsupported EC curve");
    }

    else
    {
      SecError(-4, error, @"unsupported key algorithmId");
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

void *nss_attributes_from_parameters_dict(uint64_t a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"csrChallengePassword");
  v5 = Value;
  if (Value)
  {
    Length = CFStringGetLength(Value);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v8 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = MaximumSizeForEncoding;
    }

    v10 = PORT_ArenaAlloc(a1, v9);
    v11 = v10;
    if (v10)
    {
      bzero(v10, v9);
    }

    if (CFStringGetCString(v5, v11, v8, 0x600u))
    {
      if (printable_string(v5, 0))
      {
        v12 = kSecAsn1PrintableStringTemplate;
      }

      else
      {
        v12 = kSecAsn1UTF8StringTemplate;
      }
    }

    else
    {
      if (!CFStringGetCString(v5, v11, v8, 0x8000100u))
      {
        v24 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39[0]) = 0;
          v25 = "csr: unable to get challenge bytes";
          v34 = v39;
LABEL_51:
          _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, v25, v34, 2u);
          return 0;
        }

        return 0;
      }

      v12 = kSecAsn1UTF8StringTemplate;
    }

    v17 = PORT_ArenaAlloc(a1, 0x10uLL);
    v18 = v17;
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
    }

    v39[0] = strlen(v11);
    v39[1] = v11;
    if (!SEC_ASN1EncodeItem(a1, v18, v39, v12))
    {
      v24 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 0;
      v25 = "csr: failed to encode challenge";
      goto LABEL_50;
    }

    v19 = PORT_ArenaAlloc(a1, 0x10uLL);
    v13 = v19;
    if (v19)
    {
      v19[1] = 0;
    }

    *v19 = v18;
    v16 = 1;
    v14 = &pkcs9ChallengePassword_9898;
    v15 = 9;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v39[0] = 0;
  if ((extensions_from_parameters(a1, theDict, v39, 0) & 1) == 0)
  {
    v24 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v25 = "csr: failed to encode extensions";
LABEL_50:
    v34 = buf;
    goto LABEL_51;
  }

  v20 = v39[0];
  if (!v39[0])
  {
    v36 = 0;
    v37 = 0;
    v23 = 0;
    goto LABEL_32;
  }

  v21 = PORT_ArenaAlloc(a1, 0x10uLL);
  v22 = v21;
  if (v21)
  {
    *v21 = 0;
    v21[1] = 0;
  }

  if (!SEC_ASN1EncodeItem(a1, v21, v39, &kSecAsn1SequenceOfCertExtensionTemplate))
  {
    v24 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "csr: failed to encode extension attributes";
      goto LABEL_50;
    }

    return 0;
  }

  v23 = PORT_ArenaAlloc(a1, 0x10uLL);
  *v23 = v22;
  v23[1] = 0;
  ++v16;
  v36 = 9;
  v37 = &pkcs9ExtensionsRequested;
LABEL_32:
  if (8 * (v16 + 1) <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 8 * (v16 + 1);
  }

  v27 = PORT_ArenaAlloc(a1, v26);
  v28 = v27;
  if (v27)
  {
    bzero(v27, v26);
  }

  if (24 * v16 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 24 * v16;
  }

  v30 = PORT_ArenaAlloc(a1, v29);
  v31 = v30;
  if (v30)
  {
    bzero(v30, v29);
  }

  if (v5)
  {
    v32 = &v31[24 * --v16];
    *v32 = v15;
    v32[1] = v14;
    v32[2] = v13;
    v28[v16] = v32;
  }

  if (v20)
  {
    v33 = &v31[24 * v16 - 24];
    *v33 = v36;
    v33[1] = v37;
    v33[2] = v23;
    v28[v16 - 1] = v33;
  }

  return v28;
}

CFDataRef make_signature(const UInt8 *a1, CFIndex a2, __SecKey *a3, const void *a4, DERSize *a5, __CFString **a6)
{
  AlgorithmId = SecKeyGetAlgorithmId(a3);
  if (AlgorithmId == 3)
  {
    if (!a4 || kSecCMSHashingAlgorithmSHA256 && CFEqual(a4, kSecCMSHashingAlgorithmSHA256))
    {
      v20 = &oidSha256Ecdsa;
      v21 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
    }

    else if (kSecCMSHashingAlgorithmSHA384 && CFEqual(a4, kSecCMSHashingAlgorithmSHA384))
    {
      v20 = &oidSha384Ecdsa;
      v21 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA384;
    }

    else
    {
      if (!kSecCMSHashingAlgorithmSHA512 || !CFEqual(a4, kSecCMSHashingAlgorithmSHA512))
      {
        v15 = 0;
LABEL_18:
        a5[2] = 0;
        a5[3] = 0;
        if (v15)
        {
          goto LABEL_9;
        }

LABEL_19:
        SecError(-4, a6, @"unsupported key or hashing algorithm");
        return 0;
      }

      v20 = &oidSha512Ecdsa;
      v21 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA512;
    }

    v15 = *v21;
    v23 = v20;
    data = v20->data;
    *a5 = v23->length;
    a5[1] = data;
    goto LABEL_18;
  }

  if (AlgorithmId != 1)
  {
    goto LABEL_19;
  }

  if (!a4 || kSecCMSHashingAlgorithmSHA1 && CFEqual(a4, kSecCMSHashingAlgorithmSHA1))
  {
    v13 = &oidSha1Rsa;
    v14 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1;
LABEL_7:
    v15 = *v14;
    v17 = v13;
    v16 = v13->data;
    *a5 = v17->length;
    a5[1] = v16;
    goto LABEL_8;
  }

  if (kSecCMSHashingAlgorithmSHA256 && CFEqual(a4, kSecCMSHashingAlgorithmSHA256))
  {
    v13 = &oidSha256Rsa;
    v14 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256;
    goto LABEL_7;
  }

  if (kSecCMSHashingAlgorithmSHA384 && CFEqual(a4, kSecCMSHashingAlgorithmSHA384))
  {
    v13 = &oidSha384Rsa;
    v14 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384;
    goto LABEL_7;
  }

  if (kSecCMSHashingAlgorithmSHA512 && CFEqual(a4, kSecCMSHashingAlgorithmSHA512))
  {
    v13 = &oidSha512Rsa;
    v14 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:
  *(a5 + 1) = asn1_null;
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  Signature = 0;
  if (a1)
  {
    if (a2)
    {
      v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a1, a2, *MEMORY[0x1E695E498]);
      Signature = SecKeyCreateSignature(a3, v15, v19, a6);
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  return Signature;
}

uint64_t printable_string(const __CFString *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 '()+,-./:=?@");
  InvertedSet = CFCharacterSetCreateInvertedSet(v4, v5);
  v7 = CFCharacterSetCreateWithCharactersInString(v4, @"@");
  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  if (CFStringFindCharacterFromSet(a1, InvertedSet, v9, 0, 0))
  {
    v2 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10.length = CFStringGetLength(a1);
  v10.location = 0;
  if (CFStringFindCharacterFromSet(a1, v7, v10, 0, 0))
  {
    v2 = v2;
  }

  else
  {
    v2 = 1;
  }

  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

LABEL_4:
  if (InvertedSet)
  {
    CFRelease(InvertedSet);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v2;
}

uint64_t extensions_from_parameters(uint64_t a1, const __CFDictionary *a2, void *a3, __CFString **a4)
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = PORT_ArenaAlloc(a1, 0x58uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 80) = 0;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
  }

  v10 = PORT_ArenaAlloc(a1, 0x1E0uLL);
  v11 = v10;
  if (v10)
  {
    v10[28] = 0u;
    v10[29] = 0u;
    v10[26] = 0u;
    v10[27] = 0u;
    v10[24] = 0u;
    v10[25] = 0u;
    v10[22] = 0u;
    v10[23] = 0u;
    v10[20] = 0u;
    v10[21] = 0u;
    v10[18] = 0u;
    v10[19] = 0u;
    v10[16] = 0u;
    v10[17] = 0u;
    v10[14] = 0u;
    v10[15] = 0u;
    v10[12] = 0u;
    v10[13] = 0u;
    v10[10] = 0u;
    v10[11] = 0u;
    v10[8] = 0u;
    v10[9] = 0u;
    v10[6] = 0u;
    v10[7] = 0u;
    v10[4] = 0u;
    v10[5] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
  }

  cf = 0;
  Value = CFDictionaryGetValue(a2, @"basicConstraintsCA");
  v13 = CFDictionaryGetValue(a2, @"basicConstraints");
  if (Value | v13)
  {
    if (Value == *MEMORY[0x1E695E4C0] && v13 != 0)
    {
      SecError(-50, &cf, @"non-CA cert does not support path len");
LABEL_81:
      if (cf)
      {
        v72 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(context) = 138412290;
          *(&context + 4) = cf;
          _os_log_impl(&dword_1887D2000, v72, OS_LOG_TYPE_DEFAULT, "csr: extension encoding failed: %@", &context, 0xCu);
        }

        v73 = cf;
        if (a4)
        {
          if (cf)
          {
            CFRetain(cf);
            v74 = cf;
          }

          else
          {
            v74 = 0;
          }

          *a4 = v73;
          v73 = v74;
        }

        if (v73)
        {
          cf = 0;
          CFRelease(v73);
        }
      }

      result = 0;
      goto LABEL_92;
    }

    if (Value == *MEMORY[0x1E695E4C0])
    {
      v15 = &asn1_false;
    }

    else
    {
      v15 = &asn1_true;
    }

    context = *v15;
    v86 = 0;
    v87 = 0;
    LOBYTE(v83) = -86;
    if (v13)
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v13, kCFNumberIntType, &valuePtr))
      {
        SecError(-50, &cf, @"failed to get basic constraints path length value");
        goto LABEL_81;
      }

      if (valuePtr <= 0xFF)
      {
        LOBYTE(v83) = valuePtr;
        v86 = 1;
        v87 = &v83;
      }
    }

    *v11 = 3;
    v11[1] = &_oidBasicConstraints;
    *(v11 + 1) = asn1_true;
    if (!SEC_ASN1EncodeItem(a1, v11 + 4, &context, &kSecAsn1BasicConstraintsTemplate))
    {
      SecError(-50, &cf, @"failed to encode basic constraints extension");
      goto LABEL_81;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(a2, @"subjectAltName");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFDictionaryGetTypeID())
    {
      SecError(-50, &cf, @"wrong value type for subjectAltName");
      goto LABEL_81;
    }

    valuePtr = 0uLL;
    context = a1;
    v86 = 0;
    v87 = a4;
    CFDictionaryApplyFunction(v18, make_general_names, &context);
    if (8 * (v86 + 1) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 8 * (v86 + 1);
    }

    v21 = PORT_ArenaAlloc(a1, v20);
    v22 = v21;
    if (v21)
    {
      bzero(v21, v20);
    }

    v23 = &v11[6 * v16];
    if (v86)
    {
      v24 = 0;
      v25 = 16 * v86;
      v26 = v22;
      do
      {
        *v26++ = *(&context + 1) + v24;
        v24 += 16;
      }

      while (v25 != v24);
    }

    v83 = v22;
    if (!SEC_ASN1EncodeItem(a1, &valuePtr, &v83, kSecAsn1SequenceOfAnyTemplate))
    {
      SecError(-26276, a4, @"failed to encode SubjectAltName");
    }

    *(v23 + 2) = valuePtr;
    *v23 = 3;
    v23[1] = &_oidSubjectAltName;
    ++v16;
  }

  theDict = a2;
  v27 = CFDictionaryGetValue(a2, @"certificateEKUs");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 != CFArrayGetTypeID())
    {
      SecError(-50, &cf, @"wrong value type for EKU");
      goto LABEL_81;
    }

    v77 = v16;
    v78 = a3;
    v79 = a4;
    context = 0uLL;
    Count = CFArrayGetCount(v28);
    v31 = Count;
    if ((8 * Count + 8) <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 8 * Count + 8;
    }

    v33 = PORT_ArenaAlloc(a1, v32);
    v34 = v33;
    if (v33)
    {
      bzero(v33, v32);
    }

    if (v31 >= 1)
    {
      v35 = 0;
      v36 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v28, v35);
        if (!ValueAtIndex || (v38 = ValueAtIndex, v39 = CFGetTypeID(ValueAtIndex), v39 != CFStringGetTypeID()) || !SecCertificateIsOidString(v38))
        {
          v70 = @"eku is not an OID";
          goto LABEL_75;
        }

        OidDataFromString = SecCertificateCreateOidDataFromString(0, v38);
        if (!OidDataFromString)
        {
          break;
        }

        v41 = OidDataFromString;
        v34[v35] = PORT_ArenaAlloc(a1, 0x10uLL);
        *v34[v35] = CFDataGetLength(v41);
        Length = CFDataGetLength(v41);
        *(v34[v35] + 8) = PORT_ArenaAlloc(a1, Length);
        v43 = *(v34[v35] + 8);
        BytePtr = CFDataGetBytePtr(v41);
        v45 = CFDataGetLength(v41);
        memcpy(v43, BytePtr, v45);
        CFRelease(v41);
        v35 = v36;
        if (v31 <= v36++)
        {
          goto LABEL_48;
        }
      }

      v70 = @"failed to create EKU data";
LABEL_75:
      v71 = -50;
      goto LABEL_79;
    }

LABEL_48:
    *&valuePtr = v34;
    if (!SEC_ASN1EncodeItem(a1, &context, &valuePtr, kSecAsn1SequenceOfObjectIDTemplate))
    {
      v70 = @"failed to encode EKUs";
      v71 = -26276;
LABEL_79:
      a4 = v79;
      SecError(v71, v79, v70);
      SecError(-50, &cf, @"failed to make EKU extension");
      goto LABEL_81;
    }

    v47 = &v11[6 * v77];
    *(v47 + 2) = context;
    *v47 = 3;
    v47[1] = &_oidExtendedKeyUsage;
    v16 = v77 + 1;
    a3 = v78;
    a4 = v79;
  }

  v48 = CFDictionaryGetValue(theDict, @"keyUsage");
  v81 = 0uLL;
  if (v48)
  {
    v49 = v48;
    v50 = CFGetTypeID(v48);
    if (v50 != CFNumberGetTypeID() || (LODWORD(valuePtr) = -1431655766, !CFNumberGetValue(v49, kCFNumberIntType, &valuePtr)))
    {
      SecError(-50, &cf, @"failed to get key usage value");
      goto LABEL_81;
    }

    v51 = valuePtr;
    if (valuePtr >= 1)
    {
      LODWORD(v52) = 0;
      v53 = 0;
      v54 = 0x80000000;
      for (i = 1; i != 10; ++i)
      {
        v53 |= ((v51 << 31) >> 31) & v54;
        if (v51)
        {
          v52 = i;
        }

        else
        {
          v52 = v52;
        }

        v51 >>= 1;
        v54 >>= 1;
      }

      LODWORD(valuePtr) = v51;
      LODWORD(v83) = v53;
      *&context = v52;
      *(&context + 1) = &v83 - (v52 >> 3) + 3;
      if (!SEC_ASN1EncodeItem(a1, &v81, &context, kSecAsn1BitStringTemplate))
      {
        SecError(-26276, &cf, @"failed to encode keyUsage");
        goto LABEL_81;
      }

      v56 = &v11[6 * v16];
      *v56 = 3;
      v56[1] = &_oidKeyUsage;
      *(v56 + 1) = asn1_true;
      *(v56 + 2) = v81;
      ++v16;
    }
  }

  v57 = v16;
  v58 = CFDictionaryGetValue(theDict, @"certificateExtensions");
  if (v58)
  {
    v59 = v58;
    v60 = CFGetTypeID(v58);
    if (v60 != CFDictionaryGetTypeID())
    {
      v76 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(context) = 0;
        _os_log_impl(&dword_1887D2000, v76, OS_LOG_TYPE_DEFAULT, "csr: wrong value type for custom extensions", &context, 2u);
      }

      goto LABEL_81;
    }

    *&context = a1;
    *(&context + 1) = v11;
    v86 = v16 | 0xA00000000;
    v87 = 0xAAAAAAAAAAAAAA01;
    v88 = a4;
    CFDictionaryApplyFunction(v59, add_custom_extension, &context);
    v57 = v86;
  }

  v61 = CFDictionaryGetValue(theDict, @"certificateExtensionsEncoded");
  if (v61)
  {
    v62 = v61;
    v63 = CFGetTypeID(v61);
    if (v63 != CFDictionaryGetTypeID())
    {
      SecError(-50, &cf, @"wrong value type for custom extensions");
      goto LABEL_81;
    }

    *&context = a1;
    *(&context + 1) = v11;
    v86 = v57 | 0xA00000000;
    v87 = 0xAAAAAAAAAAAAAA00;
    v88 = a4;
    CFDictionaryApplyFunction(v62, add_custom_extension, &context);
    v57 = v86;
  }

  if (v57)
  {
    v64 = v57;
    v65 = v9;
    v66 = v11;
    do
    {
      v67 = *v66;
      v66 += 6;
      if (v67)
      {
        v68 = v11;
      }

      else
      {
        v68 = 0;
      }

      *v65++ = v68;
      v11 = v66;
      --v64;
    }

    while (v64);
  }

  *a3 = v9;
  result = 1;
LABEL_92:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t add_custom_extension(CFStringRef theString, const __CFString *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (*(a3 + 16) >= *(a3 + 20))
  {
    v15 = @"too many extensions";
  }

  else
  {
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v6 = oid_der_data(*a3, theString, &v21);
    v20 = 0uLL;
    v7 = CFGetTypeID(a2);
    if (v7 == CFStringGetTypeID())
    {
      if (*(a3 + 24))
      {
        Length = CFStringGetLength(a2);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        if (MaximumSizeForEncoding <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = MaximumSizeForEncoding;
        }

        v11 = PORT_ArenaAlloc(*a3, v10);
        v12 = v11;
        if (v11)
        {
          bzero(v11, v10);
        }

        if (CFStringGetCString(a2, v12, MaximumSizeForEncoding, 0x8000100u))
        {
          v18 = strlen(v12);
          BytePtr = v12;
          result = SEC_ASN1EncodeItem(*a3, &v20, &v18, kSecAsn1UTF8StringTemplate);
          if (!result)
          {
            result = SecError(-26276, v3, @"failed to encode extension string");
          }

LABEL_20:
          if (v6)
          {
            if (v20)
            {
              *(*(a3 + 8) + 48 * *(a3 + 16) + 32) = v20;
              v16 = *(a3 + 16);
              v17 = (*(a3 + 8) + 48 * v16);
              *v17 = v21;
              v17[1] = v6;
              *(a3 + 16) = v16 + 1;
            }
          }

          return result;
        }

        v15 = @"failed to get custom extension string bytes";
      }

      else
      {
        v15 = @"encoded extensions must be a data type";
      }
    }

    else
    {
      v14 = CFGetTypeID(a2);
      if (v14 == CFDataGetTypeID())
      {
        if (*(a3 + 24) == 1)
        {
          v18 = CFDataGetLength(a2);
          BytePtr = CFDataGetBytePtr(a2);
          result = SEC_ASN1EncodeItem(*a3, &v20, &v18, kSecAsn1OctetStringTemplate);
          if (!result)
          {
            result = SecError(-26276, v3, @"failed to encode extension data");
          }
        }

        else
        {
          *&v20 = CFDataGetLength(a2);
          result = CFDataGetBytePtr(a2);
          *(&v20 + 1) = result;
        }

        goto LABEL_20;
      }

      v15 = @"unsupported custom extensions value type";
    }
  }

  return SecError(-50, v3, v15);
}

uint64_t oid_der_data(uint64_t a1, CFStringRef theString, void *a3)
{
  if (CFStringGetLength(theString) > 0x3FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v7 = ((4 * Length) * 0x2492492492492493uLL) >> 64;
  v8 = PORT_ArenaAlloc(a1, ((v7 + ((4 * Length - v7) >> 1)) >> 2) + 1);
  if (v8)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @".");
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    v11 = v8;
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = 0;
      v11 = v8;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v13);
        IntValue = CFStringGetIntValue(ValueAtIndex);
        v17 = IntValue >= 0 ? IntValue : -IntValue;
        if (v17 == 0x7FFFFFFF)
        {
          break;
        }

        if (v13)
        {
          if (v13 == 1)
          {
            v18 = IntValue + 40 * v14;
          }

          else
          {
            v18 = IntValue;
          }

          v11 = mod128_oid_encoding_ptr(v11, v18, 1);
        }

        else
        {
          v14 = IntValue;
        }

        if (v12 == ++v13)
        {
          goto LABEL_16;
        }
      }

      if (ArrayBySeparatingStrings)
      {
        CFRelease(ArrayBySeparatingStrings);
      }

      return 0;
    }

LABEL_16:
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    *a3 = &v11[-v8];
  }

  return v8;
}

_BYTE *mod128_oid_encoding_ptr(_BYTE *a1, unsigned int a2, int a3)
{
  v4 = a2;
  if (a2 >= 0x81)
  {
    a1 = mod128_oid_encoding_ptr(a1, a2 >> 7, 0);
  }

  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x80;
  }

  *a1 = v5 & 0x80 | v4 & 0x7F;
  return a1 + 1;
}

void make_general_names(const __CFString *a1, const __CFString *cf, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_57;
  }

  v6 = *(a3 + 24);
  v7 = CFGetTypeID(cf);
  if (v7 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
    v9 = 0;
    v10 = cf;
    if (!a1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v11 = CFGetTypeID(cf);
    if (v11 != CFStringGetTypeID())
    {
      v21 = *MEMORY[0x1E69E9840];
      v22 = @"unsupported subjectAltName value type";
      goto LABEL_33;
    }

    v10 = 0;
    Count = 1;
    v9 = cf;
    if (!a1)
    {
      goto LABEL_57;
    }
  }

  if (Count < 1)
  {
    goto LABEL_57;
  }

  v12 = CFGetTypeID(a1);
  if (v12 != CFStringGetTypeID())
  {
    v43 = *MEMORY[0x1E69E9840];
    v22 = @"unsupported subjectAltName key type";
    goto LABEL_33;
  }

  if (*(a3 + 8))
  {
    v13 = *(a3 + 16);
    if (v13 != *(a3 + 20))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(a3 + 20);
  }

  if (v13)
  {
    v14 = 2 * v13;
  }

  else
  {
    v14 = 10;
  }

  if (16 * v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 16 * v14;
  }

  v16 = PORT_ArenaAlloc(*a3, v15);
  v17 = v16;
  if (v16)
  {
    bzero(v16, v15);
  }

  v18 = *(a3 + 8);
  if (v18)
  {
    memcpy(v17, v18, *(a3 + 20));
  }

  *(a3 + 8) = v17;
  *(a3 + 20) = v14;
LABEL_24:
  v51 = 0;
  v52 = 0;
  memset(v54, 0, sizeof(v54));
  if (CFStringCompare(@"dNSName", a1, 1uLL) == kCFCompareEqualTo)
  {
    v19 = 2;
    goto LABEL_37;
  }

  v19 = 1;
  if (CFStringCompare(@"rfc822Name", a1, 1uLL) == kCFCompareEqualTo)
  {
LABEL_37:
    v53 = v19;
    if (v10)
    {
      v23 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v23);
        v25 = CFGetTypeID(ValueAtIndex);
        if (v25 != CFStringGetTypeID())
        {
          SecError(-50, v6, @"subjectAltName value is not a string");
          goto LABEL_57;
        }

        Length = CFStringGetLength(ValueAtIndex);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        if (MaximumSizeForEncoding <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = MaximumSizeForEncoding;
        }

        v29 = PORT_ArenaAlloc(*a3, v28);
        v30 = v29;
        if (v29)
        {
          bzero(v29, v28);
        }

        if (!CFStringGetCString(ValueAtIndex, v30, MaximumSizeForEncoding, 0x600u))
        {
          break;
        }

        v52 = v30;
        v51 = strlen(v30);
        SEC_ASN1EncodeItem(*a3, (*(a3 + 8) + 16 * *(a3 + 16)), &v51, &kSecAsn1GeneralNameTemplate);
        ++*(a3 + 16);
        if (Count == ++v23)
        {
          goto LABEL_57;
        }
      }

      SecError(-50, v6, @"failed to get subjectAltName value bytes");
      goto LABEL_57;
    }

    if (!v9)
    {
      goto LABEL_57;
    }

    v31 = CFStringGetLength(v9);
    v32 = CFStringGetMaximumSizeForEncoding(v31, 0x8000100u);
    if (v32 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    v34 = PORT_ArenaAlloc(*a3, v33);
    v35 = v34;
    if (v34)
    {
      bzero(v34, v33);
    }

    if (CFStringGetCString(v9, v35, v32, 0x600u))
    {
      v52 = v35;
      v51 = strlen(v35);
      SEC_ASN1EncodeItem(*a3, (*(a3 + 8) + 16 * *(a3 + 16)), &v51, &kSecAsn1GeneralNameTemplate);
LABEL_56:
      ++*(a3 + 16);
      goto LABEL_57;
    }

    v44 = *MEMORY[0x1E69E9840];
    v22 = @"failed to get subjectAltName value bytes";
    goto LABEL_33;
  }

  if (CFStringCompare(@"uniformResourceIdentifier", a1, 1uLL) == kCFCompareEqualTo)
  {
    v19 = 6;
    goto LABEL_37;
  }

  if (CFStringCompare(@"iPAddress", a1, 1uLL))
  {
    if (CFStringCompare(@"ntPrincipalName", a1, 1uLL))
    {
      v20 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "csr: unsupported SubjectAltName type, skipping", &v46, 2u);
      }

      goto LABEL_57;
    }

    v55 = 0x143782010401062BLL;
    v56 = 770;
    if (!v9)
    {
      SecError(-50, v6, @"NTPrincipalName types do not allow multiple values");
      goto LABEL_57;
    }

    v39 = CFGetTypeID(v9);
    if (v39 == CFStringGetTypeID())
    {
      v40 = CFStringGetLength(cf);
      v41 = CFStringGetMaximumSizeForEncoding(v40, 0x8000100u);
      v42 = PORT_ArenaAlloc(*a3, v41);
      if (!CFStringGetCString(cf, v42, v41, 0x8000100u))
      {
        SecError(-50, v6, @"failed to get NTPrincipalName value bytes");
        goto LABEL_57;
      }

      v46 = 10;
      v47 = &v55;
      v48 = strlen(v42);
      v49 = v42;
      if (!SEC_ASN1EncodeItem(*a3, (*(a3 + 8) + 16 * *(a3 + 16)), &v46, &my_other_name_template_cons))
      {
        SecError(-26276, v6, @"failed to encode NTPrincipalName", v46, v47);
      }

      goto LABEL_56;
    }

LABEL_57:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v9)
  {
    if (v10)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = __make_general_names_block_invoke;
      context[3] = &__block_descriptor_tmp_9943;
      context[4] = a3;
      v59.length = CFArrayGetCount(v10);
      v59.location = 0;
      CFArrayApplyFunction(v10, v59, apply_block_1_9953, context);
    }

    goto LABEL_57;
  }

  v37 = CFGetTypeID(v9);
  if (v37 == CFStringGetTypeID())
  {
    v38 = *MEMORY[0x1E69E9840];

    add_ip_to_gn(a3, v9);
    return;
  }

  v45 = *MEMORY[0x1E69E9840];
  v22 = @"iPAddress value is not a string";
LABEL_33:

  SecError(-50, v6, v22);
}

void add_ip_to_gn(uint64_t a1, const __CFString *a2)
{
  memset(v11, 0, sizeof(v11));
  v10 = 7;
  v3 = *(a1 + 24);
  theData = 0;
  if (convertIPAddress(a2, &theData) && (v4 = theData) != 0)
  {
    Length = CFDataGetLength(theData);
    if (Length <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = Length;
    }

    v7 = PORT_ArenaAlloc(*a1, v6);
    v8 = v7;
    if (v7)
    {
      bzero(v7, v6);
    }

    v14.location = 0;
    v14.length = Length;
    CFDataGetBytes(v4, v14, v8);
    v9[0] = Length;
    v9[1] = v8;
    if (!SEC_ASN1EncodeItem(*a1, (*(a1 + 8) + 16 * *(a1 + 16)), v9, &kSecAsn1GeneralNameTemplate))
    {
      SecError(-26276, v3, @"failed to encode iPAddress");
    }

    ++*(a1 + 16);
    CFRelease(v4);
  }

  else
  {

    SecError(-50, v3, @"failed to copy iPAddress");
  }
}

void __make_general_names_block_invoke(uint64_t a1, const __CFString *cf)
{
  v4 = CFGetTypeID(cf);
  TypeID = CFStringGetTypeID();
  v6 = *(a1 + 32);
  if (v4 == TypeID)
  {

    add_ip_to_gn(v6, cf);
  }

  else
  {
    v7 = *(v6 + 24);

    SecError(-50, v7, @"iPAddress value is not a string");
  }
}

CFDataRef SecGenerateCertificateRequest(const __CFArray *a1, const __CFDictionary *a2, void *a3, __SecKey *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = PORT_NewArena(1024);
  v44 = 0;
  error = 0;
  if (v8)
  {
    v9 = v8;
    BytePtr = 0;
    v41 = 0u;
    memset(v40, 0, sizeof(v40));
    v39 = 0u;
    *v38 = 0u;
    v37 = 0u;
    v33 = 0;
    *v34 = 1;
    v35 = &v33;
    subject = make_subject(v8, a1, &error);
    if (a4)
    {
      v10 = SecKeyCopyPublicKey(a4);
      if (v10)
      {
LABEL_7:
        public_key = make_public_key(v10, &v37, &v44, &error);
        if (public_key)
        {
          v13 = public_key;
          *&v40[0] = nss_attributes_from_parameters_dict(v9, a2);
          SecCmsArraySortByDER(*&v40[0], &kSecAsn1AttributeTemplate, 0);
          v31 = 0;
          v32 = 0;
          if (!SEC_ASN1EncodeItem(v9, &v31, v34, &kSecAsn1CertRequestInfoTemplate))
          {
            v14 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "csr: failed to encode request info", buf, 2u);
            }
          }

          if (a2)
          {
            Value = CFDictionaryGetValue(a2, kSecCMSSignHashAlgorithm);
          }

          else
          {
            Value = 0;
          }

          signature = make_signature(v32, v31, a4, Value, v40 + 1, &error);
          if (signature)
          {
            v19 = signature;
            BytePtr = CFDataGetBytePtr(signature);
            *(&v41 + 1) = 8 * CFDataGetLength(v19);
            v29 = 0;
            v30 = 0;
            if (SEC_ASN1EncodeItem(v9, &v29, v34, &kSecAsn1CertRequestTemplate))
            {
              v17 = CFDataCreate(*MEMORY[0x1E695E480], v30, v29);
              v20 = 0;
LABEL_24:
              if (v44 == 1)
              {
                free(v38[1]);
              }

              PORT_FreeArena(v9, 1);
              if ((v20 & 1) == 0)
              {
                CFRelease(v10);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              if (v19)
              {
                CFRelease(v19);
              }

              if (error)
              {
                v22 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = error;
                  _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "csr: cert request encoding failed: %@", buf, 0xCu);
                }

                v23 = error;
                if (error)
                {
                  error = 0;
                  CFRelease(v23);
                }
              }

              goto LABEL_37;
            }

            v28 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "csr: failed to encode cert request", buf, 2u);
            }

            v20 = 0;
          }

          else
          {
            v27 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "csr: failed to create CSR signature", buf, 2u);
            }

            v20 = 0;
            v19 = 0;
          }
        }

        else
        {
          v26 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "csr: failed to encode public key", buf, 2u);
          }

          v20 = 0;
          v19 = 0;
          v13 = 0;
        }

        v17 = 0;
        goto LABEL_24;
      }
    }

    v11 = secLogObjForScope("csr");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "unable to create public key from private, using input public key", buf, 2u);
      if (a3)
      {
        goto LABEL_6;
      }
    }

    else if (a3)
    {
LABEL_6:
      CFRetain(a3);
      v10 = a3;
      goto LABEL_7;
    }

    v21 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "csr: failed to get public key", buf, 2u);
    }

    v10 = 0;
    v19 = 0;
    v13 = 0;
    v17 = 0;
    v20 = 1;
    goto LABEL_24;
  }

  v16 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "csr: pool allocation failure", v34, 2u);
  }

  v17 = 0;
LABEL_37:
  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

void *make_subject(uint64_t a1, CFArrayRef theArray, __CFString **a3)
{
  if (!theArray)
  {
    return 0;
  }

  v4 = theArray;
  Count = CFArrayGetCount(theArray);
  v7 = Count;
  v8 = 8 * Count;
  if ((8 * Count + 8) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 8 * Count + 8;
  }

  v10 = PORT_ArenaAlloc(a1, v9);
  v11 = v10;
  if (v10)
  {
    bzero(v10, v9);
  }

  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = PORT_ArenaAlloc(a1, v12);
  v14 = v13;
  if (v13)
  {
    bzero(v13, v12);
  }

  if (v7 >= 1)
  {
    v15 = 0;
    v33 = v11;
    v34 = v4;
    v31 = v14;
    v32 = v7;
    while (1)
    {
      v16 = &v14[8 * v15];
      v11[v15] = v16;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v15);
      v18 = CFArrayGetCount(ValueAtIndex);
      v19 = v18;
      if ((8 * v18 + 8) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 8 * v18 + 8;
      }

      v21 = PORT_ArenaAlloc(a1, v20);
      v22 = v21;
      if (v21)
      {
        bzero(v21, v20);
      }

      *v16 = v22;
      v23 = (40 * v19) <= 1 ? 1 : 40 * v19;
      v24 = PORT_ArenaAlloc(a1, v23);
      v25 = v24;
      if (v24)
      {
        bzero(v24, v23);
      }

      if (v19 >= 1)
      {
        break;
      }

LABEL_29:
      ++v15;
      v11 = v33;
      v4 = v34;
      v14 = v31;
      if (v15 == v32)
      {
        return v11;
      }
    }

    v26 = 0;
    while (1)
    {
      *(*v16 + 8 * v26) = v25;
      v27 = CFArrayGetValueAtIndex(ValueAtIndex, v26);
      if (CFArrayGetCount(v27) != 2)
      {
        break;
      }

      v28 = CFArrayGetValueAtIndex(v27, 0);
      v29 = CFArrayGetValueAtIndex(v27, 1);
      if ((make_nss_atv(a1, v28, v29, 0, v25, a3) & 1) == 0)
      {
        return 0;
      }

      ++v26;
      v25 += 40;
      if (v19 == v26)
      {
        goto LABEL_29;
      }
    }

    SecError(-50, a3, @"subject input incorrect: 2 values required in ATV array");
    return 0;
  }

  return v11;
}

uint64_t SecVerifyCertificateRequest(const __CFData *a1, __SecKey **a2, CFStringRef *a3, CFDataRef *a4, CFDataRef *a5)
{
  v10 = PORT_NewArena(1024);
  v67 = 0u;
  *__n = 0u;
  *__s2 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  memset(v65, 0, sizeof(v65));
  v66 = 0u;
  v11 = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (SEC_ASN1Decode(v10, &v67, &kSecAsn1CertRequestTemplate, BytePtr, v11))
  {
    v14 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "csr: failed to decode CSR";
    goto LABEL_9;
  }

  if (SEC_ASN1Decode(v10, v65, &kSecAsn1SignedCertRequestTemplate, BytePtr, v11))
  {
    v14 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "csr: failed to decode CSR";
    goto LABEL_9;
  }

  v13 = __n[1];
  if (__n[1] == 9 && !memcmp(&_oidRsa, __s2[0], 9uLL))
  {
    v58 = a4;
    v17 = 1;
    allocator = *MEMORY[0x1E695E480];
    v18 = SecKeyCreate(*MEMORY[0x1E695E480], &kSecRSAPublicKeyDescriptor, v71, *(&v70 + 1) >> 3, 1);
    if (!v18)
    {
      v14 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v15 = "csr: failed to create RSA public key";
      goto LABEL_9;
    }

    v19 = v18;
    v20 = 0;
    Mutable = 0;
  }

  else
  {
    if (v13 != 7 || memcmp(&_oidEcPubKey, __s2[0], 7uLL))
    {
      v14 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v16 = 0;
        goto LABEL_100;
      }

      *buf = 0;
      v15 = "csr: unsupported public key algorithm in CSR";
LABEL_9:
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_10;
    }

    v58 = a4;
    allocator = *MEMORY[0x1E695E480];
    v20 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v71, *(&v70 + 1) >> 3, *MEMORY[0x1E695E498]);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"type", @"73");
    CFDictionaryAddValue(Mutable, @"kcls", @"0");
    v22 = SecKeyCreateWithData(v20, Mutable, 0);
    if (!v22)
    {
      v54 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v54, OS_LOG_TYPE_DEFAULT, "csr: failed to create EC public key", buf, 2u);
      }

      v16 = 0;
      v27 = 0;
      v26 = 0;
      if (!Mutable)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }

    v19 = v22;
    v17 = 0;
  }

  v23 = v72;
  if (v73)
  {
    if (v73 == 2)
    {
      if (**(&v73 + 1) == 5)
      {
        goto LABEL_18;
      }

      v25 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v25 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_30:
        _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "csr: non-empty signature algorithm parameters", buf, 2u);
      }
    }

    v26 = 0;
    v27 = 0;
    goto LABEL_32;
  }

LABEL_18:
  if (!v17)
  {
    if (v72 == 8 && !memcmp(&_oidSha256Ecdsa, *(&v72 + 1), 8uLL))
    {
      v24 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
    }

    else if (v23 == 8 && !memcmp(&_oidSha384Ecdsa, *(&v23 + 1), 8uLL))
    {
      v24 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA384;
    }

    else
    {
      if (v23 != 8 || memcmp(&_oidSha512Ecdsa, *(&v23 + 1), 8uLL))
      {
        goto LABEL_46;
      }

      v24 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA512;
    }

LABEL_45:
    v28 = *v24;
    if (*v24)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v72 == 9 && !memcmp(&_oidSha1Rsa, *(&v72 + 1), 9uLL))
  {
    v24 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1;
    goto LABEL_45;
  }

  if (v23 == 9 && !memcmp(&_oidSha256Rsa, *(&v23 + 1), 9uLL))
  {
    v24 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256;
    goto LABEL_45;
  }

  if (v23 == 9 && !memcmp(&_oidSha384Rsa, *(&v23 + 1), 9uLL))
  {
    v24 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384;
    goto LABEL_45;
  }

  if (v23 == 9 && !memcmp(&_oidSha512Rsa, *(&v23 + 1), 9uLL))
  {
    v24 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512;
    goto LABEL_45;
  }

LABEL_46:
  v29 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "csr: unsupported signature algorithm", buf, 2u);
  }

  v28 = 0;
LABEL_49:
  v57 = a5;
  v30 = *MEMORY[0x1E695E498];
  v26 = CFDataCreateWithBytesNoCopy(allocator, *(&v66 + 1), v66 >> 3, *MEMORY[0x1E695E498]);
  v31 = CFDataCreateWithBytesNoCopy(allocator, *(&v65[0] + 1), *&v65[0], v30);
  v27 = v31;
  v16 = 0;
  if (!v28 || !v26 || !v31)
  {
    goto LABEL_92;
  }

  if (!SecKeyVerifySignature(v19, v28, v31, v26, 0))
  {
    v52 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "csr: failed to verify signature in CSR";
LABEL_111:
      _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
    }

LABEL_32:
    v16 = 0;
    goto LABEL_92;
  }

  v55 = a2;
  v56 = a3;
  length = 0;
  bytes = 0;
  if (!SEC_ASN1EncodeItem(v10, &length, __n, &kSecAsn1NameTemplate))
  {
    v52 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "csr: failed to decode CSR subject name";
      goto LABEL_111;
    }

    goto LABEL_32;
  }

  v32 = v19;
  v33 = Mutable;
  v34 = v20;
  v35 = **(&v71 + 1);
  if (**(&v71 + 1))
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 1;
    do
    {
      if (*v35 == 9)
      {
        v41 = *(v35 + 8);
        if (*v41 == 0x9010DF78648862ALL && *(v41 + 8) == 7)
        {
          v47 = **(v35 + 16);
          v36 = *v47;
          v37 = v47[1];
        }

        else
        {
          v43 = *v41;
          v44 = *(v41 + 8);
          if (v43 == 0x9010DF78648862ALL && v44 == 14)
          {
            v46 = **(v35 + 16);
            v38 = *v46;
            v39 = v46[1];
          }
        }
      }

      v35 = *(*(&v71 + 1) + 8 * v40++);
    }

    while (v35);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v39 = 0;
    v38 = 0;
  }

  if (v58 && length)
  {
    *v58 = CFDataCreate(allocator, bytes, length);
  }

  if (v57 && v38)
  {
    *v57 = CFDataCreate(allocator, v39, v38);
  }

  v20 = v34;
  Mutable = v33;
  v19 = v32;
  if (v56 && v36)
  {
    *buf = 0;
    v62 = 0;
    if (!SEC_ASN1Decode(v10, buf, kSecAsn1UTF8StringTemplate, v37, v36))
    {
      goto LABEL_86;
    }

    v48 = secLogObjForScope("csr");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *v60 = 0;
      _os_log_debug_impl(&dword_1887D2000, v48, OS_LOG_TYPE_DEBUG, "challenge failed to decode with UTF8, attempting PrintableString", v60, 2u);
    }

    if (SEC_ASN1Decode(v10, buf, kSecAsn1PrintableStringTemplate, v37, v36))
    {
      v49 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&dword_1887D2000, v49, OS_LOG_TYPE_DEFAULT, "csr: failed to decode challenge", v60, 2u);
      }

      v50 = 0;
    }

    else
    {
LABEL_86:
      v50 = CFStringCreateWithBytes(allocator, v62, *buf, 0x8000100u, 0);
    }

    *v56 = v50;
  }

  if (v55)
  {
    *v55 = v32;
    v16 = 1;
    if (!Mutable)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v16 = 1;
LABEL_92:
  CFRelease(v19);
  if (Mutable)
  {
LABEL_93:
    CFRelease(Mutable);
  }

LABEL_94:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_100:
  if (v10)
  {
    PORT_FreeArena(v10, 1);
  }

  return v16;
}

void *SecGenerateSelfSignedCertificateWithError(const __CFArray *a1, const __CFDictionary *a2, uint64_t a3, __SecKey *a4, __CFString **a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = PORT_NewArena(1024);
  v48 = 0;
  error = 0;
  if (!v9)
  {
    SecError(-67672, a5, @"pool allocation failure");
    goto LABEL_50;
  }

  v10 = v9;
  BytePtr = 0;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  *v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v35 = 0u;
  v33 = 2;
  v34[0] = 1;
  v34[1] = &v33;
  if (a2 && (Value = CFDictionaryGetValue(a2, @"certificateSerial")) != 0 && (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFDataGetTypeID()) && (CFDataGetLength(v12) - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    CFRetain(v12);
  }

  else
  {
    bytes[0] = 1;
    v12 = CFDataCreate(0, bytes, 1);
    if (!v12)
    {
      SecError(-67672, &error, @"failed to allocate serial number");
      goto LABEL_30;
    }
  }

  *&v35 = CFDataGetLength(v12);
  *(&v35 + 1) = CFDataGetBytePtr(v12);
  *&v36[2] = make_subject(v10, a1, &error);
  *(&v38 + 1) = *&v36[2];
  if (a2)
  {
    v14 = CFDictionaryGetValue(a2, @"certificateLifetime");
    valuePtr = 31536000;
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberLongLongType, &valuePtr);
    }
  }

  else
  {
    valuePtr = 31536000;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (SecAsn1EncodeTime(v10, &v36[2] + 8, Current))
  {
    v23 = @"failed to encode notBefore";
    goto LABEL_29;
  }

  if (SecAsn1EncodeTime(v10, &v37, Current + valuePtr))
  {
    v23 = @"failed to encode notAfter";
    goto LABEL_29;
  }

  if ((extensions_from_parameters(v10, a2, v44, &error) & 1) == 0)
  {
    v23 = @"failed to encode extensions";
    goto LABEL_29;
  }

  if (!a4 || (v16 = SecKeyCopyPublicKey(a4)) == 0)
  {
    v23 = @"failed get public key";
LABEL_29:
    SecError(-26276, &error, v23);
LABEL_30:
    v22 = 0;
    v21 = 0;
    public_key = 0;
    v17 = 0;
    goto LABEL_31;
  }

  v17 = v16;
  public_key = make_public_key(v16, &v39, &v48, &error);
  if (!public_key)
  {
    SecError(-26276, &error, @"failed to encode public key");
    v22 = 0;
    v21 = 0;
    goto LABEL_31;
  }

  if (a2)
  {
    a2 = CFDictionaryGetValue(a2, kSecCMSSignHashAlgorithm);
  }

  signature = make_signature(0, 0, a4, a2, v36, &error);
  if (signature)
  {
    CFRelease(signature);
  }

  v30 = 0;
  v31 = 0;
  if (!SEC_ASN1EncodeItem(v10, &v30, v34, &kSecAsn1TBSCertificateTemplate))
  {
    SecError(-26276, &error, @"failed to encode TBS");
  }

  v20 = make_signature(v31, v30, a4, a2, &v44[5], &error);
  v21 = v20;
  if (!v20)
  {
    SecError(-67688, &error, @"failed to make signature");
LABEL_60:
    v22 = 0;
    goto LABEL_31;
  }

  BytePtr = CFDataGetBytePtr(v20);
  *(&v45 + 1) = 8 * CFDataGetLength(v21);
  v28 = 0;
  v29 = 0;
  if (!SEC_ASN1EncodeItem(v10, &v28, v34, &kSecAsn1SignedCertTemplate))
  {
    SecError(-26276, &error, @"failed to encode certificate");
    goto LABEL_60;
  }

  v22 = SecCertificateCreateWithBytes(*MEMORY[0x1E695E480], v29, v28);
  if (!v22)
  {
    SecError(-26276, &error, @"failed to decode encoded certificate");
  }

LABEL_31:
  if (v48 == 1)
  {
    free(v40[1]);
  }

  PORT_FreeArena(v10, 1);
  if (v17)
  {
    CFRelease(v17);
  }

  if (public_key)
  {
    CFRelease(public_key);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (error)
  {
    v24 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 138412290;
      v50 = error;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "csr: failed to generate self-signed certificate %@", bytes, 0xCu);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (a5)
    {
      v25 = error;
      if (*a5)
      {
        CFRelease(*a5);
      }

      v22 = 0;
      *a5 = v25;
      goto LABEL_51;
    }

LABEL_50:
    v22 = 0;
  }

LABEL_51:
  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

void *SecIdentitySignCertificateWithParameters(uint64_t a1, const __CFData *a2, __SecKey *a3, const void *a4, const void *a5, CFDictionaryRef theDict)
{
  v84 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kSecCMSSignHashAlgorithm);
  }

  else
  {
    Value = 0;
  }

  v81 = 0;
  error = 0;
  v13 = PORT_NewArena(1024);
  if (v13)
  {
    v14 = v13;
    v79 = 0;
    v78 = 0u;
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    *v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    memset(v69, 0, sizeof(v69));
    memset(v68, 0, sizeof(v68));
    v67 = 0u;
    v64 = 2;
    *buf = 1;
    v66 = &v64;
    *&v67 = CFDataGetLength(a2);
    *(&v67 + 1) = CFDataGetBytePtr(a2);
    if (!a4)
    {
      goto LABEL_19;
    }

    v15 = CFGetTypeID(a4);
    if (v15 == CFArrayGetTypeID())
    {
      *(&v71 + 1) = make_subject(v14, a4, &error);
      goto LABEL_13;
    }

    v18 = CFGetTypeID(a4);
    if (v18 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(a4);
      BytePtr = CFDataGetBytePtr(a4);
      if (!SEC_ASN1Decode(v14, &v71 + 8, &kSecAsn1NameTemplate, BytePtr, Length))
      {
LABEL_13:
        v21 = *(a1 + 16);
        CFRetain(v21);
        v22 = SecDERItemCopySequence(v21 + 184);
        v23 = CFDataGetLength(v22);
        v24 = CFDataGetBytePtr(v22);
        if (SEC_ASN1Decode(v14, v69, &kSecAsn1NameTemplate, v24, v23))
        {
          v57 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v82 = 0;
            _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "csr: failed to decoder subject name from CA identity", v82, 2u);
          }

          v28 = 0;
          goto LABEL_24;
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (theDict)
        {
          v25 = CFDictionaryGetValue(theDict, @"certificateLifetime");
          valuePtr = 31536000;
          if (v25)
          {
            CFNumberGetValue(v25, kCFNumberLongLongType, &valuePtr);
          }
        }

        else
        {
          valuePtr = 31536000;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (SecAsn1EncodeTime(v14, v69 + 8, Current))
        {
          v43 = secLogObjForScope("SecError");
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_53;
          }

          *v82 = 0;
          v44 = "csr: failed to encode notBefore";
          goto LABEL_52;
        }

        if (SecAsn1EncodeTime(v14, &v70, Current + valuePtr))
        {
          v43 = secLogObjForScope("SecError");
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_53;
          }

          *v82 = 0;
          v44 = "csr: failed to encode notBefore";
          goto LABEL_52;
        }

        if (theDict)
        {
          v32 = CFGetTypeID(theDict);
          if (v32 == CFDictionaryGetTypeID() && parameters_contains_extensions(theDict))
          {
            v33 = secLogObjForScope("csr");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *v82 = 0;
              _os_log_debug_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEBUG, "overriding request extensions with parameters extensions", v82, 2u);
            }

            v34 = v14;
            v35 = theDict;
LABEL_46:
            if ((extensions_from_parameters(v34, v35, v77, &error) & 1) == 0)
            {
LABEL_50:
              v43 = secLogObjForScope("SecError");
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
LABEL_53:
                v28 = 0;
                goto LABEL_23;
              }

              *v82 = 0;
              v44 = "csr: failed to encode extensions";
LABEL_52:
              _os_log_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEFAULT, v44, v82, 2u);
              goto LABEL_53;
            }

LABEL_56:
            public_key = make_public_key(a3, &v72, &v81, &error);
            if (!public_key)
            {
              v43 = secLogObjForScope("SecError");
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_53;
              }

              *v82 = 0;
              v44 = "csr: failed to encode public key";
              goto LABEL_52;
            }

            v30 = public_key;
            v28 = *(a1 + 24);
            CFRetain(v28);
            signature = make_signature(0, 0, v28, Value, v68, &error);
            if (signature)
            {
              CFRelease(signature);
            }

            v61 = 0;
            v62 = 0;
            if (!SEC_ASN1EncodeItem(v14, &v61, buf, &kSecAsn1TBSCertificateTemplate))
            {
              v48 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *v82 = 0;
                _os_log_impl(&dword_1887D2000, v48, OS_LOG_TYPE_DEFAULT, "csr: failed to encode TBS", v82, 2u);
              }
            }

            v49 = make_signature(v62, v61, v28, Value, &v77[2] + 1, &error);
            if (!v49)
            {
              v58 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *v82 = 0;
                _os_log_impl(&dword_1887D2000, v58, OS_LOG_TYPE_DEFAULT, "csr: failed to make signature", v82, 2u);
              }

              v22 = 0;
              v29 = 0;
              goto LABEL_25;
            }

            v29 = v49;
            v79 = CFDataGetBytePtr(v49);
            *(&v78 + 1) = 8 * CFDataGetLength(v29);
            v59 = 0;
            v60 = 0;
            if (SEC_ASN1EncodeItem(v14, &v59, buf, &kSecAsn1SignedCertTemplate))
            {
              v50 = SecCertificateCreateWithBytes(*MEMORY[0x1E695E480], v60, v59);
              if (v50)
              {
                v17 = v50;
                v22 = 0;
                goto LABEL_66;
              }

              v55 = secLogObjForScope("SecError");
              if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              *v82 = 0;
              v56 = "csr: failed to decode encoded certificate";
            }

            else
            {
              v55 = secLogObjForScope("SecError");
              if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              *v82 = 0;
              v56 = "csr: failed to encode certificate";
            }

            _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, v56, v82, 2u);
LABEL_87:
            v22 = 0;
            goto LABEL_25;
          }

          if (!a5)
          {
            v36 = CFGetTypeID(theDict);
            if (v36 == CFDictionaryGetTypeID() && !parameters_contains_extensions(theDict))
            {
LABEL_54:
              v45 = secLogObjForScope("csr");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                *v82 = 0;
                _os_log_debug_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEBUG, "no extensions set", v82, 2u);
              }

              goto LABEL_56;
            }

LABEL_48:
            v42 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *v82 = 0;
              _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "csr: extensions or parameters wrong input type", v82, 2u);
            }

            goto LABEL_50;
          }
        }

        else if (!a5)
        {
          goto LABEL_54;
        }

        v37 = CFGetTypeID(a5);
        if (v37 == CFDataGetTypeID())
        {
          v38 = CFDataGetLength(a5);
          v39 = CFDataGetBytePtr(a5);
          if (!SEC_ASN1Decode(v14, v77, &kSecAsn1SequenceOfCertExtensionTemplate, v39, v38))
          {
            goto LABEL_56;
          }

          v40 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v82 = 0;
            _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "failed to decode requested CSR extensions", v82, 2u);
          }
        }

        else
        {
          v41 = CFGetTypeID(a5);
          if (v41 == CFDictionaryGetTypeID())
          {
            v34 = v14;
            v35 = a5;
            goto LABEL_46;
          }
        }

        goto LABEL_48;
      }

      v26 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v82 = 0;
        v27 = "csr: failed to decode input subject";
        goto LABEL_21;
      }
    }

    else
    {
LABEL_19:
      v26 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v82 = 0;
        v27 = "csr: unsupported subject CFType";
LABEL_21:
        _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, v27, v82, 2u);
      }
    }

    v28 = 0;
    v21 = 0;
LABEL_23:
    v22 = 0;
LABEL_24:
    v29 = 0;
    v30 = 0;
LABEL_25:
    v17 = 0;
LABEL_66:
    if (v81 == 1)
    {
      free(v73[1]);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    PORT_FreeArena(v14, 1);
    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (error)
    {
      v51 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v82 = 138412290;
        v83 = error;
        _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "csr: cert issuance failed: %@", v82, 0xCu);
      }

      v52 = error;
      if (error)
      {
        error = 0;
        CFRelease(v52);
      }
    }

    goto LABEL_83;
  }

  v16 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "csr: pool allocation failure", buf, 2u);
  }

  v17 = 0;
LABEL_83:
  v53 = *MEMORY[0x1E69E9840];
  return v17;
}

void *SecIdentitySignCertificateWithAlgorithm(uint64_t a1, const __CFData *a2, __SecKey *a3, const void *a4, const void *a5, const void *a6)
{
  if (a6)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, kSecCMSSignHashAlgorithm, a6);
    v13 = SecIdentitySignCertificateWithParameters(a1, a2, a3, a4, a5, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v13;
  }

  else
  {

    return SecIdentitySignCertificateWithParameters(a1, a2, a3, a4, a5, 0);
  }
}

__CFData *SecGenerateCertificateRequestSubject(uint64_t a1, const __CFArray *a2)
{
  v4 = PORT_NewArena(1024);
  if (v4)
  {
    v5 = v4;
    v6 = SecDERItemCopySequence(a1 + 184);
    *buf = 0;
    v22 = 0;
    Length = CFDataGetLength(v6);
    BytePtr = CFDataGetBytePtr(v6);
    subject = make_subject(v5, a2, 0);
    if (SEC_ASN1EncodeItem(v5, buf, &subject, &kSecAsn1NameTemplate))
    {
      v18 = DERLengthOfLength(*buf + Length);
      v9 = Length + *buf + v18;
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      CFDataSetLength(Mutable, v9 + 1);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      *MutableBytePtr = 48;
      v12 = MutableBytePtr + 1;
      if (DEREncodeLength(*buf + Length, (MutableBytePtr + 1), &v18))
      {
        v17 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "csr: failed to encode outer subject sequence", v19, 2u);
        }
      }

      else
      {
        v13 = &v12[v18];
        memcpy(v13, BytePtr, Length);
        memcpy(&v13[Length], v22, *buf);
      }
    }

    else
    {
      v16 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "csr: failed to encode subject", v19, 2u);
      }

      Mutable = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    PORT_FreeArena(v5, 1);
  }

  else
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "csr: pool allocation failure", buf, 2u);
    }

    return 0;
  }

  return Mutable;
}

uint64_t SecDHCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = ccdh_gp_size();
  v10 = malloc_type_malloc(v9 + 2 * v8 + 23, 0x9B3B2FB5uLL);
  cc_clear();
  result = ccdh_init_gp_from_bytes();
  if (result)
  {
    SecDHDestroy(v10);
    v10 = 0;
    result = 4294941020;
  }

  *a7 = v10;
  return result;
}

void SecDHDestroy(void *a1)
{
  MEMORY[0x18CFD9D80]();
  ccdh_gp_size();
  cc_clear();

  free(a1);
}

uint64_t SecDHCreateFromParameters(uint64_t a1, uint64_t a2, void *a3)
{
  v13[0] = a1;
  v13[1] = a2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v4;
  v12[1] = v4;
  v11[0] = v4;
  v11[1] = v4;
  v10 = 0;
  result = DERParseSequence(v13, 4u, &DER_DHParamsItemSpecs, v11, 0x40uLL);
  if (!result)
  {
    if (!*(&v12[0] + 1) || (result = DERParseInteger(v12, &v10), !result))
    {
      v6 = (*(&v11[0] + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      v7 = ccdh_gp_size() + 2 * v6;
      v8 = malloc_type_malloc(v7 + 23, 0xA9F5EAA7uLL);
      if (v8)
      {
        v9 = v8;
        bzero(v8, v7 + 23);
        result = ccdh_init_gp_from_bytes();
        if (result)
        {
          SecDHDestroy(v9);
          v9 = 0;
          result = 4294941021;
        }

        *a3 = v9;
      }

      else
      {
        return 4294967188;
      }
    }
  }

  return result;
}

uint64_t SecDHCreateFromAlgorithmId(uint64_t a1, uint64_t a2, void *a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v4;
  v9 = v4;
  v7[0] = a1;
  v7[1] = a2;
  v5 = DERParseSequence(v7, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v8, 0x20uLL);
  result = 4294941021;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 3)
    {
      return result;
    }

    if (!v5)
    {
      return SecDHCreateFromParameters(v9, *(&v9 + 1), a3);
    }

    return 4294941020;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      return 4294967246;
    }

    if (v5 == 7)
    {
      return 4294941995;
    }

    return 4294941020;
  }

  if (v5 == 4)
  {
    return 4294967292;
  }

  return result;
}

uint64_t SecDHGenerateKeypair(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  MEMORY[0x18CFD9D80]();
  ccdh_gp_size();
  result = ccdh_generate_key();
  if (!result)
  {
    MEMORY[0x18CFD9D80](a1);
    v6 = ccn_write_uint_size();
    if (*a3 >= v6)
    {
      v7 = v6;
      MEMORY[0x18CFD9D80](a1);
      ccn_write_uint();
      result = 0;
      *a3 = v7;
    }

    else
    {
      return 4294941995;
    }
  }

  return result;
}

uint64_t SecDHComputeKey(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x18CFD9D80]();
  ccdh_gp_size();
  v7 = ccdh_ccn_size();
  MEMORY[0x1EEE9AC00](v7);
  if (v9 >= 0x10)
  {
    v10 = (v18 - v8);
    do
    {
      *v10 = 0xAAAAAAAAAAAAAAAALL;
      v10[1] = 0xAAAAAAAAAAAAAAAALL;
      v10 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  if (ccdh_import_pub())
  {
    v11 = 4294941021;
  }

  else
  {
    v18[0] = ccdh_ccn_size();
    v12 = malloc_type_calloc(1uLL, v18[0], 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      if (ccdh_compute_shared_secret())
      {
        v11 = 4294941021;
      }

      else
      {
        v14 = v18[0];
        v15 = *a5;
        if (v18[0] < *a5)
        {
          *a5 = v18[0];
          v15 = v14;
        }

        memcpy(a4, v13, v15);
        v11 = 0;
      }

      free(v13);
    }

    else
    {
      v11 = 4294967188;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

__CFData *SecECKeyCopyWrapKey(__SecKey *a1, int a2, const __CFData *a3, const __CFDictionary *a4, uint64_t a5, __CFString **a6)
{
  v7 = *(a1 + 3);
  valuePtr = 0;
  v28 = 0;
  if (a2 != 1)
  {
    SecError(-4, a6, @"unsupported key wrapping algorithm");
    return 0;
  }

  NamedCurve = SecECKeyGetNamedCurve(a1);
  v11 = MEMORY[0x1E69E9540];
  if (NamedCurve != 25)
  {
    v11 = 0;
  }

  if (NamedCurve == 23)
  {
    v12 = MEMORY[0x1E69E9538];
  }

  else
  {
    v12 = v11;
  }

  if (!v12)
  {
    SecError(-4, a6, @"unsupported curve");
    return 0;
  }

  Value = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPSymAlg");
  if (!Value || (v14 = Value, v15 = CFGetTypeID(Value), v15 != CFNumberGetTypeID()) || !CFNumberGetValue(v14, kCFNumberSInt8Type, &valuePtr))
  {
    SecError(-4, a6, @"unknown symalg given");
    return 0;
  }

  v16 = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPFingerprint");
  if (!v16 || (v17 = v16, v18 = CFGetTypeID(v16), v18 != CFDataGetTypeID()) || CFDataGetLength(v17) <= 19)
  {
    SecError(-4, a6, @"invalid fingerprint");
    return 0;
  }

  v21 = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPWrapAlg");
  if (!v21)
  {
    SecError(-4, a6, @"no wrap alg");
    return 0;
  }

  v22 = v21;
  if (!CFEqual(v21, @"kSecKeyWrapPGPECWrapDigestSHA256KekAES128") && !CFEqual(v22, @"kSecKeyWrapPGPECWrapDigestSHA512KekAES256"))
  {
    SecError(-4, a6, @"unknown wrap alg");
    return 0;
  }

  v23 = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPECFlags");
  if (isNumber(v23))
  {
    if (!CFNumberGetValue(v23, kCFNumberSInt32Type, &v28))
    {
      SecError(-4, a6, @"invalid flags: %@", v23);
      return 0;
    }
  }

  else if (v23)
  {
    SecError(-4, a6, @"unknown flags");
    return 0;
  }

  CFDataGetLength(a3);
  v24 = ccec_rfc6637_wrap_key_size();
  if (!v24)
  {
    SecError(-4, a6, @"can't wrap that key, can't build size");
    return 0;
  }

  v25 = v24;
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, v25);
  if (Mutable)
  {
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    BytePtr = CFDataGetBytePtr(v17);
    v27 = ccrng();
    if (ccec_rfc6637_wrap_key())
    {
      SecError(-4, a6, @"Failed to wrap key", BytePtr, v27);
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

const void *isNumber(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

uint64_t SecECPublicKeyCopyKeyDescription(__SecKey *a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30[0] = 0;
  v2 = SecECKeyGetNamedCurve(a1) - 23;
  if (v2 > 2)
  {
    v3 = "kSecECCurveNone";
  }

  else
  {
    v3 = off_1E70DE998[v2];
  }

  v26 = v3;
  v27 = a1;
  v28 = *(a1 + 3);
  v4 = *v28;
  v5 = cczp_bitlen() + 7;
  v6 = v5 >> 3;
  v7 = [MEMORY[0x1E695DF88] dataWithLength:v5 >> 3];
  v8 = &v29;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = **v28;
    if ((v9 & 1) == 0)
    {
      v12 = **v28;
    }

    [v7 mutableBytes];
    ccn_write_uint();
    v13 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v6];
    v14 = *v8;
    *v8 = v13;

    if (v5 >= 8)
    {
      v15 = 0;
      do
      {
        [v13 appendFormat:@"%02X", *(objc_msgSend(v7, "bytes") + v15++)];
      }

      while (v6 != v15);
    }

    v9 = 0;
    v8 = v30;
  }

  while ((v10 & 1) != 0);
  v16 = MEMORY[0x1E696AEC0];
  AlgorithmId = SecKeyGetAlgorithmId(v27);
  v18 = *(v27 + 16);
  v19 = *(v18 + 1);
  v20 = *v18;
  _SecKeyCheck(v27, "SecKeyGetBlockSize");
  v21 = *(*(v27 + 16) + 80);
  if (v21)
  {
    v21 = (8 * v21(v27));
  }

  v22 = [v16 stringWithFormat:@"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, y: %@, x: %@, addr: %p>", v26, AlgorithmId, v19, v20, v21, v30[0], v29, v27];

  for (i = 1; i != -1; --i)
  {
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

__CFData *SecECPrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  v34 = *MEMORY[0x1E69E9840];
  Mutable = *MEMORY[0x1E695E738];
  v13 = *(a1 + 24);
  if (a2 != 4)
  {
    if (a2 || !CFEqual(cf1, @"algid:sign:ECDSA:digest-X962"))
    {
      goto LABEL_20;
    }

    if (!a5)
    {
      v15 = *v13;
      v33 = (((cczp_bitlen() + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
      Mutable = CFDataCreateMutable(0, 0);
      CFDataSetLength(Mutable, v33);
      CFDataGetLength(a6);
      CFDataGetBytePtr(a6);
      CFDataGetMutableBytePtr(Mutable);
      ccrng();
      v16 = ccec_sign();
      if (v16)
      {
        v32 = v16;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        SecError(-50, a8, @"%@: X962 signing failed (ccerr %d)", a1, v32, v33, v34);
        Mutable = 0;
      }

      else
      {
        CFDataSetLength(Mutable, v33);
      }

      goto LABEL_20;
    }

LABEL_10:
    Mutable = *MEMORY[0x1E695E4D0];
    goto LABEL_20;
  }

  if (!CFEqual(cf1, @"algid:keyexchange:ECDH") && !CFEqual(cf1, @"algid:keyexchange:ECDHC"))
  {
    goto LABEL_20;
  }

  if (a5)
  {
    goto LABEL_10;
  }

  CFDataGetLength(a6);
  CPForPublicSize = getCPForPublicSize();
  if (CPForPublicSize)
  {
    v18 = CPForPublicSize;
    v19 = 24 * *CPForPublicSize + 31;
    MEMORY[0x1EEE9AC00](CPForPublicSize);
    v21 = &v33 - v20;
    if (v22 >= 0x10)
    {
      v23 = (&v33 - v20);
      do
      {
        *v23 = 0xAAAAAAAAAAAAAAAALL;
        v23[1] = 0xAAAAAAAAAAAAAAAALL;
        v23 += 2;
        v20 -= 16;
      }

      while (v20);
    }

    Length = CFDataGetLength(a6);
    BytePtr = CFDataGetBytePtr(a6);
    v26 = MEMORY[0x18CFD9F40](v18, Length, BytePtr, v21);
    if (v26)
    {
      SecError(-50, a8, @"ECpriv sharedsecret: bad public key (err %d)", v26);
    }

    else
    {
      v27 = 8 * *v18;
      v33 = v27;
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
      CFDataSetLength(Mutable, v27);
      CFDataGetMutableBytePtr(Mutable);
      ccrng();
      v28 = ccecdh_compute_shared_secret();
      if (v28)
      {
        v31 = v28;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        SecError(-26275, a8, @"ECpriv failed to compute shared secret (err %d)", v31);
        Mutable = 0;
      }

      else
      {
        CFDataSetLength(Mutable, v33);
      }
    }
  }

  else
  {
    SecError(-50, a8, @"ECpriv sharedsecret: bad public key");
  }

LABEL_20:
  v29 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFData *SecECPrivateKeyCopyExternalRepresentation(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *v1;
  v3 = cczp_bitlen();
  v4 = *v1;
  v5 = cczp_bitlen();
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, (((v5 + 7) >> 2) | 1) + ((v3 + 7) >> 3));
  CFDataGetMutableBytePtr(Mutable);
  ccec_export_pub();
  CFDataGetMutableBytePtr(Mutable);
  v7 = *v1;
  cczp_bitlen();
  v8 = **v1;
  ccn_write_uint_padded();
  return Mutable;
}

__CFData *SecECKeyCopyUnwrapKey(__SecKey *a1, uint64_t a2, const __CFData *a3, const __CFDictionary *a4, __CFDictionary **a5, __CFString **a6)
{
  v10 = *(a1 + 3);
  v32 = 0;
  valuePtr = 0;
  NamedCurve = SecECKeyGetNamedCurve(a1);
  v12 = MEMORY[0x1E69E9540];
  if (NamedCurve != 25)
  {
    v12 = 0;
  }

  if (NamedCurve == 23)
  {
    v13 = MEMORY[0x1E69E9538];
  }

  else
  {
    v13 = v12;
  }

  if (!v13)
  {
    SecError(-4, a6, @"unsupported curve");
    return 0;
  }

  Value = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPWrapAlg");
  if (!Value)
  {
    SecError(-4, a6, @"no wrap alg");
    return 0;
  }

  v15 = Value;
  if (!CFEqual(Value, @"kSecKeyWrapPGPECWrapDigestSHA256KekAES128") && !CFEqual(v15, @"kSecKeyWrapPGPECWrapDigestSHA512KekAES256"))
  {
    SecError(-4, a6, @"unknown wrap alg");
    return 0;
  }

  v16 = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPFingerprint");
  if (!v16 || (v17 = v16, v18 = CFGetTypeID(v16), v18 != CFDataGetTypeID()) || CFDataGetLength(v17) <= 19)
  {
    SecError(-4, a6, @"invalid fingerprint");
    return 0;
  }

  v21 = CFDictionaryGetValue(a4, @"kSecKeyWrapPGPECFlags");
  if (v21)
  {
    v22 = v21;
    v23 = CFGetTypeID(v21);
    if (v23 != CFNumberGetTypeID())
    {
      SecError(-4, a6, @"unknown flags");
      return 0;
    }

    if (!CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr))
    {
      SecError(-4, a6, @"invalid flags: %@", v22);
      return 0;
    }
  }

  Length = CFDataGetLength(a3);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, Length);
  if (Mutable)
  {
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetBytePtr(v17);
    v29 = CFDataGetLength(a3);
    BytePtr = CFDataGetBytePtr(a3);
    if (ccec_rfc6637_unwrap_key())
    {
      CFRelease(Mutable);
      SecError(-4, a6, @"failed to wrap key", v29, BytePtr);
      return 0;
    }

    if (Length > CFDataGetLength(Mutable))
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
    }

    CFDataSetLength(Mutable, Length);
    if (a5)
    {
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v25)
      {
        v26 = v25;
        v27 = CFNumberCreate(0, kCFNumberSInt8Type, &v32);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v26, @"kSecKeyWrapPGPSymAlg", v27);
          CFRelease(v28);
        }

        *a5 = v26;
      }
    }
  }

  return Mutable;
}

CFStringRef SecECPrivateKeyCopyKeyDescription(__SecKey *a1)
{
  v2 = SecECKeyGetNamedCurve(a1) - 23;
  if (v2 > 2)
  {
    v3 = "kSecECCurveNone";
  }

  else
  {
    v3 = off_1E70DE998[v2];
  }

  v4 = *MEMORY[0x1E695E480];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v6 = *(a1 + 2);
  v7 = *(v6 + 1);
  v8 = *v6;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v9 = *(*(a1 + 2) + 80);
  if (v9)
  {
    v9 = (8 * v9(a1));
  }

  return CFStringCreateWithFormat(v4, 0, @"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v3, AlgorithmId, v7, v8, v9, a1);
}

CFDictionaryRef SecECPrivateKeyCopyAttributeDictionary(const void *a1)
{
  v2 = SecECPrivateKeyCopyExternalRepresentation(a1);
  v3 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, @"73", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t SecECPrivateKeyDestroy(uint64_t result)
{
  v1 = *(result + 24);
  if (*v1)
  {
    v2 = **v1;
    return cc_clear();
  }

  return result;
}

uint64_t SecECPrivateKeyInit(uint64_t a1, CFDictionaryRef theDict, unint64_t a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (a4 == 7)
  {
    ccec_x963_import_priv_size();
    if (!ccec_keysize_is_supported())
    {
      goto LABEL_18;
    }

    cp = ccec_get_cp();
    if (!cp)
    {
      goto LABEL_18;
    }

    v13 = cp;
    *v6 = cp;
    v14 = (cczp_bitlen() + 7) >> 2;
    if (a3 <= (v14 | 1))
    {
      goto LABEL_18;
    }

    v15 = 4294941021;
    if (!MEMORY[0x18CFD9F40](v13, v14 | 1, theDict, v6))
    {
      v16 = **v6;
      if (ccn_read_uint())
      {
        v15 = 4294941021;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    if (a4 != 5)
    {
      if (a4 == 1)
      {
        *valuePtr = 0xAAAAAAAAAAAAAAAALL;
        if (!ccec_der_import_priv_keytype())
        {
          v7 = ccec_cp_for_oid_0(*valuePtr);
          if (!v7)
          {
            ccec_cp_192();
            MEMORY[0x18CFD9E90]();
            MEMORY[0x18CFD9EA0]();
            MEMORY[0x18CFD9EB0]();
            ccec_cp_521();
            v7 = ccec_curve_for_length_lookup();
            if (!v7)
            {
              v15 = 4294941021;
              goto LABEL_26;
            }
          }

          *v6 = v7;
          key_fips = ccec_der_import_priv();
          goto LABEL_23;
        }
      }

LABEL_18:
      v15 = 4294967246;
      goto LABEL_26;
    }

    Value = CFDictionaryGetValue(theDict, @"bsiz");
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 == CFNumberGetTypeID())
      {
        *valuePtr = 0xAAAAAAAAAAAAAAAALL;
        CFNumberGetValue(v10, kCFNumberCFIndexType, valuePtr);
      }

      else
      {
        v17 = CFGetTypeID(v10);
        if (v17 == CFStringGetTypeID())
        {
          CFStringGetIntValue(v10);
        }
      }
    }

    if (ccec_get_cp())
    {
      ccrng();
      key_fips = ccec_generate_key_fips();
LABEL_23:
      if (key_fips)
      {
        v15 = 4294967246;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_26;
    }

    v20 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = theDict;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "Invalid or missing key size in: %@", valuePtr, 0xCu);
    }

    v15 = 4294941985;
  }

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t SecECKeyGeneratePair(uint64_t a1, void *a2, void *a3)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v6 = SecCFAllocatorZeroize_sAllocator;
  v7 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, &kSecECPrivateKeyDescriptor, a1, 0, 5);
  if (!v7)
  {
    return 4294967246;
  }

  v8 = v7;
  v9 = SecKeyCreate(v6, &kSecECPublicKeyDescriptor, v7[3], 0, 6);
  if (!v9)
  {
    v10 = 4294967246;
LABEL_12:
    CFRelease(v8);
    return v10;
  }

  if (a2)
  {
    *a2 = v9;
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v8;
    v8 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v10 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t SecECKeyCopyPublicBits(uint64_t a1)
{
  v2 = 0;
  SecKeyCopyPublicBytes(a1, &v2);
  return v2;
}

BOOL SecECDoWithFullKey(uint64_t a1, __CFString **a2, uint64_t a3)
{
  if (*(a1 + 16) == &kSecECPrivateKeyDescriptor)
  {
    (*(a3 + 16))(a3, *(a1 + 24));
    return 1;
  }

  else
  {

    return SecError(-50, a2, @"Not an EC Full Key object, sorry can't do.");
  }
}

BOOL SecECDoWithPubKey(uint64_t a1, __CFString **a2, uint64_t a3)
{
  if (*(a1 + 16) == &kSecECPublicKeyDescriptor)
  {
    (*(a3 + 16))(a3, *(a1 + 24));
    return 1;
  }

  else
  {

    return SecError(-50, a2, @"Not an EC Public Key object, sorry can't do.");
  }
}

uint64_t SecCurve448PublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, const __CFData *a7, __CFString **a8)
{
  v8 = *(a1 + 16);
  if (v8 != &kSecEd448PublicKeyDescriptor && v8 != &kSecEd448PrivateKeyDescriptor)
  {
    return *MEMORY[0x1E695E738];
  }

  if (a2 != 1 || !CFEqual(cf1, @"algid:sign:EdDSA:message-Curve448:SHAKE256"))
  {
    v15 = MEMORY[0x1E695E738];
    return *v15;
  }

  if (!a5)
  {
    Length = CFDataGetLength(a7);
    CFDataGetBytePtr(a7);
    CFDataGetLength(a6);
    CFDataGetBytePtr(a6);
    if (Length == 114)
    {
      v18 = *(a1 + 24);
      v19 = cced448_verify();
      if (!v19)
      {
        goto LABEL_9;
      }

      SecError(-67808, a8, @"Ed448 signature verification failed (ccerr %d)", v19);
    }

    else
    {
      SecError(-67808, a8, @"Ed448 signature verification failed (invalid signature length)");
    }

    return 0;
  }

LABEL_9:
  v15 = MEMORY[0x1E695E4D0];
  return *v15;
}

__CFData *SecCurve448PrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = *MEMORY[0x1E695E738];
  v14 = *(a1 + 24);
  if (a2 != 4)
  {
    if (a2)
    {
      goto LABEL_26;
    }

    v15 = *(a1 + 16);
    v16 = v15 == &kSecEd448PublicKeyDescriptor || v15 == &kSecEd448PrivateKeyDescriptor;
    if (!v16 || !CFEqual(cf1, @"algid:sign:EdDSA:message-Curve448:SHAKE256"))
    {
      goto LABEL_26;
    }

    if (!a5)
    {
      ccrng();
      if (cced448_make_pub())
      {
        SecError(-2070, a8, @"%@: Failed to get public key from private key", a1);
        goto LABEL_26;
      }

      Mutable = CFDataCreateMutable(0, 0);
      CFDataSetLength(Mutable, 114);
      if (!Mutable)
      {
        SecError(-108, a8, @"%@: Failed to create buffer for a signature", a1);
        goto LABEL_26;
      }

      CFDataGetLength(a6);
      CFDataGetBytePtr(a6);
      CFDataGetMutableBytePtr(Mutable);
      ccrng();
      v17 = cced448_sign();
      cc_clear();
      if (v17)
      {
        CFRelease(Mutable);
        SecError(-50, a8, @"%@: Ed448 signing failed (ccerr %d)", a1, v17, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_31:
        Mutable = 0;
        goto LABEL_26;
      }

      goto LABEL_26;
    }

LABEL_21:
    Mutable = *MEMORY[0x1E695E4D0];
    goto LABEL_26;
  }

  v18 = *(a1 + 16);
  v19 = v18 == &kSecEd448PublicKeyDescriptor || v18 == &kSecEd448PrivateKeyDescriptor;
  if (v19 || !CFEqual(cf1, @"algid:keyexchange:ECDH") && !CFEqual(cf1, @"algid:keyexchange:ECDHC"))
  {
    goto LABEL_26;
  }

  if (a5)
  {
    goto LABEL_21;
  }

  CFDataGetBytePtr(a6);
  if (CFDataGetLength(a6) == 56)
  {
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
    CFDataSetLength(Mutable, 56);
    CFDataSetLength(Mutable, 56);
    ccrng();
    CFDataGetMutableBytePtr(Mutable);
    v20 = cccurve448();
    if (v20)
    {
      v23 = v20;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      SecError(-50, a8, @"%@: X448 DH failed (ccerr %d)", a1, v23);
      goto LABEL_31;
    }
  }

  else
  {
    SecError(-50, a8, @"X448priv sharedsecret: bad public key");
  }

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFDataRef SecCurve448PrivateKeyCopyExternalRepresentation(void *a1)
{
  v2 = a1[3];
  v3 = CFGetAllocator(a1);
  v4 = a1[2];
  if (v4 == &kSecEd448PrivateKeyDescriptor || v4 == &kSecEd448PublicKeyDescriptor)
  {
    v6 = 57;
  }

  else
  {
    v6 = 56;
  }

  return CFDataCreate(v3, v2, v6);
}

uint64_t SecCurve448PrivateKeyCopyPublicOctets(void *a1, CFDataRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[3];
  if (v4 == &kSecEd448PublicKeyDescriptor || v4 == &kSecEd448PrivateKeyDescriptor)
  {
    v13 = 0u;
    memset(v14, 0, sizeof(v14));
    v12 = 0u;
    ccrng();
    if (cced448_make_pub())
    {
LABEL_9:
      result = 4294941020;
      goto LABEL_14;
    }

    v7 = CFGetAllocator(a1);
    *a2 = CFDataCreate(v7, &v12, 57);
  }

  else
  {
    v13 = 0u;
    memset(v14, 0, 24);
    v12 = 0u;
    ccrng();
    if (cccurve448_make_pub())
    {
      goto LABEL_9;
    }

    v10 = CFGetAllocator(a1);
    *a2 = CFDataCreate(v10, &v12, 56);
  }

  cc_clear();
  if (*a2)
  {
    result = 0;
  }

  else
  {
    result = 4294941021;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SecCurve448PrivateKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x1E695E480];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v5 = *(a1 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v8 = *(*(a1 + 16) + 80);
  if (v8)
  {
    v8 = (8 * v8(a1));
  }

  v9 = v2 == &kSecEd448PrivateKeyDescriptor || v2 == &kSecEd448PublicKeyDescriptor;
  v10 = "kSecX448";
  if (v9)
  {
    v10 = "kSecEd448";
  }

  return CFStringCreateWithFormat(v3, 0, @"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v10, AlgorithmId, v6, v7, v8, a1);
}

CFDictionaryRef SecCurve448PrivateKeyCopyAttributeDictionary(void *a1)
{
  v2 = a1[3];
  v3 = CFGetAllocator(a1);
  v4 = a1[2];
  if (v4 == &kSecEd448PrivateKeyDescriptor || v4 == &kSecEd448PublicKeyDescriptor)
  {
    v6 = 57;
  }

  else
  {
    v6 = 56;
  }

  v7 = CFDataCreate(v3, v2, v6);
  v8 = a1[2];
  if (v8 == &kSecEd448PrivateKeyDescriptor || v8 == &kSecEd448PublicKeyDescriptor)
  {
    v10 = @"107";
  }

  else
  {
    v10 = @"108";
  }

  v11 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, v10, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}