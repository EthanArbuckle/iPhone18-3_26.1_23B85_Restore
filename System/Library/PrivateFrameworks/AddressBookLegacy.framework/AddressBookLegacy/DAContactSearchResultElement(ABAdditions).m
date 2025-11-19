@interface DAContactSearchResultElement(ABAdditions)
- (ABRecordRef)newAddressBookRecordWithSource:()ABAdditions;
- (__CFString)localizedStringForKey:()ABAdditions formatArg:;
@end

@implementation DAContactSearchResultElement(ABAdditions)

- (ABRecordRef)newAddressBookRecordWithSource:()ABAdditions
{
  v5 = ABPersonCreate();
  if (v5)
  {
    if ([a1 displayName])
    {
      ABRecordSetValue(v5, kABCPersonDisplayNameProperty, [a1 displayName], 0);
    }

    if ([a1 firstName])
    {
      ABRecordSetValue(v5, kABPersonFirstNameProperty, [a1 firstName], 0);
    }

    if ([a1 lastName])
    {
      ABRecordSetValue(v5, kABPersonLastNameProperty, [a1 lastName], 0);
    }

    if ([a1 emailAddress])
    {
      Mutable = ABMultiValueCreateMutable(1u);
      ABMultiValueAddValueAndLabel(Mutable, [a1 emailAddress], @"_$!<Work>!$_", 0);
      ABRecordSetValue(v5, kABPersonEmailProperty, Mutable, 0);
      CFRelease(Mutable);
    }

    if ([a1 workPhone] || objc_msgSend(a1, "mobilePhone") || objc_msgSend(a1, "homePhone") || objc_msgSend(a1, "faxPhone") || objc_msgSend(a1, "pagerNumber") || objc_msgSend(a1, "iPhone") || objc_msgSend(a1, "mainPhone") || objc_msgSend(a1, "workFaxPhone"))
    {
      v7 = ABMultiValueCreateMutable(1u);
      if ([a1 workPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 workPhone], @"_$!<Work>!$_", 0);
      }

      if ([a1 mobilePhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 mobilePhone], @"_$!<Mobile>!$_", 0);
      }

      if ([a1 homePhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 homePhone], @"_$!<Home>!$_", 0);
      }

      if ([a1 faxPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 faxPhone], @"_$!<HomeFAX>!$_", 0);
      }

      if ([a1 pagerNumber])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 pagerNumber], @"_$!<Pager>!$_", 0);
      }

      if ([a1 iPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 iPhone], @"iPhone", 0);
      }

      if ([a1 mainPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 mainPhone], @"_$!<Main>!$_", 0);
      }

      if ([a1 workFaxPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [a1 workFaxPhone], @"_$!<WorkFAX>!$_", 0);
      }

      ABRecordSetValue(v5, kABPersonPhoneProperty, v7, 0);
      CFRelease(v7);
    }

    if ([a1 company])
    {
      ABRecordSetValue(v5, kABPersonOrganizationProperty, [a1 company], 0);
    }

    if ([a1 title])
    {
      ABRecordSetValue(v5, kABPersonJobTitleProperty, [a1 title], 0);
    }

    v8 = ABMultiValueCreateMutable(5u);
    if ([a1 city] || objc_msgSend(a1, "state") || objc_msgSend(a1, "zip") || objc_msgSend(a1, "country"))
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      if ([a1 street])
      {
        [v9 setObject:objc_msgSend(a1 forKey:{"street"), @"Street"}];
      }

      if ([a1 city])
      {
        [v9 setObject:objc_msgSend(a1 forKey:{"city"), @"City"}];
      }

      if ([a1 state])
      {
        [v9 setObject:objc_msgSend(a1 forKey:{"state"), @"State"}];
      }

      if ([a1 zip])
      {
        [v9 setObject:objc_msgSend(a1 forKey:{"zip"), @"ZIP"}];
      }

      if ([a1 country])
      {
        [v9 setObject:objc_msgSend(a1 forKey:{"country"), @"Country"}];
      }

      ABMultiValueAddValueAndLabel(v8, v9, @"_$!<Work>!$_", 0);
    }

    else if ([a1 postalAddress] || objc_msgSend(a1, "street"))
    {
      v16 = [a1 street];
      if (!v16)
      {
        v16 = [a1 postalAddress];
      }

      v17 = ABCreateAddressDictionaryWithString(v16);
      if (!v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v16, @"Street", 0}];
      }

      ABMultiValueAddValueAndLabel(v8, v17, @"_$!<Work>!$_", 0);
      CFRelease(v17);
    }

    if ([a1 homePostalAddress])
    {
      v10 = ABCreateAddressDictionaryWithString([a1 homePostalAddress]);
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(a1, "homePostalAddress"), @"Street", 0}];
      }

      ABMultiValueAddValueAndLabel(v8, v10, @"_$!<Home>!$_", 0);
      CFRelease(v10);
    }

    if (ABMultiValueGetCount(v8) >= 1)
    {
      ABRecordSetValue(v5, kABPersonAddressProperty, v8, 0);
    }

    CFRelease(v8);
    if ([a1 jpegPhoto])
    {
      ABPersonSetImageData(v5, [a1 jpegPhoto], 0);
    }

    if ([a1 imUsername])
    {
      v11 = ABMultiValueCreateMutable(1u);
      v12 = [a1 imService];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = @"AIM";
      }

      ABMultiValueAddValueAndLabel(v11, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(a1, "imUsername"), @"username", v13, @"service", 0}], @"_$!<Work>!$_", 0);
      ABRecordSetValue(v5, kABPersonInstantMessageProperty, v11, 0);
      CFRelease(v11);
    }

    if ([a1 buildingName] || objc_msgSend(a1, "appleFloor"))
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if ([a1 buildingName])
      {
        [v14 appendString:{objc_msgSend(a1, "localizedStringForKey:formatArg:", @"NOTES_BUILDING_NAME_FORMAT", objc_msgSend(a1, "buildingName"))}];
        if ([a1 appleFloor])
        {
          [v14 appendString:@"\n"];
        }
      }

      if ([a1 appleFloor])
      {
        [v14 appendString:{objc_msgSend(a1, "localizedStringForKey:formatArg:", @"NOTES_APPLE_FLOOR_FORMAT", objc_msgSend(a1, "appleFloor"))}];
      }

      ABRecordSetValue(v5, kABPersonNoteProperty, v14, 0);
    }

    if (a3)
    {
      ABSourceSetShouldIgnoreCapabilitiesRestrictions(a3, 1);
      ABRecordSetValue(v5, kABPersonStoreReferenceProperty, a3, 0);
      if ([a1 identifierOnServer])
      {
        ABRecordSetValue(v5, kABPersonExternalIdentifierProperty, [a1 identifierOnServer], 0);
      }

      ABSourceSetShouldIgnoreCapabilitiesRestrictions(a3, 0);
    }
  }

  return v5;
}

- (__CFString)localizedStringForKey:()ABAdditions formatArg:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = _ABBundle();
  v7 = CFBundleCopyLocalizedString(v6, a3, 0, @"Localized");
  if (v7)
  {
    v8 = v7;
    v12 = 0;
    v9 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v12, a4];
    if (v12)
    {
      v10 = ABOSLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v14 = v8;
        v15 = 2114;
        v16 = a4;
        v17 = 2114;
        v18 = v12;
        _os_log_error_impl(&dword_1B7EFB000, v10, OS_LOG_TYPE_ERROR, "Error creating localized string from format = %{public}@, value = %{public}@, error = %{public}@", buf, 0x20u);
      }
    }

    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return &stru_1F2FE2718;
  }
}

@end