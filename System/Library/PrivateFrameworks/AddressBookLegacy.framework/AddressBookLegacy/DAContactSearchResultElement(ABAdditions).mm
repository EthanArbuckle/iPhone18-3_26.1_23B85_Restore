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
    if ([self displayName])
    {
      ABRecordSetValue(v5, kABCPersonDisplayNameProperty, [self displayName], 0);
    }

    if ([self firstName])
    {
      ABRecordSetValue(v5, kABPersonFirstNameProperty, [self firstName], 0);
    }

    if ([self lastName])
    {
      ABRecordSetValue(v5, kABPersonLastNameProperty, [self lastName], 0);
    }

    if ([self emailAddress])
    {
      Mutable = ABMultiValueCreateMutable(1u);
      ABMultiValueAddValueAndLabel(Mutable, [self emailAddress], @"_$!<Work>!$_", 0);
      ABRecordSetValue(v5, kABPersonEmailProperty, Mutable, 0);
      CFRelease(Mutable);
    }

    if ([self workPhone] || objc_msgSend(self, "mobilePhone") || objc_msgSend(self, "homePhone") || objc_msgSend(self, "faxPhone") || objc_msgSend(self, "pagerNumber") || objc_msgSend(self, "iPhone") || objc_msgSend(self, "mainPhone") || objc_msgSend(self, "workFaxPhone"))
    {
      v7 = ABMultiValueCreateMutable(1u);
      if ([self workPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self workPhone], @"_$!<Work>!$_", 0);
      }

      if ([self mobilePhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self mobilePhone], @"_$!<Mobile>!$_", 0);
      }

      if ([self homePhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self homePhone], @"_$!<Home>!$_", 0);
      }

      if ([self faxPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self faxPhone], @"_$!<HomeFAX>!$_", 0);
      }

      if ([self pagerNumber])
      {
        ABMultiValueAddValueAndLabel(v7, [self pagerNumber], @"_$!<Pager>!$_", 0);
      }

      if ([self iPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self iPhone], @"iPhone", 0);
      }

      if ([self mainPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self mainPhone], @"_$!<Main>!$_", 0);
      }

      if ([self workFaxPhone])
      {
        ABMultiValueAddValueAndLabel(v7, [self workFaxPhone], @"_$!<WorkFAX>!$_", 0);
      }

      ABRecordSetValue(v5, kABPersonPhoneProperty, v7, 0);
      CFRelease(v7);
    }

    if ([self company])
    {
      ABRecordSetValue(v5, kABPersonOrganizationProperty, [self company], 0);
    }

    if ([self title])
    {
      ABRecordSetValue(v5, kABPersonJobTitleProperty, [self title], 0);
    }

    v8 = ABMultiValueCreateMutable(5u);
    if ([self city] || objc_msgSend(self, "state") || objc_msgSend(self, "zip") || objc_msgSend(self, "country"))
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      if ([self street])
      {
        [v9 setObject:objc_msgSend(self forKey:{"street"), @"Street"}];
      }

      if ([self city])
      {
        [v9 setObject:objc_msgSend(self forKey:{"city"), @"City"}];
      }

      if ([self state])
      {
        [v9 setObject:objc_msgSend(self forKey:{"state"), @"State"}];
      }

      if ([self zip])
      {
        [v9 setObject:objc_msgSend(self forKey:{"zip"), @"ZIP"}];
      }

      if ([self country])
      {
        [v9 setObject:objc_msgSend(self forKey:{"country"), @"Country"}];
      }

      ABMultiValueAddValueAndLabel(v8, v9, @"_$!<Work>!$_", 0);
    }

    else if ([self postalAddress] || objc_msgSend(self, "street"))
    {
      street = [self street];
      if (!street)
      {
        street = [self postalAddress];
      }

      v17 = ABCreateAddressDictionaryWithString(street);
      if (!v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{street, @"Street", 0}];
      }

      ABMultiValueAddValueAndLabel(v8, v17, @"_$!<Work>!$_", 0);
      CFRelease(v17);
    }

    if ([self homePostalAddress])
    {
      v10 = ABCreateAddressDictionaryWithString([self homePostalAddress]);
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(self, "homePostalAddress"), @"Street", 0}];
      }

      ABMultiValueAddValueAndLabel(v8, v10, @"_$!<Home>!$_", 0);
      CFRelease(v10);
    }

    if (ABMultiValueGetCount(v8) >= 1)
    {
      ABRecordSetValue(v5, kABPersonAddressProperty, v8, 0);
    }

    CFRelease(v8);
    if ([self jpegPhoto])
    {
      ABPersonSetImageData(v5, [self jpegPhoto], 0);
    }

    if ([self imUsername])
    {
      v11 = ABMultiValueCreateMutable(1u);
      imService = [self imService];
      if (imService)
      {
        v13 = imService;
      }

      else
      {
        v13 = @"AIM";
      }

      ABMultiValueAddValueAndLabel(v11, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(self, "imUsername"), @"username", v13, @"service", 0}], @"_$!<Work>!$_", 0);
      ABRecordSetValue(v5, kABPersonInstantMessageProperty, v11, 0);
      CFRelease(v11);
    }

    if ([self buildingName] || objc_msgSend(self, "appleFloor"))
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if ([self buildingName])
      {
        [v14 appendString:{objc_msgSend(self, "localizedStringForKey:formatArg:", @"NOTES_BUILDING_NAME_FORMAT", objc_msgSend(self, "buildingName"))}];
        if ([self appleFloor])
        {
          [v14 appendString:@"\n"];
        }
      }

      if ([self appleFloor])
      {
        [v14 appendString:{objc_msgSend(self, "localizedStringForKey:formatArg:", @"NOTES_APPLE_FLOOR_FORMAT", objc_msgSend(self, "appleFloor"))}];
      }

      ABRecordSetValue(v5, kABPersonNoteProperty, v14, 0);
    }

    if (a3)
    {
      ABSourceSetShouldIgnoreCapabilitiesRestrictions(a3, 1);
      ABRecordSetValue(v5, kABPersonStoreReferenceProperty, a3, 0);
      if ([self identifierOnServer])
      {
        ABRecordSetValue(v5, kABPersonExternalIdentifierProperty, [self identifierOnServer], 0);
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