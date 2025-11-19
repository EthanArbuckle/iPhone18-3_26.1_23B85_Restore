uint64_t __ActivitySharingBundle_block_invoke()
{
  ActivitySharingBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t ASActivitySharingDaemonEnabled()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  v1 = [v0 hk_BOOLForKey:@"ActivitySharingDaemonEnabled" defaultValue:1];

  return v1;
}

uint64_t ASMessagesIsInstalled()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [v0 applicationIsInstalled:@"com.apple.MobileSMS"];

  return v1;
}

uint64_t ASAlwaysFetchOnPeriodicUpdate()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  v1 = [v0 hk_BOOLForKey:@"AlwaysFetchOnPeriodicUpdate" defaultValue:0];

  return v1;
}

uint64_t ASUseLegacyDevelopmentContainer()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  v1 = [v0 hk_BOOLForKey:@"UseLegacyDevelopmentContainer" defaultValue:0];

  return v1;
}

id ASActivityDataZoneNames()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"Achievements";
  v3[1] = @"AchievementNotifications";
  v3[2] = @"ActivitySnapshots";
  v3[3] = @"ActivitySnapshotNotifications";
  v3[4] = @"Workouts";
  v3[5] = @"WorkoutNotifications";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t ASCodableFriendListReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(ASCodableFriend);
        [a1 addFriend:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ASCodableFriendReadFrom(&v13->super.super.isa, a2))
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

uint64_t ASNumberOfNewFriendsAllowedForFriends(void *a1)
{
  v1 = MEMORY[0x277CCAC30];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_515];
  v4 = [v2 filteredSetUsingPredicate:v3];

  v5 = 40 - [v4 count];
  return v5;
}

uint64_t __ASNumberOfNewFriendsAllowedForFriends_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasInviteRequestFromMe];
  }

  return v3;
}

uint64_t ASCodableInviteRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_33;
      }

      if (v13 == 5)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v27[0] & 0x7F) << v19;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_48:
        *(a1 + 48) = v25;
        goto LABEL_34;
      }

      if (v13 != 6)
      {
        goto LABEL_30;
      }

      v16 = objc_alloc_init(ASCodableActivityDataPreview);
      objc_storeStrong((a1 + 8), v16);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ASCodableActivityDataPreviewReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_34:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_33;
      case 2:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_33;
      case 3:
        v14 = PBReaderReadString();
        v15 = 32;
LABEL_33:
        v17 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_34;
    }

LABEL_30:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitAchievementReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 3)
        {
          *(a1 + 64) |= 1u;
          v42[0] = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v42[0];
          v38 = 8;
          goto LABEL_71;
        }

        if (v13 == 4)
        {
          *(a1 + 64) |= 2u;
          v42[0] = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v42[0];
          v38 = 16;
LABEL_71:
          *(a1 + v38) = v37;
          goto LABEL_72;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

      v25 = objc_alloc_init(ASCodableCloudKitSample);
      objc_storeStrong((a1 + 48), v25);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !ASCodableCloudKitSampleReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_72:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v23 = PBReaderReadString();
        v24 = 40;
        goto LABEL_54;
      }

      if (v13 == 9)
      {
        v23 = PBReaderReadString();
        v24 = 56;
LABEL_54:
        v32 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_72;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v42[0] & 0x7F) << v26;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v28;
        }

LABEL_61:
        v35 = 24;
        goto LABEL_66;
      }

      if (v13 == 7)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v42[0] & 0x7F) << v14;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
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

LABEL_65:
        v35 = 32;
LABEL_66:
        *(a1 + v35) = v20;
        goto LABEL_72;
      }
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRelationshipNeedsSupportedFeaturesUpdate(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = ASSupportedPhoneFeaturesForCurrentDevice();
  v3 = [v1 supportedPhoneFeatures];
  v4 = [v1 supportedWatchFeatures];
  v6 = v4 != [v1 supportedWatchFeatures] || v2 != v3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v1 dateForLatestSupportedFeaturesUpdate];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = v9;

  v11 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v12 = [v11 dateByAddingUnit:16 value:1 toDate:v10 options:0];

  if (v6)
  {
    if (![v7 hk_isBeforeOrEqualToDate:v12])
    {
      v14 = 1;
      goto LABEL_16;
    }

    ASLoggingInitialize();
    v13 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_23E4FA000, v13, OS_LOG_TYPE_DEFAULT, "Not updating supported features due to backoff (date: %@, now %@)", &v17, 0x16u);
    }
  }

  v14 = 0;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void ASUpdateSupportedFeaturesForRelationship(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = ASSupportedPhoneFeaturesForCurrentDevice();
  v3 = [v1 supportedWatchFeatures];
  ASLoggingInitialize();
  v4 = ASLogRelationships;
  if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v10 = 67109376;
    v11 = [v1 supportedPhoneFeatures];
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Phone features: %d -> %d", &v10, 0xEu);
  }

  ASLoggingInitialize();
  v6 = ASLogRelationships;
  if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v1 supportedWatchFeatures];
    v10 = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Watch features: %d -> %d", &v10, 0xEu);
  }

  [v1 setSupportedPhoneFeatures:v2];
  [v1 setSupportedWatchFeatures:v3];
  [v1 insertEventWithType:15];

  v9 = *MEMORY[0x277D85DE8];
}

id ASMaxNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v6 = v3;
    if (v4)
    {
      if ([v3 compare:v4] == -1)
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }
    }
  }

  v7 = v6;

  return v7;
}

uint64_t ASStringsAreEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqualToString:a2];
  }
}

uint64_t ASObjectsAreEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t ASObjectsAreEqualOrNil(unint64_t a1, unint64_t a2)
{
  if (a1 == a2 || !(a1 | a2))
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t ASDatesAreEqualOrNil(unint64_t a1, unint64_t a2)
{
  if (a1 == a2 || !(a1 | a2))
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t ASCodableCloudKitNotificationEventReadFrom(uint64_t a1, void *a2)
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
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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
      if ((v12 >> 3) <= 9)
      {
        break;
      }

      if (v13 != 10)
      {
        if (v13 != 11)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v37 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v37 & 0x7F) << v21;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_53;
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

LABEL_53:
        v32 = 16;
LABEL_54:
        *(a1 + v32) = v20;
        goto LABEL_57;
      }

      v30 = PBReaderReadData();
      v31 = *(a1 + 32);
      *(a1 + 32) = v30;

LABEL_57:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 40) |= 1u;
      v35 = 0;
      v28 = [a2 position] + 8;
      if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v35;
      goto LABEL_57;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 40) |= 4u;
    while (1)
    {
      v38 = 0;
      v17 = [a2 position] + 1;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v14;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v11 = v15++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_49;
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

LABEL_49:
    v32 = 24;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitMigrationAvailableItemReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ASCodableCloudKitMigrationAvailableItem__relationshipIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ASCodableCloudKitMigrationAvailableItem__identifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableInviteResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_32;
          case 2:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34 & 0x7F) << v25;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_63:
            v31 = 52;
            goto LABEL_64;
          case 3:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_32;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v34 & 0x7F) << v18;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_59:
          v31 = 48;
LABEL_64:
          *(a1 + v31) = v24;
          goto LABEL_65;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(ASCodableActivityDataPreview);
          objc_storeStrong((a1 + 8), v16);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ASCodableActivityDataPreviewReadFrom(v16, a2))
          {
LABEL_67:

            return 0;
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v16 = objc_alloc_init(ASCodableShareLocations);
          objc_storeStrong((a1 + 40), v16);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ASCodableShareLocationsReadFrom(v16, a2))
          {
            goto LABEL_67;
          }

LABEL_37:
          PBReaderRecallMark();

          goto LABEL_65;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_32:
          v17 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableContactListReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(ASCodableContact);
        [a1 addContacts:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ASCodableContactReadFrom(v13, a2))
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

__CFString *_ASSourceString(uint64_t a1)
{
  v1 = @"daemon";
  if (a1 == 2)
  {
    v1 = @"app";
  }

  if (a1 == 1)
  {
    return @"bulletin";
  }

  else
  {
    return v1;
  }
}

__CFString *_ASBulletinTypeString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"goalCompletion";
  }

  else
  {
    return off_278C46FB8[a1];
  }
}

uint64_t _ASCoreAnalyticsString(uint64_t a1)
{
  v1 = @"daemon";
  if (a1 == 2)
  {
    v1 = @"app";
  }

  if (a1 == 1)
  {
    v2 = @"bulletin";
  }

  else
  {
    v2 = v1;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"com.apple.ActivitySharing", @"phone", v2];
}

void ASAnalyticsReportCompetitionRequestSendBulletin(unint64_t a1)
{
  v3 = _ASCoreAnalyticsString(1);
  v2 = _ASBulletinTypeString(a1);
  FIActivityAnalyticsSubmission();
}

void ASAnalyticsReportCompetitionRequestSendApp()
{
  v0 = _ASCoreAnalyticsString(2);
  FIActivityAnalyticsSubmission();
}

void ASAnalyticsReportCompetitionRequestAccept(uint64_t a1)
{
  v1 = _ASCoreAnalyticsString(a1);
  FIActivityAnalyticsSubmission();
}

void ASAnalyticsReportCompetitionRequestIgnore(uint64_t a1)
{
  v1 = _ASCoreAnalyticsString(a1);
  FIActivityAnalyticsSubmission();
}

void ASAnalyticsReportSmackTalk(unint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = _ASBulletinTypeString(a1);
  v2 = _ASCoreAnalyticsString(1);
  FIActivityAnalyticsSubmission();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Notification", @"phone"];
  v6[0] = @"activityType";
  v6[1] = @"source";
  v7[0] = v1;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  FIActivityAnalyticsSubmissionWithPayload();

  v5 = *MEMORY[0x277D85DE8];
}

void ASAnalyticsUpdateWithFriends(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 hk_filter:&__block_literal_global_16];
  v3 = [v1 hk_filter:&__block_literal_global_430];
  v4 = [v1 hk_filter:&__block_literal_global_432];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) completedCompetitions];
        v7 += [v10 count];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = _ASCoreAnalyticsString(0);
  v22[0] = @"friends";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "count")}];
  v23[0] = v12;
  v22[1] = @"currentCompetitions";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "count")}];
  v23[1] = v13;
  v22[2] = @"friendsWithCompetitions";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "count")}];
  v23[2] = v14;
  v22[3] = @"completedCompetitions";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v23[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  FIActivityAnalyticsSubmissionWithPayload();

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __ASAnalyticsUpdateWithFriends_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasCompetitionHistory])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isCompetitionActive];
  }

  return v3;
}

void ASAnalyticsUpdateManateeStateWithFriends(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a1;
  v20 = [v8 hk_filter:&__block_literal_global_435];
  v9 = [v8 hk_filter:&__block_literal_global_437];

  v10 = [v7 hk_filter:&__block_literal_global_440];
  v11 = [v7 hk_filter:&__block_literal_global_445];

  v21[0] = @"totalFriendCount";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
  v22[0] = v12;
  v21[1] = @"migratedFriendCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v22[1] = v13;
  v21[2] = @"migrationEligible";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v22[2] = v14;
  v21[3] = @"endToEndEncryptionEnabled";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v22[3] = v15;
  v21[4] = @"legacyPhoneCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  v22[4] = v16;
  v21[5] = @"legacyWatchCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v22[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
  FIActivityAnalyticsSubmissionWithPayload();

  v19 = *MEMORY[0x277D85DE8];
}

BOOL __ASAnalyticsUpdateManateeStateWithFriends_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = [v2 cloudType] == 1;

  return v3;
}

uint64_t __ASAnalyticsUpdateManateeStateWithFriends_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = [v2 containsString:@"iOS"];

  return v3;
}

uint64_t __ASAnalyticsUpdateManateeStateWithFriends_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = [v2 containsString:@"watchOS"];

  return v3;
}

void ASAnalyticsReportAddManateeContainer(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"success";
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = a2;
  v10 = [v7 numberWithBool:a1];
  v15[0] = v10;
  v15[1] = v9;
  v14[1] = @"role";
  v14[2] = @"errorDomain";
  v15[2] = v8;
  v14[3] = @"errorCode";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  FIActivityAnalyticsSubmissionWithPayload();
  v13 = *MEMORY[0x277D85DE8];
}

void ASAnalyticsReportManateeMigration(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"success";
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithBool:a1];
  v15[0] = v9;
  v14[1] = @"friendCompletedMigration";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = v10;
  v15[2] = v8;
  v14[2] = @"errorDomain";
  v14[3] = @"errorCode";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  FIActivityAnalyticsSubmissionWithPayload();
  v13 = *MEMORY[0x277D85DE8];
}

void ASAnalyticsReportManateeDowngrade(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"success";
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithBool:a1];
  v15[0] = v9;
  v14[1] = @"friendCompletedDowngrade";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = v10;
  v15[2] = v8;
  v14[2] = @"errorDomain";
  v14[3] = @"errorCode";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  FIActivityAnalyticsSubmissionWithPayload();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ASCodableShareLocationsReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR___ASCodableShareLocations__relationshipShareURL;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ASCodableShareLocations__activityShareURL;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void ASSecureUnarchiveClassWithDataAndStrictness_cold_1(void *a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromClass(a2);
  OUTLINED_FUNCTION_0_0();
  v9 = a3;
  _os_log_error_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_ERROR, "Error unarchiving object of class %{public}@ error: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void ASSecureUnarchiveClassesWithData_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_error_impl(&dword_23E4FA000, v1, OS_LOG_TYPE_ERROR, "Error unarchiving object of classes %{public}@ error: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ASCompetitionCalculateUpdatedScores_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASCompetitionCalculateUpdatedScores_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Yesterday summary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASCompetitionCalculateUpdatedScores_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Today summary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForOutgoingCompetitionRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Contact does not support competitions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForOutgoingCompetitionRequest_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Activity data is currently hidden from contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForOutgoingCompetitionRequest_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Competition is already active with contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForOutgoingCompetitionRequest_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASValidateEligibilityForIncomingCompetitionRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Friendship is not active with contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForIncomingCompetitionRequest_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASValidateEligibilityForAcceptingCompetitionRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "No incoming request on contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForAcceptingCompetitionRequest_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Competiton is already active with contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASValidateEligibilityForAcceptingCompetitionRequest_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __ASCompetitionsEligibleForArchival_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Competition lastPushedCacheIndex is less than endDate, not eligible: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ASCompetitionsEligibleForArchival_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_23E4FA000, v0, v1, "Competition lastPushedCacheIndex is zero, not eligible: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASFriendAchievementFromTemplateAndEarnedInstance_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ASFriendAchievementFromTemplateAndEarnedInstance_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}