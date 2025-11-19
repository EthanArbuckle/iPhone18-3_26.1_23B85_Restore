id ATXSettingsActionsInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E79390];
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v2 forSelector:sel_suggestedActionsWithRequest_completionHandler_ argumentIndex:0 ofReply:0];

  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  [v0 setClasses:v4 forSelector:sel_recentActionsWithRequest_completionHandler_ argumentIndex:0 ofReply:0];

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  [v0 setClasses:v6 forSelector:sel_suggestedActionsWithRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  [v0 setClasses:v8 forSelector:sel_recentActionsWithRequest_completionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ATXPBExecutableReferenceCacheReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      if ((ATXPBExecutableReferenceCacheReadFrom_cold_1(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBExecutableReferenceCacheReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBExecutableReferenceKey);
  [(ATXPBExecutableReferenceCache *)a1 addKeys:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBExecutableReferenceKeyReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t ATXPBExecutableReferenceKeyReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v27 & 0x7F) << v15;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_50;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_50:
            *(a1 + 48) = v21;
            goto LABEL_53;
          case 2:
            v22 = PBReaderReadString();
            v23 = *(a1 + 40);
            *(a1 + 40) = v22;

            goto LABEL_53;
          case 3:
            v14 = objc_alloc_init(ATXPBAction);
            objc_storeStrong((a1 + 8), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ATXPBActionReadFrom(v14, a2))
            {
LABEL_58:

              return 0;
            }

            goto LABEL_46;
        }
      }

      else if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(MEMORY[0x1E69A45D8]);
          objc_storeStrong((a1 + 16), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ATXPBHeroAppPredictionReadFrom())
          {
            goto LABEL_58;
          }

          goto LABEL_46;
        }

        if (v13 == 5)
        {
          if ((ATXPBExecutableReferenceKeyReadFrom_cold_1(a1, &v26, a2, &v27) & 1) == 0)
          {
            return v27;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(MEMORY[0x1E69C5BA8]);
          objc_storeStrong((a1 + 24), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ATXPBInfoSuggestionReadFrom())
          {
            goto LABEL_58;
          }

          goto LABEL_46;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(ATXPBLinkAction);
          objc_storeStrong((a1 + 32), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ATXPBLinkActionReadFrom(v14, a2))
          {
            goto LABEL_58;
          }

LABEL_46:
          PBReaderRecallMark();

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBExecutableReferenceKeyReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBExecutableReferenceEntry);
  [(ATXPBExecutableReferenceKey *)a1 addReferences:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBExecutableReferenceEntryReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t ATXPBExecutableReferenceEntryReadFrom(uint64_t a1, void *a2)
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
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          *(a1 + 28) |= 1u;
          v41 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v41;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_54:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
          }

          v21 = PBReaderReadString();
          v22 = *(a1 + 16);
          *(a1 + 16) = v21;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v45 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v45 & 0x7F) << v23;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_57;
              }
            }

            v20 = (v25 != 0) & ~[a2 hasError];
LABEL_57:
            v38 = 24;
            break;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v44 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v44 & 0x7F) << v29;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_59;
              }
            }

            v20 = (v31 != 0) & ~[a2 hasError];
LABEL_59:
            v38 = 25;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v43 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v43 & 0x7F) << v14;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_61;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_61:
            v38 = 26;
            break;
          default:
            goto LABEL_54;
        }

        *(a1 + v38) = v20;
      }

LABEL_65:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v43) = 0;
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_74;
      case 2u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 188) |= 1u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v43 & 0x7F) << v30;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_92;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_92:
        v40 = 8;
        goto LABEL_95;
      case 3u:
        v13 = PBReaderReadData();
        v14 = 88;
        goto LABEL_74;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_74;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 188) |= 8u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v43 & 0x7F) << v16;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_84;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_84:
        *(a1 + 184) = v22;
        goto LABEL_75;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 152;
        goto LABEL_74;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_74;
      case 8u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 188) |= 4u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v43 & 0x7F) << v23;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_88;
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

LABEL_88:
        v40 = 24;
LABEL_95:
        *(a1 + v40) = v29;
        goto LABEL_75;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_74;
      case 0xAu:
        v13 = PBReaderReadData();
        v14 = 168;
        goto LABEL_74;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_74;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 176;
        goto LABEL_74;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_74;
      case 0xEu:
        v13 = PBReaderReadData();
        v14 = 48;
        goto LABEL_74;
      case 0xFu:
        v15 = objc_alloc_init(ATXPBActionCriteria);
        objc_storeStrong((a1 + 56), v15);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !ATXPBActionCriteriaReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_70;
      case 0x10u:
        v15 = objc_alloc_init(ATXPBAVRouteInfo);
        objc_storeStrong((a1 + 136), v15);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !ATXPBAVRouteInfoReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_70;
      case 0x11u:
        v15 = objc_alloc_init(ATXPBHeuristicMetadata);
        [a1 addHeuristicMetadata:v15];
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !ATXPBHeuristicMetadataReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_70;
      case 0x12u:
        *(a1 + 188) |= 2u;
        v43 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v29 = v43;
        v40 = 16;
        goto LABEL_95;
      case 0x13u:
        v15 = objc_alloc_init(ATXPBPredictableParameters);
        [a1 addPredictableParameterCombinations:v15];
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && ATXPBPredictableParametersReadFrom(v15, a2))
        {
LABEL_70:
          PBReaderRecallMark();
LABEL_71:

LABEL_75:
          v39 = [a2 position];
          if (v39 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_97:

        return 0;
      case 0x14u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addMenuItemPathComponent:v15];
        }

        goto LABEL_71;
      case 0x15u:
        v13 = PBReaderReadString();
        v14 = 160;
        goto LABEL_74;
      case 0x16u:
        v13 = PBReaderReadData();
        v14 = 64;
LABEL_74:
        v38 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_75;
      case 0x17u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addParameterKeysForToolInvocation:v15];
        }

        goto LABEL_71;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
    }
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return objc_opt_class();
}

void sub_1BF54F158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_7(id obj@<X2>, uint64_t a2@<X8>)
{

  objc_storeStrong((v2 + a2), obj);
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t ATXPBStackKindForKind(uint64_t result)
{
  if ((result - 1) < 7)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ATXPBStackLayoutSizeForLayoutSize(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 1;
  }

  else
  {
    return (a1 + 1);
  }
}

uint64_t ATXPBStackLocationForLocation(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_1BF6F5800[a1 - 1];
  }
}

uint64_t ATXStackLayoutSizeToProto(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 1;
  }

  else
  {
    return (a1 + 1);
  }
}

id allowedLeafIconClasses()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 initWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v0);

  return v6;
}

uint64_t ATXPBHomeScreenWidgetIdentifiableReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              v45 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v45 & 0x7F) << v23;
              if ((v45 & 0x80) == 0)
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
            *(a1 + 48) = v29;
            goto LABEL_80;
          }

          if (v13 != 7)
          {
LABEL_67:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_80;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v47 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v47 & 0x7F) << v16;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_70;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_70:
          v40 = 73;
          goto LABEL_77;
        }

        if (v13 == 8)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            v46 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v46 & 0x7F) << v30;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_76;
            }
          }

          v22 = (v32 != 0) & ~[a2 hasError];
LABEL_76:
          v40 = 72;
LABEL_77:
          *(a1 + v40) = v22;
          goto LABEL_80;
        }

        if (v13 == 9)
        {
          *(a1 + 76) |= 1u;
          v43 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v43;
          goto LABEL_80;
        }

        if (v13 != 10)
        {
          goto LABEL_67;
        }

        v14 = PBReaderReadString();
        v15 = 40;
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_67;
          }

          v14 = PBReaderReadString();
          v15 = 56;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 4:
            v14 = PBReaderReadData();
            v15 = 32;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 64;
            break;
          default:
            goto LABEL_67;
        }
      }

      v36 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_80:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXStackLayoutSizeFromProto(int a1)
{
  v1 = (a1 - 2);
  if (v1 < 4)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t CHSWidgetFamilyFromATXStackLayoutSize(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BF6F5840[a1];
  }
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x1EEE66BB8]();
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BF553390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x1EEE66BB8]();
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_1_19(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

id OUTLINED_FUNCTION_0_13(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_0_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

_BYTE *OUTLINED_FUNCTION_0_25(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

id getAsset()
{
  if (getAsset_onceToken != -1)
  {
    getAsset_cold_1();
  }

  v1 = getAsset_asset;

  return v1;
}

uint64_t ATXPBUserNotificationReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v120) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v120 & 0x7F) << v6;
      if ((v120 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        *(a1 + 216) |= 0x20u;
        v120 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v118 = [a2 data];
          [v118 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v115 = v120;
        v116 = 48;
        goto LABEL_230;
      case 2u:
        v33 = PBReaderReadString();
        v34 = 200;
        goto LABEL_160;
      case 3u:
        v33 = PBReaderReadString();
        v34 = 176;
        goto LABEL_160;
      case 4u:
        v33 = PBReaderReadString();
        v34 = 144;
        goto LABEL_160;
      case 5u:
        v33 = PBReaderReadString();
        v34 = 64;
        goto LABEL_160;
      case 6u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 216) |= 2u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v120 & 0x7F) << v61;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v67 = 0;
            goto LABEL_198;
          }
        }

        if ([a2 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v63;
        }

LABEL_198:
        v113 = 16;
        goto LABEL_223;
      case 7u:
        v33 = PBReaderReadData();
        v34 = 192;
        goto LABEL_160;
      case 8u:
        v33 = PBReaderReadString();
        v34 = 72;
        goto LABEL_160;
      case 9u:
        v48 = objc_alloc_init(ATXPBUserNotificationDerivedData);
        objc_storeStrong((a1 + 96), v48);
        v120 = 0;
        v121 = 0;
        if (!PBReaderPlaceMark() || !ATXPBUserNotificationDerivedDataReadFrom(v48, a2))
        {
          goto LABEL_233;
        }

        goto LABEL_148;
      case 0xAu:
        v33 = PBReaderReadString();
        v34 = 168;
        goto LABEL_160;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 80;
        goto LABEL_160;
      case 0xCu:
        v33 = PBReaderReadString();
        v34 = 128;
        goto LABEL_160;
      case 0xDu:
        v48 = PBReaderReadString();
        if (v48)
        {
          [a1 addContactIDs:v48];
        }

        goto LABEL_149;
      case 0xEu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 216) |= 0x400u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v120 & 0x7F) << v20;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v12 = v21++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_180;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_180:
        v111 = 208;
        goto LABEL_209;
      case 0xFu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 216) |= 0x200u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v120 & 0x7F) << v74;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v76;
        }

LABEL_204:
        v112 = 184;
        goto LABEL_214;
      case 0x10u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 216) |= 0x800u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v120 & 0x7F) << v80;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_206;
          }
        }

        v26 = (v82 != 0) & ~[a2 hasError];
LABEL_206:
        v111 = 209;
        goto LABEL_209;
      case 0x11u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 216) |= 0x40u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v120 & 0x7F) << v92;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_213;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v94;
        }

LABEL_213:
        v112 = 56;
        goto LABEL_214;
      case 0x12u:
        v48 = objc_alloc_init(ATXPBSharedDigestEngagementTrackingMetrics);
        objc_storeStrong((a1 + 136), v48);
        v120 = 0;
        v121 = 0;
        if (PBReaderPlaceMark() && ATXPBSharedDigestEngagementTrackingMetricsReadFrom(v48, a2))
        {
LABEL_148:
          PBReaderRecallMark();
LABEL_149:

LABEL_231:
          v4 = a2;
          continue;
        }

LABEL_233:

        return 0;
      case 0x13u:
        *(a1 + 216) |= 1u;
        v120 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v114 = [a2 data];
          [v114 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v115 = v120;
        v116 = 8;
        goto LABEL_230;
      case 0x14u:
        v48 = PBReaderReadString();
        if (v48)
        {
          [a1 addRawIdentifiers:v48];
        }

        goto LABEL_149;
      case 0x15u:
        v33 = PBReaderReadString();
        v34 = 104;
        goto LABEL_160;
      case 0x16u:
        *(a1 + 216) |= 0x10u;
        v120 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v117 = [a2 data];
          [v117 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v115 = v120;
        v116 = 40;
LABEL_230:
        *(a1 + v116) = v115;
        goto LABEL_231;
      case 0x1Eu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 216) |= 0x10000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v120 & 0x7F) << v42;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_188;
          }
        }

        v26 = (v44 != 0) & ~[a2 hasError];
LABEL_188:
        v111 = 214;
        goto LABEL_209;
      case 0x1Fu:
        v33 = PBReaderReadString();
        v34 = 152;
LABEL_160:
        v98 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_231;
      case 0x21u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 216) |= 0x2000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v120 & 0x7F) << v68;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_200;
          }
        }

        v26 = (v70 != 0) & ~[a2 hasError];
LABEL_200:
        v111 = 211;
        goto LABEL_209;
      case 0x22u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 216) |= 0x8000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v120 & 0x7F) << v27;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_182;
          }
        }

        v26 = (v29 != 0) & ~[a2 hasError];
LABEL_182:
        v111 = 213;
        goto LABEL_209;
      case 0x23u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 216) |= 8u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v120 & 0x7F) << v105;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v67 = 0;
            goto LABEL_222;
          }
        }

        if ([a2 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v107;
        }

LABEL_222:
        v113 = 32;
        goto LABEL_223;
      case 0x24u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 216) |= 4u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v120 & 0x7F) << v99;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v67 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v101;
        }

LABEL_218:
        v113 = 24;
LABEL_223:
        *(a1 + v113) = v67;
        goto LABEL_231;
      case 0x26u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 216) |= 0x80u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v120 & 0x7F) << v35;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_186:
        v112 = 112;
        goto LABEL_214;
      case 0x27u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 216) |= 0x100u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v120 & 0x7F) << v49;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_192;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v51;
        }

LABEL_192:
        v112 = 160;
LABEL_214:
        *(a1 + v112) = v41;
        goto LABEL_231;
      case 0x28u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 216) |= 0x4000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v120 & 0x7F) << v86;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_208;
          }
        }

        v26 = (v88 != 0) & ~[a2 hasError];
LABEL_208:
        v111 = 212;
        goto LABEL_209;
      case 0x29u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 216) |= 0x1000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v120 & 0x7F) << v55;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            LOBYTE(v26) = 0;
            goto LABEL_194;
          }
        }

        v26 = (v57 != 0) & ~[a2 hasError];
LABEL_194:
        v111 = 210;
LABEL_209:
        *(a1 + v111) = v26;
        goto LABEL_231;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_231;
    }
  }
}

uint64_t ATXPBPredictableParametersReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addParameterKeys:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id ATXAllowedEngagementRecordManagerClasses()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXAction", @"NSString", @"ATXHeroData", @"ATXInfoSuggestion", @"ATXLinkActionContainer", 0}];
  objc_autoreleasePoolPop(v0);

  return v1;
}

ATXExecutableIdentifier *ATXExecutableIdentifierForSuggestion(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [v1 executableSpecification];
  v4 = [v3 executableObject];

  if (!v4)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      ATXExecutableIdentifierForSuggestion_cold_7();
    }

    goto LABEL_33;
  }

  v5 = [v1 executableSpecification];
  v6 = [v5 executableClassString];
  v7 = NSClassFromString(v6);

  if (v7 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        ATXExecutableIdentifierForSuggestion_cold_6();
      }

      goto LABEL_33;
    }

    v10 = [[ATXExecutableIdentifier alloc] initWithAction:v4];
    goto LABEL_28;
  }

  if (v7 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        ATXExecutableIdentifierForSuggestion_cold_5();
      }

      goto LABEL_33;
    }

    v10 = [[ATXExecutableIdentifier alloc] initWithString:v4];
    goto LABEL_28;
  }

  if (v7 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        ATXExecutableIdentifierForSuggestion_cold_4();
      }

      goto LABEL_33;
    }

    v10 = [[ATXExecutableIdentifier alloc] initWithHeroAppPrediction:v4];
    goto LABEL_28;
  }

  if (v7 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        ATXExecutableIdentifierForSuggestion_cold_3();
      }

      goto LABEL_33;
    }

    v10 = [[ATXExecutableIdentifier alloc] initWithInfoSuggestion:v4];
LABEL_28:
    v11 = v10;
    goto LABEL_35;
  }

  if (v7 != objc_opt_class())
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      ATXExecutableIdentifierForSuggestion_cold_1(v7, v8);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[ATXExecutableIdentifier alloc] initWithLinkAction:v4];
    goto LABEL_28;
  }

  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    ATXExecutableIdentifierForSuggestion_cold_2();
  }

LABEL_33:

LABEL_34:
  v12 = [ATXExecutableIdentifier alloc];
  v13 = [v1 executableSpecification];
  v14 = [v13 executableIdentifier];
  v11 = [(ATXExecutableIdentifier *)v12 initWithString:v14];

LABEL_35:
  objc_autoreleasePoolPop(v2);

  return v11;
}

id keyForStrings(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithFormat:@"%@-%@", v5, v4];

  return v6;
}

uint64_t ATXPBActionCriteriaReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v33) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_41;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_41:
          *(a1 + 32) = v27;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_26:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_47;
          }

          v16 = PBReaderReadData();
          v17 = *(a1 + 24);
          *(a1 + 24) = v16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 36) |= 2u;
          v33 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_26;
          }

          *(a1 + 36) |= 1u;
          v33 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 8;
        }

        *(a1 + v30) = v29;
      }

LABEL_47:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void ATXCacheAppendData(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 length];
  v7 = v5;
  [v4 appendBytes:&v7 length:8];
  v6 = [v3 bytes];

  [v4 appendBytes:v6 length:v5];
}

void ATXCacheAppendString(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  v6 = [a2 UTF8String];
  v7 = strlen(v6);
  v8 = v7;
  [v5 appendBytes:&v8 length:8];
  [v5 appendBytes:v6 length:v7];
}

id getTrialAssets()
{
  if (getTrialAssets_onceToken != -1)
  {
    getTrialAssets_cold_1();
  }

  v1 = getTrialAssets_assets;

  return v1;
}

void __getAsset_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69C5CC0]);
  v1 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/DuetExpertCenter/Assets"];
  v6 = [v1 pathForResource:@"Assets" ofType:@"bundle"];

  v2 = dispatch_get_global_queue(9, 0);
  LOBYTE(v5) = 1;
  v3 = [v0 initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.DuetExpertCenterAsset.plist" defaultBundlePath:v6 matchingKeysAndValues:0 notificationQueue:v2 logHandle:0 enableAssetUpdates:1 purgeObsoleteInstalledAssets:v5];
  v4 = getAsset_asset;
  getAsset_asset = v3;
}

uint64_t ATXPBUserNotificationDerivedDataReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(ATXPBUserNotificationModelScore);
        [a1 addScores:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBUserNotificationModelScoreReadFrom(v13, a2))
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

id ATXSlotSetsDeserialize(void *a1, id *a2)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = adler32(0, (v4 + 4), [v3 length] - 4);
  if ((v5 & 0x8000000000000000) != 0 || v5 < 4)
  {
    goto LABEL_3;
  }

  v9 = v6;
  v10 = *v4;
  if (*v4 != v6)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ATXSlotSetsDeserialize_cold_1(v10, v9, v12);
    }

    v7 = 0;
    goto LABEL_49;
  }

  if ((v5 & 0x7FFFFFFFFFFFFFFCLL) == 4 || (v62 = *(v4 + 4), v11 = (v62 >> 8) & 0x7FFFFF, v5 - 8 < v11))
  {
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:(v11 + 8)];
  [v12 appendBytes:"bplist00" length:8];
  [v12 appendBytes:v4 + 8 length:v11];
  v13 = objc_autoreleasePoolPush();
  v64 = 0;
  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v64];
  v15 = v64;
  objc_autoreleasePoolPop(v13);
  if (!v14)
  {
    v53 = __atxlog_handle_default();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      ATXSlotSetsDeserialize_cold_3(v15, v53);
    }

    if (a2)
    {
      v54 = v15;
      v7 = 0;
      v63 = *a2;
      *a2 = v54;
      goto LABEL_64;
    }

    v7 = 0;
    goto LABEL_65;
  }

  v59 = v14;
  v16 = v4 + v5;
  v17 = (v4 + 8 + v11);
  v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v62];
  v58 = v15;
  if (v62)
  {
    v18 = 0;
    do
    {
      if (v16 < v17 || v16 - v17 < 2 || ((v21 = *v17, v20 = v17 + 1, (v19 = v21) != 0) ? (v22 = v20 > v16) : (v22 = 1), v22 || (v16 - v20) < v19))
      {
        v7 = 0;
        v15 = v58;
        v14 = v59;
        goto LABEL_64;
      }

      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v20 length:v19 encoding:4];
      if (!v23)
      {
        v14 = v59;
        if (a2)
        {
          v65 = *MEMORY[0x1E696A578];
          v66[0] = @"Error decoding action parameters";
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
          v56 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ATXActionDeserialization" code:1 userInfo:v55];
          v57 = *a2;
          *a2 = v56;
        }

        v26 = __atxlog_handle_default();
        v15 = v58;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          ATXSlotSetsDeserialize_cold_2(v26);
        }

        v7 = 0;
        goto LABEL_63;
      }

      v24 = v23;
      v17 = (v20 + v19);
      [v63 addObject:v23];

      ++v18;
    }

    while (v18 < v62);
  }

  v25 = objc_opt_new();
  v26 = v25;
  v27 = v62;
  if (v17 >= v16)
  {
LABEL_45:
    v51 = objc_alloc(MEMORY[0x1E69C5D98]);
    v52 = [v26 copy];
    v14 = v59;
    v7 = [v51 initWithFirst:v59 second:v52];

    goto LABEL_62;
  }

  v28 = v62;
  v29 = v17;
  v61 = v25;
  while (1)
  {
    v30 = *v29++;
    v31 = v30;
    if (v30 < 0)
    {
      break;
    }

    v32 = 0;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v31)
    {
      goto LABEL_31;
    }

    v33 = [[ATXSlotSet alloc] initWithOpaqueParametersUuid:v32];
    [v26 addObject:v33];
LABEL_39:

LABEL_44:
    v17 = v29;
    if (v29 >= v16)
    {
      goto LABEL_45;
    }
  }

  if (v16 - v29 < 0x10)
  {
    goto LABEL_61;
  }

  v32 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v29];
  v29 = v17 + 17;
  v31 &= 0x7Fu;
  if (v27 < 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  if (!v31)
  {
    v47 = [ATXSlotSet alloc];
    v33 = objc_opt_new();
    v48 = [(ATXSlotSet *)v47 initWithParameters:v33 uuid:v32];
    v49 = v61;
    [v61 addObject:v48];

    v26 = v49;
    goto LABEL_39;
  }

  v60 = &v58;
  v34 = v31;
  MEMORY[0x1EEE9AC00]();
  v36 = &v58 - v35;
  bzero(&v58 - v35, v37);
  v38 = 0;
  v39 = 8 * v34;
  if (v16 >= v29 && (v16 - v29) >= v34)
  {
    v40 = 0;
    v41 = v29 + 1;
    while (1)
    {
      v29 = v41;
      if (*(v41 - 1) >= v28)
      {
        break;
      }

      v42 = [v63 objectAtIndexedSubscript:?];
      v43 = *&v36[v40];
      *&v36[v40] = v42;

      v40 += 8;
      v41 = v29 + 1;
      if (v39 == v40)
      {
        v44 = [ATXSlotSet alloc];
        v45 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v36 count:v34];
        v46 = [(ATXSlotSet *)v44 initWithParameters:v45 uuid:v32];
        [v61 addObject:v46];

        v38 = 1;
        goto LABEL_41;
      }
    }

    v38 = 0;
  }

LABEL_41:
  v50 = v36 - 8;
  do
  {

    v39 -= 8;
  }

  while (v39);

  v26 = v61;
  v27 = v62;
  if (v38)
  {
    goto LABEL_44;
  }

LABEL_61:
  v7 = 0;
  v14 = v59;
LABEL_62:
  v15 = v58;
LABEL_63:

LABEL_64:
LABEL_65:

LABEL_49:
LABEL_4:

  return v7;
}

id ATXHomeScreenSuggestionServerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E7B728];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_blendingLayerDidUpdateHomeScreenCachedSuggestions_completion_ argumentIndex:0 ofReply:0];

  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler_ argumentIndex:1 ofReply:1];

  return v0;
}

id ATXHomeScreenSuggestionClientXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3EA4400];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_logWidgetAddedFeaturesInCoreAnalytics_rankOfWidgetInGallery_galleryItems_ argumentIndex:0 ofReply:0];

  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_logWidgetAddedFeaturesInCoreAnalytics_rankOfWidgetInGallery_galleryItems_ argumentIndex:2 ofReply:0];

  return v0;
}

id ATXAVFoundationRoutingSessionManager()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVRoutingSessionManagerClass_softClass;
  v7 = getAVRoutingSessionManagerClass_softClass;
  if (!getAVRoutingSessionManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVRoutingSessionManagerClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getAVRoutingSessionManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF55C37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXAVFoundationOutputDevice()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVOutputDeviceClass_softClass;
  v7 = getAVOutputDeviceClass_softClass;
  if (!getAVOutputDeviceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVOutputDeviceClass_block_invoke;
    v3[3] = &unk_1E80C0758;
    v3[4] = &v4;
    __getAVOutputDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BF55C45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVRoutingSessionManagerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVRoutingSessionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVRoutingSessionManagerClass_block_invoke_cold_1();
  }

  getAVRoutingSessionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AVFoundationLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AVFoundationLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80C0778;
    v2 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    AVFoundationLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AVFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVOutputDeviceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVOutputDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVOutputDeviceClass_block_invoke_cold_1();
  }

  getAVOutputDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ATXPBActivitySuggestionFeedbackEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v29 = objc_alloc_init(ATXPBActivity);
            objc_storeStrong((a1 + 16), v29);
            v40[0] = 0;
            v40[1] = 0;
            if (!PBReaderPlaceMark() || !ATXPBActivityReadFrom(v29, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_61;
          case 5:
            v29 = PBReaderReadData();
            if (v29)
            {
              [(ATXPBActivitySuggestionFeedbackEvent *)a1 addSerializedAcceptedTriggers:v29];
            }

LABEL_61:

            goto LABEL_77;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v40[0] & 0x7F) << v21;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_69;
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

LABEL_69:
            v36 = 28;
            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            *(a1 + 44) |= 1u;
            v40[0] = 0;
            v27 = [a2 position] + 8;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v40[0];
            goto LABEL_77;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v40[0] & 0x7F) << v30;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

LABEL_73:
            v36 = 24;
            goto LABEL_74;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40[0] & 0x7F) << v14;
              if ((v40[0] & 0x80) == 0)
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
            v36 = 40;
LABEL_74:
            *(a1 + v36) = v20;
            goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBDigestOnboardingAppSelectionLoggingEventReadFrom(uint64_t a1, void *a2)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
        if (v13 <= 7)
        {
          if (v13 == 5)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v61 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v61 & 0x7F) << v37;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v39;
            }

LABEL_90:
            v56 = 16;
          }

          else
          {
            if (v13 != 6)
            {
              goto LABEL_85;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v60 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v60 & 0x7F) << v16;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_100;
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

LABEL_100:
            v56 = 32;
          }

LABEL_105:
          *(a1 + v56) = v22;
          goto LABEL_109;
        }

        if (v13 == 8)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v65 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v65 & 0x7F) << v49;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              LOBYTE(v35) = 0;
              goto LABEL_96;
            }
          }

          v35 = (v51 != 0) & ~[a2 hasError];
LABEL_96:
          v57 = 48;
        }

        else
        {
          if (v13 != 9)
          {
LABEL_85:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_109;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            v64 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v64 & 0x7F) << v29;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              LOBYTE(v35) = 0;
              goto LABEL_107;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_107:
          v57 = 49;
        }

        *(a1 + v57) = v35;
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v63 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v63 & 0x7F) << v43;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v45;
            }

LABEL_94:
            v56 = 8;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_85;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v62 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_104;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_104:
            v56 = 12;
          }

          goto LABEL_105;
        }

        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_85;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v36 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_109:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *ATXModeToString(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80C09A0[a1];
  }
}

uint64_t ATXStringToMode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Default"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Working"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Exercising"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Driving"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Bedtime"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Gaming"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Reading"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"FirstDigest"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"LastDigest"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"OtherDigest"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"UnspecifiedDigest"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Custom"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"DND"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"Mindfulness"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"ReduceInterruptions"])
  {
    v2 = 15;
  }

  else
  {
    v2 = 16;
  }

  return v2;
}

uint64_t ATXModeFromActivityType(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_1BF6F52F8[a1];
  }
}

uint64_t ATXActivityTypeFromMode(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 14;
  }

  else
  {
    return qword_1BF6F5388[a1 - 1];
  }
}

__CFString *ATXAppDirectoryCategoryToStringForITunesGenreID(uint64_t a1)
{
  if ((a1 - 6000) > 0x1B)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80C0A88[a1 - 6000];
  }
}

id ATXAppDirectoryInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E67E08];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_categoriesWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1BF56A0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF56B7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF56C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBFeedbackUserInteractionsTrackerReadFrom(uint64_t a1, void *a2)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
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

__CFString *ATXDigestOnboardingEntrySourceToString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C0E68[a1];
  }

  return v2;
}

__CFString *ATXDigestOnboardingOutcomeToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C0E80[a1];
  }

  return v2;
}

__CFString *ATXDigestOnboardingFinalUIShownToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E80C0EA0[a1];
  }

  return v2;
}

void sub_1BF5703E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id loadLazyOrRegularPlist(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v14 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v1 options:1 error:&v14];
  v4 = v14;
  if (!v3)
  {
    v10 = __atxlog_handle_trial_assets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      loadLazyOrRegularPlist_cold_2();
    }

    v7 = 0;
    goto LABEL_15;
  }

  if ([v3 length] >= 3 && ((v5 = objc_msgSend(v3, "bytes"), *v5 == 19536) ? (v6 = *(v5 + 2) == 80) : (v6 = 0), v6))
  {
    v13 = v4;
    v7 = [MEMORY[0x1E69C5D40] dictionaryWithData:v3 error:&v13];
    v8 = v13;
  }

  else
  {
    v12 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v12];
    v8 = v12;
  }

  v9 = v8;

  if (!v7)
  {
    v10 = __atxlog_handle_trial_assets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      loadLazyOrRegularPlist_cold_1();
    }

    v4 = v9;
LABEL_15:

    v9 = v4;
  }

  objc_autoreleasePoolPop(v2);

  return v7;
}

void sub_1BF570938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF570B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF57179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF571968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF571B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF571CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXUnarchiverZip(NSURL *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_14;
  }

  if (![(NSURL *)v3 isFileURL])
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }

    goto LABEL_12;
  }

  v7 = open([(NSURL *)v3 fileSystemRepresentation], 4);
  if (v7 < 0)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }

LABEL_12:
    v6 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = v7;
  v6 = ATXUnarchiverZip(v7, v5);
  if (close(v8))
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      ATXUnarchiverZip();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

uint64_t ATXUnarchiverZip(int a1, NSURL *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 < 0 || !v3)
  {
    goto LABEL_17;
  }

  Archive = PPCreateReadArchive();
  if (!Archive)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v7 = Archive;
  NSPageSize();
  if (archive_read_open_fd())
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }

    v5 = 0;
  }

  else
  {
    v5 = PPZipUnarchive(v7, v4);
    if (!archive_read_close())
    {
      goto LABEL_13;
    }

    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }
  }

LABEL_13:
  if (archive_read_free())
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      ATXUnarchiverZip();
    }
  }

LABEL_17:

  return v5;
}

uint64_t ATXUnarchiverZip(NSData *a1, NSURL *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = [(NSData *)v6 bytes];
  v8 = [(NSData *)v6 length];

  v9 = ATXUnarchiverZip(v7, v8, v5);
  return v9;
}

uint64_t ATXUnarchiverZip(const void *a1, unint64_t a2, NSURL *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (!a1 || !v4)
  {
    goto LABEL_17;
  }

  Archive = PPCreateReadArchive();
  if (!Archive)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v8 = Archive;
  if (archive_read_open_memory())
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }

    v6 = 0;
  }

  else
  {
    v6 = PPZipUnarchive(v8, v5);
    if (!archive_read_close())
    {
      goto LABEL_13;
    }

    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ATXUnarchiverZip();
    }
  }

LABEL_13:
  if (archive_read_free())
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      ATXUnarchiverZip();
    }
  }

LABEL_17:

  return v6;
}

uint64_t PPCreateReadArchive()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = archive_read_new();
  if (!v0)
  {
    return v0;
  }

  if (archive_read_support_format_zip())
  {
    v1 = __atxlog_handle_default();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = archive_error_string();
      _os_log_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEFAULT, "ATXUnarchiver: archive_read unable to set supported formats - %{public}s.", &v7, 0xCu);
    }

LABEL_6:
    if (archive_read_free())
    {
      v2 = __atxlog_handle_default();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        PPCreateReadArchive_cold_2();
      }
    }

    return 0;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20)
  {
    v5 = support_filter_all;
    if (support_filter_all)
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        PPCreateReadArchive_cold_1();
      }

      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return v0;
}

uint64_t PPZipUnarchive(uint64_t a1, void *a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v48 = *MEMORY[0x1E696A370];
  v49[0] = &unk_1F3E5FE08;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v44[0] = 0;
  v5 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:0 attributes:v4 error:v44];
  v6 = v44[0];

  if ((v5 & 1) == 0)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v9 = [v6 code];

      if (v9 == 516)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PPZipUnarchive_cold_1();
    }

    goto LABEL_19;
  }

LABEL_2:

  if (!archive_write_disk_new())
  {
    goto LABEL_21;
  }

  if (archive_write_disk_set_standard_lookup())
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      PPZipUnarchive_cold_2();
    }
  }

  else
  {
    if (!archive_write_disk_set_options())
    {
      v13 = [v2 path];
      v6 = v13;
      if (v13)
      {
        v15 = realpath_DARWIN_EXTSN([v13 fileSystemRepresentation], 0);
        if (v15)
        {
          v16 = v15;
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];

          free(v16);
          v6 = v17;
        }

        else
        {
          v18 = __atxlog_handle_default();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            PPZipUnarchive_cold_5();
          }
        }
      }

      *&v14 = 134218240;
      v43 = v14;
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          break;
        }

        v20 = archive_entry_filetype();
        v21 = objc_autoreleasePoolPush();
        v22 = archive_entry_pathname_utf8();
        if (!v22)
        {
          v36 = __atxlog_handle_default();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            PPZipUnarchive_cold_9(v36);
          }

LABEL_74:
          objc_autoreleasePoolPop(v21);
          goto LABEL_55;
        }

        v23 = v22;
        v24 = -1;
        do
        {
          v25 = *(v22 + v24++ + 1);
        }

        while (v25 == 47);
        if (v24)
        {
          v26 = __atxlog_handle_default();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v31 = strlen(v23);
            *buf = v43;
            *&buf[4] = v24;
            v46 = 2048;
            v47 = v31;
            _os_log_error_impl(&dword_1BF549000, v26, OS_LOG_TYPE_ERROR, "ATXUnarchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
          }
        }

        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:&v23[v24]];
        v28 = [v27 length];
        if (!v28 && v20 != 0x4000)
        {
          v37 = __atxlog_handle_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            PPZipUnarchive_cold_6(v37);
          }

          goto LABEL_74;
        }

        v29 = [v6 stringByAppendingPathComponent:v27, v43, 0];

        [v29 fileSystemRepresentation];
        archive_entry_update_pathname_utf8();

        objc_autoreleasePoolPop(v21);
        archive_entry_perm();
        archive_entry_set_perm();
        if (v28)
        {
          if (archive_write_header())
          {
            v40 = __atxlog_handle_default();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v38 = archive_error_string();
              *buf = 136446210;
              *&buf[4] = v38;
              v39 = "ATXUnarchiver: archive_write_header failed - %{public}s.";
              goto LABEL_79;
            }

LABEL_80:

            goto LABEL_55;
          }

          if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
          {
            while (1)
            {
              v44[2] = 0;
              *buf = 0;
              v44[1] = 0;
              data_block = archive_read_data_block();
              if (data_block)
              {
                break;
              }

              if (archive_write_data_block() < 0)
              {
                v32 = __atxlog_handle_default();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  PPZipUnarchive_cold_7();
                }

                goto LABEL_54;
              }
            }

            if (data_block == 1)
            {
              goto LABEL_48;
            }

            v32 = __atxlog_handle_default();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              PPZipUnarchive_cold_8();
            }

LABEL_54:

LABEL_55:
            v11 = 0;
            goto LABEL_56;
          }

LABEL_48:
          if (archive_write_finish_entry())
          {
            v40 = __atxlog_handle_default();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v42 = archive_error_string();
              *buf = 136446210;
              *&buf[4] = v42;
              v39 = "ATXUnarchiver: archive_write_finish_entry failed - %{public}s.";
LABEL_79:
              _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
            }

            goto LABEL_80;
          }
        }
      }

      if (next_header != 1)
      {
        v32 = __atxlog_handle_default();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          PPZipUnarchive_cold_10();
        }

        goto LABEL_54;
      }

      v11 = 1;
LABEL_56:
      if (archive_write_close())
      {
        v34 = __atxlog_handle_default();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          PPZipUnarchive_cold_11();
        }

        v11 = 0;
      }

      if (archive_write_free())
      {
        v35 = __atxlog_handle_default();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          PPZipUnarchive_cold_4();
        }
      }

      goto LABEL_20;
    }

    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      PPZipUnarchive_cold_3();
    }
  }

  if (!archive_write_free())
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    PPZipUnarchive_cold_4();
  }

LABEL_19:
  v11 = 0;
LABEL_20:

LABEL_22:
  return v11;
}

void sub_1BF5737A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5739F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF573DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF574B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXLockScreenNotificationRankerXPCInterface()
{
  v17[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E664E0];
  v1 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_rankNotificationArrays_reply_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_rankNotificationArrays_reply_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_rankNewNotificationIntoNotificationArrays_newNotification_notificationArrayIndex_reply_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_rankNewNotificationIntoNotificationArrays_newNotification_notificationArrayIndex_reply_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_1BF576234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXPBNotificationSuggestionInteractionEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v30 = PBReaderReadString();
          v31 = *(a1 + 24);
          *(a1 + 24) = v30;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          *(a1 + 32) |= 1u;
          v35 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
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
        }
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v38 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v38 & 0x7F) << v24;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
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
            v20 = v26;
          }

LABEL_53:
          v32 = 20;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v37 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v37 & 0x7F) << v14;
            if ((v37 & 0x80) == 0)
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
          v32 = 16;
        }

        *(a1 + v32) = v20;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBTurnOffNotificationsForAppSuggestionReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id actionsToIndexSet(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v4 indexOfObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

void sub_1BF579B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF579EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringForATXWidgetEngagementType(unint64_t a1)
{
  v1 = a1;
  if (a1 < 4)
  {
    return off_1E80C1440[a1];
  }

  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    NSStringForATXWidgetEngagementType_cold_1(v1, v3);
  }

  return @"unknown";
}

uint64_t ATXMPBFeedbackRecordedTrackerReadFrom(uint64_t a1, void *a2)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
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

uint64_t ATXPBLinkActionReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___ATXPBLinkAction__bundleId;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___ATXPBLinkAction__action;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF57E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF58338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF583804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ATXUserEducationSuggestionClientXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E91C68];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_didReceiveUserEducationSuggestionEvent_ argumentIndex:0 ofReply:0];

  return v0;
}

id ATXUserEducationSuggestionServerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3EA4340];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_logUserEducationSuggestionFeedback_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return objc_opt_class();
}

uint64_t ATXPBERMEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v48 & 0x7F) << v27;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v33 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v29;
          }

LABEL_68:
          *(a1 + 16) = v33;
          goto LABEL_83;
        }

        if (v13 != 5)
        {
          goto LABEL_44;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v48) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_72;
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

LABEL_72:
        v42 = 56;
LABEL_77:
        *(a1 + v42) = v20;
        goto LABEL_83;
      }

      if (v13 == 6)
      {
        v34 = PBReaderReadData();
        v35 = *(a1 + 48);
        *(a1 + 48) = v34;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_44:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_83;
        }

        v23 = PBReaderReadString();
        if (v23)
        {
          [(ATXPBERMEvent *)a1 addClientModelId:v23];
        }
      }

LABEL_83:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 60) |= 4u;
      v48 = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v43 = [a2 data];
        [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v44 = v48;
      v45 = 24;
LABEL_82:
      *(a1 + v45) = v44;
      goto LABEL_83;
    }

    if (v13 != 2)
    {
      if (v13 != 3)
      {
        goto LABEL_44;
      }

      *(a1 + 60) |= 1u;
      v48 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v46 = [a2 data];
        [v46 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v44 = v48;
      v45 = 8;
      goto LABEL_82;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    *(a1 + 60) |= 8u;
    while (1)
    {
      LOBYTE(v48) = 0;
      v39 = [a2 position] + 1;
      if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
      {
        v41 = [a2 data];
        [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v38 |= (v48 & 0x7F) << v36;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v36 += 7;
      v11 = v37++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_76;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v38;
    }

LABEL_76:
    v42 = 40;
    goto LABEL_77;
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF589F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *plistableReplacementFor(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFB0] null];

  if (v2 == v1)
  {
    v4 = &stru_1F3E08968;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 UUIDString];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v1 absoluteString];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          v5 = v1;
          v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = 0;
            v9 = *v13;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v13 != v9)
                {
                  objc_enumerationMutation(v5);
                }

                v8 += [*(*(&v12 + 1) + 8 * i) hash];
              }

              v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
            }

            while (v7);
          }

          else
          {
            v8 = 0;
          }

          v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        }

        else
        {
          v3 = v1;
        }
      }
    }

    v4 = v3;
  }

  return v4;
}

void reportInvalidActionTypeAndCrash(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void reportInvalidActionTypeAndCrash(ATXActionType)"];
  [v2 handleFailureInFunction:v3 file:@"ATXAction.m" lineNumber:1062 description:{@"Invalid action type for action found: %lu (max: %lu)", a1, 8}];

  __break(1u);
}

id _decodeTopLevelObjectOrFail(void *a1, uint64_t a2, void *a3, int a4, _BYTE *a5)
{
  v13 = 0;
  v9 = a3;
  v10 = [a1 decodeTopLevelObjectOfClass:a2 forKey:v9 error:&v13];
  v11 = v13;
  _decodeOrFail(v10, v11, v9, a4, a5);
  objc_claimAutoreleasedReturnValue();

  return v10;
}

id _decodeArrayOrFail(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = [v8 decodeArrayOfObjectsOfClass:a2 forKey:v7];
  v10 = [v8 error];
  _decodeOrFail(v9, v10, v7, 0, a4);
  objc_claimAutoreleasedReturnValue();

  return v9;
}

uint64_t __sortArrayOfData_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 length];
  if (v8 >= [v7 length])
  {
    v10 = [v6 length];
    if (v10 <= [v7 length])
    {
      v9 = memcmp([v6 bytes], objc_msgSend(v7, "bytes"), objc_msgSend(v6, "length"));
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

id _decodeOrFail(void *a1, void *a2, void *a3, int a4, _BYTE *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!v9 && v10)
  {
    if ((a4 & 1) == 0)
    {
      v12 = [v10 domain];
      if ([v12 isEqual:*MEMORY[0x1E696A250]])
      {
        v13 = [v10 code];

        if (v13 == 4865)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _decodeOrFail_cold_2();
    }

LABEL_15:

    *a5 = 1;
    goto LABEL_16;
  }

  if (v9 | v10)
  {
    v14 = v9;
    goto LABEL_16;
  }

  if (a4)
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _decodeOrFail_cold_1();
    }

    goto LABEL_15;
  }

LABEL_16:

  return v9;
}

id -[ATXDefaultHomeScreenItemOnboardingStacksProducer _blockedWidgetPersonalities](ATXDefaultHomeScreenItemOnboardingStacksProducer *self, SEL a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ((self->_adblDrainClassification & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"personalizedOnboardingDefaultStackADBLDenyListWidgets"];

    v3 = v4;
  }

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: deny list personalities: %@", &v14, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_125];
  v8 = [v6 initWithArray:v7];

  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = objc_opt_new();
  v11 = [v10 isTodayWidgetPermittedForLocale:v9];

  if ((v11 & 1) == 0)
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: in a region (%{public}@) that does not allow news widget, adding news to deny list", &v14, 0xCu);
    }

    [v8 addObject:@"com.apple.news.widget:today"];
    [v8 addObject:@"com.apple.news.widget:topic"];
  }

  return v8;
}

void sub_1BF593420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __folderIndexesForPage_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = *(a1 + 32);

    [v7 addIndex:a3];
  }
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ATXPBInfoEngineCachedSuggestionsReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [(ATXPBInfoEngineCachedSuggestions *)a1 addCachedSuggestionSourceIds:v21];
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v25 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v25 & 0x7F) << v14;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_39;
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

LABEL_39:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_40;
        }

        v21 = PBReaderReadString();
        if (v21)
        {
          [(ATXPBInfoEngineCachedSuggestions *)a1 addCachedSuggestionIds:v21];
        }
      }

LABEL_40:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF59B59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ATXSuggestedPagesInterface()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E67170];
  v1 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_suggestedPagesWithFilter_layoutOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_suggestedPagesWithFilter_layoutOptions_completionHandler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_suggestedPagesWithFilter_layoutOptions_completionHandler_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t ATXPBHomeScreenEventMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v53[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53[0] & 0x7F) << v5;
        if ((v53[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 6)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 5:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 76) |= 8u;
              while (1)
              {
                LOBYTE(v53[0]) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v53[0] & 0x7F) << v38;
                if ((v53[0] & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_92;
                }
              }

              v21 = (v40 != 0) & ~[a2 hasError];
LABEL_92:
              v50 = 73;
              goto LABEL_97;
            case 6:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 76) |= 0x10u;
              while (1)
              {
                LOBYTE(v53[0]) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v53[0] & 0x7F) << v15;
                if ((v53[0] & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_94;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_94:
              v50 = 74;
              goto LABEL_97;
            case 4:
              if ((ATXPBHomeScreenEventMetadataReadFrom_cold_1() & 1) == 0)
              {
                return LOBYTE(v53[0]);
              }

              goto LABEL_103;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 76) |= 1u;
              while (1)
              {
                LOBYTE(v53[0]) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v53[0] & 0x7F) << v31;
                if ((v53[0] & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  v37 = 0;
                  goto LABEL_90;
                }
              }

              if ([a2 hasError])
              {
                v37 = 0;
              }

              else
              {
                v37 = v33;
              }

LABEL_90:
              *(a1 + 8) = v37;
              goto LABEL_103;
            case 2:
              v14 = PBReaderReadString();
              if (v14)
              {
                [(ATXPBHomeScreenEventMetadata *)a1 addStackIds:v14];
              }

              goto LABEL_46;
            case 3:
              if ((ATXPBHomeScreenEventMetadataReadFrom_cold_2() & 1) == 0)
              {
                return LOBYTE(v53[0]);
              }

              goto LABEL_103;
          }
        }
      }

      else if (v13 <= 8)
      {
        if (v13 == 7)
        {
          v14 = objc_alloc_init(ATXPBCGRectWrapper);
          objc_storeStrong((a1 + 48), v14);
          v53[0] = 0;
          v53[1] = 0;
          if (!PBReaderPlaceMark() || !ATXPBCGRectWrapperReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_46;
        }

        if (v13 == 8)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 24);
          *(a1 + 24) = v22;

          goto LABEL_103;
        }
      }

      else
      {
        switch(v13)
        {
          case 9:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v53[0] & 0x7F) << v44;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_96;
              }
            }

            v21 = (v46 != 0) & ~[a2 hasError];
LABEL_96:
            v50 = 72;
LABEL_97:
            *(a1 + v50) = v21;
            goto LABEL_103;
          case 0xA:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v53[0] & 0x7F) << v24;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_86:
            *(a1 + 40) = v30;
            goto LABEL_103;
          case 0xB:
            v14 = PBReaderReadString();
            if (v14)
            {
              [(ATXPBHomeScreenEventMetadata *)a1 addBundleIds:v14];
            }

LABEL_46:

            goto LABEL_103;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void OUTLINED_FUNCTION_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

__CFString *NSStringForATXHomeScreenWidgetExplicitFeedback(unint64_t a1)
{
  v1 = a1;
  if (a1 < 4)
  {
    return off_1E80C21A8[a1];
  }

  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    NSStringForATXHomeScreenWidgetExplicitFeedback_cold_1(v1, v3);
  }

  return @"unknown";
}

__CFString *NSStringForATXHomeScreenStackChangeReason(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0xA)
  {
    return off_1E80C21C8[a1];
  }

  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    NSStringForATXHomeScreenStackChangeReason_cold_1(v1, v3);
  }

  return @"unknown";
}

void sub_1BF59F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id allowedFeatureVectorClasses()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v0);

  return v5;
}

void sub_1BF5A18D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXPBModeConfigurationUIFlowLoggingEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 72) |= 8u;
            while (1)
            {
              v46 = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v46 & 0x7F) << v26;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v28;
            }

LABEL_78:
            v39 = 48;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_69;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v45 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v45 & 0x7F) << v17;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_74:
            v39 = 40;
          }

          goto LABEL_83;
        }

        if (v13 == 1)
        {
          *(a1 + 72) |= 1u;
          v42 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v42;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_69;
          }

          v15 = PBReaderReadString();
          v16 = *(a1 + 32);
          *(a1 + 32) = v15;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addPreviousEntityIdentifiers:v14];
            }
          }

          else
          {
            if (v13 != 6)
            {
LABEL_69:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_86;
            }

            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addSuggestedEntityIdentifiers:v14];
            }
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addCurrentEntityIdentifiers:v14];
              }

              break;
            case 8:
              v32 = 0;
              v33 = 0;
              v34 = 0;
              *(a1 + 72) |= 4u;
              while (1)
              {
                v44 = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v44 & 0x7F) << v32;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_82;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v34;
              }

LABEL_82:
              v39 = 44;
LABEL_83:
              *(a1 + v39) = v23;
              goto LABEL_86;
            case 9:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addCandidateEntityIdentifiers:v14];
              }

              break;
            default:
              goto LABEL_69;
          }
        }
      }

LABEL_86:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BF5A50F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id dateToJson(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v2 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSS'Z'"];
    v3 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v2 setTimeZone:v3];

    v4 = [v2 stringFromDate:v1];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  return v4;
}

uint64_t getMGBool(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGGetBoolAnswerSymbolLoc_ptr;
  v8 = getMGGetBoolAnswerSymbolLoc_ptr;
  if (!getMGGetBoolAnswerSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMGGetBoolAnswerSymbolLoc_block_invoke;
    v4[3] = &unk_1E80C0758;
    v4[4] = &v5;
    __getMGGetBoolAnswerSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    getMGBool_cold_1();
  }

  return v2(a1);
}

void sub_1BF5A8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5A9264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v10 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMobileGestaltLibraryCore_block_invoke;
    v4[4] = &unk_1E80C24A0;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E80C2480;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BF5A9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSCPreferencesCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCPreferencesCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCPreferencesCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SystemConfigurationLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __SystemConfigurationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E80C24C0;
    v4 = 0;
    SystemConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SystemConfigurationLibraryCore_frameworkLibrary;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    SystemConfigurationLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SystemConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SystemConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSCPreferencesGetValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCPreferencesGetValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCPreferencesGetValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ATXPBDigestOnboardingSuggestionLoggingEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v28 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v30 & 0x7F) << v16;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_38:
        *(a1 + 16) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBUserNotificationDigestLoggingEventReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 28) |= 1u;
        v27[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27[0] & 0x7F) << v15;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(ATXPBUserNotificationDigest);
        objc_storeStrong((a1 + 16), v14);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBUserNotificationDigestReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBDigestOnboardingLoggingEventReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v53 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v53 & 0x7F) << v40;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_84;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v42;
            }

LABEL_84:
            v46 = 28;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_42;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v52 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v52 & 0x7F) << v16;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_80;
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

LABEL_80:
            v46 = 24;
          }

          goto LABEL_85;
        }

        v24 = PBReaderReadString();
        v25 = *(a1 + 40);
        *(a1 + 40) = v24;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v54 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v54 & 0x7F) << v33;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              LOBYTE(v39) = 0;
              goto LABEL_76;
            }
          }

          v39 = (v35 != 0) & ~[a2 hasError];
LABEL_76:
          *(a1 + 48) = v39;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_42:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_88;
          }

          v23 = PBReaderReadString();
          if (v23)
          {
            [a1 addDeliveryTimes:v23];
          }
        }
      }

      else
      {
        if (v13 == 4)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v51 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v51 & 0x7F) << v27;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v29;
          }

LABEL_74:
          v46 = 32;
LABEL_85:
          *(a1 + v46) = v22;
          goto LABEL_88;
        }

        if (v13 != 5)
        {
          goto LABEL_42;
        }

        *(a1 + 52) |= 1u;
        v49 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v49;
      }

LABEL_88:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBSpotlightEventMetadataReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_44:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_53;
      }

      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v34 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v34 & 0x7F) << v16;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_52;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_52:
      *(a1 + 40) = v22;
LABEL_53:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 32;
        break;
      case 4:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 8) = v29;
        goto LABEL_53;
      case 5:
        v14 = PBReaderReadString();
        v15 = 16;
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBFaceGalleryConfigurationReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v23 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23 & 0x7F) << v14;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_33;
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

LABEL_33:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        if ((ATXPBFaceGalleryConfigurationReadFrom_cold_1(a1, &v22, a2, &v23) & 1) == 0)
        {
          return v23;
        }
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBMissedNotificationRankingLoggingEventReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v27[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27[0] & 0x7F) << v15;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(ATXPBMissedNotificationRanking);
        objc_storeStrong((a1 + 24), v14);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBMissedNotificationRankingReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ATXSleepSuggestionInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E68A58];
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v2 forSelector:sel_predictedSleepSuggestionWithCompletionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t ATXPBCGRectWrapperReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v30 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBCGRectWrapper__width;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v30 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBCGRectWrapper__height;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v30 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBCGRectWrapper__x;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v30 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___ATXPBCGRectWrapper__y;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ATXAppPredictionXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3EA4460];
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v5 forSelector:sel_approvedSiriKitIntentsWithReply_ argumentIndex:0 ofReply:1];

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v7 initWithObjects:{v8, v9, 0}];

  objc_autoreleasePoolPop(v6);
  [v0 setClasses:v10 forSelector:sel_getWebsitePredictionsForContextType_limit_reply_ argumentIndex:0 ofReply:1];

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = [v12 initWithObjects:{v13, v14, 0}];

  objc_autoreleasePoolPop(v11);
  [v0 setClasses:v15 forSelector:sel_recentURLsWithLimit_typeIdentifiersForScope_withCompletion_ argumentIndex:1 ofReply:0];

  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x1E695DFD8]);
  v18 = objc_opt_self();
  v19 = objc_opt_self();
  v20 = [v17 initWithObjects:{v18, v19, 0}];

  objc_autoreleasePoolPop(v16);
  [v0 setClasses:v20 forSelector:sel_recentURLsWithLimit_typeIdentifiersForScope_withCompletion_ argumentIndex:0 ofReply:1];

  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = objc_opt_self();
  v24 = objc_opt_self();
  v25 = [v22 initWithObjects:{v23, v24, 0}];

  objc_autoreleasePoolPop(v21);
  [v0 setClasses:v25 forSelector:sel_fetchPreWarmedContextualActionSuggestionsWithCompletion_ argumentIndex:0 ofReply:1];

  v26 = objc_autoreleasePoolPush();
  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = objc_opt_self();
  v29 = objc_opt_self();
  v30 = [v27 initWithObjects:{v28, v29, 0}];

  objc_autoreleasePoolPop(v26);
  [v0 setClasses:v30 forSelector:sel_fetchMenuItemsForCurrentAppInFocusWithCompletion_ argumentIndex:0 ofReply:1];

  v31 = objc_autoreleasePoolPush();
  v32 = objc_alloc(MEMORY[0x1E695DFD8]);
  v33 = objc_opt_self();
  v34 = objc_opt_self();
  v35 = [v32 initWithObjects:{v33, v34, 0}];

  objc_autoreleasePoolPop(v31);
  [v0 setClasses:v35 forSelector:sel_fetchSemanticallySimilarDocumentsWithCompletion_ argumentIndex:0 ofReply:1];

  v36 = objc_autoreleasePoolPush();
  v37 = objc_alloc(MEMORY[0x1E695DFD8]);
  v38 = objc_opt_self();
  v39 = objc_opt_self();
  v40 = [v37 initWithObjects:{v38, v39, 0}];

  objc_autoreleasePoolPop(v36);
  [v0 setClasses:v40 forSelector:sel_fetchLastExecutedActionsWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1BF5BA344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF5BAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAPUIRegisterCardServicesIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppPredictionUILibrary();
  result = dlsym(v2, "APUIRegisterCardServicesIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPUIRegisterCardServicesIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppPredictionUILibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppPredictionUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppPredictionUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E80C27C8;
    v4 = 0;
    AppPredictionUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppPredictionUILibraryCore_frameworkLibrary;
  if (!AppPredictionUILibraryCore_frameworkLibrary)
  {
    AppPredictionUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AppPredictionUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppPredictionUILibrary();
  result = dlsym(v2, "APUIRegisterCardKitProvidersIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCRSCardRequestClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80C27E0;
    v5 = 0;
    CardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CardServicesLibraryCore_frameworkLibrary)
  {
    __getCRSCardRequestClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRSCardRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRSCardRequestClass_block_invoke_cold_1();
  }

  getCRSCardRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getATXProactiveSuggestionBuilderClass_block_invoke(uint64_t a1)
{
  AppPredictionInternalLibrary();
  result = objc_getClass("ATXProactiveSuggestionBuilder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXProactiveSuggestionBuilderClass_block_invoke_cold_1();
  }

  getATXProactiveSuggestionBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AppPredictionInternalLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AppPredictionInternalLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AppPredictionInternalLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80C27F8;
    v2 = 0;
    AppPredictionInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppPredictionInternalLibraryCore_frameworkLibrary)
  {
    AppPredictionInternalLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AppPredictionInternalLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionInternalLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *ATXUserEducationSuggestionTypeToString(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_1E80C2810[a1];
  }

  v3 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    ATXUserEducationSuggestionTypeToString_cold_1(a1, v3);
  }

  return @"ATXUserEducationSuggestionType_Error";
}

__CFString *ATXTimeEventSourceTypeToDisplayName(uint64_t a1)
{
  if ((a1 - 1) > 0x15)
  {
    return @"Calendar Events";
  }

  else
  {
    return off_1E80C2838[a1 - 1];
  }
}

__CFString *ATXUserNotificationDigestDeliveryTimeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"firstDigest";
  }

  else
  {
    return off_1E80C2978[a1 - 1];
  }
}

uint64_t ATXStringToATXUserNotificationDigestDeliveryTime(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"firstDigest"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"lastDigest"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"otherDigest"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"unspecifiedDigest"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  return v2;
}

uint64_t digestTimeToMode(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 11;
  }

  else
  {
    return a1 + 8;
  }
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void removeCacheFile(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  v8 = 0;
  v4 = [v3 removeItemAtPath:v2 error:&v8];

  v5 = v8;
  v6 = v5;
  if (v4)
  {
LABEL_5:

    goto LABEL_6;
  }

  v7 = [v5 code];

  if (v7 != 4)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      removeCacheFile_cold_1();
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t ATXMPBContextMenuFeedbackTrackerReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 32) = v24;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_27;
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_27;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_27:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF5CBCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return objc_opt_class();
}

uint64_t ATXPBDigestOnboardingLoggingEventEnumsReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}